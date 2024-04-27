Return-Path: <devicetree+bounces-63314-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 592D58B45CD
	for <lists+devicetree@lfdr.de>; Sat, 27 Apr 2024 13:16:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C4A9E1F20F9E
	for <lists+devicetree@lfdr.de>; Sat, 27 Apr 2024 11:16:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 596A548CFC;
	Sat, 27 Apr 2024 11:16:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="XzVtDjXg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 352E7482E1
	for <devicetree@vger.kernel.org>; Sat, 27 Apr 2024 11:16:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714216599; cv=none; b=HwLxX1jsXk4zZtohLi/KMM/5EX3YIMgbKPt9U0a4RgbdCBTdjq1l/BwHDYCPWTwI57HFCH6RMiZU4VB0+S+6Pn6Eu1uvq/1p94oDA0AUR9VYaCnYX0VaSXcU7ut2GhCvxGJRPV8eOwCedUXEXqrHIRUJ7DEe+tjxhWPket33myo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714216599; c=relaxed/simple;
	bh=6+JyWGlWuL3neFwfndVAm41mP9TCdZhO4TKU+cop+kc=;
	h=From:Date:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oUnXwrMRCb8+egPWdqToPN09Pae5oHvd9meNxspcCaoKusLfIx7zYZSMk9IhkCegPwY/8Q/c9W11/+JoYr0fHyAZwAoqxFurU8ECOskK+vMtJ2mhpCMDm7pBPkHXtgCo28FrfPFt7rZHJBn3k9GFXJNi7xrYCVOp1/IypyWOB5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=XzVtDjXg; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-5726ccca4c8so485866a12.3
        for <devicetree@vger.kernel.org>; Sat, 27 Apr 2024 04:16:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1714216595; x=1714821395; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=cWZ79BmqrOM43+BCD+VAgtUw9w+BzvSsy0l3aYOkwOM=;
        b=XzVtDjXgC+dnW9W3hYw2fbdXVOfEpk18lgRg/dQrGiFHIm8In/fHOTGEirxUAweF/4
         7tnm+bYHjXAnW7kpB9Fgr1ZKXj3r+6wD7iy6ewaNWNQL/gvr8HC032fJ1QY1F/I3IAFM
         hCJ7GWFhwn7qC8AGp7yJNEstypGzK0m1WugC/tKJksisAfBo9vAaR8nK/kG121DejWha
         yN6a/SgXV4nUgBnq8YwtfypD/0K8bYRa0bMhkjqDzow21QhOf2gnyUKe9y3v+G+zCv/K
         J05cErm/NcWlkCplR2vFSwjKaSeKJ5T1CNQRdzPXEBk0Hq8NZQ2hPX9q3Hgu5hYw3xol
         Ofeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714216595; x=1714821395;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:mail-followup-to:message-id:subject:cc:to
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cWZ79BmqrOM43+BCD+VAgtUw9w+BzvSsy0l3aYOkwOM=;
        b=rJugOQa/hvpMzJL3qngfHtfd4ZivNnLQKzWAHbaXTcpWDAE5CwWf7Z4px9Dw3pmWHN
         Bf8W48SbUSSJVVUXElsKQfqJlZLjwEsh1cuNUChHxylT3E2TKCu4Z0SoBNtj8b5vSIRp
         kuwwA5Y4qLbDOIHtJANbRy8ez+JizWEh3LaRSWMxNc8gs5dIAkGpup7VsTzF39fYcq2Q
         bVnErfUIEJgxhvcaEqfnTNdfB3ppkINk0rZ9KbX5YEnsGn2nTKEdpreSAMewD/20GOmj
         ItdLHTQC+u/XHcrDbPkuQt3FPdB6H4MP8FeXlTjBeuABAikgi9IXVnIJgAx1QKYhnCmW
         lL7Q==
