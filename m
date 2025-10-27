Return-Path: <devicetree+bounces-231760-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CE6F0C1173C
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 21:58:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 712DB189A3CF
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 20:57:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6D4C31E0E1;
	Mon, 27 Oct 2025 20:56:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="lE9n+aIJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com [209.85.160.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F14A931C580
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 20:56:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.160.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761598594; cv=none; b=lTiDL5YGl5gw9P3ZFNYcIBPb+9hxoWV34B7/ueyKBF2KQaiCY799bvBZxu/HRXYOJEh8zqE9iw2BFFdjCd55lbiNRG5IHHdT8ULg2XohKa1JmwxUHJEENETEH5MaML9QEvja/1zVN96MGf5ZumoBx0jjpauSOcsT4zV+Wcq3/Sk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761598594; c=relaxed/simple;
	bh=Z/dpjq6EFEaiV8X3I6Ls4Sc8YBmtoNZZd6WRpTozdoQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=agB3NF+Sb+yLNb8wGgcM2cDKIFOGWTVkiJmtgmpZNQ5AMqPmyI1KQWXJ0Ps4K0baNG9QajbkaOrxVpg7HYVpl7IrpiLNLAZWu8JiII/qeiqv5kBJDJiPnOJWfOONboOldQ9RmMRnSbpivs3zjxdYoCXsqWFm65p4sskt8XjIVos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=lE9n+aIJ; arc=none smtp.client-ip=209.85.160.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-qt1-f171.google.com with SMTP id d75a77b69052e-4eb9fa69fb8so37024241cf.1
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 13:56:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761598592; x=1762203392; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=01IXpqC7TIZ5mj2iH0pdDn0rPqM6SOZi4vm8wKhQg+A=;
        b=lE9n+aIJazoBng//pNQrHmXL8zp0mAdRYUJ3eiscqkwXUejy+eB6UIWrA8JUQA3bgM
         8ltZL2XfGTfIJwAs7wFw3cI+wpxTEnyCtOK+wsMoBq6Mk9mKH1ccwzqgJrDwYFK6GSYt
         yGMxYpJ9QKdLgC0p8guvfVMj1RinrZ5oCFsNe0addvbP2MtvnlEjv3UvL035dPl4apwy
         bEaMZ0f6HW8UD3Bo32LGYibVOkcyxOuyGRZ7tyWISAz0qr9xsPHwyUAoJPT3RS8qYUub
         yVH2HmwIDi1aI+hY+UC8dhkl9xtT39rq/ubOmMqmrwR1XnfS48xqUdQopXR4DXdhcAgj
         29wQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761598592; x=1762203392;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=01IXpqC7TIZ5mj2iH0pdDn0rPqM6SOZi4vm8wKhQg+A=;
        b=FKqHfUVrR5HfPU+L1wdQc0BVO35sqkxtAbLWmXFl6v6cbIsJeoguApUjXSkb57g6F3
         cAZPymQ6M/W5J8mvSQLhG7rTbXMHAQ8lcm4hv32DxuwGIPJo+vum/srxaIzsqgPMsbLr
         R2jFZIycxyghcANsHeQBKx5G2vy7MSuGNNe2hwNBfZcNIJwuj++XKZVK0Z3yTEtLwt/S
         9L/+eRaECkhpSRy0A7mtK5a7v+/JMVNtGgnxNyNR2ma4Ap4sQyzKh118Pbmn4zrYRP97
         67UFjJUUY2youRnwO74Mssd2ZF7wVAynhd7injzk/3fVQcRz3wMqXgBCaPhFLw6q/JIj
         HoTQ==
X-Forwarded-Encrypted: i=1; AJvYcCVls8/tWrVH6DaWR+bTc0VCvr93mRcLR4SA3/TZ1o+jXxn4xgBp6VzXDEsmkid+NbXpbUC+OjnT1njY@vger.kernel.org
X-Gm-Message-State: AOJu0YxhoWVsG+D6nSW6UU/ispjJj1ZnewE2MxeOxUJ0EN7VE5tt32oa
	Nn/ZGMgFeTPbAO7BPoW9hFNq0tDYjG9G+WLELoyg/rmK68oobg5/ivKldmkZGYyUCVc4BQ3U5cO
	mUlyyPndPx6Hc7B1n1QFmooD0Y0sojpk=
X-Gm-Gg: ASbGncu/ljp33lbSAMub32k+0AeYd7YjtekRmNi52TvPHCoudx63Q+RxkQ5FIKmkKr8
	W34a0PHVp5ExbQ2dRMybq4qwn3SJr0Fyf4jPoVh77ChJzbJTktL0eWRjHCnc9Yu+DoLBvgq3lD7
	ZYi6qkSQ+Meg7HV6xBTq8ztAHMPZwHAkCqojcHC1SR1QAkvzVkmT4TkWVzjEEtClsxgf20gdOtC
	Tv2FyMrXHArk7f4etLf3laPbhhVnLGsky2B8WMi85RxCfLyrVcuGaqwoD/AWZyg7fBNmzn/
X-Google-Smtp-Source: AGHT+IFNepnjW1ln2/qkUxgl+nTX/lKuWDuPuR+uSkSWvw1XDCRuJvbtDz+7gIkX9u2wG4O2TSxknsPpmxchsLm6W7Q=
X-Received: by 2002:a05:622a:56:b0:4eb:72a3:d700 with SMTP id
 d75a77b69052e-4ed07486220mr18468201cf.1.1761598591759; Mon, 27 Oct 2025
 13:56:31 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <d583ee43-38c4-40fb-b33b-ce3153c9723b@gmail.com> <20251027200213.1821809-1-dsimic@manjaro.org>
