Return-Path: <devicetree+bounces-150125-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 77BE3A414EF
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 06:52:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CDC5518891D8
	for <lists+devicetree@lfdr.de>; Mon, 24 Feb 2025 05:52:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78B421CAA62;
	Mon, 24 Feb 2025 05:52:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RPOCCvHC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C28B61448E3
	for <devicetree@vger.kernel.org>; Mon, 24 Feb 2025 05:52:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740376344; cv=none; b=cDZAXMX/+u8rvjs82I5y6hRPpZVQ2PoKNiw4W5cVp32Vza37E8WEoBTFiDVkDRYVJ+ZfDqp4EUOCNUKHpWuSWoQ12l+0me44trjCKBVnJx/O4qb+QmMYPi6EVa6yFqRCfxLbJ21t3YtHoUKqYp38dGlH6glFDQwzaNuJKiaIjI0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740376344; c=relaxed/simple;
	bh=z/ovU3nCV1OoHF37nW8XJ/TI/72Wl3CaicUIDjd0OOo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ikvh2nHPEA2Eyd5N0cW9Bg3OzEDyJZx7ggCXvrm16cc2o4/7c+h7/9facx/UMvzwFwiR2Kxqhh1begL1fWjkicBpq5MKZl/c4T4Gt02R7EwY2AbXvPryKQ+BteqnUgkXaaMDcvE7y5/9OwfGTN5cry00vV8EhkBa25PEXNJpEI4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RPOCCvHC; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-22113560c57so79462595ad.2
        for <devicetree@vger.kernel.org>; Sun, 23 Feb 2025 21:52:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740376342; x=1740981142; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=KMGZVixZMsM1QUrt21MIcd+lH0Pr9ebQZcDM8qRaS2Y=;
        b=RPOCCvHCvS2gauU7yf5nrMWOdOrz+REHjFTwRd3bGwxMLZVUUZFEYuBuN9baXRxa8v
         lwOYNyxG1KRk+StIJxXPYAWMs4V2yNmDfBy/wXFhKNnS51RzbzyB+UstaZQMbZ0cOG9c
         MlUPu/f181b8TFs3ZS2qUFEy54Ts88g1OW3WfpJCVRh/CdiIOCaQoXh1DMBDxp7fZU7a
         xlnQv7gnqUxsVk7YfTk+G068fW9Mp3Cgyo28IHtDguutxcT4HgjUxTt8y23FFknX7+1A
         ku3AW5CthssYXH4w3ELu5hQVF4QpoJniiMrxi7W9Gjz+SeZ0ORKY1CouWtAzluZFbGvB
         Q5NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740376342; x=1740981142;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KMGZVixZMsM1QUrt21MIcd+lH0Pr9ebQZcDM8qRaS2Y=;
        b=IaJ0R9F8t6V/Ooivjr/8GEVwAvFgEikujh4WCK2MaWK8B6oveb3X7w/IL0Z6ZLBAkd
         3m2/m72nmUHsaj20ABe38qceFB1mJMlFuWH3ZuVfFXATGRovTRkuFlOHS8Ufvv+lK/GE
         9TXvrTwK03m8NgSCrR3UWYtD8zCWz8GMUdtGpxYoMLSTqImhFwYKSYrS6PzMsYrXMUac
         Wz02d+rnOwrkjbPLDNlAfruFtZHO4r6Wv0/d8estsWZIWTyQIG0fxymUasZMEdqZltaP
         D5dQOYnGRXi2KTA7ekJ4sNYOOuXiG6ZPYljgnjZADpqLOty6DQyo97Iow8Zf+/UvjkcM
         CG/Q==
X-Forwarded-Encrypted: i=1; AJvYcCXsi6IH6JU2pl6Xfqo8BZLZK3Km6kGgbj19nD88yG8FMGDhomSdlabVKHRskQWDe08/p1KPGjfhJxJy@vger.kernel.org
X-Gm-Message-State: AOJu0YwgmB1RG8F3wH7PoBOaoKoWt6+mSUvBHk2o2slh/SzcqjwgKr6L
	kheW92TNs4newobo2MfkEeaNKasYuX4/enaV7ghbE/GQnsPOMQSKC7fu/dox1w==
X-Gm-Gg: ASbGnctEG7nIOx78/wHuUSZpO0wwHhiNq3v1yr8W4orGRb0wCbfI5qKr9xbh/DSH5NF
	ofFFvQaYwOpBoF1cuqqfIEX0nXrEWXEQjWA5F90IUWg5VSvpF2OYgIMoeeADMOMqPLO0+jL9BtS
	QAYfvL1bvxq/imDZhn+uncLjZ/r0oXGeVWdbp6/F6XjvDH1wHXt7kRlYTFV/NJ3o2lk9dBufyQd
	pNhb/MxUxF+fv4hadehWOtl2/qEMwR4oXRIm+StTuwTaN5JdsijYsvfP/ThRm2errjoNoez52bF
	lp/WKD/kTc2LEBcqi7EYsXRP1Z0+tgx7/oyW
