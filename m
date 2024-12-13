Return-Path: <devicetree+bounces-130485-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 99B7D9F00BC
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 01:18:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A29D116A0BD
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2024 00:18:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 232F1621;
	Fri, 13 Dec 2024 00:18:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="laxb/s81"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91B6F23C9
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 00:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734049116; cv=none; b=MrUD2FHGYJnZROfh2CBJPw+nqHcFDFJnnNYEUC+N+Wa9lQEFPqrDVXpylT6TOMmiehBX14pZ3i5VyR4ElMr5rmH1RyjzK1qML4FhJvjaCxy8JqM/Jv9DXRev8ZmhaXz0h7qCCekFWHu1ZWiq/S/CzGTusIHqrVGKTQcM0ON0RgI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734049116; c=relaxed/simple;
	bh=baRH6tcc0+6vgBvsDSbgP0uh0QG1T/57Mc3y9UTn9jo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=COLULp+/apwmS4yCBsMUMiFc8M87YFKI4fiA7kccA7VwHmRjgeLOnD6u1qDHppzECNCigofOftu1T1MYz+Zk730zm23Ls69R6KrDkeRWtii2r++FQ0ElEmZOYHZ4YONdQWJNxTSl9Qll3Cldr0RRMXKGrdd9h7CBwuxEwLcxRXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=laxb/s81; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4BCK1MEU030103
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 00:18:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dnJPmrz0LeHN3qYUvxdboiVX678r8gqWXCFVwvYF50g=; b=laxb/s81I0HPC1cI
	dS97cmIsp9fAMYJIfu5n/BJPibeMyPNrRFx6Dsk+BF8tD0o5abj3CxyHbJr6tTri
	a2RHPaF7sXv/x/HHtU4g1lPbU2ixkY1br6atb1+iHfExuKqxZLOa2Ek2BrHdp5at
	rVywxUrvxN50MJjFLJlmZfDlEz7weCBmfORifvf5o+gAzo7rWkH/4z/uZRmOF42l
	hugZWdH0SjiYviDVtsUDlg7AZTV88ZYwUt845dTHZCc5F7uQCfj9L/sLkF5gy0kH
	8j5dzDGnE+Ip1b2FbuKc0Yx6dPyon4eQY+tfpL4no9mpz5CMPjV0GqfYnujCVw4L
	UO8lDw==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 43fwgej2q6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 13 Dec 2024 00:18:33 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-467a437e5feso774011cf.0
        for <devicetree@vger.kernel.org>; Thu, 12 Dec 2024 16:18:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734049112; x=1734653912;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dnJPmrz0LeHN3qYUvxdboiVX678r8gqWXCFVwvYF50g=;
        b=WRxsiJM1NlKx1M+6VZzqvChl73ip9iCvUcBij5vUkg0tnghzXhJPbqhCLsX9WVBnWf
         EktFNJGzbCC9WpChT2XEWWoSWL7HYe1e627id7O2IMapeDqYyILsParR8Qf/fNqwIWBE
         bjcE8OGgd2t3uMk+AtebcS7kHYfCv6foENQ0lNKDU1pPxBAWHUReZ1u2TIqOUcn3Tb+y
         sJaocHp0ALXBHV2ilr561SHMjxZuoqbYXTF7WCqENPJX7/wHI0KTcTPXln5LVY8X7G+t
         pLQJEpYD8Pjzmvp+tMjH/ICpdglVeglGjEaplQ7k4WBTbJgCyD6K3jx3Jc0IwxLVVr0P
         Iy8w==
X-Forwarded-Encrypted: i=1; AJvYcCU0W4ljVa5SQwaLCvl+25Vwzm57cIhSQ1611soK9BaZ5c8J3PePARj6YmQsnwWdYoLL4C3vxnWum7Yd@vger.kernel.org
X-Gm-Message-State: AOJu0Yzk2iNH3I7Kk2pf1jfMCT5YBDSSgFZKk7cNiEH2tPRB3R+DM5Ml
	xQFigq9rmC9kkqbBSLIaSW5K70tiGlmoQbrUMG9DlXN7m5TTR38p88SizFR+zaR3teoTe22snkl
	ETGZvtTO8l2adMZIK0J7nsFxoAgZgRK6qqXKAojq9tLvD1pQiac7PhVD9wNHC
X-Gm-Gg: ASbGncs1YHSDMx7FOmOEeyLwqc+rz6yR02kCn16S/WU8J1FZrVRJO4FazNvkNNMHIPg
	LKUjBVZ6dAzmdpl1XBy3SRC+dlIzd8njdTW8RZ5gRBv1faebCSxvdlrhKuwSIviPvXeH+vFGkPG
	q3XsJndIwUPT3lpBdHUY4DVwTc/Nfrj5Mv7niphLfkBoP44Ibcvz02Xhl9ozZVdIvyrBoFDp0UB
	X7q+v42vglYZD8EKTp6les4W/NE4OLXIU72aXyMjCHuf/re7BOjPFkYMcx9CiUGWyXRbjkr78WJ
	U0FaBlDUTtJxcLRwgSo9juKSyydM0QKx4MOb
