Return-Path: <devicetree+bounces-9553-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 66AE07CD6CB
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 10:42:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0844B1F23740
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 08:42:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AA918C0C;
	Wed, 18 Oct 2023 08:42:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="G3dIm7Gg"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16E1514F76
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 08:42:36 +0000 (UTC)
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B0FF8101
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 01:42:34 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-5079f6efd64so5652925e87.2
        for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 01:42:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697618553; x=1698223353; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=10OPZdJIcf5hY7AybgtKFxG5/1fKjVZqhVfHIM6Owj0=;
        b=G3dIm7GgQe3RDGlGZV2uC3gzmTzERaGJWJbaudmttFWgEZXAFmjNkSelTEgesRMqui
         FI0JPsBYqCl41STWrarBOQQCLpUHS/ft3nmXZphTjICGoX7Ex2AyOaiV3zx8OAOaBL+0
         6buI6Kul9ZJaeWMAQElU5dODdLpnWfnZyohElywlvLLhT51RsQ3RSSPWRi8/MYDpRgoc
         7eENPYu/b+WwJuobCPO763YaeotoTW4sOgFbeiVT0J8UQtmlNio6qkVuq1zjxmIV5Z5p
         vaVyOF8dDRoh5P74shcbmwHUX7nK/kNyHXj4JEQqRWrXCHInpFmqhQw2mOvHcUSssypW
         50dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697618553; x=1698223353;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=10OPZdJIcf5hY7AybgtKFxG5/1fKjVZqhVfHIM6Owj0=;
        b=F+BlqW5d0TKmy+1UwqGDuj9/SdtqyAggd7sU7HpaGNmyfBrtdbYrURAVXOuFZX3vfD
         lEijF8nkGaEaCstgOrHJR4jfd6HjHZiJfywF66FcXTm0w1HMGPja0+xCLxqAmWHkcDB1
         9OXPaKjzSrpvuzX2L4RBZC7UJqe6wrCpicmx4zPUIaPSkKkyIwx0VyLfFleCzT8VfD7o
         zXc5WEWweVtDuC36tRlM+loNJcR9vizDQQ+FENQqmVuk1JYYLB+8sTZzxGFSvxfBcHbM
         6EsF9ZGJuypxTIB8HPgPo9mi/yNSn72NitGc+Kq1kzHx5vCkgNm4e9YVkDz17SGEzW4w
         x5/A==
X-Gm-Message-State: AOJu0Yyzr1424ClktVWxYLvFClDcwAvKHY0v3QZG4bzcXlq51opZ0PVA
	3nWnnHILQCyLu2m1ZtjdX2T7/A==
X-Google-Smtp-Source: AGHT+IEUfEjyjF0/7VMofGB08Y2b4pWlSpDzjdx6yvCvv2fAVYgWc5f8uuUJWLrh1OSXFGQKd0Bb3w==
X-Received: by 2002:ac2:4da3:0:b0:503:3816:c42c with SMTP id h3-20020ac24da3000000b005033816c42cmr3050148lfe.41.1697618552939;
        Wed, 18 Oct 2023 01:42:32 -0700 (PDT)
Received: from [172.30.204.55] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id i5-20020ac25225000000b005007da9f823sm602353lfl.168.2023.10.18.01.42.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Oct 2023 01:42:32 -0700 (PDT)
Message-ID: <ceed957c-0d87-4d42-aa09-d068ef97c9b6@linaro.org>
Date: Wed, 18 Oct 2023 10:42:31 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] cpufreq: qcom-nvmem: Add MSM8909
Content-Language: en-US
To: Stephan Gerhold <stephan.gerhold@kernkonzept.com>,
 Viresh Kumar <viresh.kumar@linaro.org>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Ilia Lin <ilia.lin@kernel.org>, "Rafael J. Wysocki" <rafael@kernel.org>,
 Rob Herring <robh+dt@kernel.org>,
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
 Conor Dooley <conor+dt@kernel.org>, linux-pm@vger.kernel.org,
 linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
 devicetree@vger.kernel.org, Ulf Hansson <ulf.hansson@linaro.org>,
 Stephan Gerhold <stephan@gerhold.net>
References: <20231018-msm8909-cpufreq-v2-0-0962df95f654@kernkonzept.com>
 <20231018-msm8909-cpufreq-v2-3-0962df95f654@kernkonzept.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20231018-msm8909-cpufreq-v2-3-0962df95f654@kernkonzept.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no
	version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 10/18/23 10:06, Stephan Gerhold wrote:
> When the MSM8909 SoC is used together with the PM8909 PMIC the primary
> power supply for the CPU (VDD_APC) is shared with other components to
> the SoC, namely the VDD_CX power domain typically supplied by the PM8909
> S1 regulator. This means that all votes for necessary performance states
> go via the RPM firmware which collects the requirements from all the
> processors in the SoC. The RPM firmware then chooses the actual voltage
> based on the performance states ("corners"), depending on calibration
> values in the NVMEM and other factors.
> 
> The MSM8909 SoC is also sometimes used with the PM8916 or PM660 PMIC.
> In that case there is a dedicated regulator connected to VDD_APC and
> Linux is responsible to do adaptive voltage scaling using CPR (similar
> to the existing code for QCS404).
> 
> This difference can be described in the device tree, by either assigning
> the CPU a power domain from RPMPD or from the CPR driver.
> 
> Describe this using "perf" as generic power domain name, which is also
> used already for SCMI based platforms.
> 
> Also add a simple function that reads the speedbin from a NVMEM cell
> and sets it as-is for opp-supported-hw. The actual bit position can be
> described in the device tree without additional driver changes.
> 
> Signed-off-by: Stephan Gerhold <stephan.gerhold@kernkonzept.com>
> ---
Acked-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

