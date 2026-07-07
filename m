Return-Path: <devicetree+bounces-322154-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id e1zXHCQUTWrhugEAu9opvQ
	(envelope-from <devicetree+bounces-322154-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 16:58:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 8FC4E71CEC5
	for <lists+devicetree@lfdr.de>; Tue, 07 Jul 2026 16:58:41 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=d2uNErgO;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-322154-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-322154-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id BC76C3054775
	for <lists+devicetree@lfdr.de>; Tue,  7 Jul 2026 14:45:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BD2FE3E63B5;
	Tue,  7 Jul 2026 14:45:01 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81BD83DB99C
	for <devicetree@vger.kernel.org>; Tue,  7 Jul 2026 14:45:00 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783435501; cv=none; b=DuYQS1feKnVkl9t2Y4uSOX+xy/EyuKMC43kZ9ctfe8SI/Rmri+yvZzVfW+6RidhwiKSkolUFLsCR43mdwQMh+biqpmrIL00NURHkYmqJ7Aw/8KfCQQFlsd55T6cNzKplJFefAUQ9TVfi9K5dwUwhXIy0bHw6Bq90mOXJUvRTof0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783435501; c=relaxed/simple;
	bh=CERMEPMjusZbL65X3uabHirisDM5i+x85QV8Oyn2eG8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=dxmuzDhl5ndgrsksrK5nIRfoRnK/sp8Ce4Onl4uBQt51sGXUmpji+q3kHDqCkPk0laRsxqdA0pGjbWVaUBZfmevgRDQ4uaHTExd1lhdX3jFURcaVKdS3kZOHh70KDL4/wI5N7R/PPWCcqWp377+FoXoXeQmUWuZHo4va8Oj8YYA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d2uNErgO; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C9B411F000E9;
	Tue,  7 Jul 2026 14:44:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783435500;
	bh=H3qoG6JNq2e2TvpQo/JY34m9UzyY69delUAjqPRgAUo=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=d2uNErgOjLzPyF9rTQ3ktsZlSmaRQVruFaUdl02Stq5NUOeVDzdHTe9G+ND8uLSoM
	 qSdiU+zA8VFWZq7TaDKsB2f7WUA9mLLdQboIHaG9MJkA84knloxKowx2LJ3vHAloiU
	 ANHtB0cVj6heE0cksbMlYsxxNBISvyVU4mvkKyrW/y5OGByntMRHPERLcDe9JrCPnp
	 QsobRYvu/W2f7s0Cw9Gutfutr3TcYGtapOWmo38nuxZ81ur0w9ACLwLWfA4yZFSTnW
	 eOR3jpydvzvru49YhMjwUQTOoazp92olELwuDgyECZY4NZzTou6f8cEagzHSgq51tO
	 r1zF5spXWvCqA==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v3 1/9] dt-bindings: reset: renesas,rzg2l-usbphy-ctrl:
 Document RZ/G3L support
Reply-To: sashiko-reviews@lists.linux.dev
To: Biju <biju.das.au@gmail.com>
Cc: conor+dt@kernel.org, robh@kernel.org, wsa+renesas@sang-engineering.com, devicetree@vger.kernel.org
In-Reply-To: <20260707143646.245177-2-biju.das.jz@bp.renesas.com>
References: <20260707143646.245177-1-biju.das.jz@bp.renesas.com>
 <20260707143646.245177-2-biju.das.jz@bp.renesas.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 07 Jul 2026 14:44:59 +0000
Message-Id: <20260707144459.C9B411F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:biju.das.au@gmail.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:wsa+renesas@sang-engineering.com,m:devicetree@vger.kernel.org,m:bijudasau@gmail.com,m:conor@kernel.org,m:wsa@sang-engineering.com,s:lists@lfdr.de];
	TAGGED_FROM(0.00)[bounces-322154-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[renesas.com:email,lists.linux.dev:replyto,smtp.kernel.org:mid,sashiko.dev:url,vger.kernel.org:from_smtp,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ALIAS_RESOLVED(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt,renesas];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 8FC4E71CEC5

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Low] The newly added `regulators` object node is missing the `additional=
Properties: false` constraint.
--

--- Patch [1]: [PATCH v3 1/9] dt-bindings: reset: renesas,rzg2l-usbphy-ctrl=
: Document RZ/G3L support ---
commit 13d2a223ee35259aa34d58ec5e02e2fa9d54297b
Author: Biju Das <biju.das.jz@bp.renesas.com>

dt-bindings: reset: renesas,rzg2l-usbphy-ctrl: Document RZ/G3L support

Document Renesas RZ/G3L (r9a08g046) USB PHY controller bindings.
The RZ/G3L USB PHY block uses a regulators sub-node with per-port vbus0
and vbus1 entries instead of the single regulator-vbus property used
by other compatible SoCs.

> diff --git a/Documentation/devicetree/bindings/reset/renesas,rzg2l-usbphy=
-ctrl.yaml b/Documentation/devicetree/bindings/reset/renesas,rzg2l-usbphy-c=
trl.yaml
> index c83469a1b379a..06e003218d2a8 100644
> --- a/Documentation/devicetree/bindings/reset/renesas,rzg2l-usbphy-ctrl.y=
aml
> +++ b/Documentation/devicetree/bindings/reset/renesas,rzg2l-usbphy-ctrl.y=
aml

[ ... ]

> @@ -50,6 +53,28 @@ properties:
>      $ref: /schemas/regulator/regulator.yaml#
>      unevaluatedProperties: false
> =20
> +  regulators:
> +    type: object
> +    description:
> +      list of vbus regulators provided by this controller.
> +

[Severity: Low]
Is the additionalProperties: false constraint missing here?

Without this constraint, device tree schema validation will silently accept
undocumented or malformed properties (like typos in vbus names) inside the
regulators node, as the parent object doesn't strictly forbid them.

> +    properties:
> +      vbus0:
> +        type: object
> +        description: Port 1 USB VBUS regulator
> +        $ref: /schemas/regulator/regulator.yaml#
> +        unevaluatedProperties: false

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260707143646.2451=
77-1-biju.das.jz@bp.renesas.com?part=3D1

