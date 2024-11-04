Return-Path: <devicetree+bounces-118644-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 42BEC9BB107
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 11:25:53 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C84C61F211A8
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 10:25:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7260F1B0F1E;
	Mon,  4 Nov 2024 10:25:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="K5wuGBtZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6E181B0F1C
	for <devicetree@vger.kernel.org>; Mon,  4 Nov 2024 10:25:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730715948; cv=none; b=DPPWJYQbDn8tnD8yCq+li9NE4UtNmY7J766F5TtjVBHowmADVXtEJLP8A3iGUC4fpiipBmtxG29yQLeFGbRa2Lv9jcumz3HKbSH5s0S0pYfRZ6qMkBBsWDZ0x2He/geNn440m8zXJgPdJL8z5k8/nu6CRfdH0TWqMM/aEGzQpFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730715948; c=relaxed/simple;
	bh=+gCuWEJn0C1lgXokyEhrPg1H1XcdYRJBgjY4pcDSDh0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=SVt7ROX28VztOn47FVjoipWjOQL5yDHzJo8Kto86XB+YJIY/j3NxHNCD78BQS/pDogB8IvGpE3Ct0bEYObR5ri6cARv2Ru7ZF53Aj51PTjX36TUHuTP34tArTx9koJFV4rfUZeZuMr4E9S+20YJJIxoMo/hD1SMSJ5lAl/qSD6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=K5wuGBtZ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4A3Nw80l030757
	for <devicetree@vger.kernel.org>; Mon, 4 Nov 2024 10:25:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	hFnvzZQahOtP+3FXIo1AE2b7BsvHwLPdNBWNlcuhJog=; b=K5wuGBtZbXxdrE0X
	sbhgZ0Owv1dWxHvYRra1vJG3UHfUyuImX6IMoWAoe0RXWTfV06pCr9rWmO6I7mRV
	h6JetzoCN6bBB8RjjQAT1gI0HDmqrRVHRI+bkirEITkyS/S+s8/G59+NwtGr64C2
	1PJ67WsajhHk2PcXypjh0Jg6no2pC+2QgBv+WPxlYfNa2OmCvoumhAG+1E2Qh6Gx
	Dj2SCeH6fIaSSFloczeR7vDCWfMY6omXnVnXPkX+agMnkpZfBykYe9K9jObsa2Tp
	WctPgYr5hLV9RPqBWv9RTlp6kznB6tyESyGSAwKdDbmhb9IQUHi3agbuHAZMlwny
	hNZTDg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42nd4ykqgn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 04 Nov 2024 10:25:46 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4609c883bb6so10177801cf.0
        for <devicetree@vger.kernel.org>; Mon, 04 Nov 2024 02:25:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730715945; x=1731320745;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=hFnvzZQahOtP+3FXIo1AE2b7BsvHwLPdNBWNlcuhJog=;
        b=adWf9vFYDduxQBTSA4RDioQx5bjHWFt+nCIl7Nhj/cidhS9eL8w8Ug2R2owkq09LpN
         Da7GAwzj5Y210jPqfVt/yy0ezPir6+2/ayQ8AWYAtQWXtao8D8JRhQSgO4MBsI0W9PaZ
         a0rE0YiiYOWDkjqmXYfo3BAIJelDGWwqLRPvIfmzdSlwkYPc7OEmRGMFSFpYkjT1JWEf
         Gybk7kk524sIc0iusTObAhfTNI9cTqCdFbT8FY8X3HHh8XcnyvWb/m/A7Oarjq48t+0G
         w2gk/xafD1J0x26FpNowAJdDyQ3IdyEEWCT6kWsIq3SZWLQrw1b3OoJKH6RUIF7dtWdd
         oULA==
X-Forwarded-Encrypted: i=1; AJvYcCXn+R5VJOtPSyQio4Bv6PSw9UtHuq3fZzZP4bKS22h6c2J22hqIAr9CXwVLtX9RBB+hUlNCncQqzUPM@vger.kernel.org
X-Gm-Message-State: AOJu0YyhBqf2hbZxY/ii3ceWiYQICKzlD6JT/2twYmzEa2kf3dmS6YxE
	jFYy8NtLnAmrcoCFgN6H8Dke/Z6cU7RUSkI8PvWWDWazpEXX6TN1UW8R9x/AxlLw+hKBnBz929c
	fimF8hnflk1wPI7pHs4dxbD4C09DVgY7UDaHNKiaIPhCLw+n92aahPwBs+H4u
