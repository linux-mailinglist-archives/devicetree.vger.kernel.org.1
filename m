Return-Path: <devicetree+bounces-1734-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 71C427A7C41
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 14:00:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8C83E1C20401
	for <lists+devicetree@lfdr.de>; Wed, 20 Sep 2023 11:59:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CA712AB22;
	Wed, 20 Sep 2023 11:59:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E48E12AB21
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 11:59:55 +0000 (UTC)
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2DCB192
	for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 04:59:53 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-9aa0495f9cfso182798366b.1
        for <devicetree@vger.kernel.org>; Wed, 20 Sep 2023 04:59:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695211191; x=1695815991; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=N46lU5p0BnRUo8JJjDH0v6qnXmdpf6A9RpC24puqDNo=;
        b=rRNCQc7rAI4RQlWbdNpY4seCvsBnnu3bTFAKaqEqkvs90uucn2T4AoG/6LyeyBJ55+
         OT99OSAsy61xr5jyX5yMRA1jcwayTRA6uWGyuWmFi0ndEQ+PDT+Pjs9vOQXH7qfswRmU
         2PaLHqHuG6nCWw5zXB5eDTyCzCHcjDvDaOqhLrsn3FTCGfs3dgIxiAirtwGBZWrzRuTP
         Yg3VGWmKR5tZezHjGQEupg+f5QVAHWt7lVWyQAzfYZnT62jGsCEzeBNadSMvdvW/tZHa
         OF9apGc+RJs8hmPQu5oMxdBC71wI0EChlycPZRUeT+8dTRUl2bG/oZggxmaK8DUb1HCY
         i+iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695211191; x=1695815991;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=N46lU5p0BnRUo8JJjDH0v6qnXmdpf6A9RpC24puqDNo=;
        b=cE4hmW3BA41BCjCR0nUEIYwgwx7gZEk8qJxD+YlkB3Zuntx0VY0lLP6l+60I1H9HCr
         EWmRsbOp7scgCooPjSurwOHw0PpbpeaV23ozmjIOmT1JtW3G2dgs95mK0yTsH51dY6d6
         9/AVaMVkyQSAkES+oDH7BHyM3zwKaiIOwVj7muR6oHGjHf/Fn8litE1AED6Xt/pWYi13
         zEe+BW9bjYsClGkaZGfx/XJ9YfAPuLoAq2qwNd/rlmgZSYHdK6Euvx1JF9S3yHtRyEL2
         PuQdelWWUcz0gVEJL4njuATCMbON2Lm4kam9vpiHsx1YL9mq/lKkTV4wQ6oCE5IaSqM7
         N+cQ==
X-Gm-Message-State: AOJu0YxjVjsHOM66uJ57olKQcLwSHCwstJlaz8Sq/DRIocRnOajsXmn1
	Z4+JrPbA4dmTBAdA4sZ3F+Chvw==
X-Google-Smtp-Source: AGHT+IGnACKqgtYQF2pNy2P1QPZMSIK5/+BVvB5z1ir2z6NqSx7yASc1Y4QTK2+UcyiIoVPLWMKmVA==
X-Received: by 2002:a17:907:c17:b0:9a5:ca06:6a25 with SMTP id ga23-20020a1709070c1700b009a5ca066a25mr8480612ejc.16.1695211191629;
        Wed, 20 Sep 2023 04:59:51 -0700 (PDT)
Received: from [172.20.24.238] (static-212-193-78-212.thenetworkfactory.nl. [212.78.193.212])
        by smtp.gmail.com with ESMTPSA id x11-20020a170906148b00b0098e78ff1a87sm9201237ejc.120.2023.09.20.04.59.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Sep 2023 04:59:51 -0700 (PDT)
Message-ID: <e18fe9a1-99a9-5dc8-27fc-6a6b934d917e@linaro.org>
Date: Wed, 20 Sep 2023 13:59:49 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v2 10/11] riscv: dts: sophgo: add Milk-V Pioneer board
 device tree
