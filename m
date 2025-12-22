Return-Path: <devicetree+bounces-248899-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 05E7ECD6764
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 16:01:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1CF34309CF51
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 14:57:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F305132F759;
	Mon, 22 Dec 2025 14:47:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DAB/Amyf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE7D332ED50
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 14:47:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766414863; cv=none; b=tO+EGYjxY6HeCj8hRJmLlwytO3LeZfh4O9lu75f30GTQON6JoE6pO5txMnD5s6Kvve+/HQMWwlCycseLJqbxXtxV6TuKynIh/kbirgf2JGXhoxc7jOE9usCtb4FzQzPv4qpIRt3s1GMN1SwbHKdXPninabKbZ+IfauAjAdnBf44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766414863; c=relaxed/simple;
	bh=IwLjLCoIOYSxZJTADglHFhXYcy2He7W4GE2tlYf0bXA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ZPxUu1iX5fmoI//DDD3f/9POuvg+o+1ycU6KTvOx2a4lk3wDLARK8oKUm7W/7yYKskFLVTwCihb+tsAeqhz5WfhjIXNT2UlT/vDIDWSX85BwuwJbaN4f7aJ5fnJazRBMTfrb0L0tSUv0fRjDljEGejy651TzDSTymlyR78zhpgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DAB/Amyf; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-59a10ef758aso3299062e87.2
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 06:47:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1766414860; x=1767019660; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=lNpWj6TBvVji/fHBEAyDcOFnMWFot5zrE/hRwsxnXVY=;
        b=DAB/Amyf1kdMghWpvNsR5yNnMf+GdDvgb0bA4+59mA0CrIcjf0meQgWipWa4qgI0+u
         QzmXsaKh4CDGdPAVFemA6mB0PY7nYeYTfFKf08TKNBK7/79eZ+/5axG1Oj+c5gAmAFfg
         T6+CWEWvYf5iQFoFrZGr06kU0xwOi/gsXNB3kQcCCxDDaqnVlheA/H95h4OGQdIrQD1T
         DuSAeDBryQG0Va3VNcLhpD2f+qW6b93O1bCz7Ls5M2R8ZzuC60dez2dFPM0QaMrYu6X1
         4TJcc1dZY6C1qQanrLgSyh2HkvSgJUb+rXBU+gv3hnl/FjGW4kxTqLG3nbaKx9Smpezy
         zmVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766414860; x=1767019660;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lNpWj6TBvVji/fHBEAyDcOFnMWFot5zrE/hRwsxnXVY=;
        b=PEFl+ny+JomIK1Fa4NRNK7E/9O5VDiK4IQtDJxxgajdj9EPiTK/XU9h7Ducif5k/OQ
         x2Lcg9VWQxXYLqrwEuIlrbz6Wu/6atlUEgRQmoksvqrRna8Ni5xXkvFqAPD6vgk/J8BK
         k+9qA4ap0s9F4wCqDUHiBeAl30GmrntbjQQ8fihyeHvMJeat5535MaDxjp0WScE3NNp4
         eS1laoBpZQ7/lJXWOlYMFREeY46wIRfHflFxNb1jfmxqHKuyk11wCV5ExODd+SXD2cvN
         wAt0UBo/dR3gjfZ0vR3cGjUBw2YaDTxF54O2I0IKcYHAJbhut0Urhr6OgycJlPYYx7X3
         aJeA==
X-Forwarded-Encrypted: i=1; AJvYcCXPlBCDhLgmOmaxJFuDeCpz98SutS2TN8ll2KUuVkBoaWRQUTjs1Fy71YMYhWaSGw2rG55pLYxz20oF@vger.kernel.org
X-Gm-Message-State: AOJu0Yzzp/DEzjuQHqvgjuo4LJ9u2vAupvJbRixqJKGJtT593Mibz25M
	mL4DeC/OQBM4ByrisPHODv1xX6jsolVu23SwxbE8Tr4XRR9qyQfajJjUIUvw9XSup7359VpTk/D
	im1Du0tlB+zmDqAZAW4u7JMsvjXGQHjU3wg7HUpWDsQ==
X-Gm-Gg: AY/fxX5DlGBWTDmvT771Om0rmZmbaghZyw8F0oanvqo0RrQyg/E+5c1NsJbe0RFDvLf
	d0ijC+4Gtzh91FnDoAihk+9+F05FdaGHu/LRRXLf8uLAMtpUt5uSwEMK79WG7fhawaR/HIO8WUe
	RjS3y8H/ReDiTcujMezGUawKtKWAGemXNuBojjEHeHLDyjbeOGtCBInjCQb4r2rkbvCB/UDD2+Y
	iXBni8wYznf2tKMvAW+e6rpWV+7fyMI5xxOKNcumLk3/dQMqmZaOt602y/4n1kfElOc4+Kx
