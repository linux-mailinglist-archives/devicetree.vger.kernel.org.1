Return-Path: <devicetree+bounces-320673-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id LLmeF+57SmrMDwEAu9opvQ
	(envelope-from <devicetree+bounces-320673-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 05 Jul 2026 17:44:46 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id E183970A7C3
	for <lists+devicetree@lfdr.de>; Sun, 05 Jul 2026 17:44:45 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=B9Qv+aus;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-320673-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-320673-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 51F92300335E
	for <lists+devicetree@lfdr.de>; Sun,  5 Jul 2026 15:44:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE087380FDA;
	Sun,  5 Jul 2026 15:44:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CB755433E71
	for <devicetree@vger.kernel.org>; Sun,  5 Jul 2026 15:44:41 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783266282; cv=none; b=YRd7ROFWFXk4wsohYlTpBiemtv34OQq/ZcFnvTocruN4u1OmVp3Ts82PtOIe9gBlVdCodF5JHgMEInCVY3D1E5scUUOVqqQsg3oJgPwOcFvg5rE45C1NQZ6h5kPkUvxOMRzwaqCW1ehc3plBhtSdJpMaXQawCNuCc8UFsCp0/mk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783266282; c=relaxed/simple;
	bh=U4qhh1RSsC3pWG0Bp+KQgZLlN2uEy3Z0fzi6mELth+g=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=JmSfcWIkN9fzFXU7x2gDLnVVS6RjvtbGeajYrZmtg4K3D4KFR1fU/SLrfu5sPCxSDrFSPR/mff4SE0FNVxltxfYiFdYilTKi5KxcWtY6gIi6fO8p3QCSpbEi/aGLyYRZTHtWtZtVOeN6n2afFEIXIP1DYFFJH6U3xCzTkWaEnDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B9Qv+aus; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2D2CB1F000E9;
	Sun,  5 Jul 2026 15:44:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783266281;
	bh=Sa8jdhCDuQzGZGcwxGMxwjLf+rQBmxGamD9N86r0hPg=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=B9Qv+ausO2ouIiVmxUkSECnmoACFqieGSId9pOvnJqVPSZBgKlZPTFPmvwaxKdRXO
	 jNc5IGSUvaJbXHJcqCR4JkfK1tIrtGQ9ABC5d38bM1149t8UxtXvUFvDZvvtDFmJ9+
	 b5yHqgUcxsyWlE5qLtqdQ3NIK8T/Ko8XeokbObdSnF0491EsTvlYDYgTB8f3pLLafB
	 g/cSV/zLWzsG1/2aVd3BE0i9Aoc+KsbA+S9WHhfGmDW8AuSAP7gG+FJNGcwsp7Vf6s
	 L29gBVz7Om1P7Q91guKK+dgrXVFYY2ERyc+xSzxA1QikRNbzlH4gtG8sybOqbNFsXU
	 +I5qLR61Q24QA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v2 1/2] dt-bindings: display: panel: Add Novatek NT36536
Reply-To: sashiko-reviews@lists.linux.dev
To: "Pengyu Luo" <mitltlatltl@gmail.com>
Cc: robh@kernel.org, dri-devel@lists.freedesktop.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260705153515.46147-2-mitltlatltl@gmail.com>
References: <20260705153515.46147-1-mitltlatltl@gmail.com>
 <20260705153515.46147-2-mitltlatltl@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sun, 05 Jul 2026 15:44:40 +0000
Message-Id: <20260705154441.2D2CB1F000E9@smtp.kernel.org>
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
	RCVD_TLS_LAST(0.00)[];
	TAGGED_FROM(0.00)[bounces-320673-lists,devicetree=lfdr.de];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:mitltlatltl@gmail.com,m:robh@kernel.org,m:dri-devel@lists.freedesktop.org,m:conor+dt@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,sashiko.dev:url,vger.kernel.org:from_smtp,smtp.kernel.org:mid];
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
X-Rspamd-Queue-Id: E183970A7C3

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] Incorrect use of `additionalProperties: false` instead of `unevalua=
tedProperties: false` in a schema containing an `allOf` reference.
--

commit 40b975ec362c58607cb7c58d87a808388df1aa11
Author: Pengyu Luo <mitltlatltl@gmail.com>

dt-bindings: display: panel: Add Novatek NT36536

This commit adds a new devicetree binding schema for the Novatek NT36536 DSI
panel IC, which supports video mode panels like the dual-link 10-bit CSOT
PP8807HB1-1.

> diff --git a/Documentation/devicetree/bindings/display/panel/novatek,nt36=
536.yaml b/Documentation/devicetree/bindings/display/panel/novatek,nt36536.=
yaml
> new file mode 100644
> index 0000000000000..1e86f5329b222
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/panel/novatek,nt36536.yaml
[ ... ]
> +allOf:
> +  - $ref: panel-common-dual.yaml#
> +
> +properties:
[ ... ]
> +  vsn-supply:
> +    description: Negative source voltage rail
> +
> +  backlight: true
> +  ports: true

[Severity: Low]
Should these properties be omitted? They are already defined in the referen=
ced
common schemas and appear to be redundantly redefined here solely because of
how additionalProperties is evaluated below.

> +
> +required:
> +  - compatible
> +  - reg
> +  - vddio-supply
> +  - reset-gpios
> +  - ports
> +
> +additionalProperties: false

[Severity: Low]
Does this directive incorrectly restrict the schema since there is an allOf
reference above? Using additionalProperties: false will cause dtbs_check to
reject valid board configurations that use standard panel properties define=
d in
panel-common-dual.yaml and panel-common.yaml (such as rotation or width-mm).

Should this be changed to unevaluatedProperties: false instead? Once that is
corrected, the redundant backlight and ports entries above can likely be
removed.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260705153515.4614=
7-1-mitltlatltl@gmail.com?part=3D1

