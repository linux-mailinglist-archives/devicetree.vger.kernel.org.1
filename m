Return-Path: <devicetree+bounces-201927-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id B7C41B1B418
	for <lists+devicetree@lfdr.de>; Tue,  5 Aug 2025 15:08:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A1B124E184B
	for <lists+devicetree@lfdr.de>; Tue,  5 Aug 2025 13:08:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 00864272E5A;
	Tue,  5 Aug 2025 13:08:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RNFfABln"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E14421146C
	for <devicetree@vger.kernel.org>; Tue,  5 Aug 2025 13:08:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754399294; cv=none; b=pY1U0+pazw/c8MhP5CnSqw22bW0XQxk5PJEjkgt2v3czOtPK2X8nOdELzRN8OyVzgKLXDzfIRGva+dahkP3QbdwZSoGrNpBlSlBDvEPnXecGj0+sAFP//ooPh9DaH+iFg+vn0tUxYW3EoV0RVVedBA/e5eOyi0awudhDExK7wEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754399294; c=relaxed/simple;
	bh=XMQ/CjpHTQ625oN346Fj4oJVA2n+W7fLJLcl8OfHgdo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tenTmEAZOSM9GzGKmxERrogGHn9MO5OF6LpRvqexNuAFJT9K29RNpsw7aaw24hNvWDThnBAk9agBuv2pmqeCw29e2lH7Gn69xJX7lrO7JvhcrEdeJtwoEcuA7W7e9+FycZ6B/UTedYSrD1Ok79EEq/dlAU1LUEOpUB3ffDIJ8C0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RNFfABln; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5757XH6Q028174
	for <devicetree@vger.kernel.org>; Tue, 5 Aug 2025 13:08:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	V1RinYJ//EKx/XDr4zrnDSZd6gtIJfrzcdr6MQbb4o8=; b=RNFfABln/8ZBwmeo
	YpNeLxPvSeiJYW8CKNyoetOA57j/scU5Z6xZZn06OC7ht/+oH31RtOlYcJwK6ZfU
	TLROl26OBvFQ5IJQy9e6uBexblAfSZvfSsCMNVWSnF6AQnGOcWV9eT78PQdAuIou
	OLCmNVo3H26WhY0ehdIVh40ErOemT0tOpLK8DFDNFsiK6sqlqdxAmDvatsrtTcl2
	WgKy8QkPZgJqJC40eFC3J3lWIP6wVCBqitFJzfX8NYY4L9CuUWfLTix9vIzQAb24
	p31E3hFfemkLV4wbMCru+C6bICAercOjuJhb0eOsUOT9kG0LA5ZhMzsZGrQgyzi/
	XQn+Hw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48981rrqrr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 05 Aug 2025 13:08:11 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-7096ce64bb8so2186516d6.2
        for <devicetree@vger.kernel.org>; Tue, 05 Aug 2025 06:08:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754399291; x=1755004091;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=V1RinYJ//EKx/XDr4zrnDSZd6gtIJfrzcdr6MQbb4o8=;
        b=gxgKwerJ6V8vjl1CKGUAh/7k4aZxwjRIinf22QmHgeC19GwmsSB6mqE7ZmwhfkVoDC
         wzlTpWjIZNpj6YBGcqes6FNL9kn1/y6JW498nFfRUDUlVfaiNhYaA56hNGnSwlx2xWmh
         wjzwwzbORcEfPfpKrFL4Fgui8eYblHn8WFtvtTRoEvKQXthozXkFF9FFsdtiCizu4fIb
         ghWYhp03cgbXUydkbPru4aW03Ku6v2Xa5s3ONjiSNn4tpb0OUEWaXH8WFpWyIO/RcOLe
         c2ldqAT7z7V2ZcaAUZArS7T4TKsZHNepSwvHrlkZ3fZi8wbbPLwHt49t3RuXznY1tWD6
         Llaw==
X-Forwarded-Encrypted: i=1; AJvYcCWESFxrHEl8soH0Zph+R/pWzWYjyxZBYmF7iMwVd6ILRpIzXUqXMcADVxoWQCleyP3m67ymbtjowQWP@vger.kernel.org
X-Gm-Message-State: AOJu0YzSMgOcoQuSw+HddEGYvtmTU0e3DmnAEAfOUUPaz/4juAX4wNYd
	wCsFHI6A6oFXOw1vzo4FIchUq71JEwIBL1WmtFktBL/CZ0NWXVdTFC+KUvB/l0/oYXZBuchC1ko
	mf7g7Po67DABKNfzRf8/EN7DtHYS5xeYHAgIVrptsshYiMgqKnKJsECEDVndD1ChI
X-Gm-Gg: ASbGncv+o9KJXr9tHL+MF9NN6beiCDx0DP0uVXuDBuwBMQCUGodHdT2cZKcLl0sw5TU
	XurWYFe+ozdaljMInp7w+KyhZ77Hhj6qyOH9ehTVg1jzzBwHHTHmLHMtiZ1QlzwYEHgdAbrRVJ6
	lwMNsW7VDy5S4evvjUmX7/3WXTAgb1jFerTC7YpwE6TIQh9dYVd8kwwUqxXQtoZGeR1j8pbbkhV
	h8ASable+DzjRCXffLk7sM3uadl14ACr7LXfazopZ1xZHGmGTWfTHFgU9mxIVdbnjqgId8/6XuV
	vZ3N2/YyoZnpCTus70fpSpuGFjolH6eST5kaGCEogg6yPTGtDt3Llpg+zEmIFOJjIqDEh3jBRd2
	a9mky7BHUjVWeWPiJeA==
