Return-Path: <devicetree+bounces-312073-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id vng5CScoMGq6PAUAu9opvQ
	(envelope-from <devicetree+bounces-312073-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 18:28:23 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 824E66885D9
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 18:28:22 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=oX7OuEko;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-312073-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-312073-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9132730B912C
	for <lists+devicetree@lfdr.de>; Mon, 15 Jun 2026 16:24:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53ED4409DFD;
	Mon, 15 Jun 2026 16:24:22 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C53140963C
	for <devicetree@vger.kernel.org>; Mon, 15 Jun 2026 16:24:21 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781540662; cv=none; b=iOKv36W+sTO1Nm4qBkDXeae0B883m7YP4r4Yku2S7NUS4OwoQ5Ejjiimy4P4AlpPPL809NH5cLqcCmLZalu4f493Dg1ZtTBFDPHsPvs55hjjLbKPTDU2raPeN5nFBpiCGbkyKYLszmslQgo1KjK6x0naSa7d6C69i8i7z0DE7ug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781540662; c=relaxed/simple;
	bh=Q7c/NMSHjYKqqzRK4ynaC5ZpCoSj5lV+1Asj8hqT12o=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=XfRMGGFEmpcvTAA2RrFPdyH0BbGwHRypfKSCHUuCfg8L0WzEcHIQvjaRxlWRoceZSFyw+JiP+/IUnOd4LoLNZKp+7ep6BJ2MVGn6wcEwqu3Sbmw1f84CYafLvqpLb9bKtxQw87FVg2maVPEvgtxtpb3Xyhm1uIppPUfQTa2trnc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oX7OuEko; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C512B1F000E9;
	Mon, 15 Jun 2026 16:24:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781540661;
	bh=47Dcuv73lzfZc1kpN/UgpIBQiNtJh3Y8tS+NVhkIIjo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=oX7OuEkouMTMTO4bX6TXlgZZBludLnpizvyu6A/QqXbxvBcmXToX5MiGL3kitWoh+
	 n7WebJfML4XV8bNB31ENGW1kpjyrrjauyAoulOtNUILqszxMPCzYkpHdQtwR3Y8fGy
	 cuEyL0wBbIWdL978b9Mn7Kqw9cu5mUZhO1KlAAKii1aQY2eTUGSWxyoNd2doSHemYR
	 MfXPofzZXkNf20NCBW8w0TztdBEdr+Nqj5GFDY0Cm2aKWzm/RyVdflPXpfSzowFnoy
	 aPjWBlFAmUddAbYCVln5ZA2+VhjBx1XBKz0QbpeSPuRilTovbia90sNU9Brae+QAEU
	 zuBuwsN9AjUqA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v19 1/3] dt-bindings: pwm: opencores: Update
 compatibles, examples and maintainers
Reply-To: sashiko-reviews@lists.linux.dev
To: "Hal Feng" <hal.feng@starfivetech.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260615155759.129210-2-hal.feng@starfivetech.com>
References: <20260615155759.129210-2-hal.feng@starfivetech.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 15 Jun 2026 16:24:20 +0000
Message-Id: <20260615162420.C512B1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-312073-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:hal.feng@starfivetech.com,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
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
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,sashiko.dev:url,lists.linux.dev:replyto,smtp.kernel.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 824E66885D9

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Invalid YAML indentation under the `items` block violates the subsy=
stem's yamllint rules, causing `make dt_binding_check` to fail.
--

commit f6d46c997f1ef83c6c55a27e0e3260fdf27add18
Author: Hal Feng <hal.feng@starfivetech.com>

dt-bindings: pwm: opencores: Update compatibles, examples and maintainers

Remove the jh8100 compatible since the JH8100 SoC has been canceled and
will not be released. Add the jhb100 compatible to replace it. Use a oneOf
construct to support the single-string opencores,pwm-v1 compatible.

> diff --git a/Documentation/devicetree/bindings/pwm/opencores,pwm.yaml b/D=
ocumentation/devicetree/bindings/pwm/opencores,pwm.yaml
> index 52a59d245cdb1..5f05606a2d3d4 100644
> --- a/Documentation/devicetree/bindings/pwm/opencores,pwm.yaml
> +++ b/Documentation/devicetree/bindings/pwm/opencores,pwm.yaml
[ ... ]
> @@ -19,12 +19,14 @@ allOf:
> =20
>  properties:
>    compatible:
> -    items:
> -      - enum:
> -          - starfive,jh7100-pwm
> -          - starfive,jh7110-pwm
> -          - starfive,jh8100-pwm
> +    oneOf:
>        - const: opencores,pwm-v1
> +      - items:
> +        - enum:
> +            - starfive,jh7100-pwm
> +            - starfive,jh7110-pwm
> +            - starfive,jhb100-pwm
> +        - const: opencores,pwm-v1

[Severity: Low]
Does this formatting cause make dt_binding_check to fail? It looks like the
YAML sequence markers under the items block are indented to 8 spaces,
matching the parent mapping key, instead of being indented to 10 spaces.
This might violate the yamllint indent-sequences rules.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260615155759.1292=
10-1-hal.feng@starfivetech.com?part=3D1

