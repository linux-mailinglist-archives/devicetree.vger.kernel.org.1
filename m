Return-Path: <devicetree+bounces-5227-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 172397B5AA1
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 20:59:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id F002A1C20754
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 18:59:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 823CA1F180;
	Mon,  2 Oct 2023 18:59:32 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 092C61DA28
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 18:59:30 +0000 (UTC)
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9AE6CD9
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 11:59:27 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id 2adb3069b0e04-504427aae4fso4244692e87.1
        for <devicetree@vger.kernel.org>; Mon, 02 Oct 2023 11:59:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696273166; x=1696877966; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zrszV3+CYmj+tM+SxyXe+ws7+sNss2kpTTuRI9TMO44=;
        b=l3THzC0+4/nrU4EP2J4xY6OB+QgWZUNuga2KKWD9KABHiC58aXpg/Y2h4r/PRmlHpR
         rh0RvFmZ9bFeVIxDGjkcESx5RJUPSjZLNp/luWJ7RPmJKLq+Aih+upuwgykrhedsMIZj
         QwRIQoea8sPvlVEuhrzwSsCwwJicPjf53k6EnS7haeC04EK6UNqLaeX9W04NNBUFtXHC
         mKnTKvwqu6qQPOkH0sbjyM3CfE0JF9o+s5d2PsWl4G+U3/qUO9QxIvpImw6n0HmCHqQ4
         ziq1Jf4xh0Og6mg5knVrIzxd4bezPPWC+zl01K3fSJNxjVvHJ1rq2uX+hak4t7zLua2B
         vUkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696273166; x=1696877966;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zrszV3+CYmj+tM+SxyXe+ws7+sNss2kpTTuRI9TMO44=;
        b=iqC+OJfVRQUKsII3/h7G51kJ+nqS83j9e85uE7/waYy9q6jOHe1q02EWxy2iyVc5j7
         6BjNQDlloEPqwKwEwyokmg2yx0dcDh6/X9sTkva4LWXVbWiOTcLdK6HMuqJqJU2YJl7S
         91igHWUohmsfUnWbLuBRrUgu5rEBCbnCdE+kYC3BEJP7TQ++u0wLkOMeP68qv0WzeL3I
         ym/sa75kzllPVjieb5fzxwy9Y2zs//3F6EJCNH40GuYr2r17eZjJnSpSjlRWuwu46GVY
         qTarHrMOalZbfceUWjng9dWphGrx2EjBVVx9qrXLCURSDRWxQthup7EsnCE0B9HodeCw
         bqJQ==
X-Gm-Message-State: AOJu0Yxzrwy0T49LnwOuJ2F+lI1wcCyixW62AqdVx6/Q5D39bAXaAbGQ
	a33JY4vRNnv3AYr9pBE1W0SwKMS4XEmhccyq8R8=
X-Google-Smtp-Source: AGHT+IHnqtPBC6A3QMAunGAelevOOZeI9rfO1gpamLiLaCS5CYls3Ko+5rNhEhIuK2FGN5DT8MUPWw==
X-Received: by 2002:ac2:520e:0:b0:503:cca:e535 with SMTP id a14-20020ac2520e000000b005030ccae535mr375866lfl.12.1696273165667;
        Mon, 02 Oct 2023 11:59:25 -0700 (PDT)
Received: from ?IPV6:2001:14ba:a0db:1f00::8a5? (dzdqv0yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::8a5])
        by smtp.gmail.com with ESMTPSA id j26-20020a19f51a000000b0050420eff124sm2081352lfb.152.2023.10.02.11.59.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 02 Oct 2023 11:59:25 -0700 (PDT)
Message-ID: <3276666c-8331-490f-be79-c626bd275287@linaro.org>
Date: Mon, 2 Oct 2023 21:59:24 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 5/6] cpufreq: qcom-nvmem: provide separate
 configuration data for apq8064
