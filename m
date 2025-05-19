Return-Path: <devicetree+bounces-178434-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DFA4ABBCD6
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 13:42:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 38D1B188AE95
	for <lists+devicetree@lfdr.de>; Mon, 19 May 2025 11:42:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90D9427586C;
	Mon, 19 May 2025 11:42:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gRhhvab9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f169.google.com (mail-yb1-f169.google.com [209.85.219.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E822926FA6A
	for <devicetree@vger.kernel.org>; Mon, 19 May 2025 11:42:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747654945; cv=none; b=sxSwQqZokT4MDS7i6f/w+K/bQ6v2p1w0PoHXaBiLQt+PFrJMzNtBGjsLHDkEZO775L14NFMQP1HiPUGm65D9Afnzsvhc2LUuBLMZKs63FYBUVesA8CcJMiaPy+KtvhbPrDOETP5pveqz6XzFq834mlUdzAm2Mtw8YbID1t7X3rI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747654945; c=relaxed/simple;
	bh=QpvRVedBrBMy10NIbVtvjYN30CB+eR89OGKIdjlaWu0=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=bqrpGHtFq92V3BbT5AsGimvxMoAJyM60z86+OoyPiXka8FuM9LydPdr/ViynX2Tybd2JNGT5y6m99i4a4OCZmpYhKS4NBhGAGZLGGscIknpL8WRw2kRYtyMsEEo+f+SC/Nl3gQC50i138q1ueonOris+hJDE6kdchEHOduqqicY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gRhhvab9; arc=none smtp.client-ip=209.85.219.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f169.google.com with SMTP id 3f1490d57ef6-e733a6ff491so3874580276.2
        for <devicetree@vger.kernel.org>; Mon, 19 May 2025 04:42:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1747654942; x=1748259742; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=xi4QP+tb++uj0FmPaNWal/Va1UBFazasXzcN4zOZKIQ=;
        b=gRhhvab9dfHz3HQ/gmOuWwP1oGHRa6gQfM8m/RBXe4D1IDBWgcr8DiNAFTUb0FB+4N
         h4XByRiKnof96q+O93WDFqoKBB1qMlMO1s2tfe2fIvEuydtdbWBXDDM/5qhHTzSV9816
         5JlMyj/0uRJqd62tg/FarSzgaVZrMQsaZnzd1Lp1GV2A///KqPs4AjbZtN6lHDmCDj20
         uokoStP58hB6g0REbHFj1Oo0wVr0AMsZYO6wBXbYSvUgzNHiwWJ7/kxBjTnS6AYP85ad
         FfU5RKpwS7dIIUZrteXjNxDQxelNSECINWQreT14wnkHbCp890gh68a/idAEyUhXvXry
         XRdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747654942; x=1748259742;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xi4QP+tb++uj0FmPaNWal/Va1UBFazasXzcN4zOZKIQ=;
        b=J+Jk16ALD7mfLq3h0uyhaag4yDwgO5Jr40wVqYmI8ye7NCuLILs6glLK+222KljjhP
         iO8yFIEZrNOTo4/ZL5iphnJVF65Y/1tzareGbMYava3M3RdRMyZIuwGS0x7EFYr0u9Mv
         C+7HgYh8Isf3dz3dkzIL+IUkjg7m06Karx+lxDbMvZytrtXWRpQckOXgDFaVSPvWpVbt
         zuGUvX7bTaVt3pAx3Yq88I7Y+mGE95oFpIbDaSKm21qBfD+RGAH/JbK3e49CMfOmuN0+
         Qh3quUiSUZiJeqxU0e0i45SmaEGn3+wLLkZNZaCSHfekQ6bYpjwooVASk5yDuYR6VbLP
         zIlg==
X-Forwarded-Encrypted: i=1; AJvYcCWHiyFWzedd/hwwWlH21kgFUDJDfD2C6g53Vi6JSJQROC+UrihS34f7d2qLqdNXmC3t164Y/+FpRYAq@vger.kernel.org
X-Gm-Message-State: AOJu0YzrJCiwxkBv2LDips9XmbO3Wj8ubYy/9iyszhifs3HIDzTV+ewe
	TwhM59gTy4HMiq7rgrsLxBH7ift2qgA5bbhPZo/a46+vhIj/qLzeazk/Fbc9uPc/cL48sS2Adpc
	zzpCWqOa+agJiNIOjhyHWh+3Z7cKdcVDgUl/jZVkKxw==
X-Gm-Gg: ASbGnct+04fqkjYYmkvF8kyjucAo3qNoLfQJtq/swS9clL3GAjYXb3dNRuVlEyfZ5pQ
	HUvTfeIYOFsGM2bwxCRTI9m4lzjpIzuNOb0zyS6Sz0HUJzzGQ+2QgQlkPb75qaUnm/ubHwp3AcI
	cX6Kg8iZo1UCbpwOz7rILxf1G7mAnCiJhu6A==
X-Google-Smtp-Source: AGHT+IFE9YTmql2J1EDYOQW1GURLdO1CuAEE1Qnz48P0JUcDipJN0t2wX+uqL9weWpYsYzTJL1jtg61xH036CqGhtyI=
X-Received: by 2002:a05:6902:10c3:b0:e78:f2a8:a69b with SMTP id
 3f1490d57ef6-e7b6d3dd2dfmr14389495276.17.1747654941775; Mon, 19 May 2025
 04:42:21 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250509-20-k1-sdhci-v3-0-526c35feaa20@gentoo.org>
 <20250509-20-k1-sdhci-v3-2-526c35feaa20@gentoo.org> <4cee9284-8f71-4214-8bc2-48bcb4030e40@intel.com>
 <20250512075631-GYA517379@gentoo> <CAPDyKFpgCMsaP=CZx210Ov=gTCkez-fwEPMwKTGHrzF51p5_TA@mail.gmail.com>
In-Reply-To: <CAPDyKFpgCMsaP=CZx210Ov=gTCkez-fwEPMwKTGHrzF51p5_TA@mail.gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 19 May 2025 13:41:46 +0200
X-Gm-Features: AX0GCFsB9fU8obeLDfkKRVtLEIl-4TRtUdQD79rwTQ1raKLz78xB0D2YGIo8yS4
Message-ID: <CAPDyKFrtH9AeHCiyJLv+F+tdVKJkhxcvcFj+wgqmAqN2CoC0jA@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] mmc: sdhci-of-k1: add support for SpacemiT K1 SoC
To: Yixun Lan <dlan@gentoo.org>
Cc: Adrian Hunter <adrian.hunter@intel.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Alex Elder <elder@riscstar.com>, Inochi Amaoto <inochiama@gmail.com>, linux-mmc@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-riscv@lists.infradead.org, 
	spacemit@lists.linux.dev, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 19 May 2025 at 13:38, Ulf Hansson <ulf.hansson@linaro.org> wrote:
>
> On Mon, 12 May 2025 at 09:56, Yixun Lan <dlan@gentoo.org> wrote:
> >
> > Hi Ulf,
> >
> > On 09:04 Mon 12 May     , Adrian Hunter wrote:
> > > On 09/05/2025 16:22, Yixun Lan wrote:
> > > > The SDHCI controller found in SpacemiT K1 SoC features SD,
> > > > SDIO, eMMC support, such as:
> > > >
> > > > - Compatible for 4-bit SDIO 3.0 UHS-I protocol, up to SDR104
> > > > - Compatible for 4-bit SD 3.0 UHS-I protocol, up to SDR104
> > > > - Compatible for 8bit eMMC5.1, up to HS400
> > > >
> > > > Signed-off-by: Yixun Lan <dlan@gentoo.org>
> > >
> > > Acked-by: Adrian Hunter <adrian.hunter@intel.com>
> > >
> >
> > If this isn't too late (as v6.15-rc6 is tagged), I'd like to seek
> > the opportunity to queue for v6.16 as no big changes during these
> > two review cycles..
> >
> > I also know people who would expect to have a full rootfs support,
> > and this driver is sufficient to bring eMMC up and will make their
> > life of development easy..
> >
> > But if you have different opinion, then I'm totally fine to delay
> > it to next merge window, thanks
>
> I have been busy the last week, apoligize for the delay.
>
> I just posted a few minor comments on an earlier version, I didn't see
> v3 sorry. Anyway, should be pretty easy to address those comments. If
> you manage to send another version within the next couple of days I
> can certainly pick this up for v6.16.

Ehh, nevermind. I don't want to hold this back. I have picked this up for next.

Please address my comments on v2 as patches on top instead.

Kind regards
Uffe

