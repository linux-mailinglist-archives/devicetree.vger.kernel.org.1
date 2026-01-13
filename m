Return-Path: <devicetree+bounces-254477-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id A1619D1870B
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 12:22:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1260430062C2
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 11:19:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 824E838BDA9;
	Tue, 13 Jan 2026 11:19:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TTTjn3un";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="IjvuN1ea"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFB8838B9B9
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 11:19:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768303176; cv=none; b=lO73CYiM4/cjzjbaWGMjIDQxU/mf8/BHeJXEATIdvYHnp1pN3Ybku4EzGrgFZ10+R3Dvke1uCdZLa5IhKqYYSKSVpSAirl+UdzwpKDke0sillUoHp/K7zLONOhRPWwi5OMRcAGXGyff2LaWk4zEmwtiYmRUH/YB+ZOlKI5lo+vI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768303176; c=relaxed/simple;
	bh=iBteRzhuVjUKovQZsZr56W6Db3PAYl+XUdijpRoUdoc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rfsl3+Xdz3Mxt77DH1aJEC9unVdm0tSowJXSHaNX6joZPqxcF/w/elWaMeWWe7zF62DzG8smcQ1EIHnlGB4FB+/VMbeFiIF07B6vfW6P9tHLxx4Sz1g8kImBMsWd325CQxgt5nDJ1AEPJLWTxj5rb7QvxkyLnb/7sOWrohRJeWg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TTTjn3un; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=IjvuN1ea; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60DBDetO4164961
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 11:19:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+067FJE1YSc9YVkN2T9ygwB7jd4RPMgD/BH7GSACzSI=; b=TTTjn3unAgUSm7uy
	I0La02DOGqycxFT+QDE9RDk+ZOE82En4EOGET+SmfDPYtOmRN3G9ooW0N6pB26I/
	Mq7JCKU0t7tiowAUxfe+vQozciLtQyaSLeQFIL9xDNNr8dcKCzHv/7ChZ0S7gdAr
	HBezKGRz3CDBlsD35+mNoPYMxEaJM7phz+lPzbiHoTgjmmArgLnnqvYGWxdworLU
	js5DdNQ0BSOP7o8NsKFtu57Dd66VLeTJzIrvF6JgEJ4B1j7FIJB/SeSmmhVlvmKs
	bgTYyxkC1uBQHZ7cYIn3FqErO76eb/XxlHiZP0PvQcpA6tJA3HcMkCGUPHGWP3f9
	B8KfBQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bnn06r0kg-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 11:19:31 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ee05927208so26780371cf.1
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 03:19:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768303171; x=1768907971; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+067FJE1YSc9YVkN2T9ygwB7jd4RPMgD/BH7GSACzSI=;
        b=IjvuN1eaDtngCBqSMYr5BHNYtNZ9D8bzcmJn46iGSLbqjMjo8Uqkb3YX7I+tKuXntv
         OG6Nqa26Ml+6Psvzl2LCrMH/tKgh/4ZgJEcJXtujTSy5m16zQmuzlIxpzjpaq/MIox/M
         Az5X4j9ywugfbg+dw0ITli9T+GjaD6Tf5dAF71zKzRFR5FzpVBVnLa4bhsvM3xB5PgIz
         f/bjHTAzEFxrqAoKbpbExCd0uOvLIX1E24mAbXEGCjS2gDQCnR7TtWLUwBHCz4waPa2G
         FHTo1EERreVjCFHo0IGoCYXDhR8Uj29/h7a66ABnkpB20jopYwu55XDfKB9pn+tNg6QA
         ZGqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768303171; x=1768907971;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+067FJE1YSc9YVkN2T9ygwB7jd4RPMgD/BH7GSACzSI=;
        b=WdPD0wOxMCzF7kcTAp86wbhsg827jdEQfnvZoNRWmezRA3jfQMCMK9+TSihYlTNMIb
         ibvWkbovYUaxkiAr0SgRr+RSR1iW20Gx79JOzhwttqOY7WP5rsHhd13Fef7ghyNSrzsw
         sYoCeJu2SttwFu89KaU8s8BAAFIB3vDV2w7OnAgeDH1zZMZLiY3HOwESewfGNYVtFAfY
         g4FGshocAIRWYobflqYPDENAZpdkSIoIjG55X5Lhhy21t3Re/sp34YMmCzddQO08/HDf
         otzdPtNmpGFEzq872O4k9bOuuKg0s9XyiDeOZaq0KrJsHkU0MAXWKnZ9uGrz5o2BORgY
         Pp/w==
