Return-Path: <devicetree+bounces-156558-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B3BEA5C6CD
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 16:28:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2E6EA3B0C99
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 15:23:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E9E3125E473;
	Tue, 11 Mar 2025 15:22:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Y5zCKpAA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f177.google.com (mail-yw1-f177.google.com [209.85.128.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26CC31E9B06
	for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 15:22:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.177
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741706557; cv=none; b=EPEgSmh+gxcOEYX3RbdfNVLzU6BYw+hDaJy4pLkNrol7tB66LdpzEae6OBecHXwZ84vAG2hvKGlGhJbYSu3pwTmVphyxVHXFP8Rb3EA3aHP7m+YBnhuqdcqSdh/locwMJ5/QuXaSMqZbsN4Oj7obQg55EIuCIVvUryg+jPoyz/U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741706557; c=relaxed/simple;
	bh=UxtYwYns0MvhCa2m5ObZdAnlsKQGOnGlpHac9oEyev4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=sFwrwKWBPl8QBGxSHN59B0Oi647ZNJkH2EpRSk14FDtyeXpT6pSPeUDltLai1VHFd56BZGJCpGxfZw3V8UsV8J/csVChAsUt3gZOoiSxHuVfTP6VHLdPGSq9u976wIgsWJNuGXCL0yeKbkLBDPV4DPxI/7ZvOM+89goFDELiAOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Y5zCKpAA; arc=none smtp.client-ip=209.85.128.177
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yw1-f177.google.com with SMTP id 00721157ae682-6feb0742878so52536067b3.2
        for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 08:22:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741706555; x=1742311355; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=HdiaqU+kYXkNBNnpqC5PVQou0G4lEwUYRv6GT9pOGpI=;
        b=Y5zCKpAAqvWWdwWu3jfhumpmdT2BGNTxA4Pm54r6smnlF0Eyvj6uRToq4TXKY/r6nL
         sO7XcgyWOp/djAQjvurj2fhezVxcxIKfOts9SzpvpF6KTyUm2A8pIAhPV8qHUTp/4XA/
         wpF3+pLFVig7ddquS7HSTFK2hKxfm2wIXK7B6N7T3xTLPnbRiQXTiMvgkSbi9wEAGuTz
         BxOdl1y+89pkyoaGAo6ZdpcKaj8H9f9SStR1Tf6AykwsEq3iJxbGsjoOwdnoVuV2cOAL
         xt9wU1gg4Gs7AULsLI/dePUBD6xlLWsD8QpGjSu/+nXInCInULD0DeXg7uEBTBECL1np
         qckw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741706555; x=1742311355;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HdiaqU+kYXkNBNnpqC5PVQou0G4lEwUYRv6GT9pOGpI=;
        b=mFbvOtfC8OLExqY49IFiLb6/XuF/u0HtrC5D3SLSeCeMKdv+vS2DSiBCcZAq2rz0bW
         daYVZeV532uYtEv0XJTuMjTHV1wBgLE8BlrrwtOiIeJ0Wlu4JSVsxpJu3nLohGQjm0rj
         7TSOzYa4OfrhKwYeuEzRnxwt8XbQfi6cvPaZ+yvgVY4HwR0acQyfebIkFOdfKlS+APIL
         hjFGHRx95QMmqaO6OHVkiBXXTIC68wzE341gKU91Rjv8dcvB/wlGCaAJAJm0Ap952Fpc
         vfHOHf3HtLslGMtoFd7FS3I4Cd9Ambg0mh2SCQCsSX4z7acyw18Mhl7/BGfzO2py6jMn
         brOw==
X-Forwarded-Encrypted: i=1; AJvYcCUvFume9I/xaMoStb/eZkQt9gEiwJc9cltC32s+juzQQ+x0cD5kuRR287bbBh9I5vW1stOTMG/RF25M@vger.kernel.org
X-Gm-Message-State: AOJu0Yxe2ca7hMMcNEmBjMCB6BevY750/CtCjXAbLCh55hGC2C684dWX
	3gdzPx1+TYQ/61w7BFCxV90j5FElfXHGHLMYiIPtpLKNsm+sysjcOYLyHr9oxhH2NxPP8EHdsWV
	c70hs8Zy2YI/znxqhEtDKyofG/myV2KSDKA6JhA==
X-Gm-Gg: ASbGncsd7Z5GO7INuoysC6lfIaM1HGCkCrNEP1W179ZIow8SkaML1YzYcya+nUaKIAC
	BxBWDoIY6SNmzzi98ehW40SiPdZSL3ZmZheqeaq5G3pHfy/Rzt4CP89apCWLdcICCWYpXOY0Xqd
	U2U7P7W6fCvXm8L7JJk4sfnEBpYWI=
X-Google-Smtp-Source: AGHT+IGAy6+55/xUbWPLWAhWa/JJEH75eRRXo5nC8iwxe2xNn2XBzu/ByvzI/h9Bw5amhUiPp08ireVcbtB30aKD1pc=
X-Received: by 2002:a05:690c:688f:b0:6f9:88b7:b6b7 with SMTP id
 00721157ae682-6febf3e990dmr252844457b3.37.1741706554935; Tue, 11 Mar 2025
 08:22:34 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CGME20250310090220eucas1p1d5cf6a56935e21b5854f77fdc22236b1@eucas1p1.samsung.com>
 <20250310090211.286549-1-m.wilczynski@samsung.com> <20250310090211.286549-5-m.wilczynski@samsung.com>
In-Reply-To: <20250310090211.286549-5-m.wilczynski@samsung.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Tue, 11 Mar 2025 16:21:59 +0100
X-Gm-Features: AQ5f1JoXRXq5ucc-B5U0o3JR0rVlad9-RVtJACjXjl-xVuXRu_bgY0MVKH5Qe8E
Message-ID: <CAPDyKFpAxkVgscMQpe2MZFCmNyaFq9YqiPQknLDf3CJ9zMdZ6g@mail.gmail.com>
Subject: Re: [PATCH v7 4/5] pmdomain: thead: Add power-domain driver for TH1520
To: Michal Wilczynski <m.wilczynski@samsung.com>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, drew@pdp7.com, 
	guoren@kernel.org, wefu@redhat.com, paul.walmsley@sifive.com, 
	palmer@dabbelt.com, aou@eecs.berkeley.edu, alex@ghiti.fr, jszhang@kernel.org, 
	m.szyprowski@samsung.com, linux-pm@vger.kernel.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"

On Mon, 10 Mar 2025 at 10:02, Michal Wilczynski
<m.wilczynski@samsung.com> wrote:
>
> The T-Head TH1520 SoC contains multiple power islands that can be
> programmatically turned on and off using the AON (Always-On) protocol
> and a hardware mailbox [1]. The relevant mailbox driver has already been
> merged into the mainline kernel in commit 5d4d263e1c6b ("mailbox:
> Introduce support for T-head TH1520 Mailbox driver");
>
> Introduce a power-domain driver for the TH1520 SoC, which is using AON
> firmware protocol to communicate with E902 core through the hardware
> mailbox. This way it can send power on/off commands to the E902 core.
>
> The interaction with AUDIO power island e.g trying to turn it OFF proved
> to crash the firmware running on the E902 core. Introduce the workaround
> to disable interacting with the power island.
>
> Link: https://openbeagle.org/beaglev-ahead/beaglev-ahead/-/blob/main/docs/TH1520%20System%20User%20Manual.pdf [1]
>
> Signed-off-by: Michal Wilczynski <m.wilczynski@samsung.com>
> ---

[...]

> +
> +static int th1520_pd_probe(struct platform_device *pdev)
> +{
> +       struct generic_pm_domain **domains;
> +       struct genpd_onecell_data *pd_data;
> +       struct th1520_aon_chan *aon_chan;
> +       struct device *dev = &pdev->dev;
> +       int i;
> +
> +       aon_chan = th1520_aon_init(dev);
> +       if (IS_ERR(aon_chan))
> +               return dev_err_probe(dev, PTR_ERR(aon_chan),
> +                                    "Failed to get AON channel\n");
> +
> +       platform_set_drvdata(pdev, aon_chan);
> +
> +       domains = devm_kcalloc(dev, ARRAY_SIZE(th1520_pd_ranges),
> +                              sizeof(*domains), GFP_KERNEL);
> +       if (!domains)
> +               return -ENOMEM;
> +
> +       pd_data = devm_kzalloc(dev, sizeof(*pd_data), GFP_KERNEL);
> +       if (!pd_data)
> +               return -ENOMEM;
> +
> +       for (i = 0; i < ARRAY_SIZE(th1520_pd_ranges); i++) {
> +               struct th1520_power_domain *pd;
> +
> +               if (th1520_pd_ranges[i].disabled)
> +                       continue;
> +
> +               pd = th1520_add_pm_domain(dev, &th1520_pd_ranges[i]);
> +               if (IS_ERR(pd))
> +                       return PTR_ERR(pd);
> +
> +               pd->aon_chan = aon_chan;
> +               domains[i] = &pd->genpd;
> +               dev_dbg(dev, "added power domain %s\n", pd->genpd.name);
> +       }
> +
> +       pd_data->domains = domains;
> +       pd_data->num_domains = ARRAY_SIZE(th1520_pd_ranges);
> +       pd_data->xlate = th1520_pd_xlate;
> +
> +       /*
> +        * Initialize all power domains to off to ensure they start in a
> +        * low-power state. This allows device drivers to manage power
> +        * domains by turning them on or off as needed.
> +        */
> +       th1520_pd_init_all_off(domains, dev);
> +
> +       return of_genpd_add_provider_onecell(dev->of_node, pd_data);

If this fails, we should clean-up properly, not just returning an error code.

> +}
> +
> +static void th1520_pd_remove(struct platform_device *pdev)
> +{
> +       struct th1520_aon_chan *aon_chan = platform_get_drvdata(pdev);
> +
> +       th1520_aon_deinit(aon_chan);

The genpd providers need to be cleaned-up here too.

Or, as I said before, if you think doing a proper clean-up is going to
be a problem (in most cases it is), we can also make this a
builtin_platform_driver() with "suppress_bind_attrs = true".

> +}
> +
> +static const struct of_device_id th1520_pd_match[] = {
> +       { .compatible = "thead,th1520-aon" },
> +       { /* Sentinel */ }
> +};
> +MODULE_DEVICE_TABLE(of, th1520_pd_match);
> +
> +static struct platform_driver th1520_pd_driver = {
> +       .driver = {
> +               .name = "th1520-pd",
> +               .of_match_table = th1520_pd_match,
> +       },
> +       .probe = th1520_pd_probe,
> +       .remove = th1520_pd_remove,
> +};
> +module_platform_driver(th1520_pd_driver);
> +
> +MODULE_AUTHOR("Michal Wilczynski <m.wilczynski@samsung.com>");
> +MODULE_DESCRIPTION("T-HEAD TH1520 SoC power domain controller");
> +MODULE_LICENSE("GPL");
> --
> 2.34.1
>

Kind regards
Uffe

