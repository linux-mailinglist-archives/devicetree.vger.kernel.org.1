Return-Path: <devicetree+bounces-305276-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UG6IBH+4HWrKdAkAu9opvQ
	(envelope-from <devicetree+bounces-305276-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 01 Jun 2026 18:51:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 54C09622D1E
	for <lists+devicetree@lfdr.de>; Mon, 01 Jun 2026 18:51:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4937D300D6BF
	for <lists+devicetree@lfdr.de>; Mon,  1 Jun 2026 16:41:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF79F30148B;
	Mon,  1 Jun 2026 16:41:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VnK3Ds27"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8E34C3093B8
	for <devicetree@vger.kernel.org>; Mon,  1 Jun 2026 16:41:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780332107; cv=none; b=WoVgFI6Pdkrf8YNed0oCSPlFcLuETDjXznA03SJSE8/aOSL0NCAVXmMLbvzkNMaICnX0YW5qMmsOYDTP2UH2wG2wDrokQIe75SS1heFeneGWIsHwgOCVb/eRFK+tGeEnHqkPgWAxaWgZPL0onNpAhSS7dBdKZ84ACtgEo/Y7SWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780332107; c=relaxed/simple;
	bh=YJ+MC7FhYVgCfskJCctG8ik+TV03ri5ceBR8h8VHTU8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=pplHQdWtbOErrv/YLBJa6Ne+3A0XYqwLMPBmqeon0FlyvAh4fT3PJVDfAnU4e1ZvqMAio9+chQJpMJ4hIZtljHXCv09A5Xbj3tez6uFo4q/jf7HJC7LRGtfxSfvXYtFBFSVMb5mxC6LheZ5rmlpgGuA1We8/YYXNdZr0NHmR8jI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VnK3Ds27; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 06E741F00893;
	Mon,  1 Jun 2026 16:41:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780332106;
	bh=rPHBo/aEJn/H9J6jQcd3dU1g6MAAaqFXzxplyB2vGSA=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=VnK3Ds27FrfM22nlbCeb+4dUy+G4lEl/V+IO1nOI6jYjyexvHFzW/KQ8j9PQJvxa8
	 Xesp9ciljOdX6MWRhag0uWyOzb/VCcvPJYNcMLWug7n2uaiEwY+KBh5KX4KbCxSWCO
	 ArLwb7zLDNf9okolsJ+UygDzVLtOncGJY0NueMbKeXZJITb6kHpMJAPXpXtJWwH6b+
	 tJK58WwilxNt6zLKX3sW5IUADyElpFbbrQNN7wPFHOxd+5pmkHvuJoriyhq9mGYa4W
	 6Rvyu04gNtJNzTI0oN9nwnUnmFyWZXr8XkPp1TnU2T5jPpSwdwNijJGiU//PQGSIsc
	 fR+hXQyBRyuog==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH V3 1/6] dt-bindings: power: supply: sgm41542: document
 sgm41542
Reply-To: sashiko-reviews@lists.linux.dev
To: "Chris Morgan" <macroalpha82@gmail.com>
Cc: conor+dt@kernel.org, devicetree@vger.kernel.org, robh@kernel.org
In-Reply-To: <20260601162951.254968-2-macroalpha82@gmail.com>
References: <20260601162951.254968-2-macroalpha82@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Mon, 01 Jun 2026 16:41:45 +0000
Message-Id: <20260601164146.06E741F00893@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-305276-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,lists.linux.dev:replyto,sashiko.dev:url,smtp.kernel.org:mid]
X-Rspamd-Queue-Id: 54C09622D1E
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Low] The binding defines power supply properties like 'monitored-battery=
' but fails to include a root-level reference to the core 'power-supply.yam=
l' schema, and incorrectly uses 'additionalProperties: false' instead of 'u=
nevaluatedProperties: false'.
- [Low] C preprocessor `#include` directives are placed in the middle of th=
e example DTS block, after a node definition.
--

commit afc648784a49832d73d043919a9fa8c27e4ca3ae
Author: Chris Morgan <macromorgan@hotmail.com>

dt-bindings: power: supply: sgm41542: document sgm41542

This commit documents the SGMicro sgm41542 battery charger and boost
converter. It defines the hardware bindings, including custom input
current and voltage limits, interrupts, and monitored battery references.

> diff --git a/Documentation/devicetree/bindings/power/supply/sgmicro,sgm41=
542.yaml b/Documentation/devicetree/bindings/power/supply/sgmicro,sgm41542.=
yaml
> new file mode 100644
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/power/supply/sgmicro,sgm41542.yaml

[ ... ]

> +  interrupts:
> +    maxItems: 1
> +
> +  monitored-battery:
> +    description: |
> +        A phandle to a monitored battery node. Values for the following
> +        are used by the driver and if not present will result in default
> +        values being applied:

[Severity: Low]
Since this device acts as a battery charger, should it include an
allOf block with a $ref to power-supply.yaml? Without it, standard
properties like monitored-battery lack their inherited type definitions.

[ ... ]

> +required:
> +  - compatible
> +  - reg
> +
> +additionalProperties: false

[Severity: Low]
If this schema is updated to reference the core power-supply schema,
does this need to be changed to unevaluatedProperties: false? Using
additionalProperties: false without inheriting the common power-supply
schema causes schema validation to strictly reject any other standard
power-supply properties added to the device tree node.

> +
> +examples:
> +  - |
> +    battery: battery {
> +      compatible =3D "simple-battery";
> +      constant-charge-current-max-microamp =3D <10000000>;
> +      constant-charge-voltage-max-microvolt =3D <4350000>;
> +      precharge-current-microamp =3D <180000>;
> +      charge-term-current-microamp =3D <300000>;
> +    };
> +    #include <dt-bindings/gpio/gpio.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>

[Severity: Low]
Is it standard to place these include directives after the initial
battery node? While technically valid C preprocessor syntax, DT binding
conventions typically require all include directives to be placed at the
very top of the examples block, prior to defining any nodes.

> +    i2c {
> +      #address-cells =3D <1>;
> +      #size-cells =3D <0>;

[ ... ]

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260601162951.2549=
68-1-macroalpha82@gmail.com?part=3D1

