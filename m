Return-Path: <devicetree+bounces-296597-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id RlW0DXT9A2plBwIAu9opvQ
	(envelope-from <devicetree+bounces-296597-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 06:26:28 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 944C352D25B
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 06:26:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 61EE4307F693
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 04:26:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BF54C36F911;
	Wed, 13 May 2026 04:26:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gO6J+VDU"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9CC543128AB
	for <devicetree@vger.kernel.org>; Wed, 13 May 2026 04:26:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778646385; cv=none; b=lW304DdG8g+WmbLWrZo+SAYv4h03ZorRymJR48N3VVSDgujxfPVrG51NL71vmUzGqfVEeQeZZYXEfQej+ltJJBMKAbXqtH5asoJ9SLR9AmOVKnQGknFnGtpZe4hijjetXYO/99A/9yH5/ynyM0STtaOQRAvexug5dq8w3BsMLSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778646385; c=relaxed/simple;
	bh=0S7gxUmxUSwsvNbH2aTww2u8qVU44h8+3ekq9LliEYw=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=JTpa0NY9G5zfHvuZh6fcwJzVPXL7LjOfR6iokFTcPCtG4E5IP6A4EWsfoToRJh/sddA0bSLY3MTSQVu8vNP5hv3OsuaK1hRZfpBvHyOWTW4Hc6kUjQ9Q5ZF9jrU3TpC3YgII5V6xpBNaFwlCMa6u17n4AL98sBS/kzYp+TCOKF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gO6J+VDU; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CEBA0C2BCB7;
	Wed, 13 May 2026 04:26:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778646385;
	bh=0S7gxUmxUSwsvNbH2aTww2u8qVU44h8+3ekq9LliEYw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=gO6J+VDUZtlXCLanbV2rIrR9vwqcGB/XRAc+GIz42sMXXrcWgYeExlIjy0uS7wtl/
	 /tKywL3K57KYY4vgWcx/ijg58RlW9mcvBwhagUdWUz7JD/zylJh6W4VyazcSqJM7Cg
	 wHhnO9IrhF9az+JSH4blwH7HPuyt3iLyqavS4S6Bp9W9GiuEpRrUbp66zTIj2n9Edm
	 ZTPxd0fLJRYH3656Osb94BethAnHDedEjTilqBW1kQfNKDHv+xYB60Lek6w4xlJ1Mc
	 /z+7sfgdImSinq8GaZdPZSrfJbwsLwDTx6bdfRs5TI7V7n+Sb29wjoEDffIPjwSCrZ
	 OwN6B1WdQfO7Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 5/7] dt-bindings: gpio: realtek: Add
 realtek,rtd1625-gpio
Reply-To: sashiko-reviews@lists.linux.dev
To: "Yu-Chun Lin" <eleanor.lin@realtek.com>
Cc: conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260512033317.1602537-6-eleanor.lin@realtek.com>
References: <20260512033317.1602537-6-eleanor.lin@realtek.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 13 May 2026 04:26:24 +0000
Message-Id: <20260513042624.CEBA0C2BCB7@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 944C352D25B
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-296597-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,realtek.com:email,smtp.kernel.org:mid,lists.linux.dev:replyto,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] Missing required properties for interrupt controller capabilitie=
s.
- [Low] Mismatch between the commit message description of register blocks =
and the `reg` property constraint.
--

commit e48cb449a1787cbc350f702042fd90d1f1e83047
Author: Tzuyi Chang <tychang@realtek.com>

dt-bindings: gpio: realtek: Add realtek,rtd1625-gpio

This commit introduces device tree bindings for the Realtek DHC RTD1625 GPIO
controllers. It notes a per-pin register architecture and includes properti=
es
for configuring pins and handling interrupts.

> Add the device tree bindings for the Realtek DHC (Digital Home Center)
> RTD1625 GPIO controllers.
>=20
> The RTD1625 GPIO controller features a per-pin register architecture
> that differs significantly from previous generations. It utilizes
> separate register blocks for GPIO configuration and interrupt control.

The commit message states the controller utilizes separate register blocks
for GPIO configuration and interrupt control. However, the schema constrains
the reg property to maxItems: 1 and the example uses a single contiguous
block.=20

If these are truly separate memory regions, should the reg property be
updated to define multiple items? If they are internal register groups
within the same memory-mapped region, could the commit message be clarified
to reflect this?

> diff --git a/Documentation/devicetree/bindings/gpio/realtek,rtd1625-gpio.=
yaml b/Documentation/devicetree/bindings/gpio/realtek,rtd1625-gpio.yaml
> new file mode 100644
> index 0000000000000..f13c910b73c69
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/gpio/realtek,rtd1625-gpio.yaml

[ ... ]

> +required:
> +  - compatible
> +  - reg
> +  - gpio-ranges
> +  - gpio-controller
> +  - "#gpio-cells"
> +
> +additionalProperties: false

The binding defines interrupt-controller and #interrupt-cells properties
earlier in the file, and the example demonstrates their use.

Do these properties need to be included in this required list? Since the
hardware acts as an interrupt controller provider, adding them to the
required list would prevent incomplete device tree nodes from silently
passing schema validation.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260512033317.1602=
537-1-eleanor.lin@realtek.com?part=3D5

