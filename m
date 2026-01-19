Return-Path: <devicetree+bounces-257030-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E59E5D3B54B
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 19:14:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E8D8730022C4
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 18:14:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C36EC35EDBA;
	Mon, 19 Jan 2026 18:14:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="Mq28j4HU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f44.google.com (mail-ej1-f44.google.com [209.85.218.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 495AA33D51D
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 18:14:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768846450; cv=none; b=LZOta8q5KkSNSV8BHE5G5+mrHfIhGicirXDDTLQMKV3SeEAFIdN45R9r8c5ZBb5V1bZTZmtFCEvTfI6KvuN+bBgLZTHM59BCiVv1CyFTJ6HYUrXFL9ldYAHTsJQ96wMBOlwvYDGMDY3o6yBb6/RTjr88/r87VMTVBqJp/4pph6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768846450; c=relaxed/simple;
	bh=4Fyy5F1MbMK5D2+wXHupBsG43QgqkaYW96mBVoNyYG8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=D6arcBTyFYGC9cTWVU/robA0B0O7UpdgeeSBj0KemZt5rzJggdxz4ymUdvQOqT74/dgWCRWNpr66oq6esgNqLUHLRHkxPUQdGd/uom030bqwosr6KuvQhs+hSwtQToKTkRTuy584YPMwFmJUviON7CL8T5N1lIfl9oo6ZINWAbQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=Mq28j4HU; arc=none smtp.client-ip=209.85.218.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f44.google.com with SMTP id a640c23a62f3a-b8715a4d9fdso617363866b.0
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 10:14:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1768846445; x=1769451245; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aAqjEspXY6zk1wpaBVOJfPfZZ59MneWSNApqQkZLBm8=;
        b=Mq28j4HUfqmtaUsKJ+z12lidoKBriXs4AnZDuGlTGqwjxt3VeNKT8Sp3AgP1DN6mJA
         gMjoQDCwTlhzj6Voq4nNd/4vPUfFnkMY8aUkENVP8w2jKNyGTS8KNVOK8JxOOrLMUtJV
         B7vYoHhAZ4kxinZXyAAl5JNLvbbYeUQG9kmTv499RoN18kF7zfjWSEPwXwo2Nu1d4qLA
         5OtDcqU44zw/jQbjvC2HkHJ2n/6U6iUcsp+tzaJXrWji/F6eSf+D22xPR8kyvcohbjt1
         aAS2EPX49Acg95mCC2Eml7/tXj/IsONtw/4Hzx3xkriDR6j1/e2r5udz4Us3GxftJagT
         VVgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768846445; x=1769451245;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aAqjEspXY6zk1wpaBVOJfPfZZ59MneWSNApqQkZLBm8=;
        b=HhBLRXcOGsthpXiNNYWlCSir9kXwKYN0oOuHUbyQPBnUeFqZ/utTTfpw1GSSo6Z2UO
         2uJ2I1sEp2EQW5cDQrMlrRfhbJa/R8cHAUfTHe6z4NAcF5YsJXmt50IakgTMGgPC75/M
         H41IlrocIEx42B+vdRCGLDxwSCKbHsiyYNPmOYFJVvCqBh0ZiTCLNLGMY5ivAbqaCMvL
         66o5Eg9jmsLBPON0P4HI1Dge7Iy1XCoeP08CQLeXfZXEjXVZ6eC0vsr98qGf7KbBEwIw
         WFROzwm8pUmYP6X34BrEXeRkJ9Sk+idBEYzGEudSmQL2e8n3q03w5WLXSJw+TYmDJ5Tj
         FyEg==
X-Forwarded-Encrypted: i=1; AJvYcCU1th6HVplhJlNM/a2/T1/aegP8Ib5n1xnkvaFmklzvkQSKZhrNRC8HYey1x1K0WcI+M2gXjVtVUgOE@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+sRO1LrPNWWtD/KATJNQsTT4zmsLL08FY1JhiXYlPNq3aoyao
	LtvU7m42o6rsR+oHujObILLmV9+3ybEuz+Vh/rL4dftd4xpNsHCZWt/ew66YWtK3Bfk=
