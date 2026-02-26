Return-Path: <devicetree+bounces-268787-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WEkQA10toGm0fwQAu9opvQ
	(envelope-from <devicetree+bounces-268787-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 12:24:13 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 64C811A4FF7
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 12:24:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F283B306C528
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 11:24:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB035363C65;
	Thu, 26 Feb 2026 11:24:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="O+8m/ZRM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f49.google.com (mail-wm1-f49.google.com [209.85.128.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24CFC322527
	for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 11:24:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772105046; cv=none; b=h5honzjhtGbBZCL9eTFZjqkhxAwpfHUL/Fct8X2tQJnr5cVuykeRI2ShHBcXxdN9cmWXBD1z5TxUnL0HbuSwq17og9ldr9MxQqta5UBxzi46UkE+zH+8HyxIRVt2Ve5a7SVYCXmxE4iTeWn74e7wBpaymqvERb1CAfhGb7OhFfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772105046; c=relaxed/simple;
	bh=mLiJ+QwtUIMO/U90BtG9NsiE+KI2FVAiaxNqJ6VeuAA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=kwG3n2W8+Jjtx8M4Vi8fIbmQ/mssU3phCBEDY8P+TMREba3fjXjDhQi2iODxpyamZO7U7mFo9muMgEmDDEm6QuGtSNERw4LYfGqMmqAgithxj6YcjSq00caQ3ZflfX3z52SuvrseGGW4ZRUYH2CRXYDIxqS2fJzt6NWbEON4WRE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=O+8m/ZRM; arc=none smtp.client-ip=209.85.128.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f49.google.com with SMTP id 5b1f17b1804b1-48374014a77so8252405e9.3
        for <devicetree@vger.kernel.org>; Thu, 26 Feb 2026 03:24:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1772105042; x=1772709842; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=inwg4dgOLH6B4vAuiFR5GhIuEtqJQildLVA27yf1Dek=;
        b=O+8m/ZRMNgUvpEHpvKLAZgBoCsgLSYyRDRdry74JuYpBiYTmnGJbo/w2n9HYWBPvS4
         Lv4cPZZSmy9eTCtqCbkrdmlBaSDeWM43pSS/ao94Hcm1KZxlC5vRKOQXuEhgp4ml+j0k
         pq/ZqhdgFeZkJLtAcHmMg6GmmWRGDnLgGmbTftn64PfWsaVlhIZwgp6pfjxkcRXiDM4v
         M/EA7JssrJ33Im3591WoH8EDLAUxHD441nggZQtSLgaEXBrWDcnWjpNGxrs6FO2VtBR0
         4Ka5uadS1u8wWSUWxavZ2Yi+xw6rdZasPjngSLar/+jEtQ7u1TFFvlDwfXOin1H3/UK8
         sfFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772105042; x=1772709842;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=inwg4dgOLH6B4vAuiFR5GhIuEtqJQildLVA27yf1Dek=;
        b=cM3jJVgiHT9hhJPOkIYC8rsY98F0ue0KUwaicnbfbtASYBqpl4aHPA17scc0di8G5C
         gsG4RWGTSTVPeAqYVvyEHDELBjvMbl6QiTgtYcqcAotrmbOgz4cD0d8xxNzIMjEfUtTB
         Por2kP6Ij8NAAh48f+lQUOIOXWiOVZkhPIJumynxOxHiRLjCMbyMkialT2FmsdtuLkGU
         aShBx0aynUf6zjyaqZLSkgZOzsA7CeRURqDfF3NI3XqEGdUyvdnd+QtsODKlZmJ0Q+kZ
         iwB267sW1uKTo9E9lfgxJEBqthqHWyyRhROVUNVqv45y/ZCVV4WCRW6eCeszip2zcHs/
         n0xQ==
X-Forwarded-Encrypted: i=1; AJvYcCW9nibj0mAbESc9kqf3Mm75tABgarYZc4jd64BbkstokC6dsRRTGg5ciZL++BesaWCzj8BMqfvc5yvC@vger.kernel.org
X-Gm-Message-State: AOJu0YxL4UyXE+juqsqwiAGTRmC2c8IsCUyjTC3xJTzxAN5EwvKVIoCB
	ibyKFMOqhzQw2Si0L3v08y2PnLAkiWUwK4ViYGGzG7eV1Dybcmj3R7a4By/BWNy+eBw=
X-Gm-Gg: ATEYQzyWpiVAuts5lfRjMz4cvTRO8RFNRhEohbhKzUkofK7n9wibd97KwVYRdjL8VRZ
	qYo4HmpIXVGjJQr6kg5g3eTCaNdRt5L5MvzwZoVLtf20B401IhCClXJkXboLW1MMEOYDGdE2inH
	oi6da25oBAM9B6n69qKwAednjqU3qTm81OckL90gvDcDzBH0iy+GG4ssTEG0/WPa4z5oNnTS4a3
	CwlUlMTWfGU38KRs/Yqz5PgzfpLzZl3Mzg7cHSjMLQwqISqdibWvHE3LFVCZIVY2wNrYnRFZ7k1
	4xlt5+qki9k/Qe1UZg7S/32HbQEiN6s9QvZmqLj7vsFCzdXhxpsZEbxbd6QwWXvZ/BsGPwh4Z4a
	m0LWAI8iHDuunNFYEMeNk/BxUSZXw6qBZHhAQfMCoBQIgYoBBcbG03yj7c1Ro2QjErpbFmavfII
	FUFe/zDA9jH0Gu5eixQ7ByftTKb7BLQw==
X-Received: by 2002:a05:600c:4e48:b0:483:709e:f238 with SMTP id 5b1f17b1804b1-483a95f71b9mr315350635e9.29.1772105042074;
        Thu, 26 Feb 2026 03:24:02 -0800 (PST)
Received: from [192.168.50.4] ([82.78.167.73])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-483c3b89c99sm37586075e9.15.2026.02.26.03.24.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 Feb 2026 03:24:01 -0800 (PST)
Message-ID: <84e17a48-9d25-4172-91c6-8da4f27ac104@tuxon.dev>
Date: Thu, 26 Feb 2026 13:23:59 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v6 13/16] PCI: rzg3s-host: Add support for RZ/G3E PCIe
 controller
