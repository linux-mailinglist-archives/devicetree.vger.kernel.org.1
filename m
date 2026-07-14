Return-Path: <devicetree+bounces-326539-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id faxLCCqhVmpY/QAAu9opvQ
	(envelope-from <devicetree+bounces-326539-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 22:50:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id F1D06758CC7
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 22:50:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=VJqlp0Qi;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326539-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c15:e001:75::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-326539-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D116230151A7
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 20:50:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 672673DE424;
	Tue, 14 Jul 2026 20:50:43 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E42035F60E
	for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 20:50:42 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784062243; cv=none; b=CIAeeebr1LqK2lbP6gzOrH2QXCpLav6UJ15m8Z1gswiv4MSiXHsxoCDil4xey1xMGrzyhtD839T55/sNalULniQQVzIXJSDK8J6XlfVDUwQyo4TP88c9Pr1ZPprtgsfYL8pYO+pcDrsa5F8bbRvOzOXx6eNIeWigGm8uMYwRBbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784062243; c=relaxed/simple;
	bh=TtNZwFDHlvab1YzXtjcL3Rv5TWQMXZUH2HNhjNv5qBk=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=lBgAw0wHrjL6nYUH1olbDFOsSMUKr3au7fYRD4PrEBlDftO8v74Sz5xuNZMwxnRG0vmzGB0tNhBi52drBWdjkXAoPp0UVK5tQGzSA4M405KM9Jq6Ijx/fCuknvYT80AVg9dlmwOkxtuQxWKBBMtfLMZ21kTt03MoGoblipIgDQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VJqlp0Qi; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CB7C51F000E9;
	Tue, 14 Jul 2026 20:50:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784062242;
	bh=ZHdwRRc9b1ILwlDWzLf5cUbjGMNk0Bd2hEoEODSJuzE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=VJqlp0QiiOhXf/+1bDt/zkrcxbFgAX5OMFPja1SsRN9a4THr4CAVdhbG9NiCO3Xdz
	 Qsbkjg91Of56lsTp9Mo2CDk057tw9zD3z4LzFixJ2UnjyJjZ2hWke0b2DOh6TazWsk
	 wak490gZHorwZjJqH6iEVx3Vx9vf4Dcd3Nm7YzV95oX+ZizDZy7cbYyftWheoGe368
	 pb9vo3W1wjKo0OnDkcAz8q4rU/6n1KmeOfuvh57dmkVs/H9FfXDf1jKRcNKT3gPJzR
	 GVOkgob3KELV6TQkhTNQT6UZ2WUeRDngLUOobJRA5Hq9Z1jEc+C9rRwIkfy6REE2iK
	 U7OidKjGbi6uw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 5/6] dt-bindings: arm: rockchip: Add Luckfox Pico
 Mini B
Reply-To: sashiko-reviews@lists.linux.dev
To: "Simon Glass" <sjg@chromium.org>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260714193656.2196447-6-sjg@chromium.org>
References: <20260714193656.2196447-1-sjg@chromium.org>
 <20260714193656.2196447-6-sjg@chromium.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 Jul 2026 20:50:41 +0000
Message-Id: <20260714205041.CB7C51F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-326539-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:sjg@chromium.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,vger.kernel.org:from_smtp,chromium.org:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: F1D06758CC7

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The compatible string block for 'Luckfox Pico Mini B' is inserted o=
ut of alphabetical order.
--

--- Patch [5]: [PATCH v2 5/6] dt-bindings: arm: rockchip: Add Luckfox Pico =
Mini B ---
commit 61521ad6f3be156c0a561b23d28c5db096f06212
Author: Simon Glass <sjg@chromium.org>

dt-bindings: arm: rockchip: Add Luckfox Pico Mini B

This commit adds the device tree binding compatible strings for the
Luckfox Pico Mini B board, which is based on the Rockchip RV1103 SoC.

> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Docume=
ntation/devicetree/bindings/arm/rockchip.yaml
> index 1a9dde18626d0..711029ee78af2 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -813,6 +813,11 @@ properties:
>            - const: netxeon,r89
>            - const: rockchip,rk3288
> =20
> +      - description: Luckfox Pico Mini B
> +        items:
> +          - const: luckfox,pico-mini-b
> +          - const: rockchip,rv1103
> +

[Severity: Low]
This isn't a bug, but is this new block inserted out of alphabetical order?

The file generally maintains entries alphabetically by vendor prefix.
Should this luckfox entry be placed alongside the other luckfox entries
higher up in the file, rather than here between netxeon and onion?

>        - description: Onion Omega4 Evaluation board
>          items:
>            - const: onion,omega4-evb

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260714193656.2196=
447-1-sjg@chromium.org?part=3D5

