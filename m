Return-Path: <devicetree+bounces-122199-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E801E9CF372
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 18:58:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0DD16B2B68D
	for <lists+devicetree@lfdr.de>; Fri, 15 Nov 2024 16:36:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 309DC1D514F;
	Fri, 15 Nov 2024 16:36:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="s2yeD8VQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f181.google.com (mail-pf1-f181.google.com [209.85.210.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF48E1E4A6
	for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 16:36:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731688566; cv=none; b=ue3E3gmcnysYgzG1w6hTz/v8/bIzZ5UGWm3PsUSFReUexL+29t+YvGp6utPNSJeOFcCFQs//GPYKcVFhn+emxy6RnvVh+u7M3vd16PMG/5if87+zCNp9aAjjXwW65tbLt4dkeYnko2LEWR670xEg2ZM1gPAJx25iRXp1zjdsImo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731688566; c=relaxed/simple;
	bh=F0dKwfWND9Cr158pJFNX+LI79Kd6IcQezYwh3JmGItg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XBnj+/H2bTGGxx6pN6Qmr7LO1Ga1KsOU02YV/4doRZxBTVfjmg9tCdnxrSu9dR2+NwjlXmpfK9lkgPflF17XW/nrsqjx9m7vaIbeN+WTeD7UHOYkuUZlV/DeZSL00uuQpLVJhB756aiWJngnmPiLIJAJAKvHGivXjqWBeKNUIC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=s2yeD8VQ; arc=none smtp.client-ip=209.85.210.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-pf1-f181.google.com with SMTP id d2e1a72fcca58-71e4e481692so1665931b3a.1
        for <devicetree@vger.kernel.org>; Fri, 15 Nov 2024 08:36:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1731688563; x=1732293363; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=A1rLKs7XMafDwKPJur3KVVVuDZ+Nk4nB0R3fvhHVGOI=;
        b=s2yeD8VQ6yVbWSGjmxrUE72AAM/eGIef7R5B0pms8UuAdckzDrSdPYykD8vWT8gr6e
         n4f5IwzthJtJfRPmy+eBNWCbrnJh0IvQaj4/KjtSwOZxEg2ne4gfgggvps0YwCGzMN6L
         KhGQBip7FoWEIxP3J05dd4JQyiIlrJx5Gi8NyE3Psmd4kFG0gJJXqh0MO6OUcb7B1tJf
         TSf8AiqeOI6B41uqM4s5Yex1eJKFAK4cTPAmfsTeMn/jbNHFbXcBd0Ckr5RE2SqmlTDk
         BGdKd2yxlZKh8owokP4v9mJ1p/slJP3qDwQ/gIzgMLZT7zogPRvwkvCJ8Rwh+jgVD+6z
         CQ6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731688563; x=1732293363;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=A1rLKs7XMafDwKPJur3KVVVuDZ+Nk4nB0R3fvhHVGOI=;
        b=Glea5w9nR5NNdJwslBnPFhkx5wSlgbw4or7X9NdmWwjCk4vMqLu38lTL4qQMqwQLdO
         TxFuyEOS6tZDQX83yzpRVr4uAARH8xAprKjKrxuYSET+fljUo74V3wq5Ujll9MDxN+hb
         tD+D740/dteVv6XHMSfSoJ+bw3QtTm3Lytnz7msv1zcwfakmf9mBSwLOMyDpRcM1F6VY
         pmMZ0/+6y/deQMPG+hby0yAJgR2JdoJUwDBc3STCFdSPMYoXoerqlHguMUdkHLiYUVoM
         9+j05sywh3pfH9FaGaVXoYJt+jiI9q4uP45IMIgwCxrtYJXePkkdj7d9ICZQcBIT5zix
         INsA==
X-Forwarded-Encrypted: i=1; AJvYcCWnAMV9qADao2on2xUG/qxKf+4aA8SxWSJbHs7MM0ooPevNOqw55jbMfESsTp9yJeKL04rys/MgW/HI@vger.kernel.org
X-Gm-Message-State: AOJu0YzlCWCXzrV/61sohpNAhbjR+v7AoNrDRfy9MssyR+hPw0TzuAW0
	Bw0k6of6+0Eg8zP1HrgzUF6crnPgpZqJa3IO4z4tceYnudC8FIpyEdVQ00QWMg==
X-Google-Smtp-Source: AGHT+IGFnW6rFMw+hHUnNFuHyJmsLi6k9X5/Gsoh1t7i3szUhNuaPDcIgnR8yPSEXL5+AmJiguW+3g==
X-Received: by 2002:a05:6a00:b56:b0:71d:fb29:9f07 with SMTP id d2e1a72fcca58-72476bba9femr3943662b3a.15.1731688563135;
        Fri, 15 Nov 2024 08:36:03 -0800 (PST)
Received: from thinkpad ([117.193.215.93])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-724771e8ad1sm1533972b3a.168.2024.11.15.08.35.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Nov 2024 08:36:02 -0800 (PST)
Date: Fri, 15 Nov 2024 22:05:52 +0530
From: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To: Frank Li <Frank.Li@nxp.com>
Cc: Rob Herring <robh@kernel.org>, Saravana Kannan <saravanak@google.com>,
	Jingoo Han <jingoohan1@gmail.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kw@linux.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Richard Zhu <hongxing.zhu@nxp.com>,
	Lucas Stach <l.stach@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org, imx@lists.linux.dev
Subject: Re: [PATCH v7 1/7] of: address: Add parent_bus_addr to struct
 of_pci_range
