Return-Path: <devicetree+bounces-295932-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0PjfJB+OAmqXuQEAu9opvQ
	(envelope-from <devicetree+bounces-295932-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 04:19:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FAB4518DB3
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 04:19:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CE3FD3030B18
	for <lists+devicetree@lfdr.de>; Tue, 12 May 2026 02:15:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C45733446A6;
	Tue, 12 May 2026 02:15:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UhTF0SaB"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2918314A6B
	for <devicetree@vger.kernel.org>; Tue, 12 May 2026 02:15:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778552155; cv=none; b=kDgmB0+mewzgrN+qtyvGncu6hWZps0elCQNB2ryL2qw9CkUOVpSuI+m+Di66fXaVt0Xke5ROJVWr2/eruygTfWNOdMZfv7plxsOK0QfC6LsJM4Y2+jSK79nHlSs35Lq4EtuXzDzaN/R0LQ/l4L0L/UO5htO9KmdK1BqndRKCzjQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778552155; c=relaxed/simple;
	bh=BBlc+zGlcNXpE4i2WLTcytr5vQFGoLv9Ei0/KW3pCcU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=KNGV981PmfWKUnNdji+9ZToE7tJjQzrBt8Raaf1VveO61nP84Up8QJViB0V+h3rBufSoIglYgPb9xFt9p837S29gg97v/liy8m5Nl/ZsIfZB0BbNk8U2R/KaEMxQ6QfBWkav/HMG7zFgJ8KHzwNngla9Oc6V1XgEjGDvIKVhbFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UhTF0SaB; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 188C6C2BCF5;
	Tue, 12 May 2026 02:15:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778552155;
	bh=BBlc+zGlcNXpE4i2WLTcytr5vQFGoLv9Ei0/KW3pCcU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=UhTF0SaBTukvSEzJUn6x3EOvyi7Eq4jFRi6f/RcA53luGJ6n07KCwcYZPmCZsxYMv
	 4NYK+iVXPf67vgDCk7g00/Lk/76yYdpW0rYghDcB4PiokBsD+xxF5H6oAG2t5rRwZp
	 9YzRNGW4RQ29luNJuG4DcDgC1TcSClAJMNaWxyD/n+ZrCRmZK+QBkViY/evAeh/W3B
	 XXfEPeVC/eL3vYc8JOIma1dNm696tfje6huIUUXEX1J1tXnFy/l3CLQK2jZGPt8ecQ
	 9FDNLX2D6fpVUdaZmtxn9DZm3l1uAr+9Scx6BcP5XqTJTy4ux7BM7dl1keCO+cSCqa
	 w0DeWoSCRNb0g==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v12 4/5] dt-bindings: mfd: Add binding for MediaTek
 MT6363 series SPMI PMIC
Reply-To: sashiko@lists.linux.dev
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org, krzk+dt@kernel.org
In-Reply-To: <20260511101355.122478-5-angelogioacchino.delregno@collabora.com>
References: <20260511101355.122478-5-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 12 May 2026 02:15:54 +0000
Message-Id: <20260512021555.188C6C2BCF5@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 8FAB4518DB3
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
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-295932-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,smtp.kernel.org:mid,lists.linux.dev:replyto,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The binding provides interrupt controller capabilities but fails=
 to list `interrupt-controller` and `#interrupt-cells` as required properti=
es.
--

commit cec0b2a5ba52ef89e1723a3c01379c0aecebc8fa
Author: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

dt-bindings: mfd: Add binding for MediaTek MT6363 series SPMI PMIC

This commit adds a device tree binding for the MediaTek MT6363 and MT6373
multi-function PMICs connected over SPMI. These PMICs are found on board
designs using newer MediaTek SoCs.

> diff --git a/Documentation/devicetree/bindings/mfd/mediatek,mt6363.yaml b=
/Documentation/devicetree/bindings/mfd/mediatek,mt6363.yaml
> new file mode 100644
> index 0000000000000..ee90d16053e93
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mfd/mediatek,mt6363.yaml

[ ... ]

> +  interrupt-controller: true
> +
> +  "#interrupt-cells":
> +    const: 3
> +
> +patternProperties:

[ ... ]

> +required:
> +  - compatible
> +  - reg
> +  - '#address-cells'
> +  - '#size-cells'

Should interrupt-controller and #interrupt-cells be included in this
required list?

The binding provides interrupt controller capabilities but omits the
corresponding standard properties from the required block.

> +
> +additionalProperties: false

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260511101355.1224=
78-1-angelogioacchino.delregno@collabora.com?part=3D4

