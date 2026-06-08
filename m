Return-Path: <devicetree+bounces-308016-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id EABYLNldJmr/VQIAu9opvQ
	(envelope-from <devicetree+bounces-308016-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 08:14:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 45207653109
	for <lists+devicetree@lfdr.de>; Mon, 08 Jun 2026 08:14:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=OtIGDBey;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-308016-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-308016-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id A053A3001FEA
	for <lists+devicetree@lfdr.de>; Mon,  8 Jun 2026 06:14:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DAB0438655B;
	Mon,  8 Jun 2026 06:14:45 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C37EA33EAED
	for <devicetree@vger.kernel.org>; Mon,  8 Jun 2026 06:14:42 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780899285; cv=none; b=WrsoK7AybIuZUn3T8R1+DoBumIkbSzQq4FT33aRc6DUH28uHEaa4hNT1txZ305erKE3uuvvM4DjDOiZYedr75DakCWTQPOMOQQ4YkoFTtexd8IBgaHs/IAmlzkHbsi5jBKj3LVbPy08f93mG5msyEkteY3Ebhi5KTqMdX23bMwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780899285; c=relaxed/simple;
	bh=+0KZUmF8n25iPmGGl2LYZ+qG1xoVrR1EV0cl6iQaODM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=b87pPN6Nc/y8d95X93clt+wyaamwVAw8zsv539CKbMtIChADhD5zW0s30s7viS3grrtmhV1duZ6vLCebbnWePjFaWWaDLqNPVL5QMj6QCzbpu5x4za+8BCn2pCP9+a7fPGvxSuGdfl67O04aUz6Id2zO+VEqO07RrltPypB6yvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OtIGDBey; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E32351F00893;
	Mon,  8 Jun 2026 06:14:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780899282;
	bh=DX56CF1Sw/0nfXttnIA8rXQ/zQI3VxIUoa8PrEjQwZI=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=OtIGDBeyaaFzafazQ2Xjm/tAKaUr+WnOr7J4Heg52IryMIDSvPoZQStZPozhOWPeq
	 qQTNsKEGAMVRESadZeoTP9Xq1ZAHyEZzjJ1Zxtb7XC2ppP5bcjm87la4CO+SfK7Uqo
	 0eXtPXlUcNUi/tHSlAcOsJ87MI500/7tnQZct44pD3ovXfW2Ti9NiLy1T2HD/xYePt
	 RGOcfwVGQdYpnjGLbLTyW0n7JPiPhq4j7LvSvFCTH8LOmC12hYkptXZ/ZaRNV0tWYX
	 wV3bNMjgWYhV6LrUk1q3GjsUhH3Qbalj30lGH8mzFxvBTQ1P0gk8mt+Vg9BkGvhwYc
	 Uql4pVebdF95w==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v7 1/2] dt-bindings: arm: rockchip: add Vicharak Axon
 board
Reply-To: sashiko-reviews@lists.linux.dev
To: "Hrushiraj Gandhi" <hrushirajg23@gmail.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260608060940.52549-2-hrushirajg23@gmail.com>
References: <20260608060940.52549-2-hrushirajg23@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 08 Jun 2026 06:14:41 +0000
Message-Id: <20260608061441.E32351F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-308016-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:hrushirajg23@gmail.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FREEMAIL_TO(0.00)[gmail.com];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 45207653109

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The 'vicharak' vendor prefix is not documented in vendor-prefixes.y=
aml.
--

commit 251502e367242a8cf17898614f2b1bad4718e71f
Author: Hrushiraj Gandhi <hrushirajg23@gmail.com>

dt-bindings: arm: rockchip: add Vicharak Axon board

This commit adds the device tree binding for the Vicharak Axon single-board
computer based on the Rockchip RK3588 SoC.

> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Docume=
ntation/devicetree/bindings/arm/rockchip.yaml
> index 1a9dde18626d0..b023d4cc9842e 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml

[ ... ]

> @@ -1306,6 +1306,11 @@ properties:
>            - const: turing,rk1
>            - const: rockchip,rk3588
> =20
> +      - description: Vicharak Axon
> +        items:
> +          - const: vicharak,axon

[Severity: Low]
Does the "vicharak" vendor prefix need to be documented in
Documentation/devicetree/bindings/vendor-prefixes.yaml as part of this
change?

It looks like this introduces a new vendor prefix. Without registering it in
the vendor prefixes registry, it might cause a schema validation warning
when running make dt_binding_check.

> +          - const: rockchip,rk3588
> +
>        - description: WolfVision PF5 mainboard

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260608060940.5254=
9-1-hrushirajg23@gmail.com?part=3D1

