Return-Path: <devicetree+bounces-4437-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 97A477B2990
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 02:30:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 23645282595
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 00:30:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AA965646;
	Fri, 29 Sep 2023 00:30:51 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 311AE10FA
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 00:30:50 +0000 (UTC)
Received: from mail-qv1-xf34.google.com (mail-qv1-xf34.google.com [IPv6:2607:f8b0:4864:20::f34])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4F8351A3
	for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 17:30:48 -0700 (PDT)
Received: by mail-qv1-xf34.google.com with SMTP id 6a1803df08f44-65af7d102b3so65496276d6.1
        for <devicetree@vger.kernel.org>; Thu, 28 Sep 2023 17:30:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google; t=1695947447; x=1696552247; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=atEB7wjnfyIdR+cI94PXlHFbCfo6brMiQMFpy3s241U=;
        b=cijoMD3UATZPstSif7qtw9XrrWff8Ty/4+1i1c3pfR6GeTs2gUOaj5mnaB00ar9TvQ
         URTXi7rF4JzJ8qWhqSLlgv2mgYJhfEZLZ4QZyjZItSyJLW7EndY16g8IbR7unadVTZWH
         LNNg8GoXQY2vo/KiiokMnWANnE2yBv5p8nSkcL6yvylsN8768qe/0JrSoqOe8vvn52+p
         aFir0WFmg9kIe4dboae7okpeSnGyxPdb0wF037m5e3MvSobK+r/mrX2EZ5ZsWPr5Oab9
         1ym9f4E8A0PFSTabe94Fw2+d3zME1hIJj3k7bHNhj2RHwKmIbWzINuCyglXK5sQ0jv5I
         pzlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695947447; x=1696552247;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=atEB7wjnfyIdR+cI94PXlHFbCfo6brMiQMFpy3s241U=;
        b=AAAU0rB6UXz2tU2Vnk56j8j7YfPemlPG49Dli5D5oWI1jdxeL8tT1evmjukzez1BBU
         CfhvEJYiKpW/uEAssXVcYaPoKwuhJFSMPsNT/O3iseEHfUE3Gg9dqyxdFrdnNp6vYNrn
         0aeSGo5qGYzKPimIImu9222UiUaXXuqZbkfnKLAshhVk7u+kle2252HlnSIYx/io+d/M
         rT7VY10UdjYQCRfOxqTN7Js8bozNFqWnr9rSSJi6hk5w+Q/VwlUqjHcwlrPpn/slElU3
         2qsl7XQsZxuGcLv2x9oPVJKa8A6cuxN6ENDfIgE+rqqS1HlIhzpckoekrw5HBOj4EUYl
         9wTA==
X-Gm-Message-State: AOJu0Yx/XtC3BuMfloBkUDeD27kkBnWsSAnfH8OPCzGlBS+L2rexRrdG
	jIYfk8i8p4ODB8gA7/f9u9z06ycgzYNmfoTL3STLXmZH
X-Google-Smtp-Source: AGHT+IEYm7+id3//cfxcIDRfW/DYDioXQBn/ZqKu09zqWg0PZQxdEAy8zuztSY5h7LmqGu3r0JstLg==
X-Received: by 2002:a0c:cb88:0:b0:65b:1468:8210 with SMTP id p8-20020a0ccb88000000b0065b14688210mr2774211qvk.23.1695947447439;
        Thu, 28 Sep 2023 17:30:47 -0700 (PDT)
Received: from ?IPV6:2600:1700:2000:b002:5086:8bae:a4b0:bdad? ([2600:1700:2000:b002:5086:8bae:a4b0:bdad])
        by smtp.gmail.com with ESMTPSA id q5-20020a0cf5c5000000b0065d105f6931sm759933qvm.59.2023.09.28.17.30.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 28 Sep 2023 17:30:47 -0700 (PDT)
Message-ID: <3d9eb660-e255-4477-a04b-6db8d249a20d@sifive.com>
Date: Thu, 28 Sep 2023 19:30:46 -0500
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] riscv: dts: renesas: rzfive-smarc: Drop dma
 properties from SSI1 node
Content-Language: en-US
To: Prabhakar <prabhakar.csengg@gmail.com>,
 Geert Uytterhoeven <geert+renesas@glider.be>,
 Magnus Damm <magnus.damm@gmail.com>, Conor Dooley <conor+dt@kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt
 <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>
Cc: Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-renesas-soc@vger.kernel.org, devicetree@vger.kernel.org,
 linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
 Biju Das <biju.das.jz@bp.renesas.com>,
 Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
References: <20230929000704.53217-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
 <20230929000704.53217-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
From: Samuel Holland <samuel.holland@sifive.com>
In-Reply-To: <20230929000704.53217-5-prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Hi Prabhakar,

On 2023-09-28 7:07 PM, Prabhakar wrote:
> From: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> 
> With DMA enabled audio capture/playback has some echo noise. So for
> now switch to PIO mode until fixed.

Is it really appropriate to work around a Linux software bug with a DT change
like this? Remember, the devicetrees are used by software other than Linux.

Regards,
Samuel

> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> ---
>  arch/riscv/boot/dts/renesas/rzfive-smarc.dtsi | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/arch/riscv/boot/dts/renesas/rzfive-smarc.dtsi b/arch/riscv/boot/dts/renesas/rzfive-smarc.dtsi
> index a8573fdfd8b1..85f96e24a96e 100644
> --- a/arch/riscv/boot/dts/renesas/rzfive-smarc.dtsi
> +++ b/arch/riscv/boot/dts/renesas/rzfive-smarc.dtsi
> @@ -6,3 +6,8 @@
>   */
>  
>  #include <arm64/renesas/rzg2ul-smarc.dtsi>
> +
> +&ssi1 {
> +	/delete-property/ dmas;
> +	/delete-property/ dma-names;
> +};


