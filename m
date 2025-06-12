Return-Path: <devicetree+bounces-185396-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 146D3AD7814
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 18:24:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A95D83B4740
	for <lists+devicetree@lfdr.de>; Thu, 12 Jun 2025 16:18:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E4E729CB32;
	Thu, 12 Jun 2025 16:17:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PVB3vZug"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA10129C321
	for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 16:17:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749745066; cv=none; b=k7fRLALR8uqT/HXeYv2FR/wLwLZf6LePIC7i+udD02fCDZ8V4x/T0SAhvpr5BgHPk9kEoJAJCLDkj6BEaueR0MbsaH8fvkK4PjwKetNJ3g3Dd6zeMUxm8mbxjoll7u0R7WUhGrYmVGnjzSWM67mj8kZoiq4Q/22HV6C1cw8NOV0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749745066; c=relaxed/simple;
	bh=hjD6V0mhi2dg21GCNRdKg9QvyzsrI4FuCSoKe47iQK4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=k723SnOkiQxUEOvWj/X8fg6svJ8csk1Is1ICdL2CNrgzfFX+D1fGh3D5aMfVflei30yQRx+ZlZNA57xFelzIth+Wi1MwAj+8XahwXJZtOJ4vKYXddFu4Vb+PEq9dFJuPJGO0HvPA66r8Y5MlOYFJ7ICEywPXmy5T1+txQ8UceoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PVB3vZug; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55C9GtAe031474
	for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 16:17:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	a6SYXi/ubPIU8g+IxTFXs7TAAN5L16ENK5ZIOpV/Wzk=; b=PVB3vZughy4B6wIA
	v+getIXr0RUVPcJUYp09k4JLuFb6HSRb0xkWob1FFdWnLGZFgI2n66VVOtrR0oQu
	+IWIEPbbAoTrGtgtXdMjm+83nmeECQTzittjOS/YxEiBb+aJofS7wZlxbms9rXCT
	AnsrD1cSWWI0zVuQNSYTGYiPAjJMNXp46yNfBBi/wTVkHhU0wzzsbc7hQ+7lwVSD
	WYroyKvt4YystL2Af4EtwaDyrzw3iyrRqqinz6Ed9wVUuGM4pia04p4+Lf3s+uKH
	MgdOSTlEd5Bw6SHJJ4yTZFOLdO23GaxrZu9TJtEYcQNfm5ErSWzMQjWyco5lJZRJ
	dkM2gw==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 477jdwtmp9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 16:17:38 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4a6f59d5ac6so2305841cf.0
        for <devicetree@vger.kernel.org>; Thu, 12 Jun 2025 09:17:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749745057; x=1750349857;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=a6SYXi/ubPIU8g+IxTFXs7TAAN5L16ENK5ZIOpV/Wzk=;
        b=Cfy/LcYYBb5WXIGmVkavYy+f3IPdvh0hRGgbt99acsmPOF46YFSVigWjHAsyYW2DUN
         sAtBO6DqDfFGjNCMBgjr8muXAPUXEAB0oaShaJ00Ci3fjiPEIwyCPLiAuNkikDkkU5c6
         o7zJSGeddn7DQ+lXUs3ooKurDzVQmdShnA60VworSi3pbMzai/0FANh7iC3xRSo+97dZ
         LUr5fxCyEeALwEpugbzdHKjTE477vMFJgFPUt0YSfn2OPIA64IpoKHyB3qtv9nPbc9Zh
         hCtiGPTihNCC2z6xswtVpWDylMQwo68XCtY04Yxxj7X7omMlhRIEiQ90NB3/RkGQDFI2
         b9ig==
X-Forwarded-Encrypted: i=1; AJvYcCWQsMN3T0/YJOWwgQjTw6kDQ4HKlNo555ZbIDZpGG4fcKh6zpQOKxiXYrVew8akldG5Lr1M/Y6TjDxS@vger.kernel.org
X-Gm-Message-State: AOJu0YzjcNDdK/r/pzD3xe1DYe1TzKqff2ORhEAOOo+muMbgT5l5tN60
	w5vpj2T+3Djz52E64ccpl+A1Qzy7MA/q2W2inCeMhYhAMCgBJZe8vdsg3DDxLkomTxD7ZBXWsz6
	CeaduwCGvC7ZCniypWo2SIiAxEOFb3cCN5wAmUYTLY9H3aprzL69IfVxsd1t5ewCQ
X-Gm-Gg: ASbGncsA32CqBcSX2/iZiVrcgr5nfxtP9589mao7TngtKA7k00PIc9bJvIPXyvrLyTF
	GPmCI2EdsMyV39QNN/QzsR9LziITOHF9l4DCw2Hik/Ue/ZqW64YJEkAaOJwAAl/mb57v7GLefy2
	XdAfZLsx8vTOdeeUB20hnFB1qNOUTaVooauCwJXRIg05q9MRz69e7T+gSc80aSFbB8UuGxgi/nk
	p22LAiwgBvVINNmIl4B3spYT+OjbXPP4cX+M1dnevVEw1yzao8go7oCcjxEhasBvhCvZJf/cpUm
	xcLKjZfoiwrgK/MM142kZFrNe1MOcvLmbCE3Lyus4MHZ8LQTyKER+bmxW6qQ7iTGQGnnNsI5PGG
	gPT8=
X-Received: by 2002:a05:620a:29d0:b0:7d0:a0f2:e6ba with SMTP id af79cd13be357-7d3a87e59a0mr451472385a.5.1749745057221;
        Thu, 12 Jun 2025 09:17:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGOx+5bQB13xARfR3GN0LFa6nGsEEEybs2kRaiWyxZ9tnL2N3182lRrA+vM9Uw5QJBu4ZHqkg==
