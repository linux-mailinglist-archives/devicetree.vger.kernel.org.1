Return-Path: <devicetree+bounces-296601-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MS/VOLUBBGqhCAIAu9opvQ
	(envelope-from <devicetree+bounces-296601-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 06:44:37 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id E024152D353
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 06:44:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id D722830268F0
	for <lists+devicetree@lfdr.de>; Wed, 13 May 2026 04:44:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E81583630A4;
	Wed, 13 May 2026 04:44:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YUqegIq0"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5F2218787A
	for <devicetree@vger.kernel.org>; Wed, 13 May 2026 04:44:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778647472; cv=none; b=XsXJTTtvaFDQ4hvDjjIrkudZRY0QQ8FO3r5xHEe3K9uSjyIEyzo6EVByedaTY9hp+3nbHSgdgVhChZFR/Ja+SOJWYCA3i8fnBP5LRjdfeikO3efycByBWItbQy3gW1vRzqSI+W2DQeASVjVuKGsk97qqefkiKrYs5nvSj2XGoSY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778647472; c=relaxed/simple;
	bh=t4RtnszXpsDcKjSCAvGTCEstz7b4+VLdZeJQtJ94+ys=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=DQANmVY3wzahiUPhRECbtFX0DW2MWKjCwamUXXR1S4eKgNGykbAPbnc9X4ThiTyGUIAO0nDcIl87KCqfEqc52fzNZaErT1oFr/REWb8YF/Gf58cm9/tYCcD2OXHwAwP3H8hKX6tEKUDPl/7MU3LaSDDFYOV38Lurkz5F0vyuXYE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YUqegIq0; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id E31A3C2BCB7;
	Wed, 13 May 2026 04:44:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778647472;
	bh=t4RtnszXpsDcKjSCAvGTCEstz7b4+VLdZeJQtJ94+ys=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=YUqegIq0WTf2EkK47n9j9vWnuwGOZyHyQY0OPJzauYPPHAYkJ6TksSziQOb54QsIT
	 4FVul56jezddcAfOFHd0XUiwxMblK78NnOAgBN6S8FRRkxecPii6hnKg3bn9pg849m
	 x7CzPtnKd8v26QOpPNx4E49FoWhQKcR2R1WuWEhiyPMA9QjlNCQYr8KW5DuA+L4cSH
	 eI1t4EQMP8HdjGhWFS2+bc0SZWQ3IrlQKu7JRJJniIzbdJKmnaPIzgXzVoRG4hrd5X
	 4ITUTRCvmHOOoFQxTEAFVTAgHIyPyWDEQ/FT8wEvy7+mhQTZZglcU6dT5LjRUjeRWs
	 qTe61/+ftMQxQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 03/16] dt-bindings: mfd: mediatek: mt6397: add mt6323
 PMIC EFUSE
Reply-To: sashiko-reviews@lists.linux.dev
To: "Roman Vivchar via B4 Relay" <devnull+rva333.protonmail.com@kernel.org>
Cc: devicetree@vger.kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, robh@kernel.org
In-Reply-To: <20260512-mt6323-v2-3-3efcba579e88@protonmail.com>
References: <20260512-mt6323-v2-3-3efcba579e88@protonmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 13 May 2026 04:44:31 +0000
Message-Id: <20260513044431.E31A3C2BCB7@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: E024152D353
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sashiko.dev:url,smtp.kernel.org:mid,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-296601-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,rva333.protonmail.com,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Missing reference to core NVMEM schema (`$ref: /schemas/nvmem/nv=
mem.yaml#`) in the `efuse` node definition.
--

commit ce0eef2651d566e649c71112862db7f2d4dc1545
Author: Roman Vivchar <rva333@protonmail.com>

dt-bindings: mfd: mediatek: mt6397: add mt6323 PMIC EFUSE

This commit adds the device tree binding documentation for the MediaTek
mt6323 EFUSE, which is used to store calibration data on the mt6323 PMIC.

> diff --git a/Documentation/devicetree/bindings/mfd/mediatek,mt6397.yaml b=
/Documentation/devicetree/bindings/mfd/mediatek,mt6397.yaml
> --- a/Documentation/devicetree/bindings/mfd/mediatek,mt6397.yaml
> +++ b/Documentation/devicetree/bindings/mfd/mediatek,mt6397.yaml
[ ... ]
> @@ -145,6 +145,23 @@ properties:
>      required:
>        - compatible
> =20
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

Should this node include a reference to the core nvmem schema?

Because the node sets unevaluatedProperties: false without referencing
/schemas/nvmem/nvmem.yaml#, would dtbs_check incorrectly reject standard
nvmem properties like read-only or wp-gpios?

Additionally, if the core nvmem schema is referenced, does the explicit
reference to nvmem-layout.yaml become redundant?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260512-mt6323-v2-=
0-3efcba579e88@protonmail.com?part=3D3