X-Gm-Gg: AY/fxX6PfT6lMTYu7TLLSk9P+RjmbtA80ZaFEch/fXkcTxpG90XFuVokH4yGBQSK4EZ
	TMmywJe8tkbvgL3vGEIuC9pKioMnLGux0wukbOGCe0XJrAKbmPv+LYgClQZDcIt6W+wFBtl2CLO
	BsMvfGB9oDLC8ozsu+K5vxbWUVH/d/1hvIsJVB90itlc5Vxn11hXYFX+OWyMptW5RgCiyuwXwg4
	xd1u1+tlIriMfpLTbN1SjA2YLSl4B6aJOlgKJ7XmHaWrDbflxZjNpDkGKQI7oFUW4x+NbT6KBnL
	oPUNgqJEB2lpp2WNWYdrVtgn6alZYGhBn8ZoH9CssZPzCesh9cLWSDvi4hgmUmiS5TrJHGdjGIa
	yoj2MlRdyMXXHqsZb7eMJgtMLvu1JBhBF/+5Nrxhl+1F9zyZB7YcEbzEbH2YZzxL5s+PpwObP9i
	BafS/xdCXPfsWBhy8PqckOweMLqX2R
X-Received: by 2002:a17:907:a05:b0:b87:2e8a:e256 with SMTP id a640c23a62f3a-b8796afd52fmr1113254066b.31.1768846445120;
        Mon, 19 Jan 2026 10:14:05 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.31])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8795a2f1a3sm1155867766b.62.2026.01.19.10.14.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jan 2026 10:14:04 -0800 (PST)
Message-ID: <34bd51e6-c93d-40fd-bf5a-8f476c4e1776@tuxon.dev>
Date: Mon, 19 Jan 2026 20:14:02 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 06/16] PCI: rzg3s-host: Make SYSC register offsets
 SoC-specific
To: John Madieu <john.madieu.xa@bp.renesas.com>,
 claudiu.beznea.uj@bp.renesas.com, lpieralisi@kernel.org,
 kwilczynski@kernel.org, mani@kernel.org, geert+renesas@glider.be,
 krzk+dt@kernel.org
Cc: robh@kernel.org, bhelgaas@google.com, conor+dt@kernel.org,
 magnus.damm@gmail.com, biju.das.jz@bp.renesas.com,
 linux-pci@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org, john.madieu@gmail.com
References: <20260114153337.46765-1-john.madieu.xa@bp.renesas.com>
 <20260114153337.46765-7-john.madieu.xa@bp.renesas.com>
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20260114153337.46765-7-john.madieu.xa@bp.renesas.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi, John,

