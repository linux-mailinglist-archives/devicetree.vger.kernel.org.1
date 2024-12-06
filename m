Return-Path: <devicetree+bounces-127975-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 38E999E6DE7
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 13:16:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CB7C518832C9
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 12:16:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B72471FE45A;
	Fri,  6 Dec 2024 12:16:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UCqcmWzP"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A43B1FA246
	for <devicetree@vger.kernel.org>; Fri,  6 Dec 2024 12:16:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733487381; cv=none; b=AyErSodS3x03dpxQounllqyLXOzHGTk99TqPcCTeFOZEX/dPdEdPvjuOncRKo9A2qPCPBy7tFIiRFNk/QiFlRN0FFv5xv4VwGuouolPrxEhKkIX1JkEPsE+/u7+6F3RBqqRIm29ZHqv7SF50upj04tGSRzE4wn4nkVwyJkmXDjA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733487381; c=relaxed/simple;
	bh=sgr8TfyHIsW2M0ldFdGsnHqIa0HX/kept5tDUtOrpVM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Etn7ejxkpqdqHoywEvQmB4BhQUn9QVGfflosKeZhpT0lJzxnxbheZOTTfsv4FNP4cEi7aEHq/awuUQCF0D7/6xj5Lzdh9Crq9FsqX0UUyto+oIyTiROi3B8rvOwse9Zu8dCXfUxGHWPXESoG6R/1CEr0dYpvIsIukK3o7g8v5nk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UCqcmWzP; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4B6Bm53x003213
	for <devicetree@vger.kernel.org>; Fri, 6 Dec 2024 12:16:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Wqn/yXsEWgwFk7d3eySSwki1BDLyTCTQlHP/ia3/cxM=; b=UCqcmWzPLUvv0AHA
	cMNIplYbTUsIo4e4U2Sa3fcfIMBsWElM2xeIx24a1viF757Ja0WkONRXtswdf82m
	zIiiGQGU7nL7I+hasHzKSZf5FY85UqNj1QarBFI0YahiahE5Tf9wohybia2zJFBk
	hmqfLRNlXntHECkusRbnDiyixW3MLanOhj5Y4qaJz9Eax73KWKgnhj81MZiQkE8n
	xdpnnZEkir9fLJRoZpHiyPcBqCpRHWEBMq/9aX2mo6Xmg8tH4dIOAwV2EUNCEeTP
	Qo7soNWQ1rDEll+pzZDq5ghQffzf9D/62d3IynNVEbLifqZo3FPyazNvoQQD/TLL
	5ozFNg==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43brgp1g3n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 06 Dec 2024 12:16:19 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6d880eea0a1so4663716d6.3
        for <devicetree@vger.kernel.org>; Fri, 06 Dec 2024 04:16:19 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733487378; x=1734092178;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Wqn/yXsEWgwFk7d3eySSwki1BDLyTCTQlHP/ia3/cxM=;
        b=lOf1By17EEkNeDjfsZwv2kEuFqJUM+1g5OFdltH4OMhNg8hhosNat3nHmRmDpd++CQ
         uxoTn+MuVkwORAxzdo/CU6H3u8vlze3SS7NCgNWf/+LaP+WRg+hGzdksqpnhWxzM4q2T
         4tvw3oDyK3so8ZNlMmSpx0KdHGukfCFlTrmSoL7BOJ6A5eTsZ7ZkVZQmaoSSEgzonuEh
         BYCqcT/TV9yAhjfSk42gFLNu5CaDwQXIOO2EnAYcJhj7yswls0/exPOob5ziAWzETfrz
         8y6susKIhUyX6NNje0vNMI3/zysrek4M2Iau19epuHE+STso1fE+LzdAphIw05uCTcZx
         gAJA==
X-Forwarded-Encrypted: i=1; AJvYcCX+rUA7BM78C4TvM9qfOaBcd7cF56AxxrGf+U9NWqhuAVefA+b/7y02gOR6ehleW6QbZ6Y5RTCGoIHX@vger.kernel.org
X-Gm-Message-State: AOJu0Yzfk/CAH2VhCDhivXc8T/PSPV0SwH1kmCp+BbfR9jkPCyaYbPU2
	xmKocowbVCwh/aXXfL3FdnL5oVJDL7VMsO1tFgkBqxPN92l+kXRLWbTJhjd5PFShEi8ydT7+ATo
	b5uOwz6nfYeJPgdMg8kO/I7xBk578cjNOkfQzlkqJv8/maES3Ho8uRg3Z+baX
