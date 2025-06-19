Return-Path: <devicetree+bounces-187500-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C231BAE0294
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 12:25:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2B0D21BC1C11
	for <lists+devicetree@lfdr.de>; Thu, 19 Jun 2025 10:25:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A9BF222584;
	Thu, 19 Jun 2025 10:25:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="zWMhsiJy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com [209.85.219.179])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9469F221F05
	for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 10:25:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.179
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750328726; cv=none; b=fMUptOweeEhOkygjHauDc1va3thym+GT7yq3CflosG9grhfwQxas++zs/qdZO3724ZcFzlG1N4SMTlbsj+89qhNEnsg2bs5YtXXSkzJVMqxW0y55MQInN6nIB26+s3LUZm18UVa8NeIhsnbdLo3fEzIN4Qvi93PEqK4HnfAt4rI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750328726; c=relaxed/simple;
	bh=DkKRPt2S9JILvfKxP9uxHp6g7VV72WM/XlW0GeOUMm4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=FSRNgcirWtAkvPgGb6HZayqUf4JaIN1sQRzUHJ6PAWBkX8XYqs6MFJKadfGv/nSCqqZMYNz7sMCOvwuDCg+XLiVKBU1ziMzrFv4wwqvR4VyYaj6m67cHx7Mw1TdlUOquZRgvRRcljs9mSuollaEskUFPmHs3owmQkrm6/+jIZmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=zWMhsiJy; arc=none smtp.client-ip=209.85.219.179
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-yb1-f179.google.com with SMTP id 3f1490d57ef6-e81749142b3so588760276.3
        for <devicetree@vger.kernel.org>; Thu, 19 Jun 2025 03:25:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1750328723; x=1750933523; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=ua4ESBOBusXcEPYVXoT+f1Oc5QbUn+Vjv+tNr5h2kMY=;
        b=zWMhsiJywAMd/qftiJySoSSj8tO+yVsJvcFcexFWT9QA30y/QpoyBtdRFHdCMebHjT
         Swum5ct8q6vRYpH2rQO5dilN0/AegRRQx8TCuVEUgRD+PN7dzVijkvP8vV9JR6JCnzgN
         UYLTeZth66jXbpYekpiYrxnh2rfU5Ndy69XcUDKLrq3URg1rw5W6VNWM+8IWGbZGrtbN
         sKUfY4V6fvpwKbCNdubEgC7iAej/0+Ocwd2G6y1sxW/br6BHm+T2FvNGd83kIJBOWBXw
         W8Y7u+/8tc3ouhVc/rugN2Q+yvT+Mhadgs+p0Pb7kxgY7Fu2fS4hqf/EGbFYAzX0B3p8
         lSGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750328723; x=1750933523;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ua4ESBOBusXcEPYVXoT+f1Oc5QbUn+Vjv+tNr5h2kMY=;
        b=pW3S6RQeTDFcFzHqGu5FdaNTlOLN0+s3k6wJ9N+fLAWkYKTzOzjHVLGbT46bgIz1GY
         nKNaiB7O/IkYwUMweCRXVs5HY9qsPfaY5udfCwLML2T0Efq3hP+bGCefyprRP7sQyelY
         1ToHQ0eteTPeK5QiIRCV05B9UGkh9+uOEWT/10hbAsKo88+uOjTrHE5AhLTYMNXksOz0
         SA5pRhSjPGfeYDZTwP+ieKzZrHbJq/DKIFPlM09B2FPu8aYk7j9qA8tDLXz36MVTf5aJ
         aXRntbQt9A32XEiIJXTdr/IC9Bk5/ANDO0C7ebfLOuLIm9+J/ZN+V4UnxmrCys//Lpkr
         pe4g==
