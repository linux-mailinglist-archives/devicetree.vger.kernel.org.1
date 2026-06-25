Return-Path: <devicetree+bounces-315754-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id PVtsJC1UPWq41QgAu9opvQ
	(envelope-from <devicetree+bounces-315754-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 18:15:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E30206C7645
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 18:15:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=WYiRdr6j;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-315754-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-315754-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E478D300A63F
	for <lists+devicetree@lfdr.de>; Thu, 25 Jun 2026 16:15:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2743D3E92A5;
	Thu, 25 Jun 2026 16:15:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2066626B08F
	for <devicetree@vger.kernel.org>; Thu, 25 Jun 2026 16:15:30 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782404132; cv=none; b=g0uHXZXeeqCAzeLFu6ynCfZ6Pmsgyy6LhKJza45fbq9N5bx7A4lGrNVW2cJ0R3sJ0/rhMP9M2fg3PwIVm/uw24YZa0iP1p+tdwAwPzL2Z9gmI78y4XzuYN5PVrNMCWadXbgcjs5+3C5KB0QiA/m5Y0dllIUbna4IxWac8ilgfm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782404132; c=relaxed/simple;
	bh=vqoEd1fTaNgD0KwNREBnbjttCsnEaKqkM+Ha3/zGLK8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=bMQfmBvf1R8eSr64blVfnbBconKIExeRgQJImIoqMWD5s7h4wI0gvsC+Yj4Henm6xMZmtQXbaFoUMiLpj32Eta5JqJ46BXrna6nyHjftOHgmMj6VVHxw10mU7h7q54sDJMnWFMTG2XeVD/BLdt19x/aozZ2gNX/o9JPCj/zRPhg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WYiRdr6j; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 515111F000E9;
	Thu, 25 Jun 2026 16:15:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782404130;
	bh=wOOBZwz5eCgEyI3oLta2s3f0UFVviIGBUEjqErdTsbc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=WYiRdr6jp5SOARDSak0OTpwFjU2xzyaJoXEHxE84d8C/dXiHijkS9mG5KhToty3xp
	 SkDJvBkRdpmc/FcrPzM8JxvH1B1bjbdtZkQ/nsg0V5CCCuOr5/D9OlwSOoI/5JTXVh
	 e97EFrkEZaLHsYGUs1qkcbdth+fDCwbE2qE2kybhWaW57qaRols59GIzgY2dAd0xuv
	 4FKtnZIQCVrnlFOdcR5MdIyET6qKGgi76fCPO1y8HwWw62PHhBN7bbEEWGRKTp6lre
	 7nrUI9FRMH4FqCxgpsVtlhJNbhMK/ZUZxFwNzPReiQbbypha8V4JyJqkTjiMinXLaA
	 V0IL2luizHVGw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: arm: ti: Add bindings for PHYTEC AM67x
 based hardware
Reply-To: sashiko-reviews@lists.linux.dev
To: "Nathan Morrisson" <nmorrisson@phytec.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260625160214.4001298-1-nmorrisson@phytec.com>
References: <20260625160214.4001298-1-nmorrisson@phytec.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 25 Jun 2026 16:15:29 +0000
Message-Id: <20260625161530.515111F000E9@smtp.kernel.org>
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
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-315754-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:nmorrisson@phytec.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E30206C7645

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The patch introduces a tab character for indentation in a YAML file=
, which is forbidden by the YAML specification and breaks schema validation.
--

commit 969d143e093fd0e0c150cfa118a1a7839d600df9
Author: Nathan Morrisson <nmorrisson@phytec.com>

dt-bindings: arm: ti: Add bindings for PHYTEC AM67x based hardware

This commit adds device tree bindings for the AM67x based phyCORE-AM67x SoM
and phyBOARD-Rigel.

> diff --git a/Documentation/devicetree/bindings/arm/ti/k3.yaml b/Documenta=
tion/devicetree/bindings/arm/ti/k3.yaml
> index 2a6a9441c23de..9abe252fc7080 100644
> --- a/Documentation/devicetree/bindings/arm/ti/k3.yaml
> +++ b/Documentation/devicetree/bindings/arm/ti/k3.yaml
> @@ -215,6 +215,13 @@ properties:
>                - ti,j722s-evm
>            - const: ti,j722s
> =20
> +      - description: K3 AM67 SoC PHYTEC phyBOARD-Rigel
> +        items:
> +          - enum:
> +	      - phytec,am6754-phyboard-rigel

[Severity: Low]
Does this line use a tab character for indentation? YAML syntax strictly
forbids the use of tabs for indentation, which will cause dt_binding_check
to fail with a parsing syntax error.

> +          - const: phytec,am67-phycore-som
> +          - const: ti,j722s
> +

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260625160214.4001=
298-1-nmorrisson@phytec.com?part=3D1

