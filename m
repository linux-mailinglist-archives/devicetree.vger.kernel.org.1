Return-Path: <devicetree+bounces-138616-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AADA8A1160E
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 01:24:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4C8003A80CC
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2025 00:24:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B3858111AD;
	Wed, 15 Jan 2025 00:24:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="X9KITJsz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qk1-f181.google.com (mail-qk1-f181.google.com [209.85.222.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0BAD2111
	for <devicetree@vger.kernel.org>; Wed, 15 Jan 2025 00:24:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.222.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736900649; cv=none; b=Fr1gII20OhyEnA88mVaoEcWPqMPtkSd/yOPx0QwYb9X+ZR6970oTMYqsahu1+FF6xviAT/FFy4ODuCFBgLqQF59QvvTmIAv4p5IeVLSkCZ5/uY6vh/X5+gHBYKoU5xuKN1nAECB2G965CzvU4JSRqXsVcrgroekSrgVe8sNzyCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736900649; c=relaxed/simple;
	bh=GlrHrjyH7schnzpzjXM5JH4X1WNKBqsNsXzi+kBESOg=;
	h=MIME-Version:In-Reply-To:References:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=jQsjdCcAOXSAtWXpC3GwyF6iOBq3EANEVSrYXQAzabXmLAwb0sI9H+aBNeKdYVc5BfzHC6EHmQmw8dJ21d277sId69GzZ9tPs/S68hI+zB2aKgFCOGwIngOink+SeRxDXmb7ViDglu6A8DuaYP5tglzSLoU+SVRKbQeiX3RNvm0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=X9KITJsz; arc=none smtp.client-ip=209.85.222.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-qk1-f181.google.com with SMTP id af79cd13be357-7b6ff72ba5aso582971585a.1
        for <devicetree@vger.kernel.org>; Tue, 14 Jan 2025 16:24:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1736900647; x=1737505447; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XdkrQTRhznZOHJugzyblEZGatDWjWHhDWzWqyeJbNHU=;
        b=X9KITJszZgbF4fv3rNt7BRDSf9KWL0Cq81XtZ7yjH2kNr7hj3yR7Yq2FZi+r3eYCiX
         sL096YA494ZUk6ZntJzkEf3GSPQDpF6x/mC/fblcTZtV8Bpu3vLHcH8AWmfivAaqwYaH
         Cscyv1proqkA9SOtdll6/BsRLcGRBAccVTPLE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1736900647; x=1737505447;
        h=cc:to:subject:message-id:date:user-agent:from:references
         :in-reply-to:mime-version:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XdkrQTRhznZOHJugzyblEZGatDWjWHhDWzWqyeJbNHU=;
        b=bSklADZfFrMSHrTSdykaapWkH4VCkKYoyrWGmNQlpe2ohPG7EZ8z+Ub00MqUMyzQRn
         ueCv0fcUQnniNODFmoZ4XdIG9bOrz3rH9WAYxPba6cUVAwpkK5U6A+QtiW1p8yZpsnAn
         qAM0Gd17Q2XDVK/Q8YYWrqR1cN2Hb4CGyak6aeRfOoiJHW552r2hdFqu+lh4JbVkxWa8
         DQAaO4Z/6OnQYDp/zcIRVLQ9afY+yMGh1V6mkqonAuawsT6e6xKS6TKQ3hURJuflbHuK
         RWE38/44Bn83Cg0XyygnrM04M0265l7cTvWnZah81Q+jSIt3CyPNIjzxjGZgU9FpmxH2
         E6+Q==
X-Forwarded-Encrypted: i=1; AJvYcCWkAq77xXMb4x99sCnkbhl1EP60dNLe7UhpWkgQ1550I3/KrqbSWoIsZUEOMS5Ltu/Bdu7h0iGo596G@vger.kernel.org
X-Gm-Message-State: AOJu0Yz3WwRwS3Hbb/CbrexQzyyHWSLRTRgMPxAwL9FPSuYSLB7m35Ck
	ITKJ1/rRks2Bkqt7F0vvYI0JhqV0Ixkvb3K7FgPDpg5SG7TOxuta4Z7yNRriEMyG4FoAgs/VAVu
	c+OdE3RTuTIZ9oo2gInb5FeOG1DSuc78m6SkX
