Return-Path: <devicetree+bounces-315740-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 4hzIKKdQPWq81AgAu9opvQ
	(envelope-from <devicetree+bounces-315740-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 18:00:39 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A32C6C73F3
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 18:00:38 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=L4cf7zKs;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315740-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-315740-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id B3675300B091
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 16:00:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C828F78C9C;
	Thu, 25 Jun 2026 16:00:34 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B9DFB37C918;
	Thu, 25 Jun 2026 16:00:30 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782403234; cv=none; b=lU9pSnGOivAQHzcxJD3orj9s7pMz2vQAvZfLHeReECSbGt6436L11dJ5neBMpP7UxGtx7HEvhPVRQPmyv2Kn8W+hIxl5Hx+8Rg0LyuLq2uiHZqGtrmgLCrkLfACEGgQOkKRlXpiuht+eAVrr6M96NOf1l3s84WUnOkBUJWM8SII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782403234; c=relaxed/simple;
	bh=lX9jmqEcAPhUFJ+NWeKitWgG6t+ViDMhClqAYMxj1pY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=sI7VjOmAHpVhVsLVFxYo+oEMYkGyogIBkiil3Jv8vgIWtr2QwTMtPzaUj+hWPB/ZNKSKCpG9W5AmsNIUm2n3GRk9NFd1ss44q3h8vL85xf7b58obwVxuD7lda4F1zS0aPvDzo3md2Nitq8s9PQn/KZ5tL3tA7QsYGO9OzTA+WCA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L4cf7zKs; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 99E8B1F000E9;
	Thu, 25 Jun 2026 16:00:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782403230;
	bh=hdFiQo9zgZ8hojf5cEoI/wKiDQNM6T4g1BqlyxdyxBM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=L4cf7zKsoswdZbswVOo6Qngv9JRoVASr/7v7nyAhXv0GhbQAEvNTBBFqzu6oPrC8e
	 l4q86xxSNy3PKuEX1iJdYwApgIG+GJaRTiBY/SaDP56GxQTeWVtPtv9Fp7Q4Rhppvq
	 s30LAmCC6Hf9hKSO8N/erRMOI5RZDbwmlfnEKV/b9AyWuylfVFcy+WlI23IZ5ZfUKv
	 N8i7MCW69SS7hwe2cSey/JJoG8InkAiljv4/LQwCZSvDprBpBhyuJ0LWtDk+G7oxQx
	 wN0SaXyQHUrT1IAgYg43R/LbA2IPQ89GaP/kfRVSbaZTNa/aGMHGU3G0YwSPDgtQ9l
	 2Qk1JE+GapOCA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v14 2/5] dt-bindings: remoteproc: imx_rproc: Add "rpmsg"
 subnode support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Shenwei Wang" <shenwei.wang@oss.nxp.com>
Cc: conor+dt@kernel.org, robh@kernel.org, Frank.Li@kernel.org, imx@lists.linux.dev, devicetree@vger.kernel.org
In-Reply-To: <20260625155432.815185-3-shenwei.wang@oss.nxp.com>
References: <20260625155432.815185-1-shenwei.wang@oss.nxp.com>
 <20260625155432.815185-3-shenwei.wang@oss.nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 25 Jun 2026 16:00:28 +0000
Message-Id: <20260625160029.99E8B1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-1.66 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-315740-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:shenwei.wang@oss.nxp.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:Frank.Li@kernel.org,m:imx@lists.linux.dev,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8A32C6C73F3

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [Medium] The `gpio-rpmsg.yaml` binding adds GPIO and interrupt controller=
 provider capabilities but fails to list `gpio-controller` and `interrupt-c=
ontroller` in its `required` properties array.
- [Medium] The `rpmsg` node schema hardcodes `rpmsg-io` as the only allowed=
 subnode, contradicting the commit message's description of flexible channe=
l names.
- [Low] The `patternProperties` regex used for matching GPIO subnodes in `f=
sl,imx-rproc.yaml` is missing a start-of-string anchor (`^`).
--

commit e02180a974397446bfafe8bc43641010b7365078
Author: Shenwei Wang <shenwei.wang@nxp.com>

dt-bindings: remoteproc: imx_rproc: Add "rpmsg" subnode support

This commit adds device tree binding support for RPMSG GPIO controllers
exposed by a remote processor. It introduces a generic RPMSG GPIO controller
schema and updates the fsl,imx-rproc binding to support a new rpmsg subnode
container for these channels.

> diff --git a/Documentation/devicetree/bindings/gpio/gpio-rpmsg.yaml b/Doc=
umentation/devicetree/bindings/gpio/gpio-rpmsg.yaml
> new file mode 100644
> index 0000000000000..6c78b6850321c
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/gpio/gpio-rpmsg.yaml
[ ... ]
> +  "#interrupt-cells":
> +    const: 2
> +
> +required:
> +  - compatible
> +  - reg
> +  - "#gpio-cells"
> +  - "#interrupt-cells"

[Severity: Medium]
Should gpio-controller and interrupt-controller be included in this required
list? The binding adds GPIO and interrupt controller provider capabilities,
so omitting them might allow incomplete device tree nodes to pass validatio=
n.

> +
> +allOf:
> +  - $ref: /schemas/gpio/gpio.yaml#
> +
> +unevaluatedProperties: false
> diff --git a/Documentation/devicetree/bindings/remoteproc/fsl,imx-rproc.y=
aml b/Documentation/devicetree/bindings/remoteproc/fsl,imx-rproc.yaml
> index ce8ec0119469c..aea33205a881a 100644
> --- a/Documentation/devicetree/bindings/remoteproc/fsl,imx-rproc.yaml
> +++ b/Documentation/devicetree/bindings/remoteproc/fsl,imx-rproc.yaml
[ ... ]
> @@ -85,6 +85,34 @@ properties:
>        This property is to specify the resource id of the remote processo=
r in SoC
>        which supports SCFW
> =20
> +  rpmsg:
> +    type: object
> +    additionalProperties: false
> +    description:
> +      Represents the RPMSG bus between Linux and the remote system. Cont=
ains
> +      a group of RPMSG channel devices running on the bus.
> +
> +    properties:
> +      rpmsg-io:
> +        type: object
> +        additionalProperties: false

[Severity: Medium]
The commit message states "The name of each subnode corresponds to the
channel name as defined by the remote processor".

Does hardcoding rpmsg-io as a property and setting additionalProperties to
false unintentionally restrict the schema from allowing flexible channel
names?

> +        properties:
> +          '#address-cells':
> +            const: 1
> +
> +          '#size-cells':
> +            const: 0
> +
> +        patternProperties:
> +          "gpio@[0-9a-f]+$":
> +            type: object
> +            $ref: /schemas/gpio/gpio-rpmsg.yaml#
> +            unevaluatedProperties: false

[Severity: Low]
Does this regex need a start-of-string anchor (^)? Without it, could this
unintentionally match any node name that ends in gpio@[0-9a-f]+?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260625155432.8151=
85-1-shenwei.wang@oss.nxp.com?part=3D2

