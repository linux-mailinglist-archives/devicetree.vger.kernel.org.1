Return-Path: <devicetree+bounces-123795-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 033A59D5FB7
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 14:26:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 881181F22270
	for <lists+devicetree@lfdr.de>; Fri, 22 Nov 2024 13:26:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1CC5E1DF960;
	Fri, 22 Nov 2024 13:26:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QbPUWHFy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E125A1DF75B
	for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 13:26:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732281976; cv=none; b=MkxuYxXcWsNMquYFV8jAnhcLa3KhzVDN61NOm6Ue7YcjbmEgtA6CV49yWgOcwpgLdTRZCNF36kCiZrzCD66+oy5wyI8OQqbeTmrrGMWlHorMgt1P/N2blqjOpRtofmWCeKhFo6tpnSZ3Q/ubMBdd7v7HnHJkzW8ZDZkf36lomok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732281976; c=relaxed/simple;
	bh=uUyOMGMoFChJ+GENSrAWGin8mkhBFrwhidMYJaDsLHA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=f0FJDEIk973+R15eeuUPy8a01Mrbnh3BttUcsZpaWnHz5Y9HU3nxN4TAkpweP/4yL58C5wItEawBTug+jFBpvk0kkm30TCAv+i3ALTJkz6OoZvBMgb/ug11hTpdhLWhDsVj1D741Idmwy1082QCXjmJiNaMnq5IUv8Z/ogrXl0E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QbPUWHFy; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4AMDDQSN004590
	for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 13:26:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FJN/iDdnxQqSDqzOlFmE9LueyI9STyZX7oBMmPoV7KM=; b=QbPUWHFyteVT02bY
	AFoqr+y92fxFGs00x87CxDDr7AFeDH6NdZzDw/lq+mCiMeCKU0pWTH59OWerwfux
	Az/fnvI1F9u+p6XxW5simXXOCQtAllM2O9z1aKbwwC9ZLSmrLa9XtCGSutmURyzF
	AX52JG3Y7Ol+Pyiihukma9mfR8JO80d4nYnZPFVo17onUzZscPqngi4dvfQ7FMOk
	QagD2uBqFo4gyDEiyCSeJeOKU8baUcy5g6stpUFUV1ZVbMQ/mujtf4O4C0T7ecSM
	tnBucBI7CQgq9ulmKtSLfPJJ5sevkkIQeuf6b6uPtPI46T/GKN8wRsR+Flibcknh
	MiJ+bg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 431ea771qf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 13:26:12 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6d3b1d1d8c1so6028186d6.2
        for <devicetree@vger.kernel.org>; Fri, 22 Nov 2024 05:26:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732281972; x=1732886772;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=FJN/iDdnxQqSDqzOlFmE9LueyI9STyZX7oBMmPoV7KM=;
        b=YKNyZTzOm4C/3XGqnOWidXw9UW0re8n4jrbAfvl5dhAQFzGHoEy7h47yBsDWTavUd7
         hG/ZwcfOoegLWhvHGZziev/zW0U40RQmFMiCTudZQO7F24AGp5Gxd3G54KqOSohAVqQF
         HZ//GThfLYN8a/z0ssmXFy+ybIBQIuu2cRWTjbUAPUkAewIMZkuxdOLxdW7s4qoRqnjW
         zOVaOae3UMqrEia094BdWbogf/2fcGBluDr10bfluH8xWj66gdhE0wlG94lvF2P4lSMG
         7e8JE58VuQ5WGBnHLj6v1Bw/oNitTgE8tHH1AE0XObuJvkDBcEsRNdbUIuDvFAbZ21KV
         iESg==
X-Forwarded-Encrypted: i=1; AJvYcCWRO9/aIP0fe4zvBKUuA1YXv6aAx2ev6Y9gIacgci3B26AlAdB3+cRSqHdFU4YWUNpzX0gikVkSGqce@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6IWX225Jw7nOoYnchqAmfdqmNk+ZgJ/EURTqrcXrKkdVbyuCR
	cxsSp2XYLdXRwqBQlZewULy/tqbX6Aj8EpJ6A+Djgu3pf5r5KT5lWXHsIKdkB3BC+APJ0aqBtOE
	lw6Nje8renjKajlP/HXb6pzT/piIoZHqnuXi4gBII+TB/81ocG2tXkbOgl0of