X-Received: by 2002:a05:620a:29d0:b0:7d0:a0f2:e6ba with SMTP id af79cd13be357-7d3a87e59a0mr451468985a.5.1749745056801;
        Thu, 12 Jun 2025 09:17:36 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6086a551246sm1412457a12.8.2025.06.12.09.17.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Jun 2025 09:17:36 -0700 (PDT)
Message-ID: <4848f13b-3b2c-4210-933c-b4f28d7c6ae7@oss.qualcomm.com>
Date: Thu, 12 Jun 2025 18:17:33 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 08/10] dt-bindings: media: qcom: Add Qualcomm MIPI
 C-/D-PHY schema for CSIPHY IPs
To: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rob Herring <robh@kernel.org>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Cc: Conor Dooley <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Mauro Carvalho Chehab
 <mchehab@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Vinod Koul <vkoul@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-media@vger.kernel.org, devicetree@vger.kernel.org
References: <20250612011531.2923701-1-vladimir.zapolskiy@linaro.org>
 <20250612011531.2923701-9-vladimir.zapolskiy@linaro.org>
 <6e411e89-ce1e-4d6a-8d48-b800554f830e@kernel.org>
 <e02cead0-665d-443a-a884-c3a307409c66@kernel.org>
 <9e38a09b-1521-4196-b179-d29c62e143bc@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <9e38a09b-1521-4196-b179-d29c62e143bc@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjEyMDEyNCBTYWx0ZWRfX6cEYbyG05kuM
 natjkdTyaZPXdLNvO6SuQOuReELuEHDrFvHhU15w9JwRQOHJWBJ7tPBiZnq9b7k20qV7hN9ssTH
 6hiMzzMsdHB/W7XdC02dr+Tvzwc2WguAqpPILMhxpW2Dgss6T91llvGP+xJMvwfNmA7qT0/lwIY
 +Vqmn+pCN1O25Ek2eg8T9XFvzTBZXm4Iu26CygvNctN64Ya7El8YP2xPi7hZhhPk//f54MYJohr
 WHezcLiI2ohDb4FV/CqtVZ+xj4eIwBuX8UBYeoWrxk7iWyU4FfEZ/mtxKnRkfmdoLxt+1XIUZoV
 pT+uzMQPAiqX8fqDMni0AiPagrIvUDEIk0uo5QSubaTYIZ8wO8Ph8HU12VuGXEhObrhIhX+FN7G
 WbhojBkYLhY5YSa8MxcYcmdZRB2C9SfzJtWPjsexjKkRcHegRD4uKBv6jgExvPOC8lxmnREr
X-Proofpoint-ORIG-GUID: t6nhcf1k8GKukN9SDG-OdbdMlgfPKPnH
X-Proofpoint-GUID: t6nhcf1k8GKukN9SDG-OdbdMlgfPKPnH
X-Authority-Analysis: v=2.4 cv=Jce8rVKV c=1 sm=1 tr=0 ts=684afda2 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=6IFa9wvqVegA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=LZMvtdFs93sqpN7HcN4A:9 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-12_09,2025-06-12_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 adultscore=0 clxscore=1015 bulkscore=0 lowpriorityscore=0
 mlxlogscore=999 priorityscore=1501 malwarescore=0 spamscore=0 impostorscore=0
 mlxscore=0 suspectscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506120124

On 6/12/25 9:57 AM, Vladimir Zapolskiy wrote:
> On 6/12/25 10:39, Krzysztof Kozlowski wrote:
>> On 12/06/2025 09:38, Krzysztof Kozlowski wrote:
>>> On 12/06/2025 03:15, Vladimir Zapolskiy wrote:
>>>> Add dt-binding schema for Qualcomm CAMSS CSIPHY IP, which provides
>>>> MIPI C-PHY/D-PHY interfaces on Qualcomm SoCs.
>>>>
>>>> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
>>>> ---
>>>> RFC verion of the change:
>>>> * https://lore.kernel.org/all/20250513143918.2572689-1-vladimir.zapolskiy@linaro.org/
>>>>
>>>> Changes from RFC to v1:
>>>> * moved from phy/qcom,csiphy.yaml to media/qcom,csiphy.yaml,
>>>> * added 'clock-names' property,
>>>> * removed SM8250 CSIPHY specifics, a generic binding is good enough for now,
>>
>>
>> Now I noticed this... weird change and clearly a no-go.
>>
>> Device binding cannot be generic, so it is not good enough for now.
>> Please write specific bindings for specific hardware.
>>
> 
> Can I add platform specific changes on top of the displayed generic one
> like in Documentation/devicetree/bindings/display/msm/dsi-phy-10nm.yaml
> etc?
> 
> The generic compatible is sufficienlty good for adding the enhanced
> CSIPHY support to any currently present in the upstream platform CAMSS.
> 
> Obviously I can rename it to something SoC-specific, but then a question
> arises, if a selected platform has to be a totally new one in the upstream,
> or it could be among any of platforms with a ready CAMSS, and a backward
> compatibility is preserved by these series and the new CSIPHY dt bindings.

A YAML file hosting common properties will probably be very welcome, but
the compatibles must be specific to avoid having to redo this dance in
a couple years..

Then, the camera ip is well-versioned, so you can use that as the 'specific'
part. It'll also make it easier to resolve the unlikely case of a SoC using
a mix of different PHY versions.

Konrad