X-Forwarded-Encrypted: i=1; AJvYcCUfyB/YIgtIyUEGvdSNCTvnH1+WSSvYPRnnPHjIWmXcIHh2Pj/tYxeNSWXWu16/vMkgrkdTlWSPnx5Cc4K66U9ulfirxsebjw/jvw==
X-Gm-Message-State: AOJu0YyHZyUMMDhUCH+K39Wy7pTfDOlBHKKUDxadE56yEVMnlZJcvB5m
	COK5l61clEODtG7fQJQCN2qiS3Qv5ZnFrI3j3VBBtxxnNvA0aTeQdSLzzYIs24U=
X-Google-Smtp-Source: AGHT+IHrGtv7xT9rFyE4L8LkvUgTtsWBslnRasfuA9d5IggWzQk3+JPxHG/Eoxi5ndjr+pKGaak2Wg==
X-Received: by 2002:a50:9e87:0:b0:570:1ea6:e9d8 with SMTP id a7-20020a509e87000000b005701ea6e9d8mr3714303edf.9.1714216595365;
        Sat, 27 Apr 2024 04:16:35 -0700 (PDT)
Received: from localhost (host-87-1-234-99.retail.telecomitalia.it. [87.1.234.99])
        by smtp.gmail.com with ESMTPSA id cf8-20020a0564020b8800b0056c24df7a78sm11060511edb.5.2024.04.27.04.16.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Apr 2024 04:16:35 -0700 (PDT)
From: Andrea della Porta <andrea.porta@suse.com>
X-Google-Original-From: Andrea della Porta <aporta@suse.de>
Date: Sat, 27 Apr 2024 13:16:36 +0200
To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>
Cc: Andrea della Porta <andrea.porta@suse.com>, adrian.hunter@intel.com,
	alcooperx@gmail.com, bcm-kernel-feedback-list@broadcom.com,
	conor+dt@kernel.org, devicetree@vger.kernel.org,
	florian.fainelli@broadcom.com, jonathan@raspberrypi.com,
	kamal.dasu@broadcom.com, krzysztof.kozlowski+dt@linaro.org,
	linus.walleij@linaro.org, linux-arm-kernel@lists.infradead.org,
	linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-mmc@vger.kernel.org, phil@raspberrypi.com, robh@kernel.org,
	ulf.hansson@linaro.org
Subject: Re: [PATCH 6/6] mmc: sdhci-brcmstb: Add BCM2712 SD Express support
Message-ID: <ZizelID_-Hxdxp_N@apocalypse>
Mail-Followup-To: Christophe JAILLET <christophe.jaillet@wanadoo.fr>,
	Andrea della Porta <andrea.porta@suse.com>, adrian.hunter@intel.com,
	alcooperx@gmail.com, bcm-kernel-feedback-list@broadcom.com,
	conor+dt@kernel.org, devicetree@vger.kernel.org,
	florian.fainelli@broadcom.com, jonathan@raspberrypi.com,
	kamal.dasu@broadcom.com, krzysztof.kozlowski+dt@linaro.org,
	linus.walleij@linaro.org, linux-arm-kernel@lists.infradead.org,
	linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-mmc@vger.kernel.org, phil@raspberrypi.com, robh@kernel.org,
	ulf.hansson@linaro.org
References: <cover.1713036964.git.andrea.porta@suse.com>
 <a3d82e5a28fe53f1f61621d37d1695b0cd7655d2.1713036964.git.andrea.porta@suse.com>
 <57f240af-7e99-4bc1-a2c5-415441aa5f0b@wanadoo.fr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <57f240af-7e99-4bc1-a2c5-415441aa5f0b@wanadoo.fr>

