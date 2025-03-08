Return-Path: <devicetree+bounces-155685-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 713AFA57C75
	for <lists+devicetree@lfdr.de>; Sat,  8 Mar 2025 18:44:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AB20C16ABCC
	for <lists+devicetree@lfdr.de>; Sat,  8 Mar 2025 17:44:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 963B31E833E;
	Sat,  8 Mar 2025 17:44:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hr8zAAT7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C3C91BEF74
	for <devicetree@vger.kernel.org>; Sat,  8 Mar 2025 17:44:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741455882; cv=none; b=pCBIkeRUqMX92A3d+i5ShB5Lsp9FzaUQ4bsd4OMbYQAmMi04myVNKCZC3FxtJtqCNsys/kpea4tN+aDftgNBkNutLCcruEibvt2pXSYHOlMjy2uBjq2P4C1UvdS3pVGR/5+gsXMpwC/3rzEBGeUJuk1zt6y2PW8Fj+O+1PvicA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741455882; c=relaxed/simple;
	bh=q5uR06cY+jAnDp/h7Pi7MuljuNi05KT1CKa+bgbKDWg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=QuXEBuknesDBdfSQHDE13G/VzOHcMP/cOvn0Qt/3yjeRqol0FZCltQqzAYCByZwMwiPaD4uwXCHlQ2Il2Wf/u0H5El144nO1QLKevS2EsBRyds9ItYeQNKvcj7qNy69Jn2gzuHalZa9g13fH1HhRzdrQhC0GeoP796TKbiW302o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hr8zAAT7; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 528Dieh2016648
	for <devicetree@vger.kernel.org>; Sat, 8 Mar 2025 17:44:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	OLWsJUYVMSW/2p1uHoMFxNSZXw/knEpq6SZxmuPMxgk=; b=hr8zAAT7JxWPuumA
	0dsejk28swJhxG9us4KApZ3HAH0vnZ+JaaKCMdX5DQOKTv/SbirUDTXP0W9Tr2zr
	HI6sBMBkcylxyr1b10qwAegmq5KnXUUAvfyEmLiZrH2GUhbyGv31bAL4HmuPSOXN
	6i9qzqbXKTeLdM/J2rpzG05uSsdY7D0FOHy0BrjV7SNO5rytaH9Wzpa2bzFN5bTQ
	5aXvtt1gM0VsYs+qPqCFlIjyrMpMoFJiD9wotMAc5LOxPu4yamIW9JC4nNueiYUr
	rIhmttB/tUQJVu8lqnLoi5JDSGyBNmDDZNGiNNHYgP317bj97ddZhGR5Fkvesk/V
	Aq/+UA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 458f2m8w6a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 08 Mar 2025 17:44:40 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6e4546f8c47so7955866d6.0
        for <devicetree@vger.kernel.org>; Sat, 08 Mar 2025 09:44:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741455879; x=1742060679;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OLWsJUYVMSW/2p1uHoMFxNSZXw/knEpq6SZxmuPMxgk=;
        b=YKEZQTSO7bmAii5FCyZ9HV3jcr0x2te1QtSyDmCqfGiuyehDP99aGd3bUnCB3p2jIz
         ILDaq2SHj10lQXmenDq6Gc0JsmBgnMgRG78QufQ/W/CY35jSL44eulDgiqmRd+wZINoW
         MjccqA1mI3SWgJsl0QhhV8cFq/FRQTMo02DZPJevg1lAIFvMguG3QD6rzOduNCLHUdcm
         S9nQwDaPYTJ/QgP+Tp3yBMqJrg16n9PyUTL2qGddIOAoMVFzKeqSYV6QRbZ1uzbhnS5w
         WdtUlnBRe8nH6RkmyXI8gWtaBSC1uVKFHthTAZfn2UHSFptvCJf9Vpll3HPtEayLp0UF
         Y2vg==
