Return-Path: <devicetree+bounces-323310-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id SyRuN2QsT2pmbgIAu9opvQ
	(envelope-from <devicetree+bounces-323310-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 07:06:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A94572CB02
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 07:06:44 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Zm+mPUBC;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323310-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-323310-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 349B33002FAD
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 05:06:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 04AD13537C4;
	Thu,  9 Jul 2026 05:06:03 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C02761E633C;
	Thu,  9 Jul 2026 05:06:01 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783573562; cv=none; b=LErXZj01GEzJzjiN69aTx7vEsbONgQplDREiMvanuMXG6Fku1DISr6s+TKZrII7Y1Etqo0eHJjxWIuLhuxOaFdaSzh4rvF38rQGJuy+Bqk9jKDefEAfIBTauXeWsEVH/ltQLLZ8Ot4Rz5qAN7mhdrUlM0N4DxsWdSsJe0ZrWhpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783573562; c=relaxed/simple;
	bh=CSmc0xYxo9ylDGsqpjX0BDN8/YBaIQPk0QW+j4CNFHw=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=RDXzMjjf2x/CfgktSMWL55aJZ43pmu6Ju62/laow3eeOvgtmfNoG7E4iVbeRiD2YXbtOAEGdTAuj11ygeMUey783VfquHYDU7e0hXeq1h8iJ6r1h2ws2wmv1uYl/Ub+HB7TIhYvPw9YSwhC3wyV4LBNw5vFDfX8yc3oitnvRXIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zm+mPUBC; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 18EF31F000E9;
	Thu,  9 Jul 2026 05:06:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783573561;
	bh=Q9Z4TE3ce9DcEfNk6etufiZcW3QfnfUe2Ho2iXRCbtw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Zm+mPUBCkUpiBGdbdY3ZIR3oNMJOBczV69TfSJB4tQIZh2yemXZKHvXK+K7ZAXQTZ
	 Ulxg2Rmpp/rb4JMuebF2+Q5nKx0FN2F209R8NUvICS1oyWU1j1AWhQyG4G/QWDddmv
	 b6Sr4C3bzHZeqsPeHsaKLSrHc7Q9T0TunXi9tFLqRXA3/ygkbTm5iGR5m3LT46v8uz
	 BAPz9+IYby+bOMuxwjTLtHO1uirbQH7hlZEcRg9XDzjP9qC43NY7N/iSU/hFeQJuAc
	 aKNsG862CLa5fL/LdvT9e3ARgA7WVUIOlp/Cw8W2kcboE78sr951c2poLnwsHt7D5h
	 fRkX4zn0qZIZQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 01/11] dt-bindings: input: samsung,s3c6410-keypad:
 introduce compact binding
Reply-To: sashiko-reviews@lists.linux.dev
To: "Dmitry Torokhov" <dmitry.torokhov@gmail.com>
Cc: linux-input@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org, dmitry.torokhov@gmail.com
In-Reply-To: <20260708-samsung-kp-v2-1-3c6ed4c9b3b6@gmail.com>
References: <20260708-samsung-kp-v2-0-3c6ed4c9b3b6@gmail.com>
 <20260708-samsung-kp-v2-1-3c6ed4c9b3b6@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Jul 2026 05:05:59 +0000
Message-Id: <20260709050601.18EF31F000E9@smtp.kernel.org>
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
	RCVD_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-323310-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:dmitry.torokhov@gmail.com,m:linux-input@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:dmitrytorokhov@gmail.com,m:conor@kernel.org,s:lists@lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,lists.linux.dev:replyto,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,smtp.kernel.org:mid,sashiko.dev:url];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_CC(0.00)[vger.kernel.org,kernel.org,gmail.com];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 3A94572CB02

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [High] Driver fails to probe and skips keymap parsing when using the newl=
y introduced compact device tree binding.
- [Low] Suboptimal workaround for schema validation when importing matrix-k=
eymap.yaml properties.
--

--- Patch [1]: [PATCH v2 01/11] dt-bindings: input: samsung,s3c6410-keypad:=
 introduce compact binding ---
commit b727e1653e0c43f9e2d755869527a44de705430f
Author: Dmitry Torokhov <dmitry.torokhov@gmail.com>

dt-bindings: input: samsung,s3c6410-keypad: introduce compact binding
   =20
The binding with a sub-node per each key is very verbose and is hard to
use with static device properties. Allow standard matrix keymap binding
in addition to the verbose one.

> diff --git a/Documentation/devicetree/bindings/input/samsung,s3c6410-keyp=
ad.yaml b/Documentation/devicetree/bindings/input/samsung,s3c6410-keypad.ya=
ml
> --- a/Documentation/devicetree/bindings/input/samsung,s3c6410-keypad.yaml
> +++ b/Documentation/devicetree/bindings/input/samsung,s3c6410-keypad.yaml
> @@ -37,6 +37,10 @@ properties:
> =20
>    wakeup-source: true
> =20
> +  keypad,num-columns: true
> +  keypad,num-rows: true
> +  linux,keymap: true
> +

[Severity: Low]
Is it necessary to manually declare these properties?

Since they are already defined in matrix-keymap.yaml, using
unevaluatedProperties: false at the end of the schema instead of
additionalProperties: false should allow them to be evaluated
automatically without explicitly listing them here.

>    linux,input-no-autorepeat:
>      type: boolean
>      description:

[ ... ]

> @@ -81,12 +85,33 @@ patternProperties:
>        - keypad,row
>        - linux,code
> =20
> +dependencies:
> +  linux,keymap: [ "keypad,num-columns", "keypad,num-rows" ]
> +
>  required:
>    - compatible
>    - reg
>    - interrupts
> -  - samsung,keypad-num-columns
> -  - samsung,keypad-num-rows
> +
> +allOf:
> +  - $ref: input.yaml#
> +  - $ref: matrix-keymap.yaml#
> +  - if:
> +      required:
> +        - linux,keymap
> +    then:
> +      properties:
> +        samsung,keypad-num-columns: false
> +        samsung,keypad-num-rows: false

[Severity: High]
Will this cause the samsung-keypad driver to fail to probe when using
the new compact binding?

If a device tree drops the legacy properties as mandated here,
samsung_keypad_parse_dt() in drivers/input/keyboard/samsung-keypad.c
will fail to probe the device:

samsung_keypad_parse_dt() {
        ...
        of_property_read_u32(np, "samsung,keypad-num-rows", &num_rows);
        of_property_read_u32(np, "samsung,keypad-num-columns", &num_cols);
        if (!num_rows || !num_cols) {
                dev_err(dev, "number of keypad rows/columns not specified\n=
");
                return ERR_PTR(-EINVAL);
        }
        ...
}

Additionally, will the driver skip parsing the linux,keymap property
entirely?

The driver currently sizes the keymap based on the child node count, which
is zero for the compact matrix binding:

samsung_keypad_parse_dt() {
        ...
        keymap_data =3D devm_kzalloc(dev, sizeof(*keymap_data), GFP_KERNEL);
        ...
        key_count =3D of_get_child_count(np);
        keymap_data->keymap_size =3D key_count;
        ...
}

This causes matrix_keypad_build_keymap() to bypass parsing the linux,keymap
property, resulting in an empty keymap.

Does the driver need a corresponding update to support this binding change?

> +      patternProperties:
> +        '^key-[0-9a-z]+$': false
> +    else:
> +      properties:
> +        keypad,num-columns: false
> +        keypad,num-rows: false

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260708-samsung-kp=
-v2-0-3c6ed4c9b3b6@gmail.com?part=3D1

