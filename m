Return-Path: <devicetree+bounces-133503-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A00E9FAD1C
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 11:26:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B680018849E3
	for <lists+devicetree@lfdr.de>; Mon, 23 Dec 2024 10:26:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F106D17BB35;
	Mon, 23 Dec 2024 10:26:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="mwWjl6ti"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D7364193429
	for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 10:26:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734949593; cv=none; b=McBAEJ7SLluWq9hZBhkFyxLRHzxpL1B5OkrRVdxljSjId6sYuSql0ZqZfb3VL8jk+KjBGlf8k+mIXkF/6nIAEx+MR6wOxTvBGpXz/JHJsaJxAqYg+Ou211ustO3Axu/zF4bUm/aR5aBYMuFKaP6qbHzl1UOf1FG+BfWbugvS7oY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734949593; c=relaxed/simple;
	bh=yy9vwofEHwzeRUUbWkxcR9Ir6bzF7Swdhos4k+sO4ik=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=rEtBWzHl9unELc8ZaSlCD/HiMEHjDeAwnRSA+bvNE1Tj4j/S2yR/tqGaEdbSgnVLuuJrx2MnYW+DqG3NEk5fwUrK/2jZ/iEkl68Z0DuhlTJ+2NJTujXCkObVau+NZ/M6xn2QGAQr5teQrdIlYdnuVwrkp8i0vSy1mE16GQ1f4fc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=mwWjl6ti; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-5401bd6ccadso4475331e87.2
        for <devicetree@vger.kernel.org>; Mon, 23 Dec 2024 02:26:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734949590; x=1735554390; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=LpcAPRrti2Mspwvvh0HkUfdkgM+x6sKmtKugtmBINFQ=;
        b=mwWjl6ti3yd0awWpN3Gvlsp3f+z9UJKtO6rWXTUCU7nnb+yOqKwh0kwJ4n60RvLb5r
         nLRCOmJszQmHdIcoXsfixkF21jbncMj8eAotY/BPzBRIGT4L1op0Q5+euUijHHrdXpWg
         Ul7Zsi076hY3xzZUqUPWwV5gdsnoTWGkU9/4rvJiHf2RP+Kqy0RefrOhTMq6OzdE4Az0
         9Z5uT09TOyL38639FhsUq9JlREYFewAZFXD3xf2uGoqiiIpRl7J7FGGL6Y4DqTpVQBZv
         6ZEkSoeAaxNwgtfMEKYynm4b30TTNiynydaWeqmN3BPvDpfLf61rxXgGeBX0w3Ivhywt
         L0+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734949590; x=1735554390;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LpcAPRrti2Mspwvvh0HkUfdkgM+x6sKmtKugtmBINFQ=;
        b=C7olBwnej/Xjgoa0V3qQzfLFUT8IX3TP15OXlMVI0Nr4q1SavB0/PZvVRwwGa/kuWC
         vcAfVKzpJWs6UXGFPIRSaEwDMPtRJr7RfxgJ8Sl/xmFfvgIh0mxsmAe37CHr2yFRQg32
         tPYnqAlup/PRO/dGSGG8Aigib6ZjTHsboswZaJhVvfFtzp52It2b15fj4f4cxfhZcssa
         BiTDF6wmPOmTwvLcgmHetm+GVOI8L/zvJVzj3hK9Jie6N0eYrJbkUiIBLVdHqfhUmWqo
         CoOVfcKcIWM1W0ZCZIhV7iKY+NO+jWvQMvRat8ADRU/MphklmTwDsJ43fx65zqApI0Vv
         dszA==
X-Forwarded-Encrypted: i=1; AJvYcCWBNZsRAwzAZPI41ln8YeYpS+EqjTcnALfWynOy+v+++GUJl1tYMBuP5IDN3wIIEXvlwSva6u8dSDrm@vger.kernel.org
X-Gm-Message-State: AOJu0YylVQGjYwD+IWF+ZqGNdF1aAQRrq6wGhMxl/oxpTebpnp2RLQyX
	FGpV47nZ83bpIxmUDoU6mVU13bfcRt8M254VHOU1wyHVwCViFs94jxusmaXNLb/h6pyZLPkN2Ug
	r
X-Gm-Gg: ASbGnct31oB7i7B8VHNBuQrhkGcFCVhdPUm9DHHhAdKW4t8T6F0FVawvYg7RuvDTtGr
	pwt090XsaCQcaEAxDCgc5bpq+B1pI+kJE89p+m6LevdNwG18FrEnpBD4g6qOWzZ2GNioHiPUm0B
	KQ9rKHKgiHs+b0bPajFUOBYmeGkrXfAAqE/N0knDV40zFmrW7KAW/faEH5RUoH1NFfVgg88mPuV
	5CQCcG8855bKVWhXBofBEkhpnokBLxLvOcwyf95mFhH4jgHPSL5c6z5XQtzbM7qKoQsqgEqkKfL
	IclLdxpjLBZwRRx8mMA8Sxzjjux50mvfnzgQ