X-Received: by 2002:a05:620a:192a:b0:7b6:d252:b4e8 with SMTP id af79cd13be357-7b6fbf088c3mr25644985a.7.1734049112281;
        Thu, 12 Dec 2024 16:18:32 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHESuoUw/QDmsrIP5AQDKgWxFZtU5J+bURwDqhfhD9dKJRI8vhhA3/GIlyoCinrIglwX+eP0Q==
X-Received: by 2002:a05:620a:192a:b0:7b6:d252:b4e8 with SMTP id af79cd13be357-7b6fbf088c3mr25642585a.7.1734049111911;
        Thu, 12 Dec 2024 16:18:31 -0800 (PST)
Received: from [192.168.58.241] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa671f14766sm769393466b.169.2024.12.12.16.18.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Dec 2024 16:18:31 -0800 (PST)
Message-ID: <e3dff1d0-989c-48db-9fd6-6b3c209d1452@oss.qualcomm.com>
Date: Fri, 13 Dec 2024 01:18:30 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 15/22] wifi: ath12k: add BDF address in hardware
 parameter
To: Raj Kumar Bhagat <quic_rajkbhag@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        ath12k@lists.infradead.org
Cc: linux-wireless@vger.kernel.org, Kalle Valo <kvalo@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Jeff Johnson <jjohnson@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20241015182637.955753-1-quic_rajkbhag@quicinc.com>
 <20241015182637.955753-16-quic_rajkbhag@quicinc.com>
 <142f92d7-72e1-433b-948d-2c7e7d37ecfc@oss.qualcomm.com>
 <0796510c-20bd-4a81-bd60-40aacbcf61c0@quicinc.com>
 <83d216c4-bf9e-4eb4-86d3-e189602f37cc@oss.qualcomm.com>
 <30e5d714-2e52-4a0e-9dc8-b6cacf6ad382@quicinc.com>
 <e63af513-5fd8-40b0-a1b2-daa9821ebf5a@oss.qualcomm.com>
 <b3581663-8dc0-44d4-9395-df385316bb09@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <b3581663-8dc0-44d4-9395-df385316bb09@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: Q2vbtdIDu6EM8QkJTCdBi-kplYqwCiEP
X-Proofpoint-ORIG-GUID: Q2vbtdIDu6EM8QkJTCdBi-kplYqwCiEP
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 priorityscore=1501
 suspectscore=0 bulkscore=0 mlxlogscore=999 spamscore=0 clxscore=1015
 impostorscore=0 mlxscore=0 lowpriorityscore=0 malwarescore=0 phishscore=0
 adultscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2412120174

On 9.12.2024 5:23 AM, Raj Kumar Bhagat wrote:
> On 12/6/2024 4:19 PM, Konrad Dybcio wrote:
>> On 6.12.2024 5:34 AM, Raj Kumar Bhagat wrote:
>>> On 12/5/2024 11:12 PM, Konrad Dybcio wrote:
>>>> On 3.12.2024 10:18 AM, Raj Kumar Bhagat wrote:
>>>>> On 11/4/2024 7:46 PM, Konrad Dybcio wrote:
>>>>>> On 15.10.2024 8:26 PM, Raj Kumar Bhagat wrote:
>>>>>>> The Ath2k AHB device (IPQ5332) firmware requests BDF_MEM_REGION_TYPE
>>>>>>> memory during QMI memory requests. This memory is part of the
>>>>>>> HOST_DDR_REGION_TYPE. Therefore, add the BDF memory address to the
>>>>>>> hardware parameter and provide this memory address to the firmware
>>>>>>> during QMI memory requests.
>>>>>>
>>>>>> Sounds like something to put in the device tree, no?
>>>>>>
>>>>>
>>>>> This BDF memory address is the RAM offset. We did add this in device tree in
>>>>> version 1. This is removed from device tree in v2 based on the review comment that
>>>>> DT should not store RAM offset.
>>>>>
>>>>> refer below link:
>>>>> Link: https://lore.kernel.org/all/f8cd9c3d-47e1-4709-9334-78e4790acef0@kernel.org/
>>>>
>>>> Right, I think this could be something under /reserved-memory instead
>>>>
>>>
>>> Thanks for the suggestion. However, the BDF_MEM_REGION_TYPE is already within the
>>> memory reserved for HOST_DDR_REGION_TYPE through /reserved-memory. Therefore, reserving
>>> the memory for BDF_MEM_REGION_TYPE again in the Device Tree (DT) will cause a warning
>>> for 'overlapping memory reservation'.
>>
>> Then you can grab a handle to it with of_reserved_mem_lookup()
>> and of_reserved_mem_device_init_by_idx()
>>
> 
> The memory HOST_DDR_REGION_TYPE is a bigger memory around 43MB, while the memory
> BDF_MEM_REGION_TYPE is smaller around 256KB within HOST_DDR_REGION_TYPE, Using the
> above mentioned API we still have to store the offset in ath12k to point at memory
> BDF_MEM_REGION_TYPE from the start of HOST_DDR_REGION_TYPE.

That's still way better than hardcoding platform specifics in the common
driver

Konrad