X-Gm-Gg: ASbGncuWA+U4ARH4uBbVXrc5OXKFQUrhqucThPomUJlci6OzglFwVdAWTk03eJhsIdJ
	ARqikBHJN90eVTcffZ9uKHyUMoDqtQUoB0w7CtYEN+DD5T2O+5ZarepMBv4R+FTt2+g==
X-Google-Smtp-Source: AGHT+IGFlnDsW2kYH9Fj+I7/X5kk5DRoyvUl1Vg4TYrbwt2tYG+HP+0yjJ7qusb6i1E+hOnMy50XeRmYAHgeARPLxE8=
X-Received: by 2002:a05:620a:1b8f:b0:7b6:6ffc:e972 with SMTP id
 af79cd13be357-7bcd96fa261mr4559763085a.5.1736900646849; Tue, 14 Jan 2025
 16:24:06 -0800 (PST)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 14 Jan 2025 16:24:06 -0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <20250110140934.GB2630182-robh@kernel.org>
References: <20250108012846.3275443-1-swboyd@chromium.org> <20250108012846.3275443-6-swboyd@chromium.org>
 <20250110140934.GB2630182-robh@kernel.org>
From: Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.12.dev1+gaa8c22fdeedb
Date: Tue, 14 Jan 2025 16:24:06 -0800
X-Gm-Features: AbW1kvavzIgI9aEsq8_mXYL0R-E63WYKH0DsECCwhvKpTHMjYrqscz7VM-RM9s4
Message-ID: <CAE-0n51sr_D7e66WiSETiSuE3nZaAJwS5KfuYzdVWsLbL=q2zA@mail.gmail.com>
Subject: Re: [RFC PATCH 5/6] bus: qcom-sc7180: Attach pm domain to watchdog device
To: Rob Herring <robh@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>, 
	linux-kernel@vger.kernel.org, patches@lists.linux.dev, 
	devicetree@vger.kernel.org, Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, linux-arm-msm@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, Arnd Bergmann <arnd@arndb.de>, 
	Conor Dooley <conor+dt@kernel.org>, Saravana Kannan <saravanak@google.com>, 
	=?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <u.kleine-koenig@baylibre.com>
Content-Type: text/plain; charset="UTF-8"

