Return-Path: <devicetree+bounces-153677-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 666DCA4D776
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 10:09:01 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A2D6F3AB359
	for <lists+devicetree@lfdr.de>; Tue,  4 Mar 2025 09:08:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1AE881FF1BA;
	Tue,  4 Mar 2025 09:02:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="PH22NjZs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ua1-f44.google.com (mail-ua1-f44.google.com [209.85.222.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02A261FF1B6
	for <devicetree@vger.kernel.org>; Tue,  4 Mar 2025 09:02:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741078948; cv=none; b=o6KbPwlb2X4osKeuqh2iaIvLlrrEYqiLn9/NfiHBLKk5otbSe72S/CZlmP/gU0FTYkXBCV15BGg6dUavSDOD2c4irG0xpaYe/EbtpuXff4tSV6mUu7LGKDB1Gx/351vcjpyQft1JnmAZ73JrIXDXwgcDb1Ot2tVVltKqk13q7HY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741078948; c=relaxed/simple;
	bh=QXF17IR28nkhTtqi+FHFKr/fCmzJnqgNwQQgg3meDNs=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=IxeNDZLPJUKXIjQmM2hMTQXXdRFAYasPnweTJX3AjXE6gUftmDSnHeYaPWvJT/E9uQrm1Hp5eWdK++/oyJqLQmBdCaoyuiQJI3Xn2VuWFFUjxgj2QDP1n0iCc+MX22ddc/Z2Gr76dz+glEFBFGF+1Of5aw5IWJDRLTuDuw5ecbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=PH22NjZs; arc=none smtp.client-ip=209.85.222.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-ua1-f44.google.com with SMTP id a1e0cc1a2514c-86b2d91997eso4692967241.2
        for <devicetree@vger.kernel.org>; Tue, 04 Mar 2025 01:02:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1741078945; x=1741683745; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=kHhfxt/F9VYJEMZWHBt7TIGLZbK9Gj/o15ch1mv6/fM=;
        b=PH22NjZs+MXc9xPCgd2NurOjCwl7Lj9yx8D8HTQylYJt906xtqrZBakrrDudIBrU+j
         X0HPVwWakvDqQHhhTQ8lq4kUD74pbtjCmGrpTcvoFEx+ue1x/7nYlT3Tvts7LiCNJ0kk
         vs+8iq0muE/TG59w5wRJCqZI2CU3FYgFtLKYQKUd8tjvOMMYdHPcmy1D4GPEg9UIoIfA
         6EGSza4GrXSyJznNb78ZFfV4bSQWK76oqSHtKMazoyi9Uy/ol+kJrSoruLTUnAs32ON5
         90Mt4YMASShJZtrQdwObcU4wzbOjdinXjws3zKD0AFhHJAG5NuE+XDpKSAKJwFHLQEGg
         iztg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741078945; x=1741683745;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kHhfxt/F9VYJEMZWHBt7TIGLZbK9Gj/o15ch1mv6/fM=;
        b=T9yMZQSo0yNAJOTS4rb9hB0aT+jLO3IbgpCZAfkVoG1h9xmqO18eyIBNCpa04HX86s
         YTBJplZvM+MmAMmwpIz/UcokuWGlIyTcZnsHCLiYYG5JRvgekjc7EmUS94MqYzpOv5I2
         ZafTT0HoAG2a92SEnykou3K6/5kMvJr8GdBzDEaOextzVlf57YMJcl3bxPIp8tY6uCco
         /0ObmMDvA/WM7QyPwgDYRkPeRGA22LMjhp9e7/hPGZ614nAptzRKxTcfuvdZNlaCmdgf
         YR2Pd3kGyVx+PG/MBdcSDnlAZhC+eRVRBdIALe7+QdSkRT4HrAuoI1eipcaW2zInpV9Q
         90mg==
X-Forwarded-Encrypted: i=1; AJvYcCXivQ9ypkR3XmjAlGLP4QB8oS1FSdEFukcfE83d165zGIr5RXeeBfPmA+LDoakw00aAg1YLlo8PuyTc@vger.kernel.org
X-Gm-Message-State: AOJu0YwUOIAPgSTG7kgLvy8c+oAU/ib+qZBsmp5mMrzSHtpUNG87pXW1
	YgL4K58tsOav0EWofgyDULpKon845YyoarxeAtwNVzjUVnmSVkM9DXldoEkvJuFTPFjbmRuqNjn
	cg6g3TOXdPXVf/0Hg3OopFdGe8nA+G+yU6903GQ==
X-Gm-Gg: ASbGncuWuaWIA5TSSHldFQyxQa+JqZn718rsUS5+nFVPDG2ibP5tv5AI4seeRlMWDK/
	iZlFibhKDt1otSKAZU0Mx/sB4AcqXiswvALOX1u8/LeJIoLdD0TR8jQvMpcYVp7ox9jK3dgPhME
	CLxxM07tpsfWaJCwNhCyH8fnBd18Yf
