Return-Path: <devicetree+bounces-16346-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 474B67EE543
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 17:36:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E7DA32810B4
	for <lists+devicetree@lfdr.de>; Thu, 16 Nov 2023 16:36:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7758C31597;
	Thu, 16 Nov 2023 16:36:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from mail-oa1-f49.google.com (mail-oa1-f49.google.com [209.85.160.49])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 85EB1AD;
	Thu, 16 Nov 2023 08:36:06 -0800 (PST)
Received: by mail-oa1-f49.google.com with SMTP id 586e51a60fabf-1efabc436e4so502313fac.1;
        Thu, 16 Nov 2023 08:36:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700152566; x=1700757366;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=a5Wjrv89VUF6VK+5eLlsl+F92OjgJxoSWW7Pt0LnUc0=;
        b=dO8sBO59oReb/MZJL5O/aEY2LxHyoLFIddVXYHfRZA+PxA1FB+djQ630frEkwGFjTW
         pK/Bi+ga92m18OyH3GSww4uSe8j50sIpY2iNwfeD32V1IZtxtmU0M/sPFqzanoYLOnjx
         2JW06Jy6OoACmW3B6yYOdu0NfYZTT1B2g+ux5R2nbPRIsF73FqaIVrfzRc9yk74053ei
         qawk+G8CLI+Z1lElIM65uY++rqs8I74RsVKqYr+bUzuFu8xRwu68ZG37R52J/CHjDJtc
         FRRcEpiipRC3Kd27ox7MqyvqS0QAzyf5uWk3CPvTeXgWEf3+YOBLOKBzbKs/qrH+sYll
         KHrA==
X-Gm-Message-State: AOJu0Yyf6CiIAe3bGj+WZYjI3JyYVYt4dqJIeRAKBHlO+hkVhX0xcN+N
	SOH4qt8l2ba1mdUEgl4png==
X-Google-Smtp-Source: AGHT+IF3gy4IUmEGMCjjYmdSclHOPslU2XoqVhRBKPtIzVctlJ4JUPqPVYgJKXB/qDqsNymCUQ1jaQ==
X-Received: by 2002:a05:6871:a302:b0:1f4:a122:6b02 with SMTP id vx2-20020a056871a30200b001f4a1226b02mr17782043oab.45.1700152563863;
        Thu, 16 Nov 2023 08:36:03 -0800 (PST)
Received: from herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id ec21-20020a0568708c1500b001e5ad4b2f65sm2216550oab.19.2023.11.16.08.36.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 16 Nov 2023 08:36:03 -0800 (PST)
Received: (nullmailer pid 2446073 invoked by uid 1000);
	Thu, 16 Nov 2023 16:36:02 -0000
Date: Thu, 16 Nov 2023 10:36:02 -0600
From: Rob Herring <robh@kernel.org>
To: Jisheng Zhang <jszhang@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, Chao Wei <chao.wei@sophgo.com>, Chen Wang <unicorn_wang@outlook.com>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: Re: [PATCH 1/2] riscv: dts: cv1800b: add pinctrl node for cv1800b
Message-ID: <20231116163602.GA2440245-robh@kernel.org>
References: <20231113005702.2467-1-jszhang@kernel.org>
 <20231113005702.2467-2-jszhang@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20231113005702.2467-2-jszhang@kernel.org>

On Mon, Nov 13, 2023 at 08:57:01AM +0800, Jisheng Zhang wrote:
> Add the reset device tree node to cv1800b SoC reusing the
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
> @@ -0,0 +1,19 @@
> +/* SPDX-License-Identifier: GPL-2.0 */

Please match the licensing of the file(s) that include this. Not that 
there really anything 

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

I find defines with the number in the name to be somewhat pointless.

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

Even more pointless is the defines are not even used.

> +
>  		rst: reset-controller@3003000 {
>  			compatible = "sophgo,cv1800b-reset";
>  			reg = <0x03003000 0x1000>;
> -- 
> 2.42.0
> 