X-Google-Smtp-Source: AGHT+IFbBpruzFpAgIIU0n0/jwU07GmTaDXBwkrAj3El2zSPjw4bqzUyTtJuARVLHLA0cBnGaJX8lw==
X-Received: by 2002:a05:6512:1044:b0:542:218a:71a with SMTP id 2adb3069b0e04-5422953ac6bmr3140370e87.26.1734949589912;
        Mon, 23 Dec 2024 02:26:29 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-542235f5efbsm1241435e87.39.2024.12.23.02.26.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Dec 2024 02:26:29 -0800 (PST)
Date: Mon, 23 Dec 2024 12:26:27 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Liu Ying <victor.liu@nxp.com>
Cc: dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	imx@lists.linux.dev, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, p.zabel@pengutronix.de, 
	airlied@gmail.com, simona@ffwll.ch, maarten.lankhorst@linux.intel.com, 
	mripard@kernel.org, tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org, 
	conor+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de, 
	kernel@pengutronix.de, festevam@gmail.com, tglx@linutronix.de, vkoul@kernel.org, 
	kishon@kernel.org, aisheng.dong@nxp.com, agx@sigxcpu.org, 
	u.kleine-koenig@baylibre.com, francesco@dolcini.it, frank.li@nxp.com
Subject: Re: [PATCH v7 03/19] dt-bindings: display: imx: Add i.MX8qxp Display
 Controller display engine
Message-ID: <kpem2w4wu7ywc5pvbk3ls5hsyttrwcylomzfh567ejlxkymeqd@cujrbfxgrntc>
References: <20241223064147.3961652-1-victor.liu@nxp.com>
 <20241223064147.3961652-4-victor.liu@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241223064147.3961652-4-victor.liu@nxp.com>

On Mon, Dec 23, 2024 at 02:41:31PM +0800, Liu Ying wrote:
> i.MX8qxp Display Controller display engine consists of all processing units
> that operate in a display clock domain.
> 
> Signed-off-by: Liu Ying <victor.liu@nxp.com>
> ---
> v7:
> * Drop DT alias documentations and add instance numbers to compatible strings.
>   (Rob)
> 
> v6:
> * No change.
> 
> v5:
> * Document aliases.  Drop Rob's previous R-b tag. (Maxime)
> 
> v4:
> * Collect Rob's R-b tag.
> 
> v3:
> * No change.
> 
> v2:
> * Drop fsl,dc-*-id DT properties. (Krzysztof)
> * Drop port property. (Krzysztof)
> * Fix register range sizes in example.
> 
>  .../imx/fsl,imx8qxp-dc-display-engine0.yaml   | 235 ++++++++++++++++++
>  1 file changed, 235 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,imx8qxp-dc-display-engine0.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/imx/fsl,imx8qxp-dc-display-engine0.yaml b/Documentation/devicetree/bindings/display/imx/fsl,imx8qxp-dc-display-engine0.yaml
> new file mode 100644
> index 000000000000..60d1e0a4a5dd
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/imx/fsl,imx8qxp-dc-display-engine0.yaml
> @@ -0,0 +1,235 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/imx/fsl,imx8qxp-dc-display-engine0.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Freescale i.MX8qxp Display Controller Display Engine
> +
> +description:
> +  All Processing Units that operate in a display clock domain. Pixel pipeline
> +  is driven by a video timing and cannot be stalled. Implements all display
> +  specific processing.
> +
> +maintainers:
> +  - Liu Ying <victor.liu@nxp.com>
> +
> +properties:
> +  compatible:
> +    enum:
> +      - fsl,imx8qxp-dc-display-engine0
> +      - fsl,imx8qxp-dc-display-engine1

Is there actual difference between engines 0 and 1? If there is none,
why are you artificially adding one here?

