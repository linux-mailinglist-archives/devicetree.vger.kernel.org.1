Return-Path: <devicetree+bounces-268792-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qAGvJBcuoGm+fwQAu9opvQ
	(envelope-from <devicetree+bounces-268792-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 12:27:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 34AE41A5074
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 12:27:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 73994301BA82
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 11:27:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EEAC9366824;
	Thu, 26 Feb 2026 11:27:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="HJFXYnWC"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59F03363C62
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 11:27:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772105235; cv=none; b=r0DekpKPRp7rFLVCZ+GA8/WwvwUtS9xa6AZ8OCMLXiKGooMI1KC3mWx9/5pORd4u5/7d+jPR5ps/B0heYMFnwl7pFZdbnsjHUPglYN5a6ijzVFv3qRQHD05Tvl8/SQJ/U6XSMMEi9WaOHhVqYAS0Nbfz/pACwqpHTU+/b1yS6TY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772105235; c=relaxed/simple;
	bh=KBkXwYbNDGKJRUZJASZcErNU+Nm6SHDyJPnJvJ9mz7g=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Z2LRb0MrCRnLe+fJtfe2bz+KboK7QCAMfxf2lktT3uGxpb5iSoUjYC9taIZy5T0DjD7d8z6k2aD3iA5/xfnZc/vSV6TtHgz3W5tywGFWByIBsKQMZol39GzhEkEvYvUT6NYxGVzuryb5qv/a/6jz5nkTvPFrLmaKuG5ipTYr5s4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=HJFXYnWC; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-483703e4b08so6293315e9.1
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 03:27:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1772105233; x=1772710033; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=j0egD5NuFInsZp/5U44UWlazKrIJ1QnicZe5iyCaeCA=;
        b=HJFXYnWC8FvteTDcUu/0hAkuMfJmgV67g1tmL7O2eJuPNgnp8I30zSBEimYKhlgpaM
         WI6hDMRWQ2z506a/ePapXv/iAKvZa8pKZ8E0L42LFcgjgiq0auQgFn2wc0IZN2Q5ZcOW
         MKBKIkpQNCU9YGNdOdqV1NwNPuVf8fSerC9bYUMcev/4c0ulKXzmz3lfErCyJ11xE8cJ
         /Zce+qSQ+cmlQKS+5OavmdH35D145DUBr2FomP3Q5FYE4nkVfifV4B5pGLthlccbkkBX
         a0RvMqi/HyGteosuSZjY2nQ16x0g/7LOrtiWv8TZdrdAAcd2CxeokY6gfuxJYB1W36+L
         oGDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772105233; x=1772710033;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j0egD5NuFInsZp/5U44UWlazKrIJ1QnicZe5iyCaeCA=;
        b=qEyQt/vScQQLQ5zAP+usTaDOgFO5Qh2Qa1tq2wAGi+5U+guWeB6KjKdjtdgUOFxILp
         +fcxGRYm3/n4NWJ9GqY9yyhODK4SNX4ay6N1n+lBP2VOICApmMLM5+Av3PaNGG+WRCi2
         tuZf+YU1N6teJO3MqJB5n1ui0ZIB1TvV5E2RUWxcZqPQqBzPUHKnDBcdCh7GcXMW5CDr
         G/Hh88OtXQSa/LYezSl+IXh+2pXtyJxsm3VC2BfaC/ycD0c7ZSRFvfomaj5IwI7r6RFe
         8my1aoLJPMuCcIoRpM0+GPEKPrzmpuwezjNP9Q9ZOpl8lGWTIU4wgVoyQp5qK1GZeFNe
         lQGg==
X-Forwarded-Encrypted: i=1; AJvYcCWPSp8rMBcgsbnjj70cccUEySILU9WDfjENcdaMJkyTcCXwqhxWI04Lk66OvWYmjOPlPJ5OrheeKrJP@vger.kernel.org
X-Gm-Message-State: AOJu0YyzbpGn9Wx0y/ezmhKfDx3x/rMM3ImC946O8oLjcAV2Io222YXN
	+7mtrqbEvA/uCBvxXedzvfMjrbPnlpfrPFYmC601MAmG7MucVdu1pOyWvNNIEpAgF+g=
X-Gm-Gg: ATEYQzx/g4o3laprduHgoCC3iApSocYa/8A3a3X6dCqRFWNb6sH4x/JJmjpALY8j2qF
	RNp0LKE4UUKFkYEDKEIaGvjQfI2pFnXgYm8k516k7BTqvWHvZZi0JzoEEbGIhgBTnn/rDqcb/pA
	iz+Vkl9yMTAdMFgqtUU67pl8lfbpzkCQinGqWWptx0YG6hUUCUseyjrqgHIFa1xQgbSqp+nFr20
	JMDFw9Vh437yPrKuXc3lHKRmbcKnskUqwWOUa7OWjvP6tn31z9WR99KccDKA5RpRfyPv0RY9K1V
	Ta/7RrWdDKo+g5gcJjJL38E0hWs8jT9qCJDuTDO0W7E10ReP60qTo198ZwOwsOXW5zVctLfD5IT
	nncY532QBwbf1VeggavlVcOqfJCkVgOhMstTYmK2SkY/MM25x5NH2zala3kSA4Z5Q6TwerX9pAv
	K0RGae5uHkHbELMA5HnDuuqN4a1iDHJg==
X-Received: by 2002:a05:600c:8b71:b0:483:7ea3:3de3 with SMTP id 5b1f17b1804b1-483c33c3606mr43779775e9.2.1772105232673;
        Thu, 26 Feb 2026 03:27:12 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.73])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483bd75df90sm142865245e9.14.2026.02.26.03.27.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Feb 2026 03:27:12 -0800 (PST)
