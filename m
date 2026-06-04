Return-Path: <devicetree+bounces-306755-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id g9SuCHZSIWp1DQEAu9opvQ
	(envelope-from <devicetree+bounces-306755-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 12:24:54 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 61A2863EFC2
	for <lists+devicetree@lfdr.de>; Thu, 04 Jun 2026 12:24:53 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=fV3KodgD;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-306755-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c0a:e001:db::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-306755-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7861B3051C73
	for <lists+devicetree@lfdr.de>; Thu,  4 Jun 2026 10:19:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDCA8352C2B;
	Thu,  4 Jun 2026 10:19:28 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8DAF63563EB
	for <devicetree@vger.kernel.org>; Thu,  4 Jun 2026 10:19:27 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780568368; cv=none; b=kHqz8PkvltkmQwT1VdnH98kua57kSWNMK6GrFzbj5tWXh5L+Ec3DeeRADssw1W2XZmbeh7ZsHtUN+oYHyT6F3JRUYAyzu2AQkwuZ7Dgd3jlqscdQ4cngZVy1PmVJMb5Lia5ALc1itHQD3sKTC0Ea/+iRbrJDlpIG8P1fZUvVZKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780568368; c=relaxed/simple;
	bh=8FMFGy1XHIzvJkgV8vG3DsOU5jHQMMMMkXF+dxR9BVM=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=oaOLCfZZDc/HxEnR8rM9T4xWxpU7IFgJ+CSEqaGMK8hFRQv2Dd7NHhz3sDgO0uwiejWkVCQssZeLaWSeSyPVSa6uIP5TtvNfiVi1M5s1m5Gv7aOZwK4gWWY/zFu1SUddhGQkIyjNa7iwbz0gcqbwpMfwu7hIhOqAJTGowUOmEIA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fV3KodgD; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id B62B51F00893;
	Thu,  4 Jun 2026 10:19:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1780568367;
	bh=gZn445ylNQSu1u037HBoIaLihwmjD+2QAe+Bc01uSko=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=fV3KodgDtDXeoGdP6R+urDFfiSnwb6sI0ycabgzAUUocRM+IaCVZOyEfS/iv0MBeN
	 3jmXLqy0vTzybY0R5Q/QEQ0SeXPOt1GuzudIZZpFCepEwQ/Qx1/nafqc8nNcmTDaeV
	 TszLj/EdWTDzKcK8+Q/iS2KdhF1wvZ22psZahc9IZhaJgGE94/FJlhpb1LVSi9o/WV
	 eBDKjOeqAQr7uuaRzgqGVqYF6lih6SZ2y9kbbU9aaGT8KFegnJOUtDcVn8gpVf2Lia
	 A8r3bxUJjDUvYWlha8Z7qtsWFC44riIy1hfcBz6n7A9kWEA6/Y6rWoR+G+bteFMf9o
	 EnCWlM4h8r/Hg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: phy: nuvoton: Add MA35D1 USB2 OTG PHY
  binding
Reply-To: sashiko-reviews@lists.linux.dev
To: "Joey Lu" <a0987203069@gmail.com>
Cc: vkoul@kernel.org, conor+dt@kernel.org, olteanv@gmail.com, devicetree@vger.kernel.org, linux-phy@lists.infradead.org, robh@kernel.org, neil.armstrong@linaro.org
In-Reply-To: <20260604101220.1092822-2-a0987203069@gmail.com>
References: <20260604101220.1092822-2-a0987203069@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 04 Jun 2026 10:19:25 +0000
Message-Id: <20260604101926.B62B51F00893@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Action: no action
X-Spamd-Result: default: False [1.34 / 15.00];
	MISSING_MIME_VERSION(2.00)[];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20260515];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-306755-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS(0.00)[m:a0987203069@gmail.com,m:vkoul@kernel.org,m:conor+dt@kernel.org,m:olteanv@gmail.com,m:devicetree@vger.kernel.org,m:linux-phy@lists.infradead.org,m:robh@kernel.org,m:neil.armstrong@linaro.org,m:conor@kernel.org,s:lists@lfdr.de];
	FREEMAIL_CC(0.00)[kernel.org,gmail.com,vger.kernel.org,lists.infradead.org,linaro.org];
	FORWARDED(0.00)[lists@lfdr.de];
	MIME_TRACE(0.00)[0:+];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	RCPT_COUNT_SEVEN(0.00)[8];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	TO_DN_SOME(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	FROM_NO_DN(0.00)[];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 61A2863EFC2

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] The binding incorrectly represents a multi-port PHY controller a=
s multiple independent nodes instead of a single provider with `#phy-cells =
=3D <1>`.
--

commit edfd20765d416e895bc152da5eefd3bf59f431bd
Author: Joey Lu <a0987203069@gmail.com>

dt-bindings: phy: nuvoton: Add MA35D1 USB2 OTG PHY binding

Adds the device tree binding documentation for the Nuvoton MA35D1 USB 2.0
OTG PHY driver. The PHY supports two ports (OTG and host-only) and allows
board-specific resistor calibration and over-current detect polarity.

> diff --git a/Documentation/devicetree/bindings/phy/nuvoton,ma35d1-usb2-ph=
y-otg.yaml b/Documentation/devicetree/bindings/phy/nuvoton,ma35d1-usb2-phy-=
otg.yaml
> new file mode 100644
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/nuvoton,ma35d1-usb2-phy-otg.y=
aml

[ ... ]

> +  nuvoton,sys:
> +    $ref: /schemas/types.yaml#/definitions/phandle-array
> +    items:
> +      - items:
> +          - description: phandle to the system management syscon.
> +          - description: PHY instance index.
> +            enum:
> +              - 0   # USB0, OTG port (shared with DWC2 gadget controller)
> +              - 1   # USB1, host-only port
> +    description:
> +      A phandle to the syscon node covering the SYS register block, with
> +      one argument selecting the PHY instance. Index 0 selects the OTG
> +      port PHY (USB0) and index 1 selects the host-only PHY (USB1).
> +
> +  "#phy-cells":
> +    const: 0

[Severity: Medium]
Should this multi-port PHY controller be represented as a single provider
node with #phy-cells =3D <1> instead of embedding the index in nuvoton,sys?

Using independent nodes for each port with #phy-cells =3D <0> sidesteps the
standard consumer argument pattern and forces non-standard node names to
avoid collisions at the same tree level.

[ ... ]

> +  nuvoton,oc-active-high:
> +    type: boolean
> +    description:
> +      When present, the over-current detect input from the VBUS power
> +      switch is treated as active-high. The default (property absent) is
> +      active-low. This setting is shared by both USB host ports.

Since this property is explicitly described as shared by both ports, does
instantiating separate nodes per port risk conflicting states if the nodes
configure this property differently?

A single PHY provider node would allow shared properties to be defined once,
while consumers could specify their port index via standard phys arguments.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260604101220.1092=
822-1-a0987203069@gmail.com?part=3D1

