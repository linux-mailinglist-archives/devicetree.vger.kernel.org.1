Return-Path: <devicetree+bounces-194808-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A76EAFF9E0
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 08:33:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 62060580171
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 06:33:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC983285062;
	Thu, 10 Jul 2025 06:33:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="kCwIMIX0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com [209.85.219.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E606C21D3E8
	for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 06:33:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752129232; cv=none; b=lLQK/ZQ4DgOvDCrA/fATDcrae/ru2tuyzif7NK/dVLUCQs6DcLVT7A7KKXQvhXjII+P46EIwwMUCA2cgkkbE+lpprN+GYObf7y+15hn3NYS5vQFJ4M0XtUpo5qWqCCb8miZGMDxfi0XcJn4Mzaurh50zGINsIubDVKafLa6wy+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752129232; c=relaxed/simple;
	bh=fj6W66sPr7Ji9329jAkLIL1CrVKPhluEPji8nUmmCag=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=pEQsRQ9wQAOg0lBnSy0VZmx2kSrg0bJSH3m8fY3rfcRny06ZTXwAiVieXeBD0C7e/f9I+3UhNzUCpOLkQv126F4kd1zUoADp55Dhotgg65pEL7a4s5YW0If7ifHpYnJxKa0JYPMzZ8WgVJ68n1/bhHNMVNlxwNKgyWN73K+W1kQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=kCwIMIX0; arc=none smtp.client-ip=209.85.219.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-yb1-f177.google.com with SMTP id 3f1490d57ef6-e87c86845d9so477078276.1
        for <devicetree@vger.kernel.org>; Wed, 09 Jul 2025 23:33:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1752129230; x=1752734030; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LOfKyTSrKEeE5mRVGbOkpddwy61Hvu8Xrql9GC0LhTY=;
        b=kCwIMIX0xI+FF4eyIrZKYmYLyUmzCNhlOe0IvNyklrooYhLtDrAxlbm5hlLdUagTrs
         szRok5kM5ROl3FWGYSBIQrA1CVZvKpqAMKvCeTKvm4bJ/qqAQWis9OT3yIu3cq68y+GS
         D3c6xDvvN/n5S8sAnEQZy4FGrNnKj1jWJVgfOKhpTJqa1qXM9gPcZhUi8aOcELee5LkM
         VnAHdnllVtJ8IEfO2FZ1fcqvV2oqgj/JvlrYbRPASCQcaMoH+zbbeQzYpBTmGaYl89uH
         0QCftfGvgIQvsA1Gt8eXf86EiqtIeVDeOxUXAqDmQcoBsqhLztsiVemdjl4o8PmyfOVB
         eXLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752129230; x=1752734030;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LOfKyTSrKEeE5mRVGbOkpddwy61Hvu8Xrql9GC0LhTY=;
        b=Io4tWZ9764Mp7bb1F7GVP8GEcdVEhHBDR1isRVr5Zq34luqX+w8cK66a+uHq1yWHOo
         KntY6hywpQwNW+8xSALx8pDs84lfChAyjbXVl5pYp8BRaHkDJBg2R3QO6WlufQy0SS7U
         +gSqfGu18M3fdia2wgAoL46yHCweqfeXSxZqU1V2UtQopefCkTz5ECnyn16mRgmDa5yB
         w5AjBrJJuLDEePN9b6wVxWEoLA1/L1dBJekCfMCuz/ckdVekGRzSa1vjDLnNvBoX7iMT
         A47dQhGSFEAnq2qd80gRtugmBI6vX3ish7OktmodbH5brD59P/hAXDpdFga0YAuJnqw1
         rk3w==
X-Forwarded-Encrypted: i=1; AJvYcCUleXtI0Yo2rirQndDuM4xPq1723e47LxILtFCvIj6zBhImTa0l0vzmmoOkVR62kCL774IPoLR1SdmG@vger.kernel.org
X-Gm-Message-State: AOJu0YwH3U+kArNCWqXC61ptPTIJ57XPxR/HyUraT1MD91ZZf/2dmpLi
	7Oc4k3vnZBXoN7Q+jCsDkwolnrnICAqFPCSK/jq/nxgm4H0NTRx6iE50G+JQMHvk34q/h84FcjI
	eY8HrjVsNUndEViuLrNmlDsmDzVcGQu7Ti49Km/whpA==
