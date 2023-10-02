Return-Path: <devicetree+bounces-5049-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 5782C7B4F2F
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 11:40:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 763F51C208B7
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 09:40:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED5A8CA4E;
	Mon,  2 Oct 2023 09:39:58 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAD91C8FD
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 09:39:56 +0000 (UTC)
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A60CDF0
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 02:39:53 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-32615eaa312so2588777f8f.2
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 02:39:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696239592; x=1696844392; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=RMQoXZJ1gXgVqo8xfz08xq4cJM19gNcTFBOT4UgBJMM=;
        b=TwTjUBuokaFx4EQ4Un6SSbkgzE0dfBTgRksSoy3CJf65lU1bUxSGvtUBVvifnrCM/b
         F5xo1O440PsFQWYeE8s2SPyo4ROzI0FPukKuTa+9huSxo83yZN8putzqoprk4H0g/VL8
         Zty398ewbOXMd4dj8BzZhcizaYGcMEEo08BciA1W20yWNIJUGhFLoNVAVhboB973OsfY
         q60XL65YmZMMRUJpeYGzeoxyfGtc0U1sQai3EqwYS1pXzfOINTIk5VH0KpM6fTVGM5Ti
         +sK1fbQ18KGGZ8CWyRAFgF22y1h9jt+6tnO/amhNJysILfhF/hbsz+MvCiPE9r804heV
         ivtg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696239592; x=1696844392;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RMQoXZJ1gXgVqo8xfz08xq4cJM19gNcTFBOT4UgBJMM=;
        b=l6MvBjMZBoV7bw1sKL3W/MjAZvze0oEl/lI//yyC1n6EYvOBD2kxhd6JvjPYbcr+Bp
         rpK7Pdt1hsk0mrSknC5dXS1tQs+Q35Gcpdgjoc4pAEVuJWxGhEdSN0By6rvjvE1j+Lhq
         IaZVzXNgRvClScbMvGsc3Wb6hP7K7qDgv/r8G+BcJgtMIhS8SG65AWdVQBWeqFcLBGIm
         djvUmcrd73yZT96EwqpQ89G453yLZmda0hb9P3uLEJ3csB9jFbRS8FdetDKGRki+IPMd
         wGGnFs158s5xjyBmJqcALdE1mean73gA6/5SSwMJppYAHYE+AcFuEkZM09a5U6I1GkEP
         s50g==
X-Gm-Message-State: AOJu0YwO8ggu58NuMxgD200dQBnVL6h7k0+5Pj8VN3okwvD54zDA3pMZ
	FqgF09sLBWZUWvLSpdQ3M93YEg==
X-Google-Smtp-Source: AGHT+IEyhZz4ePCpuNjy9UDgJERpfEf9aNCorn5j6wNTqr2zFv0wnnSiItqzanEK/Fp4KGAMR6BGBQ==
X-Received: by 2002:adf:db4b:0:b0:319:7428:9ca0 with SMTP id f11-20020adfdb4b000000b0031974289ca0mr9423077wrj.61.1696239592052;
        Mon, 02 Oct 2023 02:39:52 -0700 (PDT)
Received: from [172.30.204.164] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id b12-20020a5d634c000000b0031773a8e5c4sm27649294wrw.37.2023.10.02.02.39.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Oct 2023 02:39:51 -0700 (PDT)
Message-ID: <c6768336-cf3f-9d60-697a-270ba63f9992@linaro.org>
Date: Mon, 2 Oct 2023 11:39:50 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux aarch64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.1
Subject: Re: [PATCH v3 2/6] ARM: dts: qcom: add common dt for MSM8x26 Lumias
 along with Nokia Lumia 630
Content-Language: en-US
To: Rayyan Ansari <rayyan@ansari.sh>, linux-arm-msm@vger.kernel.org
Cc: ~postmarketos/upstreaming@lists.sr.ht,
 Dominik Kobinski <dominikkobinski314@gmail.com>,
 Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>,
 Jack Matthews <jm5112356@gmail.com>, Andy Gross <agross@kernel.org>,
 Bjorn Andersson <andersson@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
 devicetree@vger.kernel.org,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 linux-kernel@vger.kernel.org, Rob Herring <robh+dt@kernel.org>
References: <20230930221323.101289-1-rayyan@ansari.sh>
 <20230930221323.101289-3-rayyan@ansari.sh>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230930221323.101289-3-rayyan@ansari.sh>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS
	autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 10/1/23 00:07, Rayyan Ansari wrote:
> Add a common device tree for Lumia phones based on the Qualcomm MSM8x26
> family of chipsets.
> 
> Currently supports:
> - Framebuffer
> - Touchscreen
> - Keys
> - Regulators
> - MMC
> - USB
> - UART
> 
> Also add an initial device tree for the Nokia Lumia 630, codenamed
> "moneypenny".
> 
> Co-developed-by: Dominik Kobinski <dominikkobinski314@gmail.com>
> Signed-off-by: Dominik Kobinski <dominikkobinski314@gmail.com>
> Co-developed-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
> Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
> Co-developed-by: Jack Matthews <jm5112356@gmail.com>
> Signed-off-by: Jack Matthews <jm5112356@gmail.com>
> Signed-off-by: Rayyan Ansari <rayyan@ansari.sh>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

