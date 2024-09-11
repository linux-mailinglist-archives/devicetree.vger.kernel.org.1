Return-Path: <devicetree+bounces-102133-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B4CA89759A8
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 19:44:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5CEBA1F21E76
	for <lists+devicetree@lfdr.de>; Wed, 11 Sep 2024 17:44:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 686871ABEC8;
	Wed, 11 Sep 2024 17:44:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dhVH8Pzs"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 421AA383B1
	for <devicetree@vger.kernel.org>; Wed, 11 Sep 2024 17:44:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726076672; cv=none; b=XjzEkhHEJCIyMLtj5e/w4bhbtskWSVGaCptFlZJgUfsu+Z57eq+mw9lFkE3Q9GTVv//EHDNCwTUObokDhkP5SojRPFXRUAqSlsyZF5rA8KXWg8fm4YQTrQV9TpqbQ00/LJLk7Q5uk8o+m5CeRAVJrCF13NgYpRD8Lv90XleGEfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726076672; c=relaxed/simple;
	bh=PYHDj9PHXmGoAynvAB3hcWX/j6pVw4Y64LU8i3lQQwI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=V2kxqNgIw9R+bibgl858UIgWn1K7cs6NrIELtbEdNZx945g1hvcp4eDkC/tySoM7K/0liO0lLrf9fg9JGFDajbl/JE/lphsvVELgsX61JBRI+sCI+DrYUMqvLAXMhcnOjobVmpmN3vRohTM+S19WvHW0N+QW3D6b7GoeVM1SgH8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dhVH8Pzs; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CACDFC4CEC0;
	Wed, 11 Sep 2024 17:44:31 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726076672;
	bh=PYHDj9PHXmGoAynvAB3hcWX/j6pVw4Y64LU8i3lQQwI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dhVH8PzsSbt++iTjyC/YPIR5DAEuz5lhkcGJEWPypkLCMxL32yjC9gl0cXzI5RnHJ
	 Wxp3uJaFY2frJfL132ZLz+8bB77gy19/oVTRGsSs7bE7lUSw7hU/hoDasIT7x15ixr
	 EmwsCxmZR+LzNa1PdCTxMQ9q50H9COw/yFyMKl3X7vZB91rqLvmJOaf0qC64Oyk8CY
	 tl/xOiVjLxt52fEdh0p0nmioomGWDNvVpMeAFnAK4mXN7Aez17dKYQSpR02zW8fQWm
	 pfY1UhVyl6O+ORMGONRaEzs9PKsjm8yTV7Tf2qICNjOP9J5m5Lv5s7iMB+TAR6x0+g
	 JMvSresJ+QgzA==
Date: Wed, 11 Sep 2024 12:44:30 -0500
From: Rob Herring <robh@kernel.org>
To: Fabio Estevam <festevam@gmail.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
	otavio@ossystems.com.br
Subject: Re: [PATCH] dt-bindings: display: elgin,jg10309-01: Add own binding
Message-ID: <20240911174430.GA1015067-robh@kernel.org>
References: <20240910213056.963998-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20240910213056.963998-1-festevam@gmail.com>

On Tue, Sep 10, 2024 at 06:30:56PM -0300, Fabio Estevam wrote:
> Currently, the compatible 'elgin,jg10309-01' is documented inside
> trivial-devices.yaml, but it does not fit well there as it requires
> extra properties such as spi-max-frequency, spi-cpha, and spi-cpol.

Looks good, but it will have to go to Mark or wait til 6.12-rc1 for me 
to take it.

> 
> This causes the following dt-schema warnings:
> 
> make CHECK_DTBS=y rockchip/rv1108-elgin-r1.dtb -j12
> 
>   DTC [C] arch/arm/boot/dts/rockchip/rv1108-elgin-r1.dtb
> rv1108-elgin-r1.dtb:display@0: 'spi-cpha', 'spi-cpol' do not match any of the regexes:
> ...
> 
> Fix this problem by introducing a specific binding for the Elgin
> JG10309-01 SPI-controlled display.
> 
> Signed-off-by: Fabio Estevam <festevam@gmail.com>
> ---
>  .../bindings/display/elgin,jg10309-01.yaml    | 54 +++++++++++++++++++
>  .../devicetree/bindings/trivial-devices.yaml  |  2 -
>  2 files changed, 54 insertions(+), 2 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/display/elgin,jg10309-01.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/elgin,jg10309-01.yaml b/Documentation/devicetree/bindings/display/elgin,jg10309-01.yaml
> new file mode 100644
> index 000000000000..faca0cb3f154
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/elgin,jg10309-01.yaml
> @@ -0,0 +1,54 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/elgin,jg10309-01.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Elgin JG10309-01 SPI-controlled display
> +
> +maintainers:
> +  - Fabio Estevam <festevam@gmail.com>
> +
> +description: |
> +  The Elgin JG10309-01 SPI-controlled display is used on the RV1108-Elgin-r1
> +  board and is a custom display.
> +
> +allOf:
> +  - $ref: /schemas/spi/spi-peripheral-props.yaml#
> +
> +properties:
> +  compatible:
> +    const: elgin,jg10309-01
> +
> +  reg:
> +    maxItems: 1
> +
> +  spi-max-frequency:
> +    maximum: 24000000
> +
> +  spi-cpha: true
> +
> +  spi-cpol: true
> +
> +required:
> +  - compatible
> +  - reg
> +  - spi-cpha
> +  - spi-cpol
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    spi {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        display@0 {
> +            compatible = "elgin,jg10309-01";
> +            reg = <0>;
> +            spi-max-frequency = <24000000>;
> +            spi-cpha;
> +            spi-cpol;
> +        };
> +    };
> diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
> index 75a5fad08c44..2b675e97be3d 100644
> --- a/Documentation/devicetree/bindings/trivial-devices.yaml
> +++ b/Documentation/devicetree/bindings/trivial-devices.yaml
> @@ -106,8 +106,6 @@ properties:
>            - domintech,dmard09
>              # DMARD10: 3-axis Accelerometer
>            - domintech,dmard10
> -            # Elgin SPI-controlled LCD
> -          - elgin,jg10309-01
>              # MMA7660FC: 3-Axis Orientation/Motion Detection Sensor
>            - fsl,mma7660
>              # MMA8450Q: Xtrinsic Low-power, 3-axis Xtrinsic Accelerometer
> -- 
> 2.34.1
> 