X-Gm-Gg: ASbGnctCS/RAA4zlMmIziAp2LkmNs/H9GkwRYGpKcmhr5H8awkzP85SLDx953XM3u/T
	v/3yiv88y5WZnjRu3/ucdbpq0zWXAb5qAA641znps01mJdZ96qJxQd9rBh+L0mUU85Hx0CFWJ7R
	lc8pilcxxye/m2s4WlEfBCvfoIFesrW6I7L9rWMvWgj3sVCTgesndJMmsFL9drrPnB64DXnqbbn
	P1NmqzOfHbQUcawSx5lNwLjP8UAqZCanPPU6cqNv53lNLJUICeYkleQGv0HOIwexeoOhh8aMkla
	px+4E7eh8oyRIGUs4Q7rpa0Mrhqe4p4=
X-Received: by 2002:a05:620a:298c:b0:7b5:1fa4:852f with SMTP id af79cd13be357-7b6bcaf65c4mr155286585a.8.1733487377997;
        Fri, 06 Dec 2024 04:16:17 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEETLo4Pi7QkkrYelwKpeurP40wBqMjikrVmWp4FkyL4k13VPynW3pOCmPRkCjhQrr/6mEsvQ==
X-Received: by 2002:a05:620a:298c:b0:7b5:1fa4:852f with SMTP id af79cd13be357-7b6bcaf65c4mr155282185a.8.1733487377020;
        Fri, 06 Dec 2024 04:16:17 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa625eedcd0sm231473166b.87.2024.12.06.04.16.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 06 Dec 2024 04:16:15 -0800 (PST)
Message-ID: <7107275e-1ccf-4f09-ada3-e082833d9364@oss.qualcomm.com>
Date: Fri, 6 Dec 2024 13:16:13 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3] arm64: dts: qcom: qcs615: add WiFi/BT nodes
To: "Yu Zhang (Yuriy)" <quic_yuzha@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, andersson@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Cc: agross@kernel.org, ath11k@lists.infradead.org, dmitry.baryshkov@linaro.org,
        konradybcio@kernel.org, kvalo@kernel.org, linux-media@vger.kernel.org,
        mchehab@kernel.org, quic_jjohnson@quicinc.com,
        quic_miaoqing@quicinc.com, quic_vgarodia@quicinc.com,
        stanimir.k.varbanov@gmail.com, quic_jiaymao@quicinc.com
References: <20241203060318.1750927-1-quic_yuzha@quicinc.com>
 <1ca062dd-8910-4caf-a133-0e5717b43540@oss.qualcomm.com>
 <649dc6c0-f0e1-4dca-8f93-d0f81803cd70@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <649dc6c0-f0e1-4dca-8f93-d0f81803cd70@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: tscwxv9StqE5JLWKm5ELy6FXuZoC3b9B
X-Proofpoint-ORIG-GUID: tscwxv9StqE5JLWKm5ELy6FXuZoC3b9B
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 bulkscore=0 clxscore=1015
 adultscore=0 lowpriorityscore=0 mlxscore=0 spamscore=0 suspectscore=0
 priorityscore=1501 phishscore=0 impostorscore=0 mlxlogscore=891
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412060092

On 6.12.2024 4:22 AM, Yu Zhang (Yuriy) wrote:
> 
> 
> On 12/6/2024 1:14 AM, Konrad Dybcio wrote:
>> On 3.12.2024 7:03 AM, Yu Zhang(Yuriy) wrote:
>>> Add a node for the PMU module of the WCN6855 present on the qcs615
>>> board. Assign its LDO power outputs to the existing WiFi/BT module.
>>>
>>
>> subject:
>>
>> arm64: dts: qcom: qcs615-ride: ....
>>
>> [...]
>>
>>> +
>>> +    vreg_conn_1p8: vreg_conn_1p8 {
>>> +        compatible = "regulator-fixed";
>>> +        regulator-name = "vreg_conn_1p8";
>>> +        startup-delay-us = <4000>;
>>> +        enable-active-high;
>>> +        gpio = <&pm8150_gpios 1 GPIO_ACTIVE_HIGH>;
>>> +    };
>>> +
>>> +    vreg_conn_pa: vreg_conn_pa {
>>> +        compatible = "regulator-fixed";
>>> +        regulator-name = "vreg_conn_pa";
>>> +        startup-delay-us = <4000>;
>>> +        enable-active-high;
>>> +        gpio = <&pm8150_gpios 6 GPIO_ACTIVE_HIGH>;
>>> +    };
>>
>> Are any of these boot-on?
>>
> Yes, these are used wcn6855-pmu：
>      vddio-supply = <&vreg_conn_pa>;
>      vddpmu-supply = <&vreg_conn_1p8>;

What i meant is, whether these regulators are enabled at boot
time (i.e. without software intervention). If that's the case,
`regulator-boot-on;` should be added

Konrad

