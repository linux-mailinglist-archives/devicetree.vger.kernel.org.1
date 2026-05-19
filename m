Return-Path: <devicetree+bounces-300321-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id WAzxNhbxDGoGqQUAu9opvQ
	(envelope-from <devicetree+bounces-300321-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 01:24:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id D9E22585FC8
	for <lists+devicetree@lfdr.de>; Wed, 20 May 2026 01:24:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id BB8943010F1A
	for <lists+devicetree@lfdr.de>; Tue, 19 May 2026 23:24:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C90423537E8;
	Tue, 19 May 2026 23:24:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eyiHlP5Q"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 250803191BA
	for <devicetree@vger.kernel.org>; Tue, 19 May 2026 23:23:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779233041; cv=none; b=uD2my8CuDiaG1kFAW9SBbZ16mPcDjroAcMCqcD54kmsJR9+ZEBA8yvMPDT4ocnAFWi+Gnlk1SEM3oTfZ+cBFjlPvtCk2fSoFMMg7BmWF2r/Du3rdzutiOnBHCFTB4Nhwf/tw/4EKc6gR9N0oLtlvoYhLkrLdwsDZ19B1ThJ6oBY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779233041; c=relaxed/simple;
	bh=h0o8X9fY/IEvofozFM+Cw90YndHKkexBN6r+ZBzGAsQ=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=XANDkUReKOaX6YH1JdoKQnfz72Wo1iV6I5kFSNJF5WlcGXO7AYYf1XOfC0LikQwYkFpqDY99WfGZsUsE2C5dApynAEQh+3bU4zd7JDI1aa2Ze88GAJhJfMpFy512iggQJIzP/IavHCo9lNvKEt3c1xbXVKr/rURS+euMRKAL5PQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eyiHlP5Q; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A2B4E1F000E9;
	Tue, 19 May 2026 23:23:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779233039;
	bh=eGcImgoxrNGYWZFLsHTNVSPtIx8OWlH5pvO6YvVlig4=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=eyiHlP5QygusUp9K0kE9rIrdYu/XGpSgGV7VvX30o8dDNeHYPnP5mqNeMetR05wZP
	 Gsiv7M4lVosErtJBz4NMnPUO2WG3KRbhkkaVg60yAlMExcKwFcbO4kzPHjtz74BUdB
	 Xqj9IcNKw4ihQbocHh5JHnPIa8ZhGolbu0IT3XaY+SzAd8qc8sc3q8RWO6Sd77U4w/
	 sEBOwW31vFxLbMYDKZTOn+MRigKdXB3z3WlXxW0S2aHCfT3QnDMqI7qAIf3hQvsR1Y
	 Kyfg+iepFoQnvPY35hnxWuEUjANIeXSLykaOuCAKHhoQv8Pv2jOFXEqpCKe3bVE6Cs
	 Fis4lY+D7fC/Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 4/5] dt-bindings: arm: airoha: Add the chip-scu node
 for AN7583 SoC
Reply-To: sashiko-reviews@lists.linux.dev
To: "Christian Marangi" <ansuelsmth@gmail.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260519222433.29684-5-ansuelsmth@gmail.com>
References: <20260519222433.29684-5-ansuelsmth@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 19 May 2026 23:23:59 +0000
Message-Id: <20260519232359.A2B4E1F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-300321-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,lists.linux.dev:replyto,sashiko.dev:url,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Queue-Id: D9E22585FC8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The `#thermal-sensor-cells` property is not marked as required f=
or the `airoha,an7583-chip-scu` compatible variant.
--

commit 9287642e3d29764fc8296cc7913d99b66dcc526c
Author: Christian Marangi <ansuelsmth@gmail.com>

dt-bindings: arm: airoha: Add the chip-scu node for AN7583 SoC

This commit documents support for the Airoha AN7583 chip-scu node. It adds
thermal sensor capabilities compared to the older EN7581 variant, in
addition to controlling hardware pins and other miscellaneous peripherals.

> diff --git a/Documentation/devicetree/bindings/arm/airoha,en7581-chip-scu=
.yaml b/Documentation/devicetree/bindings/arm/airoha,en7581-chip-scu.yaml
> index 67c449d804c22..0d042fb90a789 100644
> --- a/Documentation/devicetree/bindings/arm/airoha,en7581-chip-scu.yaml
> +++ b/Documentation/devicetree/bindings/arm/airoha,en7581-chip-scu.yaml
> @@ -18,16 +18,30 @@ properties:
>    compatible:
>      items:
>        - enum:
> +          - airoha,an7583-chip-scu
>            - airoha,en7581-chip-scu
>        - const: syscon

[ ... ]

>  required:
>    - compatible
>    - reg
> =20
> +if:
> +  properties:
> +    compatible:
> +      contains:
> +        const: airoha,en7581-chip-scu
> +
> +then:
> +  properties:
> +    '#thermal-sensor-cells': false
> +

[Severity: Medium]
The commit message mentions the an7583 chip-scu node adds a thermal
sensor. Should #thermal-sensor-cells be added as a required property
specifically for the airoha,an7583-chip-scu compatible?

Without an additional if-then block requiring it for the an7583 variant,
incomplete device tree nodes missing the #thermal-sensor-cells property
could silently pass schema validation.

>  additionalProperties: false
> =20
>  examples:

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260519222433.2968=
4-1-ansuelsmth@gmail.com?part=3D4

