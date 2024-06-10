Return-Path: <devicetree+bounces-74089-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 9537E901EC0
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2024 12:04:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 014F0B246C0
	for <lists+devicetree@lfdr.de>; Mon, 10 Jun 2024 10:04:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF4B276025;
	Mon, 10 Jun 2024 10:04:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="p4fUkysN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF5D6757F5
	for <devicetree@vger.kernel.org>; Mon, 10 Jun 2024 10:04:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718013853; cv=none; b=QICwB+OOy4dC22/7t32ZYvro8Y5AxcH8sAcKYKzKj6Ad4MmB8AF3MytH8TQnDNNJyWmVyHXihOSkWq97m/ybjKwy7FrMOy7bxgHOwgMhoshu2cDInJRCNeGYPWS27smBYc5ZHbNZX8YQxiPMxsyVgPtqQW51wIJdkMVUyXMuw00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718013853; c=relaxed/simple;
	bh=M+z9EGehKc7WekRDesUv7b2e6+dLTQHN5H+ZQO0R5LA=;
	h=From:To:Cc:Subject:In-Reply-To:References:Date:Message-ID:
	 MIME-Version:Content-Type; b=DUk6eoFHTYqIsVUN35ypCdQuBp5+Lxa7iEgY5cs70DFjwrBMjNoFHORoI1uEEHZ9fGRrLW6tFceq0mI+rPFUTqd7inIkB+NNaXsCztGf6gDOl73XSXHJiyJyVg1Me71JJ149N5onfFNEC4PKWKlXwAuEBTxZ/0a9/VMkhIGSoBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=p4fUkysN; arc=none smtp.client-ip=209.85.221.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-wr1-f54.google.com with SMTP id ffacd0b85a97d-35f275c7286so423770f8f.2
        for <devicetree@vger.kernel.org>; Mon, 10 Jun 2024 03:04:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1718013850; x=1718618650; darn=vger.kernel.org;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=hgW8B70Q8zX7acFGE+7FKzyC1rI3PYnZTOkuVMqMUeM=;
        b=p4fUkysNAAmS3y6BvkkKl96K1aimot1o+27iV3h8jsAJt2J0oDjoEHQwARrrDRU1+9
         J3SlTk7QaYoQhhBMydqdopBM4xSDFInp2E8VWVaESmUR6o5pJz+AxiMtg6tixUbzFn/3
         t1+KfW8AX+IWqzM8whW2HHyYjrn1vtiTmGIzaaQ7Z1C/Z9s/itAWG2y+JhZYXqku0dfN
         Pa5uIXMGsCitU4MzV0+dga0dg3gRWxz5llPYeRd+CSK85s0aSvA79YQkrvobY6bXlKNy
         OcU7NgFFqgjL06UzvZ5nglK8L+fHfxMBk3ocq2DR+lomrRcLVchJ1ENH691HJXTnmgc5
         yfLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718013850; x=1718618650;
        h=mime-version:message-id:date:references:in-reply-to:subject:cc:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hgW8B70Q8zX7acFGE+7FKzyC1rI3PYnZTOkuVMqMUeM=;
        b=SmRVq7XAFM7+hGkLbJ1wtSqqndVkzvNgzF9LgCSseVw8G8bd/bkD25R+OLdvCo9tGv
         54gp14kdsrHa1cJTvhedLUwZxV1J4IrAhkCwTlk9HuDjP7elq94xrwH2twHHnN8E88SP
         Ujq1zM3b7GoD7z4e42j2TEGFp1YM+TZ6OBtQoyJ8U3RCJYchKuMs3SLBmez8MOPuklDG
         TvcO6LY+PeReAM3d9VNI2lekQZ/wYx1anirTxWslOHQkOZboULU4EBu4w6DrCHKE2Fo/
         CKX49hjkrp0v+UyfywltsPUT8oIsYWrgwRhHr5IVlqjPjzCU/1LFD1ThrZK6m/GZ4qFm
         h6xw==
X-Forwarded-Encrypted: i=1; AJvYcCVeCKV8LazMNE2h5sqVBQlkF2itC0NZ4tKoFjSawikEuKsLpUIHBmCUbgcCCw2978gKtjbK5SJ7IS/4uABUMP+P9fwTeKXI5JZanA==
X-Gm-Message-State: AOJu0Yx9st7R0zEKxtnpuqXt1yMMm9Creg6s4UWTX6QL6CLWoeLbW7nE
	EQ/DrwzE8v8D+ZWnN+HOs4x54k0xyHC2E7cc9zeTkU3YoS7S0Z1MNoZajP+MrHs=
X-Google-Smtp-Source: AGHT+IGSgkd3LqLIyxqDoIX0DW/WYOv65XykZ7jmOpZ9kbZonCQsXNHJT+NKtkJEDBC3j4DrawCjIw==
X-Received: by 2002:adf:f6c4:0:b0:35f:16a4:6b99 with SMTP id ffacd0b85a97d-35f16a46c11mr2450784f8f.4.1718013850018;
        Mon, 10 Jun 2024 03:04:10 -0700 (PDT)
Received: from localhost ([2a01:e0a:3c5:5fb1:afd3:66ee:5486:4249])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-35f0e49e898sm6844132f8f.22.2024.06.10.03.04.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Jun 2024 03:04:09 -0700 (PDT)
From: Jerome Brunet <jbrunet@baylibre.com>
To: Dmitry Rokosov <ddrokosov@salutedevices.com>
Cc: <neil.armstrong@linaro.org>,  <mturquette@baylibre.com>,
  <sboyd@kernel.org>,  <robh+dt@kernel.org>,
  <krzysztof.kozlowski+dt@linaro.org>,  <khilman@baylibre.com>,
  <martin.blumenstingl@googlemail.com>,  <jian.hu@amlogic.com>,
  <kernel@sberdevices.ru>,  <rockosov@gmail.com>,
  <linux-amlogic@lists.infradead.org>,  <linux-clk@vger.kernel.org>,
  <devicetree@vger.kernel.org>,  <linux-kernel@vger.kernel.org>,
  <linux-arm-kernel@lists.infradead.org>,  Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v3 6/7] dt-bindings: clock: meson: add A1 CPU clock
 controller bindings
