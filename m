Return-Path: <devicetree+bounces-221254-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 23E87B9E1A1
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 10:44:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9FED64A5342
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 08:44:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AB8727604E;
	Thu, 25 Sep 2025 08:44:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="j6pEScOB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 90DF525EF97
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 08:44:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758789855; cv=none; b=RKAMacryMgsHq7BTvtMAL5sXorKFDaVwH8RGrc+8NOnBj5oUZGHnA4+HRPoo+yOBONkPeAdBNe1RjPo+r497OuisYDRDubGUtCHr9Y5ARbNznORI5QQO3c398CAPF9byFEzQiaD/8W9Eyiw2Pc0I1RkxepCnkDpFEEiX31UQ85M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758789855; c=relaxed/simple;
	bh=lOmZm2NYdnU1g9B64OCOuyPIweqw+BqEGm1w7g/Oqi4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Hw+NgLGN6awFDoJPWzhOYTz/Mr13mnfK1xKDmSQo7egaoJD28W2qLmOl8jRGEsmDPLVnbLx5PpeFXAlai8WeXvi4r3jPorxQEJ5jDNTTWyao60gauh56bXUnJZAPysl+2wGFkoBnzu+OkmA0Gcej3BQeXkHR01bdDtSRjMeGUd4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=j6pEScOB; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P1RxMD019931
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 08:44:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	dBT7rTwERo8BHIfakro0N3iM5Q9lW3mzacSjwxIquI8=; b=j6pEScOBZmPw3Rxn
	FdJp3S6HavZlYMK9KkSaGAAgDXJrHL9ucgZw5atdyBSCGtsPElGKT/B+IaJfZEvy
	t0S7L/GjBW+MhJBcDSr27Kr9h9AtfZzRks/Jc4uJg29As3uHgHgZBKszqFCBh2hO
	HdXHYTM6ZlJvuGq4g+GSqnhaPTtyIInJCRexcZm8hI/u7aqDqo7Ho714TSvWDyC/
	GFJ7Fx+54g5vlEJONe+K36IHU9FL11MAf0d6EMELCU/Eum4DsIQhAWMfGn7MLMzl
	3gsDU8/hggDZa/6oeXVu6H3WlQmPlAUem22OCLGxr4DRyF1269b23UgcToAIsMBt
	H9G9NA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bjpe0n2p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 08:44:11 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-277f0ea6ee6so8709275ad.0
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 01:44:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758789851; x=1759394651;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=dBT7rTwERo8BHIfakro0N3iM5Q9lW3mzacSjwxIquI8=;
        b=XqgY6fzH35tQWpjOv6yWEZ1xGYYk3z3g//X+fDbZCIILJ1KHSx/NqwdcTt3LdWAehE
         6YfWjyYDZ7JRZOubrtfnJf88OMCmQhkFJh3kmpmS3gjuRt0PNChHjxf2qeSd1xCRrX2f
         eKpPw8KefHljsoO/NYdyMrJ9XgXN00DfMFt/d+gP8UBIsUZ1C6QYuUIrVzf6OYkBaeMn
         e3mZWfn83NGTQTXlCJyvbyJeDnZB4AMbPn/3e4jK8nnLRXlivwvCRpZArUSMThMc/xzP
         7dkHiTb45WByyGIEH+aEkubpLfGF4fTdJz4zn8bvXoxvb/o00FOaD4ZGNfAlMt0W046I
         0ilg==
X-Forwarded-Encrypted: i=1; AJvYcCX4i6JMIeXEClngwJeRXhUBlg7HcIUCOCR5PI8luftk9NMkj/uynXWtw5p9Vg6hS2Y8C/kxD0GcoDwN@vger.kernel.org
X-Gm-Message-State: AOJu0YzYUFU753rivsHH/XpAS8ppaKdF4hvSl/cPjOHrQbq+eVr8j9+H
	NS9n5y/wWTlYJquEOxEug5l3H0TUc4XDayN4iaR4t4RoTc0WkRrFSArr5pJsjpCM9iTcTGj+RtJ
	HOj2x7Mq5as1dRBUYeKvs/0jyBYDmhaT8Tw0+0T2qeecRskLF4tHknptgfdwJI26BsSKr0C1u
X-Gm-Gg: ASbGncuMxeDSVt6ijKJAsEMzF1xpg/yymX4NjIPNRKSghn9xxL71bEW7vp9BYXLz2m5
	yPC2+157zogdeDOimN3YsGLrv58qrWCPw4anUiOgLxFSEEArLcV79uUS/lbKps0rOCLg7jxJwNf
	IFW4O0xkmtXo4dbB67XqbaOezEl3b96vzVnbPfB/VRRD78ZSwKN3rOR8EJ/I5GDbJudK3NpfKsL
	T59gqVZPc2hFgw/DAlU0H2p+juzwM5dYbMgR2l0oTxxLFsqEFAE1M6/SkZmtCpowHevKNXCTs/d
	pdUEhH1nANVl3SZQ7fhsd7Lbf2Mbnne8K+DsV5hIUFtIo+0VOL/Zy3hhHGZttFbrgck=
