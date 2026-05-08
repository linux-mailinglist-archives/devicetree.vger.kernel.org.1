Return-Path: <devicetree+bounces-294537-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eAt4O0fj/WmOkQAAu9opvQ
	(envelope-from <devicetree+bounces-294537-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Fri, 08 May 2026 15:21:11 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AD964F6F55
	for <lists+devicetree@lfdr.de>; Fri, 08 May 2026 15:21:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id A1B7A306745C
	for <lists+devicetree@lfdr.de>; Fri,  8 May 2026 13:18:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F9C93E4C6E;
	Fri,  8 May 2026 13:18:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ARqzHxkf"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 692B43E3C7E;
	Fri,  8 May 2026 13:18:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778246312; cv=none; b=WTzqhSrZ5rRbc0QmN/z0mZBrouLNVpTjYWJIeCPJ/0YoJBHdBZq3KVC12COwhbEDa9joeD/0O1/zZUF8OLXi9ndVpHLZ9s9vajbjDyQvuQVSA7gzOLl+534xQvdu6Ilmk6nHmT6iH1+1EkMT4krZdFOG0v7OR06gVatzJ++EO6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778246312; c=relaxed/simple;
	bh=4A2WQnaiS1Hr1zNPnbmkjNHkmfFlXFpTe5CbGC48RwE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Rvz8JG6VOvFhqKgKoXkLfNUVm7FJn+Jyjyg31YTWMJ2O7SWX5ZO/i7KKdRZLiPo8DVy872bIgROU7Sb1Cf1J3qX+urnQWcZ9Auo4Olkz5K8gaC0fxLnGbR806h01gaEyWjaCfWe2NKHSahkabSaP1yl1TcpO4YTc0DTUe+2xp1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ARqzHxkf; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1CFE7C4AF0B;
	Fri,  8 May 2026 13:18:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778246312;
	bh=4A2WQnaiS1Hr1zNPnbmkjNHkmfFlXFpTe5CbGC48RwE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ARqzHxkfmnyPnB8nbCb9GWJocI9w1muYDgkKNEA50heEZYRRORI/koNfbkff1fP3B
	 zgz6Rs22h7Z23uZoE9a/i6rFY9BUB9nrcrLNISwSqOWsv3KUhXOxQFLWNe+KUdgRT1
	 UaFQRR2bImFV9GEakwNCiJ64mip3Ke3NEVk3t+lmiSqbjO0Rk9p4PT2ElwVA+cdtpw
	 BJJR77nputlDVo0e0KDBlfJUk8Vijkm2DiVlXqBfWZU96B6I/Lli0CskiardCr0wtx
	 6Oe0v+Cnz9q2PdFlPS/SxLadQo3HfJhmkst8u3Hkoo19ItdjUpHd0IaGbeC/wdcIMr
	 SU6mhCM78Q2NQ==
Date: Fri, 8 May 2026 08:18:30 -0500
From: Rob Herring <robh@kernel.org>
To: Markus Stockhausen <markus.stockhausen@gmx.de>
Cc: andi.shyti@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
	linux-i2c@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: i2c: Add i2c-shared-gpio
Message-ID: <20260508131830.GA1135235-robh@kernel.org>
References: <20260507181711.2696783-1-markus.stockhausen@gmx.de>
 <20260507181711.2696783-2-markus.stockhausen@gmx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260507181711.2696783-2-markus.stockhausen@gmx.de>
X-Rspamd-Queue-Id: 6AD964F6F55
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [4.34 / 15.00];
	SEM_URIBL(3.50)[0.0.0.0:email];
	MID_CONTAINS_FROM(1.00)[];
	MAILLIST(-0.15)[generic];
	BAD_REP_POLICIES(0.10)[];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-294537-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	R_DKIM_ALLOW(0.00)[kernel.org:s=k20201202];
	FREEMAIL_TO(0.00)[gmx.de];
	GREYLIST(0.00)[pass,meta];
	RCVD_COUNT_THREE(0.00)[4];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DMARC_POLICY_ALLOW(0.00)[kernel.org,quarantine];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.931];
	TAGGED_RCPT(0.00)[devicetree,dt];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robh@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	R_SPF_ALLOW(0.00)[+ip4:172.105.105.114:c];
	ARC_ALLOW(0.00)[subspace.kernel.org:s=arc-20240116:i=1];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	MISSING_XM_UA(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCPT_COUNT_FIVE(0.00)[6]
X-Rspamd-Action: no action

On Thu, May 07, 2026 at 08:17:10PM +0200, Markus Stockhausen wrote:
> Document the driver for bitbanged gpio I2C busses
> with shared SCL lines.
> 
> Signed-off-by: Markus Stockhausen <markus.stockhausen@gmx.de>
> ---
>  .../bindings/i2c/i2c-gpio-shared.yaml         | 115 ++++++++++++++++++
>  1 file changed, 115 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/i2c/i2c-gpio-shared.yaml
> 
> diff --git a/Documentation/devicetree/bindings/i2c/i2c-gpio-shared.yaml b/Documentation/devicetree/bindings/i2c/i2c-gpio-shared.yaml
> new file mode 100644
> index 000000000000..7db344821e2f
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/i2c/i2c-gpio-shared.yaml
> @@ -0,0 +1,115 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/i2c/i2c-gpio-shared.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Multiple GPIO bitbanged I2C buses with shared SCL
> +
> +maintainers:
> +  - Markus Stockhausen <markus.stockhausen@gmx.de>
> +
> +description:
> +  Bitbanging I2C bus driver that supports multiple independent I2C buses
> +  sharing a single SCL line. Each child node represents one I2C bus with
> +  its own SDA line. The shared SCL line is driven by the parent node.
> +  A mutex serializes access so that only one bus transfers at a time.

Unless it's a h/w mutex, that doesn't belong in the binding. Just define 
the requirement, not how it might be implemented.

This is basically a mux, so you should leverage i2c-mux.yaml. Maybe 
there is driver infrastructure you can leverage too.

> +
> +select:
> +  properties:
> +    compatible:
> +      contains:
> +        const: i2c-gpio-shared
> +  required:
> +    - compatible

You don't need 'select'.

> +
> +properties:
> +  compatible:
> +    const: i2c-gpio-shared
> +
> +  scl-gpios:
> +    maxItems: 1
> +    description:
> +      GPIO used for the shared SCL signal. Must be configured as
> +      open-drain. All child buses share this single clock line.
> +
> +  i2c-gpio-shared,scl-output-only:
> +    type: boolean
> +    description:
> +      If present, SCL is treated as output only and clock stretching
> +      by devices is not supported.
> +
> +  i2c-gpio-shared,timeout-ms:
> +    description:
> +      Bus timeout in milliseconds. If not specified, defaults to 100 ms.

These 2 properties don't appear to be specific in any way to this 
particular h/w.

> +
> +  "#address-cells":
> +    const: 1
> +
> +  "#size-cells":
> +    const: 0
> +
> +patternProperties:
> +  "^i2c@[0-9a-f]+$":
> +    $ref: /schemas/i2c/i2c-controller.yaml#
> +    unevaluatedProperties: false
> +
> +    properties:
> +      reg:
> +        maxItems: 1
> +        description:
> +          Bus index used to identify this child bus. Must be unique among
> +          siblings and match the node unit address.
> +
> +      sda-gpios:
> +        maxItems: 1
> +        description:
> +          GPIO used for the SDA signal of this I2C bus. Must be
> +          configured as open-drain.

I would move this to the parent and make it multiple entries. 

> +
> +      i2c-gpio-shared,delay-us:
> +        default: 5
> +        description:
> +          Delay in microseconds between signal transitions for this bus.
> +          Controls the I2C clock frequency. Defaults to 5 us (~100 kHz).

We already have 'clock-frequency' to define the bus freq.

> +
> +      i2c-gpio-shared,sda-output-only:
> +        type: boolean
> +        description:
> +          If present, SDA is treated as output only. No acknowledgment
> +          or read data from devices can be received on this bus.
> +
> +    required:
> +      - reg
> +      - sda-gpios
> +
> +required:
> +  - compatible
> +  - scl-gpios
> +  - "#address-cells"
> +  - "#size-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +
> +    i2c-gpio-shared {
> +        compatible = "i2c-gpio-shared";
> +        scl-gpios = <&gpio1 31 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        i2c@0 {
> +            reg = <0>;
> +            sda-gpios = <&gpio1 6 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> +            i2c-gpio-shared,delay-us = <2>;
> +        };
> +
> +        i2c@1 {
> +            reg = <1>;
> +            sda-gpios = <&gpio1 7 (GPIO_ACTIVE_HIGH | GPIO_OPEN_DRAIN)>;
> +            i2c-gpio-shared,delay-us = <2>;
> +        };
> +    };
> -- 
> 2.54.0
> 

