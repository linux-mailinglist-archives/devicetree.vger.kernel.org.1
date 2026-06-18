Return-Path: <devicetree+bounces-313514-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id FS5FGXf1M2oyJwYAu9opvQ
	(envelope-from <devicetree+bounces-313514-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 15:41:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id CB09E6A0A6D
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 15:41:10 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=kernel.org header.s=k20260515 header.b=GAlnwxtT;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-313514-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.105.105.114 as permitted sender) smtp.mailfrom="devicetree+bounces-313514-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=quarantine) header.from=kernel.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 8992E300180F
	for <lists+devicetree@lfdr.de>; Thu, 18 Jun 2026 13:35:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E78AF23AB87;
	Thu, 18 Jun 2026 13:35:16 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-alma10-1.taild15c8.ts.net [100.103.45.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CEB6329C33F
	for <devicetree@vger.kernel.org>; Thu, 18 Jun 2026 13:35:15 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781789716; cv=none; b=hq7aQj2/2IijGapVsCLNoBM1ORxpy1sLWTbVJ8nXoAD+ofdTYIqVBSNFn1tS9960oH90udGUFEIoTz6SI+ypwftjrcxUzf2XcCUt/Jny/UuHoTYChqyR+1kx2L5Xlm3cdV5nV8yAf3AXaZc/jnEGMVxdFAMOk2IVBmudeWh+0Mw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781789716; c=relaxed/simple;
	bh=fia+iCKMMfe/vyadxPd/YbStuGrlayLj1lA+ynMVFJg=;
	h=From:Subject:To:Cc:In-Reply-To:References:Content-Type:Date:
	 Message-Id; b=LK1jDJ3NtZbSIjcXD6u5+VTDml/5i7n6M+Copp4VMJrGpenKtuY0NogRft+6boAHIl1RpwIgENtYOvzTUIGpDZWfQuU2Gy+yOGP2rHGw5OS4TWmuhi0RFBiYFdRI5XnlEXIkjyoRfQ0T0qHLWzdN+Yoq+T+iwwvbXOTNwf71hQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GAlnwxtT; arc=none smtp.client-ip=100.103.45.18
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DFA301F000E9;
	Thu, 18 Jun 2026 13:35:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kernel.org;
	s=k20260515; t=1781789715;
	bh=d+Z60DBXVVMexigg5hsoGVTtX5XylJgOsEIOCXTJhWM=;
	h=From:Subject:Reply-To:To:Cc:In-Reply-To:References:Date;
	b=GAlnwxtTlkKLTyouLNvYaxI8WGAtv9jU9Dwt0EozifQuV2XzGR/z8I2JZ5d0xrKp7
	 YgrjlQ0d2Y2AXdB2K7nurzA5aWLvmaVvbbuPfgG1t+oq959GxN5ogFjfmAJMo+wOZi
	 f4H5s9CYbvztiYIU+/VE9+lXmuPtZaPw7L/BEjFYPrBqOrYGdrbuXXi5F6p5un5KmY
	 Xs28E2PZ+afVagkhlAy+Pr2tqYBeKDuqnD0jg9Nqo8GRrB9KAsi5rYIfoMFPKWjkno
	 JgOqRBkUqhnfvxDDmYH7pvR4w2Z/WUa8vUbklvaWcsfjwoWTxSYj/xN3TeGT9SIRpv
	 tAIUozikVSkvg==
From: sashiko-bot@kernel.org
Subject: Re: [PATCH v6 08/16] dt-bindings: iio: frequency: add ad9910
Reply-To: sashiko-reviews@lists.linux.dev
To: "Rodrigo Alencar via B4 Relay" <devnull+rodrigo.alencar.analog.com@kernel.org>
Cc: conor+dt@kernel.org, robh@kernel.org, devicetree@vger.kernel.org
In-Reply-To: <20260618-ad9910-iio-driver-v6-8-79125ffbe430@analog.com>
References: <20260618-ad9910-iio-driver-v6-0-79125ffbe430@analog.com>
 <20260618-ad9910-iio-driver-v6-8-79125ffbe430@analog.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
Date: Thu, 18 Jun 2026 13:35:14 +0000
Message-Id: <20260618133514.DFA301F000E9@smtp.kernel.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	REPLYTO_DN_EQ_FROM_DN(0.00)[];
	TAGGED_FROM(0.00)[bounces-313514-lists,devicetree=lfdr.de];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS(0.00)[m:devnull+rodrigo.alencar.analog.com@kernel.org,m:conor+dt@kernel.org,m:robh@kernel.org,m:devicetree@vger.kernel.org,m:devnull@kernel.org,m:conor@kernel.org,s:lists@lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_SENDER(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	FROM_NEQ_ENVFROM(0.00)[sashiko-bot@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	MID_RHS_MATCH_FROMTLD(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,rodrigo.alencar.analog.com,dt];
	ALIAS_RESOLVED(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	FROM_NO_DN(0.00)[];
	HAS_REPLYTO(0.00)[sashiko-reviews@lists.linux.dev];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_THREE(0.00)[4];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	MISSING_XM_UA(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:rdns,tor.lore.kernel.org:helo,lists.linux.dev:replyto,sashiko.dev:url,smtp.kernel.org:mid,analog.com:email,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: CB09E6A0A6D

Thank you for your contribution! Sashiko AI review found 3 potential issue(=
s) to consider:
- [High] The `#clock-cells` property is missing from the `required` list an=
d the `examples` section, violating Device Tree subsystem guidelines.
- [Medium] The commit message claims to include 'DAC current' configuration=
s, but no such property exists in the schema.
- [Low] The `reset-gpios` property is missing the `maxItems: 1` constraint.
--

commit 14de29fc570f7c4ee9b2e39250151ecb7c9edb56
Author: Rodrigo Alencar <rodrigo.alencar@analog.com>

dt-bindings: iio: frequency: add ad9910

DT-bindings for AD9910, a 1 GSPS DDS with 14-bit DAC. It includes
configurations for clocks, DAC current, reset and basic GPIO control.

> DT-bindings for AD9910, a 1 GSPS DDS with 14-bit DAC. It includes
> configurations for clocks, DAC current, reset and basic GPIO control.

[Severity: Medium]
The commit message states the binding includes configurations for
"DAC current". Does the schema actually define this property?

Looking at the schema, there is adi,charge-pump-current-microamp for the
PLL charge pump, but no property appears to configure the DAC current.

Could the commit message be updated to match the schema, or is the DAC curr=
ent
property missing from the YAML?

> diff --git a/Documentation/devicetree/bindings/iio/frequency/adi,ad9910.y=
aml b/Documentation/devicetree/bindings/iio/frequency/adi,ad9910.yaml
> new file mode 100644
> index 0000000000000..a78fe33ba21f9
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/frequency/adi,ad9910.yaml

[ ... ]

> +  avdd18-supply:
> +    description: 1.8V Analog Core supply.
> +
> +  reset-gpios:
> +    description:
> +      GPIOs controlling the Main Device reset.

[Severity: Low]
Should reset-gpios have a maxItems: 1 constraint?

Unlike io-reset-gpios and powerdown-gpios below, this property lacks a
maxItems constraint. In dt-schema, properties ending in -gpios allow an
array of GPIOs unless explicitly constrained.

This omission allows invalid device tree configurations with multiple reset
GPIOs to pass schema validation.

> +  io-reset-gpios:
> +    maxItems: 1
> +    description:
> +      GPIO controlling the I/O_RESET pin.

[ ... ]

> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - dvdd-io33-supply
> +  - avdd33-supply
> +  - dvdd18-supply
> +  - avdd18-supply

[Severity: High]
Should #clock-cells be included in this required list?

According to the Device Tree Bindings subsystem guidelines, when hardware
defines provider capabilities (acting as a clock provider as indicated by
the #clock-cells: const: 1 property defined earlier in this schema), the
corresponding standard properties must be explicitly included in the
required list.

> +allOf:
> +  - $ref: /schemas/spi/spi-peripheral-props.yaml#
> +
> +unevaluatedProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +    spi {
> +        #address-cells =3D <1>;
> +        #size-cells =3D <0>;
> +        dds@0 {
> +            compatible =3D "adi,ad9910";
> +            reg =3D <0>;

[Severity: High]
Does this example need the #clock-cells property?

The example device tree node is missing the #clock-cells property.

Subsystem guidelines dictate that the examples section must demonstrate
all required properties to pass dt_binding_check validation.

--=20
Sashiko AI review =C2=B7 https://sashiko.dev/#/patchset/20260618-ad9910-iio=
-driver-v6-0-79125ffbe430@analog.com?part=3D8

