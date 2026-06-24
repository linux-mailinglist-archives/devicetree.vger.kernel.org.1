Return-Path: <devicetree+bounces-315316-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id Itb+CCMJPGr3iwgAu9opvQ
	(envelope-from <devicetree+bounces-315316-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 18:43:15 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 63AEE6C00BF
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 18:43:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=SY8voQox;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315316-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-315316-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F0E4430F29A0
	for <lists+devicetree@lfdr.de>; Wed, 24 Jun 2026 16:38:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0100322C67;
	Wed, 24 Jun 2026 16:38:23 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B40CC321420
	for <devicetree@vger.kernel.org>; Wed, 24 Jun 2026 16:38:22 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782319103; cv=none; b=Jih0561x+Rk5YNt/V1U2fi0VVd826BByTsuDe1h2a/F2IMcdqnqr4c+OH6baYrEkDVvjOSrlY1oocGzJcX91HR7hP1czSBIK5bV4YvSVT4PIr4T+NN2kn8PRJitpLUNsynQCY0NU2O6g9eD5LDs0NRO+XduH8V3qTLuqCON70+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782319103; c=relaxed/simple;
	bh=ZdXf+VPFSsehTLfmSxJlLgAzC/WYxAfrc1iYRA3886M=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=rlNPGPReFFvtJFfxJLJtKb3POe6uUNSRbIWLhPSIVI+TRhUtjf7E4y46YQNH3ZXRalSBBD/eFV8Ow81JjQPVh854GtA3ViJ1dZzMuPOXsb8Xjm+K8ulu6m3a1meJeA2zkjew7r338FL31S3MV0Krfgr1tDhn8Ps+DGE8jwuS8Ig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SY8voQox; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 745D01F00A3D;
	Wed, 24 Jun 2026 16:38:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782319102;
	bh=CCu2Kx0eSXVav3dvyRBCxGEAVm4wCX5k3MWTpIO96Ck=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=SY8voQox7nPnRj5f0T10OSRkCBXgiJ0vyTegRkXDQIJ6ocCbsBrW/bJVplipBfhjY
	 LAr+DA2jPuWJWTmUPSp+i8qNqQDm1Gw5MF6goCh1xEMKvZ/Ex1Rx4mTyBqtaLRS4Ll
	 RiSJyN3tXu4uc4q8YCw+FDoUoBzRj+9rnJFklLKps+vSO1WmztfvFmPX6lq7HNtE9y
	 4McRkRGO/c38f/o1nUA+/cK2ZxSsZYjeyFlNXsvkK0rTqISqLcVya6KXzXQnwWFNhq
	 8bS4+IK3PGfir/0nepKDoubYMr+s2JjMxv+EUXZgcJyp+Cy2nabjW6U2Yn7NiZ4BBw
	 +xLU3QxgvXbbA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2] dt-bindings: mmc: Convert TI OMAP2420 MMC to DT
 schema
Reply-To: sashiko-reviews@lists.linux.dev
To: "Eduard Bostina" <egbostina@gmail.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260624163112.535237-1-egbostina@gmail.com>
References: <20260624163112.535237-1-egbostina@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 24 Jun 2026 16:38:22 +0000
Message-Id: <20260624163822.745D01F00A3D@smtp.kernel.org>
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-315316-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:egbostina@gmail.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
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
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 63AEE6C00BF

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The `ti,hwmods` property was omitted from the `required` list du=
ring the conversion to YAML.
--

commit 2529eee822cb54c2e574fedc2f1d4933627359c5
Author: Eduard Bostina <egbostina@gmail.com>

dt-bindings: mmc: Convert TI OMAP2420 MMC to DT schema

This commit converts the Texas Instruments MMC host controller bindings
for OMAP1 and 2420 from a text format to DT schema.

> diff --git a/Documentation/devicetree/bindings/mmc/ti,omap2420-mmc.yaml b=
/Documentation/devicetree/bindings/mmc/ti,omap2420-mmc.yaml
> new file mode 100644
> index 0000000000000..794d5ec0b58e6
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mmc/ti,omap2420-mmc.yaml

[ ... ]

> +required:
> +  - compatible
> +  - reg
> +  - interrupts

[Severity: Medium]
Should ti,hwmods be included in this required properties list?

The original text binding in ti-omap.txt listed ti,hwmods under its
Required properties. By omitting it here, device trees missing the property
will pass validation, but could fail to probe at runtime since the legacy
OMAP platform code relies on the hwmod framework for clock and power domain
configuration.

> +
> +unevaluatedProperties: false

[ ... ]

> diff --git a/Documentation/devicetree/bindings/mmc/ti-omap.txt b/Document=
ation/devicetree/bindings/mmc/ti-omap.txt
> deleted file mode 100644
> index 02fd31cf361d6..0000000000000
> --- a/Documentation/devicetree/bindings/mmc/ti-omap.txt
> +++ /dev/null

[ ... ]

> -Required properties:
> -- compatible: Must be "ti,omap2420-mmc", for OMAP2420 controllers
> -- ti,hwmods: For 2420, must be "msdi<n>", where n is controller
> -  instance starting 1

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260624163112.5352=
37-1-egbostina@gmail.com?part=3D1