Quoting Rob Herring (2025-01-10 06:09:34)
> > diff --git a/drivers/bus/qcom/qcom-sc7180.c b/drivers/bus/qcom/qcom-sc7180.c
> > index a615cf5a2129..7dfe6b32efef 100644
> > --- a/drivers/bus/qcom/qcom-sc7180.c
> > +++ b/drivers/bus/qcom/qcom-sc7180.c
> > @@ -3,18 +3,140 @@
> >   * SoC bus driver for Qualcomm SC7180 SoCs
> >   */
> >
> > +#include <linux/cleanup.h>
> > +#include <linux/clk.h>
> >  #include <linux/device.h>
> > +#include <linux/dev_printk.h>
[...]
> > +
> > +static int qcom_soc_domain_power_on(struct generic_pm_domain *domain)
> > +{
> > +     struct qcom_soc_pm_domain *soc_domain;
> > +
> > +     pr_info("Powering on device\n");
> > +     soc_domain = gpd_to_qcom_soc_pm_domain(domain);
> > +
> > +     return clk_prepare_enable(soc_domain->clk);
> > +}
> > +
> > +static int qcom_soc_domain_power_off(struct generic_pm_domain *domain)
> > +{
> > +     struct qcom_soc_pm_domain *soc_domain;
> > +
> > +     pr_info("Powering off device\n");
> > +     soc_domain = gpd_to_qcom_soc_pm_domain(domain);
> > +
> > +     clk_disable_unprepare(soc_domain->clk);
>
> How's this going to scale when there are multiple clocks and it's not
> just turn on/off all the clocks in any order? Or when there's ordering
> requirements between different resources.

We'll need different power_on/power_off functions when the ordering
requirements are different. It would be similar to how we have different
clk_ops for different types of clks.

>
> I'm pretty sure I've seen attempts to order clock entries in DT based on
> the order they want to enable them.

Yes, I've seen that too. The order in DT shouldn't matter. The SoC PM
driver will know what order of operations to take, including between
different resources like resets, interconnects, power-domains, etc.
That's the general idea of this driver, it will coordinate all the power
for devices in the soc node, because it's written for that particular
SoC. For example, if there are ordering requirements it can get clks by
name and "do the right thing".

Another goal I have is to power off devices that aren't bound to a
driver, and/or never will be. If we can figure out the runtime PM state
of devices before adding them to the platform bus it would allow us to
power those devices off at runtime or during system suspend if userspace
isn't actively trying to power down devices. Maybe to do that we'll have
to be notified by subsystem frameworks when a provider is registered and
then once all the providers are registered, get the PM resources like
clks and interconnects, etc., figure out if they're on/off, set the
runtime PM state of the device to match, and finally add the device to
the bus. Then we can extend the driver PM core to allow userspace to
turn off devices that aren't bound to a driver, because we've moved the
SoC PM glue out of each driver into this one driver that both adds the
devices to the system and manages the device power.

If a node is status = "disabled" I'd like to still get all the PM
resources for that device and either put them into one overall SoC PM
domain, or in an "unused device" domain that we can have userspace tell
the kernel it's safe to power down those devices that were left in a
(semi-)powered state by the bootloader. Obviously I haven't gotten to
this point yet, but it's another TODO item. We could also populate those
devices but never let them be bound to a driver because they're marked
disabled in DT. Then we don't have to do anything different from devices
that are ok to use, but we waste kernel memory. Either way, the PM
resources for disabled devices need to be dealt with.

>
> > +
> > +     return 0;
> > +}
> > +
> > +static int qcom_soc_add_clk_domain(struct platform_device *socdev,
> > +                                struct platform_device *pdev)
> > +{
> > +     struct qcom_soc_pm_domain *domain;
> > +     struct generic_pm_domain *pd;
> > +     int ret;
> > +
> > +     domain = devm_kzalloc(&socdev->dev, sizeof(*domain), GFP_KERNEL);
> > +     if (!domain)
> > +             return -ENOMEM;
> > +
> > +     pd = &domain->pd;
> > +     pd->name = "wdog";
> > +     ret = pm_genpd_init(pd, NULL, false);
> > +     if (ret)
> > +             return ret;
> > +
> > +     /* TODO: Wrap this in a generic_pm_domain function similar to power_on() */
> > +     pd->domain.activate = qcom_soc_domain_activate;
> > +     pd->power_on = qcom_soc_domain_power_on;
> > +     pd->power_off = qcom_soc_domain_power_off;
> > +
> > +     dev_info(&socdev->dev, "adding pm domain for %s\n", dev_name(&pdev->dev));
> > +     dev_pm_domain_set(&pdev->dev, &pd->domain);
> > +
> > +     return 0;
> > +}
> >
> >  static int qcom_soc_sc7180_probe(struct platform_device *pdev)
> >  {
> >       struct device *dev = &pdev->dev;
> >       struct device_node *np = dev->of_node;
> > +     struct platform_device *sdev;
> > +     int ret;
> > +
> > +     sdev = qcom_soc_alloc_device(pdev, "qcom,apss-wdt-sc7180");
>
> We're going to have to have an explicit call for every child node?

Probably! Or we can populate the "complicated" ones that require
something different and then populate the rest of the nodes that didn't
get populated explicitly with some sort of loop over non-populated nodes
that attaches a simple pm domain that does generic on/off sequencing. I
haven't gotten that far to know if populating everything explicitly will
be a problem.

