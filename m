Return-Path: <devicetree+bounces-320495-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id FhLUFKZBSWrazgAAu9opvQ
	(envelope-from <devicetree+bounces-320495-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 04 Jul 2026 19:23:50 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id CE9D770811F
	for <lists+devicetree@lfdr.de>; Sat, 04 Jul 2026 19:23:49 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=amrtktlX;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320495-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-320495-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4A584300826B
	for <lists+devicetree@lfdr.de>; Sat,  4 Jul 2026 17:23:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 60BC835839E;
	Sat,  4 Jul 2026 17:23:46 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DEBD25B099;
	Sat,  4 Jul 2026 17:23:44 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783185826; cv=none; b=DWZadMcZ8qdjQElEQ47EYEYxa7QK8LgN+8o7zEfxCxF6pgxcXmyb8SvX70rPAp+WEHH/xfYnsvsVu1Du1U3I4WnxVcUwm0Bwj77KYuKOd0V50eXw09NXAuAMo86XLKEizYRckVmFLKT1KNCZarznUkfsBRalVh8VF0Kp/8D2Szk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783185826; c=relaxed/simple;
	bh=SWlZvLVQP9+7LfgEmg88sju8QcHkThhSKotVvGJqKMo=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=bSEaz7LR6Y/JF2Zd7eaU2il/aKCD4SOyNHMXj6ZXFazH5rU0Rb5uIvBh5OjUs0ft91FiJji4xdiIGLRckbyL8+1SEqtILXRhZdb+PVAzD+lfGSLWpKBAoTV9sEqd8DZPFoDvYByw3gbjlOMDtC0v2/V1aacHdGRyIowlgsvMfZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=amrtktlX; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 803D51F000E9;
	Sat,  4 Jul 2026 17:23:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783185824;
	bh=Uu6InqSBrnGcz758/qTlwqNEsqEMs8+n2NNTcLML8d8=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=amrtktlXRb9nWqZKO1PG4eZjyIBsV3W1+3Vx+P0HBunDtrXh1cHGjIZI3+jq1xTo2
	 cE14NYgLKgqflViGK7uxArAq2/QaQ1cq76KjH32wae8eMyDzodYudMOZ718dlFE4al
	 ooXOACI0uUbB724YWv9ZtQ8uZ91eeh/W4Ee27JgpPlGdwYzvNUxLIu/WrsXd19b5Fo
	 /vLRV+ddWuTa5vgaQyU6TCPoqSTwRXIUvKOsgNHNmBeiETsBlxWn+mTt+6PgkzuHvO
	 nhOZ4mhJOgOvrcTX0KsarWQ3nqDbJVO5NGjdArkgwAkRHpuTLolOwi9+kBMHHlPBqM
	 FvJQMRrb925Ig==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 1/5] dt-bindings: thermal: sun8i: Add A523 THS0/1
 controllers
Reply-To: sashiko-reviews@lists.linux.dev
To: "Mikhail Kalashnikov" <iuncuim@gmail.com>
Cc: linux-sunxi@lists.linux.dev, devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260704171411.1413349-2-iuncuim@gmail.com>
References: <20260704171411.1413349-1-iuncuim@gmail.com>
 <20260704171411.1413349-2-iuncuim@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 04 Jul 2026 17:23:44 +0000
Message-Id: <20260704172344.803D51F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	URIBL_MULTI_FAIL(0.00)[sto.lore.kernel.org:server fail,lists.linux.dev:server fail,smtp.kernel.org:server fail,vger.kernel.org:server fail,sashiko.dev:server fail];
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-320495-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:iuncuim@gmail.com,m:linux-sunxi@lists.linux.dev,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	RCVD_COUNT_THREE(0.00)[4];
	FORWARDED(0.00)[lists@lfdr.de];
	FREEMAIL_TO(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,vger.kernel.org:from_smtp,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,sashiko.dev:url,smtp.kernel.org:mid];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CE9D770811F

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Low] The fallback `else` branch fails to explicitly restrict `nvmem-cell=
-names` to `maxItems: 1` for legacy devices.
- [Low] The `clocks: minItems: 2` constraint in the new `allOf` block for A=
523 devices is redundant.
--

commit 3b55695ed8b61c3a70dec40b0b70e9958c234bfc
Author: Mikhail Kalashnikov <iuncuim@gmail.com>

dt-bindings: thermal: sun8i: Add A523 THS0/1 controllers

This commit adds device tree binding descriptions for the thermal sensors
in the A523 processor. It updates the schema to require an additional
clock for these variants and supports split calibration data across two
nvmem cells.

> diff --git a/Documentation/devicetree/bindings/thermal/allwinner,sun8i-a8=
3t-ths.yaml b/Documentation/devicetree/bindings/thermal/allwinner,sun8i-a83=
t-ths.yaml
> index 3e61689f6dd41..6f5b2f3b94f80 100644
> --- a/Documentation/devicetree/bindings/thermal/allwinner,sun8i-a83t-ths.=
yaml
> +++ b/Documentation/devicetree/bindings/thermal/allwinner,sun8i-a83t-ths.=
yaml

[ ... ]

> @@ -132,6 +140,29 @@ allOf:
>          - clock-names
>          - resets
> =20
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - allwinner,sun55i-a523-ths0
> +              - allwinner,sun55i-a523-ths1
> +    then:
> +      properties:
> +        clocks:
> +          minItems: 2

[Severity: Low]
Is this constraint redundant? The first allOf block in this file checks
for single-clock devices and its else branch already applies minItems: 2
for clocks and clock-names to all other devices. Since the A523 variant
is not in that single-clock list, shouldn't it already be constrained to
2 clocks?

> +        nvmem-cells:
> +          minItems: 2
> +        nvmem-cell-names:
> +          minItems: 2
> +    else:
> +      properties:
> +        nvmem-cells:
> +          maxItems: 1
> +        nvmem-cell-names:
> +          items:
> +            - const: calibration

[Severity: Low]
Does this else block also need to specify maxItems: 1 for
nvmem-cell-names?

Redefining items as a tuple only validates the specified elements but
does not restrict the total array length. Without maxItems: 1, legacy
device trees could erroneously define two nvmem-cell-names and still
pass validation.

> +
>  required:
>    - compatible
>    - reg

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260704171411.1413=
349-1-iuncuim@gmail.com?part=3D1

