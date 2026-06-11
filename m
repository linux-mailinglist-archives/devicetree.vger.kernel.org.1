Return-Path: <devicetree+bounces-310218-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id h6oWJ4BsKmqLpAMAu9opvQ
	(envelope-from <devicetree+bounces-310218-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 10:06:24 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 1198B66FB08
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 10:06:24 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=EionIH0o;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-310218-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-310218-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 1A8703019FD1
	for <lists+devicetree@lfdr.de>; Thu, 11 Jun 2026 08:06:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 44ED936F413;
	Thu, 11 Jun 2026 08:06:21 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341583644BC
	for <devicetree@vger.kernel.org>; Thu, 11 Jun 2026 08:06:19 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781165181; cv=none; b=FUGTPFwWFKNeAfLcmPvQN89Wt+nyhrJ5BIyJib/3ud6gH5PbwzLdQ3tNylAUghxYUmcwy7rIGGkQxbPLyEnE/rwosMqavqFdfvytGFCBiH7nRdQBh/GdEe5YFqnzCrGCK5RYvWxgT+eba7juykzgUWGcCtI2ae36KWRtQJ+9KxQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781165181; c=relaxed/simple;
	bh=n7dVDacF2LeCrwV8kLs6Dj8fk6OCTFsxMYRPbrPCxaw=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=NccaCs4YpOtoKaG4k/969FmaO+g2eVTbaqEqUlYcXuGpeh0zwf4179jY5jSvLLgmY6ALxC72PRjvlUJkHyTuykUHo0gGTnCLIKP6g1SzBkfzVvahkiM4IcKSzsGQYi7OR4b3xWGCzfpHhCo4aPPZFd1W+ayz9TwaeR/4xrtlPG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EionIH0o; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 884921F00893;
	Thu, 11 Jun 2026 08:06:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781165179;
	bh=ZfvX8nGXJCHbvZK7HHvWH99oIYlhxM69/j0f8E9KTyw=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=EionIH0oOpyfc8U7f31x5nclZijLiclWYVUDZ0uitAFrJulxLZvwybq30Io4Vs+YG
	 GObcvPm+ntsLKyzJgAoGVQNYyWL2zy/qQ+el/iMI2oL5LKqU/lzasw2rLGakNCWClu
	 GN7M8jGX42D1oPUZ/L+NyHE4W7jzVC2XRSngS7bbSDZKR755kIknRG1Nz+lwHBqPnC
	 3PmdP3zjf3P4+f5dqkVoT/KUKCTD6a2nOOPThXYksqvFmbhYcXQDhjENECeOiKFpH7
	 GIDLlEO+sFhmJCu2JZmt/VDp7cey188lUXJwD5Z4wp5Yoaw+zDu/7xM6v5/NIm9H3d
	 suvNMS66PmMyQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH RFC 1/2] dt-bindings: pinctl: amlogic,pinctrl-a4: Add
 gpio irq property
Reply-To: sashiko-reviews@lists.linux.dev
To: "Xianwei Zhao via B4 Relay" <devnull+xianwei.zhao.amlogic.com@kernel.org>
Cc: robh@kernel.org, conor+dt@kernel.org, linux-amlogic@lists.infradead.org, neil.armstrong@linaro.org, devicetree@vger.kernel.org
In-Reply-To: <20260611-gpio-to-irq-v1-1-12201716f23f@amlogic.com>
References: <20260611-gpio-to-irq-v1-1-12201716f23f@amlogic.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 11 Jun 2026 08:06:19 +0000
Message-Id: <20260611080619.884921F00893@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-310218-lists,devicetree=lfdr.de];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:devnull+xianwei.zhao.amlogic.com@kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:linux-amlogic@lists.infradead.org,m:neil.armstrong@linaro.org,m:devicetree@vger.kernel.org,m:devnull@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,xianwei.zhao.amlogic.com,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	RCPT_COUNT_FIVE(0.00)[6];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1198B66FB08

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [Medium] The newly added `hw-irq` property is not marked as required for =
the GPIO banks, and the example is not updated.
- [Medium] The custom device tree property `hw-irq` lacks a vendor prefix.
- [Low] The newly added `hw-irq` property lacks a description field.
--

commit 779e29b8c4c1e37224d568880fcfcc77220c1d72
Author: Xianwei Zhao <xianwei.zhao@amlogic.com>

dt-bindings: pinctl: amlogic,pinctrl-a4: Add gpio irq property

Add the hw-irq property for each GPIO bank and enable interrupt-parent
for pinctrl so that gpiod_to_irq() can translate GPIO lines to IRQs.

> diff --git a/Documentation/devicetree/bindings/pinctrl/amlogic,pinctrl-a4=
.yaml b/Documentation/devicetree/bindings/pinctrl/amlogic,pinctrl-a4.yaml
> --- a/Documentation/devicetree/bindings/pinctrl/amlogic,pinctrl-a4.yaml
> +++ b/Documentation/devicetree/bindings/pinctrl/amlogic,pinctrl-a4.yaml

[ ... ]

> @@ -65,6 +67,9 @@ patternProperties:
>        gpio-ranges:
>          maxItems: 1
> =20
> +      hw-irq:
> +        $ref: /schemas/types.yaml#/definitions/uint32

[Severity: Medium]
Should this custom property have a vendor prefix to prevent namespace
collisions, such as amlogic,hw-irq?=20

[Severity: Low]
Would it be helpful to include a description field here to document the
purpose and semantic usage of this new property?

> +
>      required:
>        - reg
>        - reg-names

[Severity: Medium]
The commit message indicates this property is added for each GPIO bank.
Should hw-irq be included in this required list under the=20
patternProperties:^gpio@[0-9a-f]+$ node to ensure incomplete configurations
fail schema validation?

Additionally, the example at the bottom of the file doesn't seem to include
this new property:

examples:
  ...
    gpio@4240 {
        reg =3D <0 0x4240 0 0x40>, <0 0x4000 0 0x8>;
        reg-names =3D "gpio", "mux";
        gpio-controller;
        #gpio-cells =3D <2>;
        gpio-ranges =3D <&periphs_pinctrl 0 8 10>;
    };

Does the example section need to be updated to demonstrate the usage of the
newly added property?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260611-gpio-to-ir=
q-v1-0-12201716f23f@amlogic.com?part=3D1

