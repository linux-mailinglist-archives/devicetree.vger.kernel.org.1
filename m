Return-Path: <devicetree+bounces-3988-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 449CA7B0D15
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 22:01:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 4F932282F48
	for <lists+devicetree@lfdr.de>; Wed, 27 Sep 2023 20:01:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0DCFE4C847;
	Wed, 27 Sep 2023 20:01:10 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD4B1A586
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 20:01:06 +0000 (UTC)
Received: from mail-qt1-x82d.google.com (mail-qt1-x82d.google.com [IPv6:2607:f8b0:4864:20::82d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0396D114
	for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 13:01:02 -0700 (PDT)
Received: by mail-qt1-x82d.google.com with SMTP id d75a77b69052e-418025bf4d6so50991351cf.1
        for <devicetree@vger.kernel.org>; Wed, 27 Sep 2023 13:01:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1695844861; x=1696449661; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jDVLMXBa2XfaEHREeVH6PICOgKFD+LcSP9ho+5+MSRo=;
        b=BSBiJnXg3jxAIe0bY0iizR/xMIJYQvgpeh1v0bShE0cEHhr04rIdEmivMNZzpCUins
         4FwG8laG7MH1ZmyV9cPq/DCLrNjdnZ5uLe3nKXboDJbg9uhe/8Vm+r4nqi2XDyW9AoCE
         ni5WUnTh5EqvnCjq+mpUU7yl59m8QrSkuHrpx8ckl1El8Fsnj0coIsqWfo4pq6hSfCsV
         RETceEsJpzgpsk++rUf1tDpyadDwTqJT3qlUasMS53k5n6YAtPl6YVQMeagjplZcbMPe
         3V9ShIpKKzSw4jqEdlyxLdHNTni5EZazQ/Wl1Ucn4kPRYLGOWOhSvpX8rD5alHsXghQF
         CbGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695844861; x=1696449661;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jDVLMXBa2XfaEHREeVH6PICOgKFD+LcSP9ho+5+MSRo=;
        b=mB19/ddKO+l1fiLvGczSTJwgxdhbGBC+9SAid/6bRs5Z++AUD8oDxD1EvicxKnTo2a
         9SDSALU2mRDmSlbt286u49ciVFn9vE3DSHrzXKuhzwjJvdzmLVzo1AznUvODCUfw8UrU
         dRC8h7/saWYXsi21fXTKi9SQ2ToK6pzU+8A6CDifl7xKx4oHmzMjz/pCNMwuGyWd52UI
         cSV8h3PXbwSfQRMV1GWdR2DR8qGELk93dOLAKyBRE2ca/z3J4UNiqJ+v7ooGJHny8ttq
         pey7WleZZ0p9+3OozM5hnzec0UTXb3kkzLITqPqIrZarB3vk7hL5vc6dSPAFdoJVkgvJ
         Gkww==
X-Gm-Message-State: AOJu0YzlxgRP/bIHWGm8IXVG1czbalqa3EfN6CtTHQQoLxt6PDSAsG3+
	SlgtnMdTaOosFhiSMEPyPRGCzw==
X-Google-Smtp-Source: AGHT+IESw2wqCLleqmOMMct8rcQaxMts2l4nFzmNamRccfP/nZV4TTrMJ3qu+Nurw6mbsWjhkSVjbQ==
X-Received: by 2002:ac8:5f12:0:b0:417:a74f:69b6 with SMTP id x18-20020ac85f12000000b00417a74f69b6mr2365851qta.65.1695844861069;
        Wed, 27 Sep 2023 13:01:01 -0700 (PDT)
Received: from ?IPV6:2600:1700:2000:b002:40d8:421c:60ef:36d5? ([2600:1700:2000:b002:40d8:421c:60ef:36d5])
        by smtp.gmail.com with ESMTPSA id d8-20020ac81188000000b00411fcc18cc1sm5560876qtj.64.2023.09.27.13.00.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 27 Sep 2023 13:01:00 -0700 (PDT)
Message-ID: <cf68f6f1-e405-4c20-b4e1-da04189d0e2f@sifive.com>
Date: Wed, 27 Sep 2023 15:00:59 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: usb: Add T-HEAD TH1520 USB controller
Content-Language: en-US
To: Jisheng Zhang <jszhang@kernel.org>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, Guo Ren <guoren@kernel.org>,
 Fu Wei <wefu@redhat.com>, linux-riscv@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, Thinh Nguyen <Thinh.Nguyen@synopsys.com>
References: <20230927164222.3505-1-jszhang@kernel.org>
 <20230927164222.3505-2-jszhang@kernel.org>
From: Samuel Holland <samuel.holland@sifive.com>
In-Reply-To: <20230927164222.3505-2-jszhang@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 2023-09-27 11:42 AM, Jisheng Zhang wrote:
> T-HEAD TH1520 platform's USB has a wrapper module around
> the DesignWare USB3 DRD controller. Add binding information doc for
> it.
> 
> Signed-off-by: Jisheng Zhang <jszhang@kernel.org>
> ---
>  .../bindings/usb/thead,th1520-usb.yaml        | 73 +++++++++++++++++++
>  1 file changed, 73 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/usb/thead,th1520-usb.yaml
> 
> diff --git a/Documentation/devicetree/bindings/usb/thead,th1520-usb.yaml b/Documentation/devicetree/bindings/usb/thead,th1520-usb.yaml
> new file mode 100644
> index 000000000000..afb618eb5013
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/usb/thead,th1520-usb.yaml
> @@ -0,0 +1,73 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/usb/thead,th1520-usb.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: T-HEAD TH1520 DWC3 USB Controller Glue
> +
> +maintainers:
> +  - Jisheng Zhang <jszhang@kernel.org>
> +
> +properties:
> +  compatible:
> +    const: thead,th1520-usb
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    maxItems: 4
> +
> +  clock-names:
> +    items:
> +      - const: ref
> +      - const: bus_early
> +      - const: phy
> +      - const: suspend

Except for "phy", these clocks are already documented in snps,dwc3.yaml. Are
they necessary for the glue/PHY, or do they belong only in the controller node?
They are not used by the driver in patch 2. Also, the PHY clock probably belongs
with the PHY node.

> +
> +  ranges: true
> +
> +  '#address-cells':
> +    enum: [ 1, 2 ]
> +
> +  '#size-cells':
> +    enum: [ 1, 2 ]
> +
> +# Required child node:
> +
> +patternProperties:
> +  "^usb@[0-9a-f]+$":
> +    $ref: snps,dwc3.yaml#
> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +  - ranges
> +
> +additionalProperties: false

The driver in patch 2 uses the thead,misc-sysreg and vbus-supply properties,
neither of which is documented here. Also, depending on the other bindings, the
VBUS supply should be referenced from the USB PHY or connector node, not here.

Regards,
Samuel

> +examples:
> +  - |
> +
> +    usb {
> +          compatible = "thead,th1520-usb";
> +          reg = <0xec03f000 0x1000>;
> +          clocks = <&clk 1>,
> +                   <&clk 2>,
> +                   <&clk 3>,
> +                   <&clk 4>;
> +          clock-names = "ref", "bus_early", "phy", "suspend";
> +          ranges;
> +          #address-cells = <1>;
> +          #size-cells = <1>;
> +
> +          usb@e7040000 {
> +                compatible = "snps,dwc3";
> +                reg = <0xe7040000 0x10000>;
> +                interrupts = <68>;
> +                dr_mode = "host";
> +          };
> +    };


