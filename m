Return-Path: <devicetree+bounces-174189-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A1DE9AAC439
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 14:32:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 50B1E1C22E1A
	for <lists+devicetree@lfdr.de>; Tue,  6 May 2025 12:33:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 78F2F27FB3B;
	Tue,  6 May 2025 12:30:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oLpwPYIQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE82A27CCD7
	for <devicetree@vger.kernel.org>; Tue,  6 May 2025 12:30:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746534658; cv=none; b=BqLqhTZuP6Vd1MY+K3GesT/vlw2XxDkyvptphg4y4+l/QAQaczlU/357oEPJPAUq3/egw7b9W/wDn0RmZBQP1QwtIBrRQghk0nRdn1Qovid6pvj7J93+z/h4myi4aQ8ptHIxCuEwU0uLihJ3odpz6Oxqc1fxLC/4Nbyr2KS0OOU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746534658; c=relaxed/simple;
	bh=pUiFaLwVBImBD5Z5Q5wY5+uOD7WzAbnbXpy7ntjFsRc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=cTWS+Ot9gWunqZXaQqU6naFDShC07Z83NKAOIPkLI34I8srgwO5uUH2epSeH5gVrn1GSwmNXsFJ534rUuE3o2bYH1bBbtYS+dRYcszDIgsMtovOhEIDyZsNQMsY91OTawjKgjvb+rdm6v04qKuN0biFoIViriT6WqzVEtX2oRS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oLpwPYIQ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5468aB0T026840
	for <devicetree@vger.kernel.org>; Tue, 6 May 2025 12:30:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Zf9K3mOYbxQlmis33OmEEWlzQK5/i/u1heT0zkBRk+M=; b=oLpwPYIQnTIuIuFY
	/LYD1XHNfDv/RpWZOECRHHUPXPASq4XeYas8d92Cv84vrVXj2O7tRFvhWCJd+qe6
	rGK+8tgFG2VyPhDzyJCMqcPabJGndzfCvvCuZGt1Kc0wuOKS/MxIyGDuwiDF9vgT
	+ADZ5zdRMDbm/ey01tKSMit1jZn40zyT8YNI3GOyHStslgHdXHhsfEtDa4/YQPHr
	JZyFAdMvhUVfotrCl6moJBo2+T6FH2gsMZt/SL6KwmGbS5lm4qugNStKCqx6EOtQ
	f/yQ/rlFoLe9FzgeZu9b/OhkXen/XWd64b8XOS+zacgOlfwkXCJqktOkuYCXXOpJ
	AtNDAw==