X-Google-Smtp-Source: AGHT+IEmZoekCpdFdxCX6++mG8wezcWmjXxPG5ogJ3p4YsZ2il+JIIqimrrt74JmCImmja/XHDzRdip0knGEk5MWYgo=
X-Received: by 2002:a05:6512:e9c:b0:598:faba:c8fa with SMTP id
 2adb3069b0e04-59a17d006e1mr4286628e87.10.1766414859977; Mon, 22 Dec 2025
 06:47:39 -0800 (PST)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251210-rz-sdio-mux-v3-0-ca628db56d60@solid-run.com>
 <20251210-rz-sdio-mux-v3-2-ca628db56d60@solid-run.com> <CAPDyKFoYd3WKGrjD3DEzZH8EfgZPmRkrqL=rdoKNuAADrvz3Eg@mail.gmail.com>
 <20f2128c-c6cb-4b13-aa08-b93e540f5bd9@solid-run.com>
In-Reply-To: <20f2128c-c6cb-4b13-aa08-b93e540f5bd9@solid-run.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Mon, 22 Dec 2025 15:47:03 +0100
X-Gm-Features: AQt7F2pGUIPrw4OqWueh78ppZDBGwQc_mhY3RygUrq6e1L74fXopGZ4K0V_QvZo
Message-ID: <CAPDyKFo2jsV02qSDBSZTewJjV09AMO8iETU5Uxqz+GBnd0JY6g@mail.gmail.com>
Subject: Re: [PATCH v3 2/6] mux: Add helper functions for getting optional and
 selected mux-state
To: Josua Mayer <josua@solid-run.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Geert Uytterhoeven <geert+renesas@glider.be>, 
	Magnus Damm <magnus.damm@gmail.com>, Wolfram Sang <wsa+renesas@sang-engineering.com>, 
	Marc Kleine-Budde <mkl@pengutronix.de>, Vincent Mailhol <mailhol@kernel.org>, Vinod Koul <vkoul@kernel.org>, 
	Kishon Vijay Abraham I <kishon@kernel.org>, Peter Rosin <peda@axentia.se>, 
	Aaro Koskinen <aaro.koskinen@iki.fi>, Andreas Kemnade <andreas@kemnade.info>, 
	Kevin Hilman <khilman@baylibre.com>, Roger Quadros <rogerq@kernel.org>, 
	Tony Lindgren <tony@atomide.com>, Vignesh R <vigneshr@ti.com>, 
	Janusz Krzysztofik <jmkrzyszt@gmail.com>, Andi Shyti <andi.shyti@kernel.org>, 
	Mikhail Anikin <mikhail.anikin@solid-run.com>, Yazan Shhady <yazan.shhady@solid-run.com>, 
	Jon Nettleton <jon@solid-run.com>, "linux-mmc@vger.kernel.org" <linux-mmc@vger.kernel.org>, 
	"devicetree@vger.kernel.org" <devicetree@vger.kernel.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, 
	"linux-renesas-soc@vger.kernel.org" <linux-renesas-soc@vger.kernel.org>, 
	"linux-can@vger.kernel.org" <linux-can@vger.kernel.org>, 
	"linux-phy@lists.infradead.org" <linux-phy@lists.infradead.org>, 
	"linux-omap@vger.kernel.org" <linux-omap@vger.kernel.org>, 
	"linux-i2c@vger.kernel.org" <linux-i2c@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"

On Sun, 21 Dec 2025 at 11:38, Josua Mayer <josua@solid-run.com> wrote:
>
> Hi Ulf,
>
> Am 17.12.25 um 14:38 schrieb Ulf Hansson:
> > On Wed, 10 Dec 2025 at 18:39, Josua Mayer <josua@solid-run.com> wrote:
>
> cut
>
> >>  /*
> >>   * Using subsys_initcall instead of module_init here to try to ensure - for
> >>   * the non-modular case - that the subsystem is initialized when mux consumers
> >> diff --git a/include/linux/mux/consumer.h b/include/linux/mux/consumer.h
> >> index 2e25c838f8312..a5da2e33a45c0 100644
> >> --- a/include/linux/mux/consumer.h
> >> +++ b/include/linux/mux/consumer.h
> >> @@ -60,5 +60,9 @@ struct mux_control *devm_mux_control_get(struct device *dev,
> >>                                          const char *mux_name);
> >>  struct mux_state *devm_mux_state_get(struct device *dev,
> >>                                      const char *mux_name);
> >> +struct mux_state *devm_mux_state_get_optional(struct device *dev,
> >> +                                             const char *mux_name);
> >> +struct mux_state *devm_mux_state_get_optional_selected(struct device *dev,
> >> +                                                      const char *mux_name);
> > Seems like we need stub-functions of these too. Otherwise
> > subsystems/drivers need to have a "depends on MULTIPLEXER" in their
> > Kconfigs.
>
> Currently the drivers that can use a mux select MULTIPLEXER in Kconfig.

Yes, but that's not generally how we do this. The driver may not need
MULTIPLEXER for all platforms that driver is being used on.

>
> There already exist a few mux helpers both for mux-state and for mux-control,
> and they might all need stubs.

Correct. I think we should add subs for all of them.

>
> I'd prefer the restructuring of kconfig dependencies being independent from
> adding mux-state functionality to renesas sdhi driver.

I understand your point, but adding the stubs isn't really a big thing
- unless someone has some good arguments not to!?

Moreover, since the series changes the mux-core anyways - and
subsequent changes depend on it, I don't see an issue to fold in yet
another patch to add the stubs.

Kind regards
Uffe

