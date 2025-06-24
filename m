Return-Path: <devicetree+bounces-189027-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DD624AE668D
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 15:32:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 510021BC20B8
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 13:31:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B5A52D1F40;
	Tue, 24 Jun 2025 13:29:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kpYPKUN3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE1ED2C3756
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 13:28:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750771741; cv=none; b=QNmLhs/xYZxtp7dtDAheUcDAZIILsAyms6dZVJgvBSpD1tcRpvAlI/b+djq1c7/pR9Yp/5GtGRQLgHvykMISVmpHCVHRtwNAMyZPay6JU0DfG/8kHpeM+M329ti9y9FJBp4ow7Mibj7g24e28VfVRmjzVKj0kt57TRKsw3Yl2Bg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750771741; c=relaxed/simple;
	bh=Kq2queKYiWK77xeA7BlasqdaXnXERjuMkIMarM++d/c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=J/L6BkEdUxelrwWDymGmy5xkH+L2KB2DZwU/MPkrO4v+lkbq1ASOUHnB4Cj3O73kLFQ4Daf1aH4ifImeKwwObzcrxwPBn3XgP1AU53OI5FHEGxktJHHyzzp/aEkBaRzoWb+oKANgW0tuIlzCT7TK+86q85hsK5Hr2vqRl9SP0iM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kpYPKUN3; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55O8kqkq020873
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 13:28:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qPEA4wWOBi3YOtgcaFrbSGcrL6j9MPJBC/grGvjBzWA=; b=kpYPKUN3znQtt8K9
	z1hmTSKeR/6a4fmLW8ZxbnVJlYM9gjSq0k/3shIZ/0s4iE9EX5R5BmLUVyk+sePk
	Jafd3n6sbLkzKt8Nkpw7bg1R97E2gUaJuynxU4vEUYZfaM32yPbhj4lAxKu2L0Tq
	7//1HAaGx/IHTf+OkttAr++DQt6VZ+5YCbh+cDt9y+OqGyG1YxAf2eJc6YaIhIh0
	klG9FD9tMt4bwtTQUt7MlY1cG0zQ7xDNquyHa/72MgqGOfdNPUb8h92BZa5J9YNi
	CgNXV+wRfhUuE3LZAnOYEAEmFnpd+y7mVdb3yEjj5LMplwfQz1UFTg5hTSWI72JX
	6YH0xg==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47fdfwtet4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 13:28:58 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-31218e2d5b0so8716335a91.2
        for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 06:28:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750771737; x=1751376537;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qPEA4wWOBi3YOtgcaFrbSGcrL6j9MPJBC/grGvjBzWA=;
        b=OxDX4VsY81Eo2BSkOO9ygX/aD4yxYyIXoLkvkctmo+vmj3Sl+0dR6v2RX9+GcFN7JU
         KT+peZEMhSmac1BSOs7J41WyV56Zl2xdh6A6xmjKIajeFcYOYE4VkXV27LD+5eGTiCTb
         yjkyKUU045PPvVZw6lUUMgpSN2HXVHw3DSTDAmEaVvdMygVCVIxjFYRbRGW4mbikTNh2
         8474ghuDzd8IT/AKBD31+HwP9jbEcDu2NR1SGhrc7vaw7YPnjClU7WcJOc4pP6m7ghE8
         GrXAmP00SOuQGJEMOcwnVGz8SU1I3pQtfSIi8+0T8GU1c3KQ1/pVgKyaxJaSBg5eR9PW
         J81Q==
X-Forwarded-Encrypted: i=1; AJvYcCU4jaTYorPJKjZen7bNBMZf7nxyJ8nA3Mmpxe2x9zOCh5it+kyoQ73xlO7IT2kQ6NtU/dY592bN/6Eb@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1SGES053UO19uvmFdJ3+gaRnHCB/Rpns5/C2f3LIt2Gwh09z7
	7rhUGByJn1dkmkHVBBLd3LTzG0t3ZRQbip+awesIjOmyYr6psu68r5Le9ERoUtI5Bl/hRVjDNoP
	4t5I5WG+dtqwh/tcOPfJhyIqapVOqdgPHQA60QeYSpYoA0hOM2A/3HZIXJoYPdBtz
X-Gm-Gg: ASbGncv11i2oOPW/tce6JCUzxFc15rf0xug6C2pDv3TXZBih2jd49+uODXO1N1abu3x
	0Hfp07WUOfEfgYsfzsYMBmy0N3A3hcroj5aSObnJ2bqNTkh8uVE7zo0oz60eok3tiaHp9PVPxoi
	YEWtN1Qgor95cAYCFwPMsnZty0so7lfZfZapzxwyWLfk1drkyQoB4l0QlZvDxv0xuFZGpGaTnEc
	+qsfl0HGsQTF5dvsKO5u/mB6wIHP/CEYLwplG3GEkavczGTAgy+YM8rozyUYA2QSyXJgDpJW2Er
	95sRJqCtj5Jrl3+YI6rQvOf2yBbmIqkmVKNqt0NBirCa1aF5YQk=