Message-ID: <20241115163552.mk7msyu57oqqetaw@thinkpad>
References: <20241029-pci_fixup_addr-v7-0-8310dc24fb7c@nxp.com>
 <20241029-pci_fixup_addr-v7-1-8310dc24fb7c@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20241029-pci_fixup_addr-v7-1-8310dc24fb7c@nxp.com>

On Tue, Oct 29, 2024 at 12:36:34PM -0400, Frank Li wrote:
> Introduce field 'parent_bus_addr' in struct of_pci_range to retrieve parent
> bus address information.
> 
> Refer to the diagram below to understand that the bus fabric in some
> systems (like i.MX8QXP) does not use a 1:1 address map between input and
> output.
> 
> Currently, many controller drivers use .cpu_addr_fixup() callback hardcodes
> that translation in the code, e.g., "cpu_addr & CDNS_PLAT_CPU_TO_BUS_ADDR"
> (drivers/pci/controller/cadence/pcie-cadence-plat.c),
> "cpu_addr + BUS_IATU_OFFSET"(drivers/pci/controller/dwc/pcie-intel-gw.c),
> etc, even though those translations *should* be described via DT.
> 
> The .cpu_addr_fixup() can be eliminated if DT correct reflect hardware
> behavior and driver use 'parent_bus_addr' in struct of_pci_range.
> 
>             ┌─────────┐                    ┌────────────┐
>  ┌─────┐    │         │ IA: 0x8ff8_0000    │            │
>  │ CPU ├───►│   ┌────►├─────────────────┐  │ PCI        │
>  └─────┘    │   │     │ IA: 0x8ff0_0000 │  │            │
>   CPU Addr  │   │  ┌─►├─────────────┐   │  │ Controller │
> 0x7ff8_0000─┼───┘  │  │             │   │  │            │
>             │      │  │             │   │  │            │   PCI Addr
> 0x7ff0_0000─┼──────┘  │             │   └──► IOSpace   ─┼────────────►
>             │         │             │      │            │    0
> 0x7000_0000─┼────────►├─────────┐   │      │            │
>             └─────────┘         │   └──────► CfgSpace  ─┼────────────►
>              BUS Fabric         │          │            │    0
>                                 │          │            │
>                                 └──────────► MemSpace  ─┼────────────►
>                         IA: 0x8000_0000    │            │  0x8000_0000
>                                            └────────────┘
> 
> bus@5f000000 {
>         compatible = "simple-bus";
>         #address-cells = <1>;
>         #size-cells = <1>;
>         ranges = <0x80000000 0x0 0x70000000 0x10000000>;
> 
>         pcie@5f010000 {
>                 compatible = "fsl,imx8q-pcie";
>                 reg = <0x5f010000 0x10000>, <0x8ff00000 0x80000>;
>                 reg-names = "dbi", "config";
>                 #address-cells = <3>;
>                 #size-cells = <2>;
>                 device_type = "pci";
>                 bus-range = <0x00 0xff>;
>                 ranges = <0x81000000 0 0x00000000 0x8ff80000 0 0x00010000>,
>                          <0x82000000 0 0x80000000 0x80000000 0 0x0ff00000>;
> 	...
> 	};
> };
> 
> 'parent_bus_addr' in struct of_pci_range can indicate above diagram internal
> address (IA) address information.
> 
> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
> Signed-off-by: Frank Li <Frank.Li@nxp.com>

Acked-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

- Mani

> ---
> Change from v5 to v7
> -none
> 
> Change from v4 to v5
> - remove confused  <0x5f000000 0x0 0x5f000000 0x21000000>
> - change address order to 7ff8_0000, 7ff0_0000, 7000_0000
> - In commit message use parent bus addres
> 
> Change from v3 to v4
> - improve commit message by driver source code path.
> 
> Change from v2 to v3
> - cpu_untranslate_addr -> parent_bus_addr
> - Add Rob's review tag
>   I changed commit message base on Bjorn, if you have concern about review
> added tag, let me know.
> 
> Change from v1 to v2
> - add parent_bus_addr in struct of_pci_range, instead adding new API.
> ---
>  drivers/of/address.c       | 2 ++
>  include/linux/of_address.h | 1 +
>  2 files changed, 3 insertions(+)
> 
> diff --git a/drivers/of/address.c b/drivers/of/address.c
> index 286f0c161e332..1a0229ee4e0b2 100644
> --- a/drivers/of/address.c
> +++ b/drivers/of/address.c
> @@ -811,6 +811,8 @@ struct of_pci_range *of_pci_range_parser_one(struct of_pci_range_parser *parser,
>  	else
>  		range->cpu_addr = of_translate_address(parser->node,
>  				parser->range + na);
> +
> +	range->parent_bus_addr = of_read_number(parser->range + na, parser->pna);
>  	range->size = of_read_number(parser->range + parser->pna + na, ns);
>  
>  	parser->range += np;
> diff --git a/include/linux/of_address.h b/include/linux/of_address.h
> index 26a19daf0d092..13dd79186d02c 100644
> --- a/include/linux/of_address.h
> +++ b/include/linux/of_address.h
> @@ -26,6 +26,7 @@ struct of_pci_range {
>  		u64 bus_addr;
>  	};
>  	u64 cpu_addr;
> +	u64 parent_bus_addr;
>  	u64 size;
>  	u32 flags;
>  };
> 
> -- 
> 2.34.1
> 

-- 
மணிவண்ணன் சதாசிவம்