X-Forwarded-Encrypted: i=1; AJvYcCUtNP8VaC3DkUrCbIWONmL9Sa3TtktGOGDjGexLTNGJOV1N6THBrP7y2xClEV/WEVQMpa4HwJfDoWgU@vger.kernel.org
X-Gm-Message-State: AOJu0Yzt9cMyL8dYsEm+Xq+C8N79SwXIFiDOvuVZExEVN4EWTvuaf0PP
	G0knhZLJqKWWRqc/ppcWq+pwi0TfpzRYuzRxnKst1h7Fs/AImjcIycR/IjpBCBGYIqutW8JGfxY
	FgwQNTXMMtrRhshpXVr7lcLNxThgOPY093A6Lk7gprZDwyCe+F2WlmjzWGyW4
X-Gm-Gg: ASbGncu9jd0SF7qVM33mHFapOyE5AbOtATRsCcEpaAci5fPbUYFI93V+N+2BlaH93LC
	p0uQPh10Eq9Bb/BUPnf8GxmsSnFq/WQFjdlsdb4FAyEPwJCjErmXyq7HEIoBWgh/V0lPg/mMKHe
	+9psaMwHmWlF4g6oZ9utxPTya2GuqY0shW0zcEqTSWvgx/eo8Inh2Ouw5YqEhCXmYyXrHIoLv+c
	51hBQJsvh45Hk9u24MmCtja/KkZuGq/xU2JrhoTVAh4m3oyZU8Bb75myuIHG7GcOfmIcYqHeR7G
	+3Vy3XEfeLGTPfPMHeawnsoHU6mqUZBxvhgU+tXpNysu/3CFA5Nse2Eg1qWTe01+a5u3Mw==
X-Received: by 2002:a05:6214:2b0f:b0:6e8:9ed4:140c with SMTP id 6a1803df08f44-6e908d5c1e8mr18056446d6.7.1741455878780;
        Sat, 08 Mar 2025 09:44:38 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFLalPszjzFHr1vq7EvScP5oSkuDVHvvjG4hrxJmmcS9aB7d9TRhg4dfW47CYFQsaxmjCd1ng==
X-Received: by 2002:a05:6214:2b0f:b0:6e8:9ed4:140c with SMTP id 6a1803df08f44-6e908d5c1e8mr18056276d6.7.1741455878331;
        Sat, 08 Mar 2025 09:44:38 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac23973a74bsm455697666b.123.2025.03.08.09.44.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 Mar 2025 09:44:37 -0800 (PST)
Message-ID: <028cb159-badd-4dfc-8a67-35f12cb1a720@oss.qualcomm.com>
Date: Sat, 8 Mar 2025 18:44:35 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/8] media: platform: venus: Add optional LLCC path
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Stanimir Varbanov <stanimir.k.varbanov@gmail.com>,
        Vikash Garodia <quic_vgarodia@quicinc.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Johan Hovold <johan+linaro@kernel.org>
References: <20250304-b4-linux-media-comitters-sc8280xp-venus-v1-0-279c7ea55493@linaro.org>
 <20250304-b4-linux-media-comitters-sc8280xp-venus-v1-4-279c7ea55493@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250304-b4-linux-media-comitters-sc8280xp-venus-v1-4-279c7ea55493@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: B_57fmoqXLUDngL2Nne5G3b0Ioz22pub
X-Proofpoint-ORIG-GUID: B_57fmoqXLUDngL2Nne5G3b0Ioz22pub
X-Authority-Analysis: v=2.4 cv=ab+bnQot c=1 sm=1 tr=0 ts=67cc8208 cx=c_pps a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=lSgUl_dL9m1uDwSaNSYA:9 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-08_07,2025-03-07_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 mlxlogscore=999 priorityscore=1501 lowpriorityscore=0 bulkscore=0
 mlxscore=0 impostorscore=0 phishscore=0 clxscore=1015 spamscore=0
 adultscore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2503080136

On 4.03.2025 2:07 PM, Bryan O'Donoghue wrote:
> From: Konrad Dybcio <konradybcio@kernel.org>
> 
> Some newer SoCs (such as SM8350) have a third interconnect path. Add
> it and make it optional.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> Link: https://lore.kernel.org/r/20230731-topic-8280_venus-v1-4-8c8bbe1983a5@linaro.org
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---

I'm not sure this is any useful without additional code after all,
as the LLCC path is a subset of the DDR path, the downstream driver
likely just increases the bw to LLC itself which then may be
a bit more slowly

Konrad

