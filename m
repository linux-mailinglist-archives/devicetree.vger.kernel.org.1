Return-Path: <devicetree+bounces-324557-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id U5eQChMeUWpU/gIAu9opvQ
	(envelope-from <devicetree+bounces-324557-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 18:30:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 72F9F73C96B
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 18:30:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=UxTWWoSW;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-324557-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-324557-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 463B2300614D
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2026 16:30:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E885C36212D;
	Fri, 10 Jul 2026 16:30:08 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5F723491E1
	for <devicetree@vger.kernel.org>; Fri, 10 Jul 2026 16:30:07 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783701008; cv=none; b=kzyXDyWM6welM8hCjab+c9Z0dbkAeSGSDhe+Yq5lsg1OVs4pig5qKL9vPAZ9uSUSNEjovKQwOrlTJ+o3gtL+h/J5n+jIGpGxP7UC5SEc9mF63PUEWgUKfay0L+HChvTx7xX/3g+6CSs4+tVELffv5p2u6BBasiPjVBHTxzcilL8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783701008; c=relaxed/simple;
	bh=ZgWG0VqeyWKCgJNoWU2y40VIQIoAHkfCgDBTEonbqWg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=jV5ygV6xNOc+4TZ5bvijubN84sGNGcnPvRUqm3y+lCWCLTtrFiOp9i1lU7ELhdY3V3bgLfJd9RqjAFUWz43j8vGdT6upCGYEHY2h5/YnucYktgvWK0NaBjGy+u+HABUgSNOs/7qxGKdF12v+LsGJVtK2BGp7az09clGsHknR5WY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UxTWWoSW; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3041B1F000E9;
	Fri, 10 Jul 2026 16:30:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783701007;
	bh=kgDyw1akXLKjlfNenIOhEex54NLLOT2JOTP4PxRxo14=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=UxTWWoSWYvjL8gZGKZb7GD44Fv/9IAAiUCM70jOTGdIe1ZvUjbfU4mFjQdr5duSee
	 U51kIqGL+O49UyyeD1OdwhYKIo3rC8iiyWVkK0xVxftC43GmisOAvJDI5k851HVFMG
	 UGleUXh5EdlnQ+M/ZbzNPJU02NR36Zqk6C/MSS3CwPnib2Y/0az7wdU3rthy7l6uZT
	 nPS4GaC9DjbieyZc3QtdPrVTDvTIjUGJsvS0FP5RRY9okRtiodmhxbPQUAKqfPiyoe
	 6I3THuhmP7c3hdORU/zxjknUtWw79JX7fO6ST8JsPpNqCm55ziXNDWoWeS62SAE4mA
	 IpRz7O+LR+TVw==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: mfd: x-powers,axp152: Document
 AXP318W
Reply-To: sashiko-reviews@lists.linux.dev
To: "Jerome Brunet" <jbrunet@baylibre.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <20260710-axp318-regulator-v2-1-ee5f1c56b49f@baylibre.com>
References: <20260710-axp318-regulator-v2-0-ee5f1c56b49f@baylibre.com>
 <20260710-axp318-regulator-v2-1-ee5f1c56b49f@baylibre.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 10 Jul 2026 16:30:06 +0000
Message-Id: <20260710163007.3041B1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-324557-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:jbrunet@baylibre.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lists.linux.dev:replyto,vger.kernel.org:from_smtp,smtp.kernel.org:mid,arm.com:email]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 72F9F73C96B

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The schema validation will falsely reject `dcdc8` and `dcdc9` no=
des because the regex for regulators was not updated to include them.
--

--- Patch [1]: [PATCH v2 1/3] dt-bindings: mfd: x-powers,axp152: Document A=
XP318W ---
commit fba0de88525a2ca51e0528a24ed28b5ca4ccd346
Author: Andre Przywara <andre.przywara@arm.com>

dt-bindings: mfd: x-powers,axp152: Document AXP318W

This commit documents the AXP318W PMIC, adding its compatible string and
input supply properties. It includes new power supply nodes like vin19-supp=
ly
and vin678-supply, and adds swout1/swout2 to the regulator node name patter=
n.

> diff --git a/Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml b=
/Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml
> index 45f015d63df16..1bed19fc91ec4 100644
> --- a/Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml
> +++ b/Documentation/devicetree/bindings/mfd/x-powers,axp152.yaml
> @@ -156,10 +158,18 @@ properties:
>      description: >
>        DCDC1 power supply node, if present.
> =20
> +  vin19-supply:
> +    description: >
> +      Combined DCDC1/DCDC9 power supply node, if present.

[ ... ]

> @@ -176,6 +190,10 @@ properties:
>      description: >
>        DCDC6 power supply node, if present.
> =20
> +  vin678-supply:
> +    description: >
> +      Combined DCDC6/DCDC7/DCDC8 power supply node, if present.

[ ... ]

> @@ -277,7 +303,7 @@ properties:
>            Defines the work frequency of DC-DC in kHz.
> =20
>      patternProperties:
> -      "^(([a-f])?ldo[0-9]|dcdc[0-7a-e]|ldo(_|-)io(0|1)|(dc1)?sw|rtc(_|-)=
ldo|cpusldo|drivevbus|dc5ldo|boost)$":
> +      "^(([a-f])?ldo[0-9]|dcdc[0-7a-e]|ldo(_|-)io(0|1)|(dc1)?sw|swout[1-=
9]|rtc(_|-)ldo|cpusldo|drivevbus|dc5ldo|boost)$":

[Severity: Medium]
Will this regex falsely reject dcdc8 and dcdc9 nodes? The commit adds
vin19-supply (for DCDC1/DCDC9) and vin678-supply (for DCDC6/DCDC7/DCDC8), b=
ut
the regex dcdc[0-7a-e] only matches 0-7 and a-e, excluding 8 and 9.

This could cause device trees configuring these new regulators to fail
schema validation.

>          $ref: /schemas/regulator/regulator.yaml#
>          type: object
>          unevaluatedProperties: false

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260710-axp318-reg=
ulator-v2-0-ee5f1c56b49f@baylibre.com?part=3D1