Received: from mail-ua1-f72.google.com (mail-ua1-f72.google.com [209.85.222.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46f5sv28yd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 06 May 2025 12:30:55 +0000 (GMT)
Received: by mail-ua1-f72.google.com with SMTP id a1e0cc1a2514c-86d71474a4cso381367241.2
        for <devicetree@vger.kernel.org>; Tue, 06 May 2025 05:30:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746534654; x=1747139454;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Zf9K3mOYbxQlmis33OmEEWlzQK5/i/u1heT0zkBRk+M=;
        b=NfICVPsI0lHABOU456ldwokICI/U+ndwDiAyYLCgnJBvEU6ERW5H2Qa4J9+SADlj5p
         sud0jmFaXscS8SZhcs9frha4ghyQqBs0PE2q5hnh/5qiZd/ndXemz8WHBgu/1OnbW28k
         OnafRDGyeXV1lAqfeZwEkrzU/1lESBloLouveU1kBndCVs9AauVf2iBZTev9En8CoONx
         /QxKF2zG0335K5KU54Dg9DeMEf3GDdD8ZTRoGU0iQnuNkVmi1vltzMTMg0lJghhYDorJ
         LvZSlaK2caM/Q0JiX0ml5Zz8iLuVhOYY8j0I8zwIHZwJlMN7eZDr8pGFyHCXFD4X+K6Q
         zwjg==
X-Forwarded-Encrypted: i=1; AJvYcCWUDL7QjEsCHVKtKAuhcJsGKT9kPW4ipCuW2goQO2L9qm17p2ZYYTcfxJ0X5HPPhjCl+GJouev9Yqxs@vger.kernel.org
X-Gm-Message-State: AOJu0YwGBlCPZO3UpFmFgRQBNq91rt9/R+hySuMK01yrChMSsQgAUNeA
	ZLyjejU72o4INF6RfLUDiv7IJGemRFINLsXPy2icYiuyUSo4nzE7OBYl2HqA5pxfKgQ6EAdXDxm
	u7stm3MPGONUIEC/Y58DQaE6FTDG7/uRi4AHmW6/2maVnR0PmmnjhAyD5THh6LTLGZtY1
X-Gm-Gg: ASbGnctcutqr1R6CppMPEPTn29cwzsZGqIu/pd5IBnZD4+4ayOLmShoQ3ab1JYpW4lm
	wHqAe6aU899dELt9sAZFedLpdPIGVNbhkq4qX6VHloiRg6aWVX5zcryXosx6rHY6h8PceoOhGhb
	7hZD1qdZndgrun2f2vpabs/52PROd2aIHkWRtrnPI8dW1aYWe1I1yYovlcG/U/bHsz1+llMk/pY
	G3hQOg0N6pO/kfq3BdGNpNn9Za/rQ6AF/e0b3NSD7REqUijpyzCV1Gi28Y9wsH241V1WmGJ6XBS
	exkPdrVB19Q6cgCWtZxs37i3QoFQsX3XP0Sh7dVgPwGXd8qo9qsCl4/IPzemeayg6vVopN1L6fK
	x9FLUgtdfAZe+zc2aSwvtk0v1DYL9ErXzjPWDIni7CionMiyQbIcZUfOAgi7E1JWd
X-Received: by 2002:a05:6102:15ac:b0:4c1:935a:2446 with SMTP id ada2fe7eead31-4db14917a78mr5787041137.19.1746534646436;
        Tue, 06 May 2025 05:30:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFl0Q2w7zijINWE2ixlFEP1S5My+wFHpW9gXB3O8n/p/EyB4MtNk4FENIPHd0FclYiNsRvgrA==
X-Received: by 2002:a05:6102:15ac:b0:4c1:935a:2446 with SMTP id ada2fe7eead31-4db14917a78mr5786920137.19.1746534645868;
        Tue, 06 May 2025 05:30:45 -0700 (PDT)
Received: from ?IPV6:2001:14bb:a5:4d95:a005:8dc1:eb95:a448? (2001-14bb-a5-4d95-a005-8dc1-eb95-a448.rev.dnainternet.fi. [2001:14bb:a5:4d95:a005:8dc1:eb95:a448])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3202a89f258sm20012021fa.75.2025.05.06.05.30.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 May 2025 05:30:45 -0700 (PDT)
Message-ID: <a100a875-4951-40e7-a516-59040649f218@oss.qualcomm.com>
Date: Tue, 6 May 2025 15:30:43 +0300
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 4/6] arm64: dts: qcom: Add support for QCS9075 RB8
To: Wasim Nazir <quic_wasimn@quicinc.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        kernel@quicinc.com, Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20241229152332.3068172-1-quic_wasimn@quicinc.com>
 <20241229152332.3068172-5-quic_wasimn@quicinc.com>
 <vr3q2c47ht5iebf7nvy3qywoxlquwma3p2tffswrefpmxqy24h@wrfecu6mcqcn>
 <aBoAjaI6nDvSyM/v@hu-wasimn-hyd.qualcomm.com>
Content-Language: en-US
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
In-Reply-To: <aBoAjaI6nDvSyM/v@hu-wasimn-hyd.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: E6O7eLwG5UV3cGQwdqGEduxFMOEdhJqa
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA2MDEyMCBTYWx0ZWRfX5jZlJVeGJ8Og
 C81rK5Y56ioBlsR/YOxyHMerkAEoOUpvjPaiLEIPFAEZOyzUbQc9Z7Bc46hOk4emCTkrxMnJHI7
 q480WpNq5ZIQ3fgPxLOhAmk58ITk3MJ4yQw0+kSpEqEzF+F6/FYQtPOvisXkhqPxC6PYxZ8vmVI
 X3IajFjnfbEfIq4Bc/fjFd5AAPNP8hQOWeNCvH5dTKIZzieFAyxwo4C/sdP2FKwTKdenTFdLpn9
 Ykwj1QCg22VpCUUmq0o64msVNblW/tWOwg8Agxhf90SavVbb+Ng9wvEGMzzIPNYh0bf4U8nGxYy
 /0tQIG89lhef79QtAqQ59YzbTiXHBC9Su443DiBqmtGVqFP/9hi61nvncxu8uIRID8+7g1WokZt
 X7xWswiR+TOWq8bhSIh/H3bewtMikSUL1ihPP49MxaogHjv2H26BkjGttsQvEtlQKXvrlG5s
X-Authority-Analysis: v=2.4 cv=cOXgskeN c=1 sm=1 tr=0 ts=681a00ff cx=c_pps
 a=ULNsgckmlI/WJG3HAyAuOQ==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=dt9VzEwgFbYA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=1Ca4EbaLgH0oIYhIK4MA:9 a=QEXdDO2ut3YA:10
 a=1WsBpfsz9X-RYQiigVTh:22 a=TjNXssC_j7lpFel5tvFf:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: E6O7eLwG5UV3cGQwdqGEduxFMOEdhJqa
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-06_05,2025-05-05_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 clxscore=1015 suspectscore=0 priorityscore=1501 bulkscore=0
 mlxlogscore=877 adultscore=0 impostorscore=0 malwarescore=0 spamscore=0
 phishscore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2504070000 definitions=main-2505060120

On 06/05/2025 15:29, Wasim Nazir wrote:
> On Tue, May 06, 2025 at 03:08:17PM +0300, Dmitry Baryshkov wrote:
>> On Sun, Dec 29, 2024 at 08:53:30PM +0530, Wasim Nazir wrote:
>>> Add initial device tree support for the RB8 board
>>> based on Qualcomm's QCS9075 SoC.
>>>
>>> Basic changes are supported for boot to shell.
>>>
>>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
>>> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>> Signed-off-by: Wasim Nazir <quic_wasimn@quicinc.com>
>>> ---
>>>   arch/arm64/boot/dts/qcom/Makefile        |   1 +
>>>   arch/arm64/boot/dts/qcom/qcs9075-rb8.dts | 281 +++++++++++++++++++++++
>>>   2 files changed, 282 insertions(+)
>>>   create mode 100644 arch/arm64/boot/dts/qcom/qcs9075-rb8.dts
>>>
>>
>> For the next submission please include at least the UFS support. The
>> board is pretty useless without the actual storage support.
> 
> We will be adding UFS change once the basic boot-to-shell changes are in
> place.
> I have already pushed the next submission (v6) here [1].
> 
> [1] https://lore.kernel.org/all/20250429054906.113317-1-quic_wasimn@quicinc.com/

Sorry, I missed it because of the rename.

If v6 gets resent for whatever reason, please include UFS into v7.

> 
>>
>> -- 
>> With best wishes
>> Dmitry
> 
> Regards,
> Wasim


-- 
With best wishes
Dmitry