X-Gm-Gg: ASbGncvGxJEkoqY3WqnLiZOeBlS4avg1MCXILnIw8eqGjig/5GroNURopy90FDfj5NT
	6xskeZodOKZ1V81HuTxn/XO4/sTlAZeooA0dCcnj78hwDfdZqwelx4JeBJgvQQTylSsc7tfnJLU
	wNxHNhQlBpgthrTChnp4exBj5j+XBRFq3lVGxlSHcuW2k9TG6kHXdvYzYK10fUk/pozaCLQZuQd
	HnN9R5eVyq869tk4bx90ZB+lPuQgaV1sYt6cP9rI4vPdvf/s8lhsuzJfz681d+ptfF/Dgh3Gfs7
	WCvreSVX+AXNB9IYlx9Ncs9blTUYaWw=
X-Received: by 2002:a05:620a:1915:b0:7a9:bc9b:b27 with SMTP id af79cd13be357-7b5144fab73mr133907485a.6.1732281971655;
        Fri, 22 Nov 2024 05:26:11 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHNBMGTTEz8N5Uy2vLOFhYDkuzfjanKPlK6kKxDUODz4PmeKFvUxohv5ewCAZccG/y56Xg0+w==
X-Received: by 2002:a05:620a:1915:b0:7a9:bc9b:b27 with SMTP id af79cd13be357-7b5144fab73mr133906485a.6.1732281971275;
        Fri, 22 Nov 2024 05:26:11 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa50b52f9ecsm100545666b.124.2024.11.22.05.26.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 22 Nov 2024 05:26:10 -0800 (PST)
Message-ID: <94bbfb3e-ce61-4125-a08f-c3a5ad47742d@oss.qualcomm.com>
Date: Fri, 22 Nov 2024 14:26:08 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] arm64: dts: qcom: x1e80100-romulus: Set up PCIe3 /
 SDCard reader
To: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20241122-topic-sl7_feat2-v1-0-33e616be879b@oss.qualcomm.com>
 <20241122-topic-sl7_feat2-v1-2-33e616be879b@oss.qualcomm.com>
 <n2iw57ngqjsyawatqjpw2kpls3hlnx62ryrihnk2t4xfojuevp@svndllaqa4zt>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <n2iw57ngqjsyawatqjpw2kpls3hlnx62ryrihnk2t4xfojuevp@svndllaqa4zt>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: n8QIDFbAMKmrnwKVZbfz9ir4ngo4msTJ
X-Proofpoint-ORIG-GUID: n8QIDFbAMKmrnwKVZbfz9ir4ngo4msTJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 adultscore=0
 bulkscore=0 mlxscore=0 suspectscore=0 lowpriorityscore=0 clxscore=1015
 priorityscore=1501 impostorscore=0 malwarescore=0 mlxlogscore=880
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2411220113

On 22.11.2024 10:27 AM, Dmitry Baryshkov wrote:
> On Fri, Nov 22, 2024 at 03:14:11AM +0100, Konrad Dybcio wrote:
>> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>
>> The Surface Laptops have a Realtek RTS5261 SD Card reader connected
>> over a Gen1x1 link to the PCIe3 host. Set up the necessary bits to
>> make it functional.
>>
>> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>> ---

[...]

>>  
>> +&pm8550ve_2_gpios {
>> +	sde7_main_reg_en: sde7-main-reg-en-state {
>> +		pins = "gpio6";
>> +		function = "normal";
>> +	};
>> +
>> +	sde7_aux_reg_en: sde7-aux-reg-en-state {
>> +		pins = "gpio8";
>> +		function = "normal";
>> +	};
>> +};
>> +
>> +&pm8550ve_8_gpios {
>> +	vreg_12v_x8_en: 12v-x8-reg-en-state {
>> +		pins = "gpio8";
>> +		function = "normal";
>> +	};
>> +};
> 
> These pinctrls don't seem to be used.

Moreover, two out of three are wrong ;) That's the reason for the comment
about them being untouchable.. could have seen that coming.

Thanks for spotting this, I'll resend shortly!

Konrad

