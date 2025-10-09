Return-Path: <devicetree+bounces-224866-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id BA81EBC8873
	for <lists+devicetree@lfdr.de>; Thu, 09 Oct 2025 12:36:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id E273B4F2907
	for <lists+devicetree@lfdr.de>; Thu,  9 Oct 2025 10:36:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7EC382D8390;
	Thu,  9 Oct 2025 10:36:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Q/w+Fvyd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E92C92C15BB
	for <devicetree@vger.kernel.org>; Thu,  9 Oct 2025 10:36:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760006197; cv=none; b=Oi/XI+iT2P/ND0Ar8rOXxIdrpceCu7cCyUz0bYi4dQES4nfEuM/yogLoWGf4a4/x/JMeun4j/vdEUhhgq1CjM7oV3xgcjirLOFyiP6eOTJLuaFT1fHdLUOAx31zVDb8vdKrBwvE601QwZbiGA0pojVcx0wU2PvSdboIa2utZfz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760006197; c=relaxed/simple;
	bh=Uffd3qhqQX8T2QmVySytMSwy734A6Dx7GqzHMTI2XNM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nCulp4xNjh11fY9iHy7WlAlOhILe82QRQj/LaxuJ4drDsEy6zDleBMrNMWkcnSjfpscdV4laW4/kRTFurPdNyYGOWfrbpIdR1wKrJLxPrScpx7Wzghmgj5IExaUwOb4gJUxu4siDRfr4RRUVxnNhnAva1o2myGnGMSp4TrY3GK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Q/w+Fvyd; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5996EO5Y010843
	for <devicetree@vger.kernel.org>; Thu, 9 Oct 2025 10:36:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JIJDBCBIg1twPqmDVsmDKKaAwSLfEctE8SQbINeNBoM=; b=Q/w+FvydNHo8X1/B
	+AXpi0+Swa5J+XQ/geNeQ8nkkJF5U1xvdnGyuLAtpKNiv/tFFGZ/EjtSuEcd0yp5
	0cEgyL76g8p8XbtbdL9Q/zMxTUSa18ljpyqig4VTTlwx0u++NKHaoV8+SAhiLFzt
	6/KGe9UsG6fmMDHQxeDr54qmvJfp0fkgS0pHQ+MIsyB5iMUrveZcnbSe9vpZ4SCd
	KdXjyHhTYnUIKdrgaBCG333ixntrDqcirFeQGtyub1tXxcCjzOQ4f+M/J5I3/Dzy
	Z6iEun65oyz8Del38YPIIwIIYRNy2GzT2Q/D5kU9i4p67GOg8UWOjQkPGSFVZdhw
	aWqSUA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv9aadpm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 10:36:34 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-269880a7bd9so17392315ad.3
        for <devicetree@vger.kernel.org>; Thu, 09 Oct 2025 03:36:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760006193; x=1760610993;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JIJDBCBIg1twPqmDVsmDKKaAwSLfEctE8SQbINeNBoM=;
        b=hn70RllzDbFArcQJsHUcnvraPHOybFT1iksSTThAMLDFB4lpJV9eTXzd8v7+AwNWyz
         cz12VcrM8kxUuvoBoxMfyjE6MmoE5Lkh2DUCiIbuMju82QVZAj55iCz7cCMvR009GI/J
         Jku7yfbwYS/yZwest9SXK/QGlgNCWALKANf6X1i7neawgVQJvA60LVf6LFAQ00KallcM
         i07mSWeW6Ws8QoJZf1Pd13e17Q8l73U/GFVpV9aK6QzjGRpn/I4cjxYyxlQ/kgm1p4f+
         OpJGbkQ/43Ka9t2/4yi8xm6VtyKuXDxlYDM61Lf/zL2MNOqn0eh8XTfJb2jRsZ6JOoyO
         Mhzg==
X-Forwarded-Encrypted: i=1; AJvYcCXSxSccZufaDVM8/saglV1WbKIhRySLyCD2J+mjYeHiWbq+daKI2pEKa08WIfwPPw5sVbVx56E2o3jD@vger.kernel.org
X-Gm-Message-State: AOJu0Yws/ywWPJ8ml+d8DYdmbQbCUVx2kWsl2XJv4seAYbeFBpxqqYFM
	6YQdyTV/oWlQtNlwzhpis2ICq6IU2k3TsE5KOM+H9rc+jxUwM5mfuXoqAsOn3+BtIK853wjR/MF
	JlSpT2sNzFAPycDy+0UAACVHQfUY0xsSwH5zXRCzbDNa73uFRmByhe3v3wo91b1xO
X-Gm-Gg: ASbGncvgNLnI8KX5919IPHsW538qG4JQQZ5RNVvWHBHUAbZ2y4tgAVbCUKbDneopNy1
	mpMLrRm0WH3y5wwKUphMjMANeiTq7P/HGFuZEGL6l7t+1jBAu6alnX3ZHvbRS/tplABnavuRMEz
	9A5LI9wTIzKDmD7Fxj3MiO5q5W/54fsLpjQ1xGgYcbEim7+sDdkzVM8nerXXORAh5VL8SDLH6AI
	uKxp8dnoZNc0Cf2NzP9WSKYWJPYqt3QmPSA7e4+cKDI97Q2zWB2gEU0CyFqgTBaXK5c0b0scp7g
	ogwvetq+aIYDDwC6cAjQJLjpR0IyfkO3r9aQwU2AlW+6mvdqs1aaVB8KiSz0jzN+bk7KkwkDSQ=
	=
