Return-Path: <devicetree+bounces-319305-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id KvJGGs1DRmqjNAsAu9opvQ
	(envelope-from <devicetree+bounces-319305-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 12:56:13 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id AE3486F6479
	for <lists+devicetree@lfdr.de>; Thu, 02 Jul 2026 12:56:12 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=K3QNpopv;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-319305-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-319305-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C39873010D8F
	for <lists+devicetree@lfdr.de>; Thu,  2 Jul 2026 10:48:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07FD023183C;
	Thu,  2 Jul 2026 10:48:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0FE72DA76A
	for <devicetree@vger.kernel.org>; Thu,  2 Jul 2026 10:48:29 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782989310; cv=none; b=mqSnJgcdjUNz3O+JF4MTc2WZrLck6RFNamwIQQAfpRP18PHjv65iQOHcb+ir0MEduuBNbfFlpyg4IQyxlRtKxGz5yF8845gvCk1BF2hp7wqwEZXakKO9Kff12xCTCCF26qJ7Sco5FodMNZatrKwbt0HoUsMaBqTiqhHO6ogHH+M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782989310; c=relaxed/simple;
	bh=aSgR0BZbDX5F+yB0CFZHk4ErklV6S+gUzOLSPfMiQBE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=JORYW14flCXZGKqDiP6URprBV46UyjNArrFJuKZQ+KhbghXlLO+yp5qL1SZFA2VsmyJSRwXWNGAaSdMi6XbemyLEuVc9322xYli/bU1AMgnUONO31Pzt3osO2htjlIY4XpLXf5An3nS/nYvSd9LcfqkSHVI+c5bJ8yGMKeYaods=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K3QNpopv; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5BB0A1F000E9;
	Thu,  2 Jul 2026 10:48:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1782989309;
	bh=NFrDCEAIJ5zCwfJSOsof5DCSd9bqWCaukbFE6APHNXc=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=K3QNpopvU+El+zc9jMHERCE6FhZCSSpHMN7jdF3Zp+DMJNRZ1kzl6+hDRhdDjarK4
	 fslW26ZY3XHa7RLl4zGU+F5QEf0VWkdrrEMW4ZdZ4eMESpdsdBFhJFMRmeUqTCId1g
	 F8KIA2u7LioN7s+vUaC9wcBrPtbikv2PMJs+7w5+AOLOQ0Ic+tcVXwfE1jRnNQrEZV
	 lnPbfJ9OkiVKPt2zijfiTaosAjjLQwZZLpKP+KoABoWd6PLBKjqDnNogv1RnoJWDn2
	 wcGCkZY9d7F4LdSIHp7Gl1WpkGEKzKxKn+Cd4/MdrOSVgvHTCFrmCK+ftN6FDMyifC
	 oshH4kDtB4JNQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 6/7] dt-bindings: arm: airoha: Add the chip-scu node
 for AN7583 SoC
Reply-To: sashiko-reviews@lists.linux.dev
To: "Christian Marangi" <ansuelsmth@gmail.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260702094846.17325-7-ansuelsmth@gmail.com>
References: <20260702094846.17325-1-ansuelsmth@gmail.com>
 <20260702094846.17325-7-ansuelsmth@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 02 Jul 2026 10:48:28 +0000
Message-Id: <20260702104829.5BB0A1F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-319305-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FREEMAIL_TO(0.00)[gmail.com];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_RECIPIENTS(0.00)[m:ansuelsmth@gmail.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,vger.kernel.org:from_smtp,sashiko.dev:url,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: AE3486F6479

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The `#thermal-sensor-cells` property is missing from the require=
d list for the new `airoha,an7583-chip-scu` variant.
--

commit a9f67eec355a32d0b9aed09bea5f0bd79ecbc7c5
Author: Christian Marangi <ansuelsmth@gmail.com>

dt-bindings: arm: airoha: Add the chip-scu node for AN7583 SoC

This commit documents support for the Airoha AN7583 chip-scu node. It is
similar to the EN7581 SoC but adds support for a thermal sensor.

> diff --git a/Documentation/devicetree/bindings/arm/airoha,en7581-chip-scu=
.yaml b/Documentation/devicetree/bindings/arm/airoha,en7581-chip-scu.yaml
> index 67c449d804c22..cc564dc7b414d 100644
> --- a/Documentation/devicetree/bindings/arm/airoha,en7581-chip-scu.yaml
> +++ b/Documentation/devicetree/bindings/arm/airoha,en7581-chip-scu.yaml
[ ... ]
> @@ -19,15 +19,29 @@ properties:
>      items:
>        - enum:
>            - airoha,en7581-chip-scu
> +          - airoha,an7583-chip-scu
>        - const: syscon
> =20
>    reg:
>      maxItems: 1
> =20
> +  '#thermal-sensor-cells':
> +    const: 0
> +
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
Since the AN7583 variant adds thermal sensor capabilities, shouldn't=20
#thermal-sensor-cells be conditionally added to the required properties lis=
t=20
for airoha,an7583-chip-scu?

Without enforcing this via an else block or an additional conditional, devi=
ce=20
tree nodes for the new AN7583 variant might silently pass schema validation=
=20
even if they omit the #thermal-sensor-cells property.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260702094846.1732=
5-1-ansuelsmth@gmail.com?part=3D6