X-Gm-Gg: ASbGnctdM5QNOPZHOP0TwDaSajr56vMhP/mqA11Qlmjci+vmZcqRsZBzxICw4cFKl2z
	UAzQUGkYgITKE8jOcWf2odgZKDTyuaWt62yRR3nYWGvEx7NhY/sPNf8KjMLBfh6pSylO69d3/ER
	S3stfOqcnbt+3aQNgzaQU+Wx0WL5whybduEqHnlZXxpL45lDziJO8G5rafydZR275g
X-Google-Smtp-Source: AGHT+IEUEuXYe+AiRoP9sKK+Q2LJ7hkbYYZRPRjU65Kj1Wu6nsLtbs1bxTc1Gn9tJMDj6XgH3uwUSmTRPbmjpClz12M=
X-Received: by 2002:a05:690c:7405:b0:708:16b0:59c3 with SMTP id
 00721157ae682-717b1a8aa20mr78370367b3.33.1752129229913; Wed, 09 Jul 2025
 23:33:49 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250429085048.1310409-1-guodong@riscstar.com>
 <175198458423.86859.5882458274157023095.b4-ty@gentoo.org> <20250709063738-GYA488894@gentoo>
In-Reply-To: <20250709063738-GYA488894@gentoo>
From: Guodong Xu <guodong@riscstar.com>
Date: Thu, 10 Jul 2025 14:33:37 +0800
X-Gm-Features: Ac12FXzWKaYp6y1oSJwNCeBf8VLK9_pLF6KbvY2LESuIM6jHvBvBU0Xdd6tceRA
Message-ID: <CAH1PCMaZYaRgUoaMfDLyqwTv3n3NUaUL8tHr8SoTq=4ayuvyhA@mail.gmail.com>
Subject: Re: (subset) [PATCH v3 0/6] pwm: Update PWM_PXA driver for SpacemiT K1
To: Yixun Lan <dlan@gentoo.org>
Cc: ukleinek@kernel.org, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, paul.walmsley@sifive.com, palmer@dabbelt.com, 
	aou@eecs.berkeley.edu, alex@ghiti.fr, p.zabel@pengutronix.de, drew@pdp7.com, 
	inochiama@gmail.com, geert+renesas@glider.be, heylenay@4d2.org, 
	tglx@linutronix.de, hal.feng@starfivetech.com, unicorn_wang@outlook.com, 
	duje.mihanovic@skole.hr, heikki.krogerus@linux.intel.com, elder@riscstar.com, 
	linux-pwm@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
	spacemit@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Jul 9, 2025 at 2:37=E2=80=AFPM Yixun Lan <dlan@gentoo.org> wrote:
>
> Hi Guodong,
>
> On 22:33 Tue 08 Jul     , Yixun Lan wrote:
> >
> > On Tue, 29 Apr 2025 16:50:42 +0800, Guodong Xu wrote:
> > > This patchset adds support for the SpacemiT K1 SoC in the PWM_PXA dri=
ver
> > > and updates related device tree bindings. The changes enable PWM
> > > functionality on the K1 platform through driver enhancements,
> > > configuration updates, and device tree additions.
> > >
> > > Functionality has been verified on the Banana Pi BPI-F3 board using P=
WM14,
> > > configured as a pwm-backlight. Per community feedback, the actual
> > > pwm-backlight node is not included in this patchset but can be found =
in
> > > patch 7 of the v1 series, with modification of pwms property to 4-cel=
l
> > > format to match updated binding (#pwm-cells =3D <3>) since v3.
> > >
> > > [...]
> >
> > Applied, thanks!
> >
> > [3/6] riscv: dts: spacemit: add PWM support for K1 SoC
> >       https://github.com/spacemit-com/linux/commit/9aebdfc21f755e0d2766=
683aa251435fb656ea47
>
> found have to re-arrange the nodes according to ascending order of unit a=
ddress,
> so here is new version I've pushed, just FYI, please check (should have
> no functionality changes)
>        https://github.com/spacemit-com/linux/commit/66f56c7a6421394834152=
1b5310064586a05c80e

Looks good. Thanks Yixun.

>
> > [4/6] riscv: dts: spacemit: add pwm14_1 pinctrl setting
> >       https://github.com/spacemit-com/linux/commit/8709d51024068d4c81dc=
785d63169d283d147cf3
>
> --
> Yixun Lan (dlan)

