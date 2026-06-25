Return-Path: <devicetree+bounces-315860-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id YkHYDLSmPWrW5AgAu9opvQ
	(envelope-from <devicetree+bounces-315860-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 00:07:48 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CB5C76C8E1E
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 00:07:47 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=hjy1xYWq;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315860-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315860-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 45B953032CCA
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 22:07:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 43B1A36EAAB;
	Thu, 25 Jun 2026 22:07:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11BAB23BD06;
	Thu, 25 Jun 2026 22:07:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782425266; cv=none; b=eCGaKWldX3304VL1DllPhb2l7PWVMhi5DhRPy7AEnnPADdga7VyhZJr8SqOdZMRT4xsc4SMbkSUsH/a9asDm+UteVTNgfNRrx/vqPe52E/JF/9Lj0Oq0j7pBXi32su7yxdViYRu0ltGRwtCIqbaEJyFMvHwjx1eHNutvA97Oi1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782425266; c=relaxed/simple;
	bh=qCDpMwLTDIeSPpuR3zMygPU6yvWTi8PcKJhcFHiLkOc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=tLlKIrsGTsTBnHWD92bAxGUQaBjA77CI022Y99qctvFb48+kXXdoHjGhZVyTHdsi0qTQbMQpbjAonCyG5l6BJD3E3rlb/uvJPK0U6OGsBdsr8VlodhPi4n2zD1rj4THPb4rA4x5Via2c6p0n5Xokfzc6A8D+srQPIeBS8JMWa+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hjy1xYWq; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5B6F31F000E9;
	Thu, 25 Jun 2026 22:07:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782425264;
	bh=KxYoreQ5gBFj0fmljyLd+KEROjBUrWzYGafS1r3YZzY=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=hjy1xYWqeW7j7y/tTSJwGHVkRwyEZB06YqMY7cD62McLdcbSKpV4ye3Kr3NFwnbfH
	 /fKrZ8UPsfmj2CTGZwmmZsr6oZBobPFb1Th/ddHyi0rbUmsdWk/hY4YlWisX0BH5dp
	 VswZjJh1F1Q7w8wlvwASDLBcRooUEPz5G06ukARLF8FTNkYw6a7mb/OYPJTu5li3Rk
	 bv+1ZtWg2Cu6LXPJ2t/TbmPiMCPZhBuCeWsmjef3yxnyDJm2jdsH3HHh90SceVjWPm
	 wCKjehkP8mTN3hkvubbo4j0L1dt1f7zqzLfWIUAWGKre+EsXcgn7cf1tEmyCzmFb9e
	 0c4EIzjw/L4yA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 4/4] PCI: mediatek-gen3: Add 2-lanes mode support for
 Airoha AN7581
Reply-To: sashiko-reviews@lists.linux.dev
To: "Christian Marangi" <ansuelsmth@gmail.com>
Cc: linux-pci@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260625215741.3253212-5-ansuelsmth@gmail.com>
References: <20260625215741.3253212-1-ansuelsmth@gmail.com>
 <20260625215741.3253212-5-ansuelsmth@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 25 Jun 2026 22:07:43 +0000
Message-Id: <20260625220744.5B6F31F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:ansuelsmth@gmail.com,m:linux-pci@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-315860-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,vger.kernel.org:from_smtp,lists.linux.dev:replyto];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CB5C76C8E1E

Thank you for your contribution! Sashiko AI review found 4 potential issue(=
s) to consider:

New issues:
- [High] Calling devm_ioremap_resource() inside the .power_up() callback br=
eaks system resume with -EBUSY.
- [High] Unvalidated num_lanes > 2 causes a NULL pointer dereference in the=
 hardware configuration loop.
- [High] Missing clock disable on error path in mtk_pcie_en7581_power_up().

Pre-existing issues:
- [High] The return value of pm_runtime_get_sync() is ignored, leading to h=
ardware access on suspended devices.
--

commit c4659641288856a22fb57ae4fe5c48d43375cff0
Author: Christian Marangi <ansuelsmth@gmail.com>

PCI: mediatek-gen3: Add 2-lanes mode support for Airoha AN7581

This commit adds 2-lanes mode support for the Airoha AN7581 SoC by
configuring the PCIe MUX in the SCU register. It introduces secondary PCIe
MAC memory mapping, SCU regmap parsing, and additional PERSTOUT reset logic.

> diff --git a/drivers/pci/controller/pcie-mediatek-gen3.c b/drivers/pci/co=
ntroller/pcie-mediatek-gen3.c
> index b0accd8285892..f750759bbc1d8 100644
> --- a/drivers/pci/controller/pcie-mediatek-gen3.c
> +++ b/drivers/pci/controller/pcie-mediatek-gen3.c

[ ... ]

> @@ -955,12 +974,29 @@ static int mtk_pcie_parse_port(struct mtk_gen3_pcie=
 *pcie)
