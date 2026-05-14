Return-Path: <devicetree+bounces-297260-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uCpoFME2BWp9TQIAu9opvQ
	(envelope-from <devicetree+bounces-297260-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 04:43:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A367953D20A
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 04:43:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id CD2DE300F9F3
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 02:42:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 282D52BD58A;
	Thu, 14 May 2026 02:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EHx42pKy"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05F3D219A8A;
	Thu, 14 May 2026 02:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778726553; cv=none; b=VZIsJEX7mfOIvUcFFF8GDlsGPZANWBV376+xE8nP/+XsFGBGF9nK3UPcfFKlP13nfSf0sVyKy+8OUtMJGygUCUgS/zUCHs5OXt0ySf/k3V8jG3c4M4CTNqZ0PH3MnRu54OPb/X8/zhRFsjLWMzAvoBgAS9jp+Ya4NeBiJSJJIeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778726553; c=relaxed/simple;
	bh=JhG6utOe9+wKligCuCIEnEer08Gb4MS5kn3vXrw/F94=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=H4cv1ADDlUss0abXH/MU5Py5jqeDvaz/zYnf3gfK6OFpchEEIim9LmWUv9coNkhsKBXrwh0F4aet2bbIb2jmfYfzSLmrdlKxQceqLHhsqDUtbi8wuTp5HtEnpCUt4ki/8LDCTfO2X28uFhPJebCphyT8flLZPNjNrjCeU3B/zX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EHx42pKy; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 95003C19425;
	Thu, 14 May 2026 02:42:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778726552;
	bh=JhG6utOe9+wKligCuCIEnEer08Gb4MS5kn3vXrw/F94=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=EHx42pKy1CLgxO+syEcb+bJsKsDnMjTYk3cVxdpV14CXI015nxXyWB3wjr+AdTiZY
	 S2jQFPl2jrkwU7pBz0bpM77Sjlbrm4ywvKAET6+1A2vO2rbdNurnJHg/kI5hb3cY9n
	 JWqYsgwjh7GrifDQqiNwWSi3Y+wSUsHHGetsvp/PBa2ScCkocHZOfPkUcp5iriNz2/
	 4C2lk3jWl2JKvGIV8mFJfPZ7P9u1HHqC6NhW0gsAuOYyQC3mA8WUTTh/FfUgUXkygv
	 kDN2cirSoSxxlLe01AmU88ls3Q2w77gRPcWoN3vgA0ikNqBIZOwN/EYCqRup5AVfCI
	 x4YwwM/VwSOEQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 3/3] arm64: dts: allwinner: a523: add gpadc node
Reply-To: sashiko-reviews@lists.linux.dev
To: "Michal Piekos" <michal.piekos@mmpsystems.pl>
Cc: robh@kernel.org, devicetree@vger.kernel.org, linux-sunxi@lists.linux.dev, conor+dt@kernel.org, krzk+dt@kernel.org
In-Reply-To: <20260513-sunxi-a523-gpadc-v2-3-d5efde151dac@mmpsystems.pl>
References: <20260513-sunxi-a523-gpadc-v2-3-d5efde151dac@mmpsystems.pl>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 14 May 2026 02:42:32 +0000
Message-Id: <20260514024232.95003C19425@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: A367953D20A
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-297260-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,mmpsystems.pl:email,0.30.167.168:email];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The GPADC node lacks the `#address-cells` and `#size-cells` propert=
ies, which are structurally necessary for its required child nodes.
--

commit df07d88a5b17a24a46e46a7d0f2fce1a78cc0218
Author: Michal Piekos <michal.piekos@mmpsystems.pl>

arm64: dts: allwinner: a523: add gpadc node

This commit adds the GPADC block description for the Allwinner A523 SoC to
the base device tree include file.

> diff --git a/arch/arm64/boot/dts/allwinner/sun55i-a523.dtsi b/arch/arm64/=
boot/dts/allwinner/sun55i-a523.dtsi
> --- a/arch/arm64/boot/dts/allwinner/sun55i-a523.dtsi
> +++ b/arch/arm64/boot/dts/allwinner/sun55i-a523.dtsi

[ ... ]

> +		gpadc: adc@2009000 {
> +			compatible =3D "allwinner,sun55i-a523-gpadc";
> +			reg =3D <0x2009000 0x400>;
> +			clocks =3D <&ccu CLK_BUS_GPADC0>, <&ccu CLK_GPADC0>;
> +			clock-names =3D "bus", "mod";
> +			resets =3D <&ccu RST_BUS_GPADC0>;
> +			interrupts =3D <GIC_SPI 61 IRQ_TYPE_LEVEL_HIGH>;
> +			#io-channel-cells =3D <1>;

Should this node also include #address-cells =3D <1>; and #size-cells =3D <=
0>;?

The driver for this hardware requires channel@X child nodes to probe
successfully. Since these child nodes use reg properties to specify the
channel, omitting the cell properties from the base dtsi forces every board
file to redundantly declare them.

Including them here would prevent DTC warnings or probe failures if a board
author forgets to add them when enabling the device.

> +			status =3D "disabled";
> +		};

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260513-sunxi-a523=
-gpadc-v2-0-d5efde151dac@mmpsystems.pl?part=3D3