X-Google-Smtp-Source: AGHT+IE+NGonMa9x6tx3hTAC6JJ2acGmU95KDumJyPPEYsvv1984PUWQmP4MK//XiwgrQPqZuV+47KFn1mDTkh4WWnY=
X-Received: by 2002:a05:6102:3f4a:b0:4c0:3349:cc4 with SMTP id
 ada2fe7eead31-4c0448efd2emr11486700137.3.1741078944773; Tue, 04 Mar 2025
 01:02:24 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20241224093902.1632627-1-nylon.chen@sifive.com>
 <zqkx7cx5nalslfmxeoxdnsjbvrvzajrjybsmsyeyc65a64sntr@gpc5qp6aoyp7>
 <CAHh=Yk-_0rKB=FG6Voif2MDjtRxzUA5vXDP2J-o5=8ru1ewt0w@mail.gmail.com>
 <CAHh=Yk-TosOmwEughfK9mMx-=DgzWK5H_bf6H641SGh1ue8BrA@mail.gmail.com>
 <zneb3qwgf52zitcbq4wz76shnmhwfkabbsts3sussjpc5s5tsz@uneaxdfp4m2f>
 <CAHh=Yk_oTdURhkna_saF6mrA9gDY=+v_j5NoY_7jTDLuZ=EXtg@mail.gmail.com>
 <7bcnckef23w6g47ll5l3bktygedrcfvr7fk3qjuq2swtoffhec@zs4w4tuh6qvm>
 <5robb7ipl346daf3lqaqnsi3fcgj3wzmch5dqit2dczdyeknmv@dqft77bhwryg> <CAHh=Yk-p69ppWWspEzzznhDnuk3i6dRGKzUaqZCwg_uAxB3FVA@mail.gmail.com>
In-Reply-To: <CAHh=Yk-p69ppWWspEzzznhDnuk3i6dRGKzUaqZCwg_uAxB3FVA@mail.gmail.com>
From: Nylon Chen <nylon.chen@sifive.com>
Date: Tue, 4 Mar 2025 17:02:13 +0800
X-Gm-Features: AQ5f1Jp7DGsp1Vyy94pQwTGcyJhhurEJDZS278bFkBXavKP5rDxyvxdNjmgaOc0
Message-ID: <CAHh=Yk8kC1+D4dPQ7iAtn1WSPSk+OU6vwEyGF9VZAS5o5gPHmA@mail.gmail.com>
Subject: Re: [PATCH v10 0/3] Change PWM-controlled LED pin active mode and algorithm
To: =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Cc: linux-kernel@vger.kernel.org, linux-pwm@vger.kernel.org, 
	devicetree@vger.kernel.org, Paul Walmsley <paul.walmsley@sifive.com>, 
	Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
	Samuel Holland <samuel.holland@sifive.com>, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Nylon Chen <nylon.chen@sifive.com> =E6=96=BC 2025=E5=B9=B41=E6=9C=8823=E6=
=97=A5 =E9=80=B1=E5=9B=9B =E4=B8=8A=E5=8D=888:20=E5=AF=AB=E9=81=93=EF=BC=9A
>
> Uwe Kleine-K=C3=B6nig <u.kleine-koenig@baylibre.com> =E6=96=BC 2025=E5=B9=
=B41=E6=9C=8822=E6=97=A5 =E9=80=B1=E4=B8=89 =E4=B8=8B=E5=8D=887:44=E5=AF=AB=
=E9=81=93=EF=BC=9A
> >
> > Hello Nylon,
> >
> > I took another look in the driver and found another problem:
> Hi Uwe, Thank you for the information.
>
> I'll need some time to verify and understand these details, as well as
> conduct the relevant tests
> >
> > On Tue, Jan 21, 2025 at 07:12:10PM +0100, Uwe Kleine-K=C3=B6nig wrote:
> > > On Tue, Jan 21, 2025 at 04:47:46PM +0800, Nylon Chen wrote:
> > > > Uwe Kleine-K=C3=B6nig <u.kleine-koenig@baylibre.com> =E6=96=BC 2025=
=E5=B9=B41=E6=9C=8821=E6=97=A5 =E9=80=B1=E4=BA=8C =E4=B8=8B=E5=8D=883:47=E5=
=AF=AB=E9=81=93=EF=BC=9A
> > > > >
> > > > > Hello,
> > > > >
> > > > > On Sun, Jan 19, 2025 at 03:03:16PM +0800, Nylon Chen wrote:
> > > > > > I ran some basic tests by changing the period and duty cycle in=
 both
