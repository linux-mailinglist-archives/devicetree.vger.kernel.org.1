Return-Path: <devicetree+bounces-15257-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AB8E7E9445
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 02:51:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8BA321C2039E
	for <lists+devicetree@lfdr.de>; Mon, 13 Nov 2023 01:51:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E13D4256A;
	Mon, 13 Nov 2023 01:51:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sifive.com header.i=@sifive.com header.b="NCoZiwMb"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 318484C86
	for <devicetree@vger.kernel.org>; Mon, 13 Nov 2023 01:51:25 +0000 (UTC)
Received: from mail-qk1-x731.google.com (mail-qk1-x731.google.com [IPv6:2607:f8b0:4864:20::731])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1E20E10CE
	for <devicetree@vger.kernel.org>; Sun, 12 Nov 2023 17:51:23 -0800 (PST)
Received: by mail-qk1-x731.google.com with SMTP id af79cd13be357-7788fb06997so270513785a.0
        for <devicetree@vger.kernel.org>; Sun, 12 Nov 2023 17:51:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1699840282; x=1700445082; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=R378FExkHzP2VzkDzW+qUJ+cmJ8zn3bLFBB62/9VsOI=;
        b=NCoZiwMblU9oYsTOUGuMZ/S9N+idK4BRoc3JZLZLNikCCZzcYnN9+kBNyK4iUNb8HS
         FqiRQQKanI8skdA6HjBDekWsymwmpD92mduLu5BBVQmt0n7ZGxwf25iCiLvjEjAVD/6x
         Hn4vWJKx+BIWG8ESFsbSvrwagLoSf/oPNyYPUgaBA89STBtGm4K0RJeLd/Nx2LA6L8jd
         wGpTyVInC4Aq2DEN8Qkui/0mgAgDLtXIrGD55cLt9tm29yd8h41UTqtTHXF9biDhvhMd
         5QRLePHnDdnJZJEGa0NMJPsJ3ZS/S18UupEYhwL8Vdq4phXn7N3c18nClopcjFL6y0sa
         PH8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699840282; x=1700445082;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=R378FExkHzP2VzkDzW+qUJ+cmJ8zn3bLFBB62/9VsOI=;
        b=tdj8RPDVA6isNI5lOxDRTN3Mrx1/Jz/NMslJTldoMm1n9HFaM21d0S1p2NXwkxxLkd
         0uwCsGAkhcuoUy443ifTLbGwbqCT26eyEZG1EePUYHRJ2cgDnS1/zv1peixXIc3tSJ37
         /smxCUn+iVjSVBSAsmq5R/2rTIbcEU93o05M069J8MYjrKUrzx17xBTxT6Z0Jhw/CAnS
         CNcleVqALkw0lrd8Ak/jLwTeBdMXQvcojEiJTJ/kDfpuYrmwJnj3I1MTaYY3PtIrQnzL
         lrr3IWWeh0ijooDVoX/rIStz0XLZKU2keyMOsdJ+KzG6+34YRCPUfnONbnl8YZGNVuqM
         YW5w==
X-Gm-Message-State: AOJu0Yw0r7NoY6/8mw90xDL3OnVKDBGJG0+QAQJGiOrCyyqhEu/MVOYU
	4IxzF4xEp6sYsztVNgD+8kBaDw==
X-Google-Smtp-Source: AGHT+IEpsIM39+Xr+deRLACCKfM/ZtDIBoL1z9PFUA6Uub4QcFPMTkbCpis5giJAUWzMah7AijAvFg==
X-Received: by 2002:a05:620a:d93:b0:774:131c:854d with SMTP id q19-20020a05620a0d9300b00774131c854dmr6521604qkl.72.1699840282224;
        Sun, 12 Nov 2023 17:51:22 -0800 (PST)
Received: from [192.168.142.156] ([50.235.11.61])
        by smtp.gmail.com with ESMTPSA id o17-20020a05620a131100b007659935ce64sm1507945qkj.71.2023.11.12.17.51.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 12 Nov 2023 17:51:21 -0800 (PST)
