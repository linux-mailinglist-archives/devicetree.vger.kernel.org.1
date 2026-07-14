Return-Path: <devicetree+bounces-325890-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id kKnnB5rLVWr2tQAAu9opvQ
	(envelope-from <devicetree+bounces-325890-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 07:39:38 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 82E3675138C
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 07:39:37 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=amvnHE8s;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325890-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-325890-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id BCD0430419E1
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 05:39:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F011C346E64;
	Tue, 14 Jul 2026 05:39:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAFAC345749
	for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 05:38:59 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784007541; cv=none; b=hPthIfIG8yTtl8CY/DFpieQcX/oJ83FhnxWgimLFnfvNeXmJzgJddnrmbkYRCcyA/bo9Z1WQhJxhPhjcurwpr/e1u318ZHKB5wwC8sjJCtCjIZQHrR+094pKaQUDSxAtFRSL6ub698TOlOSXhz/ve7fq7xQszJiUauvVeel5Dy4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784007541; c=relaxed/simple;
	bh=y2Tp+1EPeIYM7FOOYImvOWJLBsLTlRZn0Rp4A5+ZBE0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=JMDe8UamZOUBawPxfm2CNgyWgsbLPyCqFimLzvQzckJ3zGibHtSnIDlK6D99Ehj3m+XFuTwq37j7zIMd8cAK9Fn1zD/Tto9wuK4KK3/xiIWM3xpYLfsLvP1S0eD2K2A6VhLy6SjQdfethybooAd5xLyCO6perwWY7YCZfEbElVU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=amvnHE8s; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3A9411F000E9;
	Tue, 14 Jul 2026 05:38:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784007538;
	bh=I3ExolJQdjn/egdVbJ+2140yw7sAwMAsH4Oo834UkDM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=amvnHE8sOMJ5FH4PPR9ytF+j1c+KDNjDGdEbZsEAlD7n5y9BFwnWpJ9K+gPCQku05
	 IAdnnpJf0XXeRU6RmkmY5oX/Nxg5yQkDt9usT13onAQaNjMcVFxtIrPJvGvkTa7LAm
	 g6hqjRN+LA7zYfkGr8Ufwu9egA1Rm33Dz4pNvTRooejAtRjubEVqqS4vjYXZobRwTM
	 X/+rtDqSFsvihDQ1wrcLPSXYerGWLHut3Xz2v0d4guZgCSnV/Ce2KWWEZVE5+ASOcW
	 ckdfikPHHJPB+z3X9kHrwdN+FDUmbDaBCgWKsQ+sFRMBAN/bzha+08b3GyE/bOtp4p
	 2vReNCg4Ylm1Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 1/2] dt-bindings: arm: rockchip: add Vicharak Axon
 board
Reply-To: sashiko-reviews@lists.linux.dev
To: "Hrushiraj Gandhi" <hrushirajg23@gmail.com>
Cc: devicetree@vger.kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260714053419.265523-2-hrushirajg23@gmail.com>
References: <20260714053419.265523-1-hrushirajg23@gmail.com>
 <20260714053419.265523-2-hrushirajg23@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 Jul 2026 05:38:57 +0000
Message-Id: <20260714053858.3A9411F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-325890-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:hrushirajg23@gmail.com,m:devicetree@vger.kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,lists.linux.dev:replyto,sashiko.dev:url,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 82E3675138C

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The new vendor prefix 'vicharak' used in the 'vicharak,axon' compat=
ible string is not registered in the vendor-prefixes.yaml registry.
--

--- Patch [1]: [PATCH v8 1/2] dt-bindings: arm: rockchip: add Vicharak Axon=
 board ---
commit b94376e133001d9bd39a1a31847075acbb728911
Author: Hrushiraj Gandhi <hrushirajg23@gmail.com>

dt-bindings: arm: rockchip: add Vicharak Axon board

Add the device tree binding for the Vicharak Axon single-board
computer based on the Rockchip RK3588 SoC.

> diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Docume=
ntation/devicetree/bindings/arm/rockchip.yaml
> index 1a9dde18626d0..b023d4cc9842e 100644
> --- a/Documentation/devicetree/bindings/arm/rockchip.yaml
> +++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
> @@ -1306,6 +1306,11 @@ properties:
>            - const: turing,rk1
>            - const: rockchip,rk3588
> =20
> +      - description: Vicharak Axon
> +        items:
> +          - const: vicharak,axon
> +          - const: rockchip,rk3588

[Severity: Low]
Does this compatible string use an undocumented vendor prefix? The new
vicharak prefix used here does not appear to be registered in the
vendor-prefixes.yaml registry, which may cause a dt_binding_check validation
warning.

> +
>        - description: WolfVision PF5 mainboard
>          items:
>            - const: wolfvision,rk3568-pf5

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260714053419.2655=
23-1-hrushirajg23@gmail.com?part=3D1