X-Forwarded-Encrypted: i=1; AJvYcCV/ec/Jvx3Bm+xPv9jOGLI74KMdzMkqZghKj4Sw51A/VzKG5BuNuxn/VonMyNAIuRjTxwhW0JHx3I4f@vger.kernel.org
X-Gm-Message-State: AOJu0YxOFOwHkiKYHKRYODB1yBaONh5uVbNGA7st9zNvEYIROQxw0ON0
	PVqYb0sKEiAPVdoRwLuB9GLLzC/4yDsN8gFs1zEWt1iBsz5/yV9MuydnbeaVvN7bjAcz/yEse1R
	PUntDZCfhiMOEYTwJFPguqSYFoJxRYmpLEg8NtPvt4IT9tWub7972IfFj1lGMmXJX
X-Gm-Gg: AY/fxX5TI+Micn5vt6vOrtov9qfTy2qwipzM+NXXkjXNkscN3Pvoc6e608Drc5U+Wku
	P19XXqr5TjcLwBWOPNnbwrJsB0diQj/B9iIp5YKeFylDefNT6Dp0/LUm11b+doMGojGC5V+6nrR
	P8bbz+H/nAyXs+6U3mXo9Z28J1b5+R0UpmPIiZ4DwAzS8RjsI+sQkG6Ist83wpHkA8xbmRvKSvk
	mqzjtWMjL8mSsqYyRtiE2brH2rGsi2F50qJa0bd/uMFRv2aWzxGtCMQOct0lqJHQZGCrQA85Xrl
	exM4nMM3p6+B2/M0T9LB2aKhoh88xLYxsz1HHfh69heT8orJc3KM1TUrFFrXuLHa9mIl9Dxh/oF
	MdEpLrQh3+50OdVgO2fQobhjdJ64KlNBao+JH524b2t/GyZAC3YSNPq82jzSI4PvdPtE=
X-Received: by 2002:ac8:7c4b:0:b0:4ee:4482:e838 with SMTP id d75a77b69052e-4ffb47e2d4bmr227003641cf.1.1768303170805;
        Tue, 13 Jan 2026 03:19:30 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGBaIEoMj8LfHl/NgkrhjmaWz8P4907NXHKNWZFwZcaH7zOvWKqQ1r+uQU7MEguvL/cQrN4zA==
X-Received: by 2002:ac8:7c4b:0:b0:4ee:4482:e838 with SMTP id d75a77b69052e-4ffb47e2d4bmr227003491cf.1.1768303170411;
        Tue, 13 Jan 2026 03:19:30 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507b9d44bfsm20060625a12.8.2026.01.13.03.19.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jan 2026 03:19:29 -0800 (PST)
Message-ID: <05637034-19f0-42cd-9352-3daf80ae4a1d@oss.qualcomm.com>
Date: Tue, 13 Jan 2026 12:19:26 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 6/7] qcom-tgu: Add timer/counter functionality for TGU
To: Songwei Chai <songwei.chai@oss.qualcomm.com>, andersson@kernel.org,
        alexander.shishkin@linux.intel.com, mike.leach@linaro.org,
        suzuki.poulose@arm.com, james.clark@arm.com, krzk+dt@kernel.org,
        conor+dt@kernel.org
Cc: linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, coresight@lists.linaro.org,
        devicetree@vger.kernel.org, gregkh@linuxfoundation.org
References: <20260109021141.3778421-1-songwei.chai@oss.qualcomm.com>
 <20260109021141.3778421-7-songwei.chai@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20260109021141.3778421-7-songwei.chai@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: laR9uLRb9NUeOTsh0i-FMhPP8jHrHt7g
X-Authority-Analysis: v=2.4 cv=ZODaWH7b c=1 sm=1 tr=0 ts=69662a43 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=CsthYWZRQT8_EciR9E4A:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: laR9uLRb9NUeOTsh0i-FMhPP8jHrHt7g
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDA5NSBTYWx0ZWRfX7vKfYyjOrHdA
 dvv/FpkgIGQ8F0YE/zJJ8U18cTL74i05qv5AucfF4z8XJdDF2dbwqekpLKxLsLw0APLfA1ZXEGe
 R3QpVPGlRtfkmUkA3glRsrtqameVOKPoKq4n+UCysDF84023CfbWPFmTm7sn5CuBx5DbPHKR/bH
 ymXz7p3CgZTkNopYQKr7f34VYWhb3SwhIu/y7sbf9X9p8XATo3ahrtnleWgp3wu6LlDaGwzl6pl
 Ydp38g/WmzKLhPhPMEE14RkXVC2tlF9RRr+7VHH9qrDqz3zoauLU2UVMoqIIA02dQJwpPlsBkEq
 x+22CzYkezjjmKAJD882eTsNihTcE6Fixe2565Azs+j3F7yRtTSJOUJDqIdQdxZIBg+PnHjOk8O
 PWnovnGUjFcJHQWFSCA2+jxH1SETWjTiw7rMqY8fb54/hFiYUOWwL2CuqWXttrPZBHX62PPKpwb
 gl5LZNBUCcOtQiLC4NA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_02,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 bulkscore=0 malwarescore=0 lowpriorityscore=0 suspectscore=0
 phishscore=0 priorityscore=1501 spamscore=0 impostorscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601130095

