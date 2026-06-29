Return-Path: <devicetree+bounces-316703-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id CvoVImUZQmqp0AkAu9opvQ
	(envelope-from <devicetree+bounces-316703-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 09:06:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id EFB996D6B61
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 09:06:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="gotRbX/u";
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-316703-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-316703-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A326C314CE49
	for <lists+devicetree@lfdr.de>; Mon, 29 Jun 2026 07:00:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BB71A37BE6F;
	Mon, 29 Jun 2026 06:58:20 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 972D23016F1
	for <devicetree@vger.kernel.org>; Mon, 29 Jun 2026 06:58:19 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782716300; cv=none; b=Bzy4Qy1gbgREx4BHG1o5gJ4EORMaMrJULOSAyWYm79N8WAExvP00hMDuY+IIC18GurreSb5jlVUdGNjGYtFyYyCtxU2RQV6dAsSWCi4nvZkRmI0uNv3UHzvuE1W4BqZgM9fV9GH7ZqRDIgYdLjFCXyb58VimKInt01JYSSoZT5U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782716300; c=relaxed/simple;
	bh=nkzehvwJ+NIz/uBVxsYpan5wp9T3KkgjoESOqTJk0w4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=kSb2pk4zIqvDE7YSeOONaJCJRWg17UrThhoJ20yRdLU6XjU1eIak+22T7kykDsw9ScG2meyPHHCBXB0aH6viZYeRLbq4UhrudEOs3NNe3eifVKVUKWqKKHKgP2m3ga8p7twNx1RbYqOMauimdv0NuWtbjuRaSool35zUKY86moc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gotRbX/u; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3B3281F000E9;
	Mon, 29 Jun 2026 06:58:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782716299;
	bh=nkzehvwJ+NIz/uBVxsYpan5wp9T3KkgjoESOqTJk0w4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=gotRbX/udm8KGEffDUidRTPjEg2atk2uTBdaS15Pzy3WtHvxAUJtzyEaptRdjMG4v
	 MtNuny5Ws9x3BxYa5YEYqtGySfhtzrY7OGs2G8rtQ3GU9xWZ81cwx8rvyKRD570uX/
	 WKulPbUk20YP5AMF4QNfaBX7ENZQuhdqpb+QKGt35YpBGsAjJRdCjnPn5uT/ZEhnPA
	 QS4z8VNrAP4ft9+HIIBjnfwoDlei0z+vwc6RdtRHYhqqlgnLPZ7mrFnKBnZLQo4A/F
	 8ezwdU7Rm2G5P/fh4xg3fwMf7+vGafxz2PwxZrldkST6sDtZbFNSod7TapjDTw3m81
	 QMyUvUOlVyTjg==
From: sashiko-bot@kernel.org
Subject: Re: [RESEND PATCH 1/2] dt-bindings: memory: Add TI FSS_FSAS binding
Reply-To: sashiko-reviews@lists.linux.dev
To: "Santhosh Kumar K" <s-k6@ti.com>
Cc: robh@kernel.org, devicetree@vger.kernel.org, conor+dt@kernel.org
In-Reply-To: <20260629065517.868418-2-s-k6@ti.com>
References: <20260629065517.868418-1-s-k6@ti.com>
 <20260629065517.868418-2-s-k6@ti.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 29 Jun 2026 06:58:18 +0000
Message-Id: <20260629065819.3B3281F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-316703-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:s-k6@ti.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,vger.kernel.org:from_smtp,smtp.kernel.org:mid,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,sashiko.dev:url,devicetree.org:url,ti.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EFB996D6B61

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The `$id` field in the YAML binding does not match the file's path =
relative to `Documentation/devicetree/bindings/`.
--

commit e6d297ef6febec50bca3376d0c0b57a9ece18a98
Author: Santhosh Kumar K <s-k6@ti.com>

dt-bindings: memory: Add TI FSS_FSAS binding

Add DT binding for the TI Flash Subsystem Application Subsystem
(FSS_FSAS_GENREGS) wrapper present in TI K3 SoCs. This block controls
XIP read prefetch for the OSPI controller.

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

[Severity: Low]
Does this $id field path match the actual file location?=20

The schema specifies the path as soc/ti/ti,am62a-fsas.yaml, but the patch
places the new file in memory-controllers/. Mismatched paths can break the
schema cross-reference system and cause dt_binding_check to report
misleading errors or silently skip validation.

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260629065517.8684=
18-1-s-k6@ti.com?part=3D1

