Return-Path: <devicetree+bounces-153370-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7ED79A4C285
	for <lists+devicetree@lfdr.de>; Mon,  3 Mar 2025 14:56:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 982FF168A88
	for <lists+devicetree@lfdr.de>; Mon,  3 Mar 2025 13:56:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 71618212D96;
	Mon,  3 Mar 2025 13:56:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fQDbMs8G"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DB8C20DD4C
	for <devicetree@vger.kernel.org>; Mon,  3 Mar 2025 13:56:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741010211; cv=none; b=Waqsja9UiDMHd33l5hOlJZAlbJ6Ery/VhjjUs9+sdzffN3uoCzUwI5HpqLCb5NM/zI9gQ0y3v6mRvh5kxjLY22GvbxOcHG/Yfwzs0PNTS9HFmYpEzWKaEcDOT+yMRzTHRFqKwxKT6G3BAWW/JVJGcmjbW+kKDaWwgE3ErX82rXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741010211; c=relaxed/simple;
	bh=Oul6vhkXR4va+z/+WhoZ0xRll3TSdgvTz5RPoDjs9Do=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pEdH9oJ43h5t7xAMd8t3ks/u/5MU2osMw6nUEnEXycmfBnH36dwd1PcbxWrVvZPQMTGH3IJp5IzFbAM6GDb8cMitm/ywNn00dzna9r8ImOkk6jYZXKMyY5ewABkQ3+rfE/q+uVrVhBt1nNhGlwad30kKeuZhVtss34TA8dyOD58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fQDbMs8G; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 523AxwFm017372
	for <devicetree@vger.kernel.org>; Mon, 3 Mar 2025 13:56:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UHuL7NNx8i87z9rx+SL91u+ZQbG95A3iELLmhhDeB5A=; b=fQDbMs8Gkr0StbCH
	j1Vag3AkItreSFPe4uNsUjhVeTQNecsBYKieSpUdfKaVQd0PtZlw/1Jr4lUh5IGo
	OXNvHUGqFOHmD1xQ21JYyWhHwf3MFf0YkT7003hJp1kLqYQilF8sT+lbOQeQTVlo
	1naZwUkfKUwvySmxwzRfhQWLMF4TqfdRfpmVSaKvEtIuG1EP7EccxRmWr7FYoHDB
	KZH/PXXKzrMYykw3oFScaSuVWxjmerdjZyqArdsB1ajSpWNHp+mNJVDtLCiKOAi6
	weFw8aXgWhGh64SNsR3uq+/EUC1FbpfokcZoTWo+sSz8BjuMgZIsDmTp7k5WIQuj
	TrZadw==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 453t6k4wbc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 03 Mar 2025 13:56:49 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2234c09241fso132858735ad.2
        for <devicetree@vger.kernel.org>; Mon, 03 Mar 2025 05:56:49 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741010208; x=1741615008;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UHuL7NNx8i87z9rx+SL91u+ZQbG95A3iELLmhhDeB5A=;
        b=PmoG4DHw0UGqUxX/jaEZBvfr/COPJd7WhUwwJtFdaEuHSHeoZgI97g/EX318F3paTL
         tbnpdIWJsbZvrxfYEGYDGdH5oPI11/Lont/hBfd+6pMsfqEpK/HWDlsfDyUPpnN70ack
         gsyN0sOiBdfUv2Ol8VHFn+kuoAZK3+eRcsVqjLt4fDuGb1abc3Aw5bJzz0cQu2x7Z+GR
         nRYxfXZ0J06gCdnycTbeBHcaWbmZnIve5ek/XuytJpRLAYL9S4SKUcF3YdAezN0m32zM
         pRjucBuFeAv/HJeXXWm0OhQNMl1Ll5N+z9xv5YdTUJa9QsP7SQB7EN2PeN3S3cHZBbdf
         3lvg==
X-Forwarded-Encrypted: i=1; AJvYcCXjlNanDey7x42xRmEBnkR0dsAs918pFPaVMUucZsG7lGD6ZxZMxPhpB7JGVyi5smOFfcEL1Q+lH293@vger.kernel.org
X-Gm-Message-State: AOJu0YwmcHFN9XFzCF0jgukaIqx4kZ58l8yD0NTxVep/4niv4khmeVrH
	M1BaKGlXwteb4+c44T6Hw6Cdys881PgbkmPHMOvtMP1TDomWqk9VA4XIyZGtJGLke6xxE1Pm1rP
	+8feRH+PhL2jv9BZm4ZtfJWnLX+Dn/d6UbagV5MfnEQHwMYgm4ZCbwzceqQEd
X-Gm-Gg: ASbGncswJFhhD4ZFKw6KX1eRiksurozbL/C7H0QGot9qVhhxzZ4SSBJ/LNbnotoiiVX
	ZiuovumPWjTAFh44PZAR/ySVolKKmgvbOqdBQTy1i/6IOOayJ88MDAmPfcnERO+dWud5xfZwtSO
	OqN98AsRF+WAe0983J2YWQXfxdC7ZwakMxrlryIxWT6uJEdGCeeVTjaBFnfMdm8lAfpua1d9rIt
	u+tq4AmZIV0H9tuPYmRAXgro6RiK80oFL4fNpuV/u8mBgBZ9okjCGCj+hiz8V11YfsxBDiP3/in
	NYyUjETJiR7r+x+sKybqY76Zn2flFgeXo0kQvLW9QQ==
