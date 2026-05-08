Return-Path: <devicetree+bounces-294608-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wGojIEsa/mmQmwAAu9opvQ
	(envelope-from <devicetree+bounces-294608-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 08 May 2026 19:15:55 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D1E7D4F9DAC
	for <lists+devicetree@lfdr.de>; Fri, 08 May 2026 19:15:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2F09530315DA
	for <lists+devicetree@lfdr.de>; Fri,  8 May 2026 17:14:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E19B740756D;
	Fri,  8 May 2026 17:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AYyH+Wq8"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF462402B84
	for <devicetree@vger.kernel.org>; Fri,  8 May 2026 17:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778260473; cv=none; b=Q8ySQLQpiGeYhWrsDhx6wX5KOz/Au0GS9lCUt4JbxgU/1f4jl4x7P/PsGU4qI2VYxpNlSp9jWu/+ih10svY/XfinMWud4hHbqGLnVysqx/E2K8D6fwumgnfd0c0tUlQxlmDo4FJXzc3O2Vfa3c8qKeeeRAI3Ut00Xl9xz+/uAOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778260473; c=relaxed/simple;
	bh=2tjbnqQZfvtkK+SwW5Wi0EQJky6rQOJdXRkg+Nc8w8w=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=qMGwgkmEXoN+zFQ2QwdNmRJSwGoPLt0bWRT1V1LVECT4+orYafb7PYE81Bg08JC4qgrq3bh4C7Xa4OeCI0pPCHPQG6D9LSbcIAlTAIbxOH/sOZ4Idr8xW2cgcgNzVKvf0TNxRy4deA3PzEag9AkEhMvPdSILUC/F9/6Kk/NzzIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AYyH+Wq8; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 20F87C2BCC7;
	Fri,  8 May 2026 17:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778260473;
	bh=2tjbnqQZfvtkK+SwW5Wi0EQJky6rQOJdXRkg+Nc8w8w=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=AYyH+Wq8CNkwsglVxRexTlmWhmEgOkztKZ24pTD/+uQ3rGLEgJ2TroG+fRU3XHJpa
	 KIrdLl/alRrflrjDBHiTmG1zJqayDN+Lrp5sTk3/79lQYTkt+KlCAK42GYRjqmwhQs
	 yzsm1mgJmf2Q8MsY01LqPR2HpbSSUOEHP5dY+S9903ZYSApic5THAxulHb233W0nig
	 JURIj2Od6uskC4uJY45SggLBBwLRENRbviYorgXEHnJRl8mXOmio2136sm8IKy3FoM
	 NivYIH7WnCzd6s0ANtkJOYtTOnpprMDo3WIH53SwJ4ei3fIHLUj/4PbxEG7HMMFlnp
	 6wktD1q7SLmEg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH net v1 2/2] net: stmmac: eic7700: fix delay step
 calculation and ensure safe register initialization
Reply-To: sashiko@lists.linux.dev
To: lizhi2@eswincomputing.com
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org, krzk+dt@kernel.org
In-Reply-To: <20260507083214.192-1-lizhi2@eswincomputing.com>
References: <20260507083214.192-1-lizhi2@eswincomputing.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 08 May 2026 17:14:32 +0000
Message-Id: <20260508171433.20F87C2BCC7@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: D1E7D4F9DAC
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sashiko.dev:url,lists.linux.dev:replyto,eswincomputing.com:email];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-294608-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	FROM_NO_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_NONE(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_FIVE(0.00)[5];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Critical] Unconditional ABI breakage with older Device Trees
--

commit 8a3e405f7bc380e02d2d33cd362d35a040182e99
Author: Zhi Li <lizhi2@eswincomputing.com>

net: stmmac: eic7700: fix delay step calculation and ensure safe register i=
nitialization

This commit updates the EIC7700 DWMAC glue driver to match hardware delay
granularity and moves HSP CSR configuration to the initialization path. It
also introduces new offsets and clears the TXD/RXD delay control registers
during setup to ensure deterministic RGMII timing.

> diff --git a/drivers/net/ethernet/stmicro/stmmac/dwmac-eic7700.c b/driver=
s/net/ethernet/stmicro/stmmac/dwmac-eic7700.c
> --- a/drivers/net/ethernet/stmicro/stmmac/dwmac-eic7700.c
> +++ b/drivers/net/ethernet/stmicro/stmmac/dwmac-eic7700.c
[ ... ]
> +	ret =3D of_property_read_u32_index(pdev->dev.of_node,
> +					 "eswin,hsp-sp-csr",
> +					 3, &dwc_priv->eth_clk_offset);
> +	if (ret)
> +		return dev_err_probe(&pdev->dev, ret,
> +				     "can't get eth_clk_offset\n");
> =20
> +	ret =3D of_property_read_u32_index(pdev->dev.of_node,
> +					 "eswin,hsp-sp-csr",
> +					 4, &dwc_priv->eth_txd_offset);
> +	if (ret)
> +		return dev_err_probe(&pdev->dev, ret,
> +				     "can't get eth_txd_offset\n");

Will this break compatibility with older device trees that only provide 3
indices for the eswin,hsp-sp-csr property?

If the driver boots with an older device tree, of_property_read_u32_index
will return an error when attempting to read index 4, causing the probe to
fail entirely and resulting in a loss of network functionality.

Could the new offsets at index 4 and 5 be made optional, or handled with a
backward-compatible fallback, to preserve the device tree ABI?

> +	ret =3D of_property_read_u32_index(pdev->dev.of_node,
> +					 "eswin,hsp-sp-csr",
> +					 5, &dwc_priv->eth_rxd_offset);
> +	if (ret)
> +		return dev_err_probe(&pdev->dev, ret,
> +				     "can't get eth_rxd_offset\n");

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260507083037.152-=
1-lizhi2@eswincomputing.com?part=3D2

