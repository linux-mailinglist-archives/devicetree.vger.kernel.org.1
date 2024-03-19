Return-Path: <devicetree+bounces-51448-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B5CCB87F603
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 04:22:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 476D31F212BD
	for <lists+devicetree@lfdr.de>; Tue, 19 Mar 2024 03:22:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 709777BAFE;
	Tue, 19 Mar 2024 03:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="noESFHcl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f45.google.com (mail-qv1-f45.google.com [209.85.219.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 916E97317D
	for <devicetree@vger.kernel.org>; Tue, 19 Mar 2024 03:22:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710818573; cv=none; b=aUi5PwVdSQ7d+r1AL0APf1X0QHenU4HYJim9NjX5GYKFzyq+YbBoK0SCFkHMliif9wqA2DfHg/gAmWQO1GZ++uRGy6OFNLwacTDuE8AKKvDIbPWFTl4Timn0xDwKuIz+gJV+X5Ov9aE5ag7GNzNccMTNTurwW19IDUNkEQ1WbO4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710818573; c=relaxed/simple;
	bh=XV/4qYUUqsZtiaCMZA5wf1yevwpa5sgxnUmhJQsi9qA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KTmcTv+4aT2SiGovJMYdS//K/Jzfc/zGUEyDO4rpz/qS03s9z7qRG1QAnBGiGpGODNktCiBatDJeEbPzpU7wZjUxdUD629dwCRTUBhzcuEkIUXfCVf39X3uirgkTuHkXGV4IaHXzYSv3FQsXSscCWt9CDEOlhYNd6RB7tmZEkBA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com; spf=pass smtp.mailfrom=sifive.com; dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b=noESFHcl; arc=none smtp.client-ip=209.85.219.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sifive.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sifive.com
Received: by mail-qv1-f45.google.com with SMTP id 6a1803df08f44-690c1747c3cso46467056d6.0
        for <devicetree@vger.kernel.org>; Mon, 18 Mar 2024 20:22:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1710818570; x=1711423370; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=jMw9a1z02q9ezrV1ZNQg91O+JjWFgILRbLm9d5yMuuc=;
        b=noESFHclqvXd6k6lIQy0vogl5h4TP4QMv45Ym4BrgqdJNfHYxhHQN4R2I7+5tO1sK0
         slpmFESOmH1z0KpOjOw6lU6Uhg3/wiDDF6thZWVFSiSh6SJo2HSwRZM9ENtbPVGyQ2u7
         GBtyseVYwc6oMHSIi2VGuLUXvek1INjFfHqWA0qv8yO2fdt6ClfPQOqeQW+Spi8jvMZL
         uv0el+bvFmgbLc1z0G3ncPkxdsd+yGrmJWIAEHddQCoEd4VQ3zUON7kzrpHVmG/P+t8p
         LbkBS8XUyGfj/G91njZXQ71PHqxZWgSEiYst89o1ZVYxPF+uODuwS/PlHavubX1GLIHn
         aSwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710818570; x=1711423370;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=jMw9a1z02q9ezrV1ZNQg91O+JjWFgILRbLm9d5yMuuc=;
        b=CkI9GzSoEldTP+65e7lyUhgIJSyh9EvwlYmNl3LV9CtkhqdmXZqpPZfqb0OwJb8Ngh
         LjlLuP1iyDZsPGlpwXjvqQIetM2qAgVSRaNyxFrAagW2vmx01w7IGxuvnRnPDYm2JNd0
         2nRSEyQep4EI7xFH6AlVEPpubb7+3lZE4A1SXGt9mxiMso5D+LjTjvNi5GH/nHVpsk/Z
         68gRjSwdGfB0VlAzK02Nm+dz53bDJ5YbfYbi74h3c8k72cHJ5n1JDv3E+krd8CZyePMt
         QKRMLXqS5GOCTr1iEY2bcWX7aJpthcJ2kUGwvYCtVglVxY3+Y1FbQNQJK1NmErmo44T4
         d9Uw==
