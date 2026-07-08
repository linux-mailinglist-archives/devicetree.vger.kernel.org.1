Return-Path: <devicetree+bounces-323087-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id dZS9OYaITmo9OwIAu9opvQ
	(envelope-from <devicetree+bounces-323087-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 19:27:34 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id E101872930E
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 19:27:33 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=i7PvAjvT;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323087-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-323087-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 14C9B30737A2
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 17:16:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 925723F86EC;
	Wed,  8 Jul 2026 17:15:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63A6D37269F
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 17:15:31 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783530932; cv=none; b=UnoLvhjPZgEguNEgEcLi7YbgIz0tBW0YNqff0ZkzQus0pof6e5u7jAenSDsGg1T4hfkdLb86J1iDN4DULpJsORWxLn977YJUhlekisBhkjsXEQzBqwrnVsXDxOmjKAeT99M1shmLGlGxv4ehYhCM4oKMDVA4Yy6dSBryQUBIe/4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783530932; c=relaxed/simple;
	bh=tG6BsUtOJvDk9mks6TwH/EjYbJSR5PBdh3qjLsRw1Bk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=GTVOx5uN9NZ086+N8CXhDCRiivj9UpBcN7JZPVpfP4BeX2l+84X+G0h2AyPpF8WZ2n9XM19qnrRPSyau+w3pSotrH+G+vcSMshuH25tmksvzDSRcgGvshY8dooOE7iI4YzyWHdWGY+vwgiHANA2mcqWSKG3pAZf5+nvK7XkFxUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i7PvAjvT; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id F04951F000E9;
	Wed,  8 Jul 2026 17:15:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783530931;
	bh=6O+fN8ZB/btAmRjDaQKH0UjpK9JIvJxEy7kG3dZ6D3U=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=i7PvAjvTzZKoZKfw6BS9EbL3Xiy+TaH/1tEqEoK2tjjP7+dF6x0VpYPuzxf9Ak0KX
	 iVdoodDgLKZVO2yDChkVVRhfasRFNEONPNfTiIMQGIchIwiwP66GLZKLn1aKJsbGjH
	 kuv4RUbct4KbUq8Z1rWU4CD/NvPU/XV4R8hooorIJsgsOEmrE5ygTuepVadFREfh19
	 47YLLcrbD/wnLAOQ6Di0fQMrPe9qCCCCAiePvVmXgT00O5SJD43nalxtecz8UDyI0L
	 z8Q//De+3uUnEGLfvqTQSf2y+IPwxIZF71vcByadtASu9dI5GDZTBlWBNtPlha67K8
	 Zy8KrVp+VEgUQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 3/4] arm64: dts: nuvoton: npcm845: Add peripheral
 nodes
Reply-To: sashiko-reviews@lists.linux.dev
To: "Tomer Maimon" <tmaimon77@gmail.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260708165929.2233934-4-tmaimon77@gmail.com>
References: <20260708165929.2233934-1-tmaimon77@gmail.com>
 <20260708165929.2233934-4-tmaimon77@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 Jul 2026 17:15:30 +0000
Message-Id: <20260708171530.F04951F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-323087-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:tmaimon77@gmail.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,lists.linux.dev:replyto,sashiko.dev:url,vger.kernel.org:from_smtp,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E101872930E

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Missing required DT aliases for the FIU nodes, which will cause th=
e FIU SPI driver to fail to probe.
- [Medium] The `fiu0`, `fiu1`, and `fiu3` SPI controller nodes are missing =
the required `memory` register region.
--

--- Patch [3]: [PATCH v8 3/4] arm64: dts: nuvoton: npcm845: Add peripheral =
nodes ---
commit 206c681ed8ed3430aac99224e79975aed3d5da1b
Author: Tomer Maimon <tmaimon77@gmail.com>

arm64: dts: nuvoton: npcm845: Add peripheral nodes

Extend the NPCM845 SoC DTSI with the peripheral controller nodes needed
by the evaluation board and downstream platforms.

> diff --git a/arch/arm64/boot/dts/nuvoton/nuvoton-common-npcm8xx.dtsi b/ar=
ch/arm64/boot/dts/nuvoton/nuvoton-common-npcm8xx.dtsi
> --- a/arch/arm64/boot/dts/nuvoton/nuvoton-common-npcm8xx.dtsi
> +++ b/arch/arm64/boot/dts/nuvoton/nuvoton-common-npcm8xx.dtsi

[ ... ]

> +		fiu0: spi@fb000000 {

[Severity: High]
Will the FIU SPI driver fail to probe due to missing device tree aliases?

During driver initialization, spi-npcm-fiu.c calls
of_alias_get_id(dev->of_node, "fiu") to determine the controller index.
Since the fiu0, fiu1, fiu3, and fiux nodes do not have corresponding aliases
defined, this lookup will return a negative error code.

This causes the driver to return -EINVAL and fail to probe. The
nuvoton,npcm-fiu binding also mandates that all FIU controllers be
represented in the aliases node.

> +			compatible =3D "nuvoton,npcm845-fiu";
> +			#address-cells =3D <1>;
> +			#size-cells =3D <0>;
> +			reg =3D <0x0 0xfb000000 0x0 0x1000>;
> +			reg-names =3D "control";

[Severity: Medium]
Will this cause a fallback to slower indirect PIO reads?

The fiu0, fiu1, and fiu3 SPI controller nodes omit the second 'memory'
register region and its corresponding 'memory' reg-name.

When the SPI controller probes, it looks up the memory region using:
platform_get_resource_byname(pdev, IORESOURCE_MEM, "memory")

If it fails to find the memory resource, the driver sets desc->nodirmap =3D=
 true
which disables direct memory-mapped reads. The dt binding for nuvoton,npcm-=
fiu
requires both 'control' and 'memory' regions to be specified.

> +			clocks =3D  <&clk NPCM8XX_CLK_SPI0>;
> +			status =3D "disabled";
> +		};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260708165929.2233=
934-1-tmaimon77@gmail.com?part=3D3