X-Received: by 2002:a05:620a:1a1f:b0:7b1:e0f:bf97 with SMTP id af79cd13be357-7b193f5a54fmr2156645085a.13.1730715944633;
        Mon, 04 Nov 2024 02:25:44 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHlUBFsv9IaGC6aIZhFfXyhX/0CySFI52XzinWd8aV3WzEGmCAoMoEBpKx9e/Qe+aZFYis8wQ==
X-Received: by 2002:a05:620a:1a1f:b0:7b1:e0f:bf97 with SMTP id af79cd13be357-7b193f5a54fmr2156643785a.13.1730715944293;
        Mon, 04 Nov 2024 02:25:44 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9e5649454csm533238766b.8.2024.11.04.02.25.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2024 02:25:43 -0800 (PST)
Message-ID: <ef1d1796-b45a-4b1b-bb61-4a3c63d3c718@oss.qualcomm.com>
Date: Mon, 4 Nov 2024 11:25:40 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/4] usb: typec: Add support for Parade PS8830 Type-C
 Retimer
To: Abel Vesa <abel.vesa@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Heikki Krogerus <heikki.krogerus@linux.intel.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Sibi Sankar <quic_sibis@quicinc.com>, Johan Hovold <johan@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Trilok Soni <quic_tsoni@quicinc.com>, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, devicetree@vger.kernel.org
References: <20241101-x1e80100-ps8830-v4-0-f0f7518b263e@linaro.org>
 <20241101-x1e80100-ps8830-v4-2-f0f7518b263e@linaro.org>
 <ed0c77bd-770c-406d-851f-8589e53cde8b@oss.qualcomm.com>
 <ZyifBejZtb7x0Vyc@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <ZyifBejZtb7x0Vyc@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: YevWz5aqksk79fuOtT-CVgdGpy1U0VyO
X-Proofpoint-ORIG-GUID: YevWz5aqksk79fuOtT-CVgdGpy1U0VyO
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=790
 malwarescore=0 bulkscore=0 impostorscore=0 priorityscore=1501
 lowpriorityscore=0 mlxscore=0 phishscore=0 clxscore=1015 adultscore=0
 spamscore=0 suspectscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2411040092

On 4.11.2024 11:16 AM, Abel Vesa wrote:
> On 24-11-02 10:17:56, Konrad Dybcio wrote:
>> On 1.11.2024 5:29 PM, Abel Vesa wrote:
>>> The Parade PS8830 is a USB4, DisplayPort and Thunderbolt 4 retimer,
>>> controlled over I2C. It usually sits between a USB/DisplayPort PHY
>>> and the Type-C connector, and provides orientation and altmode handling.
>>>
>>> The boards that use this retimer are the ones featuring the Qualcomm
>>> Snapdragon X Elite SoCs.
>>>
>>> Add a driver with support for the following modes:
>>>  - DisplayPort 4-lanes
>>>  - DisplayPort 2-lanes + USB3
>>>  - USB3
>>>
>>> There is another variant of this retimer which is called PS8833. It seems
>>> to be really similar to the PS8830, so future-proof this driver by
>>> naming it ps883x.
>>>
>>> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
>>> ---
>>
>> [...]
>>
>>> +static void ps883x_configure(struct ps883x_retimer *retimer, int cfg0, int cfg1, int cfg2)
>>> +{
>>> +	regmap_write(retimer->regmap, 0x0, cfg0);
>>> +	regmap_write(retimer->regmap, 0x1, cfg1);
>>> +	regmap_write(retimer->regmap, 0x2, cfg2);
>>> +}
>>
>> Somewhere between introducing regcache and dropping it, you removed
>> muxing to a safe mode during _configure()
> 
> Oh, yeah, I forgot to mention that in the change log, it seems.
> 
> Configuring to safe mode is not needed since we always do that on 
> unplug anyway.
> 
>>
>> [...]
>>
>>> +	/* skip resetting if already configured */
>>> +	if (regmap_test_bits(retimer->regmap, 0x00, BIT(0)))
>>> +		return 0;
>>
>> What is that register and what does BIT(0) mean?
> 
> Looking at the documentation, the first register is
> REG_USB_PORT_CONN_STATUS and spans over the first 4 bytes.
> 
> But it doesn't really help here.
> 
> BIT(0) doesn't really have a name, it just says "Connection present".

Please define both then. STATUS_CONNECTION_PRESENT sounds good for the bit.

Konrad