X-Received: by 2002:a05:620a:3703:b0:7e6:39a2:3ebe with SMTP id af79cd13be357-7e69627a8ffmr993276585a.1.1754399290854;
        Tue, 05 Aug 2025 06:08:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHzNz3BICSPsbshnHOdcR51KGwLa6oOSI7DAskcW2OrM/K4xCPKDoMD/yMxAl4j9/+41ZoXKw==
X-Received: by 2002:a05:620a:3703:b0:7e6:39a2:3ebe with SMTP id af79cd13be357-7e69627a8ffmr993273085a.1.1754399290302;
        Tue, 05 Aug 2025 06:08:10 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a1e8306sm911353866b.83.2025.08.05.06.08.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 05 Aug 2025 06:08:09 -0700 (PDT)
Message-ID: <5d5820c5-463a-4fa0-8ad9-21b75797aaf9@oss.qualcomm.com>
Date: Tue, 5 Aug 2025 15:08:06 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH V4 4/4] arm64: dts: qcom: sm8550: Remove SDR104/SDR50
 broken capabilities
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Sarthak Garg <quic_sartgarg@quicinc.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Adrian Hunter <adrian.hunter@intel.com>, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, quic_cang@quicinc.com,
        quic_nguyenb@quicinc.com, quic_rampraka@quicinc.com,
        quic_pragalla@quicinc.com, quic_sayalil@quicinc.com,
        quic_nitirawa@quicinc.com, quic_bhaskarv@quicinc.com,
        kernel@oss.qualcomm.com
References: <20250801084518.2259767-1-quic_sartgarg@quicinc.com>
 <20250801084518.2259767-5-quic_sartgarg@quicinc.com>
 <69f2807c-9a28-4b31-97cc-2756f0ab9fd4@kernel.org>
 <c7e36755-9255-4209-9d53-20077bd1d3ba@quicinc.com>
 <lkjp2353athoi76h3j3bgkcxdwfn6akcyyweipt4g774ztmmer@vcw7ru5red3n>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <lkjp2353athoi76h3j3bgkcxdwfn6akcyyweipt4g774ztmmer@vcw7ru5red3n>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: vOp5ESFwrBoxhHMeD_KDWEypowZa6tfi
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA1MDA5NSBTYWx0ZWRfX35/hYEo5mb58
 s0cAdKt2db8yaA6FMDHkTgheTnIow42SwJ8RZOxgE6DATkC/ngX+DNIzgWTexrkU+7yivUWrYxS
 saVdowAv9CMdsnoALTH3CCF79jXeRNHVaxO5OxWTz7U2QpN2x7fp5ks4FUDZIbICt3ACOgXhjZR
 YLcFHHj4FD2iWZlhK14WJK8BFvWhdEKI/Ico/6IL/O0xK+ZfvCLuMODekdV9c3q7i3Eq3E1VUke
 0jJA5yHiUL1g1oGjazHnjInn/gy+p0ZTjzHXD85X21UVCZ+zXiWhs386AcxfEZrXT8eywt+g/36
 36U7l85nrifTONlx5CalvH/vC6cEm+t5x8hK/k3KyKuLqC30w5V/6ecGYuXern1A62c0Ngq9s7o
 4NMSkYyW1+TkW8r+j7Z+uZr5bHQmaVa8rwMbPdBGixCIk5MA/FJHAn/6o1uRRW5ucsyXbYMA
X-Proofpoint-GUID: vOp5ESFwrBoxhHMeD_KDWEypowZa6tfi
X-Authority-Analysis: v=2.4 cv=a8Mw9VSF c=1 sm=1 tr=0 ts=6892023b cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=36rLTHuftK6yE2Nq2w8A:9
 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-05_03,2025-08-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 bulkscore=0 clxscore=1015 phishscore=0
 spamscore=0 mlxlogscore=762 mlxscore=0 malwarescore=0 impostorscore=0
 suspectscore=0 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2508050095

On 8/5/25 11:59 AM, Dmitry Baryshkov wrote:
> On Tue, Aug 05, 2025 at 02:49:29PM +0530, Sarthak Garg wrote:
>>
>>
>> On 8/1/2025 2:32 PM, Krzysztof Kozlowski wrote:
>>> On 01/08/2025 10:45, Sarthak Garg wrote:
>>>> The kernel now handles level shifter limitations affecting SD card
>>>> modes, making it unnecessary to explicitly disable SDR104 and SDR50
>>>> capabilities in the device tree.
>>>>
>>>> However, due to board-specific hardware constraints particularly related
>>>> to level shifter in this case the maximum frequency for SD High-Speed
>>>> (HS) mode must be limited to 37.5 MHz to ensure reliable operation of SD
>>>> card in HS mode. This is achieved using the max-sd-hs-frequency property
>>>> in the board DTS.
>>>>
>>>> Signed-off-by: Sarthak Garg <quic_sartgarg@quicinc.com>
>>>> ---
>>>>   arch/arm64/boot/dts/qcom/sm8550-hdk.dts                     | 1 +
>>>>   arch/arm64/boot/dts/qcom/sm8550-mtp.dts                     | 1 +
>>>>   arch/arm64/boot/dts/qcom/sm8550-sony-xperia-yodo-pdx234.dts | 1 +
>>>>   arch/arm64/boot/dts/qcom/sm8550.dtsi                        | 3 ---
> 
> You missed several devices which use SM8550. Please fix that.

I would be in favor of making this addition in the SoC dtsi and removing/
altering it on a case by case basis, since as I explained in the threads
of previous revisions, the fix for the limitation is additional on-board
hardware

Konrad