X-Google-Smtp-Source: AGHT+IE2ru4PtjCsPp2tarf/l/cdfK16EG3Qcx2wKj6eAZLOtqSbVpSz/KOi9yvw/uq2s9+oluXICA==
X-Received: by 2002:a05:6a20:9186:b0:1ee:d8c8:4b7f with SMTP id adf61e73a8af0-1eef530072dmr19652797637.25.1740376341985;
        Sun, 23 Feb 2025 21:52:21 -0800 (PST)
Received: from thinkpad ([36.255.17.162])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-adb5870cba6sm18479524a12.42.2025.02.23.21.52.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 23 Feb 2025 21:52:21 -0800 (PST)
Date: Mon, 24 Feb 2025 11:22:16 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Lorenzo Bianconi <lorenzo@kernel.org>
Cc: Ryder Lee <ryder.lee@mediatek.com>,
	Jianjun Wang <jianjun.wang@mediatek.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Rob Herring <robh@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Matthias Brugger <matthias.bgg@gmail.com>,
	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	linux-pci@vger.kernel.org, linux-mediatek@lists.infradead.org,
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>
Subject: Re: [PATCH v3 2/2] PCI: mediatek-gen3: Configure PBUS_CSR registers
 for EN7581 SoC
Message-ID: <20250224055216.o23dzwimrghbr2ow@thinkpad>
References: <20250222-en7581-pcie-pbus-csr-v3-0-e0cca1f4d394@kernel.org>
 <20250222-en7581-pcie-pbus-csr-v3-2-e0cca1f4d394@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250222-en7581-pcie-pbus-csr-v3-2-e0cca1f4d394@kernel.org>

On Sat, Feb 22, 2025 at 11:43:45AM +0100, Lorenzo Bianconi wrote:
> Configure PBus base address and address mask to allow the hw
> to detect if a given address is accessible on PCIe controller.
> 
> Fixes: f6ab898356dd ("PCI: mediatek-gen3: Add Airoha EN7581 support")
> Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
> ---
>  drivers/pci/controller/pcie-mediatek-gen3.c | 34 ++++++++++++++++++++++++++++-
>  1 file changed, 33 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/pci/controller/pcie-mediatek-gen3.c b/drivers/pci/controller/pcie-mediatek-gen3.c
> index 0f64e76e2111468e6a453889ead7fbc75804faf7..51103b7624c09ca957c22a25536dc9da25428e48 100644
> --- a/drivers/pci/controller/pcie-mediatek-gen3.c
> +++ b/drivers/pci/controller/pcie-mediatek-gen3.c
> @@ -15,6 +15,7 @@
>  #include <linux/irqchip/chained_irq.h>
>  #include <linux/irqdomain.h>
>  #include <linux/kernel.h>
> +#include <linux/mfd/syscon.h>
>  #include <linux/module.h>
>  #include <linux/msi.h>
>  #include <linux/of_device.h>
> @@ -24,6 +25,7 @@
>  #include <linux/platform_device.h>
>  #include <linux/pm_domain.h>
>  #include <linux/pm_runtime.h>
> +#include <linux/regmap.h>
>  #include <linux/reset.h>
>  
>  #include "../pci.h"
> @@ -930,9 +932,13 @@ static int mtk_pcie_parse_port(struct mtk_gen3_pcie *pcie)
>  
>  static int mtk_pcie_en7581_power_up(struct mtk_gen3_pcie *pcie)
>  {
> +	struct pci_host_bridge *host = pci_host_bridge_from_priv(pcie);
>  	struct device *dev = pcie->dev;
> +	struct resource_entry *entry;
> +	u32 val, args[2], size, mask;
> +	struct regmap *pbus_regmap;
> +	resource_size_t addr;
>  	int err;
> -	u32 val;
>  
>  	/*
>  	 * The controller may have been left out of reset by the bootloader
> @@ -944,6 +950,32 @@ static int mtk_pcie_en7581_power_up(struct mtk_gen3_pcie *pcie)
>  	/* Wait for the time needed to complete the reset lines assert. */
>  	msleep(PCIE_EN7581_RESET_TIME_MS);
>  
> +	/*
> +	 * Configure PBus base address and base address mask to allow the
> +	 * hw to detect if a given address is accessible on PCIe controller.
> +	 */
> +	pbus_regmap = syscon_regmap_lookup_by_phandle_args(dev->of_node,
> +							   "mediatek,pbus-csr",
> +							   ARRAY_SIZE(args),
> +							   args);
> +	if (IS_ERR(pbus_regmap))
> +		return PTR_ERR(pbus_regmap);
> +
> +	entry = resource_list_first_type(&host->windows, IORESOURCE_MEM);
> +	if (!entry)
> +		return -EINVAL;

-ENODEV or -ENOMEM

> +
> +	addr = entry->res->start - entry->offset;
> +	err = regmap_write(pbus_regmap, args[0], lower_32_bits(addr));
> +	if (err)

MMIO write is not supposed to fail.

> +		return err;
> +
> +	size = lower_32_bits(resource_size(entry->res));
> +	mask = size ? GENMASK(31, __fls(size)) : 0;

Size of MEM region could be 0?

> +	err = regmap_write(pbus_regmap, args[1], mask);
> +	if (err)

MMIO write is not supposed to fail.

- Mani

-- 
மணிவண்ணன் சதாசிவம்

