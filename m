Return-Path: <devicetree+bounces-323150-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id klZaFg+wTmq+SQIAu9opvQ
	(envelope-from <devicetree+bounces-323150-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 22:16:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 4470472A247
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 22:16:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=kgKknX5m;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323150-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-323150-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E74CC311E4FA
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 20:10:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CEB73E5ED6;
	Wed,  8 Jul 2026 20:10:27 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D444D3E5A22;
	Wed,  8 Jul 2026 20:10:21 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783541426; cv=none; b=Hp4sOGJ4dyp0Vg+fBpsdzYGH3Sb98ItYBexXBBESypcm3rzpixp+egt9r0qITPu3euOAJ4od6txxvC81wDjj2BsKQCppDMZ4IQ16670BwSP5h5btIgJO+TFj8drGRtdsdnA1HjQMdWIMbRn5lgKpqzvDtZ+S3ZJItAiVw5UEoIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783541426; c=relaxed/simple;
	bh=bm4Cg7N5H0NnDEjj73TujxMNebFIrhWLZS0A67bj3g4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=gbHn2NGaZkDj8J+R4RDSKwAaFvdcZQUzSlk2WHMdzLN/a0FDl7I9FDoki3jMBMECfhtUPtod0ujuCW/EWSXNFoByO0lOTK8Y1Lf1dwyr/Wu/AtRIMWYYWt3allI2Hyic9BtxXX9HvAxc8R6hcEcj5M3y7xnOq+CdpETV3VjGF3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kgKknX5m; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C7C2A1F000E9;
	Wed,  8 Jul 2026 20:10:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783541419;
	bh=5FRIKaHj1K6umMKvbkOQwI8kz2MS4CkhOKlDejjLwPE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=kgKknX5mtQ1QdMtQweKx8dsrW/meCeEeNFp7v5KB9dx9Xm9f541HsgEe0TzVtRG8Z
	 QzugXx5CjJrodEyHFz0xABNZEArbQq6ApJeK0c3TCLPmVtdV3Q5eSizy35zEtVY31Q
	 sKAQlmE/cHkDHave2E5TQnZUhtqtaQj37AgcEAm0uWlsG2doZeB1nhqTUV2SJaiwUX
	 h7AF6dFmUUwPzv6Bzw/sXuewUTJSAeqAJqYPHpCsZ5U9sWyJcwezUQfVAWY2x2hSdj
	 BDfJNXytyx71E/siYSXNbBchXLtY/ElqVJEBptXrQGaqSbY99R8ampEcCyvGY3Cegk
	 ZS07pRpqaMWHw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: soc: imx: Add fsl,eim-bus
Reply-To: sashiko-reviews@lists.linux.dev
To: Frank.Li@oss.nxp.com
Cc: imx@lists.linux.dev, conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org, Frank.Li@kernel.org
In-Reply-To: <20260708-imx53-eim-v1-1-913b4559e5b5@nxp.com>
References: <20260708-imx53-eim-v1-0-913b4559e5b5@nxp.com>
 <20260708-imx53-eim-v1-1-913b4559e5b5@nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 Jul 2026 20:10:18 +0000
Message-Id: <20260708201018.C7C2A1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-323150-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,smtp.kernel.org:mid,nxp.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lists.linux.dev:replyto,sashiko.dev:url];
	FORGED_RECIPIENTS(0.00)[m:Frank.Li@oss.nxp.com,m:imx@lists.linux.dev,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:Frank.Li@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4470472A247

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] The updated `$nodename` regex explicitly allows `eim-bus` but ma=
thematically fails to match the actual node name `eim-cs1` used in the devi=
ce tree, resulting in a new schema validation warning instead of fixing the=
 issue.
- [Low] The commit message incorrectly attributes the compatible string to =
i.MX51 variants instead of i.MX53.
--

--- Patch [1]: [PATCH 1/2] dt-bindings: soc: imx: Add fsl,eim-bus ---
commit c123bec5543c2323c455145cf374a9559692a3a5
Author: Frank Li <Frank.Li@nxp.com>

dt-bindings: soc: imx: Add fsl,eim-bus

This commit adds the fsl,eim-bus compatible string to the fsl,spba-bus
binding to resolve schema validation warnings for legacy i.MX devices. It
also updates the nodename pattern in the schema.

> dt-bindings: soc: imx: Add fsl,eim-bus
>   =20
> Add the fsl,eim-bus compatible strings for i.MX51 variants.

[Severity: Low]
This isn't a bug, but is the reference to i.MX51 variants accurate in the
commit message? The CHECK_DTBS warning listed below is specifically for
imx53-ard.dtb, which suggests this compatible is actually targeting i.MX53
variants rather than i.MX51.

[ ... ]

> diff --git a/Documentation/devicetree/bindings/bus/fsl,spba-bus.yaml b/Do=
cumentation/devicetree/bindings/bus/fsl,spba-bus.yaml
> --- a/Documentation/devicetree/bindings/bus/fsl,spba-bus.yaml
> +++ b/Documentation/devicetree/bindings/bus/fsl,spba-bus.yaml
[ ... ]
> @@ -36,13 +37,14 @@ select:
> =20
>  properties:
>    $nodename:
> -    pattern: "^((spba|emi)-bus|bus)(@[0-9a-f]+)?$"
> +    pattern: "^((spba|emi|eim)-bus|bus)(@[0-9a-f]+)?$"

[Severity: Medium]
Will this regex change successfully clear the validation warning?

The commit message states we are fixing a warning for the node
eim-cs1@f4000000. However, the updated pattern permits eim-bus but
structurally fails to match eim-cs1. Does this mean make dtbs_check
will simply evaluate the regex against the eim-cs1@f4000000 node and emit
a new schema validation warning for the nodename?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260708-imx53-eim-=
v1-0-913b4559e5b5@nxp.com?part=3D1

