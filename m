Return-Path: <devicetree+bounces-203229-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 096BEB20758
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 13:18:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id A80717B812A
	for <lists+devicetree@lfdr.de>; Mon, 11 Aug 2025 11:11:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 407342BEC23;
	Mon, 11 Aug 2025 11:13:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mHvdNXM4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A618A2BE7D7
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 11:13:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754910786; cv=none; b=fzhfBjjuCLbh8A9sioTgr1XzVjtWGt3ACXAuisLMQTpdl7tx7leUv/kZr+mvMVtpJBaYVfG+YVWfFCb0kLrdWIT+KsHzS8KjHSBqpXacZpKqnCqPJ04JRdz6ToBcdt5DCbePhzRfgNtwMJ/vIfaOh0tEsbPcHGEKjLcBEx3FcP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754910786; c=relaxed/simple;
	bh=lEuV8cb9kowURNTyypZITqyna8vIdGy3JqFnkYezfh8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=DNuc1gtY/Fjg5vaIga9Ro2Vdto59Vr3s1vjyU1piNseNBaYkui6PYyFfjos4c4WUhIchp55WI2MUNDYAwI5OG3WcodKfuw/L/8wSBlwwca4BVvqYwIUTf7d+UiyKa8pdNcgkt4BU0rMc19bH7wjQtt9wNER8a5QtDdKu4/MiWZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mHvdNXM4; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57B9dGIg005211
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 11:13:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	URReqVGPLDf+FTpAoIchtSx7YISeSz/3xo0Fm79Dgds=; b=mHvdNXM4HBdMH7W5
	6CcQL6+te8F8+Dxc6iZqp2RPt6o80vUW8TeoQrZUX1VUM2vnSqCmbDs3E90hkyr1
	YJiHUGxYZsywpV7qVqEhurquMschCcrIVdvk4OLDUdIXU7Qi7PuFiI2r24qwe0cE
	mmL1I7eTgmvINwd5sOF5uhiGB9sZHPM1WJVP79YeqrNskmJ4fKXXPQrhvQZjjw5n
	6i1Nty/cKpbFO+uw7o36YlkA0Zsy7GgoUmjMG3EEDBZ/Glvpy3okNFGpbO7WM7BA
	3wYOsHgDb/GQgwbEIOBk0WWpf50b4rlpBn25JUQooMIFNJ9HUDMECUbALkFEoQsL
	L8tsgA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48eqhx2cnv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 11:13:03 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b0938f0dabso11572031cf.1
        for <devicetree@vger.kernel.org>; Mon, 11 Aug 2025 04:13:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754910783; x=1755515583;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=URReqVGPLDf+FTpAoIchtSx7YISeSz/3xo0Fm79Dgds=;
        b=MWiHGOweF07X8C0jCxtu+CWSzzS0QDkAZnfWwNidbDPfsRCXWooG6N1kXevsCaFgr4
         Y9Q4SBRzA3rQNzmpPTTH31Zh/8mP4OFM1Hl0H8vb+ZxWaCwLN248uZ6RLYjt505Dyox9
         1SFq0VSWcO3RjcupWQKrjEU5iwhs5FHR9N1bGc7LjJHTXUH14Y61ddemRsXGtbNKflwP
         YvGRHFAFCqicDq/KchnHYEjz+4Bvvtda7/Rp2GHEsO+SJ/vhZIu6pw6siAZWiuOV0jRY
         ni7NTrBauv/PB3ruRWitBJfgH7X8Go5oFAS7VcQ28XCUeRnH1tcQT5FRQae2hEB7VNwW
         SjJA==
X-Forwarded-Encrypted: i=1; AJvYcCW8+DPalrau+MG3Oh6vROKfqJPl5vPeiMLjaJZ280hAC0xqWQzR8aHj78Fx0D/ZosCFObIknVmebqc6@vger.kernel.org
X-Gm-Message-State: AOJu0YwoaPQGeo0SDW5SURPh0h58xzxchbYYepKIEkkq55GZvc2Y3eYI
	CTA7SCu/yb9PN7kJTHso+hTQ6ZEs5jl72++u+P4e9Axrktw3aht+MC9BWnZBHKdSWwh3/dxbguD
	pfBqy/TgcrM6u5AtKbLa9znQd7bFb8YGGZWjKCrnBsxtaVcqRJWJHt7n80zxpUA5i
X-Gm-Gg: ASbGnctHGRejiJYYM9+OELqWHQuzsuCBtlFa9bKcDmnywGvA+7MjwjqE1B+sphU87fk
	rC2F1RsgrP//aERikQahj7b4T1GJz81whRbAlGs21D4l7hlWSCBQ3DfAteF41jP4cUJu+VSYSz7
	l4acQqbiGI41FYcnid5E2T5jr15mj5Oj2vj/QzyZFAn3QbIlCysmK5i66OqZwWzbgRAhApb5gqp
	jTTmrpuLdNxA9ci9gfuVCVx8cgW3b3qb0JaSL//J5e1my9Dk+/5OcLBTEIST0vfWgYnSs4oTQYT
	5Qk1nOZOUMWGKUlrV8iIEaku5zcuJblASlwLmExusN6y4o2IYy7d9PoZ99rsKRt6InaHcKdOScs
	ir4lOIlpQ+H1Cbvr12Q==
