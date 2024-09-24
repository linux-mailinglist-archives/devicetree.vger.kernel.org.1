Return-Path: <devicetree+bounces-104756-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 39709984129
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 10:55:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8D56EB20A68
	for <lists+devicetree@lfdr.de>; Tue, 24 Sep 2024 08:55:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B6D5154C0B;
	Tue, 24 Sep 2024 08:55:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZeyUBnQW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33C1D1547CD
	for <devicetree@vger.kernel.org>; Tue, 24 Sep 2024 08:55:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727168126; cv=none; b=Y1MTLtd+gORmmbZ3MiCkJKxo7EJwy0HMTvFLAdNLh1tLwATuXIVVMG8bx+xCSB7VzjpnVWhXypnUEgdPoRMP9rbDDaGm387idIhAj/wkGgDVPg5K97tU1zm/CBRhqvKuay85FE+laJtw72NWLTs77Q+7v2gw5/tCQ4bmlZPSLWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727168126; c=relaxed/simple;
	bh=vfWLfhZrBuhTXxwZqyDsz/aWGPN+pqLDEq5jtptwzls=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nUlz7AZ91az3uY78QhxaKFlAdixNgFXudqTTinrg1s0x0XRCycGgX1w+qJaThBTKBDIIU9XPOOITM6O9Lb5EjZio1nJFySb1O9M6HJvTyhutS9VMBSN0iKFy7us2anMDgAyNZiVE1WxlWOsYGLM1YhC1h9+Rn9SpjkZcSRNOIl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZeyUBnQW; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2f75b13c2a8so55998631fa.3
        for <devicetree@vger.kernel.org>; Tue, 24 Sep 2024 01:55:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1727168122; x=1727772922; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3zPekBBQnYE9h1wNiBnPJ1W27ZUNg/CsS+5seicJ1+I=;
        b=ZeyUBnQW2n6TM8uKj74VXgUVheHhJ4hbRMttHerLMjvqmvM3sykh/JR+/Mzk/HCZQZ
         Hv5Jnvchi2JufoCxaki3bN4u1WJcb6VrxHHuml7soIvQKU4N+XiiPteO0Qa1gFMZi891
         jHHdJmYgwK8JtZuUIVX0dTV7mYZOhpIRH0RVAQWi+ZGp8ziSAYDinFxNgSLnL8WPLjYD
         1XHccmOPetOaLsnVpkjaDCcenRwd3QuV+eUd+MxmpaIL5oc7/Gy6D5NTF3UAVDO66R+p
         djf31bNLFBxNsoqg8MmUGAYMGQ5xKehTALbwmJ/3B22EiCl04xVLFKRCuCbTSVjd0dFz
         elzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727168122; x=1727772922;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3zPekBBQnYE9h1wNiBnPJ1W27ZUNg/CsS+5seicJ1+I=;
        b=vG2BmhGbJH/oE55LVyEz8KRl7StbpTSADoLE+bdEgELq7d84J0gjRuEmoxB4UM3SAq
         c/vdxphoP67xO3QfwvQnN1acOUho44x4efnGYPKvGaRtLii7fV+wkcLy+q4CvgIdQcGN
         5Xz7yAe/DP5Zrt6lw6Za+ocFqDP+KmIuBfk3Y4LSFO1jOom4QQ25NZX+b9d+Q2zzoyrx
         ZjjP6ENtwhg58yf7LTVRpXcqLBuVIv658rvVmnJzeq7CdKG9hFnuGteYKTbTr1E9tkBf
         Fo0ZHHj2YJ5Ubqax6KSlRAGBTfK8DjFe+YS25pKXEDPGxG7BOfE76zRTQJYXWEiXe9r9
         ISQA==
X-Forwarded-Encrypted: i=1; AJvYcCUn3xUsCPUu5S/zNAWrPkhdwQcuCCNjZUT7+kWwlwicil5LXEU3jL46ZJiII43vWfsI0bNYjf8tTz1G@vger.kernel.org
X-Gm-Message-State: AOJu0YwTWQjXxovms/hrFMVo++rEvTYLb39jU9tvd1DNGWiD8YDua03B
	5DOpFY1UnwzhoI/qhfI7YCFQVTn7CSyhWSP+DNOumi5KNiueuitpZb2t7jaMazU=
X-Google-Smtp-Source: AGHT+IF6kGMJj95pD29Vie/S8ZFE7+n7j8iD9RC3u4NBK76/EBw9rwODDmYNVV5BSqgST6bsdkOcKg==
X-Received: by 2002:a2e:510a:0:b0:2f6:5f0a:9cfe with SMTP id 38308e7fff4ca-2f7cb36059dmr56161761fa.30.1727168122127;
        Tue, 24 Sep 2024 01:55:22 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2f8d289b68fsm1458611fa.115.2024.09.24.01.55.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Sep 2024 01:55:20 -0700 (PDT)
