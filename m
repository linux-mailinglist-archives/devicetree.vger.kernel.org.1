Return-Path: <devicetree+bounces-231363-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AC151C0CA59
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 10:28:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E4EDB3AD4CF
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 09:23:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 956CE27AC59;
	Mon, 27 Oct 2025 09:22:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ky8e1dnd"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F0E02EC08F
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 09:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761556976; cv=none; b=e7kK9VaaLozhJdCNt+ETQKPT1P+USRZjcbHVeP8JzIMS/CuMoUcT1v00y+06ysoEeLw39dMrK2pwmw29dBx8+QDsA5yH/5ZNcF2I/exyOzYfWTg4Lj8IOIXNtc08CnfL8DM/1mlxVLjEb71/lTz9kFx2Is9JEoh74khWtJN0C1s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761556976; c=relaxed/simple;
	bh=fxDesR92Xwhzeu84eJzm6w44tjPoXglJapFmerEbwME=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Ipn6MC75/Q1W1lSO2Bir3G047SUHq2BaVx1jWVbcb6GLSvgKtNzhhHv6y7jKZ+ljrfUDmUzaVGbDwAuJj3devDxyElxVMAGaOxVmtE6tPqA1zIGbOxbmLz0tFpDZvYt5gNQFvraDUac5d2MS9YnKkhXIssKjQLOpxaPAzZsTax4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ky8e1dnd; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-b6d855ca585so447429966b.0
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 02:22:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761556972; x=1762161772; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=idLQEGHawEowPnMFpADe7JKEtzSuZ6zkkitTWQDADFM=;
        b=ky8e1dndF7dQqxPPfxlYUxrHVn7o18SwU6bie45obaI/wx4EeP2K16CpcjLOQbmzWt
         iR/FACtdzWt0utqG0vIn3b4eAbYPvR7CnvVJVKyBekwBMOOY0dFumiF0Kz4UIVukFvAj
         iLI0pCFmk6EKbCioADk+/bn56h1r5nQ537gsjTeWTe2xDSJxCDod6UJP+V/LP7f9J7hS
         sHu9Z9WSEpGm20exjDWLViNx2s1siDlilYUJNUQ/B/rmDc9T32+mB26hL2Ye/iNzq9f+
         wrn6BJIhXJjZ6EfHiVXAFt59KI1SrN+tutqpkq6jtY7btrM9Fa86mj3Cqvi4QGwHik2M
         xrIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761556972; x=1762161772;
        h=content-transfer-encoding:in-reply-to:content-language:from
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=idLQEGHawEowPnMFpADe7JKEtzSuZ6zkkitTWQDADFM=;
        b=nbZA8zPpcZk+SpN83bRCS627X+6ldgVgS6RW1RmisWYkq4jfKqfzVcol5qa8HRy7AZ
         oemRForTtpl6O7poxaOcdO4zzMAjXPT1XDyeSiRZsPPOxK3o39Etm3SocVtokvIRXbAw
         k4LWJAOcl2DsiyD5PmPCSjcdVyZ16J3KJdRjTIpetpjcGInkRX7JZXtSHOk9Iz5fHewR
         ivqWF8TZBn6oBZfFpVuf1SCiDqcHQJ8KBIXnVzK3bUuEMh33mIviuVXwqjVpwAcmRnY+
         czQI6cYv2CcZhybHf3l4ujdP+RW04WhbSMmBXFU8uODLDiBSe49vP4z0AMEB8rZCX9zQ
         a7Cw==
X-Forwarded-Encrypted: i=1; AJvYcCWg3Hpu/z0KLstvn/H1iICL8UHC6sZ0nKMJNGOTIl+y08W/ovNCWI+RbZTI+uQ4y2VXSjJC7XxruAef@vger.kernel.org
X-Gm-Message-State: AOJu0YzmF6ywXrxI+UU2aZ7OC+ZHUZdqeHYReD8hNyFnNf2GBmeSk1w7
	lkyansOghW8j/ec9+Hzuwz2wa1HUp71ta/DUffKjXXRzffgtoHjSXv1yCD9hbJGc0AM=
X-Gm-Gg: ASbGncsfzPAXCW6GBzAaqH+SsYjomSCDnuKlpK5nytUeTfMoCMxUpqElzHvv9p+7gIS
	6rInSDOvwtlqf+e3CTkwx5b0nfnTnDnRK1HZC0E8ygSOpi4sYoJOFjXCcItzNKMJxqwDoQTeDeU
	ecu71v5e54JjY2c56WOjrVSXCq+j/uTjMeuP4Fnh4Oah3DbmaFjda93yX/vXzkeHReieSbJoRnb
	M0tbaJOhaUYlGeeYL2CHNC+9svJzjEOPhSL8qxVi6VQJlIAb2tE4dayO5OrQki2W2kyaJy1Nwoe
	4NYXddclVqy4sJxEVrHVm3c5mekY5K3OCmUwLSxNRzI37lG8P6pFxszOcLa4wZAxWsLGDbTum44
	hv79a7T4G1Y9lp2pv+6jmAbZmIW7PJxCSMCJPeeDT85xGw6Q8KSfY2UKry9IM+43NrlM0hTtLno
	sibKTUSCuPX+dduagK8Q==
