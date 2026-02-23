Return-Path: <devicetree+bounces-267577-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uLmxMWuVnGlOJgQAu9opvQ
	(envelope-from <devicetree+bounces-267577-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 18:59:07 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id D1C5D17B324
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 18:59:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A849F3023526
	for <lists+devicetree@lfdr.de>; Mon, 23 Feb 2026 17:57:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 14C9E33A6E1;
	Mon, 23 Feb 2026 17:57:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DzPWFZOb"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7AE83385B1;
	Mon, 23 Feb 2026 17:57:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771869427; cv=none; b=qOLhEyndaMZlHFNIDL8MMwPafO/34amKccpp05M3lhOvZlWV7AeMB+Xee/jNYF0PoNcjar6fviWJO8O4WCYBN/lw7X7S62yxe3OBH4QLF0CxMQC+QQtiXnZOEbyE3Gq9z388DbU38XXPHCY/5q9My32Ir/CKyUid8NE92el+ueY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771869427; c=relaxed/simple;
	bh=+R/gbJyXgtSztRTnBWeP96Fbtuk1N3v+xu5HT/+Iap4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GRl4VenY5EEuEghHPS9d8J2Q2Uk6ukTzntj0k4L6PRNquwg5OoAeRAIyQuRIE3seUnDdW6BcGTPtX3AsX2qI393NbqOjbVrCskqz9LBg/uj4Oti7dGBYpNFKzObSrTFQEI1ZpMOKoSt+nfYea8Wk9UpebyWLToHVi9GVFvxTN20=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DzPWFZOb; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7924BC116C6;
	Mon, 23 Feb 2026 17:57:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771869427;
	bh=+R/gbJyXgtSztRTnBWeP96Fbtuk1N3v+xu5HT/+Iap4=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DzPWFZObuuqMb8GufRKvOokRq/Umw/TlX4sFPOs4kGXE4ntWMezIAVT2FGRvP8JsC
	 NjpxOMAtzBXsUhqHzvY1jMwWEdrlX6IeJOaeTnIYm20JbT6Em0ROLTLByLBXeYvG0g
	 gKPZTk0S8KMoDRMC35Z/BGPeNGJvD4VqGJiRFmg+8hp0eEU5daXf7r0S6DUY8+kBO4
	 xNf6NkmmFd1U1uyv2H6AgQBZQWsijfV11exWp97i2kaBU9aNWuFcRg96zbJXsu0gsi
	 7m6obYaTFJ44uCWUO5fvYyXp8M9lONPUwamR/cm+wOL4994gH/6CpodPA1VbuNDmrb
	 B/t/FkpwcwhIA==
Date: Mon, 23 Feb 2026 11:57:06 -0600
From: Rob Herring <robh@kernel.org>
To: Hugo Villeneuve <hugo@hugovil.com>
Cc: hvilleneuve@dimonoff.com, dmitry.torokhov@gmail.com, krzk+dt@kernel.org,
	conor+dt@kernel.org, linux-input@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: input: add GPIO charlieplex keypad
Message-ID: <20260223175706.GA4168417-robh@kernel.org>
References: <20260213171431.2228814-1-hugo@hugovil.com>
 <20260213171431.2228814-2-hugo@hugovil.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260213171431.2228814-2-hugo@hugovil.com>
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_CC(0.00)[dimonoff.com,gmail.com,kernel.org,vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-267577-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[8];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: D1C5D17B324
X-Rspamd-Action: no action

On Fri, Feb 13, 2026 at 12:14:25PM -0500, Hugo Villeneuve wrote:
> From: Hugo Villeneuve <hvilleneuve@dimonoff.com>
> 
> Add DT bindings for GPIO charlieplex keypad.
> 
> Signed-off-by: Hugo Villeneuve <hvilleneuve@dimonoff.com>
> ---
>  .../input/gpio-charlieplex-keypad.yaml        | 82 +++++++++++++++++++
>  1 file changed, 82 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/input/gpio-charlieplex-keypad.yaml
> 
> diff --git a/Documentation/devicetree/bindings/input/gpio-charlieplex-keypad.yaml b/Documentation/devicetree/bindings/input/gpio-charlieplex-keypad.yaml
> new file mode 100644
> index 0000000000000..1672491a75a85
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/input/gpio-charlieplex-keypad.yaml
> @@ -0,0 +1,82 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +
> +$id: http://devicetree.org/schemas/input/gpio-charlieplex-keypad.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: GPIO charlieplex keypad
> +
> +maintainers:
> +  - Hugo Villeneuve <hvilleneuve@dimonoff.com>
> +
> +description:
> +  The charlieplex keypad supports N^2)-N different key combinations (where N is
> +  the number of lines). Key presses and releases are detected by configuring
> +  only one line as output at a time, and reading other line states. This process
> +  is repeated for each line.
> +  This mechanism doesn't allow to detect simultaneous key presses.
> +
> +allOf:
> +  - $ref: input.yaml#
> +  - $ref: /schemas/input/matrix-keymap.yaml#
> +
> +properties:
> +  compatible:
> +    const: gpio-charlieplex-keypad
> +
> +  autorepeat: true
> +
> +  line-scan-delay-us:
> +    description:
> +      Delay, measured in microseconds, that is needed
> +      before we can scan keypad after activating one line.
> +    default: 0

Isn't this the same as "col-scan-delay-us" in gpio-matrix-keypad.yaml? 
If so, move it to matrix-keymap.yaml to re-use it here.

If not, there's a bunch of other scan delay properties just from 
grepping "delay" in the input bindings. Surely we can define something 
common.

Rob

