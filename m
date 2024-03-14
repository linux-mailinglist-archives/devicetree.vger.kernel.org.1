Return-Path: <devicetree+bounces-50529-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B77187BFB9
	for <lists+devicetree@lfdr.de>; Thu, 14 Mar 2024 16:18:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9C8A01C22701
	for <lists+devicetree@lfdr.de>; Thu, 14 Mar 2024 15:17:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48ED971B27;
	Thu, 14 Mar 2024 15:17:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=dabbelt-com.20230601.gappssmtp.com header.i=@dabbelt-com.20230601.gappssmtp.com header.b="qnFbAn0o"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f178.google.com (mail-pf1-f178.google.com [209.85.210.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E1CD7175F
	for <devicetree@vger.kernel.org>; Thu, 14 Mar 2024 15:17:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710429474; cv=none; b=e2+Aq2Wl1nLep4g+n/hMaJD7tCPqcZ7/4ec40hSfFB16tUqnGL1MDlo4CozvglPW6SUXIyfrl1eT6pmCJCQX1cgsrWpbaI+UBLFNw5ZneGPz75C6iSVYtr6ik8MHJ5Mfse3QI9fx5Iue7U3Ega3+Q9gWjvAVg4dgLJ/Y5bUwuN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710429474; c=relaxed/simple;
	bh=7SXsZjSvlbrRkao8Sk8K0y/JNuwrXMp1XO6T5q4bOCQ=;
	h=Date:Subject:In-Reply-To:CC:From:To:Message-ID:Mime-Version:
	 Content-Type; b=DdUX/U1SFO2O/8sKSGCdu8G9zPFTCTnWEUV7J8KLdjIbJgKaghusOMJEvkR1OyIpcUmIx14ZNWtKFTUi+iunYFBo5UoCBhKtouNTIkQH+agZZ5yzT6SJ9Tj++wujjo6diwl+6Ejcfbc7fFz8jF3r9rKLhblsEiTXurpLBw3ICwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=dabbelt.com; spf=pass smtp.mailfrom=dabbelt.com; dkim=pass (2048-bit key) header.d=dabbelt-com.20230601.gappssmtp.com header.i=@dabbelt-com.20230601.gappssmtp.com header.b=qnFbAn0o; arc=none smtp.client-ip=209.85.210.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=dabbelt.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=dabbelt.com
Received: by mail-pf1-f178.google.com with SMTP id d2e1a72fcca58-6e6c8b1ccd7so900231b3a.0
        for <devicetree@vger.kernel.org>; Thu, 14 Mar 2024 08:17:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=dabbelt-com.20230601.gappssmtp.com; s=20230601; t=1710429470; x=1711034270; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8JL0iEjRkP+Wzhg7yrg5gEUCCcXYJeQFMMh/fE8SWiQ=;
        b=qnFbAn0orBtJdRrZlUxspv1fJ4keXy1Qk5AV0UXv5ulWPQwFHqiCAonEeXoshmIG35
         e0xFfsXboEOmE5lVtGKEIJ5XlcPLEEIZtERtU8dZ/JO7RGwnaAEv5am5x70m0YZGJX6Z
         zQlsMrtB+3tVqIlyEsvqYd3Qnhxt7Wa5eZhQABF/dQZsx29EIjnL9WTLnwJF+ea6Ee3f
         W3jY40pzIYo6OlDBaFkYBRg4iXMupwAwaJ7kO4BGFeHF3RcIhVEoOSbf0HBfdGClAV60
         7A0TNPJ8a1RSXjIiQFNrLR9Hd6s6GniV0DrVb7jC2FHMO4yzqsvzegStslkLgPYgw/RV
         BiAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1710429470; x=1711034270;
        h=content-transfer-encoding:mime-version:message-id:to:from:cc
         :in-reply-to:subject:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8JL0iEjRkP+Wzhg7yrg5gEUCCcXYJeQFMMh/fE8SWiQ=;
        b=v6MpJ3DKfr+zQ8X62fSU+IZm1M+hxAcNFj9VSP/Z8xzJscB6RS7aD/mqGHm8kEuiPu
         w42xZmKNCk/lJbb8APS6zzqIxloNHMtVKdS+ctKJcAWOe2QA/DUfeElTiFJEZ4wPqv+Q
         M416nxtWQOM1xZS+muAbeMg7otugSw2EYVpvLugQOEHlJxLZBHQbrsTtcGhJ1eTf1l/e
         dmPgsFsd5n2ul6KZswOcxicln+2qXMJCVvQltyVbxHAN5i4Xp0DJI9mA2A5uSd8f3Mfs
         o/pmCTYA+Jw4TF+X7xzaPeY3e0+Dn9GOGAdp7RpY/BZBtgbE8X1l1n7Qvh+ebSVD04Me
         c5Sg==
X-Forwarded-Encrypted: i=1; AJvYcCVFyf3K+hsB1tgecKCZjq22BO6rNEAhbBjDTzwm7m8yaSFTchLl6uZXnYTjtoNB9pgeHL0ND6qZyNyDXx9kti8lHCeGGD5RwKErww==
X-Gm-Message-State: AOJu0Yy+VKnpBLh07xL2lyvlQTRJ7fMtbnsw5z38IoAN5SYG47vzGJDI
	hfdukuQiYd6SriMsFLjYmqHa5ieGYDk+gO0bSKqCyLgJRQP9x2ESWbdfg4igO1E=
X-Google-Smtp-Source: AGHT+IEMhsHjN9EHuuqrjhD85KwDVF/OLncdHir9Xb2P1FgONAts1jSMZ0pcHNGdzquENbjdvIjLqg==
X-Received: by 2002:a05:6a20:e107:b0:1a1:6a45:98db with SMTP id kr7-20020a056a20e10700b001a16a4598dbmr465045pzb.2.1710429470370;
        Thu, 14 Mar 2024 08:17:50 -0700 (PDT)
Received: from localhost ([192.184.165.199])
        by smtp.gmail.com with ESMTPSA id f5-20020a170902684500b001db608107ecsm1856324pln.167.2024.03.14.08.17.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Mar 2024 08:17:49 -0700 (PDT)
Date: Thu, 14 Mar 2024 08:17:49 -0700 (PDT)
X-Google-Original-Date: Thu, 14 Mar 2024 08:17:44 PDT (-0700)
Subject:     Re: [PATCH v3 1/4] dt-bindings: reset: sophgo: support SG2042
In-Reply-To: <35c348437b6e18972ccaf90d9c38040caccd1f11.1706577450.git.unicorn_wang@outlook.com>
CC: aou@eecs.berkeley.edu, chao.wei@sophgo.com, Conor Dooley <conor@kernel.org>,
  krzysztof.kozlowski+dt@linaro.org, Paul Walmsley <paul.walmsley@sifive.com>, p.zabel@pengutronix.de,
  robh+dt@kernel.org, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
  linux-riscv@lists.infradead.org, haijiao.liu@sophgo.com, xiaoguang.xing@sophgo.com, guoren@kernel.org,
  jszhang@kernel.org, unicorn_wang@outlook.com, krzysztof.kozlowski@linaro.org
From: Palmer Dabbelt <palmer@dabbelt.com>
To: unicornxw@gmail.com, inochiama@outlook.com, arnd@kernel.org
Message-ID: <mhng-3e62b204-0a40-4356-888f-060c0515c286@palmer-ri-x1c9>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On Mon, 29 Jan 2024 17:49:45 PST (-0800), unicornxw@gmail.com wrote:
> From: Chen Wang <unicorn_wang@outlook.com>
>
> Add bindings for the reset generator on the SOPHGO SG2042 RISC-V SoC.
>
> Signed-off-by: Chen Wang <unicorn_wang@outlook.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>  .../bindings/reset/sophgo,sg2042-reset.yaml   | 35 ++++++++
>  .../dt-bindings/reset/sophgo,sg2042-reset.h   | 87 +++++++++++++++++++
>  2 files changed, 122 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/reset/sophgo,sg2042-reset.yaml
>  create mode 100644 include/dt-bindings/reset/sophgo,sg2042-reset.h
>
> diff --git a/Documentation/devicetree/bindings/reset/sophgo,sg2042-reset.yaml b/Documentation/devicetree/bindings/reset/sophgo,sg2042-reset.yaml
> new file mode 100644
> index 000000000000..76e1931f0908
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/reset/sophgo,sg2042-reset.yaml
> @@ -0,0 +1,35 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/reset/sophgo,sg2042-reset.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Sophgo SG2042 SoC Reset Controller
> +
> +maintainers:
> +  - Chen Wang <unicorn_wang@outlook.com>
> +
> +properties:
> +  compatible:
> +    const: sophgo,sg2042-reset
> +
> +  reg:
> +    maxItems: 1
> +
> +  "#reset-cells":
> +    const: 1
> +
> +required:
> +  - compatible
> +  - reg
> +  - "#reset-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    rstgen: reset-controller@c00 {
> +        compatible = "sophgo,sg2042-reset";
> +        reg = <0xc00 0xc>;
> +        #reset-cells = <1>;
> +    };
> diff --git a/include/dt-bindings/reset/sophgo,sg2042-reset.h b/include/dt-bindings/reset/sophgo,sg2042-reset.h
> new file mode 100644
> index 000000000000..9ab0980625c1
> --- /dev/null
> +++ b/include/dt-bindings/reset/sophgo,sg2042-reset.h
> @@ -0,0 +1,87 @@
> +/* SPDX-License-Identifier: GPL-2.0 OR BSD-2-Clause */
> +/*
> + * Copyright (C) 2023 Sophgo Technology Inc. All rights reserved.
> + */
> +
> +#ifndef __DT_BINDINGS_RESET_SOPHGO_SG2042_H_
> +#define __DT_BINDINGS_RESET_SOPHGO_SG2042_H_
> +
> +#define RST_MAIN_AP			0
> +#define RST_RISCV_CPU			1
> +#define RST_RISCV_LOW_SPEED_LOGIC	2
> +#define RST_RISCV_CMN			3
> +#define RST_HSDMA			4
> +#define RST_SYSDMA			5
> +#define RST_EFUSE0			6
> +#define RST_EFUSE1			7
> +#define RST_RTC				8
> +#define RST_TIMER			9
> +#define RST_WDT				10
> +#define RST_AHB_ROM0			11
> +#define RST_AHB_ROM1			12
> +#define RST_I2C0			13
> +#define RST_I2C1			14
> +#define RST_I2C2			15
> +#define RST_I2C3			16
> +#define RST_GPIO0			17
> +#define RST_GPIO1			18
> +#define RST_GPIO2			19
> +#define RST_PWM				20
> +#define RST_AXI_SRAM0			21
> +#define RST_AXI_SRAM1			22
> +#define RST_SF0				23
> +#define RST_SF1				24
> +#define RST_LPC				25
> +#define RST_ETH0			26
> +#define RST_EMMC			27
> +#define RST_SD				28
> +#define RST_UART0			29
> +#define RST_UART1			30
> +#define RST_UART2			31
> +#define RST_UART3			32
> +#define RST_SPI0			33
> +#define RST_SPI1			34
> +#define RST_DBG_I2C			35
> +#define RST_PCIE0			36
> +#define RST_PCIE1			37
> +#define RST_DDR0			38
> +#define RST_DDR1			39
> +#define RST_DDR2			40
> +#define RST_DDR3			41
> +#define RST_FAU0			42
> +#define RST_FAU1			43
> +#define RST_FAU2			44
> +#define RST_RXU0			45
> +#define RST_RXU1			46
> +#define RST_RXU2			47
> +#define RST_RXU3			48
> +#define RST_RXU4			49
> +#define RST_RXU5			50
> +#define RST_RXU6			51
> +#define RST_RXU7			52
> +#define RST_RXU8			53
> +#define RST_RXU9			54
> +#define RST_RXU10			55
> +#define RST_RXU11			56
> +#define RST_RXU12			57
> +#define RST_RXU13			58
> +#define RST_RXU14			59
> +#define RST_RXU15			60
> +#define RST_RXU16			61
> +#define RST_RXU17			62
> +#define RST_RXU18			63
> +#define RST_RXU19			64
> +#define RST_RXU20			65
> +#define RST_RXU21			66
> +#define RST_RXU22			67
> +#define RST_RXU23			68
> +#define RST_RXU24			69
> +#define RST_RXU25			70
> +#define RST_RXU26			71
> +#define RST_RXU27			72
> +#define RST_RXU28			73
> +#define RST_RXU29			74
> +#define RST_RXU30			75
> +#define RST_RXU31			76
> +
> +#endif /* __DT_BINDINGS_RESET_SOPHGO_SG2042_H_ */

This is now

Fixes: 1ce7587e507e ("riscv: dts: add reset generator for Sophgo SG2042 SoC")

which landed in Linus' tree.  Looks like that went up via Inochi and 
Arnd.  I don't have that in my for-next yet, so I'm just stashing away 
this patch for my tester.

I'm happy to pick this up if folks want, but it'll probably be cleaner 
somewhere else.

