Return-Path: <devicetree+bounces-298692-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UIbVNaaDCGrntAMAu9opvQ
	(envelope-from <devicetree+bounces-298692-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 16 May 2026 16:48:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id D2A2455C298
	for <lists+devicetree@lfdr.de>; Sat, 16 May 2026 16:48:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id ABC073003BC6
	for <lists+devicetree@lfdr.de>; Sat, 16 May 2026 14:48:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2201C27587D;
	Sat, 16 May 2026 14:47:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h99cy6nF"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F266B78F3A;
	Sat, 16 May 2026 14:47:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778942879; cv=none; b=s3d6QhkI+jxNiKa3/5GZ/Nwd+v6It9hk6Wi/h/rfZnT7+t44DeoosweWK28PolTkGnkSRtsyspWpmb4Y+L2jTEeLlGcDe1xNytKnr2FlIXtdIQ1zVg8f2WFf8mcNChkXDDJP4f8MrhpEkM3DoSreOMJiVccnAYGqmXpm8fXaVOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778942879; c=relaxed/simple;
	bh=f2EgpoFQ20CBNzrecfnZmWwifbC7DMq48xGeJOLXPlY=;
	h=Date:From:To:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=eitfsBgH4D+JXpdCg2IjS4FxOlzC22v9E2LZgepmzzWZxln3/dDCw1eiSZu2JfVC6XFNmKbzRivS0poBXkUTnnhf8PfKVfw4zoVOraK+GIKHX1U1rpc6i3aKlWRe304fdBFFaRBNpbRnZflxHWM8T1/CL/fk97G2m+rH4otq8zs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h99cy6nF; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 3FF86C19425;
	Sat, 16 May 2026 14:47:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778942878;
	bh=f2EgpoFQ20CBNzrecfnZmWwifbC7DMq48xGeJOLXPlY=;
	h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
	b=h99cy6nFqh8qNLYCghTjPqlneJVdv6CI8TM71gxYF2IoNjLUCFo8uzCZs1lIWM4ha
	 QLUhL20TYosj51fvqspvEFeFt7kpkpKtkcCIhu6hGTmZ0fbxqA2DhKaDI2gXJ6AOku
	 hgWbSKYUWZ+Exz2dOs1p7dJ4adeT8fU5zRZWQ9znU8SjrnWNr4OZmK3VYfkJeQHkNR
	 9Z6U9xBYIc6McdwIzhx/nYHIXP7f3RyEHo9z4o+R9TVVaU69kqCpvGcPftU8duqqqH
	 7bDOndzVNy5vIU/4aFTzOoB5cVNUpFEtSujSmxWsI/fN2wvfYUzeUUklfp90t9oxH8
	 +DY4/hOvXTJsQ==
Date: Sat, 16 May 2026 15:47:50 +0100
From: Jonathan Cameron <jic23@kernel.org>
To: "Jose A. Perez de Azpillaga" <azpijr@gmail.com>
Cc: linux-iio@vger.kernel.org, David Lechner <dlechner@baylibre.com>, Nuno
 =?UTF-8?B?U8Oh?= <nuno.sa@analog.com>, devicetree@vger.kernel.org
Subject: Re: [RFC PATCH v2 1/2] dt-bindings: iio: light: add Broadcom
 APDS9999
Message-ID: <20260516154750.176a89b0@jic23-huawei>
In-Reply-To: <438370a42f57250cbead53ac73834fbf9ccb9269.1778659152.git.azpijr@gmail.com>
References: <cover.1778659152.git.azpijr@gmail.com>
	<438370a42f57250cbead53ac73834fbf9ccb9269.1778659152.git.azpijr@gmail.com>
X-Mailer: Claws Mail 4.4.0 (GTK 3.24.52; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Rspamd-Queue-Id: D2A2455C298
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.66 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	MID_RHS_NOT_FQDN(0.50)[];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_TO(0.00)[gmail.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-298692-lists,devicetree=lfdr.de];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jic23@kernel.org,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[broadcom.com:url,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,0.0.0.52:email,devicetree.org:url]
X-Rspamd-Action: no action

On Wed, 13 May 2026 10:10:03 +0200
"Jose A. Perez de Azpillaga" <azpijr@gmail.com> wrote:

> Add Device Tree binding for the Broadcom APDS9999 ambient light
> and proximity sensor.
> 
> The APDS9999 features individual R, G, B, and IR channels with
> a green channel that uses optical coating to approximate the
> human eye spectral response for ALS/lux measurements. Proximity
> and RGB functionality are not yet implemented in the driver.

State in this description a little bit of why you didn't merge it
with similar bindings.


Trivial stuff inline.
> 
> Signed-off-by: Jose A. Perez de Azpillaga <azpijr@gmail.com>
> ---
>  .../bindings/iio/light/brcm,apds9999.yaml     | 53 +++++++++++++++++++
>  MAINTAINERS                                   |  6 +++
>  2 files changed, 59 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/iio/light/brcm,apds9999.yaml
> 
> diff --git a/Documentation/devicetree/bindings/iio/light/brcm,apds9999.yaml b/Documentation/devicetree/bindings/iio/light/brcm,apds9999.yaml
> new file mode 100644
> index 000000000000..759fe0151549
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/iio/light/brcm,apds9999.yaml
> @@ -0,0 +1,53 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/iio/light/brcm,apds9999.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +title: Broadcom APDS-9999 Digital Proximity and RGB Sensor
> +
> +maintainers:
> +  - Jose A. Perez de Azpillaga <azpijr@gmail.com>
> +
> +description: |
> +  Broadcom APDS-9999 is a digital proximity and RGB sensor with
> +  ambient light sensing (ALS) capability. The device uses individual
> +  R, G, B, and IR channels plus a VCSEL for proximity detection.

What's a VCSEL?  Spell it out.

Otherwise 
> +
> +  Datasheet: https://docs.broadcom.com/docs/APDS-9999-DS
> +
> +properties:
> +  compatible:
> +    enum:
> +      - brcm,apds9999
> +
> +  reg:
> +    maxItems: 1
> +
> +  vdd-supply: true
> +
> +  vled-supply:
> +    description: VCSEL power supply
> +
> +  interrupts:
> +    maxItems: 1
> +
> +additionalProperties: false
> +
> +required:
> +  - compatible
> +  - reg
> +  - vdd-supply
> +
> +examples:
> +  - |
> +    i2c {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        light-sensor@52 {
> +            compatible = "brcm,apds9999";
> +            reg = <0x52>;
> +            vdd-supply = <&vdd_reg>;
> +            vled-supply = <&vled_reg>;
> +        };
> +    };
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 1aa9c989973f..64c8cf2601e8 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -4302,6 +4302,12 @@ S:	Maintained
>  F:	Documentation/devicetree/bindings/iio/light/avago,apds9300.yaml
>  F:	drivers/iio/light/apds9306.c
> 
> +BROADCOM APDS9999 AMBIENT LIGHT SENSOR DRIVER
> +M:	Jose A. Perez de Azpillaga <azpijr@gmail.com>
> +L:	linux-iio@vger.kernel.org
> +S:	Maintained
> +F:	Documentation/devicetree/bindings/iio/light/brcm,apds9999.yaml

Sashiko pointed out this should be in alphabetical order.
Bit annoying in this particular case but we'll just find someone
else moves it if we don't do it from the start.

> +
>  AVIA HX711 ANALOG DIGITAL CONVERTER IIO DRIVER
>  M:	Andreas Klinger <ak@it-klinger.de>
>  L:	linux-iio@vger.kernel.org
> 
> 
> 