On 09:34 Sun 14 Apr     , Christophe JAILLET wrote:
> Le 14/04/2024 à 00:14, Andrea della Porta a écrit :
> > Broadcom BCM2712 SDHCI controller is SD Express capable. Add support
> > for sde capability where the implementation is based on downstream driver,
> > diverging from it in the way that init_sd_express callback is invoked:
> > in downstream the sdhci_ops structure has been augmented with a new
> > function ptr 'init_sd_express' that just propagate the call to the
> > driver specific callback so that the callstack from a structure
> > standpoint is mmc_host_ops -> sdhci_ops. The drawback here is in the
> > added level of indirection (the newly added init_sd_express is
> > redundant) and the sdhci_ops structure declaration has to be changed.
> > To overcome this the presented approach consist in patching the mmc_host_ops
> > init_sd_express callback to point directly to the custom function defined in
> > this driver (see struct brcmstb_match_priv).
> > 
> > Signed-off-by: Andrea della Porta <andrea.porta-IBi9RG/b67k@public.gmane.org>
> > ---
> >   drivers/mmc/host/Kconfig         |   1 +
> >   drivers/mmc/host/sdhci-brcmstb.c | 147 ++++++++++++++++++++++++++++++-
> >   2 files changed, 147 insertions(+), 1 deletion(-)
> 
> ...
> 
> > +	if (brcmstb_priv->sde_pcie) {
> > +		struct of_changeset changeset;
> > +		static struct property okay_property = {
> > +			.name = "status",
> > +			.value = "okay",
> > +			.length = 5,
> > +		};
> > +
> > +		/* Enable the pcie controller */
> > +		of_changeset_init(&changeset);
> > +		ret = of_changeset_update_property(&changeset,
> > +						   brcmstb_priv->sde_pcie,
> > +						   &okay_property);
> > +		if (ret) {
> > +			dev_err(dev, "%s: failed to update property - %d\n", __func__,
> > +			       ret);
> > +			return -ENODEV;
> > +		}
> > +		ret = of_changeset_apply(&changeset);
> > +	}
> > +
> > +	dev_dbg(dev, "%s -> %d\n", __func__, ret);
> 
> Is this really useful?

Not really. Removed.

> 
> > +	return ret;
> > +}
> > +
> 
> ...
> 
> > @@ -468,6 +581,24 @@ static int sdhci_brcmstb_probe(struct platform_device *pdev)
> >   	if (res)
> >   		goto err;
> > +	priv->sde_1v8 = devm_regulator_get_optional(&pdev->dev, "sde-1v8");
> > +	if (IS_ERR(priv->sde_1v8))
> > +		priv->flags &= ~BRCMSTB_PRIV_FLAGS_HAS_SD_EXPRESS;
> > +
> > +	iomem = platform_get_resource(pdev, IORESOURCE_MEM, 2);
> > +	if (iomem) {
> > +		priv->sde_ioaddr = devm_ioremap_resource(&pdev->dev, iomem);
> > +		if (IS_ERR(priv->sde_ioaddr))
> > +			priv->sde_ioaddr = NULL;
> > +	}
> > +
> > +	iomem = platform_get_resource(pdev, IORESOURCE_MEM, 3);
> > +	if (iomem) {
> > +		priv->sde_ioaddr2 = devm_ioremap_resource(&pdev->dev, iomem);
> > +		if (IS_ERR(priv->sde_ioaddr2))
> > +			priv->sde_ioaddr = NULL;
> 
> sde_ioaddr2 ?
> 
> > +	}
> > +
> >   	priv->pinctrl = devm_pinctrl_get(&pdev->dev);
> >   	if (IS_ERR(priv->pinctrl)) {
> >   			no_pinctrl = true;
> > @@ -478,8 +609,16 @@ static int sdhci_brcmstb_probe(struct platform_device *pdev)
> >   			no_pinctrl = true;
> >   	}
> > -	if (no_pinctrl )
> > +	priv->pins_sdex = pinctrl_lookup_state(priv->pinctrl, "sd-express");
> > +	if (IS_ERR(priv->pins_sdex)) {
> > +			dev_dbg(&pdev->dev, "No pinctrl sd-express state\n");
> > +			no_pinctrl = true;
> 
> Indentation looks too large.

Ack.

> 
> > +	}
> > +
> > +	if (no_pinctrl || !priv->sde_ioaddr || !priv->sde_ioaddr2) {
> >   		priv->pinctrl = NULL;
> > +		priv->flags &= ~BRCMSTB_PRIV_FLAGS_HAS_SD_EXPRESS;
> > +	}
> >   	/*
> >   	 * Automatic clock gating does not work for SD cards that may
> 
> ...
> 

In general I'll drop SD express patch for now, it will be re-introduced in a future patch.

Best regards,
Andrea

