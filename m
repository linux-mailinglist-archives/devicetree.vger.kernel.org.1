Return-Path: <devicetree+bounces-197686-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D49FEB0A4A3
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 14:59:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 68EBE1AA773E
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 12:59:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DA1A2DAFA5;
	Fri, 18 Jul 2025 12:59:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JLmTt+7g"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 709AA2D979C
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 12:59:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752843556; cv=none; b=HrBv9iorNI86KbItu8LC5cFUC0Viaww64FAJVG0w16KNgjTmRgn4LhgjUupdKbonmzer6Ns04IENpnG3WUD4wwo7Q53s6Kb0ur//GYQS5owpn5RP26hWYqBt9oO5kn+bWGSzjdejh/9HmACtbzs56+IY+gQJgSy7OpCVHHu9R2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752843556; c=relaxed/simple;
	bh=oU9JFIpnW9IiwP/zLLrdn3UtCIAWt6eXdWUgszQQbz4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=MnvroDpHPciIraXgN9Im15RKf1mCX6x2Y+TeXjdfw9S1fUmARN9nt5YJoDkTavEU75mT7m8FhpE0IuyX9ieXGi5cO6v3PXN0LQKRA661evbNngF3QH+/cUga6SjuLSob8VmlAzCDlrTL0Jg5KUngZNaWyxgdAWUMlJr94fgyd4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JLmTt+7g; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-75001b1bd76so1369148b3a.2
        for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 05:59:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752843555; x=1753448355; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=PYpcavPW85ROVk3E1axG+f3muOD/wyEeug4NFZEIWg8=;
        b=JLmTt+7gCJpleS4ivc4h024LObg32opRMy26LFXe26hl3fMoiPHJCc74Ai7EJv7kGt
         csXdNVH2EXZEpV/XR5D3rb3AKllyulCywgF2ifdCEZwQ0cE+m+GFROjQjIUzqsIzMDQL
         rOvB1LsN5/FwZW0JVYMsIySdmQievYyWwCT3WKe2RLmnRVUQH9KMHerj1G/b+wbnUd0x
         D5re06Dt3H+ajHWIqwZIA+aAaztsJbe12HFLC20oBPt8puVpyjPQY6OviP978ZtpX8/q
         tuYUDjHvKfW9Nnt3g9t6T8J9xWtlSKT7zeNlyDzQdA9yANNLPFecrRQA1AIfJMcyJwSl
         6Wyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752843555; x=1753448355;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=PYpcavPW85ROVk3E1axG+f3muOD/wyEeug4NFZEIWg8=;
        b=pEpxm+aUioV1j9mrDgxk8nOqEE+QbhbUobH/Zaj39BKCUCBL8w9biCQF8iM6trYciZ
         V0CIAnbYWRHMqX3h1uoE/rO0HyfrzjzES2ep6TUuXsQdr28VHykgvpEnL013k8Xa+0qE
         7YPuPVxl5mJfoizLTStezN+VpP2pVzf4foXtFgf8gNJh94Oz/F7MUNuCCUAU3Mq05ovg
         iUYlC19vcbAt+95eGs/FzHXMtG2cNplbDnSy3ggdYvnllKfNxgl5zh1aamUA/7Scxa15
         nFrZeAFatNWZZLSdsypWuXQRJVydRzKKp3a6Q+ZlCSLg1lY9CMNIRKF7/cUy0lB5a+Yz
         gIDw==
X-Gm-Message-State: AOJu0YzrbqKNRXTjhRTUcn+y3Aa4Nm8eGpu5vL4kY5fjeE14HJuhyvLu
	wLTkgq5hpdo36BmeWlIMTzclkgVzKqx2rkLCLsiXAsqtFUplQ50Wkj72PVMXLjte/2f5DHxFm0G
	ohUnBkGsm4RI/1yELdQzGcMFzAYG9/eHom30W1teLpw==
