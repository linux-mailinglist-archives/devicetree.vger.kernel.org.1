Return-Path: <devicetree+bounces-320389-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id fzglOuJISGo/ogAAu9opvQ
	(envelope-from <devicetree+bounces-320389-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 04 Jul 2026 01:42:26 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 42A54706263
	for <lists+devicetree@lfdr.de>; Sat, 04 Jul 2026 01:42:26 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="D2J3/49S";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320389-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-320389-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 36DCE3023D93
	for <lists+devicetree@lfdr.de>; Fri,  3 Jul 2026 23:42:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 848B42BDC05;
	Fri,  3 Jul 2026 23:42:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 689E52010EE
	for <devicetree@vger.kernel.org>; Fri,  3 Jul 2026 23:42:23 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783122144; cv=none; b=GU9LIHNp1einKJJB0uNjxQfVLqlflowEzOttGTTY/M6BT6K3W42uqPI8IOlUMUKwaGGFyj1WvuAPfyfWMbJ9SQsWWlDNOr+v1edhnw/pZghI1Z75/aWM9Aoojz23/K/LK6eKMMLH0w7WhufKiXLWphINi/IvspXa3LkliGHslBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783122144; c=relaxed/simple;
	bh=As2HAU5PuUJGendqz7wx3wFpfm0bI/OBSJZ7047wzOM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=SwyOs3XzBDR6EGSd4Sg25AML5CLw6QGPiYQPKWdFwJjczyWwTtgHsU1QdyJu0+WmCf4e3C9BcOX1u4/64FEAtAzZ3Kthxl2+PAQPJQcbKSwHfxeSurk+4ofPGmR8EtnDA2nKeHwh3i6J2fGzqy2X+mCTUcpfAOvEVkCDHPVPrlU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D2J3/49S; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7ECFB1F000E9;
	Fri,  3 Jul 2026 23:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783122142;
	bh=OREPypUrPgy4y2miTeLz+RdBIlQ2Bblm2hWF7JX0EKo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=D2J3/49StCzrp9LNOYpdmmjaUhYUmzy+QAzQRkzf8syH25cDfWLG9oatvKgNVpKIJ
	 m1xA8eWzsIj0GgCHMXvHIBwkysRTIXKZ/UqetguH+dPq7Obj4bmpq03Ks9BXbBcBA3
	 C3VOpfOp5trQvIkWucfDcXZ/Wz8wTlgOYEWRQtj/lBltKfVmcHrBVS0o54ChbSmdMD
	 uMyq2fWLOrNzllRKiwUv+JXgfQT7dMfMx88xRxP3gKaPFFIwxDfY9sunTv3Bx8ghUE
	 nxCVe/nNEo68HEx8CJurS/nKYWbZ+012cCxqUekJItRSaVRPd5uskIZgKpkEN9tllJ
	 dZJwNScivYz2Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v10 01/36] dt-bindings: phy: rockchip-usbdp: add
 improved ports scheme
Reply-To: sashiko-reviews@lists.linux.dev
To: "Sebastian Reichel" <sebastian.reichel@collabora.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, neil.armstrong@linaro.org, olteanv@gmail.com, vkoul@kernel.org, linux-phy@lists.infradead.org, conor+dt@kernel.org
In-Reply-To: <20260703-rockchip-usbdp-cleanup-v10-1-a392711ca8a9@collabora.com>
References: <20260703-rockchip-usbdp-cleanup-v10-0-a392711ca8a9@collabora.com>
 <20260703-rockchip-usbdp-cleanup-v10-1-a392711ca8a9@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 03 Jul 2026 23:42:22 +0000
Message-Id: <20260703234222.7ECFB1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-320389-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:sebastian.reichel@collabora.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:neil.armstrong@linaro.org,m:olteanv@gmail.com,m:vkoul@kernel.org,m:linux-phy@lists.infradead.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,linaro.org,gmail.com,lists.infradead.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[8];
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,collabora.com:email,vger.kernel.org:from_smtp,sashiko.dev:url,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 42A54706263

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Typo in the deprecation keyword ('depreated' instead of 'deprecated=
').
--

commit 80cbcd5498584cd573a979a5b4e236da93d09776
Author: Sebastian Reichel <sebastian.reichel@collabora.com>

dt-bindings: phy: rockchip-usbdp: add improved ports scheme

This commit introduces a proper port scheme to the Rockchip USBDP PHY bindi=
ng
to support USB-C DP AltMode, replacing an undocumented scheme. It deprecates
the single port node in favor of a ports node containing multiple specific
endpoints. The new design roughly follows the Qualcomm QMP USB4-USB3-DP PHY
controller binding while adding an additional port for the USB-C SBU mux.

> diff --git a/Documentation/devicetree/bindings/phy/phy-rockchip-usbdp.yam=
l b/Documentation/devicetree/bindings/phy/phy-rockchip-usbdp.yaml
> index 8b7059d5b1826..35d6717b9cc9e 100644
> --- a/Documentation/devicetree/bindings/phy/phy-rockchip-usbdp.yaml
> +++ b/Documentation/devicetree/bindings/phy/phy-rockchip-usbdp.yaml
> @@ -110,10 +110,34 @@ properties:
> =20
>    port:
>      $ref: /schemas/graph.yaml#/properties/port
> +    depreated: true
        ^^^^^^^^^

[Severity: Low]
This isn't a bug, but there is a typo here ("depreated" instead of
"deprecated").

>      description:
>        A port node to link the PHY to a TypeC controller for the purpose =
of
>        handling orientation switching.

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260703-rockchip-u=
sbdp-cleanup-v10-0-a392711ca8a9@collabora.com?part=3D1