In-Reply-To: <20251027200213.1821809-1-dsimic@manjaro.org>
From: Alexey Charkov <alchark@gmail.com>
Date: Tue, 28 Oct 2025 00:56:20 +0400
X-Gm-Features: AWmQ_bn5rbspTLkQfy8fItkWXbaf0FPuu7U9ED3igS0nELLu-MdDWTDVKU7YnWg
Message-ID: <CABjd4Yzfx-4xBHVB=W_r6nEdbwNJKdpHYB6bN3Xsk8dZOegJWw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: pwm-fan overlay for NanoPC-T6
To: Dragan Simic <dsimic@manjaro.org>
Cc: sigmaris@gmail.com, conor+dt@kernel.org, devicetree@vger.kernel.org, 
	heiko@sntech.de, krzk+dt@kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org, 
	robh@kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Oct 28, 2025 at 12:02=E2=80=AFAM Dragan Simic <dsimic@manjaro.org> =
wrote:
>
> Hello Hugh and Alexey,
>
> On Mon, Oct 27, 2025 at 7:08=E2=80=AFPM Hugh Cole-Baker <sigmaris@gmail.c=
om> wrote:
> > On 27/10/2025 09:14, Alexey Charkov wrote:
> >
> >> Is there any downside to enabling this unconditionally in the board
> >> .dts?
> >
> > Only that it goes against the principle that the DT should describe the
> > hardware; the board .dts would describe a cooling device that doesn't
> > actually exist on the base board.
>
> Having a separate DT overlay is perfectly fine if we want to
> describe a board absolutely correctly: if the fan actually isn't
> present, the operating system shouldn't be made to think it is
> there, especially if there's no fan RPM feedback, which is the
> case on almost all Rockchip boards that support a fan.
>
> Preventing the kernel from managing a non-existent fan might even
> save some CPU cycles, ending up producing a bit less heat, which
> can only help in passively cooled setups.

Sounds like an overcomplication without real benefit. It's one thing
with overlays for functionality that can be software-incompatible
depending on whether an external attachment is connected or depending
on the type of attachment connected. Here we are looking at a plain
2-pin fan which cannot be software incompatible to anything really
(it's not like one could repurpose the fan connector for anything
meaningful if a fan is not in use, and noone gets hurt if a PWM output
is left running without load).

The CPU cycles spent parsing a slightly larger DTB at boot are likely
comparable to those spent activating a PWM output needlessly upon
hitting the active cooling trip point, and both are negligible for any
practical purpose.

> However, the practice so far has been to describe the fans in the
> main board dts files, if the board provides fan support, regardless
> of the fan being present in a particular board setup or not.
>
> > I guess then in theory, an OS might allow the SoC to reach undesirably =
high
> > temperatures if it's relying on the nonexistent fan to cool it down. Bu=
t I
> > don't think this would be an issue on Linux, at least, in practice.
>
> We're safe, a thermal runaway isn't going to happen when the fan is
> defined in a board DT but actually isn't present.  Thermal CPU and
> GPU throttling will prevent the overheating from happening.
>
> >> Overlays require more user configuration, and not all
> >> bootloaders support them directly (e.g. systemd-boot users would
> >> struggle). Compiling with overlays enabled also makes .dtb's a lot
> >> larger due to added symbols information.
> >
> > Nowadays (on Debian at least) using overlays is pretty easy, I'm using =
the
> > u-boot-menu package in Debian, I just copy the overlay(s) to /boot/dtbo=
/ and
> > it detects them automatically and adds them to extlinux.conf for u-boot=
 to
> > apply.
> >
> > Couldn't systemd-boot users just use rk3588-nanopc-t6-(lts-)with-fan.dt=
b as
> > their single DT to load, if it doesn't support applying overlays and th=
ey
> > want to use the fan addon?

Sure, but it's a manual configuration step, where otherwise the kernel
would just default to the correct dtb for the board that the firmware
told it about. The fan is not discoverable, so the firmware won't ever
offer the "-with-fan" variant, meaning users would need to supply it
manually in every instance.

> Yes, that's an option.  However, that in general doesn't resolve
> the issues arising from systemd-boot users wanting to apply more
> than a single DT overlay.
>
> > FWIW, I haven't noticed any problems with having a larger .dtb (using m=
ainline
> > U-Boot to load it) and several other RK3588 boards are also compiled wi=
th
> > symbols enabled already, and I haven't seen any issues reported with th=
em.
>
> After thinking a bit about it, I'd support the extraction of fan
> definitions into separate DT overlays.  As I wrote above already,
> not managing the non-existent fan might actually help a bit with
> passively cooled board setups, which is a good enough reason for
> me to support separate DT overlays.

Practical benefits sound far fetched here, while forcing users to
manually configure something that would have otherwise just worked.
Let's see what Heiko thinks.

> If we end up agreeing to accept this DT overlay, I'll have some
> comments on the way cooling maps are defined.  I think there's
> quite a bit of redundancy there.

Agree. Thermal governors can figure out the fan speed ramp-up without
specifying each and every temperature threshold manually. Two trips
seem to be enough for everyone (c) - as we've done e.g. on Rock 5B and
others.

Best regards,
Alexey

