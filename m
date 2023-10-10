Return-Path: <devicetree+bounces-7253-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 972217BFD8F
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 15:34:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 51D54281A4F
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 13:34:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB1B29CA61;
	Tue, 10 Oct 2023 13:34:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ElIIARZi"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61D962135A
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 13:34:11 +0000 (UTC)
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB27A9E
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 06:34:08 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id 38308e7fff4ca-2c1807f3400so69203411fa.1
        for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 06:34:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696944847; x=1697549647; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=u3ufIXJTPDUi37xaLcqz/JBb6qC8rajJx6bDQbsS0J0=;
        b=ElIIARZi+gjhG5QuyVguoYsd8Apv1+991gibzG3e6XtnvwBQuWni0ctTDtF6P6IfKX
         cMKIMdMeM7Fa0o1qLt6UaqufAcFtIgB137r4MDUNZLoWQ0ctgenGWe9rg6jQrcDvnCvC
         +XVUpaejSva0sR3d7+3IKq9XygWUpSe8TyEPHTv27I4E3ci4Z/+LNfowWDxQ16oacQDJ
         GSbIMNEXIjNLaEy1b10MKpKhnaEmdSO97bqmE8JgzmVvBYmgM/xTrJme2bFR/ChnKqqK
         6ysJrjPjs+8thv7pb7Es4RLCuJf42jZVDfuCjXRGLPqZZn6aJ/JbVzKB5ihDge5BHdu3
         mO1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696944847; x=1697549647;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=u3ufIXJTPDUi37xaLcqz/JBb6qC8rajJx6bDQbsS0J0=;
        b=hjMO2K7JDE3tY5G2czUvZs6ESdOjkKKR37iUhT1YKPkuIMZ5tISP5mPqwK7bXOQg2d
         rtnaxGAH+Pr+LP4Ofus47zr6bKgYWu2TRT4k55FW1dQbj1/ky1GVFg2vk26y6AnO0kkA
         ZIZ27oW4HT5W6smoW+X8fDIOFuKTVlbhvH9aWZNSMUvzLJWip+lI3PAR2XvCZQsmwwWN
         nsFR+W4TUXM/FnCwnKe0vKMMAFjARHJNkHuVO8qWE5rV/iOaAoTUF57bEvRF81iutOwP
         bW9Nl8ACdVaB63r78voDpMXnbL1PcRO1xDsPoDir6qizkGklE5mNHgUVZO0/ZGcdiJ2e
         DzMw==
X-Gm-Message-State: AOJu0YwyE/18gB3N/loRs7lgeFXHKMPXuOK0Iw0tjcYpeohL5FdfZZBP
	k9pALVM4GQgAX4NTTuF8tAcZ+A==
X-Google-Smtp-Source: AGHT+IHVlEd6wxtkukWJ4E28XaOUeg+7a2DayqjOWtQGYvIOrLbjENhKkn7cfLUU3G4liOCJKbax5w==
X-Received: by 2002:a2e:90c3:0:b0:2c0:172b:dc2b with SMTP id o3-20020a2e90c3000000b002c0172bdc2bmr11490692ljg.14.1696944846944;
        Tue, 10 Oct 2023 06:34:06 -0700 (PDT)
Received: from [172.30.204.192] (UNUSED.212-182-62-129.lubman.net.pl. [212.182.62.129])
        by smtp.gmail.com with ESMTPSA id e9-20020a2e8189000000b002c12630e4d3sm2452017ljg.127.2023.10.10.06.34.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Oct 2023 06:34:06 -0700 (PDT)
Message-ID: <d0714c75-e827-4bbc-a854-59004cab2563@linaro.org>
Date: Tue, 10 Oct 2023 15:34:02 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 1/4] cpufreq: qcom-nvmem: add support for IPQ8074
Content-Language: en-US
To: Robert Marko <robimarko@gmail.com>, ilia.lin@kernel.org,
 vireshk@kernel.org, nm@ti.com, sboyd@kernel.org, robh+dt@kernel.org,
 krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org, agross@kernel.org,
 andersson@kernel.org, rafael@kernel.org, linux-pm@vger.kernel.org,
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
 linux-arm-msm@vger.kernel.org
References: <20230930102218.229613-1-robimarko@gmail.com>
From: Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230930102218.229613-1-robimarko@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=1.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	RCVD_IN_SBL_CSS,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=no
	autolearn_force=no version=3.4.6
X-Spam-Level: *
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net



On 9/30/23 12:21, Robert Marko wrote:
> IPQ8074 comes in 2 families:
> * IPQ8070A/IPQ8071A (Acorn) up to 1.4GHz
> * IPQ8072A/IPQ8074A/IPQ8076A/IPQ8078A (Hawkeye) up to 2.2GHz
> 
> So, in order to be able to share one OPP table lets add support for IPQ8074
> family based of SMEM SoC ID-s as speedbin fuse is always 0 on IPQ8074.
> 
> IPQ8074 compatible is blacklisted from DT platdev as the cpufreq device
> will get created by NVMEM CPUFreq driver.
> 
> Signed-off-by: Robert Marko <robimarko@gmail.com>
> ---
> Changes in v4:
> * Add support for IPQ8174 (Oak) family
> 
> Changes in v3:
> * Use enum for SoC versions
> 
> Changes in v2:
> * Print an error if SMEM ID is not part of the IPQ8074 family
> and restrict the speed to Acorn variant (1.4GHz)
> 
>   drivers/cpufreq/cpufreq-dt-platdev.c |  1 +
>   drivers/cpufreq/qcom-cpufreq-nvmem.c | 45 ++++++++++++++++++++++++++++
>   2 files changed, 46 insertions(+)
> 
> diff --git a/drivers/cpufreq/cpufreq-dt-platdev.c b/drivers/cpufreq/cpufreq-dt-platdev.c
> index 2016d47889c0..157c91b9962c 100644
> --- a/drivers/cpufreq/cpufreq-dt-platdev.c
> +++ b/drivers/cpufreq/cpufreq-dt-platdev.c
> @@ -180,6 +180,7 @@ static const struct of_device_id blocklist[] __initconst = {
>   	{ .compatible = "ti,am62a7", },
>   
>   	{ .compatible = "qcom,ipq8064", },
> +	{ .compatible = "qcom,ipq8074", },
>   	{ .compatible = "qcom,apq8064", },
>   	{ .compatible = "qcom,msm8974", },
>   	{ .compatible = "qcom,msm8960", },
Generally this lands in a separate commit, but I guess since Viresh 
takes changes to both of the files, it's even better..

Acked-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad

