Return-Path: <devicetree+bounces-184227-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F216AD3518
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 13:37:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BB2D818969ED
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 11:37:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A028428A1E9;
	Tue, 10 Jun 2025 11:37:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="dY5IAR3/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f50.google.com (mail-qv1-f50.google.com [209.85.219.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE77A286896
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 11:37:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749555427; cv=none; b=tTn3G8Jei0WF/Mucrgd/5/QcV8HAluc5W7m+woQ8G63fg4rfv2DWAdD+YOfs03a8DrTGJoKVp2si1ietyrZE2tUnctIHUyV+RjTqwRBhpVKj84F3OVLNHqbmpMqaxY5Y8e9TKlGeegXTIGm7wgpRNevngEIv4oAy0fxM+6a+9cA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749555427; c=relaxed/simple;
	bh=Nnx5SwmZD0+RTHgrHJfEuPfmmfeN1X0Axl/gTjNoQjQ=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=blUS29VgjtxCrjcyMGx83sXhQLq3r/Tph+EdyLtXY+XD6Q6VyZ/7e+w5dydn5S3pOiEadqGkUxS0Hre1nuH6o2wp+dWjb0KwhvHQlGbIFwjwZXmiDJP5jocGj8XoOWEQJn97s12wquVeiagMJfFsUvAK6s9Y+MmHSdCAbrEGGHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=dY5IAR3/; arc=none smtp.client-ip=209.85.219.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-qv1-f50.google.com with SMTP id 6a1803df08f44-6eeceb05894so2805356d6.0
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 04:37:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1749555425; x=1750160225; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1IEUo4OXi/6u8Jsr6TBxYCa+QoyT/MABPEkrypIa5tU=;
        b=dY5IAR3/zwN7HvLpIlZ75fM2eIvKEFNc42D+9Zt3vuyraa7WsG9le969bFbTUo778Z
         1f7msh0V+JsTz+R1zknKBNHeIP9j4CRz8pQO3QRfnmX54fJWx8rHaWJ65ZsrAMTPyS6X
         QcK3I8wb7g6daMP9blSHwKXfhpk168NuqHHZFhq6tiAHFYuM6m3UYgJyu95BDu7mNB4e
         sOL+bFbZVgrvZXCs2XQUy5+h+iUE1p5uFdjMPua++P0vaihIdwZETHbKH5ZZHdP180lN
         XAaMmd7JSrknYE/+Hbuih9HCyKAtrXIZy4yVnwb1mMmJBvDg1nJytM+Tmdbo6SmoQ4ZL
         w6Pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749555425; x=1750160225;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1IEUo4OXi/6u8Jsr6TBxYCa+QoyT/MABPEkrypIa5tU=;
        b=R4gp8Sqz57bmWTNkwSlv4uttD9Cm0zA8RcrbB0i7vaNW0tXxgqrFMtpDMFmsE89AHB
         skCaGMc0//eUGXp4j8hK0RMmR5djydNuJgXOKD8AIYZ0dS8UjZEEHElj1oLBxo0TX8pg
         dpxA+YqrWKSQtdRtvfgcdQZQ7P4cOhG1kexFGc/4NwuguHL8XMq99O4quJj2CQDoqGXI
         qcKODnZWKDyvaBguLDSns3+esOn+pdU8oR0sFDwe+iQTz3vChhVfJOqVoHAWL8j/fS6Q
         Gwk0G1Ze6zrAUi4MWcC5d/ReTyY/5ltEt7u3fZB9Vku62AgGXz+jtvNmygdayup8XZbA
         67LQ==
X-Forwarded-Encrypted: i=1; AJvYcCUME8ip73FnPGr+Poh9zK4R79rAdkvZ8fJSApS8Vn0jFO1q623fh08qMGzn9zJmvEbrreUdUYDctKEV@vger.kernel.org
X-Gm-Message-State: AOJu0YxsLWW2L1Bug2asw9DsOyuyiz3snuHwMRXkASfKptNaSz29esR/
	AbcMabxC0PtjBG/nVBMTsXz7r0IkpratGsXDGpLjsIMNSM1/d2eX8STdZ+ogd3dK1Vz+l1gmqpT
	21MJQ4/s3psKjN4YVNwlfzhxnWqDlUz1vttEPyvqCtw==
X-Gm-Gg: ASbGncti/VWlI+sgVlfHjq+tMdMO2sfopnmjlcCaZ2m1OOpXY8FsvygN7WW27okcF1n
	1HAugnkuVNL0U8Fi3WVgMtCB5IRR2eCX+bMz75ayyEyPEWcyQb4XI2oTiFiBzKhdnAhX8Plpgmn
	gPLzax0cFJy5psjxpoW87YRibmWOYgxABGJlwiXDeBFw==
X-Google-Smtp-Source: AGHT+IHvHKo08me5RcB6HhT8MUj1njWXYeU3P86l+7s/He8833skTN9xQoNPfcqRdrNFzqssiZdslfW5Rg84q+3rI0M=
X-Received: by 2002:ad4:5d44:0:b0:6fa:c5be:dabd with SMTP id
 6a1803df08f44-6fb09f8a766mr87178436d6.11.1749555424663; Tue, 10 Jun 2025
 04:37:04 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CA+G9fYuppX5LeRjOAZWsYRCs76PVbnv-TN_RrszhDsk=KregyA@mail.gmail.com>
 <15979303.uLZWGnKmhe@diego>
In-Reply-To: <15979303.uLZWGnKmhe@diego>
From: Anders Roxell <anders.roxell@linaro.org>
Date: Tue, 10 Jun 2025 13:36:53 +0200
X-Gm-Features: AX0GCFt6fIa22bGlOZEBQVbwxbv765S6LyHqHyQH8BFAYJiOCtlXCLCPP7EEZaI
Message-ID: <CADYN=9L+Gao0w_CThNd96-yYbZDMZnwY7RvagCOdzUC4rKc-Ug@mail.gmail.com>
Subject: Re: next-20250610: arm64 No rule to make target rockchip rk3399-rockpro64-screen.dtso
To: =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc: open list <linux-kernel@vger.kernel.org>, lkft-triage@lists.linaro.org, 
	Linux ARM <linux-arm-kernel@lists.infradead.org>, 
	Linux Regressions <regressions@lists.linux.dev>, 
	"open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" <devicetree@vger.kernel.org>, Naresh Kamboju <naresh.kamboju@linaro.org>, 
	Peter Robinson <pbrobinson@gmail.com>, krzk+dt@kernel.org, 
	Dan Carpenter <dan.carpenter@linaro.org>, Andrew Morton <akpm@linux-foundation.org>, 
	Arnd Bergmann <arnd@arndb.de>, Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, 10 Jun 2025 at 13:22, Heiko St=C3=BCbner <heiko@sntech.de> wrote:
>
> Hi Naresh,

Hi Heiko,

>
> Am Dienstag, 10. Juni 2025, 12:25:31 Mitteleurop=C3=A4ische Sommerzeit sc=
hrieb Naresh Kamboju:
> > Regression while building arm64 with the Linux next-20250610

[...]

> > https://storage.tuxsuite.com/public/linaro/lkft/builds/2yJ4IOQa1XxMqDgm=
zjEl7VszYE9/build.log
> > * Build link:  https://storage.tuxsuite.com/public/linaro/lkft/builds/2=
yJ4IOQa1XxMqDgmzjEl7VszYE9/
> > * Kernel config:
> > https://storage.tuxsuite.com/public/linaro/lkft/builds/2yJ4IOQa1XxMqDgm=
zjEl7VszYE9/config
>
> thanks a lot for this notification.
>
> I'm surprised that overlay build at all when I built it yesterday.
> But yeah, the dtbs_install target really broke with that change.
>
> I've amended the commit now [0]

Thank you for the quick fix.
I applied your patch and built it, it worked fine for me.

I built it like this:
tuxmake --runtime podman --target-arch arm64 --toolchain gcc-13
--kconfig defconfig dtbs

Tested-by: Anders Roxell <anders.roxell@linaro.org>


Cheers,
Anders

>, to change dtso to dtbo and ran the
> dtbs_install target sucessfully with that change.
>
> So on the next linux-next creation, this should hopefully be gone.
>
>
> Heiko
>
> [0] https://git.kernel.org/pub/scm/linux/kernel/git/mmind/linux-rockchip.=
git/commit/?h=3Dv6.17-armsoc/dts64&id=3De14491aaa6ff598bbe9d462e44c01ac6575=
4f445
>
>
>
> >
> > ## Steps to reproduce
> >  - tuxmake --runtime podman --target-arch arm64 --toolchain gcc-13
> > --kconfig defconfig
> >
> > --
> > Linaro LKFT
> > https://lkft.linaro.org
> >
>
>
>
>