X-Received: by 2002:a05:622a:24e:b0:4ab:63f8:ef30 with SMTP id d75a77b69052e-4b0c18feedemr57354661cf.3.1754910782607;
        Mon, 11 Aug 2025 04:13:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF7A0+Y98Xy74689qvBQIGVL869VUV1Q2Mn0tA1F9GaDJPsmzmzsKoUL0ebMPuxgorWRDYqVQ==
X-Received: by 2002:a05:622a:24e:b0:4ab:63f8:ef30 with SMTP id d75a77b69052e-4b0c18feedemr57354411cf.3.1754910782197;
        Mon, 11 Aug 2025 04:13:02 -0700 (PDT)
Received: from [192.168.43.16] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-af91a076620sm1997071666b.10.2025.08.11.04.13.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Aug 2025 04:13:01 -0700 (PDT)
Message-ID: <4f6a7dc5-b0f8-491b-aa12-78be5f47ef2b@oss.qualcomm.com>
Date: Mon, 11 Aug 2025 13:12:59 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 5/6] phy: qcom: qmp-combo: register a typec mux to
 change the QMPPHY_MODE
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Konrad Dybcio <konradybcio@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
References: <20250807-topic-4ln_dp_respin-v4-0-43272d6eca92@oss.qualcomm.com>
 <20250807-topic-4ln_dp_respin-v4-5-43272d6eca92@oss.qualcomm.com>
 <ibrupwvn5frzb4vo3eukb7p7pzonaxwhygshz743wmyrbprkcq@xcpt4ryzvwqr>
 <619efc83-37f3-4b4e-b756-c53ecd2f6867@oss.qualcomm.com>
 <y4yiyokoo7fclwlpyhct4o7mt6swustuciigqnte5pruust26q@ryvuwpd6h4qm>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <y4yiyokoo7fclwlpyhct4o7mt6swustuciigqnte5pruust26q@ryvuwpd6h4qm>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODEwMDA1NyBTYWx0ZWRfX0w6ZXYUUlan8
 lwDGKJsaJxzZxB+jm7EWwph0VqdND8afwExT1StWWQ3pcjQPf5wD0ocbabtjX3uYQJwdLTyEBZX
 KVZkMKL3tZ+ME/0DROxdJgoGGSfhxdDBxD9Q27gdHchUwuLti5bwD8EyvbXPqTgJdHBNW8OGHDt
 kS7+6Lf6KvWOQsOsauFOenK3rRxPzwLSiYnej+wgCbyBAuKUezLM5WrDt7cVZVnyfjIKWd9/z/Z
 KVQTHO0EYyI1YrEon/5z+jdH+j+OikVV2Ew4bHZjFTo8/PLHazVr3NnABzgE9qAMkAIBzzNZleO
 nPmdEquCQPFdXSnK6CKbc+ZQCD0/1Bj/pdbgHqI7DdPNI1JS5AaLwu4vVlxyg+7gyU8a3fPPUIe
 sBMtxjSu
X-Proofpoint-GUID: EPg8NXtpFoGPn7PV5rI1VQJ4_jr3PQxb
X-Authority-Analysis: v=2.4 cv=aYNhnQot c=1 sm=1 tr=0 ts=6899d03f cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=l4QWMBroLdz4_K-1UwwA:9 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: EPg8NXtpFoGPn7PV5rI1VQJ4_jr3PQxb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-11_02,2025-08-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 priorityscore=1501 suspectscore=0 phishscore=0
 impostorscore=0 bulkscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508100057

On 8/11/25 12:55 PM, Dmitry Baryshkov wrote:
> On Mon, Aug 11, 2025 at 12:37:00PM +0200, Konrad Dybcio wrote:
>> On 8/9/25 10:13 AM, Dmitry Baryshkov wrote:
>>> On Thu, Aug 07, 2025 at 06:33:23PM +0200, Konrad Dybcio wrote:
>>>> From: Neil Armstrong <neil.armstrong@linaro.org>
>>>>
>>>> Register a typec mux in order to change the PHY mode on the Type-C
>>>> mux events depending on the mode and the svid when in Altmode setup.
>>>>
>>>> The DisplayPort phy should be left enabled if is still powered on
>>>> by the DRM DisplayPort controller, so bail out until the DisplayPort
>>>> PHY is not powered off.
>>>>
>>>> The Type-C Mode/SVID only changes on plug/unplug, and USB SAFE states
>>>> will be set in between of USB-Only, Combo and DisplayPort Only so
>>>> this will leave enough time to the DRM DisplayPort controller to
>>>> turn of the DisplayPort PHY.
>>>>
>>>> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
>>>> [konrad: renaming, rewording, bug fixes]
>>>> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>>>> ---
>>>>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 118 ++++++++++++++++++++++++++++--
>>>>  1 file changed, 113 insertions(+), 5 deletions(-)
>>>>
>>>> +
>>>> +	if (qmp->qmpphy_mode != QMPPHY_MODE_USB3_ONLY && qmp->dp_powered_on) {
>>>> +		dev_dbg(qmp->dev, "typec_mux_set: DP PHY is still in use, delaying switch\n");
>>>> +		return 0;
>>>> +	}
>>>
>>> I can't say that I'm fully happy about it, nevertheless:
>>>
>>> Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
>>
>> IIUC we'll be able to get rid of it after the dp rework?
> 
> Which one? The HPD? not really. My unhappiness is about the sync between
> USB and DP. I'm unsure whether we need higher level of sync for
> USB-or-DP PHYs.

Unfortunately it'll only get worse with usb4, where the DP PLL may
need to be online (or not) for when we're tunneling DP data :(

Konrad


