Return-Path: <devicetree+bounces-235473-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 23D14C3930A
	for <lists+devicetree@lfdr.de>; Thu, 06 Nov 2025 06:51:02 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id F30C34E3585
	for <lists+devicetree@lfdr.de>; Thu,  6 Nov 2025 05:51:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 08074285074;
	Thu,  6 Nov 2025 05:50:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jtU5ldrv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DDB31AA7BF
	for <devicetree@vger.kernel.org>; Thu,  6 Nov 2025 05:50:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762408257; cv=none; b=YbxJrZOpV/CXN5QlFI6+jX3oyQ13L5qkLtQyr9U9lLbIb8INWP/PYW7WcXFdPZ95sv3LjMP5LajpofSc8ChCl0XEmZ5UJ/bfiqZZD4QjOdvlpIg7t901T1wFXSB8qsWEzqJ4VTQwCVxOMJb/hjaeoKe9x3YzxbRH8mihvQ1GeH8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762408257; c=relaxed/simple;
	bh=uvXmgwQHlQMTY9J3PYHlP7jhkpgHL79hx4AJE2k/CM0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Js0fcRFleOPd7wk9ra4OubpzPcMookyp+YuvOALokgr7IbPMucFctx/R0LQ2d/RYJ+ytD/NBGmzdu9a0nnUlEsT7kgtCAEJxQpcwxpueQybWaNw2Yyj7hb3QxH1cggv6UbafXTycP32uc8jewINHP5jZcy0Nfl01udqdDcMOruo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jtU5ldrv; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-429ce7e79f8so429267f8f.0
        for <devicetree@vger.kernel.org>; Wed, 05 Nov 2025 21:50:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762408254; x=1763013054; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vPKmSfTx8K0cqrwmwnrzxozj3n4nbRAjUCx0YnQt1aA=;
        b=jtU5ldrvX/90oPuVkYaZtKtWm5EgpG2zNHsSw2q/3pe3dkJbOK1F6nEigl8EKeE8Ku
         IG1Kp7DQXPsHpP/Jr7NoE4DlngClzFTIVqdroOX7ppoozASnC37ajjrqj7/C8ps5ET/T
         AbOMhYiD059bHw/bu3hKla4FNM3gokLNquB0iapDYG14Cf35R0NP+bcuduNjJ+nJAYUR
         +M+C00Gm6fVRixlezJC72HE4gaPv5qNoY+5oMepIyz7+F3CNYXG4rhHSt1xEgFYaTws/
         fLPwCCkx1RnKkqcN7+CiLzC6v1yHBRe4SEt8D4XW3BMEWigQ6GvBI9XlsVnjnZTXB4jz
         BG6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762408254; x=1763013054;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vPKmSfTx8K0cqrwmwnrzxozj3n4nbRAjUCx0YnQt1aA=;
        b=BbnxMA6fSQm0Ubw+graQEKAAoLrpPPUZcmYYGUU70QcK0TE4aQSnv3AgisCT+qwbFm
         bdFnDy1bIh6yd5P6+eLOjKitVyQhh9xtqHheiADSh4a7i2+y+BnNFVz4XHhZpIHSnjwe
         kPcy85j39erd4rctGMD2IOJA3i9geCm4N9bExZyFfxGaMExflFm+Ncb496WILWqb6v2K
         Hfw3FXkBMG8eDFXdL6NQ+E29tN7mNzs5YmJTyeNuAzwGJ4UomnVrvdPqklTQ/827uuTL
         rH/hDT/g68r6IRd68pjG+mwQIuCh7BAyynKF2jMUHgnUROHwX/3avnif78W4WSn5P/JC
         Elng==
