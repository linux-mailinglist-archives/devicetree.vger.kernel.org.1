Return-Path: <devicetree+bounces-267098-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 0JDGMpGOmWkwVAMAu9opvQ
	(envelope-from <devicetree+bounces-267098-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 11:53:05 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E737016CB7D
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 11:53:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2A3203003822
	for <lists+devicetree@lfdr.de>; Sat, 21 Feb 2026 10:53:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2632A3446C7;
	Sat, 21 Feb 2026 10:52:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a+052Lja"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACF5E344D91;
	Sat, 21 Feb 2026 10:52:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771671178; cv=none; b=D2YuGhseRpoMmKnSmlglQbLHyKALUTxiuym5wCOQaCYAgN3lZGYYTIOBhPCRPnf2uKggApvGt3dMjPduorbeV5AsO+2nLnX1M14lxcbaxfNjJaILCbZg3P3GhRrkX89C1jX9tmSpecmKRPEL/fc8aIOLfhKQyGguPaAz0EmWTy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771671178; c=relaxed/simple;
	bh=M+HEpjSX2dsvk6hUwkqaIv+J50RywBTiPjl/uMLKInU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WOoShuFa7DvOskp/WzzqC8PBqQyKuXJlwM1Fj4p1jkCAsrwJnZC+UitVTFzdzJnEpAoOaksSaBRqwQH664h+YLXbrlUaNHqsgwpnPZMq+ZxLPoCi8xUtsuExtMr+A1oJkm/tjFNHI9K4rLzUwk+wzp8KQI5s+OawT+thmzK0dsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a+052Lja; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 91010C4CEF7;
	Sat, 21 Feb 2026 10:52:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771671178;
	bh=M+HEpjSX2dsvk6hUwkqaIv+J50RywBTiPjl/uMLKInU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=a+052Ljai5vPVaDIgQkBwNq/pQsMcobNmLgwwBphMbcJfrli2GdBWO5xS+i5zKf+N
	 dzdljOhREYghb4ioGgjwQg8COJD0A5lt8A7TM10uCd7Svd2rvS8QC8CU40UHhhfTrY
	 4G7Dy0k5NDFRRj3yv4C1FMAAuLVMYSIESj5vL8ZJRvuaxnz7yUp9yTvY5HJJIOez9x
	 UjTYbHC1ym6fbH9f/pH+6F0gpRvkzZVPXKj0YDzzwIIvAzzQvftQzFMDztKO/XLFgo
	 BV3QYkW60r2mfsyw8Ja7dyuZ7abjsLO/YGxvoZ9aCRJjpay9zN3aSCi/mMBpP3Yr98
	 KzcJh7OMLg1Lg==
Date: Sat, 21 Feb 2026 11:52:55 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Otto =?utf-8?Q?Pfl=C3=BCger?= <otto.pflueger@abscue.de>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Orson Zhai <orsonzhai@gmail.com>, 
	Baolin Wang <baolin.wang@linux.alibaba.com>, Chunyan Zhang <zhang.lyra@gmail.com>, Lee Jones <lee@kernel.org>, 
	linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: regulator: Document Unisoc SC2730 PMIC
 bindings
Message-ID: <20260221-crimson-beaver-of-discourse-7ef24d@quoll>
References: <20260220-sc2730-regulators-v1-0-3f2bbc9ecf14@abscue.de>
 <20260220-sc2730-regulators-v1-1-3f2bbc9ecf14@abscue.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20260220-sc2730-regulators-v1-1-3f2bbc9ecf14@abscue.de>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-267098-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	RCPT_COUNT_TWELVE(0.00)[12];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_CC(0.00)[gmail.com,kernel.org,linux.alibaba.com,vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,abscue.de:email,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,bootlin.com:url]
X-Rspamd-Queue-Id: E737016CB7D
X-Rspamd-Action: no action

On Fri, Feb 20, 2026 at 06:01:49PM +0100, Otto Pfl=C3=BCger wrote:
> Add bindings for the regulators found in the Spreadtrum/Unisoc SC2730
> PMIC, used e.g. with the UMS512 and UMS9230 SoCs.
>=20
> Signed-off-by: Otto Pfl=C3=BCger <otto.pflueger@abscue.de>
> ---
>  .../bindings/regulator/sprd,sc2730-regulator.yaml  | 51 ++++++++++++++++=
++++++
>  1 file changed, 51 insertions(+)

So your second patch depends on it, but nothing in cover letter or this
patch changelog explain that making it extra difficult for maintainers.
You want them to guess the dependencies?

A nit, subject: drop second/last, redundant "bindings". The
"dt-bindings" prefix is already stating that these are bindings.
See also:
https://elixir.bootlin.com/linux/v6.17-rc3/source/Documentation/devicetree/=
bindings/submitting-patches.rst#L18

It is just "ADD"

>=20
> diff --git a/Documentation/devicetree/bindings/regulator/sprd,sc2730-regu=
lator.yaml b/Documentation/devicetree/bindings/regulator/sprd,sc2730-regula=
tor.yaml
> new file mode 100644
> index 000000000000..36f5f4d338bb
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/regulator/sprd,sc2730-regulator.y=
aml
> @@ -0,0 +1,51 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/regulator/sprd,sc2730-regulator.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Unisoc SC2730 Power Management IC regulators
> +
> +maintainers:
> +  - Otto Pfl=C3=BCger <otto.pflueger@abscue.de>
> +
> +properties:
> +  compatible:
> +    const: sprd,sc2730-regulator

Let's drop the compatible (which changes my comment on other patch as
you can put only $ref in oneOf).

> +
> +patternProperties:
> +  "^DCDC_(CORE|CPU|GEN[0-1]|GPU|MEM|MEMQ|MODEM|SRAM)$":

All names are lowercase without underscores. See DTS coding style.

Best regards,
Krzysztof


