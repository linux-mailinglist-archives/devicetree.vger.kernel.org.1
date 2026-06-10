Return-Path: <devicetree+bounces-309620-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id fJHOL6ksKWrjRwMAu9opvQ
	(envelope-from <devicetree+bounces-309620-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 11:21:45 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BC96667C4E
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 11:21:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=bOvAoTL7;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-309620-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-309620-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6F1C93058834
	for <lists+devicetree@lfdr.de>; Wed, 10 Jun 2026 09:03:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F37D73A6B82;
	Wed, 10 Jun 2026 09:03:30 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9B20392824
	for <devicetree@vger.kernel.org>; Wed, 10 Jun 2026 09:03:29 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781082210; cv=none; b=pEZhGUDvOKWzMX2ozVkZbdUhgp1/E1s/pla2nTxYkJEX4HRzaDyvoRn7sGXGtQHUcNNgDm6Aj/ZxOQx6fkWYr5/5q08wsGyEgzPmkZNqQmVd30frZ5WctF4oToCm6SVIgl2Lh38WJrYV5NJ1iZ/40XsIYH9yhl2IE0BSKMePRug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781082210; c=relaxed/simple;
	bh=3iAAe/6aJe1Xje0Ymloo8orL1n3hc9DeX/woZ+TmZL4=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=UAuxnSQIOqHHep9Cg3WYFrujHMwN/NAGunjy+u/F65zU4e6Me95ZJXot0ZnLXG9FTrtFRWsEan7hrJMMZJuZAaLHIBiakyVz9jFI50A4JGTCl78M8jLHFNw2ErLvV3gyimyFTaG+Uv5IB830z0Vl7AYRfTMsED1Gj4v7yAGXI/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bOvAoTL7; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 57EBF1F00898;
	Wed, 10 Jun 2026 09:03:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781082209;
	bh=iNT6C9HZrkXBdI2Uu+Mm4lE+WsUGnaoIiNpiUuS79B4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=bOvAoTL79QCCuMpMwhInWsVl0Q9Z2K74ho8Xdeca7er09lkyAgnKuhPhFd3cnhX9S
	 OfE+nvdJNILUvBjYFUhgW4bvBz5/MoMARLXm3z+cNJoFGUsblGYem2iohOvFcihmtM
	 Zr+mEN+H6Y9ZxLOWtEZwUfQUR829fSxfqwa/bMRwXmA83lrH0JAPlQ9Gq/N4qXj+LQ
	 RDEvYI6K8LuUz2ZLJB0/1J/qkomICsurrQh/XHtvaSrnr+iFoBvoMORpBphCqUgoI2
	 fE6Mb6quUZVnwjZYK9YX4V6vkBULkqkdNzhBcI/I2zPD/Yan4evpxRtI4uliW/Jaw7
	 zwzQho8hXEDcA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 14/16] arm64: dts: mediatek: mt8195-cherry: Add M.2
 E-key slot
Reply-To: sashiko-reviews@lists.linux.dev
To: "Chen-Yu Tsai" <wenst@chromium.org>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260610084053.2059858-15-wenst@chromium.org>
References: <20260610084053.2059858-15-wenst@chromium.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 10 Jun 2026 09:03:28 +0000
Message-Id: <20260610090329.57EBF1F00898@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-309620-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:wenst@chromium.org,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,chromium.org:email,smtp.kernel.org:mid,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 0BC96667C4E

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Deletion of the `wifi@0` child node removes the `wakeup-source` =
property, breaking default Wake-on-WLAN (WOWLAN) capability.
--

commit f79abe85df05e70cd87af21f7a5b924157250109
Author: Chen-Yu Tsai <wenst@chromium.org>

arm64: dts: mediatek: mt8195-cherry: Add M.2 E-key slot

The commit adds an M.2 E-key slot representation for the Mt8195 Cherry
design. It wires up PCIe, USB, and auxiliary signals, replacing the older
PCIe wifi node and power supply properties.

> diff --git a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi b/arch/arm64=
/boot/dts/mediatek/mt8195-cherry.dtsi
> index ef7afc436aefc..c95a54de35672 100644
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
[Severity: Medium]
Does this removal break default Wake-on-WLAN (WOWLAN) capability?

The mt7921 Wi-Fi driver specifically checks for the wakeup-source property
on its Device Tree node during probe to call device_init_wakeup() and
enable Wake-on-WLAN by default.

By replacing the wifi@0 node with an OF graph port endpoint, the PCI core
will no longer match the PCI device to an OF node, making dev->of_node NULL.
This means the driver will not detect the property and could silently leave
default WOWLAN disabled.

> +		port {
> +			pcie1_ep: endpoint {
> +				remote-endpoint =3D <&wifi_ep>;
> +			};
>  		};
>  	};
>  };

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260610084053.2059=
858-1-wenst@chromium.org?part=3D14

