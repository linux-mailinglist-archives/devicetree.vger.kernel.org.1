Return-Path: <devicetree+bounces-294713-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iJqwE3pd/mkWpgAAu9opvQ
	(envelope-from <devicetree+bounces-294713-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 09 May 2026 00:02:34 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 4AD204FC208
	for <lists+devicetree@lfdr.de>; Sat, 09 May 2026 00:02:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 2DD0F300B51C
	for <lists+devicetree@lfdr.de>; Fri,  8 May 2026 22:02:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 420242DB79F;
	Fri,  8 May 2026 22:02:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dFwPGST/"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F69F194C96
	for <devicetree@vger.kernel.org>; Fri,  8 May 2026 22:02:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778277749; cv=none; b=utWA7+9V61rKAKtblYXc+00JSFcX7ok1rp4i6sivlh+W/EtwP1qt3rmzJnM7bLZADjEmFy7V4DT0EzLb0H7NGgNDOmjFBCOosRHNwK9b5jepFi75t0HdskAmjVwr7Uf2VM/TCcxh+/WMg4pQ68XTG2HYWmiOR9LYwKvl8cWbqt4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778277749; c=relaxed/simple;
	bh=DhZZOyYlThJb5de56XmNBEjV49XOwCLF2+f+FH9JytE=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=MM5QXeGJ4KMAj26hulhBqjwScfv2dt9y1uO3fgrwhcpiL0aYno/QTYbH5AJgETcmkJY8y0jXZ+KSLqKRYvGeiG6zYAqd4b6Le60rA4VBBQyi67c9knbTgH7oGIjCz1X4K7Uhg/driJ6lDaENjKMKi5aqlLc6qkFz8RQCQ70+ejk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dFwPGST/; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id BD668C2BCB0;
	Fri,  8 May 2026 22:02:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778277749;
	bh=DhZZOyYlThJb5de56XmNBEjV49XOwCLF2+f+FH9JytE=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date:From;
	b=dFwPGST//i4b7amJLHCXkYHQey7WCy5FS6lgHAfqB2oagLym7AxiZNOri0gDHx15r
	 09jujRHA/xGaXoovdSKcUa/R/moYR+sKoqKqTkfIvH7aoK7NpkSf+hesSYXa8hH4c5
	 QXBYLEEyHBzeSZ/QOKzFiFa8HD9VsLIIFpVgTbOQYigHK4ZWgFT2DYyH7VknOzwAHI
	 4vxVRaN7sg7hwFWDL5XV4rN0jgQV1P7/IiHpieUiNRTBy+WPHNCCwhX83Lnyoe7U+W
	 NduLYThE0xiCptCBAwJhLBA97eyYxFr6Y6652vqBUFMoVrpmBr1NMLTi0FRPdPvM7a
	 HhWAPjiCjAgKQ==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH RFC v4 01/10] dt-bindings: iio: frequency: add ad9910
Reply-To: sashiko@lists.linux.dev
To: "Rodrigo Alencar via B4 Relay" <devnull+rodrigo.alencar.analog.com@kernel.org>
Cc: conor+dt@kernel.org, krzk+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260508-ad9910-iio-driver-v4-1-d26bfd20ee3d@analog.com>
References: <20260508-ad9910-iio-driver-v4-1-d26bfd20ee3d@analog.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Fri, 08 May 2026 22:02:28 +0000
Message-Id: <20260508220228.BD668C2BCB0@smtp.kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
X-Rspamd-Queue-Id: 4AD204FC208
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [5.34 / 15.00];
	SEM_URIBL(3.50)[0.0.0.0:email];
	MISSING_MIME_VERSION(2.00)[];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	BAD_REP_POLICIES(0.10)[];
	HAS_LIST_UNSUB(-0.01)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	TAGGED_FROM(0.00)[bounces-294713-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	R_DKIM_ALLOW(0.00)[kernel.org:s=k20201202];
	MIME_TRACE(0.00)[0:+];
	GREYLIST(0.00)[pass,meta];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,rodrigo.alencar.analog.com,dt];
	NEURAL_HAM(-0.00)[-0.901];
	PRECEDENCE_BULK(0.00)[];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	R_SPF_ALLOW(0.00)[+ip6:2600:3c15:e001:75::/64:c];
	ARC_ALLOW(0.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MISSING_XM_UA(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	HAS_REPLYTO(0.00)[sashiko@lists.linux.dev]
X-Rspamd-Action: no action

Thank you for your contribution! Sashiko AI review found 2 potential issue(=
s) to consider:
- [Medium] The binding defines `#clock-cells` indicating clock provider cap=
abilities but fails to include it in the `required` list and the `examples`=
 block.
- [Medium] The `lock-detect-gpios` dependency is written with an unquoted c=
omma (`[ adi,pll-enable ]`), causing it to evaluate to two non-existent pro=
perties.
--

commit 02fb206b49b457eba593a7f4a35e17f11545fbf5
Author: Rodrigo Alencar <rodrigo.alencar@analog.com>

dt-bindings: iio: frequency: add ad9910

DT-bindings for AD9910, a 1 GSPS DDS with 14-bit DAC. It includes
configurations for clocks, DAC current, reset and basic GPIO control.

> diff --git a/Documentation/devicetree/bindings/iio/frequency/adi,ad9910.y=
aml b/Documentation/devicetree/bindings/iio/frequency/adi,ad9910.yaml
> new file mode 100644
> index 0000000000000..3b76871630c90
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/frequency/adi,ad9910.yaml

[ ... ]

> +dependencies:
> +  adi,charge-pump-current-microamp: [ 'adi,pll-enable' ]
> +  adi,refclk-out-drive-strength: [ 'adi,pll-enable' ]
> +  lock-detect-gpios: [ adi,pll-enable ]

Does this dependency evaluate to two non-existent properties instead of
"adi,pll-enable"? In YAML flow collections, an unquoted comma acts as an
element separator, so this gets parsed as a list containing "adi" and
"pll-enable".=20

Since neither property exists, this could cause device trees using
lock-detect-gpios to fail schema validation.

Could we enclose the property name in quotes (e.g., [ 'adi,pll-enable' ])
like the other dependencies?

> +  interrupts: [ interrupt-names ]
> +  clocks: [ clock-names ]
> +  '#clock-cells': [ clock-output-names ]
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - dvdd-io33-supply
> +  - avdd33-supply
> +  - dvdd18-supply
> +  - avdd18-supply

Since the binding defines #clock-cells, indicating clock provider
capabilities, shouldn't it be included in this required list?

According to the dt-bindings guidelines, when hardware has provider
capabilities, the corresponding standard properties must be explicitly
required to ensure schema validation catches incomplete device tree nodes
before runtime.

[ ... ]

> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +    spi {
> +        #address-cells =3D <1>;
> +        #size-cells =3D <0>;
> +        dds@0 {
> +            compatible =3D "adi,ad9910";
> +            reg =3D <0>;
> +            spi-max-frequency =3D <1000000>;
> +            clocks =3D <&ad9910_refclk>;
> +            clock-names =3D "ref_clk";

[ ... ]

> +            adi,pll-enable;
> +            adi,charge-pump-current-microamp =3D <387>;
> +            adi,refclk-out-drive-strength =3D "disabled";

Should #clock-cells also be added to this example block?

The dt-bindings guidelines state that all required properties must be
included in the examples section to pass schema validation.

> +        };
> +    };
> +...

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260508-ad9910-iio=
-driver-v4-0-d26bfd20ee3d@analog.com?part=3D1