X-Received: by 2002:a17:902:cecb:b0:269:8d85:2249 with SMTP id d9443c01a7336-27ed4a0b73fmr29763275ad.22.1758789850665;
        Thu, 25 Sep 2025 01:44:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEteYAh52n1ZK6YfsOt/78cpYQ1O0vITDWQG8F1u35YkHePDlHA6DTWb9y/kavs8tH2Xnef9g==
X-Received: by 2002:a17:902:cecb:b0:269:8d85:2249 with SMTP id d9443c01a7336-27ed4a0b73fmr29762945ad.22.1758789850210;
        Thu, 25 Sep 2025 01:44:10 -0700 (PDT)
Received: from [10.217.216.93] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b57c53db8d2sm1528142a12.24.2025.09.25.01.44.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 25 Sep 2025 01:44:09 -0700 (PDT)
Message-ID: <1c90a127-4b39-4cad-9805-d4449990baa7@oss.qualcomm.com>
Date: Thu, 25 Sep 2025 14:14:01 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/9] dt-bindings: clock: sm8450-camcc: Remove sc8280xp
 camcc to from sm8450 camcc
To: Bryan O'Donoghue <bod@kernel.org>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-stm32@st-md-mailman.stormreply.com,
        linux-arm-kernel@lists.infradead.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com
References: <20250924-knp-mmclk-v1-0-d7ea96b4784a@oss.qualcomm.com>
 <20250924-knp-mmclk-v1-2-d7ea96b4784a@oss.qualcomm.com>
 <a8ebec72-eee2-4a02-ac6b-57678aa7c50f@kernel.org>
Content-Language: en-US
From: Taniya Das <taniya.das@oss.qualcomm.com>
In-Reply-To: <a8ebec72-eee2-4a02-ac6b-57678aa7c50f@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: lp_h_m8o_IC8kWAsy5qGkr4-RSa51qiU
X-Authority-Analysis: v=2.4 cv=Pc//hjhd c=1 sm=1 tr=0 ts=68d500db cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=-DM4tyH-3wswODK-JwcA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: lp_h_m8o_IC8kWAsy5qGkr4-RSa51qiU
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDAyMCBTYWx0ZWRfXznBi0wGyaCmq
 z9V91LY8+yTP0YhnItKQX1nd2h4+1RO9oWjVkb7dntk2/0OgWqzOxEcGvIDlbTDZ4WDXYoBIHd9
 FZPRBIWop1ujCiOWX+VaEPpKCUxHnLTsw0tcWEYAZ5ISqaBljLj6gmodcgrTMDBmgNs9TmDEUvo
 Psva1f3uUH6yQEizasakrJnLOBep923xlj5pAso8/8ogIbVZjq13bsfU5cMsuTdav6DwIVoyUC+
 KCduxiLQIKG0v8nFzt1ie3er0c3dqFk9L6WDJTkz6iM5Ibtb/fDp49WhDwzcN6uspdGXTmnzPKG
 j4DYu59o850U3ayBbUpS8U4G/u/pjMsPBEaB4cFwdv//E8MI/ce9K6iCpiLA60cvrRnRAswup7N
 70xDlik9
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 malwarescore=0 impostorscore=0
 spamscore=0 suspectscore=0 clxscore=1015 adultscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509230020



On 9/25/2025 1:59 PM, Bryan O'Donoghue wrote:
> On 25/09/2025 00:56, Jingyi Wang wrote:
>> From: Taniya Das <taniya.das@oss.qualcomm.com>
>>
>> SC8280XP camcc only requires the MMCX power domain, unlike SM8450 camcc
>> which now supports both MMCX and MXC power domains. Hence move SC8280XP
>> camcc from SM8450.
>>
>> Fixes: 842fa7482915 ("dt-bindings: clock: qcom,sm8450-camcc: Move
>> sc8280xp camcc to sa8775p camcc")
>> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
>> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
>> ---
>>   Documentation/devicetree/bindings/clock/qcom,sm8450-camcc.yaml | 1 -
>>   1 file changed, 1 deletion(-)
>>
>> diff --git a/Documentation/devicetree/bindings/clock/qcom,sm8450-
>> camcc.yaml b/Documentation/devicetree/bindings/clock/qcom,sm8450-
>> camcc.yaml
>> index c1e06f39431e..dbfcc399f10b 100644
>> --- a/Documentation/devicetree/bindings/clock/qcom,sm8450-camcc.yaml
>> +++ b/Documentation/devicetree/bindings/clock/qcom,sm8450-camcc.yaml
>> @@ -63,7 +63,6 @@ allOf:
>>           compatible:
>>             contains:
>>               enum:
>> -              - qcom,sc8280xp-camcc
>>                 - qcom,sm8450-camcc
>>                 - qcom,sm8550-camcc
>>       then:
>>
> 
> This is not a revert.
> 
> Where does the compat string go ?
> 

The compat is now part of
Documentation/devicetree/bindings/clock/qcom,sa8775p-camcc.yaml as part
of this commit "842fa7482915".

> You are missing the part where you move the compat string to where you
> think it should be...
> 

It was already moved as mentioned above.

> Also why is this patch appearing in a series about _adding_ Kanaapali to
> CAMCC ?
> 

This was to reduce less dependency on the series.

> NAK
> 
> ---
> bod
> 

-- 
Thanks,
Taniya Das