> +
> +  reg:
> +    maxItems: 2
> +
> +  reg-names:
> +    items:
> +      - const: top
> +      - const: cfg
> +
> +  resets:
> +    maxItems: 1
> +
> +  interrupts:
> +    maxItems: 3
> +
> +  interrupt-names:
> +    items:
> +      - const: shdload
> +      - const: framecomplete
> +      - const: seqcomplete
> +
> +  power-domains:
> +    maxItems: 1
> +
> +  "#address-cells":
> +    const: 1
> +
> +  "#size-cells":
> +    const: 1
> +
> +  ranges: true
> +
> +patternProperties:
> +  "^dither@[0-9a-f]+$":
> +    type: object
> +    additionalProperties: true
> +
> +    properties:
> +      compatible:
> +        enum:
> +          - fsl,imx8qxp-dc-dither0
> +          - fsl,imx8qxp-dc-dither1
> +
> +  "^framegen@[0-9a-f]+$":
> +    type: object
> +    additionalProperties: true
> +
> +    properties:
> +      compatible:
> +        enum:
> +          - fsl,imx8qxp-dc-framegen0
> +          - fsl,imx8qxp-dc-framegen1
> +
> +  "^gammacor@[0-9a-f]+$":
> +    type: object
> +    additionalProperties: true
> +
> +    properties:
> +      compatible:
> +        enum:
> +          - fsl,imx8qxp-dc-gammacor0
> +          - fsl,imx8qxp-dc-gammacor1
> +
> +  "^matrix@[0-9a-f]+$":
> +    type: object
> +    additionalProperties: true
> +
> +    properties:
> +      compatible:
> +        enum:
> +          - fsl,imx8qxp-dc-matrix0
> +          - fsl,imx8qxp-dc-matrix1
> +
> +  "^signature@[0-9a-f]+$":
> +    type: object
> +    additionalProperties: true
> +
> +    properties:
> +      compatible:
> +        enum:
> +          - fsl,imx8qxp-dc-signature0
> +          - fsl,imx8qxp-dc-signature1
> +
> +  "^tcon@[0-9a-f]+$":
> +    type: object
> +    additionalProperties: true
> +
> +    properties:
> +      compatible:
> +        enum:
> +          - fsl,imx8qxp-dc-tcon0
> +          - fsl,imx8qxp-dc-tcon1
> +
> +required:
> +  - compatible
> +  - reg
> +  - reg-names
> +  - interrupts
> +  - interrupt-names
> +  - power-domains
> +  - "#address-cells"
> +  - "#size-cells"
> +  - ranges
> +
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: fsl,imx8qxp-dc-display-engine0
> +    then:
> +      patternProperties:
> +        "^dither@[0-9a-f]+$":
> +          properties:
> +            compatible:
> +              const: fsl,imx8qxp-dc-dither0
> +
> +        "^framegen@[0-9a-f]+$":
> +          properties:
> +            compatible:
> +              const: fsl,imx8qxp-dc-framegen0
> +
> +        "^gammacor@[0-9a-f]+$":
> +          properties:
> +            compatible:
> +              const: fsl,imx8qxp-dc-gammacor0
> +
> +        "^matrix@[0-9a-f]+$":
> +          properties:
> +            compatible:
> +              const: fsl,imx8qxp-dc-matrix0
> +
> +        "^signature@[0-9a-f]+$":
> +          properties:
> +            compatible:
> +              const: fsl,imx8qxp-dc-signature0
> +
> +        "^tcon@[0-9a-f]+$":
> +          properties:
> +            compatible:
> +              const: fsl,imx8qxp-dc-tcon0
> +    else:
> +      patternProperties:
> +        "^dither@[0-9a-f]+$":
> +          properties:
> +            compatible:
> +              const: fsl,imx8qxp-dc-dither1
> +
> +        "^framegen@[0-9a-f]+$":
> +          properties:
> +            compatible:
> +              const: fsl,imx8qxp-dc-framegen1
> +
> +        "^gammacor@[0-9a-f]+$":
> +          properties:
> +            compatible:
> +              const: fsl,imx8qxp-dc-gammacor1
> +
> +        "^matrix@[0-9a-f]+$":
> +          properties:
> +            compatible:
> +              const: fsl,imx8qxp-dc-matrix1
> +
> +        "^signature@[0-9a-f]+$":
> +          properties:
> +            compatible:
> +              const: fsl,imx8qxp-dc-signature1
> +
> +        "^tcon@[0-9a-f]+$":
> +          properties:
> +            compatible:
> +              const: fsl,imx8qxp-dc-tcon1
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/imx8-lpcg.h>
> +    #include <dt-bindings/firmware/imx/rsrc.h>
> +
> +    display-engine@5618b400 {
> +        compatible = "fsl,imx8qxp-dc-display-engine0";
> +        reg = <0x5618b400 0x14>, <0x5618b800 0x1c00>;
> +        reg-names = "top", "cfg";
> +        interrupt-parent = <&dc0_intc>;
> +        interrupts = <15>, <16>, <17>;
> +        interrupt-names = "shdload", "framecomplete", "seqcomplete";
> +        power-domains = <&pd IMX_SC_R_DC_0_PLL_0>;
> +        #address-cells = <1>;
> +        #size-cells = <1>;
> +        ranges;
> +
> +        framegen@5618b800 {
> +            compatible = "fsl,imx8qxp-dc-framegen0";
> +            reg = <0x5618b800 0x98>;
> +            clocks = <&dc0_disp_lpcg IMX_LPCG_CLK_0>;
> +            interrupt-parent = <&dc0_intc>;
> +            interrupts = <18>, <19>, <20>, <21>, <41>, <42>, <43>, <44>;
> +            interrupt-names = "int0", "int1", "int2", "int3",
> +                              "primsync_on", "primsync_off",
> +                              "secsync_on", "secsync_off";
> +        };
> +
> +        tcon@5618c800 {
> +            compatible = "fsl,imx8qxp-dc-tcon0";
> +            reg = <0x5618c800 0x588>;
> +
> +            port {
> +                dc0_disp0_dc0_pixel_combiner_ch0: endpoint {
> +                    remote-endpoint = <&dc0_pixel_combiner_ch0_dc0_disp0>;
> +                };
> +            };
> +        };
> +    };
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