Content-Language: en-GB
To: Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring
 <robh+dt@kernel.org>, Krzysztof Kozlowski
 <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>,
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
 Ilia Lin <ilia.lin@kernel.org>, Viresh Kumar <vireshk@kernel.org>,
 Nishanth Menon <nm@ti.com>, Stephen Boyd <sboyd@kernel.org>,
 Michael Turquette <mturquette@baylibre.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>, Georgi Djakov <djakov@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
 linux-pm@vger.kernel.org, linux-clk@vger.kernel.org,
 Christian Marangi <ansuelsmth@gmail.com>,
 Stephan Gerhold <stephan@gerhold.net>
References: <20230827032803.934819-1-dmitry.baryshkov@linaro.org>
 <20230827032803.934819-6-dmitry.baryshkov@linaro.org>
 <8a7af8ce-3ff4-4520-b4e2-dd39570ca796@linaro.org>
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <8a7af8ce-3ff4-4520-b4e2-dd39570ca796@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

On 28/08/2023 14:04, Konrad Dybcio wrote:
> On 27.08.2023 05:28, Dmitry Baryshkov wrote:
>> APQ8064 can scale core voltage according to the frequency needs. Rather
>> than reusing the A/B format multiplexer, use a simple fuse parsing
>> function and configure required regulator.
>>
>> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>> ---
>>   drivers/cpufreq/qcom-cpufreq-nvmem.c | 49 ++++++++++++++++++++++++++--
>>   1 file changed, 47 insertions(+), 2 deletions(-)
>>
>> diff --git a/drivers/cpufreq/qcom-cpufreq-nvmem.c b/drivers/cpufreq/qcom-cpufreq-nvmem.c
>> index 81c080b854fe..35e2610c9526 100644
>> --- a/drivers/cpufreq/qcom-cpufreq-nvmem.c
>> +++ b/drivers/cpufreq/qcom-cpufreq-nvmem.c
>> @@ -26,6 +26,7 @@
>>   #include <linux/platform_device.h>
>>   #include <linux/pm_domain.h>
>>   #include <linux/pm_opp.h>
>> +#include <linux/regulator/consumer.h>
>>   #include <linux/slab.h>
>>   #include <linux/soc/qcom/smem.h>
>>   
>> @@ -39,6 +40,7 @@ struct qcom_cpufreq_match_data {
>>   			   char **pvs_name,
>>   			   struct qcom_cpufreq_drv *drv);
>>   	const char **genpd_names;
>> +	const char * const *regulator_names;
>>   };
>>   
>>   struct qcom_cpufreq_drv {
>> @@ -203,6 +205,34 @@ static int qcom_cpufreq_krait_name_version(struct device *cpu_dev,
>>   	return ret;
>>   }
>>   
>> +static int qcom_cpufreq_apq8064_name_version(struct device *cpu_dev,
>> +					     struct nvmem_cell *speedbin_nvmem,
>> +					     char **pvs_name,
>> +					     struct qcom_cpufreq_drv *drv)
>> +{
>> +	int speed = 0, pvs = 0;
>> +	u8 *speedbin;
>> +	size_t len;
>> +	int ret = 0;
> Unused, just return 0
> 
>> +
>> +	speedbin = nvmem_cell_read(speedbin_nvmem, &len);
>> +	if (IS_ERR(speedbin))
>> +		return PTR_ERR(speedbin);
>> +
>> +	if (len != 4)
>> +		return -EINVAL;
>> +
>> +	get_krait_bin_format_a(cpu_dev, &speed, &pvs, speedbin);
>> +
>> +	snprintf(*pvs_name, sizeof("speedXX-pvsXX"), "speed%d-pvs%d",
>> +		 speed, pvs);
> speed and pvs are both one hex digit long at best (see masking in
> get_krait_bin_format_a)

One hex translates to two decimal digits (0xf = 15).

> 
> Konrad

-- 
With best wishes
Dmitry


