Return-Path: <devicetree+bounces-125730-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D242A9DF12A
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 15:33:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3DA80B21313
	for <lists+devicetree@lfdr.de>; Sat, 30 Nov 2024 14:33:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F22F119DF62;
	Sat, 30 Nov 2024 14:33:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lBjRXOdS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55D38199244
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 14:33:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732977183; cv=none; b=fKHS2GK8yMX3l6u0jlUDZITyjt7EJY2RWk02WwZ8ryWaYRsPZE8fQeWaeJQF66N7A0Q4gp+5YD4uI/nSeGDq7zU873IzJQJKOQag6uKkxGzwqm5hWkczJ/tU6Rfrc5u7U353dXtjJdsIY4wGBj8uNT+IN8iLwlKJDl7sJEFk3F4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732977183; c=relaxed/simple;
	bh=6GqbPExjUAJ9VrcQadcPVscC4PCI7xaJb9qtIZSeMb8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=rVdwWN2LdpWfOV3z97V0oUl2wUx2W3SnXScWitPwAgVkLbtFIL+1++7nA19LCUivkuOGMYsqWBiq1oOmU+60kP+Zubqg1EmAp2OyP3PrbBfQim903VnR3S3g3ofUFu11NN2zUVgkrRSDNvmYE4TLr5oWddJP7D8+ZFLrZJVgkxU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lBjRXOdS; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AUBTfAC004972
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 14:33:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	xJbaFLL5aqtaQaD1FY4HVdlrEAnea4exqxdujqkX504=; b=lBjRXOdSs+2T6F2G
	wnQrEQAFaoSRGX8m3D8Wt0aAVh07fW48eXqOEBamGQCaApKG3/Y/a/dxdStVdh5P
	efB6Rb3UZYffCyQ7uBr2fhqU9KFdYIiR8IjbUSsdHbKl9HYS58Vee70WRAz34rlK
	IvQeLULVQqy9UZgKzLflE8VRNHmLTNpXUlx4mnLIp7aIfLyMHG1WamAfa2sRw4Y3
	yzduV2uPXTijO+ZJ5NPg7iMY7XmfNp++NN92WMvfb2ZE31Ei2zm6a4111NNmkitX
	/tJA4ad5W95EMdY+kj3/ktKas4Lsd7q7JexCzxipejbl06zCkk3XBgAgBezujm4e
	gMWruQ==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 437ta2rvr8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 14:33:01 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6d887d2f283so3104076d6.0
        for <devicetree@vger.kernel.org>; Sat, 30 Nov 2024 06:33:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732977180; x=1733581980;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=xJbaFLL5aqtaQaD1FY4HVdlrEAnea4exqxdujqkX504=;
        b=ERH9tS4d9wOp1PlC1nXkeqoPZG/tktJIJ2Zr3P5SC7Y9k/uWUue5CeONwoGtuGKsF1
         3vRb7Z5ra8RKPTEVi5YH7lRlSWxOw3uVW1LvRiJSlrxsMMiSerTW/WTlr19cr3MhA9bY
         xa99Ruj3RkVpdXS4BgrOHdkfiVAuHxEtFav6OCAoYmQeE4S0ifVvEYZ21HCbdbk6N8o9
         SDz0CAO+jQjtO4srJ43RCJPw5Hmr3ffPBhKxRT1kDDMp7jlo0VjLlzPtwQpWyxL8rxvu
         BxYcOG1y747uV6OjtjSHeT5VrXS+ZGjN3UzOYP+lu8VOC3N2UIrcthF09yYqf59OQxaX
         nX5w==
X-Forwarded-Encrypted: i=1; AJvYcCVtPY+CHCxeOibU55lXw9lKLtAzB+lllvgaeD1t0W0QXV/JPRSjIcVZzS/iXwQJI8OfPLSJKuV7qOGZ@vger.kernel.org
X-Gm-Message-State: AOJu0YyUE2amqB3iaZhTp8Sr90INb8WlWuVv+LSdVqFOBYq34Fgc+FJo
	qeZuMRkUb5ENBZL2smthX7n89FRsb7qeGErEq0ZUM2Cbt3FSlrDhW2vYt1ChbTeE11b6qUllFEU
	YOr8OyH9isRbhY4hqG0c6FaMeIdLITRLlWIZFx6mhb6kunMydjNxSFS9/yHUs
X-Gm-Gg: ASbGncvSlKIz/YMBZOch3EE0CIFdO8Kxe1Ho30WpQh2wuEQ6NxtNlfw0WQtPoJCq3ua
	H2FNCAn/6fP9LvnYI7ouVgVG+QQYdxg5XSosmelXgY65aMBJAWjTIEZ6EK7Bk+fbqvfoJa09orq
	qHEgTcKPETwVsQFvCiOZRFiuffYlDKJBFRtNvv0mtEw6ePw4pNcXRZnOEyOcPQVKDPxTAC7ZlAM
	OAQGGqmgCM2rRqjieb9SE9VpehMhXZbu/EUq+9/xeS3AtXFtyY/K9/TETh5G7yfRyeK2Jw5VEw+
	j1nlHv/ut0/SVafc6xGzUoc0BNjYmEg=
