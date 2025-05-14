Return-Path: <devicetree+bounces-177365-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 69E2DAB7153
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 18:27:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 026A48C6267
	for <lists+devicetree@lfdr.de>; Wed, 14 May 2025 16:26:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BBCCF17A31F;
	Wed, 14 May 2025 16:26:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tomeuvizoso-net.20230601.gappssmtp.com header.i=@tomeuvizoso-net.20230601.gappssmtp.com header.b="tW6KXxWl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B686270EC5
	for <devicetree@vger.kernel.org>; Wed, 14 May 2025 16:26:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747240013; cv=none; b=vGNb6g/qzLsk9o2y1rPoW7F00W/TB57oSteHzpcnqsPmo40dWbyf6ViY62FGAcHCNt6yuyyoJS00fVNUBOnXXybAy5YcTE3w9YF9L8YNCi2C53CkZTFXYH3J0e60GAS8LL3e2GyI+e8809vsIRtZ6VBXnPClPNUdAaNwUggO0hU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747240013; c=relaxed/simple;
	bh=9QOQNm1DtryVnoeSN7DGC61nsEhaIMM2YYX27XDU2u4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=laRVroHSXN6RQNEfDjnCr85A2ocAaZkDPCMq4l2aWGVhFq5etWek300UmDlfC6XJ3+lOMNS5YGZhW4AUFt2zxnOqYGlFnl7VpDwjqZOcU9JjH/7pfShaOF3BidkewMz+e02/MJWzN1pee8+qIxVuqgZQnFJYIYbnD2NQ7vIl+oQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tomeuvizoso.net; spf=pass smtp.mailfrom=tomeuvizoso.net; dkim=pass (2048-bit key) header.d=tomeuvizoso-net.20230601.gappssmtp.com header.i=@tomeuvizoso-net.20230601.gappssmtp.com header.b=tW6KXxWl; arc=none smtp.client-ip=209.85.128.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tomeuvizoso.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tomeuvizoso.net
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-70900a80907so60809697b3.0
        for <devicetree@vger.kernel.org>; Wed, 14 May 2025 09:26:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tomeuvizoso-net.20230601.gappssmtp.com; s=20230601; t=1747240010; x=1747844810; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gJ0AzCyNbBw7LmTlYnlYRUZRvc6BiWujoVO60kyzOiU=;
        b=tW6KXxWljaiMmR2np+P1joBCEqM4CtD+NZd0mrqRmHRWzXS828ZOSDtNmgq4vBxlMh
         +yJfIY98WIpc7m8RNjqvDRv3fAJunQRYFGUL2QEdxfliDqkG+t8q6eKdeJ5iotFAbfOB
         g6dKFfqVbNLxXZlpPifyHJPGWhg122FRdGhA2D6Iadw1fY85506ZM0tnTGsvTUgaDBaY
         zuP5k1vmEkGdzyX9WerwK4ePCv2i+Ff5juHT0AYHiRHoUbz6Bd5kghDTl6/obqQcRfVy
         ZOStTNr6eW/y01sdLU9P4zFgHolRPuO52CPlgSP0hll7RaRAujd4WzU6gGrNFoMowqoD
         MtnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747240010; x=1747844810;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gJ0AzCyNbBw7LmTlYnlYRUZRvc6BiWujoVO60kyzOiU=;
        b=ARKVfn3r3/kkQFPITIFPKblhmIrEA1CUNMXD/jwUojteFSvH1wUNazPhyf0RqfRwcu
         R9Sk49EQIeAguP3GFYXGopKv5PM7qvnLWp7IHHrHfli8fOXRR5YLd0U5zTi4ttcooFDd
         GNFYagy1El2mir8LtcdEfkCU50zAa1Wmlu0udiy48PGq1uuApMu8K2olvxR438Sh5PUO
         PdQEJUKxCrnFGoLGpsK9NzAQJSE5gMkWayoCvJJXmKghgDJv6LLNHsH7w3V2gMK6wkig
         AdsztQotlDLLNeE+gNsibz7oCluUNjVVQ+OZ0P6ewgfsUD6r7DzfiKkV/F0Siou/c4oM
         Deng==