X-Gm-Gg: ASbGncvBlK/s1rdgGHW4kf/LlZIzB9HCyutWe1puA4AxrsbnakyWLsL9d80G3519y6P
	LFgO4PQ5OJ8OOgEWHWMp97d4HUReQy3IlImV8ExmOxXKbR3NYJRQg/f2C6AonfJW+AyoZAgJRI6
	BSWmm81W40AED8TutVslSxHNWyQk44CTnJtr0PViR3KI8Ik8LVvQg0O+Zr4mVBuEkyYkGmLLpvY
	PFanVOh9eqqYll8nIA=
X-Google-Smtp-Source: AGHT+IHDAc74U25eHKTb9aulfz0KG+bpqSbOJrJeexu2ZAbE44hVvJk6HDFdKtlGLhZcV0OjSUhQj942abhhql0IydM=
X-Received: by 2002:a05:6a00:bd84:b0:748:f74f:6d27 with SMTP id
 d2e1a72fcca58-75725480a1bmr16226717b3a.24.1752843554551; Fri, 18 Jul 2025
 05:59:14 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250718094848.587-1-alireza.sanaee@huawei.com> <20250718094848.587-6-alireza.sanaee@huawei.com>
In-Reply-To: <20250718094848.587-6-alireza.sanaee@huawei.com>
From: Mike Leach <mike.leach@linaro.org>
Date: Fri, 18 Jul 2025 13:59:03 +0100
X-Gm-Features: Ac12FXxq5RyQqwd6GSdHy6cONAY5fWKaaHEWBZ5tvug2yoehd6FJ-cPiMbA37wc
Message-ID: <CAJ9a7VjdF0a_5gswt5j+LX9_pxK40ODNpYiYUSmYfsWZYA+Wjg@mail.gmail.com>
Subject: Re: [PATCH v3 5/6] coresight: Use of_cpu_phandle_to_id for grabbing
 CPU ID
To: Alireza Sanaee <alireza.sanaee@huawei.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	jonathan.cameron@huawei.com, coresight@lists.linaro.org, 
	dianders@chromium.org, james.clark@linaro.org, krzk@kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-perf-users@vger.kernel.org, 
	linuxarm@huawei.com, mark.rutland@arm.com, robh@kernel.org, 
	ruanjinjie@huawei.com, saravanak@google.com, 
	shameerali.kolothum.thodi@huawei.com, suzuki.poulose@arm.com
Content-Type: text/plain; charset="UTF-8"

On Fri, 18 Jul 2025 at 10:51, Alireza Sanaee <alireza.sanaee@huawei.com> wrote:
>
> Use the newly created API (of_cpu_phandle_to_id) to grab CPU ID.
>
> Reviewed-by: Jonathan Cameron <jonathan.cameron@huawei.com>
> Signed-off-by: Alireza Sanaee <alireza.sanaee@huawei.com>
> ---
>  drivers/hwtracing/coresight/coresight-platform.c | 15 +--------------
>  1 file changed, 1 insertion(+), 14 deletions(-)
>
> diff --git a/drivers/hwtracing/coresight/coresight-platform.c b/drivers/hwtracing/coresight/coresight-platform.c
> index 0db64c5f4995..95d46ea08936 100644
> --- a/drivers/hwtracing/coresight/coresight-platform.c
> +++ b/drivers/hwtracing/coresight/coresight-platform.c
> @@ -167,20 +167,7 @@ of_coresight_get_output_ports_node(const struct device_node *node)
>
>  static int of_coresight_get_cpu(struct device *dev)
>  {
> -       int cpu;
> -       struct device_node *dn;
> -
> -       if (!dev->of_node)
> -               return -ENODEV;
> -
> -       dn = of_parse_phandle(dev->of_node, "cpu", 0);
> -       if (!dn)
> -               return -ENODEV;
> -
> -       cpu = of_cpu_node_to_id(dn);
> -       of_node_put(dn);
> -
> -       return cpu;
> +       return of_cpu_phandle_to_id(dev->of_node, NULL, 0);
>  }
>
>  /*
> --
> 2.43.0
>

Reviewed-by: Mike Leach <mike.leach@linaro.org>

--
Mike Leach
Principal Engineer, ARM Ltd.
Manchester Design Centre. UK

