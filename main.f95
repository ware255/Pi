program main
    use fmzm
    implicit none
    character(16) :: fmt_s
    character(10**9) :: s
    type(FM) :: a, b, c, d, aa, bb, cc, dd
    type(FM) :: pi
    integer :: i, digit

    print '(A)', "âΩåÖÇ‹Ç≈åvéZÇµÇ‹Ç∑Ç©ÅH"
    read (*, *) digit

    call FM_SET(digit * int(log(10.0) / log(2.0)))

    a = 1
    b = 1 / sqrt(to_fm(2))
    c = 0.25
    d = 1

    do i = 0, int(log(real(digit)) / log(2.0))
        aa = (a + b) * 0.5
        bb = sqrt(a * b)
        cc = c - d * (a - aa) * (a - aa)
        dd = d + d
        a = aa
        b = bb
        c = cc
        d = dd
    end do

    pi = ((a + b) * (a + b)) / (4 * c)

    write (fmt_s, '("F", I0, ".", I0)') digit + 2, digit
    call FM_FORM(fmt_s, pi, s)
    write (*, '(A)') trim(s)
    read *
end program main
