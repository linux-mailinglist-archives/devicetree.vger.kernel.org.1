Return-Path: <devicetree+bounces-323986-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id mNgCFwvlT2p6pwIAu9opvQ
	(envelope-from <devicetree+bounces-323986-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 20:14:35 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id E90787342B5
	for <lists+devicetree@lfdr.de>; Thu, 09 Jul 2026 20:14:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b="l/sSKfIk";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323986-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.232.135.74 as permitted sender) smtp.mailfrom="devicetree+bounces-323986-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 62B5A3032B72
	for <lists+devicetree@lfdr.de>; Thu,  9 Jul 2026 18:14:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3988C4DBD68;
	Thu,  9 Jul 2026 18:14:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E763B4DB57E
	for <devicetree@vger.kernel.org>; Thu,  9 Jul 2026 18:14:30 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783620872; cv=none; b=nO8jjv75dlu+I6l6qSgrHB1SIuY+Tkhy+zxMUnNWk9X4Mn9G4p4CmOmDC22osZINkeOClA6dwtvubTwpmeB8VfbZBxj0Ubr8eEDLjJPv890YveZD/r7MzjnRnSH92uKsQ5rM8Eucr+pK4LiuLm0i3zxQNixRKzaXQ8MY2hob2tM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783620872; c=relaxed/simple;
	bh=djsGwgjE+OBll3Kb1arMiXCWkoJH/H3JofBSmvuDXg8=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=pnnw5l/9PGDz56LZzAzDNnZGZIymeyZ5Mp2Ls6VzPlPTgsgEBnHl8qxHGZXkcWD2SqbnfMdkQ+himVOgCok1TgWm4H3GEdyS6HrAjUKhFJGyNnVuRFZ4s9/cag1YlZ4uGORuA6T8zTjNxuHzGHFJDBkzGnAqsbfF0aMjUnrXYqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l/sSKfIk; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 509131F000E9;
	Thu,  9 Jul 2026 18:14:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783620870;
	bh=TwwjOLBwMhMlDuK8KM/oFpBOb79kXfOxP9klkhAgZfU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=l/sSKfIkF+p2JZFEV9rGlI5SRtYdvDu+idPbfEGFn1X+RBKwcmd5phf4NVpEIccjn
	 IoyKroHHTT3yZ3ZoXPphcdVS42LU2vGT59KulatfU/gHj2hBBVCpGTvdVySZobwK76
	 2V5OWYprn5Tv2NrZY1hDDXxVK25i0k6iC8E/GCRcbNqFcxqQEuOUaK9xXD6LAvWa2s
	 SkTbFmRyQcJSzirkJfvOuLueMuMdol9VwjvFcoJOamN0dMIAbXemex65puIbgubbtn
	 tO/uzQxr5EF7VCfPwpPoHsQHc2aIwaLnsZyp4Ek0YGRYuzceQzJkA0AOleTsteewH3
	 k20x+dWBu13DQ==
From: sashiko-bot@kernel.org
Subject: Re: [RFC PATCH] dt-bindings: power: Add power-limit-controller
 schema
Reply-To: sashiko-reviews@lists.linux.dev
To: "Manaf Meethalavalappu Pallikunhi" <manaf.pallikunhi@oss.qualcomm.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260709180727.4015267-1-manaf.pallikunhi@oss.qualcomm.com>
References: <20260703-modern-indigo-wolverine-6b6eaa@quoll>
 <20260709180727.4015267-1-manaf.pallikunhi@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 09 Jul 2026 18:14:29 +0000
Message-Id: <20260709181430.509131F000E9@smtp.kernel.org>
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
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-323986-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:manaf.pallikunhi@oss.qualcomm.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,vger.kernel.org:from_smtp,smtp.kernel.org:mid,lists.linux.dev:replyto,devicetree.org:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E90787342B5

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [Medium] Node name regexes for domains and limits incorrectly restrict un=
it addresses to decimal digits, breaking on standard hex addresses.
- [Medium] Missing `#address-cells` and `#size-cells` properties for nodes =
with `reg`-bearing children, causing dtc warnings and schema validation fai=
lures.
- [Medium] Use of non-standard `-microsecond` suffix prevents automatic sch=
ema typing.
--

--- Patch [1]: [RFC PATCH] dt-bindings: power: Add power-limit-controller s=
chema ---
commit 04e63fa5b3b701b0306a74eba5521673337890b4
Author: Manaf Meethalavalappu Pallikunhi <manaf.pallikunhi@oss.qualcomm.com>