X-Forwarded-Encrypted: i=1; AJvYcCUBb0WIpNtlA0slyuojIiXvv3tbWHgMntbvokiS7+vTyd30bIc3nm3iTwePyD4O2ufK71zuGWkamrT/@vger.kernel.org
X-Gm-Message-State: AOJu0YyX7Z1p3nfDq9PChb1uiHW/zga/Nz5Tx8lOwoniKplh3hrGJY+j
	/NuqxGbabxtOIyd61Z5U6wXNssS/bD66BoKgWY900xERj60BOAE+geq/pN+zDeUv0yLAJIb+QlI
	M+krZWA==
X-Gm-Gg: ASbGncunRYtGkNy3qq9YeQlWMOkc2M0s2kY0LCNovu5tNh2fqrBjEB9O1p/xXy+RFR5
	nmaPSvvTV2ZZrPtac7s6i4oJd1t2/NyOcviFLiNCTh4xesudZYpHBTizwPgCZgXTGgq2wi4fzpY
	Rc9Eubu/Ga9ubIlgrQUmYqIddqOrmS8Yq0mSyo1fju1LvcbBzzLWcyYCEmoFOOAGLc6jhVC/P9v
	kCX24AmSOYUhmZixdOtz0B/ly1Z/aHp2CBDEsrJVcYCJIRYo/fm4y1hqOcY9GokS+kyRGH7CWzb
	XK2KoeQ0SOplMfntfKK3Tox3UDTMCAMqBDtz5qAaSY2klDU+mwJfknMqjIc3t2YsqIGpX6JCbQm
	IXtaTOndbdCWokghv+wA=
X-Google-Smtp-Source: AGHT+IG+uTH2mFy8MPlKHWxCcLd2xL3H9qSutUTXT/habpIlOeQQg0fLL94X9rKsK/xpDtOCZ5yThg==
X-Received: by 2002:a05:690c:3341:b0:6ef:94db:b208 with SMTP id 00721157ae682-70c7f221d1amr55077777b3.24.1747240010102;
        Wed, 14 May 2025 09:26:50 -0700 (PDT)
Received: from mail-yb1-f170.google.com (mail-yb1-f170.google.com. [209.85.219.170])
        by smtp.gmail.com with ESMTPSA id 00721157ae682-70a3d9cb5ccsm29779187b3.90.2025.05.14.09.26.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 May 2025 09:26:49 -0700 (PDT)
Received: by mail-yb1-f170.google.com with SMTP id 3f1490d57ef6-e78f528aa8eso6069068276.3;
        Wed, 14 May 2025 09:26:49 -0700 (PDT)
X-Forwarded-Encrypted: i=1; AJvYcCUQL6ZUqYR60/mjV7HZhQEUUW3dKH/vXljeyx4HVQPs53n/4gdMFXJA60weEhzFTn9PbJPN0f/vY2QqEHr3@vger.kernel.org, AJvYcCUkiGgBr2jDg+RYBsWsC6RF+sbXYhchzxbvXkmUid1KIu74NSQ52V5i1zj7LZBhXSQfJuuLC9kFnYIj@vger.kernel.org, AJvYcCUrtu+y4sofV1DOlWAtNJKGYdJdeQ3kPSMCaDUI7en2vDddYaeBCRz6BMixfN+3/ZPvzdwY0o3SchsGZq0=@vger.kernel.org, AJvYcCVcOXqOIpGd59hPHSY2ywtDrnJ3+QTcI6Kis0KdjT/oMPW7lFkqx5un/W9UnT9spgVJRek7n+8cQRbW@vger.kernel.org
X-Received: by 2002:a05:6902:1202:b0:e6d:f160:bbdf with SMTP id
 3f1490d57ef6-e7b3d59ae2fmr4832866276.36.1747240009056; Wed, 14 May 2025
 09:26:49 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250225-6-10-rocket-v2-0-d4dbcfafc141@tomeuvizoso.net>
 <20250225-6-10-rocket-v2-1-d4dbcfafc141@tomeuvizoso.net> <20250225160248.GA2563229-robh@kernel.org>