X-Received: by 2002:a17:90a:d888:b0:311:c970:c9c0 with SMTP id 98e67ed59e1d1-3159d8c41a8mr22338337a91.22.1750771737064;
        Tue, 24 Jun 2025 06:28:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHBuLhxpe1LePkqlXex3v+gwLfmUkPle+4L0M+QPnAqLvByeLjot0QMO16fa1+0SFfLZT8AbA==
X-Received: by 2002:a17:90a:d888:b0:311:c970:c9c0 with SMTP id 98e67ed59e1d1-3159d8c41a8mr22338273a91.22.1750771736450;
        Tue, 24 Jun 2025 06:28:56 -0700 (PDT)
Received: from [10.217.217.28] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3159e0483desm10686245a91.32.2025.06.24.06.28.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 24 Jun 2025 06:28:56 -0700 (PDT)
Message-ID: <b453e9c1-c87d-457b-8ee8-4b82a6417385@oss.qualcomm.com>
Date: Tue, 24 Jun 2025 18:58:47 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V6 5/5] thermal: qcom: add support for PMIC5 Gen3 ADC
 thermal monitoring
To: Jonathan Cameron <jic23@kernel.org>
Cc: robh@kernel.org, krzysztof.kozlowski@linaro.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, agross@kernel.org, andersson@kernel.org,
        lumag@kernel.org, dmitry.baryshkov@oss.qualcomm.com,
        konradybcio@kernel.org, daniel.lezcano@linaro.org, sboyd@kernel.org,
        amitk@kernel.org, thara.gopinath@gmail.com, lee@kernel.org,
        rafael@kernel.org, subbaraman.narayanamurthy@oss.qualcomm.com,
        david.collins@oss.qualcomm.com, anjelique.melendez@oss.qualcomm.com,
        quic_kamalw@quicinc.com, rui.zhang@intel.com, lukasz.luba@arm.com,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org, cros-qcom-dts-watchers@chromium.org,
        quic_skakitap@quicinc.com, neil.armstrong@linaro.org,
        stephan.gerhold@linaro.org
References: <20250509110959.3384306-1-jishnu.prakash@oss.qualcomm.com>
 <20250509110959.3384306-6-jishnu.prakash@oss.qualcomm.com>
 <20250511141120.58941a45@jic23-huawei>
Content-Language: en-US
From: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
In-Reply-To: <20250511141120.58941a45@jic23-huawei>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: QXF2jEoyRpcTbcnNTJy7e9sZIWPcWQKR
X-Proofpoint-ORIG-GUID: QXF2jEoyRpcTbcnNTJy7e9sZIWPcWQKR
X-Authority-Analysis: v=2.4 cv=MtZS63ae c=1 sm=1 tr=0 ts=685aa81a cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=f4knV5qyKpdAkpOjOqoA:9 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI0MDExMyBTYWx0ZWRfX3nYHouxb6R7Q
 uP3mWUp1w2zoMzXY9MNsHnLc43CqkaUQaiONyLUoYVTnIyjTWPuKsMCL3WPQbWABlXNl/FhpdrM
 cz9OHjX7zsLgFDJpB0jhHE0hcjVQydDiTK/B3mpYrgw3dsZGjcN2V3T1jK9GukqjhR4wb06PkE2
 EhqOBrabVlBESlHzZuL3Fz9HNEK2PRF0vU+f+MpS1lS1K5ohKlfLNytBMlEQ+Or0N9Lf26VOaYi
 rbQJeJ7rwPI9HbOWchi8ZJvHWnVRz9Dm2FIFyTjVacqd0N59lENCoj+FrW/bdQo3rchvE+0EhZZ
 xBys2UYhQVXlntz9m/SZnZ0iZaTF+P6vg0Ss7wvUrSpcjRJrh+uCYdDx9royRnb1e9DhumAMZZD
 oDxJr/3xMlBh0GtEeYE30oIidKUEig3BfHgzlLNUrFLWK6DlhknuNYlCeKRYOTRmW48cL5CV
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-24_05,2025-06-23_07,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 suspectscore=0 adultscore=0 phishscore=0
 mlxlogscore=841 spamscore=0 malwarescore=0 priorityscore=1501
 lowpriorityscore=0 clxscore=1015 mlxscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506240113

Hi Jonathan,