X-Forwarded-Encrypted: i=1; AJvYcCUMduDG9ekyhlZztRdCT32IQe9+SPNsOIuGHDpiTSvCpUVK0so/Itxjz2MiJe0M06KfXctOf4U3Axp7@vger.kernel.org
X-Gm-Message-State: AOJu0YxtMSH9Y4P9lCbBxpQpap3O0q37Vio0/E2pjwvxJk9bm5V3YQZc
	w0339ECiPz0YyGieyKSe8b9FEqO8HPWXUb3CsbddDIzz56alCeLQnITBdxpCVcqgPUHaualI40w
	xrSkKJzkpM6WUFCx9nhI5mk4427HHOz4=
X-Gm-Gg: ASbGnctllvdmD7NCIVRA37LsjKlxTOzcdAkMfNFzjjAzipWu6kRKnzl+jMGqeIXfLSE
	urQnMB3x/I+zTm8alGmSIYWNjBOi3XxzZCGHI8H5zVsTBg3qYE2zR6UXzWrhxiP0I2HaP6Ee3oQ
	i19eehjnsLIuC+2O2x1Y7Efskt4f2MRagXtoG6n0mL5jsUYmGdq7ubHj8NhR5cBjDKPITjq50Tf
	7AXc9GFC4slVazdJoGqEifgANsEOPTfwNWDjhWwn09IxYj4/L4vOg21kGjn6KuPjFeRVFHHNJhf
	BZpSLU5iHnkofQazeVKJ4VoXDfQ=
X-Google-Smtp-Source: AGHT+IHtZz8UHpe0WQ4tt4mV3lotZ3d8lT0N5bfyU8SBB0ZGuRnJSTKMX3xBt/yJtCIC/0ntusZ1jJoTprx1MXSrOLo=
X-Received: by 2002:a05:6000:2c13:b0:427:23a:c339 with SMTP id
 ffacd0b85a97d-429e32e4905mr5081484f8f.14.1762408254395; Wed, 05 Nov 2025
 21:50:54 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251105051335.17652-1-naoki@radxa.com> <20251105051335.17652-4-naoki@radxa.com>
 <CALWfF7KyTfpXSyjVQaFzqtn6KyDxuyZOBpPR8y-jf6sduNxq5A@mail.gmail.com>
 <1EE1A1D9D7C100DA+1b365782-98c4-4ee0-ab96-920990841903@radxa.com>
 <35ff8e6f-dd2b-d909-70c7-b19240e32ccf@manjaro.org> <CALWfF7K3zNxSsXVpW8pLc_xWi793HG99OvbshtP-0=764JmPKw@mail.gmail.com>
 <57F9C541303D73B3+4c84cba4-8378-4b65-8065-46e28217694b@radxa.com>
In-Reply-To: <57F9C541303D73B3+4c84cba4-8378-4b65-8065-46e28217694b@radxa.com>
From: Jimmy Hon <honyuenkwun@gmail.com>
Date: Wed, 5 Nov 2025 23:50:42 -0600
X-Gm-Features: AWmQ_bkSpVkHOQiLYG36Mon49brrv3a8L4bWpzGiRvNTICwmFZynFK2gL6Np574
Message-ID: <CALWfF7+0_MOhUNNSekYB4P5xrsgevz_ZvcX883iyCt94K6h7OQ@mail.gmail.com>
Subject: Re: [PATCH v6 3/3] arm64: dts: rockchip: Add Radxa CM5 IO Board
To: FUKAUMI Naoki <naoki@radxa.com>
Cc: Dragan Simic <dsimic@manjaro.org>, heiko@sntech.de, joseph.kogut@gmail.com, 
	robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, jonas@kwiboo.se, 
	kever.yang@rock-chips.com, quentin.schulz@cherry.de, pbrobinson@gmail.com, 
	amadeus@jmu.edu.cn, jbx6244@gmail.com, devicetree@vger.kernel.org, 
	linux-rockchip@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Nov 5, 2025 at 11:09=E2=80=AFPM FUKAUMI Naoki <naoki@radxa.com> wro=
