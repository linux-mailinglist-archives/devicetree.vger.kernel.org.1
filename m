Return-Path: <devicetree+bounces-323017-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id cNHdHJV2TmoINQIAu9opvQ
	(envelope-from <devicetree+bounces-323017-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 18:11:01 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id DD16A7287BA
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 18:11:00 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=WOu50ciS;
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323017-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-323017-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 7DB3C31A9889
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 15:45:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 85FF837F725;
	Wed,  8 Jul 2026 15:45:50 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00B4A37207D
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 15:45:48 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783525550; cv=none; b=ji1o4M7fThM+YXktD3uHbOX/GLbeEBFLJN8cCFpCtVjelIyeWxe25jOeth8GxwCFnSJraXdC+5VM8dm3/vd8JKGbdjTl9rnudG4frURrq6qHKoc9A4OMgnGwG1Chdxp5cOGMLG7onmNbS7eSgdtIU4uN3RIBw2DW7Dz1Vs51kqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783525550; c=relaxed/simple;
	bh=ZN4oMRc9/NxiHtgd/e7wsmihW16q/iZn6XyuormarHI=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=ZsMVOlxWh8sWRTr6eYRhw4BU460w+1izt7D7QHB7ZfwOvDEH032D5GiUlhwVzwRN9tkas1/c8BEW8J9Dlpzm3UK4QSNhuNc/5Up7fsXcv9e/sEbCC2Le9Gx2PyQVc6SM0sFjrWJG4mVZVcUr2VGXFXaO3frFzbX0c0BaupSAL7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WOu50ciS; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2E9931F000E9;
	Wed,  8 Jul 2026 15:45:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1783525548;
	bh=CTFogyBksPuwUUNPS2GNSdgDmPB0A6jZi2lHZn8uw6c=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=WOu50ciSd7VPZPpbgpI4AVdDQkEqng9optWOH5wBxm9NatKV7/ckLQUT9K3Y55cG4
	 4zGHbTYGrnAoV26laFwGmytj4zcz7rpgTNU4b9CuFrkCziD/K4Hk5NUi2YCN2x/jHG
	 p1ysH6zwbiiKb0S668kXXnZw9N6aLypxP+K3b8U7O8X2IvR3dcQV4PsGWgDa6YlK2O
	 9GKtWmyTmcspyKx5qXxEthHKF2HNqHxl1UFGxWmTe3AbYL3xLj0xodmGrU5bceaymH
	 U8axFouQ7LSc3YgDgVCKswwvDWRaFsD17d0c0t1f9PjEKcXelVi42fEBkG+j6SpQv0
	 UMGFaM692kV6Q==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v4 2/7] dt-bindings: serial: 8250: aspeed: add
 aspeed,vuart-over-pci bool prop
Reply-To: sashiko-reviews@lists.linux.dev
To: =?utf-8?b?R3LDqWdvaXJlIExheWV0?= <gregoire.layet@9elements.com>
Cc: devicetree@vger.kernel.org, robh@kernel.org, conor+dt@kernel.org
In-Reply-To: <501428d6a6cb1548bf357c25313dbc319724ead2.1783524645.git.gregoire.layet@9elements.com>
References: <cover.1783524645.git.gregoire.layet@9elements.com>
 <501428d6a6cb1548bf357c25313dbc319724ead2.1783524645.git.gregoire.layet@9elements.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Wed, 08 Jul 2026 15:45:46 +0000
Message-Id: <20260708154548.2E9931F000E9@smtp.kernel.org>
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
	TAGGED_FROM(0.00)[bounces-323017-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:gregoire.layet@9elements.com,m:devicetree@vger.kernel.org,m:robh@kernel.org,m:conor+dt@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	MIME_TRACE(0.00)[0:+];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,sashiko.dev:url,9elements.com:email,vger.kernel.org:from_smtp,smtp.kernel.org:mid,lists.linux.dev:replyto]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: DD16A7287BA

Thank you for your contribution! Sashiko AI review found 1 potential issue(=
s) to consider:
- [Medium] Missing schema constraint for `syscon` property allows it on all=
 generic 8250 devices.
--

--- Patch [2]: [PATCH v4 2/7] dt-bindings: serial: 8250: aspeed: add aspeed=
,vuart-over-pci bool prop ---
commit 4861ff4b770f95ffb3bbce902547b1d91b91628c
Author: Gr=C3=A9goire Layet <gregoire.layet@9elements.com>

dt-bindings: serial: 8250: aspeed: add aspeed,vuart-over-pci bool prop
   =20
This commit adds a boolean property to specify if a Virtual UART is used
over PCI on the ASPEED AST2600. It also adds a syscon phandle requirement
when this property is present.

> diff --git a/Documentation/devicetree/bindings/serial/8250.yaml b/Documen=
tation/devicetree/bindings/serial/8250.yaml
> index 8f22121381fc4..2ea8981bba80f 100644
> --- a/Documentation/devicetree/bindings/serial/8250.yaml
> +++ b/Documentation/devicetree/bindings/serial/8250.yaml
> @@ -27,6 +27,16 @@ allOf:
>              enum:
>                - aspeed,ast2500-vuart
>                - aspeed,ast2600-vuart
> +  - if:
> +      required:
> +        - aspeed,vuart-over-pci
> +    then:
> +      required:
> +        - syscon
> +      properties:
> +        compatible:
> +          contains:
> +            const: aspeed,ast2600-vuart

[ ... ]

> @@ -223,6 +233,12 @@ properties:
>            - const: uartclk
>            - const: reg
> =20
> +  syscon:
> +    $ref: /schemas/types.yaml#/definitions/phandle
> +    description:
> +      Phandle to the SCU syscon, used to enable the VUART over the BMC P=
CI
> +      device. Only applicable to aspeed,ast2600-vuart.

[Severity: Medium]
Will this schema allow the syscon property on all generic 8250 devices?

Because syscon is defined in the top-level properties block, and the newly
added if block above only evaluates when aspeed,vuart-over-pci is present
in the node, it seems there is no constraint restricting the use of syscon =
on
other unrelated 8250 nodes (e.g., ns16550a). Device trees could specify a
syscon property on non-AST2600 UARTs and silently pass schema validation,
despite the documentation stating it is only applicable to
aspeed,ast2600-vuart.

Should there be an additional conditional block restricting syscon to
aspeed,ast2600-vuart as well?

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/cover.1783524645.gi=
t.gregoire.layet@9elements.com?part=3D2

