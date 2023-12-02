Return-Path: <devicetree+bounces-20972-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6A04B801D58
	for <lists+devicetree@lfdr.de>; Sat,  2 Dec 2023 15:44:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1FAA21F21186
	for <lists+devicetree@lfdr.de>; Sat,  2 Dec 2023 14:44:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFF5718B19;
	Sat,  2 Dec 2023 14:44:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="netJP91c"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9FB6212E
	for <devicetree@vger.kernel.org>; Sat,  2 Dec 2023 06:44:08 -0800 (PST)
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id E0E3B42257
	for <devicetree@vger.kernel.org>; Sat,  2 Dec 2023 14:44:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1701528246;
	bh=r6jeVOJ8uNScbavO6oRhJDbP/R2qrE1dKTxqhisFANk=;
	h=From:In-Reply-To:References:Mime-Version:Date:Message-ID:Subject:
	 To:Cc:Content-Type;
	b=netJP91cRT6bHTdR3RflFp92vX6ievOk7LiRu4YWxsUlhsoDhy9+nufCMbf7J77SX
	 tg3hiEONn8JGFmM3oVDWMS9Rjw8HXH2RGnV+48QGxnunmGsU5tK2dG7nd3h90ccWdS
	 iieqBAcrLvIwry8dUqtcwVauyRhOzWM34jWuGZ3DqToFPOYC6wsgoWbtFtz5fXNvVj
	 Pe0Zd7zS/6hrpdJHSmYbl41wqQsxlD+nZKPHLTrUJi+BFQTmVKd8htS6OIgnNmRJwA
	 pHmnVKjiCrJwzygJr/edqGphpQkR7OeQQK4AD4uV8gjMFq54JCR2QAQUhoGcY+G+AN
	 uvZYGjzzEuNhw==
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-423f4f5f586so40684481cf.0
        for <devicetree@vger.kernel.org>; Sat, 02 Dec 2023 06:44:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701528244; x=1702133044;
        h=cc:to:subject:message-id:date:mime-version:references:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=r6jeVOJ8uNScbavO6oRhJDbP/R2qrE1dKTxqhisFANk=;
        b=saktWZhYcMr7+7r1SiIWqE9hktyKJ98gmrpWLjYvIslfu6/oGFcnnpyhn9ivsqLlGZ
         w9UU3p8A5a9zPjjFmXAfCCstfLeU7T0Om8h9FOcf4aGGsk/rKcR9U37PeNrSp+iijgIJ
         BNLSg+7l/ylD1xscgHy4IKcB2tZdsh8RYth6E0CauEJz/6mBH3Hm1CTDXIRaUqN/wNwK
         sxUEZ1WmV9d26etC/e75wD/KIp/h/cb54IPp6CgOoSQbAGirLRA/LM/Bvs7/UzSiz0Fs
         XCGC0bCRVcd378lhrA0A3WtLRekFdZQS67/rkwIgXqtaXLtgpKsxuOPyQfYI9EVdIsIZ
         ycdQ==
X-Gm-Message-State: AOJu0Yzc+EjG7vHayMnCU7wAORI22s5goTmCSihDW15dg8lqCp5O/I5s
	td3ErovEY0Qr+w7beeklLVk/SbnGP7hxr3RgT2hzO7k2LZkpL1hKK9NdL0NQo9p1MCPgMPlifKZ
	wXKpDPW9pqc1NZP4R4laPX3QXiY8ytWezMqmZcuQqlD4WR1ZkOI20KZQ=
X-Received: by 2002:a05:622a:86:b0:425:4043:5f41 with SMTP id o6-20020a05622a008600b0042540435f41mr1919262qtw.127.1701528244251;
        Sat, 02 Dec 2023 06:44:04 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGfPh334flr508EAZGNmLTyM+4QVgpXEgp8thSKGdCRPDIkTWGyXFCRDmz6MtLcyELHQnAA8WedEPZYZ24lPUA=
X-Received: by 2002:a05:622a:86:b0:425:4043:5f41 with SMTP id
 o6-20020a05622a008600b0042540435f41mr1919239qtw.127.1701528243903; Sat, 02
 Dec 2023 06:44:03 -0800 (PST)
