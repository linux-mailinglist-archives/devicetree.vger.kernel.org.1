Return-Path: <devicetree+bounces-301074-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6BoKFs/ADmrXBwYAu9opvQ
	(envelope-from <devicetree+bounces-301074-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 10:22:39 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 582D05A0F39
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 10:22:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 077C13004D12
	for <lists+devicetree@lfdr.de>; Thu, 21 May 2026 08:22:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A39833F8C5;
	Thu, 21 May 2026 08:22:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mQEZJpRY"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED02F31A07B
	for <devicetree@vger.kernel.org>; Thu, 21 May 2026 08:22:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779351752; cv=none; b=fdQpSuqz+jHJa6Dm9nfsURFn47fyL3y7iGAGtGxBv7WnaM7Nf7vnQkVHS62alf992Smj1YD9w+8pbBrn1DX501cY7TCzsnEgxZ7hqAJdafNJ8lH0vIJeCWXrrrHrBI+8VzZQBzQAfaxxPL4cS4KxgHxxzQemHqoasYzHpDlBFPQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779351752; c=relaxed/simple;
	bh=gWLO77tZ9MbajFEgPVEjQUCT6ZTSoktNSTsYB3WGDKU=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=h8YorwGtl3jHqJJJK943v/P4o1jAthY+tLREsYDLBn30ci0wPAoSZ7+J4FzbYEHscbMWsepoNMP4TEcEH40wu1v38ZOUIfGLDiK6+cLFcRDc812kPSlYGX7uavRGo9Tk0aFOY13bMFCX4cRZHNK8wuu299iqrDt7F/s31dVr7s8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mQEZJpRY; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6BD161F000E9;
	Thu, 21 May 2026 08:22:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1779351750;
	bh=qv3TtZ0qONesORUEiWfS5ijOH+9Ehz6dBfj4D+Vm9RM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=mQEZJpRYBUHi7Up/9Cm41+0WtSqk+Fai0ElVHvajbn7wXFclzQW8tsnG+g0fWbvy5
	 XNoOQn7n/jDP5bAvIq/l773+hQ5Hn2F/xhH3LjoOHnOeEIfQXXSdsApnmyAPCLJz6I
	 qnkusBaKBJpO25UqzZAEj4U60Qip4CHtDv8huPLPfRSEn0dm4elgO2oay/nRWf07F/
	 tjYTZqsS8FF6H1ZGhKqFxtNUb9kRo87SOAlFC4BxnrVK90A5ddeJabT8xhfziXJ6tl
	 +wkxd2XHLp1R2FP/nDzrJU3nWl/hq9obre7ZC+6RzIZzaM8qy0/Sv7zrHF+BLEVdrP
	 gEm4AVVC8gyGQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v5 1/2] dt-bindings: display: panel: document the
 Renesas R63419 based dual-DSI video mode Display Panels
Reply-To: sashiko-reviews@lists.linux.dev
To: "Neil Armstrong" <neil.armstrong@linaro.org>
Cc: robh@kernel.org, devicetree@vger.kernel.org, wsa+renesas@sang-engineering.com, conor+dt@kernel.org
In-Reply-To: <20260521-topic-sm8650-ayaneo-pocket-s2-r63419-v5-1-dd5700299390@linaro.org>
References: <20260521-topic-sm8650-ayaneo-pocket-s2-r63419-v5-1-dd5700299390@linaro.org>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 21 May 2026 08:22:30 +0000
Message-Id: <20260521082230.6BD161F000E9@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-301074-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sashiko.dev:url,sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo,lists.linux.dev:replyto,linaro.org:email,smtp.kernel.org:mid];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,renesas,dt];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Queue-Id: 582D05A0F39
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The schema incorrectly uses `additionalProperties: false` instead o=
f `unevaluatedProperties: false` when inheriting from a common schema.
--

commit 06ab207971a6f54327d9bb05b5e8355cbba81b0c
Author: Neil Armstrong <neil.armstrong@linaro.org>

dt-bindings: display: panel: document the Renesas R63419 based dual-DSI vid=
eo mode Display Panels

This commit adds a new device tree binding document for the Renesas
R63419 generic DDIC. The DDIC is used to control dual-DSI LCD panels,
such as those found in Ayaneo gaming handheld devices.

> diff --git a/Documentation/devicetree/bindings/display/panel/renesas,r634=
19.yaml b/Documentation/devicetree/bindings/display/panel/renesas,r63419.ya=
ml
> new file mode 100644
> index 0000000000000..adfdd2c300a35
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/panel/renesas,r63419.yaml
[ ... ]
> +allOf:
> +  - $ref: panel-common-dual.yaml#
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - ayaneo,wt0600-2k
> +          - ayaneo,wt0630-2k
> +      - const: renesas,r63419
[ ... ]
> +  backlight: true
> +  reset-gpios: true
> +  rotation: true
> +  ports: true
> +
> +required:
> +  - compatible
> +  - reg
[ ... ]
> +  - reset-gpios
> +  - ports
> +
> +additionalProperties: false

[Severity: Low]
Since this schema inherits from panel-common-dual.yaml in the allOf block
above, should this be unevaluatedProperties: false instead?

In JSON schema, additionalProperties: false only considers the properties
explicitly listed in the local properties block. This means any standard
panel properties (like width-mm, height-mm, or enable-gpios) not explicitly
listed here will be incorrectly rejected during validation.

Using unevaluatedProperties: false would allow properties defined in the
inherited schemas. It would also eliminate the need to redundantly define
properties like backlight or ports in the local properties block.

> +
> +examples:
> +  - |
[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260521-topic-sm86=
50-ayaneo-pocket-s2-r63419-v5-0-dd5700299390@linaro.org?part=3D1

