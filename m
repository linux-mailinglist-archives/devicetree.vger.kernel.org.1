Return-Path: <devicetree+bounces-313751-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id EG5GKDchNWqfnQYAu9opvQ
	(envelope-from <devicetree+bounces-313751-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 13:00:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EF9AF6A5585
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 13:00:06 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=NwjiP6JQ;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313751-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-313751-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 85D47301428D
	for <lists+devicetree@lfdr.de>; Fri, 19 Jun 2026 10:59:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 23AAD372EDE;
	Fri, 19 Jun 2026 10:59:59 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 008F8367F39
	for <devicetree@vger.kernel.org>; Fri, 19 Jun 2026 10:59:57 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781866799; cv=none; b=IF0cRBiufN5pGHEod4ofBBmEZlD3FmA3P/0AF5VvakGKAGoX5yw6Y7GzURwZ7X/y+KwZEQEH0E71YvdVmpAsHgZH4yX19nV9YAmw4/7tUVXiw0lsPIjZT+FYNoaFenRZBD1AQha456hLLxz3dvcoftyTTzuXCh4dSREA/t0CC9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781866799; c=relaxed/simple;
	bh=zyf7p75LpLhtPU5GUUjOwQH/et8egNKJo+pqaIMDkbE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=n+fPe9znxJHm8sgDczgRnbU1s19uaNk4r8AlFbyNxUSI2JiJD6qf5yKHl7tjvN3jLsHFwu+kVGJPYC1zkaFq7DzZamglbX2fac39ZuLcHnfYk7dJhXUljyq74Uh8p/roLU+w2bMzraSaW5/1LEv+g+LDsx5RGyLRyBG9vKI6KSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NwjiP6JQ; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 444AB1F000E9;
	Fri, 19 Jun 2026 10:59:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781866797;
	bh=nQHF/tY2fdZWh46HKt4F63Tt6cyNSn4fpDVeTuTS7Rk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=NwjiP6JQ0Yxjrm1g+wg8Er21rntBvDTVWduuCtBPHL5bzqE2/uWZo7PeWsC6hlCtv
	 rZYXljJpsKUAJC+3f5bnoGSs81ygUt3Rv6h0hgZUVYyx4Ueut4sXgAFDGZRP/S9o3c
	 r14u1taTi/mDcxfXJ4xxjOZS795nhL9mE7gGx4kHsBq45/Q3ptBlAZb9jAwor3DKo8
	 K4wifb8OegsmRkLNK03vv0mkA0onsHojLVksZY3CbICVc9neZLF7vxEXEFzYQN70Ni
	 QDFQ/2Fbir77ueWr2dj9qjMqGOJ0BJ011U+xUGugHyi9+xQNCV4uGXfsVE5hiA4aTB
	 O4Whz8+BW2SXQ==
From: sashiko-bot@kernel.org
Subject: Re: [RFC PATCH 3/3] dt-bindings: sifive: Add WorldGuard Checker
Reply-To: sashiko-reviews@lists.linux.dev
To: "Yu-Chien Peter Lin" <peter.lin@sifive.com>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260619105834.1277302-4-peter.lin@sifive.com>
References: <20260619105834.1277302-1-peter.lin@sifive.com>
 <20260619105834.1277302-4-peter.lin@sifive.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 19 Jun 2026 10:59:56 +0000
Message-Id: <20260619105957.444AB1F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-313751-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:peter.lin@sifive.com,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[lists.linux.dev:replyto,sifive.com:email,vger.kernel.org:from_smtp,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,smtp.kernel.org:mid,sashiko.dev:url]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: EF9AF6A5585

Thank you for your contribution! Sashiko AI review found 4 potential issue(=
s) to consider:
- [High] The `#access-controller-cells` specifier inappropriately encodes 6=
4-bit absolute physical addresses and sizes, bypassing Devicetree's native =
address translation.
- [Low] The schema examples reference an undefined label `&aplic_m`, causin=
g a `dt_binding_check` compilation failure.
- [Low] The `sifive,trustedwid` property is not explicitly disallowed in `r=
iscv/cpus.yaml`, allowing it to bypass schema validation if erroneously pla=
ced in a `cpu@*` node.
- [Low] The examples in `sifive,wgchecker2.yaml` omit the required `interru=
pt-controller` child node in their `cpu@0` definitions, leading to a schema=
 validation error.
--

commit 26cbbd0f7310c04b5d6fe920375466bc89dd2479
Author: Yu-Chien Peter Lin <peter.lin@sifive.com>

dt-bindings: sifive: Add WorldGuard Checker

This commit adds a Device Tree binding for the SiFive wgChecker2, a
hardware firewall enforcing World ID (WID) based access control. It enables
spatial partitioning of memory and memory-mapped devices by providing check=
er
slots to program per-WID permissions.

Link: https://github.com/riscvarchive/security/blob/main/papers/worldguard%=
20proposal.pdf

> diff --git a/Documentation/devicetree/bindings/riscv/worlds.yaml b/Docume=
ntation/devicetree/bindings/riscv/worlds.yaml
> index cc8b3747591eb..c39a06c2dd8d3 100644
> --- a/Documentation/devicetree/bindings/riscv/worlds.yaml
> +++ b/Documentation/devicetree/bindings/riscv/worlds.yaml
> @@ -34,6 +34,14 @@ properties:
>      minimum: 2
>      maximum: 64
> =20
> +  sifive,trustedwid:
> +    $ref: /schemas/types.yaml#/definitions/uint32

[Severity: Low]
Because riscv/cpus.yaml includes worlds.yaml via $ref, does this
allow the property to be erroneously placed on individual cpu@* nodes
without failing validation?

To enforce correct usage, should sifive,trustedwid: false be explicitly
added to riscv/cpus.yaml, similar to riscv,nworlds: false?

[ ... ]
> diff --git a/Documentation/devicetree/bindings/sifive/sifive,wgchecker2.y=
aml b/Documentation/devicetree/bindings/sifive/sifive,wgchecker2.yaml
> new file mode 100644
> index 0000000000000..043c748385ed4
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/sifive/sifive,wgchecker2.yaml
[ ... ]
> +  '#access-controller-cells':
> +    const: 7
> +    description: |
> +      Specifier for one access-control rule, encoded as seven u32 cells:
> +        <addr-hi addr-lo size-hi size-lo perm-hi perm-lo config>

[Severity: High]
Does encoding absolute physical addresses and sizes directly into the
access-controllers array bypass Devicetree's native address translation?

If the protected device is behind a bus with a translation mapping, or if
a bootloader dynamically patches reg sizes, the hardcoded addresses in the
firewall configuration might be incorrect since they are opaque to DT
address translation APIs.

[ ... ]
> +    cpus {
> +        #address-cells =3D <1>;
> +        #size-cells =3D <0>;
> +        timebase-frequency =3D <1000000>;
> +        riscv,nworlds =3D <4>;
> +        sifive,trustedwid =3D <3>;
> +
> +        cpu@0 {
> +            device_type =3D "cpu";
> +            reg =3D <0>;
> +            compatible =3D "riscv";
> +            riscv,isa =3D "rv64imac";
> +        };

[Severity: Low]
Will this omission cause a dt_binding_check failure?

When validated against riscv/cpus.yaml, the schema strictly mandates an
interrupt-controller child node for cpu@0 nodes with compatible =3D "riscv".

[ ... ]
> +        wgchecker0: wgchecker@1c2000 {
> +            compatible =3D "sifive,wgchecker2";
> +            reg =3D <0x0 0x001c2000 0x0 0x1000>;
> +            #access-controller-cells =3D <7>;
> +            interrupts =3D <80 IRQ_TYPE_LEVEL_HIGH>;
> +            interrupt-parent =3D <&aplic_m>;

[Severity: Low]
Is the aplic_m label defined anywhere in these examples?

It appears missing, which might cause make dt_binding_check to fail with a
"Reference to non-existent node or label" error.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260619105834.1277=
302-1-peter.lin@sifive.com?part=3D3

