Return-Path: <devicetree+bounces-304691-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id yBaBDtT/Gmqn+QgAu9opvQ
	(envelope-from <devicetree+bounces-304691-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 30 May 2026 17:18:44 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 8DD4760DB1B
	for <lists+devicetree@lfdr.de>; Sat, 30 May 2026 17:18:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 5BD2F301702C
	for <lists+devicetree@lfdr.de>; Sat, 30 May 2026 15:17:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF64F298991;
	Sat, 30 May 2026 15:17:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WNAVAsTA"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA763221F0C
	for <devicetree@vger.kernel.org>; Sat, 30 May 2026 15:17:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=100.103.45.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780154239; cv=none; b=aQcERZ0mSYrXoGOt29eCh1CrAhTuXx1Tr3ObaOyOznTxpIlllyxTzxXnJyqnZR1eQtFawcJ5Lwux07K4Gd8IR1IFRFtuBPeZrGhjWYgsevw9v51uCr098SYNwzYOnjKdI7WcI96Z88gFFnNXXFWD4lYfvXC0tyX8YROl7OwGGqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780154239; c=relaxed/simple;
	bh=3NU5YPt/Nzz+wrV8yFSzAri8dpyqDdpgSaB+QN5/38Y=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=SgL2JFT2KxNtb8ca0Q2nFdVhNHHuvK6XgNi+MYgthZDhQVO9MmnMVl3LKhQV+jPeA5wvz0xDT4xFZtJYyxFX3leQX6geAELY+ffgbWtA3RPD3rNO2VM7dxP3HY8Vnc0322Vkl/3nmzdVdzBvs0isqX6htXZtVO8fnqnPFoaXluc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WNAVAsTA; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 345A61F00893;
	Sat, 30 May 2026 15:17:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780154238;
	bh=FWTm85eQnQ0jUrIoKqSwvpl6DMC1eUd94c7FihclXrk=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=WNAVAsTAGaNidm/a/15dWdc1vxSyL/QB/wPOjVJ/kaYnmdKl6ElFRHz4qDkKnP0DH
	 R/FQGPqvC1+PRVPv6hF99zbTYXC5ZfCJK/ZRT8aC+aT075jDzcCnEY5r+50Q7WVaHM
	 UIh6PpGm0+qGtbVXhYfsHIMc8mTbdVteJDByaBBdv+IgRlZAi97KiX4m1TndkR0Z/3
	 LbS1oDGe3T1tyw4fDnpZ61h0VjN0fGw3DkpAThw7/cEzw4AvMKDYG9bwCoH8h2YkHh
	 xJOqRrpY9UL/FPjc/rR0fQ6obtMP164LUf+hIsAxdwE9IPUBqDxEKu8lPwtpWH0DM8
	 JH6lPyDvrIW/Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v8 3/6] dt-bindings: pinctrl: mediatek,mt6779-pinctrl:
 Add MT6795
Reply-To: sashiko-reviews@lists.linux.dev
To: "Yassine Oudjana" <yassine.oudjana@gmail.com>
Cc: robh@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260530145800.1029920-4-y.oudjana@protonmail.com>
References: <20260530145800.1029920-4-y.oudjana@protonmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Sat, 30 May 2026 15:17:17 +0000
Message-Id: <20260530151718.345A61F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Spamd-Result: default: False [-0.16 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-304691-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	MIME_TRACE(0.00)[0:+];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Queue-Id: 8DD4760DB1B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The global `maxItems: 1` constraint on the `interrupts` property=
 prevents the `mediatek,mt6795-pinctrl` compatible from specifying its two =
supported hardware interrupts.
--

commit 21e9f5d9b0c26d0a8f4207afe5723d54c0b4b7e6
Author: Yassine Oudjana <y.oudjana@protonmail.com>

dt-bindings: pinctrl: mediatek,mt6779-pinctrl: Add MT6795

This commit combines the MT6795 pin controller document into the MT6779
binding. It uses conditionals to define valid values for properties like
interrupts and drive-strength for each hardware variant.

> diff --git a/Documentation/devicetree/bindings/pinctrl/mediatek,mt6779-pi=
nctrl.yaml b/Documentation/devicetree/bindings/pinctrl/mediatek,mt6779-pinc=
trl.yaml
> index 4dc9504e24ad5..2124804c88631 100644
> --- a/Documentation/devicetree/bindings/pinctrl/mediatek,mt6779-pinctrl.y=
aml
> +++ b/Documentation/devicetree/bindings/pinctrl/mediatek,mt6779-pinctrl.y=
aml

[ ... ]

> @@ -81,6 +83,45 @@ allOf:
>              - const: iocfg_lt
>              - const: iocfg_tl
>              - const: eint

[ ... ]

> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: mediatek,mt6795-pinctrl
> +    then:
> +      properties:
> +        reg:
> +          minItems: 2
> +          maxItems: 2
> +
> +        reg-names:
> +          items:
> +            - const: base
> +            - const: eint
> +
> +        interrupts:
> +          minItems: 1
> +          items:
> +            - description: EINT interrupt
> +            - description: EINT event_b interrupt

[Severity: Medium]
Will this conditional block fail schema validation due to the global interr=
upts
definition?

The top-level interrupts property in this file enforces a global maxItems: 1
limit for all compatibles:

properties:
  interrupts:
    maxItems: 1
    description: ...

Because JSON schema constraints are additive, allowing two items here for
mediatek,mt6795-pinctrl won't override the global maxItems: 1 limit. This
causes device trees like mt6795.dtsi (which specifies two interrupts
for pio: pinctrl@10005000) to fail validation. Should the global maximum
limit be relaxed to maxItems: 2 so this variant can use both interrupts?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260530145800.1029=
920-1-y.oudjana@protonmail.com?part=3D3