X-Received: by 2002:a17:903:2f0e:b0:248:7018:c739 with SMTP id d9443c01a7336-290273ede9fmr82418545ad.28.1760006193354;
        Thu, 09 Oct 2025 03:36:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGnmuc2TMn8t1SqRdjUlCwadYgfMLU57/ABb8D1b4oUqw/kKFE6rOzxHrm+dsfcGBkxJQop1A==
X-Received: by 2002:a17:903:2f0e:b0:248:7018:c739 with SMTP id d9443c01a7336-290273ede9fmr82418115ad.28.1760006192877;
        Thu, 09 Oct 2025 03:36:32 -0700 (PDT)
Received: from [10.217.217.147] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29034f366c0sm24318595ad.94.2025.10.09.03.36.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Oct 2025 03:36:32 -0700 (PDT)
Message-ID: <304d90a7-a35d-4e01-9263-adf0f609d76c@oss.qualcomm.com>
Date: Thu, 9 Oct 2025 16:06:27 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 2/3] dt-bindings: clock: qcom: Add SM8750 video clock
 controller
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20250829-sm8750-videocc-v2-v2-0-4517a5300e41@oss.qualcomm.com>
 <EAIobHjo8rM1e0LwqDqaUllC0qjV5ElMMhk6KgT1oNnFt_-k7ctM2_6kym9OjEtse5o4pOFM7yCkXgrSGRZhuw==@protonmail.internalid>
 <20250829-sm8750-videocc-v2-v2-2-4517a5300e41@oss.qualcomm.com>
 <d965949c-a7a0-43df-9bf1-c1232fc7e38e@linaro.org>
 <555039f9-a168-4a9c-b45c-d4583c553bc9@oss.qualcomm.com>
 <4777e507-c329-4c22-a45f-099fc57e31e8@oss.qualcomm.com>
Content-Language: en-US
From: Taniya Das <taniya.das@oss.qualcomm.com>
In-Reply-To: <4777e507-c329-4c22-a45f-099fc57e31e8@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMiBTYWx0ZWRfX1kaF480v/k6a
 AxAHJL0Ex2C4PxzU7mB9IVypEcBpf9uOZWPkvllRTucH0N6QaVc57LZVwIion4ObWeYJ3utdJvF
 Cx3c1KgDgdCq9C83m2BsJgT8Gr12Hmk+nbkwNTvc2bcGPN7I4gnrFND/YqicpVOdh3v/ABqqFno
 0n/RYM/il2bVpxiboie/n6lvltKnSTZ5GsvkaxTMFgyo1OXtdbEX61N1TK5+G6Bw+aM19sWrUlF
 Bq8spbU3QbxWBGq/ezIEhkcU3FG/ACm0JgOwuh0DygOtikfVTi/a4hxRyz53Af/XZ7bFhOVrRt8
 M7bN7UaixP7Pu5CCgC20kYUXXd/0fnJerfUqQ+SwIxxWsWcRY1AhQ/ut0XoF/Wq31Pcdm8XiWEL
 j/8GNVs7f9Xm0KIMuWM3I/HFzO090w==
X-Proofpoint-GUID: 0rvfVWer2GH6DM2Emx4ZrfUXOsHl-pJF
X-Proofpoint-ORIG-GUID: 0rvfVWer2GH6DM2Emx4ZrfUXOsHl-pJF
X-Authority-Analysis: v=2.4 cv=JPk2csKb c=1 sm=1 tr=0 ts=68e79032 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=KR3EwNOJeXORIeol_oQA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-09_03,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 spamscore=0 clxscore=1015 impostorscore=0
 phishscore=0 suspectscore=0 lowpriorityscore=0 adultscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080122



On 9/26/2025 4:44 PM, Konrad Dybcio wrote:
> On 9/26/25 11:18 AM, Taniya Das wrote:
>>
>>
>> On 9/15/2025 4:28 PM, Bryan O'Donoghue wrote:
>>> On 29/08/2025 11:15, Taniya Das wrote:
>>>> Add compatible string for SM8750 video clock controller and the bindings
>>>> for SM8750 Qualcomm SoC.
>>>>
>>>> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
>>>> Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
>>>> ---
> 
> [...]
> 
>>>>   properties:
>>>>     compatible:
>>>> @@ -25,6 +26,7 @@ properties:
>>>>         - qcom,sm8475-videocc
>>>>         - qcom,sm8550-videocc
>>>>         - qcom,sm8650-videocc
>>>> +      - qcom,sm8750-videocc
>>>
>>> Shouldn't this be qcom,pakala-videocc now ?
>>>
>>
>> As of now, Bryan, all of Pakala is using the SM8750. We can migrate
>> everything together to maintain consistency.
> 
> We settled on keeping new compatibles numerical for already-numerical
> platforms (except board compatibles where all the fuss was / as it makes
> sense)
> 
> Konrad


Thanks Konrad, will keep "qcom,sm8750-videocc".

-- 
Thanks,
Taniya Das


