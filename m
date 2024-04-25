Return-Path: <devicetree+bounces-62779-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 565498B26C1
	for <lists+devicetree@lfdr.de>; Thu, 25 Apr 2024 18:45:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C2D2E1F22F2C
	for <lists+devicetree@lfdr.de>; Thu, 25 Apr 2024 16:45:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C140A14D44F;
	Thu, 25 Apr 2024 16:45:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XthInoz8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f176.google.com (mail-yb1-f176.google.com [209.85.219.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7908014D439
	for <devicetree@vger.kernel.org>; Thu, 25 Apr 2024 16:45:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.176
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714063537; cv=none; b=sLIOjlPJy+02nZkHcuSg0D3sbGzwg/araXglVLggDMdoe1xZfB5spnKVZ8bFbKxhvSSAvRE1MJwKcZz7il4bMxp5vtsTAmPM4/Z7Som4xUZ8eCryBsblXADcDHrApbgmgHaJezTQVBvTbZzVzQS98YJUBq7imvlUdslqMiWIQO0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714063537; c=relaxed/simple;
	bh=Amc/VhCaPuRfNE4c/UsFD95U+kTr2gWqvp2bPp82p24=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=SH9d1ioITJyaENcySKcnObiBDfGsOO1U5Gszmw4Qkz2BREFyw4du5JlWmHPlEpHJET6CN8lZS7CP5Y2CaBhxZFmjupzEkWosyTmqLNDI76vuJBD8CqYhrjjL/pKksO19j8p/iNnmeNc6zS6c7u71v3hjrsZxOPqsX8sKCHnrw4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XthInoz8; arc=none smtp.client-ip=209.85.219.176
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f176.google.com with SMTP id 3f1490d57ef6-dc236729a2bso1238718276.0
        for <devicetree@vger.kernel.org>; Thu, 25 Apr 2024 09:45:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714063534; x=1714668334; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eWQqHUbAAiSySnIsemSx25Y73dqsXlz6lqamDtL75KQ=;
        b=XthInoz889q19LIYnd4dxHxjC10noyEEpacYxXANDNN8IDP5XeQXBOtc65TCU7iY9C
         ZFOdnN9B5DejP/TG0tddktvVu7n9LlH+yFRdVgQBLRcErJF6YaI0HGu5Hyb1hNuQ7Z2W
         zyZHNFFLmYZH+kKRw2NvM6mfnPh4HZF0CRgpoPKlyIc/96vPx/wKcxHdrhxkwVai5X57
         8XAmABXiGn+yK2oLWmsr1cWTlYVngSOKUkZll41jNiQRJFxtd2Nj6FZo5k/NA6Eo3sRa
         LII7x5cyW0/5XOb94tM3OWqlC156LUHRKoUZDUbXRQvkRkYacPFUL4l6hEefmDw4m41V
         eupQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714063534; x=1714668334;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eWQqHUbAAiSySnIsemSx25Y73dqsXlz6lqamDtL75KQ=;
        b=MN1bq1RQ1ekseaSPRasEG5qn2YoILVeLm+x/CmkeMe7+FSog9lihc0tUha6w4SPTsy
         ufeKfCe6s6/LvJvBPg1N8FpdwfSJh3afNzqnoHGX53Zt8FgXTwWvRSHh7F710m5qOlwX
         NVqJUu8SNUSaRg76t8/cwo4Dkrp3n3PdxJyV9fe/NZ+Zm77D52qjcMphBHMeVHAIcU8p
         lrR3R9C/Fw6w7JrMRiPPx10C6Zdbmlf+B5RRBcJ6zTfn1aNmoiAT3P+gI4NfbqFv3h2e
         J1T9ZVmXi1bYrvubcxly54WYNyUAE2lYyDGAMvMG2+SNFyFkYVXPyKMr8ICijhNqrdNA
         Epgw==
X-Forwarded-Encrypted: i=1; AJvYcCWvMmFC9kFbm4IYwkhUHJYd1nrMWv23aH0A8BzzfWZs0z28PrLY652t42w5Qzu72jYiHwkLi6XlsYRPMTng3xzRjJgTIsHJzm6t/w==
X-Gm-Message-State: AOJu0Yx7gu+Y3/2CIsUWT5SLvyrIv2m+HwZSLzZG7bzGNpmbz+Cv6mGh
	m3GDFULVEk+8g2bwoNYwewuMFBaaR2Kfj659YSYkHTq4cQwEBNRofuECzlsMSUQa6FV1P+0hGTm
	VbZLiep0bm1T/5slCnFV4zA6eIQrLPAaybS7lpwW1uY34hHTI
X-Google-Smtp-Source: AGHT+IE6E0yGMivLHEIzi4cVQrlqrcgIk/WXjie4Wzsi6F0u2PMmSvmweB2JnuzBk12npMsW/6HfizfFtt+TW3hNbCM=
X-Received: by 2002:a25:fc11:0:b0:de5:5706:b955 with SMTP id
 v17-20020a25fc11000000b00de55706b955mr243062ybd.4.1714063534487; Thu, 25 Apr
 2024 09:45:34 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20240422105355.1622177-1-claudiu.beznea.uj@bp.renesas.com> <CAMuHMdXHhsdOgTiDdqMwAMvb-m_VBqOcTRPURx_upc2AtmBTfA@mail.gmail.com>
In-Reply-To: <CAMuHMdXHhsdOgTiDdqMwAMvb-m_VBqOcTRPURx_upc2AtmBTfA@mail.gmail.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 25 Apr 2024 18:44:58 +0200
Message-ID: <CAPDyKFrhPjuOR5iC+zy+SCJv5yoWU0fX8FfDbt9nrM6VRCjmNw@mail.gmail.com>
Subject: Re: [PATCH v4 0/8] clk: renesas: rzg2l: Add support for power domains
To: Geert Uytterhoeven <geert@linux-m68k.org>, Claudiu <claudiu.beznea@tuxon.dev>
Cc: mturquette@baylibre.com, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, magnus.damm@gmail.com, linux-renesas-soc@vger.kernel.org, 
	linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org, 
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, 24 Apr 2024 at 16:34, Geert Uytterhoeven <geert@linux-m68k.org> wro=
te:
>
> Hi Ulf,
>
> On Mon, Apr 22, 2024 at 12:54=E2=80=AFPM Claudiu <claudiu.beznea@tuxon.de=
v> wrote:
> > From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
> >
> > Series adds support for power domains on rzg2l driver.
> >
> > RZ/G2L kind of devices support a functionality called MSTOP (module
> > stop/standby). According to hardware manual the module could be switch
> > to standby after its clocks are disabled. The reverse order of operatio=
n
> > should be done when enabling a module (get the module out of standby,
> > enable its clocks etc).
> >
> > In [1] the MSTOP settings were implemented by adding code in driver
> > to attach the MSTOP state to the IP clocks. But it has been proposed
> > to implement it as power domain. The result is this series.
> >
> > The DT bindings were updated with power domain IDs (plain integers
> > that matches the DT with driver data structures). The current DT
> > bindings were updated with module IDs for the modules listed in tables
> > with name "Registers for Module Standby Mode" (see HW manual) exception
> > being RZ/G3S where, due to the power down functionality, the DDR,
> > TZCDDR, OTFDE_DDR were also added.
> >
> > Domain IDs were added to all SoC specific bindings.
> >
> > Thank you,
> > Claudiu Beznea
> >
> > Changes in v4:
> > - dropped the pwrdn functionality until it is better understanded
> > - dropped patch "clk: renesas: rzg2l-cpg: Add suspend/resume
> >   support for power domains" from v3; this will be replaced
> >   by propertly calling device_set_wakup_path() in serial console
> >   driver
> > - instantiated the watchdog domain in r8a08g045 clock driver; this
> >   allow applying r9a08g045 clock patch w/o affecting watchdog and later=
,
> >   after all good with watchdog patches series at [2], only patch
> >   "arm64: dts: renesas: r9a08g045: Update #power-domain-cells =3D <1>"
> >   will need to be applied
>
> Are you happy with this series?  I would like to queue patches 1-7 in
> renesas-clk for v6.10 (i.e. this week).

Yes, the series looks good to me! For the series, feel free to add:

Reviewed-by: Ulf Hansson <ulf.hansson@linaro.org>

Kind regards
Uffe

