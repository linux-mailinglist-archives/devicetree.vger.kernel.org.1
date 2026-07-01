Return-Path: <devicetree+bounces-318532-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 0GiuKj8LRWru5goAu9opvQ
	(envelope-from <devicetree+bounces-318532-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 14:42:39 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3EBBA6ED7A6
	for <lists+devicetree@lfdr.de>; Wed, 01 Jul 2026 14:42:39 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=k+QFUUL9;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-318532-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-318532-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B6FA9310D344
	for <lists+devicetree@lfdr.de>; Wed,  1 Jul 2026 12:34:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8726481A90;
	Wed,  1 Jul 2026 12:27:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAA3E480DF4
	for <devicetree@vger.kernel.org>; Wed,  1 Jul 2026 12:27:56 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782908877; cv=none; b=Cb8qhWitBAFg0yoeiVXDAB4UPYS7eO91dfS3lWBc6lnCGJX9xG6MZu+85zLnoCgGairD57dBRxb12bc85BgLVDxhzSRnQqkWvHfj8Ha+4Rn1AltT4zQ9bCINTfjnWCz6L8T601AdDqzRysLJlswpnTkIoa1z4CGV4+p3XFwcPds=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782908877; c=relaxed/simple;
	bh=uH+tHAu1oMsIrFclpVW6q5vgBGBh0i/iN6YPqW16YYo=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=pvKYjdHnFc2NIYpU85lmR8LJWFi3jkwA4UlZpZ14Ackk3y93zwyI2VZPjJU3DpaN4vFoZ2NjHGknStHH6B9hQxva25oh9A0CLwAY3MtGDvw8agCSnzoKluxenMFz54yXPW9eiqnt6O4xg41yjmAYvB0hkU2tBsOXLLbY1p1PpSg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k+QFUUL9; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id D031B1F000E9;
	Wed,  1 Jul 2026 12:27:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782908876;
	bh=dpF9Ah1JqyA2hm8UXbH4GPZaMqGAhXDZ4O8SylEiMng=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=k+QFUUL9JXDqsqKPuAfY73B6jmndK1V70+CX+wbbOx/fnUG2a3kMHKi0/YVgv3lGc
	 kykBN5IdWMHa7DZa4vTFxUovhg82L7M8HlumInPcJJIf1AM5asCAW2UcpuP0fDr5Bp
	 prZMHpOzVi1ZrADzGutugmmu9uJTLb9HnGbfvpdhUxcaIslsyLUO8/8atK/ri18mZ8
	 AmtzHIJ1iyQGaxaeoFRJuAGmo/ZdrhFm8sDKkG6gBh12Kgj/UQRtUqQgmLex7ZYnfq
	 3YN88/QiP/Q5ar7IV7hXqqRlElX+HNXFVRi/7f5ss6UUELHgl42sN7Vug11iAgEpOW
	 UAN2HiMu9kHfg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 01/12] dt-bindings: phy: Document MT8195 and MT8196
 DisplayPort PHYs
Reply-To: sashiko-reviews@lists.linux.dev
To: "AngeloGioacchino Del Regno" <angelogioacchino.delregno@collabora.com>
Cc: neil.armstrong@linaro.org, linux-phy@lists.infradead.org, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, dri-devel@lists.freedesktop.org, vkoul@kernel.org, olteanv@gmail.com
In-Reply-To: <20260701122008.19509-2-angelogioacchino.delregno@collabora.com>
References: <20260701122008.19509-1-angelogioacchino.delregno@collabora.com>
 <20260701122008.19509-2-angelogioacchino.delregno@collabora.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 01 Jul 2026 12:27:55 +0000
Message-Id: <20260701122755.D031B1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-318532-lists,devicetree=lfdr.de];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:angelogioacchino.delregno@collabora.com,m:neil.armstrong@linaro.org,m:linux-phy@lists.infradead.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:dri-devel@lists.freedesktop.org,m:vkoul@kernel.org,m:olteanv@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[linaro.org,lists.infradead.org,vger.kernel.org,kernel.org,lists.freedesktop.org,gmail.com];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:rdns,sto.lore.kernel.org:helo,smtp.kernel.org:mid,collabora.com:email,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3EBBA6ED7A6

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The device tree example will fail `make dt_binding_check` validatio=
n due to a 64-bit `reg` property at the root level without `#address-cells =
=3D <2>` and `#size-cells =3D <2>`.
--

commit c7b476cde050e045aaa56bae9dd7ecc7b3d34ced
Author: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
dt-bindings: phy: Document MT8195 and MT8196 DisplayPort PHYs

This adds bindings for the DisplayPort and Embedded DisplayPort PHYs found =
in
the MediaTek MT8195 and MT8196 SoCs. The PHY supports varying impedance
calibrations for the signals to reach an optimal EYE signal pattern.

> diff --git a/Documentation/devicetree/bindings/phy/mediatek,mt8195-dp-phy=
.yaml b/Documentation/devicetree/bindings/phy/mediatek,mt8195-dp-phy.yaml
> new file mode 100644
> index 0000000000000..5847963a7085e
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/mediatek,mt8195-dp-phy.yaml

[ ... ]

> +examples:
> +  - |
> +    phy@1c500000 {
> +        compatible =3D "mediatek,mt8195-dp-phy";
> +        reg =3D <0 0x1c500000 0 0x2000>;

[Severity: Low]
Looking at the examples section in mediatek,mt8195-dp-phy.yaml, will this
example pass make dt_binding_check validation? The reg property contains 4
cells, but since the example node is at the root level without a parent node
explicitly defining #address-cells =3D <2> and #size-cells =3D <2>, the dum=
my
root node defaults to 1 for both. This causes the 4 cells to be parsed as 2
separate items, which violates the schema's maxItems: 1 constraint.

> +        #phy-cells =3D <0>;
> +        nvmem-cells =3D <&edp_glb_bias_trim>, <&edp_clktx_impsel>,
> +                      <&edp_imp_ln0_pmos>, <&edp_imp_ln0_nmos>,
> +                      <&edp_imp_ln1_pmos>, <&edp_imp_ln1_nmos>,
> +                      <&edp_imp_ln2_pmos>, <&edp_imp_ln2_nmos>,
> +                      <&edp_imp_ln3_pmos>, <&edp_imp_ln3_nmos>;
> +        nvmem-cell-names =3D "rbias-trim", "impedance-txclk",
> +                           "impedance-lane0p", "impedance-lane0n",
> +                           "impedance-lane1p", "impedance-lane1n",
> +                           "impedance-lane2p", "impedance-lane2n",
> +                           "impedance-lane3p", "impedance-lane3n";
> +    };

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260701122008.1950=
9-1-angelogioacchino.delregno@collabora.com?part=3D1