On 1/9/26 3:11 AM, Songwei Chai wrote:
> Add counter and timer node for each step which could be
> programed if they are to be utilized in trigger event/sequence.
> 
> Signed-off-by: Songwei Chai <songwei.chai@oss.qualcomm.com>
> ---

[...]

> +static void tgu_set_timer_counter(struct tgu_drvdata *drvdata)
> +{
> +	int num_timers, num_counters;
> +	u32 devid2;
> +
> +	devid2 = readl(drvdata->base + CORESIGHT_DEVID2);
> +
> +	if (TGU_DEVID2_TIMER0(devid2) && TGU_DEVID2_TIMER1(devid2))
> +		num_timers = 2;
> +	else if (TGU_DEVID2_TIMER0(devid2) || TGU_DEVID2_TIMER1(devid2))
> +		num_timers = 1;
> +	else
> +		num_timers = 0;
> +
> +	if (TGU_DEVID2_COUNTER0(devid2) && TGU_DEVID2_COUNTER1(devid2))
> +		num_counters = 2;
> +	else if (TGU_DEVID2_COUNTER0(devid2) || TGU_DEVID2_COUNTER1(devid2))
> +		num_counters = 1;
> +	else
> +		num_counters = 0;
> +
> +	drvdata->max_timer = num_timers;
> +	drvdata->max_counter = num_counters;

int num_timers = 0, num_counters = 0

if (TGU_DEVID2_TIMER0(devid2))
	num_timers++

if (TGU_DEVID2_TIMER1(devid2))
	num_timers++

etc.

unless you want to guard against a case where TIMER0 reports as absent
and TIMER1 as present and you consider that invalid (I don't know)

[...]

> +	timer_size = drvdata->max_step * drvdata->max_timer *
> +		     sizeof(*(drvdata->value_table->timer));
> +
> +	timer = devm_kzalloc(dev, timer_size, GFP_KERNEL);
> +
> +	if (!timer)

stray \n

> +		return -ENOMEM;
> +
> +	drvdata->value_table->timer = timer;
> +
> +	counter_size = drvdata->max_step * drvdata->max_counter *
> +		       sizeof(*(drvdata->value_table->counter));
> +
> +	counter = devm_kzalloc(dev, counter_size, GFP_KERNEL);

devm_kcalloc, perhaps?

> +
> +	if (!counter)

stray \n

> +		return -ENOMEM;
> +
> +	drvdata->value_table->counter = counter;
> +
>  	drvdata->enable = false;
>  
>  	pm_runtime_put(&adev->dev);
> diff --git a/drivers/hwtracing/qcom/tgu.h b/drivers/hwtracing/qcom/tgu.h
> index 8c92e88d7e2c..94708750b02d 100644
> --- a/drivers/hwtracing/qcom/tgu.h
> +++ b/drivers/hwtracing/qcom/tgu.h
> @@ -11,11 +11,17 @@
>  #define TGU_LAR		0xfb0
>  #define TGU_UNLOCK_OFFSET	0xc5acce55
>  #define TGU_DEVID	0xfc8
> +#define CORESIGHT_DEVID2       0xfc0
>  
>  #define BMVAL(val, lsb, msb)	((val & GENMASK(msb, lsb)) >> lsb)

This is NIH FIELD_GET()

[...]

>  static inline void TGU_LOCK(void __iomem *addr)
> @@ -197,6 +247,8 @@ static inline void TGU_UNLOCK(void __iomem *addr)
>   * @max_step: Maximum step size
>   * @max_condition_decode: Maximum number of condition_decode
>   * @max_condition_select: Maximum number of condition_select
> + * @max_timer: Maximum number of timers
> + * @max_counter: Maximum number of counters
>   *
>   * This structure defines the data associated with a TGU device,
>   * including its base address, device pointers, clock, spinlock for
> @@ -213,6 +265,8 @@ struct tgu_drvdata {
>  	int max_step;
>  	int max_condition_decode;
>  	int max_condition_select;
> +	int max_timer;
> +	int max_counter;

num_timers, num_counters definitely fits better here

Konrad

