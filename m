Return-Path: <devicetree+bounces-10554-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 77C147D1E6E
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 19:02:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A8C851C2093D
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 17:02:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BFBB101C8;
	Sat, 21 Oct 2023 17:02:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WHdorEgc"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1263A5667
	for <devicetree@vger.kernel.org>; Sat, 21 Oct 2023 17:02:47 +0000 (UTC)
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C7EDDF
	for <devicetree@vger.kernel.org>; Sat, 21 Oct 2023 10:02:39 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id 2adb3069b0e04-507cd62472dso3348966e87.0
        for <devicetree@vger.kernel.org>; Sat, 21 Oct 2023 10:02:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697907757; x=1698512557; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HjvvnFB0zYny0SfjUxiQBEKf2HY6VSvzTEznwOL3cxA=;
        b=WHdorEgcolP+by7CxAGPwiWPljo86q5638YB66cDw7DxWaoqp+86p7YwRrJt+Paapx
         SIQjbrj9jlF7uEJ0pjCYs0mCjF0S/SK/m0Cs0P3d7pwhAmZmdZNeH+D+K5eztWm8MLqv
         hN1JGIa++mYzv7Y5jEgB7Us0lgJsHAZzybE/mAhYOgys/IGgkvp9B1fK5atwArmcQ77l
         Yq1w7DWn6Xdnczrj0BkYbplVWNiO4nddvAYX38rdKjnCfFDTBzdvX7UaEDad7gGb4LP4
         OR0+YW470s7Nk5fYPY9zFFw0PNuXFxtHqTEr9HrL2Xrr5dtxzIVILbfsE8aq9FL1/5LI
         f0IQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697907757; x=1698512557;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HjvvnFB0zYny0SfjUxiQBEKf2HY6VSvzTEznwOL3cxA=;
        b=OOHn8QCToPNVeibB7sbH/bUxPGX1RBTGJkG4aOZJ81w0dqQ4weKbJd5x+uSWoEnY4k
         FNvsPGq2RXWPbaUQhOf1JXKONn47aSu/rGEWmEmS+gtGYRhE9oqG+T0ntVJ55Z2B1ZAI
         X0mgYaVryvLTzCg3SopT/AsajjtI9cIyjGxZStzHR6pVxw3lDTqePn/3uFDJbhRossxQ
         QY/ZXO+wRXY0ZLdWjdgyMT2ZBIPEReTcUyyAKOjl40UpF8UkR/fYVPueJsqNVetbvpep
         xYRxlyz3Qy0FXDqnXY776uXN488+qFb1yRSKciYiXdK3NE2LDbjK8h/dXxJvsrT/NP1n
         zQog==
X-Gm-Message-State: AOJu0YwGQnWNCocjvkWxQcs0f5nUqnqRvHG/VGVSPqD7ntDKhnprawEe
	o9rxhonrBjXfwWLAeyfcabSLpw==
X-Google-Smtp-Source: AGHT+IG0ya5Xkq87PowH0RwzsI/CgaqLYtXPPjWdteaKOqlyC50RHFBcGQXv3qjT3+2MzVnDBnXwWg==
X-Received: by 2002:a05:6512:2826:b0:501:ba04:f352 with SMTP id cf38-20020a056512282600b00501ba04f352mr2525208lfb.1.1697907756713;
        Sat, 21 Oct 2023 10:02:36 -0700 (PDT)
Received: from [192.168.1.116] (abyl4.neoplus.adsl.tpnet.pl. [83.9.31.4])
        by smtp.gmail.com with ESMTPSA id f10-20020ac2532a000000b004ff8cd27a61sm924443lfh.213.2023.10.21.10.02.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 Oct 2023 10:02:36 -0700 (PDT)
Message-ID: <4acf4ab5-dbdf-429f-82f1-d6789bc6b21d@linaro.org>
Date: Sat, 21 Oct 2023 19:02:35 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/9] clk: qcom: config IPQ_APSS_6018 should depend on
 QCOM_SMEM
Content-Language: en-US
To: Varadarajan Narayanan <quic_varada@quicinc.com>, agross@kernel.org,
 andersson@kernel.org, robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
 conor+dt@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
 rafael@kernel.org, viresh.kumar@linaro.org, ilia.lin@kernel.org,
 sivaprak@codeaurora.org, quic_kathirav@quicinc.com,
 linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org,
 linux-pm@vger.kernel.org
References: <cover.1697781921.git.quic_varada@quicinc.com>
 <f4c4d65a7cb71e807d6d472c63c7718408c8f5f0.1697781921.git.quic_varada@quicinc.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <f4c4d65a7cb71e807d6d472c63c7718408c8f5f0.1697781921.git.quic_varada@quicinc.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit



On 10/20/23 08:19, Varadarajan Narayanan wrote:
> The config IPQ_APSS_6018 should depend on QCOM_SMEM, to
> avoid the following error reported by 'kernel test robot'
> 
> 	loongarch64-linux-ld: drivers/clk/qcom/apss-ipq6018.o: in function `apss_ipq6018_probe':
> 	>> apss-ipq6018.c:(.text+0xd0): undefined reference to `qcom_smem_get_soc_id'
> 
> Fixes: 5e77b4ef1b19 ("clk: qcom: Add ipq6018 apss clock controller")
> Reported-by: kernel test robot <yujie.liu@intel.com>
> Closes: https://lore.kernel.org/r/202310181650.g8THtfsm-lkp@intel.com/
> Signed-off-by: Varadarajan Narayanan <quic_varada@quicinc.com>
> ---
> v5:	Update commit log with the error message
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