X-Forwarded-Encrypted: i=1; AJvYcCWl8TPVrUFgqOOXOXKi0+J3zaVm2fKGgs1LbpUrPzbHn42vIJtahj01c6c3Bd3B+PuNwV9OLnhYHdD9@vger.kernel.org
X-Gm-Message-State: AOJu0Yzmsn3uR1PMwgik46FTlVYQNv/lhZ8hvM8ERhKXdqR+K2H21UPT
	THVdBeHgQrR5CMHD7yz1KtVfG3gqHzgyYHS6jcbg8Yh6Y8vw5qCuBSAbZhB/z/8XbqMhMkpHEFn
	SwocRWxB+Q/RVb+pDvidZjgAmtnJUFJ4MAKzHcAg1+g==
X-Gm-Gg: ASbGncvzywHt7p7IUvmdAR0ZKMIfQzM2yuJ4wfTALy7F3TuFh+xrHwmOqwNs1oKsPN8
	q5dzDWcE329V8CHRO/jSWdfg76K7NirL7dGIX0mM4KEZCoT/KK8hLgLnZWfBdlLRuMC44WYqcgu
	NoNHKhUPSqqne3FrATkw6vWwzFoCOZfbuAOwegTbzd3/D1
X-Google-Smtp-Source: AGHT+IEd1Y2dYwu5kQzmOiqV3OZ5X0v2pCQJYBuRmzgW1uRqeViVETMJf6n3heh0RuoVtnPHqbuzFhL0HpKezAowQ9Y=
X-Received: by 2002:a05:6902:1207:b0:e7d:13f2:943c with SMTP id
 3f1490d57ef6-e822ad92dedmr26314262276.41.1750328723568; Thu, 19 Jun 2025
 03:25:23 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CGME20250618102228eucas1p1906803f73cc004e68f281b2bdf871da3@eucas1p1.samsung.com>
 <20250618-apr_14_for_sending-v5-0-27ed33ea5c6f@samsung.com> <20250618-apr_14_for_sending-v5-3-27ed33ea5c6f@samsung.com>
In-Reply-To: <20250618-apr_14_for_sending-v5-3-27ed33ea5c6f@samsung.com>
From: Ulf Hansson <ulf.hansson@linaro.org>
Date: Thu, 19 Jun 2025 12:24:47 +0200
X-Gm-Features: Ac12FXzw77jNMgM4ecKpiOyLqo41UGjlRF2A49p8Af0bxhXr8nkUTTfXWCm5OqM
Message-ID: <CAPDyKFq_4W7bPr1NiuEGzMDoY6tQuHbw5uOXrkJagbEbtmqMWg@mail.gmail.com>
Subject: Re: [PATCH v5 3/8] pmdomain: thead: Instantiate GPU power sequencer
 via auxiliary bus
To: Michal Wilczynski <m.wilczynski@samsung.com>, Bartosz Golaszewski <brgl@bgdev.pl>
Cc: Drew Fustini <drew@pdp7.com>, Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Frank Binns <frank.binns@imgtec.com>, 
	Matt Coster <matt.coster@imgtec.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, linux-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"

On Wed, 18 Jun 2025 at 12:22, Michal Wilczynski
<m.wilczynski@samsung.com> wrote:
>
> In order to support the complex power sequencing required by the TH1520
> GPU, the AON power domain driver must be responsible for initiating the
> corresponding sequencer driver. This functionality is specific to
> platforms where the GPU power sequencing hardware is controlled by the
> AON block.
>
> Extend the AON power domain driver to check for the presence of the
> "gpu-clkgen" reset in its own device tree node.
>
> If the property is found, create and register a new auxiliary device.
> This device acts as a proxy that allows the dedicated `pwrseq-thead-gpu`
> auxiliary driver to bind and take control of the sequencing logic.
>
> Signed-off-by: Michal Wilczynski <m.wilczynski@samsung.com>

Reviewed-by: Ulf Hansson <ulf.hansson@linaro.org>

It looks like there is another re-spin needed, but thinking of the
merge-strategy I could potentially take patch1->patch3 via my pmdomain
tree, as it seems reasonable to keep those changes together. Unless
Bartosz sees any problem with that, of course.

Kind regards
Uffe