In-Reply-To: <20250225160248.GA2563229-robh@kernel.org>
From: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Date: Wed, 14 May 2025 18:26:38 +0200
X-Gmail-Original-Message-ID: <CAAObsKD01rdYf0E6Vev6oFRZEf1f006oi+ghgVUn+h=aRx-hmQ@mail.gmail.com>
X-Gm-Features: AX0GCFvDEBwxCoW2ZGLJEEIKb_2H5q_lCEI2NWi7ZFVAMNUkSoshPa20AanOMV0
Message-ID: <CAAObsKD01rdYf0E6Vev6oFRZEf1f006oi+ghgVUn+h=aRx-hmQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/7] dt-bindings: npu: rockchip,rknn: Add bindings
To: Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Heiko Stuebner <heiko@sntech.de>, Oded Gabbay <ogabbay@kernel.org>, Jonathan Corbet <corbet@lwn.net>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Sumit Semwal <sumit.semwal@linaro.org>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	Sebastian Reichel <sebastian.reichel@collabora.com>, Jeffrey Hugo <quic_jhugo@quicinc.com>, 
	devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-doc@vger.kernel.org, 
	linux-media@vger.kernel.org, linaro-mm-sig@lists.linaro.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi Rob,

On Tue, Feb 25, 2025 at 5:02=E2=80=AFPM Rob Herring <robh@kernel.org> wrote=
:
>
> On Tue, Feb 25, 2025 at 08:55:47AM +0100, Tomeu Vizoso wrote:
> > Add the bindings for the Neural Processing Unit IP from Rockchip.
> >
> > v2:
> > - Adapt to new node structure (one node per core, each with its own
> >   IOMMU)
> > - Several misc. fixes from Sebastian Reichel
> >
> > Signed-off-by: Tomeu Vizoso <tomeu@tomeuvizoso.net>
> > Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> > ---
> >  .../bindings/npu/rockchip,rknn-core.yaml           | 152 +++++++++++++=
++++++++
> >  1 file changed, 152 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/npu/rockchip,rknn-core.y=
aml b/Documentation/devicetree/bindings/npu/rockchip,rknn-core.yaml
> > new file mode 100644
> > index 0000000000000000000000000000000000000000..e8d0afe4a7d1c4f166cf13a=
9f4aa7c1901362a3f
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/npu/rockchip,rknn-core.yaml
> > @@ -0,0 +1,152 @@
> > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/npu/rockchip,rknn-core.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Neural Processing Unit IP from Rockchip
> > +
> > +maintainers:
> > +  - Tomeu Vizoso <tomeu@tomeuvizoso.net>
> > +
> > +description:
> > +  Rockchip IP for accelerating inference of neural networks, based on =
NVIDIA's
> > +  open source NVDLA IP.
> > +
> > +properties:
> > +  $nodename:
> > +    pattern: '^npu-core@[a-f0-9]+$'
> > +
> > +  compatible:
> > +    oneOf:
> > +      - items:
> > +          - enum:
> > +              - rockchip,rk3588-rknn-core-top
> > +          - const: rockchip,rknn-core-top
>
> Drop the fallbacks unless you have some evidence that the IP is the
> same across a lot of SoCs. If you don't, then
> rockchip,rk3588-rknn-core-top can be the fallback whenever there are
> more compatible SoCs.
>
> Or if there's version/feature registers that otherwise make it
> discoverable, then a common compatible is fine.
>
> > +      - items:
> > +          - enum:
> > +              - rockchip,rk3588-rknn-core
> > +          - const: rockchip,rknn-core
>
> I don't understand the difference between core and core-top. That needs
> to be explained in the top-level description.
>
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  clocks:
> > +    minItems: 2
> > +    maxItems: 4
> > +
> > +  clock-names:
> > +    items:
> > +      - const: aclk
> > +      - const: hclk
> > +      - const: npu
> > +      - const: pclk
> > +    minItems: 2
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  iommus:
> > +    maxItems: 1
> > +
> > +  npu-supply: true
> > +
> > +  power-domains:
> > +    maxItems: 1
> > +
> > +  resets:
> > +    maxItems: 2
> > +
> > +  reset-names:
> > +    items:
> > +      - const: srst_a
> > +      - const: srst_h
> > +
> > +  sram-supply: true
>
> Group supply properties together
>
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - clocks
> > +  - clock-names
> > +  - interrupts
> > +  - iommus
> > +  - npu-supply
> > +  - power-domains
> > +  - resets
> > +  - reset-names
> > +  - sram-supply
> > +
> > +allOf:
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            enum:
> > +              - rockchip,rknn-core-top
> > +    then:
> > +      properties:
> > +        clocks:
> > +          minItems: 4
> > +
> > +        clock-names:
> > +          minItems: 4
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            enum:
> > +              - rockchip,rknn-core
> > +    then:
> > +      properties:
> > +        clocks:
> > +          maxItems: 2
> > +        clock-names:
> > +          maxItems: 2
> > +
> > +additionalProperties: false
> > +
> > +examples:
> > +  - |
> > +    #include <dt-bindings/clock/rockchip,rk3588-cru.h>
> > +    #include <dt-bindings/interrupt-controller/irq.h>
> > +    #include <dt-bindings/interrupt-controller/arm-gic.h>
> > +    #include <dt-bindings/power/rk3588-power.h>
> > +    #include <dt-bindings/reset/rockchip,rk3588-cru.h>
> > +
> > +    bus {
> > +      #address-cells =3D <2>;
> > +      #size-cells =3D <2>;
> > +
> > +      rknn_core_top: npu-core@fdab0000 {
>
> npu@...

Can you extend on why you would prefer to have npu@? As each node
corresponds to a core inside the NPU, I went with npu-core@.

Thanks,

Tomeu

> > +        compatible =3D "rockchip,rk3588-rknn-core-top", "rockchip,rknn=
-core-top";
> > +        reg =3D <0x0 0xfdab0000 0x0 0x9000>;
> > +        assigned-clocks =3D <&scmi_clk SCMI_CLK_NPU>;
> > +        assigned-clock-rates =3D <200000000>;
> > +        clocks =3D <&cru ACLK_NPU0>, <&cru HCLK_NPU0>,
> > +                 <&scmi_clk SCMI_CLK_NPU>, <&cru PCLK_NPU_ROOT>;
> > +        clock-names =3D "aclk", "hclk", "npu", "pclk";
> > +        interrupts =3D <GIC_SPI 110 IRQ_TYPE_LEVEL_HIGH 0>;
> > +        iommus =3D <&rknn_mmu_top>;
> > +        npu-supply =3D <&vdd_npu_s0>;
> > +        power-domains =3D <&power RK3588_PD_NPUTOP>;
> > +        resets =3D <&cru SRST_A_RKNN0>, <&cru SRST_H_RKNN0>;
> > +        reset-names =3D "srst_a", "srst_h";
> > +        sram-supply =3D <&vdd_npu_mem_s0>;
> > +      };
> > +
> > +      rknn_core_1: npu-core@fdac0000 {
> > +        compatible =3D "rockchip,rk3588-rknn-core", "rockchip,rknn-cor=
e";
> > +        reg =3D <0x0 0xfdac0000 0x0 0x9000>;
> > +        clocks =3D <&cru ACLK_NPU1>, <&cru HCLK_NPU1>;
> > +        clock-names =3D "aclk", "hclk";
> > +        interrupts =3D <GIC_SPI 111 IRQ_TYPE_LEVEL_HIGH 0>;
> > +        iommus =3D <&rknn_mmu_1>;
> > +        npu-supply =3D <&vdd_npu_s0>;
> > +        power-domains =3D <&power RK3588_PD_NPU1>;
> > +        resets =3D <&cru SRST_A_RKNN1>, <&cru SRST_H_RKNN1>;
> > +        reset-names =3D "srst_a", "srst_h";
> > +        sram-supply =3D <&vdd_npu_mem_s0>;
> > +      };
> > +    };
> > +...
> >
> > --
> > 2.48.1
> >