To: John Madieu <john.madieu.xa@bp.renesas.com>,
 claudiu.beznea.uj@bp.renesas.com, lpieralisi@kernel.org,
 kwilczynski@kernel.org, mani@kernel.org, geert+renesas@glider.be,
 krzk+dt@kernel.org
Cc: robh@kernel.org, bhelgaas@google.com, conor+dt@kernel.org,
 magnus.damm@gmail.com, biju.das.jz@bp.renesas.com,
 linux-pci@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
 devicetree@vger.kernel.org, linux-clk@vger.kernel.org, john.madieu@gmail.com
References: <20260219223542.6364-1-john.madieu.xa@bp.renesas.com>
 <20260219223542.6364-14-john.madieu.xa@bp.renesas.com>
Content-Language: en-US
From: Claudiu Beznea <claudiu.beznea@tuxon.dev>
In-Reply-To: <20260219223542.6364-14-john.madieu.xa@bp.renesas.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[tuxon.dev:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-268787-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DMARC_NA(0.00)[tuxon.dev];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,google.com,gmail.com,bp.renesas.com,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[17];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[tuxon.dev:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[claudiu.beznea@tuxon.dev,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.995];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 64C811A4FF7
X-Rspamd-Action: no action

Hi, John,

On 2/20/26 00:35, John Madieu wrote:
> Add support for the PCIe controller found in RZ/G3E SoCs to the existing
> RZ/G3S PCIe host driver. The RZ/G3E PCIe controller is similar to the
> RZ/G3S's, with the following key differences:
> 
>   - Supports PCIe Gen3 (8.0 GT/s) link speeds alongside Gen2 (5.0 GT/s)
>   - Uses a different reset control mechanism via AXI registers instead
>     of the Linux reset framework
>   - Requires specific SYSC configuration for link state control and
>     Root Complex mode selection
> 
> Signed-off-by: John Madieu <john.madieu.xa@bp.renesas.com>
> ---
> 
> Changes:
> 
> v6:
>    - Use rzg3s_sysc_config_func() with per-function calls instead of
>      rzg3s_sysc_config() with -1 skip pattern, as suggested by Claudiu
>    - Extend enum rzg3s_sysc_func_id with L1_ALLOW and MODE entries
>    - Use regmap_update_bits() consistently for all SYSC accesses
>    - Shorten comment to "Put controller in RC mode and de-assert RST_RSM_B."
>    - Drop "Enable ASPM L1 transition" comment (function ID is self-documenting)
> 
> v5:
>    - Introduce rzg3s_sysc_config() helper for sys configuration
> 
> v4: No changes
> v3: No changes
> 
>   drivers/pci/controller/pcie-rzg3s-host.c | 98 ++++++++++++++++++++++++
>   1 file changed, 98 insertions(+)
> 
> diff --git a/drivers/pci/controller/pcie-rzg3s-host.c b/drivers/pci/controller/pcie-rzg3s-host.c
> index 413978feba1a..021b01746157 100644
> --- a/drivers/pci/controller/pcie-rzg3s-host.c
> +++ b/drivers/pci/controller/pcie-rzg3s-host.c
> @@ -111,6 +111,16 @@
>   #define RZG3S_PCI_PERM_CFG_HWINIT_EN		BIT(2)
>   #define RZG3S_PCI_PERM_PIPE_PHY_REG_EN		BIT(1)
>   
> +/* RZ/G3E specific registers */
> +#define RZG3E_PCI_RESET				0x310
> +#define RZG3E_PCI_RESET_RST_OUT_B		BIT(6)
> +#define RZG3E_PCI_RESET_RST_PS_B		BIT(5)
> +#define RZG3E_PCI_RESET_RST_LOAD_B		BIT(4)
> +#define RZG3E_PCI_RESET_RST_CFG_B		BIT(3)
> +#define RZG3E_PCI_RESET_RST_RSM_B		BIT(2)
> +#define RZG3E_PCI_RESET_RST_GP_B		BIT(1)
> +#define RZG3E_PCI_RESET_RST_B			BIT(0)

Currently, all the registers are prefixed with RZG3S. I know these registers are 
RZG3E specific but the upcoming SoCs (RZ/V2H, RZ/T2N, RZ/N2H) that will use this 
driver, have these registers implemented as well. So, please keep these defines 
prefixed with RZG3S to have a unified way across driver and let's keep only the 
SoC specific data prefixed with SoC specific names.

To avoid any confusion, we could also drop the comment before these register 
defines.

> +
>   #define RZG3S_PCI_MSIRE(id)			(0x600 + (id) * 0x10)
>   #define RZG3S_PCI_MSIRE_ENA			BIT(0)
>   
> @@ -184,10 +194,14 @@ struct rzg3s_sysc_function {
>   /**
>    * enum rzg3s_sysc_func_id - System controller function IDs
>    * @RZG3S_SYSC_FUNC_ID_RST_RSM_B: RST_RSM_B SYSC function ID
> + * @RZG3S_SYSC_FUNC_ID_L1_ALLOW: L1 allow SYSC function ID
> + * @RZG3S_SYSC_FUNC_ID_MODE: Mode SYSC function ID
>    * @RZG3S_SYSC_FUNC_ID_MAX: Max SYSC function ID
>    */
>   enum rzg3s_sysc_func_id {
>   	RZG3S_SYSC_FUNC_ID_RST_RSM_B,
> +	RZG3S_SYSC_FUNC_ID_L1_ALLOW,
> +	RZG3S_SYSC_FUNC_ID_MODE,
>   	RZG3S_SYSC_FUNC_ID_MAX,
>   };
>   
> @@ -1135,6 +1149,49 @@ static int rzg3s_config_deinit(struct rzg3s_pcie_host *host)
>   					 host->cfg_resets);
>   }
>   
> +/* RZ/G3E SoC-specific config implementations */

There is no similar comment on RZ/G3S SoC specific config implementation. I 
would drop it as the function names and their usage are meaningful enough.

> +static void rzg3e_pcie_config_pre_init(struct rzg3s_pcie_host *host)

This function is prefixed with rzg3e_pcie while the other ones on this section 
are prefixed with rzg3e only. Please use a unified way of defining them. I would 
go for rzg3e_pcie_config_{pre_init, deinit, post_init}(). Also, please follow 
the same patter for the RZ/G3S ones, e.g.
rzg3s_pcie_config_{post_init, deinit}(). Currently they are prefixed only with 
the SoC name.

> +{
> +	/*
> +	 * De-assert LOAD_B and CFG_B during configuration phase.
> +	 * These are part of the RZ/G3E reset register, not reset framework.
> +	 * Other reset bits remain asserted until config_post_init.
> +	 */

I think this comment could be reduced to:

/* De-assert LOAD_B and CFG_B */

Statement "These are part of the RZ/G3E reset register, not reset framework" has 
been mentioned in patch description already.

Also, about this "Other reset bits remain asserted until config_post_init": this 
  is the rationale for which the resets are handled in 3 different functions, in 
3 different steps, so, I think it can be dropped as well.

> +	rzg3s_pcie_update_bits(host->axi, RZG3E_PCI_RESET,
> +			       RZG3E_PCI_RESET_RST_LOAD_B | RZG3E_PCI_RESET_RST_CFG_B,
> +			       RZG3E_PCI_RESET_RST_LOAD_B | RZG3E_PCI_RESET_RST_CFG_B);

PCI subsystem is using 80 char lines. This function could be adjusted like the 
above to follow this rule and keep the code more compact:

static void rzg3e_pcie_config_pre_init(struct rzg3s_pcie_host *host)
{
	u32 mask = RZG3E_PCI_RESET_RST_LOAD_B | RZG3E_PCI_RESET_RST_CFG_B;

	/*
	 * De-assert LOAD_B and CFG_B during configuration phase.
	 * These are part of the RZ/G3E reset register, not reset framework.
	 * Other reset bits remain asserted until config_post_init.
	 */
	rzg3s_pcie_update_bits(host->axi, RZG3E_PCI_RESET, mask, mask);
}

> +}
> +
> +static int rzg3e_config_deinit(struct rzg3s_pcie_host *host)
> +{
> +	writel_relaxed(0, host->axi + RZG3E_PCI_RESET);
> +	return 0;
> +}
> +
> +static int rzg3e_config_post_init(struct rzg3s_pcie_host *host)
> +{
> +	/* De-assert PS_B, GP_B, RST_B */
> +	rzg3s_pcie_update_bits(host->axi, RZG3E_PCI_RESET,
> +			       RZG3E_PCI_RESET_RST_PS_B | RZG3E_PCI_RESET_RST_GP_B |
> +			       RZG3E_PCI_RESET_RST_B,
> +			       RZG3E_PCI_RESET_RST_PS_B | RZG3E_PCI_RESET_RST_GP_B |
> +			       RZG3E_PCI_RESET_RST_B);

Same here, function could be written as:

static int rzg3e_config_post_init(struct rzg3s_pcie_host *host)
{
	u32 mask = RZG3E_PCI_RESET_RST_PS_B | RZG3E_PCI_RESET_RST_GP_B |
		   RZG3E_PCI_RESET_RST_B;

	/* De-assert PS_B, GP_B, RST_B */
	rzg3s_pcie_update_bits(host->axi, RZG3E_PCI_RESET, mask, mask);

	/*
	 * According to the RZ/G3E HW manual (Rev.1.15, Table 6.6-130
	 * Initialization Procedure (RC)), hardware requires >= 500us delay
	 * before final reset deassert.
	 */
	fsleep(500);

	/* De-assert OUT_B and RSM_B to complete reset sequence */
	mask = RZG3E_PCI_RESET_RST_OUT_B | RZG3E_PCI_RESET_RST_RSM_B;
	rzg3s_pcie_update_bits(host->axi, RZG3E_PCI_RESET, mask, mask);

	return 0;
}


> +
> +	/*
> +	 * According to the RZ/G3E HW manual (Rev.1.15, Table 6.6-130
> +	 * Initialization Procedure (RC)), hardware requires >= 500us delay
> +	 * before final reset deassert.
> +	 */
> +	fsleep(500);
> +
> +	/* De-assert OUT_B and RSM_B to complete reset sequence */

/* De-assert OUT_B and RSM_B */

should be enough.

> +	rzg3s_pcie_update_bits(host->axi, RZG3E_PCI_RESET,
> +			       RZG3E_PCI_RESET_RST_OUT_B | RZG3E_PCI_RESET_RST_RSM_B,
> +			       RZG3E_PCI_RESET_RST_OUT_B | RZG3E_PCI_RESET_RST_RSM_B);
> +
> +	return 0;
> +}
> +
>   static void rzg3s_pcie_irq_init(struct rzg3s_pcie_host *host)
>   {
>   	/*
> @@ -1320,6 +1377,12 @@ static int rzg3s_pcie_host_init(struct rzg3s_pcie_host *host)
>   	if (ret)
>   		goto config_deinit;
>   
> +	/* Enable ASPM L1 transition for SoCs that use it */
> +	ret = rzg3s_sysc_config_func(host->sysc,
> +				     RZG3S_SYSC_FUNC_ID_L1_ALLOW, 1);
> +	if (ret)
> +		goto config_deinit;

This should jump to config_deinit_and_refclk as rzg3s_pcie_host_init_port() call 
above enables the port reference clock.

> +
>   	/* Initialize the interrupts */
>   	rzg3s_pcie_irq_init(host);
>   
> @@ -1667,6 +1730,11 @@ static int rzg3s_pcie_probe(struct platform_device *pdev)
>   		goto port_refclk_put;
>   	}
>   
> +	/* Put controller in RC mode and de-assert RST_RSM_B. */

/* Put controller in RC mode */

should be enough as this is what the above call is doing. The RST_RSM_B is 
handled by the next rzg3s_sysc_config_func() call above and the macro name for 
function ID is significant enough.

> +	ret = rzg3s_sysc_config_func(sysc, RZG3S_SYSC_FUNC_ID_MODE, 1);
> +	if (ret)
> +		goto port_refclk_put;
> +
>   	ret = rzg3s_sysc_config_func(sysc, RZG3S_SYSC_FUNC_ID_RST_RSM_B, 1);
>   	if (ret)
>   		goto port_refclk_put;
> @@ -1781,6 +1849,10 @@ static int rzg3s_pcie_resume_noirq(struct device *dev)
>   	if (ret)
>   		return ret;
>   
> +	ret = rzg3s_sysc_config_func(sysc, RZG3S_SYSC_FUNC_ID_MODE, 1);
> +	if (ret)
> +		return ret;

This should jump to assert_rst_rsm_b;

But please keep the same order b/w MODE and RST_RSM_B setup as in probe and 
there should be no need for jump.

Thank you,
Claudiu

> +
>   	ret = rzg3s_pcie_power_resets_deassert(host);
>   	if (ret)
>   		goto assert_rst_rsm_b;
> @@ -1841,11 +1913,37 @@ static const struct rzg3s_pcie_soc_data rzg3s_soc_data = {
>   	},
>   };
>   
> +static const char * const rzg3e_soc_power_resets[] = { "aresetn" };
> +
> +static const struct rzg3s_pcie_soc_data rzg3e_soc_data = {
> +	.power_resets = rzg3e_soc_power_resets,
> +	.num_power_resets = ARRAY_SIZE(rzg3e_soc_power_resets),
> +	.config_pre_init = rzg3e_pcie_config_pre_init,
> +	.config_post_init = rzg3e_config_post_init,
> +	.config_deinit = rzg3e_config_deinit,
> +	.sysc_info = {
> +		.functions = {
> +			[RZG3S_SYSC_FUNC_ID_L1_ALLOW] = {
> +				.offset = 0x1020,
> +				.mask = BIT(0),
> +			},
> +			[RZG3S_SYSC_FUNC_ID_MODE] = {
> +				.offset = 0x1024,
> +				.mask = BIT(0),
> +			},
> +		},
> +	},
> +};
> +
>   static const struct of_device_id rzg3s_pcie_of_match[] = {
>   	{
>   		.compatible = "renesas,r9a08g045-pcie",
>   		.data = &rzg3s_soc_data,
>   	},
> +	{
> +		.compatible = "renesas,r9a09g047-pcie",
> +		.data = &rzg3e_soc_data,
> +	},
>   	{}
>   };
>   