Received: from 348282803490 named unknown by gmailapi.google.com with
 HTTPREST; Sat, 2 Dec 2023 06:44:03 -0800
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
In-Reply-To: <20231115114912.71448-20-minda.chen@starfivetech.com>
References: <20231115114912.71448-1-minda.chen@starfivetech.com> <20231115114912.71448-20-minda.chen@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
Date: Sat, 2 Dec 2023 06:44:03 -0800
Message-ID: <CAJM55Z8hb3vBgwOHoHuJpEPFVMNirhcs8AfZWRn4EgxbOGsq2Q@mail.gmail.com>
Subject: Re: [PATCH v11 19/20] PCI: starfive: Add JH7110 PCIe controller
To: Minda Chen <minda.chen@starfivetech.com>, Conor Dooley <conor@kernel.org>, 
	=?UTF-8?Q?Krzysztof_Wilczy=C5=84ski?= <kw@linux.com>, 
	Rob Herring <robh+dt@kernel.org>, Bjorn Helgaas <bhelgaas@google.com>, 
	Lorenzo Pieralisi <lpieralisi@kernel.org>, Daire McNamara <daire.mcnamara@microchip.com>, 
	Emil Renner Berthing <emil.renner.berthing@canonical.com>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-riscv@lists.infradead.org, linux-pci@vger.kernel.org, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Philipp Zabel <p.zabel@pengutronix.de>, 
	Mason Huo <mason.huo@starfivetech.com>, Leyfoon Tan <leyfoon.tan@starfivetech.com>, 
	Kevin Xie <kevin.xie@starfivetech.com>
Content-Type: text/plain; charset="UTF-8"

Minda Chen wrote:
> Add StarFive JH7110 SoC PCIe controller platform driver codes, JH7110
> with PLDA host PCIe core.
>
> Signed-off-by: Minda Chen <minda.chen@starfivetech.com>
> Co-developed-by: Kevin Xie <kevin.xie@starfivetech.com>
> Reviewed-by: Mason Huo <mason.huo@starfivetech.com>
> ---
>  MAINTAINERS                                 |   7 +
>  drivers/pci/controller/plda/Kconfig         |  11 +
>  drivers/pci/controller/plda/Makefile        |   1 +
>  drivers/pci/controller/plda/pcie-plda.h     |  71 ++-
>  drivers/pci/controller/plda/pcie-starfive.c | 460 ++++++++++++++++++++
>  drivers/pci/pci.h                           |   7 +
>  6 files changed, 556 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/pci/controller/plda/pcie-starfive.c
>

...

> +
> +static int starfive_pcie_parse_dt(struct starfive_jh7110_pcie *pcie,
> +				  struct device *dev)
> +{
> +	int domain_nr;
> +
> +	pcie->num_clks = devm_clk_bulk_get_all(dev, &pcie->clks);
> +	if (pcie->num_clks < 0)
> +		return dev_err_probe(dev, -ENODEV,
> +				     "failed to get pcie clocks\n");

Hi Minda,

From Damian's mail I noticed that this should propagate the error from
devm_clk_bulk_get_all() properly, so -EPROBE is converted to an -ENODEV error.
Eg.

	if (pcie->num_clks < 0)
		return dev_err_probe(dev, pcie->num_clks,
				     "failed to get pcie clocks\n");

> +
> +	pcie->resets = devm_reset_control_array_get_exclusive(dev);
> +	if (IS_ERR(pcie->resets))
> +		return dev_err_probe(dev, PTR_ERR(pcie->resets),
> +				     "failed to get pcie resets");
> +
> +	pcie->reg_syscon =
> +		syscon_regmap_lookup_by_phandle(dev->of_node,
> +						"starfive,stg-syscon");
> +
> +	if (IS_ERR(pcie->reg_syscon))
> +		return dev_err_probe(dev, PTR_ERR(pcie->reg_syscon),
> +				     "failed to parse starfive,stg-syscon\n");
> +
> +	pcie->phy = devm_phy_optional_get(dev, NULL);
> +	if (IS_ERR(pcie->phy))
> +		return dev_err_probe(dev, PTR_ERR(pcie->phy),
> +				     "failed to get pcie phy\n");
> +
> +	domain_nr = of_get_pci_domain_nr(dev->of_node);
> +
> +	if (domain_nr < 0 || domain_nr > 1)
> +		return dev_err_probe(dev, -ENODEV,
> +				     "failed to get valid pcie domain\n");
> +
> +	if (domain_nr == 0)
> +		pcie->stg_pcie_base = STG_SYSCON_PCIE0_BASE;
> +	else
> +		pcie->stg_pcie_base = STG_SYSCON_PCIE1_BASE;
> +
> +	pcie->reset_gpio = devm_gpiod_get_optional(dev, "perst",
> +						   GPIOD_OUT_HIGH);
> +	if (IS_ERR(pcie->reset_gpio))
> +		return dev_err_probe(dev, PTR_ERR(pcie->reset_gpio),
> +				     "failed to get perst-gpio\n");
> +
> +	pcie->power_gpio = devm_gpiod_get_optional(dev, "enable",
> +						   GPIOD_OUT_LOW);
> +	if (IS_ERR(pcie->power_gpio))
> +		return dev_err_probe(dev, PTR_ERR(pcie->power_gpio),
> +				     "failed to get power-gpio\n");
> +
> +	return 0;
> +}

