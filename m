Return-Path: <devicetree+bounces-322361-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id vWwbJZluTWrYzwEAu9opvQ
	(envelope-from <devicetree+bounces-322361-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 23:24:41 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id E43D571FBF5
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 23:24:40 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=HxpU97Dc;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322361-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-322361-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6706E300C5B0
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 21:23:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 051A936C0AB;
	Tue,  7 Jul 2026 21:23:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D575510785;
	Tue,  7 Jul 2026 21:23:29 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783459410; cv=none; b=XnBEIJ00MQ/v1KJMEMi96x3YB61pqGruB/L8S9Cgc7vGVa6hEGUD7nApjC0qUuZrl83rGLoYLU9awUdV1DFpsc73s3fTFFnsFDdqupjFipXI89lQB3mVvmo+AvDzX/01LJpmNDYXtwqHf3tZ2KyZHZrmHH3ROkXAK+LgPNw/KHM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783459410; c=relaxed/simple;
	bh=a60nyy7OcdhDk+yCD/1xpNCrxv7vLGToZcu4lIgipe0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=nyk7ooiFeHL5QC4T59n99tI+jTsOwTd9ZwR2slyw/Kd8IG4AcHEGu6eOH4UJ3Ch/EUVfy84cXIJZcKVpqmTDxitsrQOvgkcs9PLOwGaVIYXehxtNCPUcHUjhsvmHn5OaoIw4OHHplQdPCEhdbAAMG3ye+9HWlMJ3zZZEOrwKZVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HxpU97Dc; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 179281F00ADB;
	Tue,  7 Jul 2026 21:23:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783459409;
	bh=uaxpBgLFNTEZNxmTdCEah2eRnczt2Pt+VguMTHq//fs=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=HxpU97DcodCAc8vMGRtD11CII4VrgmZKVk7VWNGv9p2jBEhL80fP9Qk7r5h03ayxd
	 kFO07ezzNW1DcssYSjj/B/pFQXLOyHywiEzdX0x4c9hmr4BekoGyDD7vW0bv07CRex
	 3OESQEZpKdUNnV37bXqATXO0doTIUIzO5hCW1GX1M+jQtE9DoLqs/uyBhvX8yOqERO
	 9dyLfa89YWmHK7mAjdtBq3N0HvtCj1bBSYOclZzE3AggbJEeoN5AlL1sxf1T0o9EuS
	 QYOkkED96ko63CiQAZMl3BEwV+MhIuT1+/7q6whxPD181Eb8kQ4oJI0zwGIwU1fNPE
	 ICjyVtgjNB8Vw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/1] regulator: dt-bindings: Convert ltc3589.txt to yaml
 format
Reply-To: sashiko-reviews@lists.linux.dev
To: Frank.Li@oss.nxp.com
Cc: robh@kernel.org, devicetree@vger.kernel.org, Frank.Li@kernel.org, imx@lists.linux.dev, conor+dt@kernel.org
In-Reply-To: <20260707211612.2757349-1-Frank.Li@oss.nxp.com>
References: <20260707211612.2757349-1-Frank.Li@oss.nxp.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 07 Jul 2026 21:23:28 +0000
Message-Id: <20260707212329.179281F00ADB@smtp.kernel.org>
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
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-322361-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[nxp.com:email,vger.kernel.org:from_smtp,sashiko.dev:url,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,smtp.kernel.org:mid];
	FORGED_RECIPIENTS(0.00)[m:Frank.Li@oss.nxp.com,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:Frank.Li@kernel.org,m:imx@lists.linux.dev,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E43D571FBF5

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] The schema uses `additionalProperties: false` at the root but fa=
ils to document the `interrupts` property, causing valid device trees that =
use the PMIC interrupt to fail validation.
- [Low] The `lltc,fb-voltage-divider` property is missing from the `require=
d` list for the `sw1`, `sw2`, `sw3`, `bb-out`, `ldo1`, and `ldo2` regulator=
 nodes in the YAML schema.
--

--- Patch [1]: [PATCH 1/1] regulator: dt-bindings: Convert ltc3589.txt to y=
aml format ---
commit d75bd969ae4548dedbfaa0e3da2470b322b67662
Author: Frank Li <Frank.Li@nxp.com>

regulator: dt-bindings: Convert ltc3589.txt to yaml format
   =20
Convert ltc3589.txt to yaml format.

> diff --git a/Documentation/devicetree/bindings/regulator/lltc,ltc3589.yam=
l b/Documentation/devicetree/bindings/regulator/lltc,ltc3589.yaml
> new file mode 100644
> index 0000000000000..3bf44fbe321bc
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/regulator/lltc,ltc3589.yaml

[ ... ]

> +properties:
> +  compatible:
> +    enum:
> +      - lltc,ltc3589
> +      - lltc,ltc3589-1
> +      - lltc,ltc3589-2
> +
> +  reg:
> +    maxItems: 1
> +
> +  regulators:
> +    type: object

[Severity: Medium]
Should interrupts be defined in this properties block?

The schema uses additionalProperties: false at the root level, but the driv=
er
supports interrupts for thermal and undervoltage warnings. Will valid device
trees that specify the interrupts property fail validation without it being
explicitly allowed here?

> +    additionalProperties: false
> +
> +    patternProperties:
> +      "^(sw1|sw2|sw3|bb-out|ldo1|ldo2)$":
> +        type: object
> +        unevaluatedProperties: false
> +        $ref: regulator.yaml#
> +
> +        properties:
> +          lltc,fb-voltage-divider:

[Severity: Low]
Does lltc,fb-voltage-divider need to be added to a required list for these
regulators?

The old text binding specified this as a required property for sw1, sw2, sw=
3,
bb-out, ldo1, and ldo2. Without a required list in this patternProperties
block, won't device trees that omit lltc,fb-voltage-divider incorrectly pass
schema validation?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260707211612.2757=
349-1-Frank.Li@oss.nxp.com?part=3D1

