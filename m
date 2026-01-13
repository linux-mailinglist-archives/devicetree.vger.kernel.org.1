Return-Path: <devicetree+bounces-254605-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AFB0D19C94
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 16:14:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D03ED3099025
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 15:10:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B2E52DC349;
	Tue, 13 Jan 2026 15:09:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b="mnYCxXXB"
X-Original-To: devicetree@vger.kernel.org
Received: from esa.microchip.iphmx.com (esa.microchip.iphmx.com [68.232.153.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E2F638BF8F;
	Tue, 13 Jan 2026 15:09:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=68.232.153.233
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768316997; cv=none; b=YoNSZ1kCDqr8VD9gR1Ov1pT1xFU8451h4Lt1owL7i+F4HQNusikMk+LWFiBWNQw4/fTiQUu8m2TXe4hXRZVd/CB4syzz1p3m8T+u/t9JPiXYrRDZgh5owFoHfsMBe90EKMSE6xe0CjMdRt5X1HWs1CA09GuRaGY704ORoXPRxz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768316997; c=relaxed/simple;
	bh=mWm4hq1Hv1HuICzUcA8TjHeSQFen69IUNRT4WJ1WzC8=;
	h=Message-ID:Date:MIME-Version:Subject:To:CC:References:From:
	 In-Reply-To:Content-Type; b=I7kXQ7WhqQloztYZtMRqSMIBmaaX1brXWSiKKUrFBMMsIhwXYtBx2p5hYNOqpzkPffFm3A1ZKLoAihhYSjlo9rTqH1UDYH3gJ2/yFEMJUYrxbLZS3HQulnfIS7RX890kgY8zxwWh6RjYBtKQxa5lZq4ETI82OegS3y5fcn8SDP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com; spf=pass smtp.mailfrom=microchip.com; dkim=pass (2048-bit key) header.d=microchip.com header.i=@microchip.com header.b=mnYCxXXB; arc=none smtp.client-ip=68.232.153.233
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=microchip.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=microchip.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
  d=microchip.com; i=@microchip.com; q=dns/txt; s=mchp;
  t=1768316985; x=1799852985;
  h=message-id:date:mime-version:subject:to:cc:references:
   from:in-reply-to:content-transfer-encoding;
  bh=mWm4hq1Hv1HuICzUcA8TjHeSQFen69IUNRT4WJ1WzC8=;
  b=mnYCxXXBU8VtmEf1IVXX95XzBIWLtQjxRttXoywxdRDTYYFMuqOkcIQq
   WWlxn2UCoFz2AtHOgFCjg9yxKc+tVhmE3AVJe9Cpa+9qjNK7w7FszRQtE
   ba+K0+/+bz2l1vi3crGlA46GHBiISkXowzNKCHKmRCmW5VuheYNBKLtVF
   cverE60neJNXdk5yLiWt5dQinrd29t0TAYksyt5CqRIReruAykjcyaQ+W
   qE8uktyck7Wuu+rRnGLBiL6yO/eHc+sJGFZG6DBfOnP6HeHJmZwxGBSbP
   pQB/L87SbrHi7KspG7x3huPRAub8NIbo39G61THqgSHsZtNQ3g742dOmZ
   A==;
X-CSE-ConnectionGUID: DS+w9U6iTbeS6nVAsK830g==
X-CSE-MsgGUID: HHY0cOT1ROeGmB+exCIc6w==
X-IronPort-AV: E=Sophos;i="6.21,222,1763449200"; 
   d="scan'208";a="58772684"
X-Amp-Result: SKIPPED(no attachment in message)
Received: from unknown (HELO email.microchip.com) ([170.129.1.10])
  by esa1.microchip.iphmx.com with ESMTP/TLS/ECDHE-RSA-AES128-GCM-SHA256; 13 Jan 2026 08:09:44 -0700
Received: from chn-vm-ex03.mchp-main.com (10.10.85.151) by
 chn-vm-ex03.mchp-main.com (10.10.85.151) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id
 15.1.2507.58; Tue, 13 Jan 2026 08:09:04 -0700
Received: from [10.159.205.69] (10.10.85.11) by chn-vm-ex03.mchp-main.com
 (10.10.85.151) with Microsoft SMTP Server id 15.1.2507.58 via Frontend
 Transport; Tue, 13 Jan 2026 08:08:59 -0700
Message-ID: <ac304080-5d9a-4324-bfe9-e2a9da1c7d3f@microchip.com>
Date: Tue, 13 Jan 2026 16:08:59 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/5] dt-bindings: gpu: add bindings for the Microchip
 GFX2D GPU
To: Cyrille Pitchen <cyrille.pitchen@microchip.com>, David Airlie
	<airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, Maarten Lankhorst
	<maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>, Claudiu Beznea
	<claudiu.beznea@tuxon.dev>, Russell King <linux@armlinux.org.uk>
CC: <dri-devel@lists.freedesktop.org>, <devicetree@vger.kernel.org>,
	<linux-kernel@vger.kernel.org>, <linux-arm-kernel@lists.infradead.org>,
	"Conor Dooley" <conor.dooley@microchip.com>
References: <20260113-cpitchen-mainline_gfx2d-v5-0-9cdab8fa699b@microchip.com>
 <20260113-cpitchen-mainline_gfx2d-v5-1-9cdab8fa699b@microchip.com>
From: Nicolas Ferre <nicolas.ferre@microchip.com>
Content-Language: en-US, fr
Organization: microchip
In-Reply-To: <20260113-cpitchen-mainline_gfx2d-v5-1-9cdab8fa699b@microchip.com>
Content-Type: text/plain; charset="UTF-8"; format=flowed
Content-Transfer-Encoding: 7bit

On 13/01/2026 at 14:10, Cyrille Pitchen wrote:
> The Microchip GFX2D GPU is embedded in the SAM9X60 and SAM9X7 SoC family.
> Describe how the GFX2D GPU is integrated in these SoCs, including
> register space, interrupt and clock.
> 
> Signed-off-by: Cyrille Pitchen <cyrille.pitchen@microchip.com>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> ---
>   .../bindings/gpu/microchip,sam9x60-gfx2d.yaml      | 46 ++++++++++++++++++++++
>   1 file changed, 46 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/gpu/microchip,sam9x60-gfx2d.yaml b/Documentation/devicetree/bindings/gpu/microchip,sam9x60-gfx2d.yaml
> new file mode 100644
> index 0000000000000000000000000000000000000000..0f223ddda694e7edbc9f25c68d17ef01897a55a1
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/gpu/microchip,sam9x60-gfx2d.yaml
> @@ -0,0 +1,46 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/gpu/microchip,sam9x60-gfx2d.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Microchip GFX2D GPU
> +
> +maintainers:
> +  - Cyrille Pitchen <cyrille.pitchen@microchip.com>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - microchip,sam9x60-gfx2d
> +      - microchip,sam9x7-gfx2d
> +
> +  reg:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - clocks
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    #include <dt-bindings/clock/at91.h>
> +    gpu@f0018000 {
> +      compatible = "microchip,sam9x60-gfx2d";
> +      reg = <0xf0018000 0x4000>;

Nit: maybe lower the register map size.
But not blocking:
Reviewed-by: Nicolas Ferre <nicolas.ferre@microchip.com>

> +      interrupts = <36 IRQ_TYPE_LEVEL_HIGH 0>;
> +      clocks = <&pmc PMC_TYPE_PERIPHERAL 36>;
> +    };
> +
> +...
> 


