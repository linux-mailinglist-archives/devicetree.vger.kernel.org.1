Return-Path: <devicetree+bounces-147857-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 90E16A399E1
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 12:06:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ABC043B42B5
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 11:06:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 828072397AA;
	Tue, 18 Feb 2025 11:06:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xBMY9MNr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f182.google.com (mail-yb1-f182.google.com [209.85.219.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBB3D22FF42
	for <devicetree@vger.kernel.org>; Tue, 18 Feb 2025 11:06:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739876800; cv=none; b=bsIkgN8V4mJBdgQTmJr+CzLcYQKF2RuhBfee6/Q7h97PIQDSE52Zk4tuOD0/AOr8zp5x5NvrgDoQOddBBGphRfqiZgS99cH3DjNdSzkEJ8lpJ9UKDsZkv1BPkjx3oDPizVNakHr1qiHWXcHIOSTTabzIjWDi3cj9bNZxzIOD99k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739876800; c=relaxed/simple;
	bh=nIFcW1zAQNpDpL9+kzL6B5pY+AHLOIpYOl91ulP2I6U=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=EQ833Ql0AcW06MzsNMxkzQCql2rTS2Arf5/gytRJrpRhoz+RFPBWaI8KDIdguSkqES1Y7Frpqida7pzmI9gI5fp4xrNYDu8HpbVY+nXs+dWm9yLECqKSK6c+ABR2GSYnIDB6X1fT7cBFhxvuXQuj4U3J2LSsiEZW4KLuIeaxiow=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xBMY9MNr; arc=none smtp.client-ip=209.85.219.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f182.google.com with SMTP id 3f1490d57ef6-e4419a47887so3950171276.0
        for <devicetree@vger.kernel.org>; Tue, 18 Feb 2025 03:06:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739876797; x=1740481597; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZxBzcG+1RCPRksrqYQsyAhoS4ssC4QSuiEWJmIW8two=;
        b=xBMY9MNrSOLEewg/P1qKiONEWuEY9xgOJI/kT9834cbP420ehuod8GqETItTN8z1Cz
         I2jCNa/E9ND8xKBItEs4mIAkIXvXPR+I+6TsVP2ZmUlIlRoX4PJxrZ46TQgV1UL4TomN
         ZU+C6DMzOaqAyJC93PVL2n2uSN0uD5zVjRRs6uhcPNX/2jUnaEXa0NbrOlzG96bF+K1F
         jX9HrC+ySq88z4Oe87CUCrP9dpQ7MxNbLulAI9fT//MrQLTlXIblBQ3aa9WPLRQ9wVip
         aSWukDurDrcojMSlQN5whtyGZb5EUEHrpEPB7dP8Hz8IPoOL+2eKocDFn+YLWoaMWRb8
         r5AA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739876797; x=1740481597;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZxBzcG+1RCPRksrqYQsyAhoS4ssC4QSuiEWJmIW8two=;
        b=OMCsqNRGhPdpcy5y8RUTWC1/f3ZlKVHZ20rEB3QlbSmfQEVr6SLhYjb/TuucYSCkVY
         RSCUFjRRSkr0xXjBPmUSQO3xMi00NUZnEjOX5729JauxpZq5KJrEWZKgmaRecr3jSW9L
         GdkVFQKI0JiqNCiB+PAFmCjqBrYok41p4qqSweyZbHEKqxhVSW/VH59KtMF0UYaIOjdN
         ZDau1J7lWFP7QybxVT2D8YZg4XXe6mR0kzhA07wqVEWdt5eBeznoZrpUXw2reCCvYnp6
         /0ztjROEcDJ2L06k68j1SymBLT+sDYnPmyvZ5kp5HCyv+6yJg7fZiT3GEJwvJdgKcAZF
         irxw==
X-Forwarded-Encrypted: i=1; AJvYcCWkOw56drTimY/jUqwOnhHBnjpa/nzaurxKKrZS/QMqUrrrbvZAMvVM5BpHAAt1Xp9SZNpAY52eWFQ3@vger.kernel.org
X-Gm-Message-State: AOJu0YzzF9ucXUG6TRG2NWzRpKNG8bzXhAWf4jYQxz9XXgsDs1Mhhnxn
	jbmxm6rRJ7gtjslj1rTPBfjtWTPMW86ygRn9sGkJZp3Y+lMwAGxvcSYM6S+fWUigJq2+MtE0S7J
	rxwMfroPTis+fht8Sz6RKF/HR5lfQU0u7oblp6g==
X-Gm-Gg: ASbGncvPRcX/uHmU2wQhzsnQwWqG0LYpCltmPX60Z2K0CPizsoqGA2h8DufKEftfpkq
	mAYjEJIjOHuM29t+N3kc1elUsjg0v8GkDWqTFeY3ONQdKzGI0Mjpbs4SftvW9IcNquVovnoRtGA
	==
X-Google-Smtp-Source: AGHT+IHLwVd8/FJ71sPKuZozOz3hvT7H8xMZqgkAwVXdbgbT08OeRrY0+2kxMfjx0SKdM7rJ6iJnri3ipFwnGN4coNk=
X-Received: by 2002:a05:6902:2506:b0:e3c:7c3f:253a with SMTP id
 3f1490d57ef6-e5dc91dd54amr9391445276.36.1739876796754; Tue, 18 Feb 2025
 03:06:36 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <1738736156-119203-1-git-send-email-shawn.lin@rock-chips.com>
 <2579724.BzM5BlMlMQ@diego> <321804ef-f852-47cf-afd7-723666ec8f62@arm.com>
 <5649637.F8r316W7xa@diego> <fa184920-e1f5-4eee-894a-f617e6d8e817@rock-chips.com>
In-Reply-To: <fa184920-e1f5-4eee-894a-f617e6d8e817@rock-chips.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 18 Feb 2025 12:05:59 +0100
X-Gm-Features: AWEUYZl62zD8xYisGrHF_NbsDrxarZMOFP8pvEVYVbnRWAYdlQmrw0kY_HrKSt8
Message-ID: <CAPDyKFqPZcQOqEbyfy8uC-SO8vx1f=Ck-fPSqvXqiS1H-JJsrA@mail.gmail.com>
Subject: Re: [PATCH v7 4/7] pmdomain: rockchip: Add smc call to inform firmware
To: Shawn Lin <shawn.lin@rock-chips.com>
Cc: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>, 
	Steven Price <steven.price@arm.com>, 
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
	Avri Altman <avri.altman@wdc.com>, Bart Van Assche <bvanassche@acm.org>, 
	YiFeng Zhao <zyf@rock-chips.com>, Liang Chen <cl@rock-chips.com>, linux-scsi@vger.kernel.org, 
	linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-pm@vger.kernel.org, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, "Rafael J . Wysocki" <rafael@kernel.org>, 
	"Martin K . Petersen" <martin.petersen@oracle.com>, 
	"James E . J . Bottomley" <James.Bottomley@hansenpartnership.com>, Rob Herring <robh+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 18 Feb 2025 at 01:53, Shawn Lin <shawn.lin@rock-chips.com> wrote:
>
> Hi Heiko, Steven
>
> =E5=9C=A8 2025/2/18 4:50, Heiko St=C3=BCbner =E5=86=99=E9=81=93:
> > Am Montag, 17. Februar 2025, 18:10:32 MEZ schrieb Steven Price:
> >> On 17/02/2025 15:16, Heiko St=C3=BCbner wrote:
> >>> Hi Steven,
> >>>
> >>> Am Montag, 17. Februar 2025, 15:47:21 MEZ schrieb Steven Price:
> >>>> On 05/02/2025 06:15, Shawn Lin wrote:
> >>>>> Inform firmware to keep the power domain on or off.
> >>>>>
> >>>>> Suggested-by: Ulf Hansson <ulf.hansson@linaro.org>
> >>>>> Signed-off-by: Shawn Lin <shawn.lin@rock-chips.com>
> >>>>> ---
> >>>>
> >>>> This patch is causing my Firefly RK3288 to fail to boot, it hangs
> >>>> shortly after reaching user space, but the bootup messages include t=
he
> >>>> suspicious line "Bad mode in prefetch abort handler detected".
> >>>> I suspect the firmware on this board doesn't support this new SMC
> >>>> correctly. Reverting this patch on top of linux-next gets everything
> >>>> working again.
> >>>
> >>> Is your board actually running some trusted firmware?
> >>
> >> Not as far as I know.
> >>
> >>> Stock rk3288 never had tf-a / psci [0], I did work on that for a whil=
e,
> >>> but don't think that ever took off.
> >>>
> >>> I'm wondering who the smcc call is calling, but don't know about
> >>> about smcc stuff.
> >>
> >> Good question - it's quite possible things are blowing up just because
> >> there's nothing there to handle the SMC. My DTB is as upstream:
> >>
> >>          cpus {
> >>                  #address-cells =3D <0x01>;
> >>                  #size-cells =3D <0x00>;
> >>                  enable-method =3D "rockchip,rk3066-smp";
> >>                  rockchip,pmu =3D <0x06>;
> >>
> >> I haven't investigated why this code is attempting to call an SMC on
> >> this board.
> >
> > I guess the why is easy, something to do with suspend :-) .
> >
> > I did go testing a bit, booting a rk3288-veyron produces the same issue
> > you saw, likely due to the non-existent trusted-firmware.
> >
> > On the arm64-side, I tried a plethora of socs + tfa-versions,
> >
> >    rk3328: v2.5 upstream(?)-tf-a
> >    rk3399: v2.9 upstream-tf-a
> >    px30: v2.4+v2.9 upstream-tf-a
> >    rk3568: v2.3 vendor-tf-a
> >    rk3588: v2.3 vendor-tf-a
> >
> > and all ran just fine.
> > So it really looks like the smcc call going to some unset location is
> > the culprit.
> >
> > Looking at other users of arm_smcc_smc, most of them seem to be handled
> > unguarded, but some older(?) arm32 boards actually check their DTs for =
an
> > optee node before trying their smc-call.
> >
> > I guess in the pm-domain case, we could just wrap the call with:
> >       if(arm_smccc_1_1_get_conduit() !=3D SMCCC_CONDUIT_NONE)
> >
>
> Thanks for the report and helping find out the cause!
>
> @Ulf, if the solution above seems reasonable to you, I can cook a fix-up
> patch.

Seems reasonable to me, thanks!

[...]

Kind regards
Uffe

