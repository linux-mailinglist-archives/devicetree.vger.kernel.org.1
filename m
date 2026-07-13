Return-Path: <devicetree+bounces-325383-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 7ysoInm8VGpGqQMAu9opvQ
	(envelope-from <devicetree+bounces-325383-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 12:22:49 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id DDF60749BB0
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 12:22:48 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=n9iCy6Rw;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-325383-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-325383-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 43C8730488FA
	for <lists+devicetree@lfdr.de>; Mon, 13 Jul 2026 10:20:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F38823D9545;
	Mon, 13 Jul 2026 10:19:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5BF63E6DE0
	for <devicetree@vger.kernel.org>; Mon, 13 Jul 2026 10:19:57 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783937998; cv=none; b=A/1QakIt36iCyKrcCg2/RsOeX9h7coRodqevUU2jJ6McNRhUtW0ZRPPJYUHFpmuhFyuzavwPPmy7wadMjanhoaMPMSt8PVAdRxo8xJ2Sb0G3288pAFsbFZCZGzN8Q7AsgRTOr2+j1JW5sawlQjbL4+uz7ebyHC/WD6U3O4fCPzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783937998; c=relaxed/simple;
	bh=aPEuKEc+1r9VFu/zlXuIiIPx2ylxLkYlSii8PBwrcuM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=k+6tUC4PVJKn2m4QWtmONbU+rBdgTt9qZuzh0kwVMxRhr+ptFKILnNOYy57UQt7rCFJ7PsKcjjK6n8Q28KuUwvMDzTnmWitdzTUmoxEUC0BCZ2Pp293af9ZKJX6TBg46UlMEFQOWTMh1CuZLPHemE2vG2YIT9MSKFv2Oj+E13QI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n9iCy6Rw; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 173271F00A3A;
	Mon, 13 Jul 2026 10:19:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783937997;
	bh=UrLIYXktIVcRcvWHKwU+XWLuReTnMa5Cl7m9fq4jPXk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=n9iCy6RwsSHdLwKFdmshmRzn4/aVfsBtKr/m3CSquQ1biUfe2GD2FEXzcd681LU9O
	 bcA7xmRFGK7eHZh36ANOQXNO830EwfInjJlKRF94Uezsic55wFzEqR+QoLjSHhaShV
	 kPUlVqDQYAHNNOqbcMq4d2izLNrSBRfoHN8h2jZgZV54cSwQTJzzBMHbtrD+kgdCrG
	 EF58dQybgKuh8y+rQNUYaR5RDLGTv3+ZW3vwB/jf0U7a0obU2EXUxHNS53LgN5Ypnt
	 cqVr4DLxioikQcyFnKThjkRtIvPtmLs45Z1mxQAtZlK+RfjNvlrbZZEbHSYrDg35N2
	 Vl5Wh2Xc2u8Cg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 1/3] dt-bindings: mfd: mediatek: mt6397: add mt6323
 PMIC EFUSE
Reply-To: sashiko-reviews@lists.linux.dev
To: "Roman Vivchar" <rva333@protonmail.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260713-mt6323-nvmem-v3-1-205c39267a24@protonmail.com>
References: <20260713-mt6323-nvmem-v3-0-205c39267a24@protonmail.com>
 <20260713-mt6323-nvmem-v3-1-205c39267a24@protonmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 13 Jul 2026 10:19:56 +0000
Message-Id: <20260713101957.173271F00A3A@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-325383-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[protonmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:rva333@protonmail.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,vger.kernel.org:from_smtp,protonmail.com:email,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DDF60749BB0

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] The `efuse` node schema sets `unevaluatedProperties: false` but =
omits the reference to the standard NVMEM subsystem schema (`/schemas/nvmem=
/nvmem.yaml#`), rejecting valid generic NVMEM properties.
- [Low] The commit message description begins with a lowercase letter, viol=
ating MFD subsystem guidelines.
--

--- Patch [1]: [PATCH v3 1/3] dt-bindings: mfd: mediatek: mt6397: add mt632=
3 PMIC EFUSE ---
commit 26cbf9fd727c6628394df9e87fedf646b54dc080
Author: Roman Vivchar <rva333@protonmail.com>

dt-bindings: mfd: mediatek: mt6397: add mt6323 PMIC EFUSE

The MediaTek mt6323 PMIC includes an EFUSE used for storing calibration
data.

> dt-bindings: mfd: mediatek: mt6397: add mt6323 PMIC EFUSE

[Severity: Low]
This isn't a bug, but the commit description starts with a lowercase letter.
Should the description after the subsystem prefix be capitalized according =
to
MFD subsystem conventions?

> diff --git a/Documentation/devicetree/bindings/mfd/mediatek,mt6397.yaml b=
/Documentation/devicetree/bindings/mfd/mediatek,mt6397.yaml
> --- a/Documentation/devicetree/bindings/mfd/mediatek,mt6397.yaml
> +++ b/Documentation/devicetree/bindings/mfd/mediatek,mt6397.yaml
> @@ -159,6 +159,23 @@ properties:

[ ... ]

> +  efuse:
> +    type: object
> +    unevaluatedProperties: false
> +    description:
> +      The efuse is responsible for storing calibration data, such as the=
rmal
> +      sensor calibration.
> +
> +    properties:
> +      compatible:
> +        const: mediatek,mt6323-efuse
> +
> +      nvmem-layout:
> +        $ref: /schemas/nvmem/layouts/nvmem-layout.yaml#

[Severity: Medium]
Since this node uses unevaluatedProperties: false, does it also need a
reference to the standard NVMEM schema ($ref: /schemas/nvmem/nvmem.yaml#)?

Without it, wouldn't standard NVMEM properties like read-only or wp-gpios
cause schema validation failures if they are added?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260713-mt6323-nvm=
em-v3-0-205c39267a24@protonmail.com?part=3D1

