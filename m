Return-Path: <devicetree+bounces-323389-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id 9LZNKkZRT2pPeQIAu9opvQ
	(envelope-from <devicetree+bounces-323389-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 09:44:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 713DD72DE3A
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 09:44:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=b35ocGCO;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323389-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c09:e001:a7::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323389-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id E180D30054D9
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 07:44:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F9553E3148;
	Thu,  9 Jul 2026 07:44:04 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 595023E5A14;
	Thu,  9 Jul 2026 07:44:03 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783583044; cv=none; b=rZJbFOt2lPfGaUyZikt5kT0dUKfUi1lwJ7YyB1TwaY8dG7yzeRgq7kaXFOqtgH3vDLkm3M7Tc4VBbMMPBzCsFIoAzqBWsT5QJvx2k37EY2c5cCxoOD4sd0zwyBNOcML/8kc/i5jj7rOZUaIN5F/PpUg5eyS20KyVde/AWOrfJoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783583044; c=relaxed/simple;
	bh=VVd5OnpRDiF1QOoSQCy8bA9rue4ZIjr0ie66OsBrAp0=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=dDH/bITYi1Onoc7HO3QXsT16qE4pWIJDVmfmwMnDlh6VsAc4tXMv3tZTlikOrAbmY+92+QGS+Iwq/54RqSoUxyvQNjOMa4SlHjohmqK5FV1MNtK0es1wm7buQAcXeKXkZT7x7RKJKRafW8iLlHEyhVYLufbK2457RmkM23289is=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b35ocGCO; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id A3A191F000E9;
	Thu,  9 Jul 2026 07:44:02 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783583043;
	bh=KDctwqGpjlJ6yyBgYfodMNF9TC5Z8cruiAhWIq0BJUA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=b35ocGCO7vCUfL1Doe5m2OBfC3ZNyTXwu3QwVAZtMyx1Rif9RWjb1+EWp/ZjcPhaP
	 yiJqBdbeAdARQzuo5LHmBtPYCoVt80M7+5C1w8gKYyubZDvg/smAQxGrj6XSBVXECI
	 w1w+pctyhQghh4k0nOqI/kU6IvBykvElm+ZLH+BTsoTg9S1gXa7lFK3rnqUArIycdM
	 A82SfV7ZHdwBfzzbwP8hHVKl3K/eis8MT5AmpDui63Jl6rEj3U7KDD9hz2Sw9UFPUd
	 4BTYXDFH46vCaRJdi6WPBpJNHho6sP/DaapYRXz6ZK5abqlMy3n/014XSWoTOfj5PU
	 Sk6geOnjVw1lA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 01/11] dt-bindings: arm: apple: Add M3 Pro/Max/Ultra
 devices (T603x)
Reply-To: sashiko-reviews@lists.linux.dev
To: "Janne Grunau" <j@jannau.net>
Cc: linux-watchdog@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260709-apple-t603x-initial-devices-v1-1-55b305833123@jannau.net>
References: <20260709-apple-t603x-initial-devices-v1-0-55b305833123@jannau.net>
 <20260709-apple-t603x-initial-devices-v1-1-55b305833123@jannau.net>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Jul 2026 07:44:02 +0000
Message-Id: <20260709074402.A3A191F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-323389-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp,jannau.net:email,smtp.kernel.org:mid,lists.linux.dev:replyto];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:j@jannau.net,m:linux-watchdog@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	RCPT_COUNT_FIVE(0.00)[5];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 713DD72DE3A

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] YAML sequence indentation violates the subsystem's yamllint rules (=
`indent-sequences: true`), causing `make dt_binding_check` to fail.
--

--- Patch [1]: [PATCH 01/11] dt-bindings: arm: apple: Add M3 Pro/Max/Ultra =
devices (T603x) ---
commit 8fa154a194ffbacee86322faaaf7374a3dd8929a
Author: Janne Grunau <j@jannau.net>

dt-bindings: arm: apple: Add M3 Pro/Max/Ultra devices (T603x)

This commit introduces device tree bindings for the Apple M3 Pro, Max, and
Ultra SoCs (T6030, T6031, T6032, and T6034). It documents the compatible
strings for these new platforms along with the corresponding devices they
power.

> diff --git a/Documentation/devicetree/bindings/arm/apple.yaml b/Documenta=
tion/devicetree/bindings/arm/apple.yaml
> index e49403c73f9d2..111c28d94736b 100644
> --- a/Documentation/devicetree/bindings/arm/apple.yaml
> +++ b/Documentation/devicetree/bindings/arm/apple.yaml

[ ... ]

> @@ -365,6 +373,35 @@ properties:
>            - const: apple,t6022
>            - const: apple,arm-platform
> =20
> +      - description: Apple M3 Pro SoC based platforms
> +        items:
> +          - enum:
> +            - apple,j514s # MacBook Pro (14-inch, M3 Pro, 2023)
> +            - apple,j516s # MacBook Pro (16-inch, M3 Pro, 2023)

[Severity: Low]
Does this formatting regression cause make dt_binding_check to fail? The
sequence indicators for apple,j514s and apple,j516s are at the same
indentation level as their parent enum: key. Should they be indented by an
additional 2 spaces to comply with the subsystem's indent-sequences: true
yamllint rule?

> +          - const: apple,t6030
> +          - const: apple,arm-platform
> +
> +      - description: Apple M3 Max SoC based platforms
> +        oneOf:
> +          - items:
> +            - enum:
> +              - apple,j514c # MacBook Pro (14-inch, M3 Max, 16 cores, 20=
23)
> +              - apple,j516c # MacBook Pro (16-inch, M3 Max, 16 cores, 20=
23)

[Severity: Low]
Is the indentation correct here as well? The sequence indicators for the
inner enum sequences (- apple,j514c) are not indented relative to their
enum: keys, and the items sequence indicators (- enum:) are not indented
relative to the items: key.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260709-apple-t603=
x-initial-devices-v1-0-55b305833123@jannau.net?part=3D1

