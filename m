Return-Path: <devicetree+bounces-316024-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id kJnaDS5HPmoLCgkAu9opvQ
	(envelope-from <devicetree+bounces-316024-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 11:32:30 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 2BBFB6CBB6A
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 11:32:29 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=XiAFswy0;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316024-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-316024-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 125C33003737
	for <lists+devicetree@lfdr.de>; Fri, 26 Jun 2026 09:32:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFF6D30C168;
	Fri, 26 Jun 2026 09:32:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9710039934B;
	Fri, 26 Jun 2026 09:32:23 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782466344; cv=none; b=YJtgNwdrXF+sfK24mXr7szdZrxTtftFUz8Y/HzC8688ABxdTjqwFGeuASp+PcnKFI6xJX+9tLPwUKgIr00TPZKufNNneP/h9I/QH2CtnFSBjleR6VxCOnKgZgDYzj91JOsIJW3ou7xtg/Z/GD2gcpGmI5hKldXTOyW3moDTOGO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782466344; c=relaxed/simple;
	bh=ISETJgny0FhUBDWnCRGIvusL7DYxDMg1h3Myi/794yI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=D0beWEsLucPB9RkG/KmWaUPedZV6LvBBtbLm5IRAHvqShuCDkHMJLN16PPBEn+M9pBbiAHlrt7s4kNAQK7ZsRVkjR+szgJx8lVoGyyLK4sNNRB0EOggum4eoGKWp1vP9Jr/vqifMMf25PPe5Hjqa8KT9EWLeCUDr565aVRh/ZNo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XiAFswy0; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A977A1F000E9;
	Fri, 26 Jun 2026 09:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782466343;
	bh=xuaZxxUxiDkUsheq3lHvaYuGanzSsZ7TpmpR+u1/KAc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=XiAFswy0N70ie9A8+dn8NgxpP467+mzDNhDtxFPAxZK/Ru6P7gpLTCLyiEnajyXMz
	 yEXalNHOzt2UTIS8W5FK3W0yIdgGe1SK0UQQxmbGFfl3w6f14JXUPXRbXVXZqTvnPs
	 paDT1YJGf9ckDNJRCSeio/w7hEHAGCkYGxmANVNsqnFjUgRU8I1Iw4iLnlgIEw1vhJ
	 XR+6pG7Vdh7B6RKI6oKob4H48ZDBAR0bXIwGaqvruBhJvebYPtzQKCzjRQPj8YEL1m
	 l35U0vjIkPr1QetAPBQWVtaSuIMtHkwswolVaUTp/p9HGawpoLIkCu11i2TBD1fLSN
	 rUX9oezSRcAuA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 4/4] PCI: mediatek-gen3: Add 2-lanes mode support for
 Airoha AN7581
Reply-To: sashiko-reviews@lists.linux.dev
To: "Christian Marangi" <ansuelsmth@gmail.com>
Cc: linux-pci@vger.kernel.org, robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260626092029.3525264-5-ansuelsmth@gmail.com>
References: <20260626092029.3525264-1-ansuelsmth@gmail.com>
 <20260626092029.3525264-5-ansuelsmth@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 26 Jun 2026 09:32:22 +0000
Message-Id: <20260626093222.A977A1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:ansuelsmth@gmail.com,m:linux-pci@vger.kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-316024-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,lists.linux.dev:replyto,smtp.kernel.org:mid,sashiko.dev:url,vger.kernel.org:from_smtp];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2BBFB6CBB6A

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:

New issues:
- [High] Uninitialized stack variable `num_lanes` leads to unpredictable pr=
obe failures

Pre-existing issues:
- [High] The return value of `pm_runtime_get_sync()` is ignored, which can =
lead to hardware access on suspended devices.
--

commit b24fe645228ac8c1e16f2ba7617e18b13b23173d
Author: Christian Marangi <ansuelsmth@gmail.com>

PCI: mediatek-gen3: Add 2-lanes mode support for Airoha AN7581

This commit adds 2-lanes mode support for the Airoha AN7581 SoC by
configuring the PCIe MUX in the SCU register. It introduces logic to
parse the secondary PCIe MAC region and handle necessary PERSTOUT resets
for the newly supported lane configuration.

> diff --git a/drivers/pci/controller/pcie-mediatek-gen3.c b/drivers/pci/co=
ntroller/pcie-mediatek-gen3.c
> index b0accd8285892..14893cff135a1 100644
> --- a/drivers/pci/controller/pcie-mediatek-gen3.c
> +++ b/drivers/pci/controller/pcie-mediatek-gen3.c

[ ... ]

> @@ -949,18 +965,38 @@ static int mtk_pcie_parse_port(struct mtk_gen3_pcie=
 *pcie)
>  			pcie->num_lanes =3D num_lanes;
>  	}
> =20
> +	/* Map secondary PCIe for 2-lanes mode for EN7581 */
> +	if (num_lanes =3D=3D 2 && device_is_compatible(dev, "airoha,en7581-pcie=
")) {

[Severity: High]
If the num-lanes property is missing from the device tree,
of_property_read_u32() returns an error without modifying the num_lanes out=
put
parameter, leaving it uninitialized. If the stack memory happens to contain=
 2,
could this enter the block and fail the probe by returning -EINVAL since the
sec-pcie-mac resource would be missing in a 1-lane configuration?

Should this evaluate pcie->num_lanes instead?

> +		regs =3D platform_get_resource_byname(pdev, IORESOURCE_MEM, "sec-pcie-=
mac");
> +		if (!regs)
> +			return -EINVAL;
> +		pcie->sec_base =3D devm_ioremap_resource(dev, regs);

[ ... ]

> @@ -1024,33 +1073,47 @@ static int mtk_pcie_en7581_power_up(struct mtk_ge=
n3_pcie *pcie)
>  	pm_runtime_enable(dev);
>  	pm_runtime_get_sync(dev);

[Severity: High]
This is a pre-existing issue, but is it safe to ignore the return value of
pm_runtime_get_sync()?

If the runtime PM framework fails to power up or clock the device, accessing
hardware registers directly afterward might cause a synchronous external ab=
ort
and kernel panic on ARM platforms. The same pre-existing behavior is also
present in the legacy mtk_pcie_power_up() path.

> -	val =3D FIELD_PREP(PCIE_VAL_LN0_DOWNSTREAM, 0x47) |
> -	      FIELD_PREP(PCIE_VAL_LN1_DOWNSTREAM, 0x47) |
> -	      FIELD_PREP(PCIE_VAL_LN0_UPSTREAM, 0x41) |
> -	      FIELD_PREP(PCIE_VAL_LN1_UPSTREAM, 0x41);
> -	writel_relaxed(val, pcie->base + PCIE_EQ_PRESET_01_REG);
> -
> -	val =3D PCIE_K_PHYPARAM_QUERY | PCIE_K_QUERY_TIMEOUT |
> -	      FIELD_PREP(PCIE_K_PRESET_TO_USE_16G, 0x80) |
> -	      FIELD_PREP(PCIE_K_PRESET_TO_USE, 0x2) |
> -	      FIELD_PREP(PCIE_K_FINETUNE_MAX, 0xf);
> -	writel_relaxed(val, pcie->base + PCIE_PIPE4_PIE8_REG);
> -
>  	err =3D clk_bulk_prepare_enable(pcie->num_clks, pcie->clks);

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260626092029.3525=
264-1-ansuelsmth@gmail.com?part=3D4