X-Google-Smtp-Source: AGHT+IFgheBk8plPZFOvo1Fh8CqMw+IDlX5zjqqJtiHnOJ15bA0846Akm4ZoeAvbvhHYf1Mdb/gfzw==
X-Received: by 2002:a17:907:6d20:b0:b6d:6a35:99a0 with SMTP id a640c23a62f3a-b6d6a359c49mr1253713666b.33.1761556971534;
        Mon, 27 Oct 2025 02:22:51 -0700 (PDT)
Received: from [192.168.0.39] ([82.76.24.202])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d853c549fsm708029666b.37.2025.10.27.02.22.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Oct 2025 02:22:51 -0700 (PDT)
Message-ID: <56a13c84-7d8b-42f1-97f6-c338b931f205@linaro.org>
Date: Mon, 27 Oct 2025 11:22:48 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 01/31] dt-bindings: media: add DW MIPI CSI-2 Host
 support
To: Sakari Ailus <sakari.ailus@iki.fi>, Frank Li <Frank.Li@nxp.com>
Cc: Rui Miguel Silva <rmfrfs@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Martin Kepplinger <martink@posteo.de>, Purism Kernel Team <kernel@puri.sm>,
 Mauro Carvalho Chehab <mchehab@kernel.org>, Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley
 <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
 Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, Peng Fan <peng.fan@nxp.com>,
 Alice Yuan <alice.yuan@nxp.com>, Vinod Koul <vkoul@kernel.org>,
 Kishon Vijay Abraham I <kishon@kernel.org>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 linux-media@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, imx@lists.linux.dev,
 linux-arm-kernel@lists.infradead.org, linux-phy@lists.infradead.org,
 linux-staging@lists.linux.dev, Luis Oliveira <lolivei@synopsys.com>
References: <20250821-95_cam-v3-0-c9286fbb34b9@nxp.com>
 <20250821-95_cam-v3-1-c9286fbb34b9@nxp.com>
 <aP8t3YClrZxOnHea@valkosipuli.retiisi.eu>
From: Eugen Hristev <eugen.hristev@linaro.org>
Content-Language: en-US
In-Reply-To: <aP8t3YClrZxOnHea@valkosipuli.retiisi.eu>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On 10/27/25 10:31, Sakari Ailus wrote:
> Hei Eugen,
> 
> On Thu, Aug 21, 2025 at 04:15:36PM -0400, Frank Li wrote:
>> From: Eugen Hristev <eugen.hristev@linaro.org>

Hi everyone,

While I originally wrote this patch, and Frank keeping me as author, I
have not contributed more to it, so, I think you can drop me as author
and Frank you can put your name to it.

Thanks for continuing the work on it.

