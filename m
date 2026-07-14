Return-Path: <devicetree+bounces-326389-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id OKSoOgx0Vmpw5wAAu9opvQ
	(envelope-from <devicetree+bounces-326389-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 19:38:20 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5924F757877
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 19:38:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=Wzsp8+4F;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326389-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-326389-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 05C2E301CCD7
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 17:33:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4196E304BA3;
	Tue, 14 Jul 2026 17:33:11 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CE403033FB;
	Tue, 14 Jul 2026 17:33:10 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784050391; cv=none; b=im5DkMt3FAjnDetNob6hrDxW19oeMACayXsF3246orfQ1c44v82nvERyPziZOJ08wV4Oh8vqJjyiKR0KC0mHeITbhKpRjIUOjtbDRynmQpRSeDLLYJt7usy1WDVIljrSpdG5k60qUNX1QcikiwFDAsQiF3PQhxu4Bhmcn4wON1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784050391; c=relaxed/simple;
	bh=jgVNe7aH6wXO/r+nW0thdTULUYToh6UZn5K/zcHdklg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=XUbIeFTG5G1qzGqPBWfXpLCT566QM3tmsl+s7zl/nyjinh5qA/Fi7oO2aXUqBTWwaLnkrvIcJN3yc2TyiezYlmoAogKQvniard899TLf2pdNM4p6Jz2WDNqxOw208i85SxyBxjfHXWBrXvDGUvfBEXT5ujERzsrV0qTeQxqaFNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wzsp8+4F; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 9E3D91F000E9;
	Tue, 14 Jul 2026 17:33:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1784050390;
	bh=TIKYSWtUDZGcqfq436sQvCr9Tpj4N35Pa5EHq0trnbU=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=Wzsp8+4F0XT94Ev6KWAyJLSjKoD2laxJxm7SUqbdSvxJJzZLu7pJxXJC6XAcwuVRu
	 rIxxhBZtDEB4rWpEIf6p0q6p6NDc6lPdPdSuaGzXJ/Bx/NY/hQ0hYVmngXoprsSWT7
	 cVjMBpkNQq0Up8RWw9kAQ37KYV/3nFhKcvtSRgh3wGNSMTZnWDZKUtzApynd7+gPHe
	 WM8Fq0CkL13Wark1hAza1/0YIT9F8Q/7QPy69T1jh0g9q260GGTL192b0RZTaIc7Aj
	 zrXVKzdZWynNPgQPE/J5punlK5PQadojZukTap8VSrW8JOoBkPIZaGUrY2NhQpQPgX
	 OksD0KQlg5Mpg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v23 06/13] dt-bindings: arm: Document reboot mode magic
Reply-To: sashiko-reviews@lists.linux.dev
To: "Shivendra Pratap" <shivendra.pratap@oss.qualcomm.com>
Cc: conor+dt@kernel.org, lee@kernel.org, devicetree@vger.kernel.org, mfd@lists.linux.dev, robh@kernel.org
In-Reply-To: <20260714-arm-psci-system_reset2-vendor-reboots-v23-6-e7453c548c21@oss.qualcomm.com>
References: <20260714-arm-psci-system_reset2-vendor-reboots-v23-0-e7453c548c21@oss.qualcomm.com>
 <20260714-arm-psci-system_reset2-vendor-reboots-v23-6-e7453c548c21@oss.qualcomm.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Tue, 14 Jul 2026 17:33:09 +0000
Message-Id: <20260714173309.9E3D91F000E9@smtp.kernel.org>
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
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TAGGED_FROM(0.00)[bounces-326389-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:email,smtp.kernel.org:mid,sashiko.dev:url,vger.kernel.org:from_smtp,lists.linux.dev:replyto,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:shivendra.pratap@oss.qualcomm.com,m:conor+dt@kernel.org,m:lee@kernel.org,m:devicetree@vger.kernel.org,m:mfd@lists.linux.dev,m:robh@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
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
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 5924F757877

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] The dt-schema constraints for the reboot mode cells are applied =
to the outer tuple array rather than the individual 32-bit cells within the=
 tuple, silently bypassing the 0x80000000 minimum value check.
- [Medium] Incorrect use of `additionalProperties: false` alongside `$ref` =
inside the `reboot-mode` node definition.
--

--- Patch [6]: [PATCH v23 06/13] dt-bindings: arm: Document reboot mode mag=
ic ---
commit a9e970af5fba06441f5c9bf2192c866e245aed96
Author: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>

dt-bindings: arm: Document reboot mode magic

Add bindings to describe vendor-specific reboot modes. Values here
correspond to valid parameters to vendor-specific reset types in PSCI
SYSTEM_RESET2 call.

> diff --git a/Documentation/devicetree/bindings/arm/psci.yaml b/Documentat=
ion/devicetree/bindings/arm/psci.yaml
> index 6e2e0c5518411..11b90e8affb32 100644
> --- a/Documentation/devicetree/bindings/arm/psci.yaml
> +++ b/Documentation/devicetree/bindings/arm/psci.yaml
> @@ -98,6 +98,37 @@ properties:
>        [1] Kernel documentation - ARM idle states bindings
>          Documentation/devicetree/bindings/cpu/idle-states.yaml
> =20
> +  reboot-mode:
> +    type: object
> +    $ref: /schemas/power/reset/reboot-mode.yaml#
> +    additionalProperties: false

[Severity: Medium]
Should this use unevaluatedProperties: false instead?

Using additionalProperties: false alongside a $ref does not consider
properties defined by the inherited schema (reboot-mode.yaml) or standard
properties injected by the dt-schema core (such as status or phandle).

This can cause dt_binding_check to incorrectly fail on valid device trees
that include standard properties.

> +    properties:
> +      # "mode-normal" is just SYSTEM_RESET
> +      mode-normal: false
> +    patternProperties:
> +      "^mode-.*$":
> +        minItems: 1
> +        maxItems: 3
> +        items:
> +          - description: arg1 (vendor-specific SYSTEM_RESET2 reset_type)
> +            minimum: 0x80000000

[Severity: Medium]
Does this correctly apply the minimum constraint to the 32-bit cell?

In dt-schema, uint32-array properties are parsed as a 2D array (an array
of tuples). Because items is placed directly under the property definition
here, it applies the minimum: 0x80000000 constraint to the first tuple
(which is an array) instead of the first cell (which is an integer).

Since JSON schema ignores numeric constraints on arrays, this silently
bypasses the check and allows invalid vendor-specific reset types.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260714-arm-psci-s=
ystem_reset2-vendor-reboots-v23-0-e7453c548c21@oss.qualcomm.com?part=3D6