X-Forwarded-Encrypted: i=1; AJvYcCWuTRNu9IX0M5d6n5wOUJgqoc3+/RvMQFd2mxTillwEUuonz6WytcSAYZnA+BvSvV/2HfnXdrhjwuGzl3zqYoQcIFdL52YveUcZhg==
X-Gm-Message-State: AOJu0Yy1IpZSUkvt6LZt1JGFkrn+fOJKeakzGIkS79lC1Jxdl0sznwiJ
	So8Wh/z+rkW3zSC5BXV3jtfaSZz5DYYtuxKY0rybCPDgQuWhfalTfoWed+01TI4=
X-Google-Smtp-Source: AGHT+IG8Y3FR9B/B9mSnEIBCA8gr+6fLKtICJUUHKawjSCnnvGpGfdMy55hTxouwueL4wMN6IN5QSA==
X-Received: by 2002:a05:6214:c49:b0:696:20b8:cfc5 with SMTP id r9-20020a0562140c4900b0069620b8cfc5mr2771527qvj.6.1710818570458;
        Mon, 18 Mar 2024 20:22:50 -0700 (PDT)
Received: from [100.64.0.1] ([136.226.86.189])
        by smtp.gmail.com with ESMTPSA id jx5-20020a0562142b0500b0068f4520e42dsm6034517qvb.16.2024.03.18.20.22.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 18 Mar 2024 20:22:50 -0700 (PDT)
Message-ID: <29f468c5-1aaa-4326-8088-e03a1d6b7174@sifive.com>
Date: Mon, 18 Mar 2024 22:22:47 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 1/4] dt-bindings: dmaengine: Add dmamux for
 CV18XX/SG200X series SoC
Content-Language: en-US
To: Inochi Amaoto <inochiama@outlook.com>, Vinod Koul <vkoul@kernel.org>,
 Rob Herring <robh@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: Jisheng Zhang <jszhang@kernel.org>, Liu Gui <kenneth.liu@sophgo.com>,
 Jingbao Qiu <qiujingbao.dlmu@gmail.com>, dlan@gentoo.org,
 dmaengine@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 Chen Wang <unicorn_wang@outlook.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>
References: <IA1PR20MB49536DED242092A49A69CEB6BB2D2@IA1PR20MB4953.namprd20.prod.outlook.com>
 <IA1PR20MB49532DE75E794419E58F9268BB2D2@IA1PR20MB4953.namprd20.prod.outlook.com>
From: Samuel Holland <samuel.holland@sifive.com>
In-Reply-To: <IA1PR20MB49532DE75E794419E58F9268BB2D2@IA1PR20MB4953.namprd20.prod.outlook.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 2024-03-18 1:38 AM, Inochi Amaoto wrote:
> The DMA IP of Sophgo CV18XX/SG200X is based on a DW AXI CORE, with
> an additional channel remap register located in the top system control
> area. The DMA channel is exclusive to each core.
> 
> Add the dmamux binding for CV18XX/SG200X series SoC
> 
> Signed-off-by: Inochi Amaoto <inochiama@outlook.com>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
>  .../bindings/dma/sophgo,cv1800-dmamux.yaml    | 47 ++++++++++++++++
>  include/dt-bindings/dma/cv1800-dma.h          | 55 +++++++++++++++++++
>  2 files changed, 102 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/dma/sophgo,cv1800-dmamux.yaml
>  create mode 100644 include/dt-bindings/dma/cv1800-dma.h
> 
> diff --git a/Documentation/devicetree/bindings/dma/sophgo,cv1800-dmamux.yaml b/Documentation/devicetree/bindings/dma/sophgo,cv1800-dmamux.yaml
> new file mode 100644
> index 000000000000..c813c66737ba
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/dma/sophgo,cv1800-dmamux.yaml
> @@ -0,0 +1,47 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/dma/sophgo,cv1800-dmamux.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Sophgo CV1800/SG200 Series DMA mux
> +
> +maintainers:
> +  - Inochi Amaoto <inochiama@outlook.com>
> +
> +allOf:
> +  - $ref: dma-router.yaml#
> +
> +properties:
> +  compatible:
> +    const: sophgo,cv1800-dmamux
> +
> +  reg:
> +    maxItems: 2
> +
> +  '#dma-cells':
> +    const: 3
> +    description:
> +      The first cells is DMA channel. The second one is device id.
> +      The third one is the cpu id.

