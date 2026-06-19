Return-Path: <devicetree+bounces-313789-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Z0OQDUU+NWo3pwYAu9opvQ
	(envelope-from <devicetree+bounces-313789-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 15:04:05 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 85B5E6A5ECD
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 15:04:04 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="GIN6ugz/";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313789-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-313789-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8BBC030104AD
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 13:04:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BE0438236D;
	Fri, 19 Jun 2026 13:04:02 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77C0F37FF50
	for <devicetree@vger.kernel.org>; Fri, 19 Jun 2026 13:04:01 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781874242; cv=none; b=lEdCYfANaM6Rqcuh0ObQ+XIF10xP/xEKPM7MinhS83QxnOgNE/TWcrzNFVcQxXnLPglYR2jIMOrzuHU1dZqpZfFpsSVx/QVJzwrC3DzDc0Dj/73TQStyzUglzwZoES/jOQHwIabMSpwPsnRPAk00ykPl8z2peERVT1IyeTkVDNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781874242; c=relaxed/simple;
	bh=vKiWQHV2ZnHW+lNFsSE6M+bZJg4iGEDKUzDcovGBRMc=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=bLtQjk977QFv7VvDm5nR+UoL9kTVP2Y06adSMg88Jaun8hM8HyZwygVcCs6vIwWX9DCcpX6NTfV8ft+zytrlOnQeaoiDJVhQ2BFDrz8NrxVCtmd5KEzRbeJZ4Jo3rMlwN+b+zS24eOJQRuUZEInRfUg7VCH9d4zj1Lb7s3hJl0o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GIN6ugz/; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DE0211F000E9;
	Fri, 19 Jun 2026 13:04:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781874241;
	bh=vKDpN6ripGvNLu2H06g6bkZBWXACT40pDo9935FgFUA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=GIN6ugz/Ke/ArFXV60CEvJEAUhQ5D6N0lc0RMAvY/pTN3OUrosheXY/zz+/7mzpBw
	 paNmtNqtiy33c0Zw9yeaI8mkuwZO3ZKJJpGXyAWj7JQuRvhOsnkAGK4zAupd6repnc
	 vqjxe3v7MKyBVGG1Pvkok72DbTbP1lSfH8M54m8L9r5yierUscs3PIqYPFrP34seQ3
	 ZO6+FmF/ogg/cGKuFEvE/Q2oCP3kx7dvDcMQkGvmSA5vuPBOtXhxLjyHjsfEanFh2V
	 ogJ2MwYdaNe3tbDGwNiIz+/eis+qpS++NdYf25nx0rCbrACgvA0b+kbBwA7Ki3wZia
	 uQmcH/fijThEA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: media: i2c: Add imx576 sensor
Reply-To: sashiko-reviews@lists.linux.dev
To: "Himanshu Bhavani" <himanshu.bhavani@siliconsignals.io>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260619125439.55311-2-himanshu.bhavani@siliconsignals.io>
References: <20260619125439.55311-1-himanshu.bhavani@siliconsignals.io>
 <20260619125439.55311-2-himanshu.bhavani@siliconsignals.io>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 19 Jun 2026 13:04:00 +0000
Message-Id: <20260619130400.DE0211F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-313789-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:himanshu.bhavani@siliconsignals.io,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
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
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,siliconsignals.io:email,sashiko.dev:url,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 85B5E6A5ECD

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The `port` node does not mark `endpoint` as a required property.
--

commit 8d8a44d3691b781ed1f0eae46f632d337e365e3b
Author: Hardevsinh Palaniya <hardevsinh.palaniya@siliconsignals.io>

dt-bindings: media: i2c: Add imx576 sensor

This commit adds device tree bindings for the Sony IMX576 CMOS active pixel
digital image sensor.

> diff --git a/Documentation/devicetree/bindings/media/i2c/sony,imx576.yaml=
 b/Documentation/devicetree/bindings/media/i2c/sony,imx576.yaml
> new file mode 100644
> index 0000000000000..52575ea2cbe1b
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/media/i2c/sony,imx576.yaml

[ ... ]

> +  port:
> +    description: MIPI CSI-2 transmitter port
> +    $ref: /schemas/graph.yaml#/$defs/port-base
> +    additionalProperties: false
> +
> +    properties:
> +      endpoint:

[Severity: Low]
Should the port node mark the endpoint property as required?

Without specifying that the endpoint is required, an empty port node will
pass schema validation, even though the hardware requires an endpoint for
the MIPI CSI-2 interface to function.

> +        $ref: /schemas/media/video-interfaces.yaml#
> +        unevaluatedProperties: false

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260619125439.5531=
1-1-himanshu.bhavani@siliconsignals.io?part=3D1