dt-bindings: power: Add power-limit-controller schema
   =20
This RFC proposes a new device tree binding schema for power limit
controllers that manage SoC power domains with hardware-enforced power
capping capabilities.

> diff --git a/Documentation/devicetree/bindings/power/limits/power-limit-c=
ontroller.yaml b/Documentation/devicetree/bindings/power/limits/power-limit=
-controller.yaml
> new file mode 100644
> index 0000000000000..9cd4d9d6414d9
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/power/limits/power-limit-controll=
er.yaml
> @@ -0,0 +1,238 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/power/limits/power-limit-controller.y=
aml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#

[ ... ]

> +properties:
> +  $nodename:
> +    pattern: "^power-limits(@.*)?$"
> +
> +  '#power-limit-domain-cells':
> +    description: |
> +      Number of cells in a power limit domain specifier for child domain=
s.
> +      Typically 1, representing the domain index.
> +    const: 1

[Severity: Medium]
Will this schema cause dtc warnings for missing #address-cells and #size-ce=
lls?

Since the child nodes like power-limit-domain@0 require a reg property,
wouldn't the root node need to define #address-cells and #size-cells
properties here in the schema?

> +
> +patternProperties:
> +  "^power-limit-domain@[0-9]+$":

[Severity: Medium]
Does this regular expression restrict unit addresses to only decimal digits?

Standard device trees use hexadecimal for unit addresses, so a node like
power-limit-domain@a would fail to match this pattern. Could this be
updated to [0-9a-f]+ instead?

> +    type: object
> +    description: |
> +      Individual power limit domain/zone under this controller.
> +      Each domain can either:
> +        - Have power limit constraints (with power-limits child node)
> +        - Be monitoring-only (without power-limits child node)

[ ... ]

> +      power-limits:
> +        type: object
> +        description: |
> +          Container node for power limit constraints within this domain.
> +          Each child node represents a power limit constraint index.
> +
> +          This node is optional. If omitted (or if monitoring-only is se=
t),
> +          the domain provides only power/energy measurement without limi=
ts.
> +
> +        patternProperties:
> +          "^power-limit@[0-9]+$":

[Severity: Medium]
Similarly, does this constraint node pattern also improperly restrict unit
addresses to decimal digits instead of hexadecimal?

> +            type: object
> +            description: |
> +              Individual power limit constraint configuration.

[ ... ]

> +              power-limit-microwatt:
> +                description: |
> +                  Default power limit value for this constraint at boot/=
reset.
> +                  This is the initial value that will be programmed.
> +
> +              time-window-min-microsecond:

[Severity: Medium]
Does the -microsecond suffix prevent dtschema from automatically inferring
property types?

The standard suffix recognized by the core schema for microseconds is -us.
Without the standard suffix, the schema validator cannot automatically infer
the property types (such as uint32), which could cause missing type definit=
ion
errors during dt_binding_check.

> +                description: |
> +                  Minimum time window for power averaging.
> +                  Shorter windows allow faster response to power excursi=
ons.

[ ... ]

> +            required:
> +              - reg
> +
> +            additionalProperties: true
> +
> +        additionalProperties: false

[Severity: Medium]
Will this strict additionalProperties: false prevent adding #address-cells
and #size-cells to the power-limits container?

Because the power-limit@N child nodes require reg properties, this container
node will need these cell-count properties, but they aren't explicitly defi=
ned
in this schema block.

> +
> +    required:
> +      - reg
> +
> +    additionalProperties: true
> +
> +additionalProperties: true
> +
> +examples:
> +  - |
> +    // Multi-domain power limit controller with mixed capabilities
> +    // Demonstrates multiple domains with and without power limit constr=
aints
> +    power-limits@ef3b000 {
> +        compatible =3D "qcom,glymur-spel";
> +        reg =3D <0x0ef3b000 0x1000>;
> +        #power-limit-domain-cells =3D <1>;

[Severity: Medium]
Could this example fail dt_binding_check due to the missing #address-cells
and #size-cells properties in the power-limits@ef3b000 node?

> +
> +        // Domain 0: System domain with full power limit control (PL1/PL=
2)
> +        sys_domain: power-limit-domain@0 {
> +            reg =3D <0>;

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260709180727.4015=
267-1-manaf.pallikunhi@oss.qualcomm.com?part=3D1

