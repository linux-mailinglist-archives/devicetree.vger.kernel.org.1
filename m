Return-Path: <devicetree+bounces-301761-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aKgQObZDEGrpVQYAu9opvQ
	(envelope-from <devicetree+bounces-301761-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 13:53:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id F1C285B3486
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 13:53:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8F41A30011A3
	for <lists+devicetree@lfdr.de>; Fri, 22 May 2026 11:41:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8A8083E51FD;
	Fri, 22 May 2026 11:41:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WHEu79KK"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C325F3E6DCE;
	Fri, 22 May 2026 11:41:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779450079; cv=none; b=j0LvTwy8cHPUzgTrTSynqHpGSRbXcA5Qm/v+3ukorneWyH1Qq8iSSdsBg3Xo4rK9emV9i2xSM6AJZp1OjgCsOPnV2ZRD2NxBvSfKhFC8WYG7FE1EFGT6WyJ3bUqnlWbMJBFQMiztFYLIuddpgmnbNZGkuIQPjc/r+j5B8BDiLok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779450079; c=relaxed/simple;
	bh=NDXUUQiZ71bhfpzbCZ6K4xXn1/XcVmehyRlUfQ3+JAU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=XAddRevyRwpEmonK8O1aBCiMm27v1hO8WKQzww7k/235juHu3Fi1NiXFB2PSDQO23mKZrkTuG2o7HwCFIY0uC3f+skc7wdIrBGK77ouiai5eqWOWCjhdNqbq5H4s7L6yxOjwIWHGPCj2lekW1NnHPgz4QR77wgeDkq1+U90bdA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WHEu79KK; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1BF4B1F000E9;
	Fri, 22 May 2026 11:41:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779450077;
	bh=KmQTRLvlz2KGfM2ZbV3/jX/Lb/zAchOFA24YFC0q7qM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=WHEu79KKaFK2ZZKvh+kk3ZdVXPCqPM4SQ7LnvII51SkJwLh/Sbd8jDJEanN6R2Nnh
	 j2QU47ALY3u2VjH4e5hi7Aw6mHHN64urswPbPKcwnHpy842Xb3yX3gLWYSPIZDBU7f
	 z9qovaMvvwbeNAU4i7ly7Y5x6UpwAfTPv4h7sQSHe7HoO+1lEgt4x84bqY/LzZc3iN
	 stE+KBypF3xyHRLDrQ6+PDpyufKVugEaArrklyZMQ+i+jifeMyaERQ64ZJbD4YtNjN
	 Ldp34RkCOeja3/fKhx6lI7FgBvgW3wLYMPB1RYE2n0HW6rNGjyIjXe9bpWmZ1M/zrZ
	 D5KdOSfj0tUiA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/5] dt-bindings: remoteproc: imx_rproc: document
 optional "memory-region-names"
Reply-To: sashiko-reviews@lists.linux.dev
To: "Laurentiu Mihalcea" <laurentiumihalcea111@gmail.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, imx@lists.linux.dev, Frank.Li@kernel.org
In-Reply-To: <20260522111849.783-2-laurentiumihalcea111@gmail.com>
References: <20260522111849.783-2-laurentiumihalcea111@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 22 May 2026 11:41:16 +0000
Message-Id: <20260522114117.1BF4B1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-301761-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,nxp.com:email,lists.linux.dev:replyto,sashiko.dev:url];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_FIVE(0.00)[6];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Queue-Id: F1C285B3486
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The `memory-region-names` schema constraints are overly restrict=
ive, breaking schema validation for valid configurations and conflicting wi=
th driver logic.
--

commit 12da0dd2e4416ad44eae563e32a0db35b3b96bb4
Author: Laurentiu Mihalcea <laurentiu.mihalcea@nxp.com>

dt-bindings: remoteproc: imx_rproc: document optional "memory-region-names"

This commit adds documentation for the optional "memory-region-names"
property to the fsl,imx-rproc devicetree binding. It restricts the allowed
names to "rsc-table" and names matching the vdev buffer/vring pattern.

> diff --git a/Documentation/devicetree/bindings/remoteproc/fsl,imx-rproc.y=
aml b/Documentation/devicetree/bindings/remoteproc/fsl,imx-rproc.yaml
> index c18f71b648890..6679b10f9da5a 100644
> --- a/Documentation/devicetree/bindings/remoteproc/fsl,imx-rproc.yaml
> +++ b/Documentation/devicetree/bindings/remoteproc/fsl,imx-rproc.yaml

[ ... ]

> @@ -62,6 +62,14 @@ properties:
>      minItems: 1
>      maxItems: 32
> =20
> +  memory-region-names:
> +    minItems: 1
> +    maxItems: 32
> +    items:
> +      oneOf:
> +        - const: rsc-table
> +        - pattern: '^vdev[0-9](buffer|vring[0-9])$'

[Severity: Medium]
Are these schema constraints overly restrictive for generic memory carveout=
s?

Remoteproc device trees commonly use memory-region to pass generic memory
carveouts like system memory or firmware. Because memory-region-names must
have a one-to-one mapping with memory-region, attempting to name these
generic carveouts (such as 'sysmem') will cause schema validation failures
in dtbs_check.

If a developer instead names a generic carveout with a 'vdev' prefix just
to pass validation, the driver's initialization in imx_rproc_addr_init()
will skip mapping the region because it ignores any region starting with
'vdev'.

Does this leave the user with no correct way to name and map their generic
carveouts?

> +
>    power-domains:
>      minItems: 2
>      maxItems: 8

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260522111849.783-=
1-laurentiumihalcea111@gmail.com?part=3D1

