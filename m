Return-Path: <devicetree+bounces-173709-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E617EAA94E6
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 15:53:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 59EDB17864D
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 13:53:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33A5F24BD03;
	Mon,  5 May 2025 13:53:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="T7ZGHnb4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A82351D54EE
	for <devicetree@vger.kernel.org>; Mon,  5 May 2025 13:53:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746453200; cv=none; b=DxlnDnzCuks1fF5oEelKEB6/EpUe+P1oFz1YEB3YleM3Chm7ZZIuhC7haQ2Z3I9b0eLZY0XWKyqbPY+/lulzW/W4Is+pJFFbyxnSLgKb1eEnSmXHuAyG+pVMk5tIFGF4larHqTsiZsYumlc7Nko3snvJFyncOawexycDrJXU/NA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746453200; c=relaxed/simple;
	bh=Dk5TrfYsZTaKAGjfadDJlyV2DgI5O/v2XMSv1VA28qc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Ke8ZxdGzA4+UFzxDEDc4aNlP9984tQQj1zU8QMYfEPyN9OCS+0YMzyd+nku6R/G9tfjl6wG2AoYoV4nV7oZybZfofjCEJAHRizTqoNJkxm49yrAWsFcy6X13pE27t36YN1jKRJj05h3sldqRApBjAipeuc84bjIW/pxQi+vMDvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=T7ZGHnb4; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 545BhCom020706
	for <devicetree@vger.kernel.org>; Mon, 5 May 2025 13:53:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	O6JjaZi4RfYIn6ZpfLVOkLDl9POHRwHaQxHd14ACq6M=; b=T7ZGHnb4mBwSi/v5
	+VFo069X/W4731ggJ170f1/JF9v2CTXCZywrbSZ/9XaDH8vawwYHVC4xPUCemXUn
	O36k58baDMpI63dwxkqEiYOOlkcFNFW1tWfEzlR82mtnmCqvsSaEZv4iro8C+0fp
	62zzmiNI1OvoMC5Gs73qVfexJOUK3AKgP0of5opMYK6gl6S4nSKgYUv56LRs3d58
	OvruXJMFq0yHelJQlnCQ0l6Q7FMNa8eWHzJLt8smJdR2cq3vZZ/Msb1SJ+1WAZ12
	e698Yfxbdf/4TR88Ylu/qncIZ0oO2dDIOlkFltzaLW3JfLaSz5JzxCZZmzh/4lbs
	cfhZtA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46e0xstqr7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 05 May 2025 13:53:17 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-47b1b282797so12577641cf.0
        for <devicetree@vger.kernel.org>; Mon, 05 May 2025 06:53:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746453196; x=1747057996;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=O6JjaZi4RfYIn6ZpfLVOkLDl9POHRwHaQxHd14ACq6M=;
        b=RlArznWJVZJ6lGL6kwveVTi1qApBrxtskVQjDKJSahvVpYWFF0Euop2l2Ssz22FQuF
         Gj1oM2KeSlpQ/BCoKx3StheVkM0H91i7g9RWaOgWafGmrkaP5zXYyEbyQZd8u4wZE6rT
         FcT6DsSv/eb2QNCMJ5aSliiavbdKe88ak9+MPlTDHPxG9CDlj/NP3Ik0In7Z6WkySfBP
         P8AVlzwkmmj9wXjITxw4eowAX+/WM1QoFXso+qMkFvkxlv6nvHJEAQX6dj+OtzpWyZLH
         +lnozJduDTscknyTqjNPJdGBC98b97PxPe3HwycX3xhAYzF6nZCJqtzuELfe8hCP1isN
         qqKw==
X-Forwarded-Encrypted: i=1; AJvYcCW/OJ8laiY7VG2rQEPXTF5KnhVWAKg7IgFnL94XhcFughdp0gd2A3yW4vdR8N8Vz7pTQIPQgpm9F8oI@vger.kernel.org
X-Gm-Message-State: AOJu0YzYKZXhIGVhE6KPBZzToLYPW0SCteq6T9Al9oEb1cY9vOHFOROd
	qT2s85sEvOuiTAYxoB1zI1/fzrnBQb2w1tUi9WFTJY9JBsx4hFctr9sDc6LhB9v03gSEB1lmBqE
	iDX3s2BcwR04KQyiM6ZfC0WlDdH8Gx42pVAsvfbQOB0YlXjZRL3AzcEhOFB5z
X-Gm-Gg: ASbGnct6VJUw5BG0v4h2av564a87PKnazGqDZSg3/LJhCDPSUIRhl6K0qffVhF2RM1e
	yJ4YTM4/7UsoJsAd62+/z0WwZy3raU5a7QMyGCCLGIUMybRW5Bs8jhaBqQ1BG2RcRtpUXRbO6QJ
	RMpO9vesWdr6prXpB3TwCl1qEPu2BtUueVWjI37fPk8Nz4xHqIVPDZzI2UHN9l1xx4B9AU3OOr0
	plPpUUTlwpa5a4Z2LBWrWiijjciU0Slk7o1VUyXc73KSiIe5FMJplIEERg5cbChmtUN2Mqa3bZH
	7mHrLvhfIPxUalNnVhlwUSbFRZJm/eYpZJUgRtWLuHnVVfMy7lNl/vGQaG6IlsocmLg=
