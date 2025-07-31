Return-Path: <devicetree+bounces-201008-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3DA07B16F39
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 12:12:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8316F1AA0C50
	for <lists+devicetree@lfdr.de>; Thu, 31 Jul 2025 10:12:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54E6E299944;
	Thu, 31 Jul 2025 10:12:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="P5jlmacJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC85E21A92F
	for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 10:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753956744; cv=none; b=Q1qumy3YfcjhKVTeZ07VPZWQy+zpU6rqH6kzDjRmG/DWlN0TfShFD2HjnabDH2Ukva8gFwgRO4+BxpZn2648nMklzy1CNYklOZwjWBh403pHDWwQmkBiOuX23FrD+Ds86346H8ysZTXmicv52dKKBqZkCQhcvIuQa9rOjd5/TCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753956744; c=relaxed/simple;
	bh=vmOuvD2gebJGeJp/mgNi1ZkYn6G8Mc/7lUsj5Pe1NWU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DC+FMIUhAwzBZVvd/AWr/yNv1Sq/axAaOtA21EUYMFBBbBSi49euyoR2vnpH5bNavmyWYir4ng40/ge1EtcFKPNVJWMj8F47XgrMZ8G4J5y5EuZMp2LjtAJfnTcca6w1200wFen64BEzvDPf2PTspOkm7VYqEMDyHPHNEkSNdLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=P5jlmacJ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56V9fL81026493
	for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 10:12:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qvwHQvvH+17Jwk56yeRVBW4CP7kIswZF13PCDIQvzbY=; b=P5jlmacJR6IUgSxj
	2ccwm+uB1BTp26GbYLVchMrb0DiKrgEf3+rF4Yh6ozIKX19DyJ9LvHOkeIWiXGpG
	wXl4wpT/MCZqhFm0LCPUHDZt5JevuH1JPd8wKoL+K3X0Esm8wesgRDHu8DaYgaau
	Uzdcf7koKug1ZHoxsXkjaK19xrUdCM2pn//fG0hVJ66zNBvoiyNa/RILSkaMm7n4
	9xAJOVB0GJhIXUKvt29+m+Ao61ix1QAt7gxpGV1Pygy7adyleZZdMl277c9IhFWb
	1+2jGqlKON7EvEfBWcaxIgvwWjneKpYcPKVQuozGDhbQrdWs+24MwehcYSQZzYpl
	hKNsdQ==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484p1aq790-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 10:12:14 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-70771f26fb7so150266d6.2
        for <devicetree@vger.kernel.org>; Thu, 31 Jul 2025 03:12:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753956734; x=1754561534;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qvwHQvvH+17Jwk56yeRVBW4CP7kIswZF13PCDIQvzbY=;
        b=v4jv2YHiSKs8QHUyEXiXupysxPOhsn/Ce8MLIH3G+VAvEbDZRIUK2yKkwqcKaqrGhz
         MV+odTmZvFup+WKVFC3hX7d9GG3qCzhIIr6t1UOMKOS/3FEYzozeH23Kep3VHCVN8/ZD
         yDTBXb/8q1GBp/VztyVEF3hCjnrbez5EmDQS/0BT33vwYJyBYIrh7pRPpxMv7X7ZEzxR
         01kc2WjLHkubACdWyK5uWQQYoXY7Ifbd0fo00+k7PNDBuCa578UdCBJggHcXwL1idymJ
         CaYoOSFCiohQ/2wO/nJ+csw/vMqvHRyMPDDuGhhl3SuWnWwhcngDWc2MkYqVQpHc4x7y
         L8bQ==
X-Forwarded-Encrypted: i=1; AJvYcCXrBHA344Ipx/cZuxCA2rNwNjVZdfu/xUJBr/AFJfcUXqyUWn31OC7j4MBb9CDR9aFFF/yxyRsZFRfY@vger.kernel.org
X-Gm-Message-State: AOJu0YzPcA0gKWgd/0sKBesHMq3gyXfjlKlCD6xQrD2OWsPipZ/xiyIw
	K1WCOArFnmWERvwrWU1G99Z1wFvnymCqGDwzM5VdyjbNmjm6gmYXHcBVWTfJXrYdwSLHOE7wQ+h
	xVhPAUmiWtgLQkJAABS1ZFxPjQ7zi3Jc2lr4g2NINxxrwzNw/VldCroxoOsmDPJge
