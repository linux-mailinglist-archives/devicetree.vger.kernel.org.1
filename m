Return-Path: <devicetree+bounces-325129-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id F2U3A+4FVGr1gwMAu9opvQ
	(envelope-from <devicetree+bounces-325129-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 23:23:58 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 42608745F38
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 23:23:57 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="MMEV7/dR";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325129-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-325129-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id F3D59300AB1E
	for <lists+devicetree@lfdr.de>; Sun, 12 Jul 2026 21:23:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 815FD36AB5E;
	Sun, 12 Jul 2026 21:23:55 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 683F117C203
	for <devicetree@vger.kernel.org>; Sun, 12 Jul 2026 21:23:54 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783891435; cv=none; b=eCdmPsTk8RDh2TxKupYAjaEfolQA7N/mGu+YRtTPBBDHhFGiLco28a5FBBZ1/8indz7DCWEprjWdJOCIitj3WWcXzmcdMFDGnonMZOsXe9V7xzi4GkAJhY+iL4J6bdJykVn8h+pxGHYJbLo791tPz0+TeDMi+ebUagEjUBDu4ok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783891435; c=relaxed/simple;
	bh=DConIZkgsyu0x77fa9NFkexBrJQuBwUnGxDd1V8zh38=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=aVhqoA8yIZD3CSexb5bShCpPGeCzoCJiDNbCiyXKxH7074X8ecAKOhTLv8UDV7MRGmY1D8TW54PD3fdb0qSxpMUXFs45HXCa4gxAHWy3xN5DsOQa5i2cEKomZCRAO/l/BvrrFCdDQ0W/j0ztsursj/ivWAZf7MygF+J6dha54SI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MMEV7/dR; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C168B1F000E9;
	Sun, 12 Jul 2026 21:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783891434;
	bh=8Zfl1BCUsRerReci4AYBjesIkboUHP3l4u53EaTdZgE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=MMEV7/dR4qYWYuQ6faVc/EvBxn0xaSO6cQ+qe2QloZHzLpXQxrZaeaujIUc6kjgVG
	 xw6coix2PKFdRlRb5V0V8S9TkPhwlzUlPiayqCrOCXh8xsW1jxzPmQWcWGO/t6oNtd
	 jJbWUnPZ9S2SUSGfb2A3HTAjerKlUHFq9cO1x35s6Bs9gf4qrFRAPQqc5l2ZkKQhyX
	 kaj5oaLg+NKvNAkPpCTDtG4khIEpm2cAJW/ty9SFcCfXj8c8ZpGBlOMt/fIAr96Jcw
	 3cCTnm4hfk8QQcCb8nNehP32q056Yfh2s4nC4B/j5c/BVts8iHt4u3j+MJ72LmIU7C
	 anoVtyxiKmmMQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 3/6] dt-bindings: iommu: Add Broadcom BCM2712 IOMMU
Reply-To: sashiko-reviews@lists.linux.dev
To: "Daniel Drake" <dan@reactivated.net>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260712-bcm2712-iommu-submit-v1-3-80e10cdde2ea@reactivated.net>
References: <20260712-bcm2712-iommu-submit-v1-0-80e10cdde2ea@reactivated.net>
 <20260712-bcm2712-iommu-submit-v1-3-80e10cdde2ea@reactivated.net>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 12 Jul 2026 21:23:53 +0000
Message-Id: <20260712212353.C168B1F000E9@smtp.kernel.org>
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
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-325129-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:dan@reactivated.net,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,reactivated.net:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,sashiko.dev:url,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 42608745F38

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The `brcm,bcm2712-iommu` binding unconditionally requires the `b=
rcm,iommu-cache` property, breaking validation compatibility with existing =
RPi5 firmware.
--

--- Patch [3]: [PATCH 3/6] dt-bindings: iommu: Add Broadcom BCM2712 IOMMU -=
--
commit abf846fdde20af5f8370795e68ffc7099b1c33db
Author: Daniel Drake <dan@reactivated.net>

dt-bindings: iommu: Add Broadcom BCM2712 IOMMU

This commit adds device tree bindings for the Broadcom BCM2712 IOMMU
and its shared TLB cache. It aims to support hardware address translation
while maintaining compatibility with existing Raspberry Pi 5 firmware.

> diff --git a/Documentation/devicetree/bindings/iommu/brcm,bcm2712-iommu.y=
aml b/Documentation/devicetree/bindings/iommu/brcm,bcm2712-iommu.yaml
> new file mode 100644
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iommu/brcm,bcm2712-iommu.yaml

[ ... ]

> +required:
> +  - compatible
> +  - reg
> +  - '#iommu-cells'
> +  - brcm,iommu-cache

[Severity: Medium]
Will this cause schema validation to fail for older device trees?

The commit message mentions including compatibility with the cache phandle
used in existing firmware shipped on Raspberry Pi 5. If those existing
device trees use the deprecated "cache" property instead of
"brcm,iommu-cache", unconditionally requiring "brcm,iommu-cache" here
seems like it would break dtbs_check validation for them.

Could this be handled using a oneOf rule to require either
"brcm,iommu-cache" or "cache" to ensure older firmware setups still pass
validation?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260712-bcm2712-io=
mmu-submit-v1-0-80e10cdde2ea@reactivated.net?part=3D3