Message-ID: <8352571e-a6f0-4564-a837-22f2fe15df31@tuxon.dev>
Date: Thu, 26 Feb 2026 13:27:10 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 08/16] PCI: rzg3s-host: Make SYSC register offsets
 SoC-specific
To: John Madieu <john.madieu.xa@bp.renesas.com>,
 claudiu.beznea.uj@bp.renesas.com, lpieralisi@kernel.org,
 kwilczynski@kernel.org, mani@kernel.org, geert+renesas@glider.be,
 krzk+dt@kernel.org
Cc: robh@kernel.org, bhelgaas@google.com, conor+dt@kernel.org,
 magnus.damm@gmail.com, biju.das.jz@bp.renesas.com,
 linux-pci@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org, john.madieu@gmail.com
References: <20260219223542.6364-1-john.madieu.xa@bp.renesas.com>
 <20260219223542.6364-9-john.madieu.xa@bp.renesas.com>
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20260219223542.6364-9-john.madieu.xa@bp.renesas.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[tuxon.dev:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-268792-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[tuxon.dev];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,google.com,gmail.com,bp.renesas.com,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[tuxon.dev:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[claudiu.beznea@tuxon.dev,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.994];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tuxon.dev:mid,tuxon.dev:dkim,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 34AE41A5074
X-Rspamd-Action: no action

Hi, John,

On 2/20/26 00:35, John Madieu wrote:
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
> 
> Changes:
> 
> v6:
>   - Introduce enum rzg3s_sysc_func_id and rzg3s_sysc_config_func() as
>     suggested by Claudiu. This replaces direct regmap calls and drops
>     the -1 skip pattern.
>   - Removed Rb tag from Claudiu
> 
> v5: No changes
> v4: No changes
> v3: No changes
> v2: Collected tag.
> 
>   drivers/pci/controller/pcie-rzg3s-host.c | 120 ++++++++++++++++++-----
>   1 file changed, 94 insertions(+), 26 deletions(-)
> 
> diff --git a/drivers/pci/controller/pcie-rzg3s-host.c b/drivers/pci/controller/pcie-rzg3s-host.c
> index 7f5ffc5c218a..a90487610b37 100644
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
> @@ -174,6 +170,45 @@
>   /* Timeouts experimentally determined */
>   #define RZG3S_REQ_ISSUE_TIMEOUT_US		2500
>   
> +/**
> + * struct rzg3s_sysc_function - System Controller register function descriptor

Please drop register word from here ---------------------^

> + * @offset: Register offset from the System Controller base address
> + * @mask: Bit mask for the function within the register
> + */
> +struct rzg3s_sysc_function {
> +	u32 offset;
> +	u32 mask;
> +};
> +
> +

There are 2 blank lines here. Please drop one.

> +/**
> + * enum rzg3s_sysc_func_id - System controller function IDs
> + * @RZG3S_SYSC_FUNC_ID_RST_RSM_B: RST_RSM_B SYSC function ID
> + * @RZG3S_SYSC_FUNC_ID_MAX: Max SYSC function ID
> + */
> +enum rzg3s_sysc_func_id {
> +	RZG3S_SYSC_FUNC_ID_RST_RSM_B,
> +	RZG3S_SYSC_FUNC_ID_MAX,
> +};
> +
> +/**
> + * struct rzg3s_sysc_info - RZ/G3S System Controller function info

Please drop function from here ---------------------------^
as we may add other data in it at some point.

> + * @functions: SYSC function descriptors array
> + */
> +struct rzg3s_sysc_info {
> +	const struct rzg3s_sysc_function functions[RZG3S_SYSC_FUNC_ID_MAX];
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
> @@ -203,6 +238,7 @@ struct rzg3s_pcie_host;
>    *                power-on
>    * @cfg_resets: array with the resets that need to be de-asserted after
>    *              configuration
> + * @sysc_info: SYSC functionalities

s/functionalities/info

>    * @num_power_resets: number of power resets
>    * @num_cfg_resets: number of configuration resets
>    */
> @@ -210,6 +246,7 @@ struct rzg3s_pcie_soc_data {
>   	int (*init_phy)(struct rzg3s_pcie_host *host);
>   	const char * const *power_resets;
>   	const char * const *cfg_resets;
> +	struct rzg3s_sysc_info sysc_info;
>   	u8 num_power_resets;
>   	u8 num_cfg_resets;
>   };
> @@ -233,7 +270,7 @@ struct rzg3s_pcie_port {
>    * @dev: struct device
>    * @power_resets: reset control signals that should be set after power up
>    * @cfg_resets: reset control signals that should be set after configuration
> - * @sysc: SYSC regmap
> + * @sysc: SYSC descriptor
>    * @intx_domain: INTx IRQ domain
>    * @data: SoC specific data
>    * @msi: MSI data structure
> @@ -248,7 +285,7 @@ struct rzg3s_pcie_host {
>   	struct device *dev;
>   	struct reset_control_bulk_data *power_resets;
>   	struct reset_control_bulk_data *cfg_resets;
> -	struct regmap *sysc;
> +	struct rzg3s_sysc *sysc;
>   	struct irq_domain *intx_domain;
>   	const struct rzg3s_pcie_soc_data *data;
>   	struct rzg3s_pcie_msi msi;
> @@ -1161,6 +1198,31 @@ static int rzg3s_pcie_host_parse_port(struct rzg3s_pcie_host *host)
>   	return 0;
>   }
>   
> +/**
> + * rzg3s_sysc_config_func - Configure a single SYSC function
> + * @sysc: SYSC descriptor
> + * @fid: Function ID to configure
> + * @val: Value to set
> + *
> + * Return: 0 on success, negative error code on failure
> + */

Other similar functions in this file don't use documentation. I think the 
function name and its arguments are descriptive enough to drop this documentation.


> +static int rzg3s_sysc_config_func(struct rzg3s_sysc *sysc,
> +				  enum rzg3s_sysc_func_id fid, u32 val)
> +{
> +	const struct rzg3s_sysc_info *info = sysc->info;
> +	const struct rzg3s_sysc_function *functions = info->functions;
> +
> +	if (fid >= RZG3S_SYSC_FUNC_ID_MAX)
> +		return -EINVAL;
> +
> +	if (!functions[fid].mask)
> +		return 0;
> +
> +	return regmap_update_bits(sysc->regmap, functions[fid].offset,
> +				  functions[fid].mask,
> +				  field_prep(functions[fid].mask, val));
> +}
> +

Could you please move this function before rzg3s_pcie_update_bits()? In this 
patch it is b/w rzg3s_pcie_host_parse_port() and rzg3s_pcie_host_init_port() and 
I would prefer to keep these 2 close togheter.

The rest LGTM.

Thank you,
Claudiu

>   static int rzg3s_pcie_host_init_port(struct rzg3s_pcie_host *host)
>   {
>   	struct rzg3s_pcie_port *port = &host->port;
> @@ -1521,6 +1583,7 @@ static int rzg3s_pcie_probe(struct platform_device *pdev)
>   	struct device_node *sysc_np __free(device_node) =
>   		of_parse_phandle(np, "renesas,sysc", 0);
>   	struct rzg3s_pcie_host *host;
> +	struct rzg3s_sysc *sysc;
>   	int ret;
>   
>   	bridge = devm_pci_alloc_host_bridge(dev, sizeof(*host));
> @@ -1532,6 +1595,13 @@ static int rzg3s_pcie_probe(struct platform_device *pdev)
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
> @@ -1545,15 +1615,13 @@ static int rzg3s_pcie_probe(struct platform_device *pdev)
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
> +	ret = rzg3s_sysc_config_func(sysc, RZG3S_SYSC_FUNC_ID_RST_RSM_B, 1);
>   	if (ret)
>   		goto port_refclk_put;
>   
> @@ -1605,9 +1673,7 @@ static int rzg3s_pcie_probe(struct platform_device *pdev)
>   	 * SYSC RST_RSM_B signal need to be asserted before turning off the
>   	 * power to the PHY.
>   	 */
> -	regmap_update_bits(host->sysc, RZG3S_SYS_PCIE_RST_RSM_B,
> -			   RZG3S_SYS_PCIE_RST_RSM_B_MASK,
> -			   FIELD_PREP(RZG3S_SYS_PCIE_RST_RSM_B_MASK, 0));
> +	rzg3s_sysc_config_func(sysc, RZG3S_SYSC_FUNC_ID_RST_RSM_B, 0);
>   port_refclk_put:
>   	clk_put(host->port.refclk);
>   
> @@ -1619,7 +1685,7 @@ static int rzg3s_pcie_suspend_noirq(struct device *dev)
>   	struct rzg3s_pcie_host *host = dev_get_drvdata(dev);
>   	const struct rzg3s_pcie_soc_data *data = host->data;
>   	struct rzg3s_pcie_port *port = &host->port;
> -	struct regmap *sysc = host->sysc;
> +	struct rzg3s_sysc *sysc = host->sysc;
>   	int ret;
>   
>   	ret = pm_runtime_put_sync(dev);
> @@ -1638,9 +1704,7 @@ static int rzg3s_pcie_suspend_noirq(struct device *dev)
>   	if (ret)
>   		goto cfg_resets_restore;
>   
> -	ret = regmap_update_bits(sysc, RZG3S_SYS_PCIE_RST_RSM_B,
> -				 RZG3S_SYS_PCIE_RST_RSM_B_MASK,
> -				 FIELD_PREP(RZG3S_SYS_PCIE_RST_RSM_B_MASK, 0));
> +	ret = rzg3s_sysc_config_func(sysc, RZG3S_SYSC_FUNC_ID_RST_RSM_B, 0);
>   	if (ret)
>   		goto power_resets_restore;
>   
> @@ -1663,12 +1727,10 @@ static int rzg3s_pcie_resume_noirq(struct device *dev)
>   {
>   	struct rzg3s_pcie_host *host = dev_get_drvdata(dev);
>   	const struct rzg3s_pcie_soc_data *data = host->data;
> -	struct regmap *sysc = host->sysc;
> +	struct rzg3s_sysc *sysc = host->sysc;
>   	int ret;
>   
> -	ret = regmap_update_bits(sysc, RZG3S_SYS_PCIE_RST_RSM_B,
> -				 RZG3S_SYS_PCIE_RST_RSM_B_MASK,
> -				 FIELD_PREP(RZG3S_SYS_PCIE_RST_RSM_B_MASK, 1));
> +	ret = rzg3s_sysc_config_func(sysc, RZG3S_SYSC_FUNC_ID_RST_RSM_B, 1);
>   	if (ret)
>   		return ret;
>   
> @@ -1697,9 +1759,7 @@ static int rzg3s_pcie_resume_noirq(struct device *dev)
>   	reset_control_bulk_assert(data->num_power_resets,
>   				  host->power_resets);
>   assert_rst_rsm_b:
> -	regmap_update_bits(sysc, RZG3S_SYS_PCIE_RST_RSM_B,
> -			   RZG3S_SYS_PCIE_RST_RSM_B_MASK,
> -			   FIELD_PREP(RZG3S_SYS_PCIE_RST_RSM_B_MASK, 0));
> +	rzg3s_sysc_config_func(sysc, RZG3S_SYSC_FUNC_ID_RST_RSM_B, 0);
>   	return ret;
>   }
>   
> @@ -1722,6 +1782,14 @@ static const struct rzg3s_pcie_soc_data rzg3s_soc_data = {
>   	.cfg_resets = rzg3s_soc_cfg_resets,
>   	.num_cfg_resets = ARRAY_SIZE(rzg3s_soc_cfg_resets),
>   	.init_phy = rzg3s_soc_pcie_init_phy,
> +	.sysc_info = {
> +		.functions = {
> +			[RZG3S_SYSC_FUNC_ID_RST_RSM_B] = {
> +				.offset = 0xd74,
> +				.mask = BIT(0),
> +			},
> +		},
> +	},
>   };
>   
>   static const struct of_device_id rzg3s_pcie_of_match[] = {


