Return-Path: <devicetree+bounces-132146-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DDA109F6002
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 09:21:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3418A16767E
	for <lists+devicetree@lfdr.de>; Wed, 18 Dec 2024 08:21:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48BE515B984;
	Wed, 18 Dec 2024 08:21:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d9aoecZI"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D6B735945;
	Wed, 18 Dec 2024 08:21:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734510063; cv=none; b=pQbpNC2MandRpcEVaXcT7o64jD9xE2yqHsrnsdmmF1WVzOi6ICthn09/QdyuBT0X3AgDw8oQh/3zSk+tVFYc662mzgxX/0B9F+TLnHcMPBhFoirCmjPg36NMG7JqTtAQneio78hBC/OmxIKTr1djG9D7qynzuOIHoxygMcv05qM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734510063; c=relaxed/simple;
	bh=Y67UFTQrPnNpxipawqZdos+lVbeXi0ujBQ7g+3GP5+w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NNISCkte6yOMNvnc+8SN9t+whjJpTQq9zLD+NvPb9dtgsQCJ8D+qfA3Q2LdELIiBc6sPWdlIvm73XfQe9o6ux6FElRcaiYXuuvUdkvFSUt20H4hEbAmTMJbf/Qf08dftudfsouF/kyP5hH7a66VrE9I2BJ7mKzn05bBxz5mVAbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d9aoecZI; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id DE1FCC4CECE;
	Wed, 18 Dec 2024 08:21:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734510062;
	bh=Y67UFTQrPnNpxipawqZdos+lVbeXi0ujBQ7g+3GP5+w=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=d9aoecZIumn9o1pSSiNDiYbyXoPMwNUMrowK3ZPZwuTmSP5r8unM9mhwrVE0poApQ
	 5nRGqL7llNZonY24T5gPAdaEcxR2QiFBC+CeMCJZyp/9iKYWoMV5xTcWfxS+2ZyLOu
	 /HQQLb3bQvEHbFFSmHQ5+Wo4j3V5v2xbAbs2E9LKSfRiwH2wzaC3IXRIGgyEe0m2YP
	 2bee3/rkc+swKUahErNARRTJUnLDs5XlfOBd/9TEa1CJEVYnKQtAXMRz0Fw3gRoCr5
	 ygs8lQAqIbCHARcAI1hFmYLyOUCNIHYbdWmzP0kxdnFVdujiYwCYteWU2ZgWDEGIg1
	 JCI1nYMNr5nhQ==
Date: Wed, 18 Dec 2024 09:20:59 +0100
From: Krzysztof Kozlowski <krzk@kernel.org>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
Cc: chunkuang.hu@kernel.org, p.zabel@pengutronix.de, airlied@gmail.com, 
	simona@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org, 
	tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	matthias.bgg@gmail.com, ck.hu@mediatek.com, jitao.shi@mediatek.com, jie.qiu@mediatek.com, 
	junzhi.zhao@mediatek.com, dri-devel@lists.freedesktop.org, 
	linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, kernel@collabora.com, dmitry.baryshkov@linaro.org
Subject: Re: [PATCH v3 07/33] dt-bindings: display: mediatek: Add binding for
 MT8195 HDMI-TX v2
Message-ID: <rsnyljmkdf7i74bkrlf5nesp2sa3n6xcnzsqao4znmczjpfyq2@dsakz56s4ypt>
References: <20241217154345.276919-1-angelogioacchino.delregno@collabora.com>
 <20241217154345.276919-8-angelogioacchino.delregno@collabora.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20241217154345.276919-8-angelogioacchino.delregno@collabora.com>

On Tue, Dec 17, 2024 at 04:43:19PM +0100, AngeloGioacchino Del Regno wrote:
> +  i2c:
> +    type: object
> +    $ref: /schemas/display/mediatek/mediatek,mt8195-hdmi-ddc.yaml
> +    unevaluatedProperties: false
> +    description: HDMI DDC I2C controller
> +
> +  phys:
> +    maxItems: 1
> +    description: PHY providing clocking TMDS and pixel to controller
> +
> +  phy-names:
> +    items:
> +      - const: hdmi
> +
> +  pinctrl-0: true
> +
> +  pinctrl-names:
> +    items:
> +      - const: default

Drop both pinctrl entries.

> +
> +  power-domains:
> +    maxItems: 1
> +
> +  '#sound-dai-cells':
> +    const: 1
> +
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +
> +    properties:
> +      port@0:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description:
> +          Input port, usually connected to the output port of a DPI
> +
> +      port@1:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description:
> +          Output port that must be connected either to the input port of
> +          a HDMI connector node containing a ddc-i2c-bus, or to the input
> +          port of an attached bridge chip, such as a SlimPort transmitter.
> +
> +    required:
> +      - port@0
> +      - port@1
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names

Please keep the same order of things here and in main properties
section.

> +  - interrupts
> +  - power-domains
> +  - phys
> +  - phy-names
> +  - ports
> +

You need allOf: with ref to dai-common.yaml.

> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/mt8195-clk.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +    #include <dt-bindings/power/mt8195-power.h>
> +
> +    soc {
> +        #address-cells = <2>;
> +        #size-cells = <2>;
> +
> +        hdmi-tx@1c300000 {

hdmi@

Best regards,
Krzysztof