X-Received: by 2002:ac8:5815:0:b0:471:ea1a:d9e with SMTP id d75a77b69052e-48c32ac855fmr62114171cf.12.1746453196689;
        Mon, 05 May 2025 06:53:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF7r4e4FpvQ/V6W1AbvbRMkK18p34iEe3+n9QIq+e7sfrj+oYLch1ohMk37fGgJoMdInSkBEw==
X-Received: by 2002:ac8:5815:0:b0:471:ea1a:d9e with SMTP id d75a77b69052e-48c32ac855fmr62114011cf.12.1746453196200;
        Mon, 05 May 2025 06:53:16 -0700 (PDT)
Received: from [192.168.65.169] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad1894c032fsm491532666b.123.2025.05.05.06.53.13
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 May 2025 06:53:15 -0700 (PDT)
Message-ID: <7f2c2554-2654-4d10-b264-fb59ed54152c@oss.qualcomm.com>
Date: Mon, 5 May 2025 15:53:12 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V5 5/6] arm64: dts: qcom: ipq5424: add nodes to bring up
 q6
To: Gokul Sriram P <gokul.sriram.p@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, andersson@kernel.org,
        mathieu.poirier@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, konradybcio@kernel.org, quic_mmanikan@quicinc.com,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org
Cc: quic_srichara@quicinc.com, vignesh.viswanathan@oss.qualcomm.com
References: <20250417061245.497803-1-gokul.sriram.p@oss.qualcomm.com>
 <20250417061245.497803-6-gokul.sriram.p@oss.qualcomm.com>
 <5a17d866-a459-40c8-9e3f-90bb1cdbd846@oss.qualcomm.com>
 <e6d58532-dcd3-4c12-b70e-f765c01ec286@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <e6d58532-dcd3-4c12-b70e-f765c01ec286@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: Q4invMRn2b6h29rXMvCfCWZJqybo-4jn
X-Proofpoint-ORIG-GUID: Q4invMRn2b6h29rXMvCfCWZJqybo-4jn
X-Authority-Analysis: v=2.4 cv=bdprUPPB c=1 sm=1 tr=0 ts=6818c2cd cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=EUspDBNiAAAA:8 a=b9x4X1nyoVVrWMxn6-kA:9
 a=QEXdDO2ut3YA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA1MDEzMyBTYWx0ZWRfX0TNxRdXBuFGU
 KZn8XYdC6dSfi0hT/r28c++4UqMarnd+g3aZuv5Mb8ua5s8FRCMvu5QYDMtoR8bTrXlbrF+ogWX
 SiThhnBmc1mOW9V1OZqfctiBrj8uxQWMJM0sV9N5qrIcGKXdDXbSyLoqvvdt10+aXgCC7HsiVKl
 jfg70wUxyzRA7avQ+KIYofl/aXwPpPa8Rzt9684Ydj8f3gDcqxYjnxlGebKbkICPd8TT4YwFxGY
 rPAA2s2Y7Dwonl9H5SUBFVNFiTJ7PIqfMvAfqRbfx6WRlztrbfj6HctO5lLb19m8iROjz8PdNWZ
 8Egv1iFAFkuts5UfISMDYLVJ9gh+OKJWpa4JCKFgiRFZp02AzgkK7kk7k6G5TGV22c85auLPrGo
 2y6SuquYUupGZkUE3fBxXuFuurnMZqVJ99itW9kvvbpW9dNthbNokpCPG5tazr4wjM8GNEIb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-05_06,2025-05-05_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 suspectscore=0 malwarescore=0
 clxscore=1015 phishscore=0 adultscore=0 spamscore=0 impostorscore=0
 mlxlogscore=713 mlxscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2504070000 definitions=main-2505050133

On 5/5/25 3:47 PM, Gokul Sriram P wrote:
> 
> On 4/26/2025 1:57 AM, Konrad Dybcio wrote:
>> On 4/17/25 8:12 AM, Gokul Sriram Palanisamy wrote:
>>> Enable nodes required for q6 remoteproc bring up.
>>>
>>> Signed-off-by: Gokul Sriram Palanisamy <gokul.sriram.p@oss.qualcomm.com>
>>> ---
>> [...]
>>
>>> +		apcs_glb: mailbox@f400004 {
>>> +			compatible = "qcom,ipq5424-apcs-apps-global",
>>> +				     "qcom,ipq6018-apcs-apps-global";
>>> +			reg = <0 0x0f400004 0 0x6000>;
>> So either the offset in the driver is wrong, or the base here
>> is wrong
>>
>> The IPC register is at 0x0f40000c
>>
>> + length is 0x10_000
> 
> with 0x0f400004, In apcs mailbox driver using offset as 8.
> 
> Should I use 0x0f400000 with offset as 12 ?

Looks like, yes

Konrad

