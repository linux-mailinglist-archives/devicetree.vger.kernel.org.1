Return-Path: <devicetree+bounces-317061-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id kU6kLaJ6QmrN8AkAu9opvQ
	(envelope-from <devicetree+bounces-317061-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 16:01:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 600FF6DBAC5
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 16:01:01 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=IQxSl2C5;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-317061-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-317061-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2CAEE30DB79A
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 13:32:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E47C81C8604;
	Mon, 29 Jun 2026 13:32:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2124185B48;
	Mon, 29 Jun 2026 13:32:54 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782739975; cv=none; b=nUZpXeH/7Duqlzd4VcAymLvdiqvk65mlJqrMjcptGmzhIBWm1UWw+j6FepMlKdgVzuJPzeF11xvTGjH85E2RJfnbZyRa0xvMoPOGKQvAxP4b5ZA7Mub3UlWGm6G0P+orTvSz0ldvWNAKyZP6T/Pqd/cGeTkQWxOpTWQdoJ963TU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782739975; c=relaxed/simple;
	bh=8VTsBeJsTItTrYLIla5gsOdK1SUroginizbkezRNh2w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=helZ+9AG34QhiQEPr1ATSU5Qj/Y0XNCqcupBDct3oKMrs+wllRctCmRCVYT5tqdWRlxgJxTakGdyWfa4J6SjT5CU7lhrCYLHjaZ6u2jCn+pjCqx4w/93fpgxif/e1gnNtLDReU1esdTEIzQA/vEgdt4HmmC2RbNuMWLfZ2oiD7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IQxSl2C5; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3EF3F1F000E9;
	Mon, 29 Jun 2026 13:32:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782739974;
	bh=Ah5EDiHoXZZ+lJdmyeIH71Txk5rReWMRYVm4i/71Zto=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To;
	b=IQxSl2C5ZVoL+RZJnQ3IGrU4zyMNjh1eQY3r2zP0WlKD7IATkcPbK7dfca6hsG4pS
	 pxjIWksqD+fcsHFRVIPvbQ6FTsyowM/bEaqgt+NVPjJCSiRYd+l6crhjRUhImCH19w
	 9I6J+a/uYOHnEzIIuT7pFCJk295i8ji9aSw6zH/6ougbdQwIKenkRyWE2agDpYPaZd
	 WexRZ5Gk4UluaTfonEeEXYmc+VEBKlpLdLb7mKSr3gxNOyytLSeGUpSOGGrljN6vhe
	 shavK04GKdJYbw9MOmNjGQJwg2mstrjuZDbIHCHdSSIKzM03CI/PHPFeooC9mLYtZ7
	 stxgnBRbClUQQ==
Date: Mon, 29 Jun 2026 08:32:53 -0500
From: Rob Herring <robh@kernel.org>
To: chancel.liu@oss.nxp.com
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, Frank.Li@nxp.com,
	s.hauer@pengutronix.de, kernel@pengutronix.de, festevam@gmail.com,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v2 1/4] dt-bindings: connector: Add fsl,aud-io-slot
 binding
Message-ID: <20260629133253.GA2593312-robh@kernel.org>
References: <20260629074734.3643227-1-chancel.liu@oss.nxp.com>
 <20260629074734.3643227-2-chancel.liu@oss.nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260629074734.3643227-2-chancel.liu@oss.nxp.com>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-2.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-317061-lists,devicetree=lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,nxp.com,pengutronix.de,gmail.com,vger.kernel.org,lists.linux.dev,lists.infradead.org];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:chancel.liu@oss.nxp.com,m:krzk+dt@kernel.org,m:conor+dt@kernel.org,m:Frank.Li@nxp.com,m:s.hauer@pengutronix.de,m:kernel@pengutronix.de,m:festevam@gmail.com,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:imx@lists.linux.dev,m:linux-arm-kernel@lists.infradead.org,m:krzk@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	RSPAMD_EMAILBL_FAIL(0.00)[chancel.liu.oss.nxp.com:query timed out];
	MIME_TRACE(0.00)[0:+];
	TO_DN_NONE(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[11];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,devicetree.org:url,nxp.com:url,nxp.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 600FF6DBAC5

On Mon, Jun 29, 2026 at 04:47:31PM +0900, chancel.liu@oss.nxp.com wrote:
> From: Chancel Liu <chancel.liu@nxp.com>
> 
> The NXP AUD-IO slot represents a physically present I/O connector on
> the base board. It acts as a nexus that exposes a constrained set of
> I/O resources, such as GPIOs, clocks and interrupts, through fixed
> electrical wiring. All actual hardware providers reside on the base
> board. The connector node only defines index-based mappings to those
> providers.
> 
> This connector type is present on i.MX95 19x19 EVK and i.MX952 EVK,
> where it is used to attach the IMX-AUD-IO audio expansion card[1]. The
> same add-on board can be reused across different base boards that carry
> this connector.
> 
> [1]https://www.nxp.com/part/IMX-AUD-IO
> 
> Signed-off-by: Chancel Liu <chancel.liu@nxp.com>
> ---
>  .../bindings/connector/fsl,aud-io-slot.yaml   | 113 ++++++++++++++++++
>  1 file changed, 113 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/connector/fsl,aud-io-slot.yaml
> 
> diff --git a/Documentation/devicetree/bindings/connector/fsl,aud-io-slot.yaml b/Documentation/devicetree/bindings/connector/fsl,aud-io-slot.yaml
> new file mode 100644
> index 000000000000..5085574d221b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/connector/fsl,aud-io-slot.yaml
> @@ -0,0 +1,113 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/connector/fsl,aud-io-slot.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: NXP AUD-IO Slot
> +
> +maintainers:
> +  - Frank Li <Frank.li@nxp.com>
> +  - Chancel Liu <chancel.liu@nxp.com>
> +
> +description:
> +  The NXP AUD-IO slot represents a physically present I/O connector on
> +  the base board. It acts as a nexus that exposes a constrained set of
> +  I/O resources, such as GPIOs, clocks and interrupts, through fixed
> +  electrical wiring. All actual hardware providers reside on the base
> +  board. The connector node only defines index-based mappings to those
> +  providers. This connector type is present on i.MX95 19x19 EVK and
> +  i.MX952 EVK, where it is used to attach the IMX-AUD-IO expansion card.
> +
> +properties:
> +  compatible:
> +    oneOf:
> +      - items:
> +          - enum:
> +              - fsl,imx952-evk-aud-io
> +          - const: fsl,imx95-19x19-evk-aud-io
> +      - const: fsl,imx95-19x19-evk-aud-io
> +
> +  gpio-controller: true
> +
> +  '#gpio-cells':
> +    const: 2
> +
> +  gpio-map:
> +    minItems: 1
> +    maxItems: 32

You don't know how many GPIOs are on the connector?

> +
> +  gpio-map-mask:
> +    items:
> +      - const: 0xffff
> +      - const: 0x0
> +
> +  gpio-map-pass-thru:
> +    items:
> +      - const: 0x0
> +      - const: 0x1
> +
> +  '#clock-cells':
> +    const: 1
> +
> +  clock-map:
> +    minItems: 1
> +    maxItems: 16

You don't know how many clocks are on the connector?

> +
> +  clock-map-mask:
> +    items:
> +      - const: 0xff

> +
> +  clock-map-pass-thru: true

The purpose of this property (for GPIO) was to pass thru flag cells 
which are standardized. That's not the case for clocks.

Anyways, these properties need to be defined in dtschema first.

Rob

