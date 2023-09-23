Return-Path: <devicetree+bounces-2697-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 392C87AC310
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 17:12:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 2B8D91C208DD
	for <lists+devicetree@lfdr.de>; Sat, 23 Sep 2023 15:12:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 68A551D6AB;
	Sat, 23 Sep 2023 15:12:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2F951D68F
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 15:12:30 +0000 (UTC)
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1E74180
	for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 08:12:28 -0700 (PDT)
Received: by mail-wm1-x32f.google.com with SMTP id 5b1f17b1804b1-405361bb9f7so35443845e9.2
        for <devicetree@vger.kernel.org>; Sat, 23 Sep 2023 08:12:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1695481947; x=1696086747; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=KzhaS1WbLmeo0WlVMusFMrENnn61L9WwiZn5UG2VbMU=;
        b=qC128o+v/ju01ljSY+/fyCDiU7wx5ps+MOZYOat15EBZnjfbrhm3V+tHpxKymkPhCJ
         GBtASlqJ45Jj6yKZ5JCjPrs96HUH4A5+XSUbWHNmWuo+cDiH5pE1ematOWwtfhwymNzO
         33q/Jmr0S8F/iJmiv4u6erdEPTTxpwxY+7rhmuZ8BVSp6CDJUwbTNqhZ8JZB/znT82nc
         Bxz2sfrMr7dmvpIxztA30c4g6KyGP01wZzBaaDbCGLKSr8wHmTUiYfEaVbdtqaLCG43p
         qSMTK/H+qKJUyByLFWCFVSemw5iUylYzLxRjS0lZT9za+0nHwxYPKaeb91lZF62XOVkL
         OdqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695481947; x=1696086747;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=KzhaS1WbLmeo0WlVMusFMrENnn61L9WwiZn5UG2VbMU=;
        b=rDb7jb22z+MzbIX4CkCF2RretswAEUIuIok6jFQMZMY4FSMOpmaIAIHRaizrKPU3yN
         92B665AYVQeMDcxt/qDPvfPUBNiD0Q/0e9oURdJ8dx+tDAs7mJAmWXTR2npfHywgPwF9
         J1jg6vEN6iSvQIX43sCc3TupQMKzyFMaEGcqB0BfNoBXSiDluhsgZC2Q18eOUPSc9cim
         QkSFy+1fnvEXeeg04l7CEKldrQfBaQkwUR9+X/hHL2qLvJAfx7J+PyuurlHliTQfOZdL
         b0V8YoOIu9t6HZohiI6lxZNPKoBrGc4wDbnHa23LOH8Dw+0QElUJgPm3kNrkyIjGA4uP
         fh0Q==
X-Gm-Message-State: AOJu0Yz3LCHpTybN7Prmog38ap6z9uuYIj/sbfGq9NJQD6e0oDn7MQ6j
	de1MDwYMbQxwSksMa5Bst1ejyg==
X-Google-Smtp-Source: AGHT+IHYlGZInh8v6ky+Qg++LmI+9p5cONWHNxCEslCg/4K6Nu6ZVkuTUWU+dVjmJS4uAKh+v1A2mw==
X-Received: by 2002:a5d:4fc9:0:b0:321:69ba:d851 with SMTP id h9-20020a5d4fc9000000b0032169bad851mr2594590wrw.5.1695481947060;
        Sat, 23 Sep 2023 08:12:27 -0700 (PDT)
Received: from [192.168.0.162] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id g18-20020a5d5552000000b003196b1bb528sm7195560wrw.64.2023.09.23.08.12.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 23 Sep 2023 08:12:26 -0700 (PDT)
Message-ID: <bda0d75e-1af3-4247-a363-48998c21c8a3@linaro.org>
Date: Sat, 23 Sep 2023 16:12:25 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/3] arm64: dts: qcom: msm8916/39: Fix-ups for dynamic
 reserved mem patches
Content-Language: en-US
To: Stephan Gerhold <stephan@gerhold.net>,
 Bjorn Andersson <andersson@kernel.org>
Cc: Andy Gross <agross@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org
References: <20230921-msm8916-rmem-fixups-v1-0-34d2b6e721cf@gerhold.net>
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20230921-msm8916-rmem-fixups-v1-0-34d2b6e721cf@gerhold.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 21/09/2023 19:56, Stephan Gerhold wrote:
> Enable GPU/WCNSS properly in some MSM8916/MSM8939 boards that were
> changed after I sent the patches for the dynamic reserved memory
> allocation.
> 
> I have magic scripts that make the necessary changes automatically so
> I'm quite sure that I caught all new instances that need adjustment. :-)
> 
> Since my scripts only work properly on board DTs with sorted nodes
> I also included a bonus patch to fix that in some of the MSM8916 DTs.
> 
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
> ---
> Stephan Gerhold (3):
>        arm64: dts: qcom: msm8916-samsung-gt5: Enable GPU
>        arm64: dts: qcom: msm8939-longcheer-l9100: Enable wcnss_mem
>        arm64: dts: qcom: msm8916-*: Fix alphabetic node order
> 
>   .../boot/dts/qcom/msm8916-alcatel-idol347.dts      |  8 ++---
>   .../boot/dts/qcom/msm8916-samsung-a3u-eur.dts      | 10 +++---
>   .../boot/dts/qcom/msm8916-samsung-gt5-common.dtsi  | 38 +++++++++++-----------
>   arch/arm64/boot/dts/qcom/msm8916-samsung-gt510.dts |  4 +++
>   arch/arm64/boot/dts/qcom/msm8916-samsung-gt58.dts  |  4 +++
>   arch/arm64/boot/dts/qcom/msm8916-thwc-uf896.dts    |  8 ++---
>   arch/arm64/boot/dts/qcom/msm8916-thwc-ufi001c.dts  |  8 ++---
>   .../arm64/boot/dts/qcom/msm8916-yiming-uz801v3.dts |  8 ++---
>   .../boot/dts/qcom/msm8939-longcheer-l9100.dts      |  4 +++
>   9 files changed, 52 insertions(+), 40 deletions(-)
> ---
> base-commit: a35461d47fe3e555602912b905f1bae7045256eb
> change-id: 20230921-msm8916-rmem-fixups-46ec18b9ba5d
> 
> Best regards,

Do these Fixes shas exist ? I can't seem to find them.

---
bod