X-Received: by 2002:a05:6a00:1895:b0:736:3be3:3d76 with SMTP id d2e1a72fcca58-7363be33e3emr9864305b3a.17.1741010208473;
        Mon, 03 Mar 2025 05:56:48 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEUiUadUO0TJSNEbJpg+ohvZHRFRRVAl7dtA6ZreELy4A3DZdvPJ97GRjZfVWJgUCtgDVhYkw==
X-Received: by 2002:a05:6a00:1895:b0:736:3be3:3d76 with SMTP id d2e1a72fcca58-7363be33e3emr9864180b3a.17.1741010206632;
        Mon, 03 Mar 2025 05:56:46 -0800 (PST)
Received: from [10.218.7.34] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7363d010101sm4064636b3a.115.2025.03.03.05.56.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Mar 2025 05:56:46 -0800 (PST)
Message-ID: <449712bb-961e-4ccf-bf74-50dd55315abc@oss.qualcomm.com>
Date: Mon, 3 Mar 2025 19:26:37 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V5 4/5] iio: adc: Add support for QCOM PMIC5 Gen3 ADC
To: Jonathan Cameron <jic23@kernel.org>
Cc: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        agross@kernel.org, andersson@kernel.org, dmitry.baryshkov@linaro.org,
        konradybcio@kernel.org, daniel.lezcano@linaro.org, sboyd@kernel.org,
        amitk@kernel.org, thara.gopinath@gmail.com, lee@kernel.org,
        rafael@kernel.org, subbaraman.narayanamurthy@oss.qualcomm.com,
        david.collins@oss.qualcomm.com, anjelique.melendez@oss.qualcomm.com,
        quic_kamalw@quicinc.com, rui.zhang@intel.com, lukasz.luba@arm.com,
        lars@metafoo.de, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-iio@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        cros-qcom-dts-watchers@chromium.org, quic_skakitap@quicinc.com,
        neil.armstrong@linaro.org
References: <20250131183242.3653595-1-jishnu.prakash@oss.qualcomm.com>
 <20250131183242.3653595-5-jishnu.prakash@oss.qualcomm.com>
 <20250201121134.53040aae@jic23-huawei>
 <9e14f58f-e345-4bae-b14e-de25fc28d9a8@oss.qualcomm.com>
 <20250301032519.16e77288@jic23-huawei>
Content-Language: en-US
From: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
In-Reply-To: <20250301032519.16e77288@jic23-huawei>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: oINmidrmE42SPo0DMOzzpLBweLuWEa7e
X-Proofpoint-ORIG-GUID: oINmidrmE42SPo0DMOzzpLBweLuWEa7e
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-03_07,2025-03-03_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0
 impostorscore=0 priorityscore=1501 bulkscore=0 mlxlogscore=767 mlxscore=0
 lowpriorityscore=0 clxscore=1015 spamscore=0 malwarescore=0 adultscore=0
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2503030106

Hi Jonathan,

On 3/1/2025 8:55 AM, Jonathan Cameron wrote:
> On Wed, 26 Feb 2025 14:22:05 +0530
> Jishnu Prakash <jishnu.prakash@oss.qualcomm.com> wrote:
> 
...
>>>> +void adc5_take_mutex_lock(struct device *dev, bool lock)
>>>> +{
>>>> +	struct iio_dev *indio_dev = dev_get_drvdata(dev->parent);
>>>> +	struct adc5_chip *adc = iio_priv(indio_dev);
>>>> +
>>>> +	if (lock)
>>>> +		mutex_lock(&adc->lock);
>>>> +	else
>>>> +		mutex_unlock(&adc->lock);
>>>> +}
>>>> +EXPORT_SYMBOL_NS_GPL(adc5_take_mutex_lock, "QCOM_SPMI_ADC5_GEN3");  
>>>
>>> This is potentially going to make a mess for sparse.  Might be better to split
>>> it in two so you can had __acquires and __releases markings.
>>>
>>> If you don't get any warnings with sparse then I guess we are fine.
>>>   
>>
>> I had tried building with sparse in my local workspace and I did not get any errors in this file. Do you think I can keep this unchanged?
>> Also, would any kernel bots run sparse later on this patch, if it's not already done?
> 
> Problems around this tend to turn up a bit late in build tests as requires
> particular combinations of features.  Here you may not see problems because
> sparse can't see far enough to understand the locking.
> 
> I would still split this into lock / unlock as that matches better
> with common syntax for locks.  We can then add markings
> as necessary later.
> 

OK, I can split this into separate lock and unlock functions.
And for markings, you mean I should add these:

    __acquires(&adc->lock)
    __releases(&adc->lock)

under the lock and unlock functions respectively?

Thanks,
Jishnu

>>>> +/*  
>>>
>>> Looks like valid kernel doc, so /** and check it builds fine
>>> with the kernel-doc script.
>>>   