>  static int mtk_pcie_en7581_power_up(struct mtk_gen3_pcie *pcie)
>  {
>  	struct pci_host_bridge *host =3D pci_host_bridge_from_priv(pcie);
> +	unsigned int num_lanes =3D max(1, pcie->num_lanes);
>  	struct device *dev =3D pcie->dev;
>  	struct resource_entry *entry;
>  	struct regmap *pbus_regmap;
>  	u32 val, args[2], size;
>  	resource_size_t addr;
> -	int err;
> +	int i, err;
> +
> +	if (num_lanes =3D=3D 2) {
> +		struct platform_device *pdev =3D to_platform_device(dev);
> +		struct resource *regs;
> +
> +		regs =3D platform_get_resource_byname(pdev, IORESOURCE_MEM, "sec-pcie-=
mac");
> +		if (!regs)
> +			return -EINVAL;
> +		pcie->sec_base =3D devm_ioremap_resource(dev, regs);

[Severity: High]
Since mtk_pcie_en7581_power_up() is assigned as the .power_up callback and
executes during both probe and resume_noirq(), won't calling
devm_ioremap_resource() here cause a conflict on system resume?

The devm-managed resources persist across suspend/resume cycles, so
devm_request_mem_region() will detect a conflict and cause
devm_ioremap_resource() to return -EBUSY. Could this mapping be moved
to the probe path, such as mtk_pcie_parse_port(), to avoid resume failures?

> +		if (IS_ERR(pcie->sec_base))
> +			return dev_err_probe(dev, PTR_ERR(pcie->sec_base), "failed to map sec=
ondary register base\n");

[ ... ]

> @@ -1024,34 +1060,60 @@ static int mtk_pcie_en7581_power_up(struct mtk_ge=
n3_pcie *pcie)
>  	pm_runtime_enable(dev);
>  	pm_runtime_get_sync(dev);

[Severity: High]
This is a pre-existing issue, but should the return value
of pm_runtime_get_sync() be checked?

If the device power domain fails to transition to an active state,
pm_runtime_get_sync() will return a negative error code. Proceeding to acce=
ss
registers on suspended hardware could trigger a synchronous external abort =
or
system crash.

> -	val =3D FIELD_PREP(PCIE_VAL_LN0_DOWNSTREAM, 0x47) |
> -	      FIELD_PREP(PCIE_VAL_LN1_DOWNSTREAM, 0x47) |
> -	      FIELD_PREP(PCIE_VAL_LN0_UPSTREAM, 0x41) |
> -	      FIELD_PREP(PCIE_VAL_LN1_UPSTREAM, 0x41);
> -	writel_relaxed(val, pcie->base + PCIE_EQ_PRESET_01_REG);

[ ... ]

> +	/* Wait for refclk to stabilize */
>  	msleep(PCIE_T_PVPERL_MS);
> =20
> +	/* Configure all the lines to the same EQ config */
> +	for (i =3D 0; i < num_lanes; i++) {
> +		void __iomem *base =3D pcie->base;
> +
> +		if (i =3D=3D 1)
> +			base =3D pcie->sec_base;
> +
> +		val =3D FIELD_PREP(PCIE_VAL_LN0_DOWNSTREAM, 0x47) |
> +			FIELD_PREP(PCIE_VAL_LN1_DOWNSTREAM, 0x47) |
> +			FIELD_PREP(PCIE_VAL_LN0_UPSTREAM, 0x41) |
> +			FIELD_PREP(PCIE_VAL_LN1_UPSTREAM, 0x41);
> +		writel_relaxed(val, base + PCIE_EQ_PRESET_01_REG);

[Severity: High]
If the Device Tree specifies a valid num-lanes value greater than 2 (e.g.,
4 or 8), will this loop dereference a NULL pointer?

Earlier in this function, pcie->sec_base is exclusively mapped when
num_lanes =3D=3D 2. If num_lanes is greater than 2, pcie->sec_base remains =
NULL.
When i =3D=3D 1, base becomes NULL, and writel_relaxed() will panic. Should
there be explicit bounds validation before writing to sec_base?

> +		val =3D PCIE_K_PHYPARAM_QUERY | PCIE_K_QUERY_TIMEOUT |
> +			FIELD_PREP(PCIE_K_PRESET_TO_USE_16G, 0x80) |
> +			FIELD_PREP(PCIE_K_PRESET_TO_USE, 0x2) |
> +			FIELD_PREP(PCIE_K_FINETUNE_MAX, 0xf);
> +		writel_relaxed(val, base + PCIE_PIPE4_PIE8_REG);
> +	}
> +
> +	/* Deassert PERSTOUT for all relevant lines */
> +	err =3D reset_control_bulk_deassert(MAX_NUM_PERSTOUT_RESETS,
> +					  pcie->perstout_resets);
> +	if (err) {
> +		dev_err(dev, "failed to deassert PERSTOUTs\n");
> +		goto err_perstout_assert;
> +	}
> +
>  	return 0;
> =20
> -err_clk_prepare_enable:
> +err_perstout_assert:
>  	pm_runtime_put_sync(dev);
>  	pm_runtime_disable(dev);

[Severity: High]
If reset_control_bulk_deassert() fails, won't jumping to this label leak
the clock prepare/enable references?

The function successfully enables clocks earlier with
clk_bulk_prepare_enable(), but err_perstout_assert entirely omits calling
clk_bulk_disable_unprepare(), which will leave the hardware clocks
permanently running.

>  	reset_control_bulk_assert(pcie->soc->phy_resets.num_resets,
>  				  pcie->phy_resets);

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260625215741.3253=
212-1-ansuelsmth@gmail.com?part=3D4