X-Received: by 2002:a05:620a:394f:b0:7b6:72f6:210e with SMTP id af79cd13be357-7b67c27ccf8mr770030185a.3.1732977175600;
        Sat, 30 Nov 2024 06:32:55 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEe8acvPq7z2y+gB3tEvJPLN5emhbcqDSk4YJJ9ZxSxV5DleRKDJsK1jhG11MFO3oshnAjcjw==
X-Received: by 2002:a05:620a:394f:b0:7b6:72f6:210e with SMTP id af79cd13be357-7b67c27ccf8mr770028785a.3.1732977175132;
        Sat, 30 Nov 2024 06:32:55 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa59990a83dsm284849766b.156.2024.11.30.06.32.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 30 Nov 2024 06:32:54 -0800 (PST)
Message-ID: <5c3d91e3-e9d3-4e8d-bd4f-f7cbe765dddc@oss.qualcomm.com>
Date: Sat, 30 Nov 2024 15:32:51 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] arm64: dts: qcom: sa8775p: Add CPU OPP tables to
 scale DDR/L3
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Jagadeesh Kona <quic_jkona@quicinc.com>
Cc: Brian Masney <bmasney@redhat.com>, Bjorn Andersson
 <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Taniya Das <quic_tdas@quicinc.com>,
        Satya Priya Kakitapalli <quic_skakitap@quicinc.com>,
        Shivnandan Kumar <quic_kshivnan@quicinc.com>
References: <20241017-sa8775p-cpufreq-l3-ddr-scaling-v1-0-074e0fb80b33@quicinc.com>
 <20241017-sa8775p-cpufreq-l3-ddr-scaling-v1-2-074e0fb80b33@quicinc.com>
 <ZxEwVShJuMH4J1Hp@x1> <9179759d-7af1-409f-8130-1136c9ae4ecd@quicinc.com>
 <daqa3krsp6emdha6h7tlcelsggb6qeilnojgtfxjbp5zw4n6ow@xzwdmu55ygjf>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <daqa3krsp6emdha6h7tlcelsggb6qeilnojgtfxjbp5zw4n6ow@xzwdmu55ygjf>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: ZClfPPh8h1I06SnBgx9IPFVn4IzoKcw5
X-Proofpoint-GUID: ZClfPPh8h1I06SnBgx9IPFVn4IzoKcw5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0 bulkscore=0
 lowpriorityscore=0 suspectscore=0 mlxscore=0 impostorscore=0
 malwarescore=0 adultscore=0 priorityscore=1501 mlxlogscore=981
 phishscore=0 clxscore=1015 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2411300120

On 14.11.2024 11:48 PM, Dmitry Baryshkov wrote:
> On Mon, Nov 11, 2024 at 06:39:48PM +0530, Jagadeesh Kona wrote:
>>
>>
>> On 10/17/2024 9:12 PM, Brian Masney wrote:
>>> On Thu, Oct 17, 2024 at 02:58:31PM +0530, Jagadeesh Kona wrote:
>>>> +	cpu0_opp_table: opp-table-cpu0 {
>>>> +		compatible = "operating-points-v2";
>>>> +		opp-shared;
>>>> +
>>>> +		cpu0_opp_1267mhz: opp-1267200000 {
>>>> +			opp-hz = /bits/ 64 <1267200000>;
>>>> +			opp-peak-kBps = <6220800 29491200>;
>>>> +		};
>>>> +
>>>> +		cpu0_opp_1363mhz: opp-1363200000 {
>>>> +			opp-hz = /bits/ 64 <1363200000>;
>>>> +			opp-peak-kBps = <6220800 29491200>;
>>>> +		};
>>>
>>> [snip]
>>>
>>>> +	cpu4_opp_table: opp-table-cpu4 {
>>>> +		compatible = "operating-points-v2";
>>>> +		opp-shared;
>>>> +
>>>> +		cpu4_opp_1267mhz: opp-1267200000 {
>>>> +			opp-hz = /bits/ 64 <1267200000>;
>>>> +			opp-peak-kBps = <6220800 29491200>;
>>>> +		};
>>>> +
>>>> +		cpu4_opp_1363mhz: opp-1363200000 {
>>>> +			opp-hz = /bits/ 64 <1363200000>;
>>>> +			opp-peak-kBps = <6220800 29491200>;
>>>> +		};
>>>
>>> There's no functional differences in the cpu0 and cpu4 opp tables. Can
>>> a single table be used?
>>>
>>> This aligns with my recollection that this particular SoC only has the
>>> gold cores.
>>>
>>> Brian
>>>
>>
>> Thanks Brian for your review. Sorry for the delayed response.
>>
>> We require separate OPP tables for CPU0 and CPU4 to allow independent
>> scaling of DDR and L3 frequencies for each CPU domain, with the final
>> DDR and L3 frequencies being an aggregate of both.
>>
>> If we use a single OPP table for both CPU domains, then _allocate_opp_table() [1]
>> won't be invoked for CPU4. As a result both CPU devices will end up in sharing
>> the same ICC path handle, which could lead to one CPU device overwriting the bandwidth
>> votes of other.

Oh that's a fun find.. clocks get the same treatment.. very bad,
but may explain some schroedingerbugs.

Taking a peek at some code paths, wouldn't dropping opp-shared
solve our issues? dev_pm_opp_set_sharing_cpus() overrides it

Konrad

