Return-Path: <devicetree+bounces-326827-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id J7hnC2tXV2p6KAEAu9opvQ
	(envelope-from <devicetree+bounces-326827-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 11:48:27 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B94A75CAEA
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 11:48:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=d8VCq7kb;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326827-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326827-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7C647301A7FE
	for <lists+devicetree@lfdr.de>; Wed, 15 Jul 2026 09:45:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28143438483;
	Wed, 15 Jul 2026 09:45:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E4DD73B8111
	for <devicetree@vger.kernel.org>; Wed, 15 Jul 2026 09:45:20 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784108723; cv=none; b=I4oYMeDFwvzHkVXBidOldDEIhMkhNRHU25Ru8lc1InVxqHL0oSHuPKMy5SW0eW9SXZazx56TitbKGbdTnZBGlYAn6eKSSnUW7Nea5ODKgjdu2PdlNXMxwtwX424hCURcL2s1DMItmemtsTL6PLV9gYzjok1FGXYgnlq5TqKC/0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784108723; c=relaxed/simple;
	bh=racWgEavXHeHhWx0vo2h16j6Gm6Dqlzp5KBYG2QDZ/k=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=BOGR9ePxZnoT+EdH7tawk4OYLoOYCg8NiPXCh3Ce5a5mqCr9kj/PfK1rS+xjS2HBbEnxTHruseAi9mafNTXWy/xlIq3Q+C9nSdDwYK3QPxUgMewQtJ+473BzO2oVjZewWakF3KkHFD8riARmu3up62B5Dh1c1eLaPHyjCaxKCiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d8VCq7kb; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 18CDE1F00A3A;
	Wed, 15 Jul 2026 09:45:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784108715;
	bh=CqxjM0E7fppANwedhPGryxwHVsSNFRx5kIsNlKGkSno=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=d8VCq7kbm+g4YZhr7/bCjJxYkyOEpJUyQ6Cwx9yHmfvvOSaHWJGM+dwM8rzxVogzX
	 Fkkn9/RTFBhLntvcE4SK/uakNdzfDm8yTaCS0xFzjcJwpJ63Mop+unZK24P6q1REl/
	 hiYsnNYkcZmtF20VXnkRcl0xs9I1X+aO0JeiABd7YEhRsejiwPNjPT718XdXLhHqlI
	 iEkPGUFgXJbCbbDbSFeTKg+gqMBJHOQ5F5W7zaOTqxbN90C/Sj5TNGxIQQnONzBSKc
	 kBj59J8u1JHGU4XQHvRsgfJai+u7CUFwNCxNnCJUPbbARpXmOX3AIst/Y0FTMUEpF7
	 hXoKqvexRCmEA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 15/16] arm64: dts: mediatek: mt8195-cherry: Add M.2
 E-key slot
Reply-To: sashiko-reviews@lists.linux.dev
To: "Chen-Yu Tsai" <wenst@chromium.org>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260715085348.3457359-16-wenst@chromium.org>
References: <20260715085348.3457359-1-wenst@chromium.org>
 <20260715085348.3457359-16-wenst@chromium.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 15 Jul 2026 09:45:14 +0000
Message-Id: <20260715094515.18CDE1F00A3A@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-326827-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:wenst@chromium.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,vger.kernel.org:from_smtp,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,lists.linux.dev:replyto,chromium.org:email,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8B94A75CAEA

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Removing the `wifi@0` node drops the `wakeup-source` property, b=
reaking default Wake-on-WLAN (WoWLAN) configuration.
--

--- Patch [15]: [PATCH v5 15/16] arm64: dts: mediatek: mt8195-cherry: Add M=
.2 E-key slot ---
commit a818c27444e50b0200c6065b8b79412ac5712494
Author: Chen-Yu Tsai <wenst@chromium.org>

arm64: dts: mediatek: mt8195-cherry: Add M.2 E-key slot

This patch adds an M.2 E-key slot for WiFi/BT combo cards on the
Mt8195 Cherry design. It replaces the PCIe wifi node and its vpcie3v3-supply
property with the new pcie-m2-e-connector representation.

> diff --git a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi b/arch/arm64=
/boot/dts/mediatek/mt8195-cherry.dtsi
> index ef7afc436aefc..8d4cc30d91e44 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
[ ... ]
> @@ -791,14 +832,14 @@ pcie@0 {
>  		reg =3D <0 0 0 0 0>;
>  		device_type =3D "pci";
>  		num-lanes =3D <1>;
> -		vpcie3v3-supply =3D <&pp3300_wlan>;
>  		#address-cells =3D <3>;
>  		#size-cells =3D <2>;
>  		ranges;
> =20
> -		wifi@0 {
> -			reg =3D <0 0 0 0 0>;
> -			wakeup-source;
> +		port {
> +			pcie1_ep: endpoint {
> +				remote-endpoint =3D <&wifi_ep>;
> +			};
>  		};
>  	};
>  };

[Severity: Medium]
Does removing the wifi@0 node and its wakeup-source property break default
Wake-on-WLAN configuration?

The mt7921 PCIe Wi-Fi driver explicitly checks for this property during pro=
be:

drivers/net/wireless/mediatek/mt76/mt7921/pci.c:
    if (of_property_read_bool(dev->mt76.dev->of_node, "wakeup-source"))
        device_init_wakeup(..., true);

By completely replacing the wifi@0 child node with an OF graph port under
the PCIe root port, the PCI endpoint device loses its of_node instantiation
and the driver cannot find the wakeup-source property.

Should the port node be placed inside the wifi@0 node so the PCI device
retains its Device Tree bindings?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260715085348.3457=
359-1-wenst@chromium.org?part=3D15