Eugen
>>
>> Add bindings for Synopsys DesignWare MIPI CSI-2 host, which used at i.MX93
>> and i.MX95 platform.
>>
>> Signed-off-by: Luis Oliveira <lolivei@synopsys.com>
>> Signed-off-by: Eugen Hristev <eugen.hristev@linaro.org>
>> Signed-off-by: Frank Li <Frank.Li@nxp.com>
>> ---
>> Change in v3
>> - drop remote-endpoint: true
>> - drop clock-lanes
>>
>> Change in v2
>> - remove Eugen Hristev <eugen.hristev@microchip.com> from mantainer.
>> - update ugen Hristev's s-o-b tag to align original author's email address
>> - remove single snps,dw-mipi-csi2-v150 compatible string
>> - move additionalProperties after required
>> ---
>>  .../bindings/media/snps,dw-mipi-csi2-v150.yaml     | 151 +++++++++++++++++++++
>>  MAINTAINERS                                        |   1 +
>>  2 files changed, 152 insertions(+)
>>
>> diff --git a/Documentation/devicetree/bindings/media/snps,dw-mipi-csi2-v150.yaml b/Documentation/devicetree/bindings/media/snps,dw-mipi-csi2-v150.yaml
>> new file mode 100644
>> index 0000000000000000000000000000000000000000..d950daa4ee9cfd504ef84b83271b2a1b710ffd6b
>> --- /dev/null
>> +++ b/Documentation/devicetree/bindings/media/snps,dw-mipi-csi2-v150.yaml
>> @@ -0,0 +1,151 @@
>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>> +%YAML 1.2
>> +---
>> +$id: http://devicetree.org/schemas/media/snps,dw-mipi-csi2-v150.yaml#
>> +$schema: http://devicetree.org/meta-schemas/core.yaml#
>> +
>> +title: Synopsys DesignWare CSI-2 Host controller (csi2host)
>> +
>> +maintainers:
>> +  - Frank Li <Frank.Li@nxp.com>
>> +
>> +description:
>> +  CSI2HOST is used to receive image coming from an MIPI CSI-2 compatible
>> +  camera. It will convert the incoming CSI-2 stream into a dedicated
>> +  interface called the Synopsys IDI (Image Data Interface).
>> +  This interface is a 32-bit SoC internal only, and can be assimilated
>> +  with a CSI-2 interface.
>> +
>> +properties:
>> +  compatible:
>> +    items:
>> +      - enum:
>> +          - fsl,imx93-mipi-csi2
>> +      - const: snps,dw-mipi-csi2-v150
>> +
>> +  reg:
>> +    items:
>> +      - description: MIPI CSI-2 core register
>> +
>> +  reg-names:
>> +    items:
>> +      - const: core
>> +
>> +  clocks:
>> +    maxItems: 2
>> +
>> +  clock-names:
>> +    items:
>> +      - const: per
>> +      - const: pixel
>> +
>> +  phys:
>> +    maxItems: 1
>> +    description: MIPI D-PHY
>> +
>> +  phy-names:
>> +    items:
>> +      - const: rx
>> +
>> +  resets:
>> +    maxItems: 1
>> +
>> +  interrupts:
>> +    maxItems: 1
>> +
>> +  power-domains:
>> +    maxItems: 1
>> +
>> +  ports:
>> +    $ref: /schemas/graph.yaml#/properties/ports
>> +
>> +    properties:
>> +      port@0:
>> +        $ref: /schemas/graph.yaml#/$defs/port-base
>> +        unevaluatedProperties: false
>> +        description:
>> +          Input port node, single endpoint describing the input port.
>> +
>> +        properties:
>> +          endpoint:
>> +            $ref: video-interfaces.yaml#
>> +            unevaluatedProperties: false
>> +            description: Endpoint connected to input device
>> +
>> +            properties:
>> +              bus-type:
>> +                const: 4
> 
> If 4 is the only value supported, you can drop the property altogether.
> 
>> +
>> +              data-lanes:
>> +                minItems: 1
>> +                maxItems: 4
>> +                items:
>> +                  maximum: 4
>> +
>> +      port@1:
>> +        $ref: /schemas/graph.yaml#/$defs/port-base
>> +        unevaluatedProperties: false
>> +        description:
>> +          Output port node, single endpoint describing the output port.
>> +
>> +        properties:
>> +          endpoint:
>> +            unevaluatedProperties: false
>> +            $ref: video-interfaces.yaml#
>> +            description: Endpoint connected to output device
>> +
>> +            properties:
>> +              bus-type:
>> +                const: 4
> 
> Are both input and output of this block CSI-2 with D-PHY?
> 
>> +
>> +    required:
>> +      - port@0
>> +      - port@1
>> +
>> +required:
>> +  - compatible
>> +  - reg
>> +  - reg-names
>> +  - interrupts
>> +  - ports
>> +
>> +additionalProperties: false
>> +
>> +examples:
>> +  - |
>> +    csi@3000 {
>> +        compatible = "fsl,imx93-mipi-csi2", "snps,dw-mipi-csi2-v150";
>> +        reg = <0x03000 0x1000>;
>> +        reg-names = "core";
>> +        phys = <&mipi_dphy_rx 0>;
>> +        phy-names = "rx";
>> +        resets = <&dw_rst 1>;
>> +        interrupts = <2>;
>> +
>> +        ports {
>> +            #address-cells = <1>;
>> +            #size-cells = <0>;
>> +
>> +            port@0 {
>> +                reg = <0>;
>> +
>> +                endpoint {
>> +                    bus-type = <4>; /* MIPI CSI2 D-PHY */
>> +                    remote-endpoint = <&camera_1>;
>> +                    data-lanes = <1 2>;
>> +                    clock-lanes = <0>;
>> +                };
>> +            };
>> +
>> +            port@1 {
>> +                reg = <1>;
>> +
>> +                endpoint {
>> +                    remote-endpoint = <&idi_receiver>;
>> +                    bus-type = <4>;
>> +                };
>> +            };
>> +        };
>> +    };
>> +
>> +...
>> diff --git a/MAINTAINERS b/MAINTAINERS
>> index 9d9d2be7be8037dfa96f1c9edd24a0cf997b9393..ecb7bc7cc8ad797f43173075ca8973804bf335f7 100644
>> --- a/MAINTAINERS
>> +++ b/MAINTAINERS
>> @@ -15334,6 +15334,7 @@ F:	Documentation/devicetree/bindings/media/fsl,imx93-parallel-csi.yaml
>>  F:	Documentation/devicetree/bindings/media/nxp,imx-mipi-csi2.yaml
>>  F:	Documentation/devicetree/bindings/media/nxp,imx7-csi.yaml
>>  F:	Documentation/devicetree/bindings/media/nxp,imx8mq-mipi-csi2.yaml
>> +F:	Documentation/devicetree/bindings/media/snps,dw-mipi-csi2-v150.yaml
>>  F:	drivers/media/platform/nxp/imx-mipi-csis.c
>>  F:	drivers/media/platform/nxp/imx-parallel-csi.c
>>  F:	drivers/media/platform/nxp/imx7-media-csi.c
>>
> 