X-Gm-Gg: ASbGnctwVL2yNk60LGtGkZq9kFGrq/bu2i+vy/ExHZsPHS8OmIgl0QnZfRAdUMxf0M5
	qFjCjqsWWUm96otufsIpb2ZhWrw80aszjO0GdA23+vAvlg3GGFtbXE+CihSjEo7O8FMtZKCkD4H
	iCvaURkxV0C2/mRMvF6vXb2MZ6mGYbCx8O78laYTjcOloPdRruDxbJ0DZ/h4OJ51BRR3dqTm/Oa
	RVCQ0lfDGq48zLjDneY9u2ls8h1HKq9Q+vD6ND0s0uI0THzntPpDfsoRRMK6zCUVEEZVzFWu7bH
	FWuHGfI+Vtz5pZM20nJyypBqL/Rpi3pm3s8rQTHwRr1GhcPjTl8iJNNfXX3zo5Ct5lRwJQED6LH
	NOi6Wlkknvn0VdwhU4A==
X-Received: by 2002:a05:6214:dcc:b0:707:4831:b7ed with SMTP id 6a1803df08f44-707672aff59mr37985376d6.8.1753956733671;
        Thu, 31 Jul 2025 03:12:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFTlbx2VL/KCLHn6A4JzGJRMYtiFUx6VGYkgtJzm4JIQStIWhLL4lP4KD+QcUQWXTwOXn1wkg==
X-Received: by 2002:a05:6214:dcc:b0:707:4831:b7ed with SMTP id 6a1803df08f44-707672aff59mr37985156d6.8.1753956733016;
        Thu, 31 Jul 2025 03:12:13 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-615a911451csm863783a12.60.2025.07.31.03.12.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 31 Jul 2025 03:12:12 -0700 (PDT)
Message-ID: <0cf62b7f-624c-4751-a126-f0a0b4a6d82d@oss.qualcomm.com>
Date: Thu, 31 Jul 2025 12:12:10 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sm8650: Add ACD levels for GPU
To: Neil Armstrong <neil.armstrong@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250729-topic-sm8650-upstream-gpu-acd-level-v1-1-258090038a41@linaro.org>
 <63da4872-2365-40eb-9b2e-d3393ddd9b68@oss.qualcomm.com>
 <a88b22b6-4be5-4176-95b0-0a03530bfd76@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <a88b22b6-4be5-4176-95b0-0a03530bfd76@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: o4I46Cu5gv_jRrL3rT-cmiMg3Hgio_1y
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzMxMDA2OCBTYWx0ZWRfX+kQEWVwl9epN
 /irhabuq6yl6Ub/LzvCqDK/fscdC7kiERHdhlxei3w1Ew5BlUARHQ/7pjaF9EW7S4crucsnNeOi
 Hmdm7HTAA3IbhrX/afTmF9yWUuL8A3rOT7VhvmDw9vTINhlLNOb9OTCdpjTmF/AEOtfmPoCtwdw
 v4yafMQnuS8uURWt2XbGkgzEfs2myGv0TNhIjgb0MzPkvF9sn4uxkITZh+9ocEY6S4NqdjxsXWj
 FrhT8lcr1uV7uHCXmJ+ENU9yBJTlRqqXr4Y0QfIh4FM066pMkOVzGqBKO0dkyDiOmJEQ36cagj2
 LUCLwvE/zqJRkTEB6IzCYxp9pCSOwOk7F2cDRYJDM76XhC9KphfELumkKLFLQt25GiF56gEFz6v
 38lTg8SLnswsZTWYyQMEwUoekgOKBhf4XlcN0L9Mq1jAy7iQ+slwzJbe1dD8/UdKizJTZwki