There are 43 devices, but only 8 channels. Since the channel is statically
specified in the devicetree as the first cell here, that means the SoC DT author
must pre-select which 8 of the 43 devices are usable, right? And then the rest
would have to omit their dma properties. Wouldn't it be better to leave out the
channel number here and dynamically allocate channels at runtime?

Regards,
Samuel

> +
> +  dma-masters:
> +    maxItems: 1
> +
> +  dma-requests:
> +    const: 8
> +
> +required:
> +  - '#dma-cells'
> +  - dma-masters
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    dma-router {
> +      compatible = "sophgo,cv1800-dmamux";
> +      #dma-cells = <3>;
> +      dma-masters = <&dmac>;
> +      dma-requests = <8>;
> +    };
> diff --git a/include/dt-bindings/dma/cv1800-dma.h b/include/dt-bindings/dma/cv1800-dma.h
> new file mode 100644
> index 000000000000..3ce9dac25259
> --- /dev/null
> +++ b/include/dt-bindings/dma/cv1800-dma.h
> @@ -0,0 +1,55 @@
> +/* SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause */
> +
> +#ifndef __DT_BINDINGS_DMA_CV1800_H__
> +#define __DT_BINDINGS_DMA_CV1800_H__
> +
> +#define DMA_I2S0_RX		0
> +#define DMA_I2S0_TX		1
> +#define DMA_I2S1_RX		2
> +#define DMA_I2S1_TX		3
> +#define DMA_I2S2_RX		4
> +#define DMA_I2S2_TX		5
> +#define DMA_I2S3_RX		6
> +#define DMA_I2S3_TX		7
> +#define DMA_UART0_RX		8
> +#define DMA_UART0_TX		9
> +#define DMA_UART1_RX		10
> +#define DMA_UART1_TX		11
> +#define DMA_UART2_RX		12
> +#define DMA_UART2_TX		13
> +#define DMA_UART3_RX		14
> +#define DMA_UART3_TX		15
> +#define DMA_SPI0_RX		16
> +#define DMA_SPI0_TX		17
> +#define DMA_SPI1_RX		18
> +#define DMA_SPI1_TX		19
> +#define DMA_SPI2_RX		20
> +#define DMA_SPI2_TX		21
> +#define DMA_SPI3_RX		22
> +#define DMA_SPI3_TX		23
> +#define DMA_I2C0_RX		24
> +#define DMA_I2C0_TX		25
> +#define DMA_I2C1_RX		26
> +#define DMA_I2C1_TX		27
> +#define DMA_I2C2_RX		28
> +#define DMA_I2C2_TX		29
> +#define DMA_I2C3_RX		30
> +#define DMA_I2C3_TX		31
> +#define DMA_I2C4_RX		32
> +#define DMA_I2C4_TX		33
> +#define DMA_TDM0_RX		34
> +#define DMA_TDM0_TX		35
> +#define DMA_TDM1_RX		36
> +#define DMA_AUDSRC		37
> +#define DMA_SPI_NAND		38
> +#define DMA_SPI_NOR		39
> +#define DMA_UART4_RX		40
> +#define DMA_UART4_TX		41
> +#define DMA_SPI_NOR1		42
> +
> +#define DMA_CPU_A53		0
> +#define DMA_CPU_C906_0		1
> +#define DMA_CPU_C906_1		2
> +
> +
> +#endif // __DT_BINDINGS_DMA_CV1800_H__
> --
> 2.44.0
> 
> 
> _______________________________________________
> linux-riscv mailing list
> linux-riscv@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-riscv


