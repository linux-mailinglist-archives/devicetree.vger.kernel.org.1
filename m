Return-Path: <devicetree+bounces-322145-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id RB30FmgWTWptuwEAu9opvQ
	(envelope-from <devicetree+bounces-322145-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 17:08:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A508E71D046
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 17:08:23 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=auu5775D;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322145-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-322145-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8C997301E6E6
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 14:35:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4F20242A142;
	Tue,  7 Jul 2026 14:35:35 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CFE93D9028
	for <devicetree@vger.kernel.org>; Tue,  7 Jul 2026 14:35:33 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783434935; cv=none; b=qS25y446UilWox9ZTT4HIxpLM0P/dZDmYZTQTfUEb7pncfmHqX3tomYAidmonWVY2Bda2wlNfGq5V8aL3o+xNbqG1Z1zjGHhNqONenkwMuVBhAGhENL5EwOZwZbXSIaRiXKtPVDCCgC90cQTLpjd5Wi1Dlm9/ATm3+pISbTJH6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783434935; c=relaxed/simple;
	bh=oBJSmzHEmtYLgLBjqoNVo0ZD5qUBq5K/kpfsEoUnqYY=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=lX3wSXmTO0AqMgjXsSOxxnZrYjL4NHjNNt615sLc5SOgoH1pecVWozMi5oC0trDjWb7KNu5VNmpwXmxSF7klcGsn+zqe/NKAHJZPGBYAWHh/anDoNeXb8hFToqzbMufj5T1EwCXCtZ/r62ktqcKnmyDQFNvmi7rFSHSUf7ZIzZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=auu5775D; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 65D661F000E9;
	Tue,  7 Jul 2026 14:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783434933;
	bh=yoJyL3+5kI5tecVgVKNUxAu+uoe7KSfvJLUpR4/oxHM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=auu5775DszXK1pFPaGL+dZztza5GOmZOrrvsNyTTYssuNtQGFH/KFvNPbgJNZhBgd
	 9YSFdW1i9seJC7VGP8Pi8IEkhUxQgtBB4S+iKiTY8uFLzfxmVKFopq1f+jwplJ/VIN
	 EsgbxyhhD6S3lVMCcUzQkOzSu3FRmz8lwJQIKU3eV1weMHLFAwoLqrAEmXWoTL6vOz
	 UelEjso1NfAJBmoXLglBK+4SCBV6YDFqlhxGU3SlqihmOZ4+D/bCyNjnv8cc4Jd9ui
	 8oedsVP1+kGQMe8zU4kPQejZ9fp3A7SBP3ZnXIpsOQG26vJma5ssMFGOtJuB9AjZVx
	 Z6VAuRNURqRcQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 01/12] dt-bindings: phy: Document MT8195 and MT8196
 DisplayPort PHYs
Reply-To: sashiko-reviews@lists.linux.dev
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: robh@kernel.org, linux-phy@lists.infradead.org, neil.armstrong@linaro.org, olteanv@gmail.com, conor+dt@kernel.org, devicetree@vger.kernel.org, vkoul@kernel.org, dri-devel@lists.freedesktop.org
In-Reply-To: <20260707141931.191172-2-angelogioacchino.delregno@collabora.com>
References: <20260707141931.191172-1-angelogioacchino.delregno@collabora.com>
 <20260707141931.191172-2-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 07 Jul 2026 14:35:33 +0000
Message-Id: <20260707143533.65D661F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-322145-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:angelogioacchino.delregno@collabora.com,m:robh@kernel.org,m:linux-phy@lists.infradead.org,m:neil.armstrong@linaro.org,m:olteanv@gmail.com,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:vkoul@kernel.org,m:dri-devel@lists.freedesktop.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,lists.infradead.org,linaro.org,gmail.com,vger.kernel.org,lists.freedesktop.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,collabora.com:email,vger.kernel.org:from_smtp,smtp.kernel.org:mid,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A508E71D046

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [High] The proposed PHY binding incorrectly models the PHY as a standalon=
e device node with an overlapping `reg` region that conflicts with the exis=
ting DP/eDP TX controller.
--

--- Patch [1]: [PATCH v2 01/12] dt-bindings: phy: Document MT8195 and MT819=
6 DisplayPort PHYs ---
commit 697e3d14510b082973bfd257d964015014dae7b9
Author: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

dt-bindings: phy: Document MT8195 and MT8196 DisplayPort PHYs
   =20
This adds bindings for the DisplayPort and Embedded DisplayPort PHYs found
in the MediaTek MT8195 and MT8196 SoCs. It includes properties for varying
impedance calibrations to optimize the EYE signal pattern.

> diff --git a/Documentation/devicetree/bindings/phy/mediatek,mt8195-dp-phy=
.yaml b/Documentation/devicetree/bindings/phy/mediatek,mt8195-dp-phy.yaml
> new file mode 100644
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/mediatek,mt8195-dp-phy.yaml
[ ... ]
> +required:
> +  - compatible
> +  - reg
> +  - "#phy-cells"
[ ... ]
> +examples:
> +  - |
> +    phy@1c500000 {
> +        compatible =3D "mediatek,mt8195-dp-phy";
> +        reg =3D <0x1c500000 0x2000>;
[Severity: High]
Will this reg region conflict with the existing DP/eDP TX controller?

The existing MT8195 DP controller node (edp_tx in mt8195.dtsi) already uses
the base address 0x1c500000 for its region, and the monolithic mtk_dp.c
driver requests this entire exclusive region.

If the PHY is modeled as a standalone sibling node with an overlapping memo=
ry
bound, it seems the kernel's devm_platform_ioremap_resource will fail with
-EBUSY during driver probe and break the display controller.

Should the PHY instead be modeled as a child node without an absolute reg, =
or
should these calibration properties be merged directly into the existing
mediatek,dp.yaml controller binding?

> +        #phy-cells =3D <0>;
> +        nvmem-cells =3D <&edp_glb_bias_trim>, <&edp_clktx_impsel>,
[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260707141931.1911=
72-1-angelogioacchino.delregno@collabora.com?part=3D1