Date: Tue, 24 Sep 2024 11:55:17 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Sandor Yu <Sandor.yu@nxp.com>
Cc: andrzej.hajda@intel.com, neil.armstrong@linaro.org, 
	Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com, airlied@gmail.com, 
	daniel@ffwll.ch, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org, 
	shawnguo@kernel.org, s.hauer@pengutronix.de, festevam@gmail.com, vkoul@kernel.org, 
	dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org, mripard@kernel.org, 
	kernel@pengutronix.de, linux-imx@nxp.com, oliver.brown@nxp.com, 
	alexander.stein@ew.tq-group.com, sam@ravnborg.org, 
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v17 3/8] dt-bindings: display: bridge: Add Cadence
 MHDP8501
Message-ID: <w72m4bxymngdadhp4x3mxyvv4j6k3mgtoqg3tcw4p3xdmhfpmx@wbkmfj3zmwcv>
References: <cover.1727159906.git.Sandor.yu@nxp.com>
 <b2e1d26f964a03163ec7a1ba6ac8d7c88d6cb111.1727159906.git.Sandor.yu@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b2e1d26f964a03163ec7a1ba6ac8d7c88d6cb111.1727159906.git.Sandor.yu@nxp.com>

On Tue, Sep 24, 2024 at 03:36:48PM GMT, Sandor Yu wrote:
> Add bindings for Cadence MHDP8501 DisplayPort/HDMI bridge.
> 
> Signed-off-by: Sandor Yu <Sandor.yu@nxp.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
> v16->v17:
> - Add lane-mapping property
> 
> v9->v16:
>  *No change
> 
> .../display/bridge/cdns,mhdp8501.yaml         | 109 ++++++++++++++++++
>  1 file changed, 109 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/bridge/cdns,mhdp8501.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/cdns,mhdp8501.yaml b/Documentation/devicetree/bindings/display/bridge/cdns,mhdp8501.yaml
> new file mode 100644
> index 0000000000000..3f79f328c7425
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/bridge/cdns,mhdp8501.yaml
> @@ -0,0 +1,109 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/bridge/cdns,mhdp8501.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Cadence MHDP8501 DP/HDMI bridge
> +
> +maintainers:
> +  - Sandor Yu <Sandor.yu@nxp.com>
> +
> +description:
> +  Cadence MHDP8501 DisplayPort/HDMI interface.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - fsl,imx8mq-mhdp8501
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 1
> +    description: MHDP8501 DP/HDMI APB clock.
> +
> +  phys:
> +    maxItems: 1
> +    description:
> +      phandle to the DP/HDMI PHY
> +
> +  interrupts:
> +    items:
> +      - description: Hotplug cable plugin.
> +      - description: Hotplug cable plugout.
> +
> +  interrupt-names:
> +    items:
> +      - const: plug_in
> +      - const: plug_out
> +
> +  lane-mapping:
> +    description: lane mapping for HDMI or DisplayPort interface.
> +
> +  ports:
> +    $ref: /schemas/graph.yaml#/properties/ports
> +
> +    properties:
> +      port@0:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description:
> +          Input port from display controller output.
> +      port@1:
> +        $ref: /schemas/graph.yaml#/properties/port
> +        description:
> +          Output port to DisplayPort or HDMI connector.
> +
> +    required:
> +      - port@0
> +      - port@1
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - interrupts
> +  - interrupt-names
> +  - phys
> +  - lane-mapping
> +  - ports
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/imx8mq-clock.h>
> +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> +
> +    mhdp: display-bridge@32c00000 {
> +        compatible = "fsl,imx8mq-mhdp8501";
> +        reg = <0x32c00000 0x100000>;
> +        interrupts = <GIC_SPI 16 IRQ_TYPE_LEVEL_HIGH>,
> +                     <GIC_SPI 25 IRQ_TYPE_LEVEL_HIGH>;
> +        interrupt-names = "plug_in", "plug_out";
> +        clocks = <&clk IMX8MQ_CLK_DISP_APB_ROOT>;
> +        phys = <&mdhp_phy>;
> +        lane-mapping = <0xe4>;

What does this value mean? The DT should be describing the hardware, not
the register values. Can it be expressed as the data-lanes property of
the corresponding port?

> +
> +        ports {
> +            #address-cells = <1>;
> +            #size-cells = <0>;
> +
> +            port@0 {
> +                reg = <0>;
> +
> +                mhdp_in: endpoint {
> +                    remote-endpoint = <&dcss_out>;
> +                };
> +            };
> +
> +            port@1 {
> +                reg = <1>;
> +
> +                mhdp_out: endpoint {
> +                    remote-endpoint = <&dp_connector>;
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