X-Proofpoint-GUID: o4I46Cu5gv_jRrL3rT-cmiMg3Hgio_1y
X-Authority-Analysis: v=2.4 cv=KtNN2XWN c=1 sm=1 tr=0 ts=688b417e cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=qC_FGOx9AAAA:8 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=dJUZX_0qjHRVC8eAntkA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22 a=fsdK_YakeE02zTmptMdW:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-31_01,2025-07-31_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 lowpriorityscore=0 suspectscore=0
 adultscore=0 mlxlogscore=999 bulkscore=0 spamscore=0 impostorscore=0
 mlxscore=0 malwarescore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507310068

On 7/30/25 4:28 PM, Neil Armstrong wrote:
> On 30/07/2025 12:00, Konrad Dybcio wrote:
>> On 7/29/25 4:40 PM, Neil Armstrong wrote:
>>> Update GPU node to include acd level values.
>>>
>>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>>> ---
>>>   arch/arm64/boot/dts/qcom/sm8650.dtsi | 14 +++++++++++++-
>>>   1 file changed, 13 insertions(+), 1 deletion(-)
>>>
>>> diff --git a/arch/arm64/boot/dts/qcom/sm8650.dtsi b/arch/arm64/boot/dts/qcom/sm8650.dtsi
>>> index 495ea9bfd008500dd2c9f46ceca94cf5f972beca..4cd933219ce008bd1c603c87778e210b6332e29c 100644
>>> --- a/arch/arm64/boot/dts/qcom/sm8650.dtsi
>>> +++ b/arch/arm64/boot/dts/qcom/sm8650.dtsi
>>> @@ -4127,72 +4127,84 @@ zap-shader {
>>>                 /* Speedbin needs more work on A740+, keep only lower freqs */
>>>               gpu_opp_table: opp-table {
>>> -                compatible = "operating-points-v2";
>>> +                compatible = "operating-points-v2-adreno",
>>> +                         "operating-points-v2";
>>>                     opp-231000000 {
>>>                       opp-hz = /bits/ 64 <231000000>;
>>>                       opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS_D2>;
>>>                       opp-peak-kBps = <2136718>;
>>> +                    qcom,opp-acd-level = <0xc82f5ffd>;
>>>                   };
>>>                     opp-310000000 {
>>>                       opp-hz = /bits/ 64 <310000000>;
>>>                       opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS_D1>;
>>>                       opp-peak-kBps = <2136718>;
>>> +                    qcom,opp-acd-level = <0xc82c5ffd>;
>>>                   };
>>
>> https://git.codelinaro.org/clo/la/platform/vendor/qcom/opensource/graphics-devicetree/-/blob/gfx-devicetree-oss.lnx.1.0.r1-rel/gpu/pineapple-v2-gpu-pwrlevels.dtsi?ref_type=heads
>>
>> doesn't set ACD for D1/D2
>>
>>>                     opp-366000000 {
>>>                       opp-hz = /bits/ 64 <366000000>;
>>>                       opp-level = <RPMH_REGULATOR_LEVEL_LOW_SVS_D0>;
>>>                       opp-peak-kBps = <6074218>;
>>> +                    qcom,opp-acd-level = <0xc02e5ffd>;
>>
>> And other values differ too
>>
>> What release did you grab these from?
> 
> A much more recent non-public release with different gpu-pwrlevels for different SKU codes,
> all sets ACDs for D1/D2, and the ACD values are:
> 
> #define ACD_LEVEL_TURBO_L1    0x882a5ffd
> #define ACD_LEVEL_TURBO       0x882a5ffd
> #define ACD_LEVEL_NOM_L1      0x882a5ffd
> #define ACD_LEVEL_NOM         0x882a5ffd
> #define ACD_LEVEL_SVS_L2      0x882a5ffd
> #define ACD_LEVEL_SVS_L1      0x882a5ffd
> #define ACD_LEVEL_SVS_L0      0x882a5ffd
> #define ACD_LEVEL_SVS         0x882c5ffd
> #define ACD_LEVEL_LOW_SVS_L1  0xc02a5ffd
> #define ACD_LEVEL_LOW_SVS     0xc02d5ffd
> #define ACD_LEVEL_LOW_SVS_D0  0xc02e5ffd
> #define ACD_LEVEL_LOW_SVS_D1  0xc82c5ffd
> #define ACD_LEVEL_LOW_SVS_D2  0xc82f5ffd

I found sources confirming this, thanks

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