Message-ID: <58a99001-8260-4970-9fc7-25fe81e557a5@sifive.com>
Date: Sun, 12 Nov 2023 20:51:20 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] riscv: dts: cv1800b: add pinctrl node for cv1800b
Content-Language: en-US
To: Jisheng Zhang <jszhang@kernel.org>, devicetree@vger.kernel.org,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Chao Wei <chao.wei@sophgo.com>, Chen Wang <unicorn_wang@outlook.com>
References: <20231113005702.2467-1-jszhang@kernel.org>
 <20231113005702.2467-2-jszhang@kernel.org>
From: Samuel Holland <samuel.holland@sifive.com>
In-Reply-To: <20231113005702.2467-2-jszhang@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Level: *

On 2023-11-12 6:57 PM, Jisheng Zhang wrote:
> Add the reset device tree node to cv1800b SoC reusing the
          ^^^^^
          I assume you mean pinctrl here?

> pinctrl-single driver.
> 
> Signed-off-by: Jisheng Zhang <jszhang@kernel.org>
> ---
>  arch/riscv/boot/dts/sophgo/cv-pinctrl.h | 19 +++++++++++++++++++
>  arch/riscv/boot/dts/sophgo/cv1800b.dtsi | 10 ++++++++++
>  2 files changed, 29 insertions(+)
>  create mode 100644 arch/riscv/boot/dts/sophgo/cv-pinctrl.h
> 
> diff --git a/arch/riscv/boot/dts/sophgo/cv-pinctrl.h b/arch/riscv/boot/dts/sophgo/cv-pinctrl.h
> new file mode 100644
> index 000000000000..ed78b6fb3142
> --- /dev/null
> +++ b/arch/riscv/boot/dts/sophgo/cv-pinctrl.h

A couple of questions: Should this go in include/dt-bindings? And is it worth
including macros for the actual function mappings, like in the vendor source[1]?

[1]:
https://github.com/milkv-duo/duo-buildroot-sdk/blob/develop/linux_5.10/drivers/pinctrl/cvitek/cv180x_pinlist_swconfig.h

> @@ -0,0 +1,19 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
> +/*
> + * This header provides constants for pinctrl bindings for Sophgo CV* SoC.
> + *
> + * Copyright (C) 2023 Jisheng Zhang <jszhang@kernel.org>
> + */
> +#ifndef _DTS_RISCV_SOPHGO_CV_PINCTRL_H
> +#define _DTS_RISCV_SOPHGO_CV_PINCTRL_H
> +
> +#define MUX_M0		0
> +#define MUX_M1		1
> +#define MUX_M2		2
> +#define MUX_M3		3
> +#define MUX_M4		4
> +#define MUX_M5		5
> +#define MUX_M6		6
> +#define MUX_M7		7
> +
> +#endif
> diff --git a/arch/riscv/boot/dts/sophgo/cv1800b.dtsi b/arch/riscv/boot/dts/sophgo/cv1800b.dtsi
> index e04df04a91c0..7a44d8e8672b 100644
> --- a/arch/riscv/boot/dts/sophgo/cv1800b.dtsi
> +++ b/arch/riscv/boot/dts/sophgo/cv1800b.dtsi
> @@ -6,6 +6,8 @@
>  #include <dt-bindings/interrupt-controller/irq.h>
>  #include <dt-bindings/reset/sophgo,cv1800b-reset.h>
>  
> +#include "cv-pinctrl.h"
> +
>  / {
>  	compatible = "sophgo,cv1800b";
>  	#address-cells = <1>;
> @@ -55,6 +57,14 @@ soc {
>  		dma-noncoherent;
>  		ranges;
>  
> +		pinctrl0: pinctrl@3001000 {
> +			compatible = "pinctrl-single";
> +			reg = <0x3001000 0x130>;
> +			#pinctrl-cells = <1>;
> +			pinctrl-single,register-width = <32>;
> +			pinctrl-single,function-mask = <0x00000007>;
> +		};

From the vendor driver[2], it looks like this peripheral block only handles
pinmuxing, so indeed this looks like a good use of pinctrl-single.

[2]:
https://github.com/milkv-duo/duo-buildroot-sdk/blob/develop/linux_5.10/drivers/pinctrl/cvitek/pinctrl-cv180x.h

> +
>  		rst: reset-controller@3003000 {
>  			compatible = "sophgo,cv1800b-reset";
>  			reg = <0x03003000 0x1000>;