In-Reply-To: <20240515185103.20256-7-ddrokosov@salutedevices.com> (Dmitry
	Rokosov's message of "Wed, 15 May 2024 21:47:29 +0300")
References: <20240515185103.20256-1-ddrokosov@salutedevices.com>
	<20240515185103.20256-7-ddrokosov@salutedevices.com>
Date: Mon, 10 Jun 2024 12:04:09 +0200
Message-ID: <1jtti1p10m.fsf@starbuckisacylon.baylibre.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain

On Wed 15 May 2024 at 21:47, Dmitry Rokosov <ddrokosov@salutedevices.com> wrote:

> Add the documentation and dt bindings for Amlogic A1 CPU clock
> controller.
>
> This controller consists of the general 'cpu_clk' and two main parents:
> 'cpu fixed clock' and 'syspll'. The 'cpu fixed clock' is an internal
> fixed clock, while the 'syspll' serves as an external input from the A1
> PLL clock controller.
>
> Signed-off-by: Dmitry Rokosov <ddrokosov@salutedevices.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
>  .../bindings/clock/amlogic,a1-cpu-clkc.yaml   | 64 +++++++++++++++++++
>  .../dt-bindings/clock/amlogic,a1-cpu-clkc.h   | 19 ++++++
>  2 files changed, 83 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/clock/amlogic,a1-cpu-clkc.yaml
>  create mode 100644 include/dt-bindings/clock/amlogic,a1-cpu-clkc.h
>
> diff --git a/Documentation/devicetree/bindings/clock/amlogic,a1-cpu-clkc.yaml b/Documentation/devicetree/bindings/clock/amlogic,a1-cpu-clkc.yaml
> new file mode 100644
> index 000000000000..f4958b315ed4
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/clock/amlogic,a1-cpu-clkc.yaml
> @@ -0,0 +1,64 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/clock/amlogic,a1-cpu-clkc.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Amlogic A1 CPU Clock Control Unit
> +
> +maintainers:
> +  - Neil Armstrong <neil.armstrong@linaro.org>
> +  - Jerome Brunet <jbrunet@baylibre.com>
> +  - Dmitry Rokosov <ddrokosov@salutedevices.com>
> +
> +properties:
> +  compatible:
> +    const: amlogic,a1-cpu-clkc
> +
> +  '#clock-cells':
> +    const: 1
> +
> +  reg:
> +    maxItems: 1
> +
> +  clocks:
> +    items:
> +      - description: input fixed pll div2
> +      - description: input fixed pll div3
> +      - description: input sys pll
> +      - description: input oscillator (usually at 24MHz)

According to the documentation, fdiv5 is also an input of the CPU clock
tree.

That is typically the kind of things we'd prefer to get right from the
beginning to avoid modifying the bindings later.

> +
> +  clock-names:
> +    items:
> +      - const: fclk_div2
> +      - const: fclk_div3
> +      - const: sys_pll
> +      - const: xtal
> +
> +required:
> +  - compatible
> +  - '#clock-cells'
> +  - reg
> +  - clocks
> +  - clock-names
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/amlogic,a1-pll-clkc.h>
> +    apb {
> +        #address-cells = <2>;
> +        #size-cells = <2>;
> +
> +        clock-controller@fd000000 {
> +            compatible = "amlogic,a1-cpu-clkc";
> +            reg = <0 0xfd000080 0 0x8>;

If reg is <0 0xfd000080 0 0x8> then node name should be clock-controller@fd000080

> +            #clock-cells = <1>;
> +            clocks = <&clkc_pll CLKID_FCLK_DIV2>,
> +                     <&clkc_pll CLKID_FCLK_DIV3>,
> +                     <&clkc_pll CLKID_SYS_PLL>,
> +                     <&xtal>;
> +            clock-names = "fclk_div2", "fclk_div3", "sys_pll", "xtal";
> +        };
> +    };
> diff --git a/include/dt-bindings/clock/amlogic,a1-cpu-clkc.h b/include/dt-bindings/clock/amlogic,a1-cpu-clkc.h
> new file mode 100644
> index 000000000000..1d321c6eddb7
> --- /dev/null
> +++ b/include/dt-bindings/clock/amlogic,a1-cpu-clkc.h
> @@ -0,0 +1,19 @@
> +/* SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause */
> +/*
> + * Copyright (c) 2024, SaluteDevices. All Rights Reserved.
> + * Author: Dmitry Rokosov <ddrokosov@salutedevices.com>
> + */
> +
> +#ifndef __A1_CPU_CLKC_H
> +#define __A1_CPU_CLKC_H
> +
> +#define CLKID_CPU_FSOURCE_SEL0	0
> +#define CLKID_CPU_FSOURCE_DIV0	1
> +#define CLKID_CPU_FSEL0		2
> +#define CLKID_CPU_FSOURCE_SEL1	3
> +#define CLKID_CPU_FSOURCE_DIV1	4
> +#define CLKID_CPU_FSEL1		5
> +#define CLKID_CPU_FCLK		6
> +#define CLKID_CPU_CLK		7
> +
> +#endif /* __A1_CPU_CLKC_H */

-- 
Jerome