> > > > > > decreasing and increasing sequences (see the script below).
> > > > >
> > > > > What is clk_get_rate(ddata->clk) for you?
> > > > 130 MHz
> > >
> > > OK, so the possible period lengths are
> > >
> > >       (1 << (16 + scale)) / (130 MHz)
> > >
> > > for scale in [0, .. 15], right? That's
> > >
> > >       2^scale * 504123.07692307694 ns
> > >
> > > So testing period in the range between 5000 ns and 15000 ns isn't
> > > sensible? Did I get something wrong? If the above is right, switching
> > > between period=3D1008246 ns and 1008247 ns is likely to trigger a
> > > warning.
> >
> > The possible periods are of the form
> >
> >         2^scale * A
> >
> > where A is constant and only depends on the input clock rate. scale
> > ranges over [0, ... 15]. (If I got it right in my last mail, we have A =
=3D
> > 504123.07692307694 ns.)
> >
> > If you request say:
> >
> >         .period =3D 3.9 * A
> >         .duty_cycle =3D 1.9 * A
> >
> > the period actually emitted by the PWM will be 2 * A. But to calculate
> > frac the originally requested period (i.e. 3.9 * A) is used. So frac
> > becomes 31927 resulting in .duty_cycle being ~0.974 A. A better value
> > would be frac =3D 62259 which results in .duty_cycle =E2=89=85 1.9 * A.
> > (Depending on A the values for frac might be off by one due to rounding
> > differences.)
> >
> > So I would expect that PWM_DEBUG is angry with you if you go from
> >
> >         .period =3D 2 * A
> >         .duty_cycle =3D 1.9 * A
> >
> > to
> >
> >         .period =3D 3.9 * A
> >         .duty_cycle =3D 1.9 * A
> >
> > .
> >
> > Best regards
> > Uwe

Hi Uwe, Based on your suggestions, I conducted relevant tests and
corrected algorithm errors.

According to this test program, I can make the system generate related
error messages on v10's patchset.

e.g.
[ 75.043652] pwm-sifive 10021000.pwm: .apply is supposed to round down
duty_cycle (requested: 360/504000, applied: 361/504124)
[ 75.055042] pwm-sifive 10021000.pwm: .apply is supposed to round down
period (requested: 504000, applied: 504124)

PWMCHIP=3D1
PWMCHANNEL=3D0
PERIOD=3D504000
STEP=3D1
MAX_DUTY=3D504000

echo 0 > /sys/class/pwm/pwmchip${PWMCHIP}/export

echo $PERIOD > /sys/class/pwm/pwmchip${PWMCHIP}/pwm${PWMCHANNEL}/period
echo "Set period to $PERIOD ns (scale=3D0 region)"

COUNT=3D$((MAX_DUTY / STEP))
echo "Testing duty-cycle from 0 to $MAX_DUTY in step of $STEP..."
echo "Total steps (forward): $((COUNT+1))"


CURRENT=3D0
while [ $CURRENT -le $MAX_DUTY ]; do
    echo $CURRENT > /sys/class/pwm/pwmchip${PWMCHIP}/pwm${PWMCHANNEL}/duty_=
cycle
    CURRENT=3D$((CURRENT + STEP))
done

echo "Now do a backward test from $MAX_DUTY down to 0 in step of $STEP..."
echo "Total steps (backward): $((COUNT+1))"


CURRENT=3D$MAX_DUTY
while [ $CURRENT -ge 0 ]; do
    echo $CURRENT > /sys/class/pwm/pwmchip${PWMCHIP}/pwm${PWMCHANNEL}/duty_=
cycle
    CURRENT=3D$((CURRENT - STEP))
done


echo 0 > /sys/class/pwm/pwmchip${PWMCHIP}/pwm${PWMCHANNEL}/enable
echo ${PWMCHANNEL} > /sys/class/pwm/pwmchip${PWMCHIP}/unexport

echo "Done!"

Based on your previous suggestions, I have made the following related
modifications, and now I'm able to fix the relevant errors.

But I want to make sure my understanding aligns with your suggestions,
so I'd like to discuss with you first before sending the patch.

- In .apply, use "round down" for calculations to ensure the value
doesn't exceed what the user requested. (Never set a duty cycle higher
than what the user requested.)
pwm_sifive_apply() {
    - frac =3D DIV64_U64_ROUND_CLOSEST(num, state->period);
    +frac =3D num / state->period;
}
- When converting hardware values back to duty_cycle in .get_state,
use "round up" to compensate for the errors introduced by .apply.()
pwm_sifive_get_state() {
    - state->duty_cycle =3D (u64)duty * ddata->real_period >> PWM_SIFIVE_CM=
PWIDTH;
    + state->duty_cycle =3D DIV_ROUND_UP_ULL((u64)duty *
ddata->real_period, (1U << PWM_SIFIVE_CMPWIDTH));
}

