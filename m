Return-Path: <devicetree+bounces-108703-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F127999375B
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 21:30:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 03B281C22B3A
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 19:30:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82A421DE3B7;
	Mon,  7 Oct 2024 19:30:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ur8pVym4"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F28A1DE3B0
	for <devicetree@vger.kernel.org>; Mon,  7 Oct 2024 19:30:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728329445; cv=none; b=Y6JjxAePLhQ/PABdYV5UIGkhVZw6XWNd/dFmCsvyziTN9mScQCgk63yeexJKUlk4vGTr5f6HmIWOx6y1zZJBg++qsivr5YxKu1w0eqQNfJ8PwDiRBkg4nufowcOKAD1kDoJ7mH95iaByqE8GAX5FC9j3m8LaOHY0YiO7nUmBlq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728329445; c=relaxed/simple;
	bh=p1XU4p9h7t6sdx9STfRqAuq7FBgRZQU3T+UbO5clsds=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kTmThgglCdu5h7FOlNamcID01o8/s4nVBhAXY+I25RoK1YMFKTZ/HSmLsg2ZbPby6Fm3lAdk2MP6DS1/O+1fdBnq/q2chV9q8BtWldc4HN3WZrr0+1Mjk5/7PRCK75TclgXIRqOD6wHGElSem/d4/yOmRtsorN1REcZ4qlkxus8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ur8pVym4; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id CFBB8C4CEC6;
	Mon,  7 Oct 2024 19:30:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728329444;
	bh=p1XU4p9h7t6sdx9STfRqAuq7FBgRZQU3T+UbO5clsds=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=Ur8pVym4heLmVgJP8ccqmYnNUqhR4i3A17OXk+ztta679LUXE5bSv2DjK/cOeoeC4
	 SM7au33McU98vG+bJFgMQyvWKCyU3UerL+lX7+iA/osHu+utQ9n6j2LIpq1ZMdbpK+
	 17cWAMCREa9zTpL2h+wAFvE4q3EDDRUy5TDzWglw3685hCCAqTLTGn/rsNok+xzLH4
	 Y20TFpmHKHHwMSpOD/+frbcDiszmBdQ5BW3/81A5KfKdCBamM7bm07qwimsZNH/ZQU
	 KWmCZJ1yas7n9ydbe3YiaOnMj5V3+9DedYzu9gTVlgpe3qbyvcU5AIwKqlAJF8et2E
	 EqTZvdkxPYhMw==
Date: Mon, 7 Oct 2024 14:30:44 -0500
From: Rob Herring <robh@kernel.org>
To: Markus Stockhausen <markus.stockhausen@gmx.de>
Cc: linux-phy@lists.infradead.org, chris.packham@alliedtelesis.co.nz,
	devicetree@vger.kernel.org, krzk@kernel.org
Subject: Re: [PATCH v2 1/3] dt-bindings: phy: add realtek,otto-serdes PHY
 binding
Message-ID: <20241007193044.GA2255474-robh@kernel.org>
References: <20241007163623.3274510-1-markus.stockhausen@gmx.de>
 <20241007163623.3274510-2-markus.stockhausen@gmx.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241007163623.3274510-2-markus.stockhausen@gmx.de>

On Mon, Oct 07, 2024 at 12:36:21PM -0400, Markus Stockhausen wrote:
> Add bindings for the SerDes of the Realtek Otto platform. These are
> network Switch SoCs with up to 52 ports divided into four different
> model lines.
> 
> Changes in v2:
> - new subject
> - removed patch command sequences
> - renamed parameter controlled-ports to realtek,controlled-ports
> 
> Signed-off-by: Markus Stockhausen <markus.stockhausen@gmx.de>
> ---
>  .../bindings/phy/realtek,otto-serdes.yaml     | 95 +++++++++++++++++++
>  1 file changed, 95 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/realtek,otto-serdes.yaml
> 
> diff --git a/Documentation/devicetree/bindings/phy/realtek,otto-serdes.yaml b/Documentation/devicetree/bindings/phy/realtek,otto-serdes.yaml
> new file mode 100644
> index 000000000000..a72ac206b35f
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/phy/realtek,otto-serdes.yaml
> @@ -0,0 +1,95 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/phy/realtek,otto-serdes.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Realtek Otto SerDes controller
> +
> +maintainers:
> +  - Markus Stockhausen <markus.stockhausen@gmx.de>
> +
> +description:

You need '>' on the end if you want to preserve paragraphs.

> +  The MIPS based Realtek Switch SoCs of the Realtek RTL838x, RTL839x, RTL930x and RTL931x series
> +  have multiple SerDes built in. They are linked to single, quad or octa PHYs like the RTL8218B,
> +  RTL8218D or RTL8214FC and are one of the integral part of the up-to-52-port switch architecture.
> +
> +  Although these SerDes controllers have common basics they behave differently on the SoC families
> +  and rely on heavy register magic. To keep the driver clean it can load patch sequences from
> +  devictree and execute them during the controller actions like phy_init(), ...
> +
> +  The driver exposes the SerDes registers different from the hardware but instead gives a
> +  consistent view and programming interface. So the RTL838x series has 6 ports and 4 pages, the
> +  RTL839x has 14 ports and 12 pages, the RTL930x has 12 ports and 64 pages and the RTL931x has
> +  14 ports and 192 pages.
> +
> +properties:
> +  $nodename:
> +    pattern: "^serdes@[0-9a-f]+$"

The node name for phy providers is 'phy'.

> +
> +  compatible:
> +    items:
> +      - enum:
> +          - realtek,rtl8380-serdes
> +          - realtek,rtl8390-serdes
> +          - realtek,rtl9300-serdes
> +          - realtek,rtl9310-serdes
> +
> +  reg:
> +    items:
> +      description:
> +        The primary SerDes paged register memory location. Other SerDes control and management
> +        registers are distributed all over the I/O memory space and are identified by the driver.
> +
> +  "#phy-cells":
> +    const: 4
> +    description:
> +      The first number defines the SerDes to use. The second number a linked SerDes. E.g. if a octa
> +      1G PHY is attached to two QSGMII SerDes. The third number is the first switch port this
> +      SerDes is working for, the fourth number is the last switch port the SerDes is working for.
> +
> +  realtek,controlled-ports:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description:
> +      A bit mask defining the ports that are actively controlled by the driver. In case a bit is
> +      not set the driver will only process read operations on the SerDes. This is just in case the
> +      SerDes has been setup by U-Boot correctly and the driver malfunctions. If not set the driver
> +      will control all SerDes.
> +
> +reguired:
> +  - compatible
> +  - reg
> +  - "#phy-cells"
> +
> +additionalProperties:
> +  false

One line like *everywhere* else.

> +
> +examples:
> +  - |
> +    serdes: serdes@1b00e780 {

Drop unused labels.

> +      compatible = "realtek,rtl8380-serdes", "realtek,otto-serdes";
> +      reg = <0x1b00e780 0x1200>;
> +      controlled-ports = <0x003f>;
> +      #phy-cells = <4>;
> +    };
> +  - |
> +    serdes: serdes@1b00a000 {
> +      compatible = "realtek,rtl8390-serdes", "realtek,otto-serdes";
> +      reg = <0x1b00a000 0x1c00>;
> +      controlled-ports = <0x3fff>;
> +      #phy-cells = <4>;
> +    };
> +  - |
> +    serdes: serdes@1b0003b0 {
> +      compatible = "realtek,rtl9300-serdes", "realtek,otto-serdes";
> +      reg = <0x1b0003b0 0x8>;
> +      controlled-ports = <0x0fff>;
> +      #phy-cells = <4>;
> +    };
> +  - |
> +    serdes: serdes@1b005638 {
> +      compatible = "realtek,rtl9310-serdes", "realtek,otto-serdes";
> +      reg = <0x1b005638 0x8>;
> +      controlled-ports = <0x3fff>;
> +      #phy-cells = <4>;
> +    };

You don't need 4 examples that are essentially the same.

> --
> 2.46.2
> 