te:
>
> Hi Jimmy,
>
> On 11/6/25 13:53, Jimmy Hon wrote:
> > On Wed, Nov 5, 2025 at 9:31=E2=80=AFPM Dragan Simic <dsimic@manjaro.org=
> wrote:
> >
> > [ snip ]
> >
> >>
> >> With all that in mind, we should specify "no-mmc" here, because
> >> we're describing a microSD slot, instead of describing some hybrid
> >> MMC/microSD slot.  That also explains why the adapter sold by Radxa
> >> is described as not to be used with microSD card slots on SBCs.  I'd
> >> also like to hear is this adapter/eMMC chip combo recognized by the
> >> kernel when "no-mmc" is specified; it should fail.
> >>
> >> Actually, not specifying "no-mmc" here may result in some unforeseen
> >> issues with some (or perhaps many?) microSD cards, because the MMC
> >> drivers will treat them as MMC-capable devices and try to initialize
> >> them as such, which may cause all kinds of issues.  In fact, I'm not
> >> really sure that the MMC drivers are actually implemented in a way
> >> that avoids all possible issues with the storage controllers that
> >> are capable of both SD and MMC modes when neither of "no-sd" and
> >> "no-mmc" is specified in their DT nodes.
> >
> > Hybrid MMC and SD slots are pretty normal on USB card readers. So it's
> > normal for the host controller to figure out what kind of card is in
> > the slot.
> > https://uditagarwal.in/understanding-sd-sdio-and-mmc-interface/
> >
> > https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/comm=
it/?id=3D6ae3e537eab9f560b516b001eb89f0cd568bdced
> > was the commit that introduced the device tree properties. By the
> > wording of the commit message, these device tree properties are used
> > to indicate to the driver if the host controller hardware is capable
> > of MMC initialization or SD initialization.
> >
> > Since the host controller in the RK3588 is capable of all the modes,
> > these properties do not need to be specified.
> >
> > Since Radxa has the eMMC to uSD adapter, it makes sense Radxa would
> > want to configure their microSD card slot on their boards to be a
> > hybrid SD/MMC slot.
> >
> > Now, the more fun question is if the adapter can handle eMMC HS200
> > using the 4-bit bus?
>
> I added
>   mmc-hs200-1_8v;
>
> I got
>
> [  226.099510] mmc_host mmc1: Bus speed (slot 0) =3D 400000Hz (slot req
> 400000Hz, actual 400000HZ div =3D 0)
> [  226.546246] mmc_host mmc1: Bus speed (slot 0) =3D 49500000Hz (slot req
> 52000000Hz, actual 49500000HZ div =3D 0)
> [  226.546371] mmc_host mmc1: Bus speed (slot 0) =3D 198000000Hz (slot re=
q
> 200000000Hz, actual 198000000HZ div =3D 0)
> [  226.656853] dwmmc_rockchip fe2c0000.mmc: Successfully tuned phase to 7=
6
> [  226.657011] mmc1: error -110 whilst initialising MMC card
> [  226.671469] mmc_host mmc1: Bus speed (slot 0) =3D 300000Hz (slot req
> 300000Hz, actual 300000HZ div =3D 0)
> [  226.793733] mmc1: switch to bus width 4 failed
> [  226.798915] mmc1: mmc_select_hs200 failed, error -110
> [  226.799390] mmc1: error -110 whilst initialising MMC card
> [  226.811549] mmc_host mmc1: Bus speed (slot 0) =3D 200000Hz (slot req
> 200000Hz, actual 200000HZ div =3D 0)
> [  226.947518] mmc1: switch to bus width 4 failed
> [  226.954978] mmc1: mmc_select_hs200 failed, error -110
> [  226.955454] mmc1: error -110 whilst initialising MMC card
>
> I don't know if this is board-dependent.

I was hoping for too much.

In the "RK3588 Datasheet", under the "eMMC Interface", it specifically
lists support for HS400. However, for the "SD/MMC Interface", it only
mentions "SD3.0, MMC ver4.51", so the more performant eMMC modes are
not available on that interface.

Jimmy

>
> Best regards,
>
> --
> FUKAUMI Naoki
> Radxa Computer (Shenzhen) Co., Ltd.
>
> > Jimmy
> >
>
>

