Return-Path: <devicetree+bounces-275591-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kLfqMSiutGmDrwAAu9opvQ
	(envelope-from <devicetree+bounces-275591-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 01:39:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C26828AFEF
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 01:39:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 3FE7A302960B
	for <lists+devicetree@lfdr.de>; Sat, 14 Mar 2026 00:39:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50FC92C375E;
	Sat, 14 Mar 2026 00:39:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CSMMdnS8"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 284EE1EBFE0;
	Sat, 14 Mar 2026 00:38:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773448740; cv=none; b=OKs8KZZ7bujmW22K+Ch172Y8mtURimJXGxgQJHjIaBnPdIeH//FO3LY0csFVxTNbpmcjbo4tFgVVkUrIp3iU1Veik3+qS3u4WmmfRuXGLZ55rCwshm4kd+UtUkT6J/Bkt5s/UZWr0yL6Aknx3/9h9FaL0XdweIPljWuI95GJPtg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773448740; c=relaxed/simple;
	bh=mkaGOENEa1gmtvrXYu8nQ+hbKTdiqqEtszypw75YmEo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nS0kG9cVGyi1m+jM5VHL92tVmuVSPX8V+9NOopIuf6wRtfWNKzpaGxmA5cWERGjeWW9PG2EvXuboW12DjVIQX+aGMYiy3ql1oepBTYz7J0nnSeYXwAOedVBGz2u5T1+7+Qe4sGAKaO+Z+aiyBWv1Em/OYT1x8zRrQRPnYRW41kA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CSMMdnS8; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 76799C19421;
	Sat, 14 Mar 2026 00:38:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773448739;
	bh=mkaGOENEa1gmtvrXYu8nQ+hbKTdiqqEtszypw75YmEo=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=CSMMdnS8V1wzMZQMhbCKNINtDMD9y6wXAU3MpkSL9L3U85rIfZE+OW8OFJ3DcdRBM
	 YdlMha2l9YYahxR4kj2FjM9EIsGgGKsjGe240rTgY0FgMVJZ5AYHRLTwGvMLccLVNR
	 sFz2WQNbn3o50gctD0mN1NXAuSglgXdq7HVcmkXMxw5GjT9mcelaYqR8Xsd8RMb8hK
	 owYs8LuW6U1eIxAPP2q7x9okaM4PPhYfZCdM2ZMaZLIFY9zjOyBOMEgHdIwdOD2yZb
	 nCB9x1UHtacCUygnKE9ucVaWoGCNHzYvZqhCViVk/gWDi/9RQutmV0b0MY/ZniJrZD
	 73jOsFDGNuOXw==
Date: Fri, 13 Mar 2026 19:38:58 -0500
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Cc: Lucas Stach <l.stach@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	devicetree@vger.kernel.org, Sascha Hauer <s.hauer@pengutronix.de>,
	linux-pci@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	linux-kernel@vger.kernel.org,
	Gustavo Pimentel <gustavo.pimentel@synopsys.com>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof =?utf-8?Q?Wilczy=C5=84ski?= <kwilczynski@kernel.org>,
	Manivannan Sadhasivam <mani@kernel.org>,
	Sherry Sun <sherry.sun@nxp.com>, Jingoo Han <jingoohan1@gmail.com>,
	Frank Li <Frank.Li@nxp.com>, Conor Dooley <conor+dt@kernel.org>,
	Richard Zhu <hongxing.zhu@nxp.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, imx@lists.linux.dev
Subject: Re: [PATCH v2 1/2] dt-bindings: PCI: fsl,imx6q-pcie: Explicitly
 deprecate reset-gpio
Message-ID: <177344873783.3740802.16889031626294728182.robh@kernel.org>
References: <20260312184344.42337-3-krzysztof.kozlowski@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260312184344.42337-3-krzysztof.kozlowski@oss.qualcomm.com>
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_TWELVE(0.00)[21];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[pengutronix.de,vger.kernel.org,lists.infradead.org,kernel.org,synopsys.com,gmail.com,nxp.com,google.com,lists.linux.dev];
	TAGGED_FROM(0.00)[bounces-275591-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,qualcomm.com:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 4C26828AFEF
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr


On Thu, 12 Mar 2026 19:43:45 +0100, Krzysztof Kozlowski wrote:
> The binding references snps,dw-pcie-common.yaml which already deprecates
> "reset-gpio", however mentioning this property here lacks this mark thus
> code is confusing and suggests property is not deprecated.
> 
> OTOH, the property cannot be removed from this schema, because it is an
> ABI implemented by Linux kernel in gpiolib-of.c in backwards-compatible
> map between compatibles, "reset-gpio" and "reset-gpio-active-high"
> properties.
> 
> This creates code and binding which is not obvious to follow, so rewrite
> it and be more explicit about:
> 1. Deprecation of "reset-gpio",
> 2. Relation that "reset-gpio-active-high" is used only for that property
>    and not proper "reset-gpios".
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
> 
> ---
> 
> Cc: Sherry Sun <sherry.sun@nxp.com>
> 
> Changes in v2:
> 1. Rewrite the commit completely after Sherry Sun comments - keep the
>    property, but add "not" clause to forbid usavge of
>    "reset-gpio-active-high" and "reset-gpios".
> 2. Because of above not adding Richard's ack.
> 
> v1:
> https://lore.kernel.org/r/20260311154955.145120-3-krzysztof.kozlowski@oss.qualcomm.com
> ---
>  Documentation/devicetree/bindings/pci/fsl,imx6q-pcie.yaml | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 

Acked-by: Rob Herring (Arm) <robh@kernel.org>