Content-Language: en-US
To: Chen Wang <unicornxw@gmail.com>, aou@eecs.berkeley.edu,
 chao.wei@sophgo.com, conor@kernel.org, devicetree@vger.kernel.org,
 emil.renner.berthing@canonical.com, guoren@kernel.org, jszhang@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org, palmer@dabbelt.com,
 paul.walmsley@sifive.com, robh+dt@kernel.org, xiaoguang.xing@sophgo.com
Cc: Chen Wang <wangchen20@iscas.ac.cn>
References: <cover.1695189879.git.wangchen20@iscas.ac.cn>
 <e9ff83e4fac9a9ebd217ef10e5f8d3260342102b.1695189879.git.wangchen20@iscas.ac.cn>
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <e9ff83e4fac9a9ebd217ef10e5f8d3260342102b.1695189879.git.wangchen20@iscas.ac.cn>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 20/09/2023 08:40, Chen Wang wrote:
> Milk-V Pioneer [1] is a developer motherboard based on SOPHON
> SG2042 in a standard mATX form factor. It is a good
> choice for RISC-V developers and hardware pioneers to
> experience the cutting edge technology of RISC-V.
> 
> Currently only support booting into console with only uart
> enabled, other features will be added soon later.
> 
> [1]: https://milkv.io/pioneer
> 
> Acked-by: Xiaoguang Xing <xiaoguang.xing@sophgo.com>
> Signed-off-by: Chen Wang <wangchen20@iscas.ac.cn>
> ---
>  arch/riscv/boot/dts/Makefile                  |  1 +
>  arch/riscv/boot/dts/sophgo/Makefile           |  3 +++
>  .../boot/dts/sophgo/sg2042-milkv-pioneer.dts  | 19 +++++++++++++++++++
>  3 files changed, 23 insertions(+)
>  create mode 100644 arch/riscv/boot/dts/sophgo/Makefile
>  create mode 100644 arch/riscv/boot/dts/sophgo/sg2042-milkv-pioneer.dts
> 
> diff --git a/arch/riscv/boot/dts/Makefile b/arch/riscv/boot/dts/Makefile
> index f60a280abb15..94788486f13e 100644
> --- a/arch/riscv/boot/dts/Makefile
> +++ b/arch/riscv/boot/dts/Makefile
> @@ -6,5 +6,6 @@ subdir-y += renesas
>  subdir-y += sifive
>  subdir-y += starfive
>  subdir-y += thead
> +subdir-y += sophgo
>  
>  obj-$(CONFIG_BUILTIN_DTB) := $(addsuffix /, $(subdir-y))
> diff --git a/arch/riscv/boot/dts/sophgo/Makefile b/arch/riscv/boot/dts/sophgo/Makefile
> new file mode 100644
> index 000000000000..5a471b19df22
> --- /dev/null
> +++ b/arch/riscv/boot/dts/sophgo/Makefile
> @@ -0,0 +1,3 @@
> +# SPDX-License-Identifier: GPL-2.0
> +dtb-$(CONFIG_ARCH_SOPHGO) += sg2042-milkv-pioneer.dtb
> +
> diff --git a/arch/riscv/boot/dts/sophgo/sg2042-milkv-pioneer.dts b/arch/riscv/boot/dts/sophgo/sg2042-milkv-pioneer.dts
> new file mode 100644
> index 000000000000..d6e8c0285d1e
> --- /dev/null
> +++ b/arch/riscv/boot/dts/sophgo/sg2042-milkv-pioneer.dts
> @@ -0,0 +1,19 @@
> +// SPDX-License-Identifier: GPL-2.0 OR MIT
> +/*
> + * Copyright (C) 2022 Sophgo Technology Inc. All rights reserved.
> + */
> +
> +#include "sg2042.dtsi"
> +
> +/ {
> +	model = "Milk-V Pioneer";
> +	compatible = "milkv,pioneer", "sophgo,sg2042";
> +
> +	chosen: chosen {

Drop label, not used.


Best regards,
Krzysztof