> ---
>  drivers/pmdomain/thead/Kconfig             |  1 +
>  drivers/pmdomain/thead/th1520-pm-domains.c | 51 ++++++++++++++++++++++++++++++
>  2 files changed, 52 insertions(+)
>
> diff --git a/drivers/pmdomain/thead/Kconfig b/drivers/pmdomain/thead/Kconfig
> index 7d52f8374b074167d508a80fd807929c53faef12..208828e0fa0dc91256bf808b905bea32bb84250d 100644
> --- a/drivers/pmdomain/thead/Kconfig
> +++ b/drivers/pmdomain/thead/Kconfig
> @@ -4,6 +4,7 @@ config TH1520_PM_DOMAINS
>         tristate "Support TH1520 Power Domains"
>         depends on TH1520_AON_PROTOCOL
>         select REGMAP_MMIO
> +       select AUXILIARY_BUS
>         help
>           This driver enables power domain management for the T-HEAD
>           TH-1520 SoC. On this SoC there are number of power domains,
> diff --git a/drivers/pmdomain/thead/th1520-pm-domains.c b/drivers/pmdomain/thead/th1520-pm-domains.c
> index f702e20306f469aeb0ed15e54bd4f8309f28018c..9040b698e7f7f2400163841530fecacfb0f917bc 100644
> --- a/drivers/pmdomain/thead/th1520-pm-domains.c
> +++ b/drivers/pmdomain/thead/th1520-pm-domains.c
> @@ -5,6 +5,7 @@
>   * Author: Michal Wilczynski <m.wilczynski@samsung.com>
>   */
>
> +#include <linux/auxiliary_bus.h>
>  #include <linux/firmware/thead/thead,th1520-aon.h>
>  #include <linux/slab.h>
>  #include <linux/platform_device.h>
> @@ -128,6 +129,50 @@ static void th1520_pd_init_all_off(struct generic_pm_domain **domains,
>         }
>  }
>
> +static void th1520_pd_pwrseq_unregister_adev(void *adev)
> +{
> +       auxiliary_device_delete(adev);
> +       auxiliary_device_uninit(adev);
> +}
> +
> +static int th1520_pd_pwrseq_gpu_init(struct device *dev)
> +{
> +       struct auxiliary_device *adev;
> +       int ret;
> +
> +       /*
> +        * Correctly check only for the property's existence in the DT node.
> +        * We don't need to get/claim the reset here; that is the job of
> +        * the auxiliary driver that we are about to spawn.
> +        */
> +       if (device_property_match_string(dev, "reset-names", "gpu-clkgen") < 0)
> +               /*
> +                * This is not an error. It simply means the optional sequencer
> +                * is not described in the device tree.
> +                */
> +               return 0;
> +
> +       adev = devm_kzalloc(dev, sizeof(*adev), GFP_KERNEL);
> +       if (!adev)
> +               return -ENOMEM;
> +
> +       adev->name = "pwrseq-gpu";
> +       adev->dev.parent = dev;
> +
> +       ret = auxiliary_device_init(adev);
> +       if (ret)
> +               return ret;
> +
> +       ret = auxiliary_device_add(adev);
> +       if (ret) {
> +               auxiliary_device_uninit(adev);
> +               return ret;
> +       }
> +
> +       return devm_add_action_or_reset(dev, th1520_pd_pwrseq_unregister_adev,
> +                                       adev);
> +}
> +
>  static int th1520_pd_probe(struct platform_device *pdev)
>  {
>         struct generic_pm_domain **domains;
> @@ -186,8 +231,14 @@ static int th1520_pd_probe(struct platform_device *pdev)
>         if (ret)
>                 goto err_clean_genpd;
>
> +       ret = th1520_pd_pwrseq_gpu_init(dev);
> +       if (ret)
> +               goto err_clean_provider;
> +
>         return 0;
>
> +err_clean_provider:
> +       of_genpd_del_provider(dev->of_node);
>  err_clean_genpd:
>         for (i--; i >= 0; i--)
>                 pm_genpd_remove(domains[i]);
>
> --
> 2.34.1
>

