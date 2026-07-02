Return-Path: <devicetree+bounces-319056-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id oRsVLR0SRmqHJAsAu9opvQ
	(envelope-from <devicetree+bounces-319056-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 09:24:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FE206F423B
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 09:24:13 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=PU+rztdn;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319056-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-319056-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 55E5B3011862
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 07:22:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB19239061D;
	Thu,  2 Jul 2026 07:22:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1982B351C1C;
	Thu,  2 Jul 2026 07:22:33 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782976955; cv=none; b=m/JNBZ/Aju08SgtqYTnu6wlDKDHtf0wT+0FCsqMl5TS8H8EqFaJzN0+dw0HKOgD8yqgMIYESu2yhSKYgosX9tKXwDX7yhS9/CtqpVJY+ai5fvUdQdlEmXjlx6k37D15fnvTEiu/IqTM7HDIK2Hhld+JTU2F1EDxOkKg2WRp6bUM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782976955; c=relaxed/simple;
	bh=y11zQ4H0SW7XVpPLlDMXGMnLYRZAXJkSouIG3iOv+Uk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=e7eWeWVTbIZutdmqEcnosApheu0eHX0QnxYZP9+ChBulm18IBmIvVHZgGpzVxzCnDXd/qB4TC7s0iGh2rJVm8yyMVSF5wxrduNiM6DruOaFAid5i7KxGS4xFjeBn8hidzmlsmVkYqzYsOwMHc2foetKfjh96bmqiPv51AVK3OmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PU+rztdn; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 77F071F000E9;
	Thu,  2 Jul 2026 07:22:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782976953;
	bh=LewY5sfczA5GL6UTUHRCa1PFxNioBi0Q68/Y1GU7MGk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=PU+rztdnoTpaXzNR37BBykDxWVuPn+R/BPqZ6S2ll0jkH10pnAWDB8XZRB4r7ygOy
	 xbDYfTeQqLWGtfLYX2GcCUk7rASSv1JrG7RZOYPvb93yKPXpv/18QPT3/eHUA6o8Nk
	 Is+9dxkrM9pfmy/WMelMCWuLy/Xw3LcEb/L+MIIKNOYCJIqzojEQ2Bzusoi/gEx4ga
	 hMV5hkD7uIhzBCa2yENbO2rLkwGgThOHh3RFmqNpkKfo0o/5KBaHpmFofWEYAJfYvo
	 7NlIpVcEDSYt6izr+RWzLSNJI7DaFKzjIYoCwqo3TfNgDm0uCB3qB0vV4wOICkb1Oc
	 7QR5N8vTFsiXQ==
Date: Thu, 2 Jul 2026 09:22:29 +0200
From: Krzysztof Kozlowski <krzk@kernel.org>
To: Eduard Bostina <egbostina@gmail.com>
Cc: Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, linux-kernel@vger.kernel.org, Mark Brown <broonie@kernel.org>, 
	Rob Herring <robh@kernel.org>, daniel.baluta@nxp.com, simona.toaca@nxp.com, 
	goledhruva@gmail.com, m-chawdhry@ti.com
Subject: Re: [PATCH 1/2] dt-bindings: arm: omap: Convert DSP to DT schema
Message-ID: <20260702-iron-coua-of-acceptance-8bbaba@quoll>
References: <20260630132857.3007019-1-egbostina@gmail.com>
 <20260630132857.3007019-2-egbostina@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20260630132857.3007019-2-egbostina@gmail.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-4.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_HAS_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-319056-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:egbostina@gmail.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:krzk+dt@kernel.org,m:linux-kernel@vger.kernel.org,m:broonie@kernel.org,m:robh@kernel.org,m:daniel.baluta@nxp.com,m:simona.toaca@nxp.com,m:goledhruva@gmail.com,m:m-chawdhry@ti.com,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,nxp.com,gmail.com,ti.com];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[krzk@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[11];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,quoll:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,devicetree.org:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 2FE206F423B

On Tue, Jun 30, 2026 at 01:28:55PM +0000, Eduard Bostina wrote:
> Convert the Texas Instruments DSP bindings to DT schema.
> 
> During the conversion, ti,hwmods has been made optional.

You need to explain why.

> 
> Signed-off-by: Eduard Bostina <egbostina@gmail.com>
> ---
>  .../devicetree/bindings/arm/omap/dsp.txt      | 14 --------
>  .../bindings/arm/omap/ti,omap3-c64.yaml       | 32 +++++++++++++++++++

This should be moved to bindings/soc/ti/ directory


>  2 files changed, 32 insertions(+), 14 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/omap/dsp.txt
>  create mode 100644 Documentation/devicetree/bindings/arm/omap/ti,omap3-c64.yaml
> 
> diff --git a/Documentation/devicetree/bindings/arm/omap/dsp.txt b/Documentation/devicetree/bindings/arm/omap/dsp.txt
> deleted file mode 100644
> index d3830a32ce08..000000000000
> --- a/Documentation/devicetree/bindings/arm/omap/dsp.txt
> +++ /dev/null
> @@ -1,14 +0,0 @@
> -* TI - DSP (Digital Signal Processor)
> -
> -TI DSP included in OMAP SoC
> -
> -Required properties:
> -- compatible : Should be "ti,omap3-c64" for OMAP3 & 4
> -- ti,hwmods: "dsp"
> -
> -Examples:
> -
> -dsp {
> -    compatible = "ti,omap3-c64";
> -    ti,hwmods = "dsp";
> -};
> diff --git a/Documentation/devicetree/bindings/arm/omap/ti,omap3-c64.yaml b/Documentation/devicetree/bindings/arm/omap/ti,omap3-c64.yaml
> new file mode 100644
> index 000000000000..72429749ebf4
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/omap/ti,omap3-c64.yaml
> @@ -0,0 +1,32 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/arm/omap/ti,omap3-c64.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Texas Instruments DSP (Digital Signal Processor)
> +
> +maintainers:
> +  - Eduard Bostina <egbostina@gmail.com>
> +
> +properties:
> +  compatible:
> +    const: ti,omap3-c64
> +
> +  ti,hwmods:
> +    description: Name of the hwmod associated to the dsp
> +    $ref: /schemas/types.yaml#/definitions/string-array

Same comments as before. The type is already fixed to string. Why this
has to be an array? Do Linux drivers read it as an array?

> +    items:
> +      - const: dsp

Best regards,
Krzysztof