On 1/14/26 17:33, John Madieu wrote:
> In preparation for adding RZ/G3E support, move the RST_RSM_B register
> offset and mask into a SoC-specific data structure. Compared with RZ/G3S,
> the RZ/G3E SYSC controls different functionalities for the PCIe controller.
> 
> Make SYSC operations conditional on the presence of register offset
> information, allowing the driver to handle SoCs that don't use the
> RST_RSM_B signal.
> 
> Signed-off-by: John Madieu <john.madieu.xa@bp.renesas.com>
> ---
>   drivers/pci/controller/pcie-rzg3s-host.c | 93 +++++++++++++++++-------
>   1 file changed, 67 insertions(+), 26 deletions(-)
> 
> diff --git a/drivers/pci/controller/pcie-rzg3s-host.c b/drivers/pci/controller/pcie-rzg3s-host.c
> index 205b60421be1..44728771afa3 100644
> --- a/drivers/pci/controller/pcie-rzg3s-host.c
> +++ b/drivers/pci/controller/pcie-rzg3s-host.c
> @@ -159,10 +159,6 @@
>   
>   #define RZG3S_PCI_CFG_PCIEC			0x60
>   
> -/* System controller registers */
> -#define RZG3S_SYS_PCIE_RST_RSM_B		0xd74
> -#define RZG3S_SYS_PCIE_RST_RSM_B_MASK		BIT(0)
> -
>   /* Maximum number of windows */
>   #define RZG3S_MAX_WINDOWS			8
>   
> @@ -174,6 +170,34 @@
>   /* Timeouts experimentally determined */
>   #define RZG3S_REQ_ISSUE_TIMEOUT_US		2500
>   
> +/**
> + * struct rzg3s_sysc_function - System Controller register function descriptor
> + * @offset: Register offset from the System Controller base address
> + * @mask: Bit mask for the function within the register
> + */
> +struct rzg3s_sysc_function {
> +	u32 offset;
> +	u32 mask;
> +};
> +
> +/**
> + * struct rzg3s_sysc_info - RZ/G3S System Controller function info
> + * @rst_rsm_b: Reset RSM_B function descriptor
> + */
> +struct rzg3s_sysc_info {
> +	struct rzg3s_sysc_function rst_rsm_b;
> +};
> +
> +/**
> + * struct rzg3s_sysc - RZ/G3S System Controller descriptor
> + * @regmap: System controller regmap
> + * @info: System controller info
> + */
> +struct rzg3s_sysc {
> +	struct regmap *regmap;
> +	const struct rzg3s_sysc_info *info;
> +};
> +
>   /**
>    * struct rzg3s_pcie_msi - RZ/G3S PCIe MSI data structure
>    * @domain: IRQ domain
> @@ -203,6 +227,7 @@ struct rzg3s_pcie_host;
>    *                power-on
>    * @cfg_resets: array with the resets that need to be de-asserted after
>    *              configuration
> + * @sysc_info: SYSC functionalities
>    * @num_power_resets: number of power resets
>    * @num_cfg_resets: number of configuration resets
>    */
> @@ -210,6 +235,7 @@ struct rzg3s_pcie_soc_data {
>   	int (*init_phy)(struct rzg3s_pcie_host *host);
>   	const char * const *power_resets;
>   	const char * const *cfg_resets;
> +	struct rzg3s_sysc_info sysc_info;
>   	u8 num_power_resets;
>   	u8 num_cfg_resets;
>   };
> @@ -233,7 +259,7 @@ struct rzg3s_pcie_port {
>    * @dev: struct device
>    * @power_resets: reset control signals that should be set after power up
>    * @cfg_resets: reset control signals that should be set after configuration
> - * @sysc: SYSC regmap
> + * @sysc: SYSC descriptor
>    * @intx_domain: INTx IRQ domain
>    * @data: SoC specific data
>    * @msi: MSI data structure
> @@ -248,7 +274,7 @@ struct rzg3s_pcie_host {
>   	struct device *dev;
>   	struct reset_control_bulk_data *power_resets;
>   	struct reset_control_bulk_data *cfg_resets;
> -	struct regmap *sysc;
> +	struct rzg3s_sysc *sysc;
>   	struct irq_domain *intx_domain;
>   	const struct rzg3s_pcie_soc_data *data;
>   	struct rzg3s_pcie_msi msi;
> @@ -1516,6 +1542,7 @@ static int rzg3s_pcie_probe(struct platform_device *pdev)
>   	struct device_node *sysc_np __free(device_node) =
>   		of_parse_phandle(np, "renesas,sysc", 0);
>   	struct rzg3s_pcie_host *host;
> +	struct rzg3s_sysc *sysc;
>   	int ret;
>   
>   	bridge = devm_pci_alloc_host_bridge(dev, sizeof(*host));
> @@ -1527,6 +1554,13 @@ static int rzg3s_pcie_probe(struct platform_device *pdev)
>   	host->data = device_get_match_data(dev);
>   	platform_set_drvdata(pdev, host);
>   
> +	host->sysc = devm_kzalloc(dev, sizeof(*host->sysc), GFP_KERNEL);
> +	if (!host->sysc)
> +		return -ENOMEM;
> +
> +	sysc = host->sysc;
> +	sysc->info = &host->data->sysc_info;
> +
>   	host->axi = devm_platform_ioremap_resource(pdev, 0);
>   	if (IS_ERR(host->axi))
>   		return PTR_ERR(host->axi);
> @@ -1540,15 +1574,16 @@ static int rzg3s_pcie_probe(struct platform_device *pdev)
>   	if (ret)
>   		return ret;
>   
> -	host->sysc = syscon_node_to_regmap(sysc_np);
> -	if (IS_ERR(host->sysc)) {
> -		ret = PTR_ERR(host->sysc);
> +	sysc->regmap = syscon_node_to_regmap(sysc_np);
> +	if (IS_ERR(sysc->regmap)) {
> +		ret = PTR_ERR(sysc->regmap);
>   		goto port_refclk_put;
>   	}
>   
> -	ret = regmap_update_bits(host->sysc, RZG3S_SYS_PCIE_RST_RSM_B,
> -				 RZG3S_SYS_PCIE_RST_RSM_B_MASK,
> -				 FIELD_PREP(RZG3S_SYS_PCIE_RST_RSM_B_MASK, 1));
> +	ret = regmap_update_bits(sysc->regmap,
> +				 sysc->info->rst_rsm_b.offset,

This can stay on the previous line to spare one extra line of code.

The rest LGTM.

Thank you,
Claudiu

