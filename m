Return-Path: <devicetree+bounces-316684-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id n1aSL3MWQmrtzwkAu9opvQ
	(envelope-from <devicetree+bounces-316684-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 08:53:39 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 26A276D6933
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 08:53:39 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=none;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316684-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-316684-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D95E13046523
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 06:47:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E8A73A543F;
	Mon, 29 Jun 2026 06:47:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AC524A35
	for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 06:47:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782715665; cv=none; b=YIPFKIbyjesYFynawnz1ENuxxbBnBY/so3E5wZ52gP9wVT8FX03rCvOkZa3kBxT6XaMEaFHr5GGbGSPf1TNaV5d76LqfOerLjLFjsAFZOP9nNfZU1JKYNq5tC/Qr0UxAQ4+gHVq4VDqnbCoam8C2vILDsJ1dauQInAOg6n4L/Rs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782715665; c=relaxed/simple;
	bh=0BNUaTm4L8qHo/A0axwlSxbxO511LNRqvNWHv3zNvME=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=LPpCytjK7sXNLVeqhEmalXZihOJ2QJYwzAjtKh75VFiJOQPExrLmFqIgPfFpOgFLFBf1dMSevIe/N05PoIlsnsaEAd3KDVRzULhQexEujK9gAzDUlfZWFO3zArjkYQr1M5UABJ5tlvEuu04ctUDgxAUvBGNLRnnKmVXY/u0hkO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F0A821F000E9;
	Mon, 29 Jun 2026 06:47:43 +0000 (UTC)
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: memory: Add TI FSS_FSAS binding
Reply-To: sashiko-reviews@lists.linux.dev
To: "Santhosh Kumar K" <s-k6@ti.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260629064228.860226-2-s-k6@ti.com>
References: <20260629064228.860226-1-s-k6@ti.com>
 <20260629064228.860226-2-s-k6@ti.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 29 Jun 2026 06:47:12 +0000
Message-Id: <20260629064743.F0A821F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.54 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-316684-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:s-k6@ti.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	R_DKIM_NA(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,ti.com:email,sashiko.dev:url,devicetree.org:url,vger.kernel.org:from_smtp,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 26A276D6933

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The `$id` field in the YAML binding schema does not match the fi=
le's location, which breaks schema cross-referencing and can cause `dt_bind=
ing_check` to silently skip validation.
--

commit 54d35a3fdeae166603662fbdb3cac4a24e6c37c1
Author: Santhosh Kumar K <s-k6@ti.com>

dt-bindings: memory: Add TI FSS_FSAS binding

This commit adds a device tree binding for the TI Flash Subsystem
Application Subsystem (FSS_FSAS_GENREGS) wrapper. This wrapper block
is present in TI K3 SoCs and controls XIP read prefetch for the OSPI
controller.

> diff --git a/Documentation/devicetree/bindings/memory-controllers/ti,am62=
a-fsas.yaml b/Documentation/devicetree/bindings/memory-controllers/ti,am62a=
-fsas.yaml
> new file mode 100644
> index 0000000000000..81c71ebfb7e13
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/memory-controllers/ti,am62a-fsas.=
yaml
> @@ -0,0 +1,39 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +# Copyright (C) 2025 Texas Instruments Incorporated
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/soc/ti/ti,am62a-fsas.yaml#

[Severity: Medium]
Does this $id path mismatch the file's actual location?

The file is being added to the memory-controllers subdirectory, but the
$id field specifies soc/ti/. When the $id field does not exactly match
the file path relative to Documentation/devicetree/bindings/, it breaks
schema cross-referencing and can cause dt_binding_check to silently skip
validation or report misleading errors.

> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Texas Instruments K3 Flash SubSystem Application Subsystem (FSS_F=
SAS)

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260629064228.8602=
26-1-s-k6@ti.com?part=3D1

