Return-Path: <devicetree+bounces-309698-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id dF3rOQZHKWrhTQMAu9opvQ
	(envelope-from <devicetree+bounces-309698-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 13:14:14 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F5EF668A03
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 13:14:14 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=ici7Lzi2;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309698-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-309698-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D29D630048D2
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 11:08:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B96053FA5F3;
	Wed, 10 Jun 2026 11:08:29 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E6393DD875;
	Wed, 10 Jun 2026 11:08:25 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781089709; cv=none; b=Uy5IVbfRyQa7KKRgd9nBTPcU+Cfe3G4ZIlyhGmd/5MACin/HIoRuh61Lfpq5HbPD/VklSUYnGYT+C73HAJ/CqiuHoJPMhpRVpXmSa7uBOJ60vtaS9NdsDubPnxH91zuYrUkvMlgV6R08EOoiwgVVClmZlBwX27Lmt/94D/gn+uw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781089709; c=relaxed/simple;
	bh=mBrFUz99hWxWYZGSXjxSbqBNs9NaVta2ZlXXF/RF9dE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=NZluyy4y6IDEY82hpQa3upsVF56vlmWzptUH9qpIUVs1nTj6c3rnnbRsS7v2W66pkRTldoafB4ctGq7jNYMAK6e1D3MHS0twV0Sz1OinFggHQikbEpbyPBc9o5ajUNvV54b/aEeIzMyei4rk02o+77Ztk9hBcMU1/hPfmq6wgZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ici7Lzi2; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 240271F00893;
	Wed, 10 Jun 2026 11:08:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781089705;
	bh=HOzjAD82Dx4KQLnvhXPTPyF6EnKrAp6IsRBgebvmzbc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=ici7Lzi2XHbZouQ97p0qjPUta69O+M4Rz3o0XYKsPREj1Z1MvR6tRpmxlEpkfD5hP
	 JewczZw1M7CmlXlc23viAGrE/2qLrKOIGikeaCCy0RTi/PHxs6nF+scISK4P5H+xyQ
	 CI1cAkbw0fcyz80vyZJKmLFFbAWOFlGHpKC2tLkP6kZlElevbSpojKiKYGeQX6dPjK
	 rW4jmajGAm12FQT4tTqOknt5zRA8m6bLCGEt8iLxb9xEk+IYhqLntXEV4F89I1bSWN
	 wWDeXu16McWCfkMXabR4T+2ShaCbmooZm8sJG5iyB98jGUD/SgxjykKaEVBXxy/nZ/
	 snjp3sT9q3KRQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: PCI: qcom,pcie-ipq9574: Add IPQ9650
 compatible
Reply-To: sashiko-reviews@lists.linux.dev
To: "Kathiravan Thirumoorthy" <kathiravan.thirumoorthy@oss.qualcomm.com>
Cc: devicetree@vger.kernel.org, linux-pci@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260610-ipq9650_pcie_binding-v2-1-69e27a1fbf1c@oss.qualcomm.com>
References: <20260610-ipq9650_pcie_binding-v2-1-69e27a1fbf1c@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 10 Jun 2026 11:08:24 +0000
Message-Id: <20260610110825.240271F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-309698-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,qualcomm.com:email,vger.kernel.org:from_smtp,sashiko.dev:url,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:kathiravan.thirumoorthy@oss.qualcomm.com,m:devicetree@vger.kernel.org,m:linux-pci@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 4F5EF668A03

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The schema modification fails to make the global interrupt manda=
tory for IPQ9650 when `msi-map` is used.
--

commit 27378ca447659c2b32e287fcda248ae3808316af
Author: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>

dt-bindings: PCI: qcom,pcie-ipq9574: Add IPQ9650 compatible

This commit adds the IPQ9650 PCIe compatible string to the IPQ9574 binding
and updates the constraints to make the global interrupt required for the
IPQ9650 controller.

> diff --git a/Documentation/devicetree/bindings/pci/qcom,pcie-ipq9574.yaml=
 b/Documentation/devicetree/bindings/pci/qcom,pcie-ipq9574.yaml
> --- a/Documentation/devicetree/bindings/pci/qcom,pcie-ipq9574.yaml
> +++ b/Documentation/devicetree/bindings/pci/qcom,pcie-ipq9574.yaml
[ ... ]
> @@ -82,6 +83,18 @@ required:
> =20
>  allOf:
>    - $ref: qcom,pcie-common.yaml#
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - qcom,pcie-ipq9650
> +    then:
> +      properties:
> +        interrupts:
> +          minItems: 9
> +        interrupt-names:
> +          minItems: 9

[Severity: Medium]
The commit message mentions making the global interrupt required for IPQ965=
0,
but does this block actually enforce its presence?

Since qcom,pcie-common.yaml allows interrupts and interrupt-names to be
omitted entirely if an msi-map property is present, a node could omit
the interrupts property completely. If omitted, the minItems constraints
here are skipped, and the node will silently pass validation without
providing the global interrupt.

Should interrupts and interrupt-names also be explicitly added to a
required list within this then block to ensure they cannot be bypassed?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260610-ipq9650_pc=
ie_binding-v2-0-69e27a1fbf1c@oss.qualcomm.com?part=3D1

