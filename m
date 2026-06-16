Return-Path: <devicetree+bounces-312367-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id e/dhFkALMWoOawUAu9opvQ
	(envelope-from <devicetree+bounces-312367-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 10:37:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A11CC68D372
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 10:37:19 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=b9tAI9JN;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312367-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-312367-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 35F10301A921
	for <lists+devicetree@lfdr.de>; Tue, 16 Jun 2026 08:33:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A30033CC310;
	Tue, 16 Jun 2026 08:33:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C2B2315793
	for <devicetree@vger.kernel.org>; Tue, 16 Jun 2026 08:33:00 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781598781; cv=none; b=VYV3oUse1DJ4UDqV00mLV7O7IneOgw6iAR41n3/E0DS7b1Bh9Dirpst1QNkXQR0HQZfZ3pPFL9VKSckKnh1jbrYKAZMVh9Y0FZDCDI9O2aqM5N1gqj9t9qJzmfZAZFIky+hSPNbXCHS5UH8GOpEy0wyJ+gR0r2eJfmEPoRk9WdI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781598781; c=relaxed/simple;
	bh=RMUOAucSL+ZzhRYiy7RmmQjOQ6CvgKfD0BwB0J/I4kw=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=DGkogd+b4clBzbvmEZCVDGFpKJLDzqnvc+2Z2UkVJAdF4HjI5JoQo5++F6viGTaTxoEb4eds61zcaNC3kVwU37cJ8St5oNRJcsohZB8OUMP6mdGTVoSWvfvzYmvRRqwrR26oS9q0KH4mu+1i4qidd2Hu3aOntUUsNYNpPqoiHaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b9tAI9JN; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DCC551F000E9;
	Tue, 16 Jun 2026 08:32:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781598780;
	bh=p9WcdK7TNKcP0LW2jnyP/r6T1tiMPOINzgD//AM3MMg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=b9tAI9JNQv4ibkRyPhGcW9dg3PpVB3VJaRAGZwGS0wv3jv1aRv5o+oblYmz5JgzLd
	 BLTfBcfHaw9ILEx4vlycNdosGWTS+QbVuRdAtMd5ep7C1t6K1TsZ38qszd2SzCtU5Z
	 CG+xuRCclnN47jrvQonaTXujiZxv+krgfS0kSoAtjRv28M/tiydUlY7oGnHOceR7re
	 B4RYvO82gX0mjj42LPDq7gMWiISONJLByWZ0DWfJA+KJEjP5ipcB41AeuNnDWa8wxD
	 ZRnte4+4VkKlOxwgK/IZEKMhklbOEGS0+y0xk+NpU8xvLuvPgxpgA1I1B5zz3bD67J
	 t7idp+ybMm/Zw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 01/12] dt-bindings: iio: dac: ad5696: add
 reset/ldac/gain support
Reply-To: sashiko-reviews@lists.linux.dev
To: "Rodrigo Alencar via B4 Relay" <devnull+rodrigo.alencar.analog.com@kernel.org>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260616-ad5686-new-features-v3-1-f829fb7e9262@analog.com>
References: <20260616-ad5686-new-features-v3-1-f829fb7e9262@analog.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 16 Jun 2026 08:32:59 +0000
Message-Id: <20260616083259.DCC551F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [-3.16 / 15.00];
	WHITELIST_SPF_DKIM(-3.00)[kernel.org:d:+,kernel.org:s:+];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-312367-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:devnull+rodrigo.alencar.analog.com@kernel.org,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:devnull@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,rodrigo.alencar.analog.com,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp.kernel.org:mid,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,sashiko.dev:url,vger.kernel.org:from_smtp,lists.linux.dev:replyto,analog.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: A11CC68D372

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Incorrect use of `unevaluatedProperties: false` without an external=
 schema `$ref`.
--

commit cd7d8addb3fad4751f6c895cad5073c1197387e2
Author: Rodrigo Alencar <rodrigo.alencar@analog.com>

dt-bindings: iio: dac: ad5696: add reset/ldac/gain support

This commit adds GPIO properties for RESET, LDAC, and GAIN pins to the=20
adi,ad5696 DAC device tree binding. It introduces conditionally restricted=
=20
support for gain-gpios and adi,range-double based on the compatible string.

> diff --git a/Documentation/devicetree/bindings/iio/dac/adi,ad5696.yaml b/=
Documentation/devicetree/bindings/iio/dac/adi,ad5696.yaml
> index b5a88b03dc2f0..c55158c464fde 100644
> --- a/Documentation/devicetree/bindings/iio/dac/adi,ad5696.yaml
> +++ b/Documentation/devicetree/bindings/iio/dac/adi,ad5696.yaml

[ ... ]

>  required:
>    - compatible
>    - reg
> =20
> -additionalProperties: false
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            anyOf:
> +              - const: adi,ad5311r
> +              - const: adi,ad5691r
> +              - const: adi,ad5692r
> +              - const: adi,ad5693
> +              - const: adi,ad5693r
> +    then:
> +      properties:
> +        gain-gpios: false
> +
> +unevaluatedProperties: false

[Severity: Low]
This isn't a bug, but is it necessary to change additionalProperties to
unevaluatedProperties here? Because this schema does not reference any
external schemas via a $ref, and the conditionally restricted gain-gpios
property is already explicitly declared in the top-level properties block,
additionalProperties: false is sufficient and usually preferred when no
external schema references are present.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260616-ad5686-new=
-features-v3-0-f829fb7e9262@analog.com?part=3D1