On 5/11/2025 6:41 PM, Jonathan Cameron wrote:
> On Fri,  9 May 2025 16:39:59 +0530
> Jishnu Prakash <jishnu.prakash@oss.qualcomm.com> wrote:
> 
>> Add support for ADC_TM part of PMIC5 Gen3.
>>
>> This is an auxiliary driver under the Gen3 ADC driver, which implements the
>> threshold setting and interrupt generating functionalities of QCOM ADC_TM
>> drivers, used to support thermal trip points.
>>
>> Signed-off-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
> Hi Jishnu,
> 
> A few minor things inline.
> 
> Jonathan
> 
>> diff --git a/drivers/thermal/qcom/qcom-spmi-adc-tm5-gen3.c b/drivers/thermal/qcom/qcom-spmi-adc-tm5-gen3.c
>> new file mode 100644
>> index 000000000000..c63822635f10
>> --- /dev/null
>> +++ b/drivers/thermal/qcom/qcom-spmi-adc-tm5-gen3.c
> 
>> +static int adc_tm5_register_tzd(struct adc_tm5_gen3_chip *adc_tm5)
>> +{
>> +	unsigned int i, channel;
>> +	struct thermal_zone_device *tzd;
>> +
>> +	for (i = 0; i < adc_tm5->nchannels; i++) {
>> +		channel = V_CHAN(adc_tm5->chan_props[i].common_props);
>> +		tzd = devm_thermal_of_zone_register(adc_tm5->dev, channel,
>> +						    &adc_tm5->chan_props[i],
>> +						    &adc_tm_ops);
>> +
>> +		if (IS_ERR(tzd)) {
>> +			if (PTR_ERR(tzd) == -ENODEV) {
>> +				dev_warn(adc_tm5->dev,
>> +					 "thermal sensor on channel %d is not used\n",
>> +					 channel);
>> +				continue;
>> +			}
>> +			return dev_err_probe(adc_tm5->dev, PTR_ERR(tzd),
>> +					     "Error registering TZ zone:%ld for channel:%d\n",
>> +					     PTR_ERR(tzd), channel);
>> +		}
>> +		adc_tm5->chan_props[i].tzd = tzd;
>> +		devm_thermal_add_hwmon_sysfs(adc_tm5->dev, tzd);
> 
> Can fail so unusual not to see an error check.  Add a comment if intended.
>

I just added it this way initially as I saw it was called without an error check
following it in other places in the kernel. I'll add an error check. 
 
>> +	}
>> +	return 0;
>> +}
> 
>> +
>> +static int adc_tm5_probe(struct auxiliary_device *aux_dev,
>> +			 const struct auxiliary_device_id *id)
>> +{
>> +	struct adc_tm5_gen3_chip *adc_tm5;
>> +	struct tm5_aux_dev_wrapper *aux_dev_wrapper;
>> +	struct device *dev = &aux_dev->dev;
>> +	int i, ret;
>> +
>> +	adc_tm5 = devm_kzalloc(&aux_dev->dev, sizeof(*adc_tm5), GFP_KERNEL);
> 

...

>> +	/*
>> +	 * This drvdata is only used in the function (adctm_event_handler)
>> +	 * called by parent ADC driver in case of TM violation on the first SDAM.
>> +	 */
>> +	auxiliary_set_drvdata(aux_dev, adc_tm5);
>> +
>> +	ret = devm_add_action(adc_tm5->dev, adc5_gen3_clear_work, adc_tm5);
> 
> I'd add a comment on what this is undoing as normally devm clean up matches
> something being started and there is no obvious sign of what that is here.

This is meant to cancel any existing instances of tm_handler_work scheduled
by a TM interrupt, at the time of module removal. I'll add a comment for it.

> 
>> +	if (ret)
>> +		return ret;
>> +
>> +	ret = adc_tm5_register_tzd(adc_tm5);
> 
> return adc_tm5...
> 
>> +	if (ret)
>> +		return ret;
>> +
>> +	return 0;
>> +}
> 
>> +static int __init adctm5_init_module(void)
>> +{
>> +	return auxiliary_driver_register(&adctm5gen3_auxiliary_drv.adrv);
>> +}
>> +
>> +static void __exit adctm5_exit_module(void)
>> +{
>> +	auxiliary_driver_unregister(&adctm5gen3_auxiliary_drv.adrv);
>> +}
>> +
>> +module_init(adctm5_init_module);
>> +module_exit(adctm5_exit_module);
> 
> module_auxiliary_driver() not work for some reason?

Yes, it's because module_auxiliary_driver() relies on its input parameter
to create variable names for some of the function calls it does internally
and this goes wrong leading to compilation errors, if the input parameter
is more complex than a simple variable name.

I had described this issue earlier and you had agreed with me too, in this mail:
https://lore.kernel.org/all/20250301032901.7b38fed4@jic23-huawei/

I'll address your other comments in the next patch series.

Thanks,
Jishnu


> 
>> +
>> +MODULE_DESCRIPTION("SPMI PMIC Thermal Monitor ADC driver");
>> +MODULE_LICENSE("GPL");
>> +MODULE_IMPORT_NS("QCOM_SPMI_ADC5_GEN3");
> 


