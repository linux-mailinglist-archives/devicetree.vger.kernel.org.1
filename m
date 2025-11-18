Return-Path: <devicetree+bounces-239816-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6DC01C69959
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 14:24:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sin.lore.kernel.org (Postfix) with ESMTPS id 8B0522B08D
	for <lists+devicetree@lfdr.de>; Tue, 18 Nov 2025 13:24:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B06334EEE7;
	Tue, 18 Nov 2025 13:24:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VzmbQNtA";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="O/e6L2Xk"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97AE72D3ECA
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 13:24:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763472255; cv=none; b=FVOuya0ttjoPSMt3NyFdLE35seV7neVjSFc7hJ708abNlpiPJ6E0vHcs5ddUrgYhDzzzP5wPaWt3InFtf4xw6H+OjzGkAuGLLxcqarGOGQX6VRWfQTUCRjT6ia9/F7vA0weNuBqd2ziMmY2PGFaRL7T5I7S9Gr9+QB2rduR2MEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763472255; c=relaxed/simple;
	bh=YRPcOuCWyS3IkB/8T5kzemqn4zA4eRE3UPKIfdMgAGg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=KA4bTLZab0A4dwp9Hsctg9NJhQKDDXltUPeIHop7EO5Lq5V2GM5QAJ0xrS5QDp40M/7EnNed3/+joU2g1GV7AWr2CnjEvCLw0smwLasZ+tiBSVjlDD0os7ffz3dUjKZA70cECkB6iHd8QSPabIFB4yjSThAi7qIpHTQEKaV2+H8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VzmbQNtA; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=O/e6L2Xk; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AI6dCmc384945
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 13:24:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	mT3BS7HYX0OjxoOUzW62R+wISMMOs6OD7mkkhojAy3U=; b=VzmbQNtA4hDbL9no
	AJzSYpKX10KwzUrif06jiE/nsLfhDNC2rUzeyJsTjdGhvpt3duUHBzNcm0eZiFx7
	KKLCxIbrdDlnynq4ahc+n8+2e6FjqbUaTTwaduw0STkDTNcFlCJZ77CLbZlP1dVr
	I/nPTCXSJjQuxpHkEFDcgCXAYfyzJCJm7OCeIjovfdMf/+yPV1ZoO/fp4BQ4x9q8
	1EjHVfNhVgAjI35jYwutdCdlQbbMXsvTOKK1inOoqn2lXMCxh8y1qQiK+WX9vd85
	WS2OF6Qjw8PQ96lL9ZWWuPw8s4G8W5Z7ftUOdnw+C0/2UcgP2P0YMwq1091l9kTS
	2VgPKg==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4agag8jjka-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 13:24:12 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-882414eeb90so16518496d6.0
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 05:24:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763472251; x=1764077051; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mT3BS7HYX0OjxoOUzW62R+wISMMOs6OD7mkkhojAy3U=;
        b=O/e6L2XkXHEYZnCVs3PkIgJX19nilcpRWhiP24NKwR1CeW/POG7MBkRWp1iMchvcGv
         TKMXoqBkkDO4hf49TkBXbybkyzZG6LOtAdAacxsKKyosdkNj+jcTQLB7FSxeCqjQwTtD
         EaLtRZ/G5rLPxrf1dEwi8cvwdDtQIg7x8BoGa/ZwcEeZUZ2z7eniVY9auirjIiqkHEFh
         Tnw3tIeqzyMBOLQDQO+7yHIcZfM6yc8ubXpGVC3FNEtfGmkyqK27+UD+3EPOdFAAO19V
         lkBheUwvaAX4QqsM2QPYBSPXO8SNaG87NxXWPD39a7FPbN2mCROGHDqnONWMPN/+SCOP
         P/Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763472251; x=1764077051;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mT3BS7HYX0OjxoOUzW62R+wISMMOs6OD7mkkhojAy3U=;
        b=ec5M5yl4EJAuEUMiKmxmHPoBEYTbMM6WbSgFiZjmzZasfDwgXfWG0NfpMJN1//GzSZ
         ZvjykPv2g0bvfyA5aDY/G4axlWkaTFC2Bc5yKocCIDnfYDv6WzKGfAqYMEhRHt0kE0qo
         /nYyRUmz1XLabuhjxyQvrZ1uUnyHbjhe1teRjexG/I91dkjvdx4zGX7Mbn2nTDeCkhs9
         0lTpRbjYrCyNylppTCDYSLosBJwyS+D13I+XhE/n5mc5/xH4HI9XaUc7kSkMXgnrMeNs
         2hxc3/Dpd7h5vAA0QnIm2D8Ibe/Qeix0sng86pLwnlNcqAvU6WuYa8yInYMRBR+UCxKg
         Zpng==
X-Forwarded-Encrypted: i=1; AJvYcCWYGvKnEpBwye8CHPrHL1mZyhkILVvqKTnPoB3bFkluJlXDimH8qokZguQO70M9dqeQxcZbChAnXyJ/@vger.kernel.org
X-Gm-Message-State: AOJu0YyQd+zqtqlLw6Cz/0e208Z9C+/7dYYUsWoRUg6HP361cQ9koomY
	5onB3/X1qVMSWN58UiHBn3PLZsxpnTtZG4sMgzbXII7U138R6DA9NOxBxla5MwWF9eviSBX95We
	UGhk50GoDExEU+Dcb38DqzW4eIEzWTNvawDyRyxvo8FAgqssRqx/200kg5vGhOGM8
X-Gm-Gg: ASbGncsQTdgiVugSLGZiwg6qnOgWwKEjRDzg5TIzCZ5kZVZxUzra6EwAD0//+cqC7cF
	ktNFjMXry83HM9pZQoLvP6OamkBoNfkZypMPcYB8IbXa/K0TZfEv57dVefYCHw0awf8XOUajTo2
	HfVq3qmL4yDow+Rdk9kEM02aNDiIwRqhNnB2taHI+TTJSBjRVt7jYhdJxfX1p1HNcfPQRv8vdE5
	XxY8VeFOdLQwleMyM1LAODnFjKDzjiC7U2I1eStgbCVEfcAcRF8hSzSwphSq4LXrbIJJvzKV0au
	DjrTCVcmn87oQM63e/MMZqWvdrvQu/n4OomdaDEsqF+fwiGAcyY2auq7PXx8J9f+qFeoFJl2dDO
	/n6nBZNG7a/GMmazrRctEODxPyM6Trdg6BOhPu7+5WrGOARAaeM1Eizrt+c8Nxa4fAgMftA==
X-Received: by 2002:a0c:bf42:0:b0:883:7783:9a with SMTP id 6a1803df08f44-88377832e51mr89995696d6.0.1763472251585;
        Tue, 18 Nov 2025 05:24:11 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGRqlXLxm47/RUttNlD6ATYs2pNgJfsISYFm460SZi5po+LnzWhSuIw5Ny6ZU54jqrLTKE3LQ==
X-Received: by 2002:a0c:bf42:0:b0:883:7783:9a with SMTP id 6a1803df08f44-88377832e51mr89995376d6.0.1763472251012;
        Tue, 18 Nov 2025 05:24:11 -0800 (PST)
Received: from [10.111.165.185] (Global_NAT1_IAD_FW.qualcomm.com. [129.46.232.65])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-882865bdc76sm113493986d6.55.2025.11.18.05.24.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Nov 2025 05:24:10 -0800 (PST)
Message-ID: <cef25c09-0ecb-42ea-b781-a4e0d3c61542@oss.qualcomm.com>
Date: Tue, 18 Nov 2025 21:24:05 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: monaco-evk: Enable Bluetooth support
To: Krzysztof Kozlowski <krzk@kernel.org>, Rob Herring <robh@kernel.org>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        quic_jiaymao@quicinc.com, Konrad Dybcio <konradybcio@kernel.org>,
        linux-kernel@vger.kernel.org, linux-bluetooth@vger.kernel.org,
        cheng.jiang@oss.qualcomm.com, devicetree@vger.kernel.org,
        Bjorn Andersson <andersson@kernel.org>, quic_shuaz@quicinc.com,
        quic_chezhou@quicinc.com
References: <20251113130519.2647081-1-wei.deng@oss.qualcomm.com>
 <176313578860.3262114.17056319042303889483.robh@kernel.org>
 <CAL_JsqJX3doLFv-Nc6o+L1W_o8VjtvGp9dqdpsotuyG17zU7Lw@mail.gmail.com>
 <ca6b02d8-07cc-4bc9-ac99-e75d8e3548fe@oss.qualcomm.com>
 <0428a5a5-fd4e-4309-9b28-f94664177692@kernel.org>
Content-Language: en-US
From: Wei Deng <wei.deng@oss.qualcomm.com>
In-Reply-To: <0428a5a5-fd4e-4309-9b28-f94664177692@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: _s-AT-3dGY0zyuFBao_M0mE1oV8UUUEa
X-Proofpoint-ORIG-GUID: _s-AT-3dGY0zyuFBao_M0mE1oV8UUUEa
X-Authority-Analysis: v=2.4 cv=G6sR0tk5 c=1 sm=1 tr=0 ts=691c737c cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=C3Dk8TwHQYyIj7nOf9RCJw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=gEfo2CItAAAA:8 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=tldeaCnzwUXVKdrmyTgA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE4MDEwNiBTYWx0ZWRfXz9P1SGpXnhZu
 YJA+l0Sw2MBXqEw+iWRggyi110DaBhSYGsiLBR8WvbWrUQYVck61uoQ1JaIC9sRrPq/zywslB1K
 CutNydcXInR10eRo4WJcRRl0SYk8lm/9N4iX7Wj+SDTnxHypCyYdfbMNfCPVQpgW9eQcBSnpI5d
 szAPxoI3YX9rx3teDx9qPiQjdTB/ImoxlJgPmRR/bp1LwO7WkvYIaWMwgbyxZUcR1MKmxze2lWr
 m9RnyCB4vMU/9blEdu7CekMGx4OZkRq5tFyZ/dZbXLaIBFzBw8PBmREvf1tZXdzHamUKuAglCz3
 14184LvliFtdu5W9RtZ4Ajq0IcSzvbhSaaez5fO7kVOAOSGqeI+BZMJ1Z6fIaSt80mgqeuunNmV
 xl4AVHrpwBpTb4UnDzEI5hWSkYAIXA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-17_04,2025-11-18_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 impostorscore=0 lowpriorityscore=0
 clxscore=1015 bulkscore=0 malwarescore=0 adultscore=0 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511180106

Hi Krzysztof,

Thanks for your comments.

On 11/18/2025 3:19 PM, Krzysztof Kozlowski wrote:
> On 18/11/2025 08:07, Wei Deng wrote:
>> Hi Rob,
>>
>> Thanks for your comments.
>>
>> On 11/15/2025 12:18 AM, Rob Herring wrote:
>>> On Fri, Nov 14, 2025 at 10:06 AM Rob Herring (Arm) <robh@kernel.org> wrote:
>>>>
>>>>
>>>> On Thu, 13 Nov 2025 18:35:19 +0530, Wei Deng wrote:
>>>>> There's a WCN6855 WiFi/Bluetooth module on an M.2 card. To make
>>>>> Bluetooth work, we need to define the necessary device tree nodes,
>>>>> including UART configuration and power supplies.
>>>>>
>>>>> Since there is no standard M.2 binding in the device tree at present,
>>>>> the PMU is described using dedicated PMU nodes to represent the
>>>>> internal regulators required by the module.
>>>>>
>>>>> The module provides a 3.3V supply, which originates from the
>>>>> main board’s 12V rail. To represent this power hierarchy in the device
>>>>> tree, add a fixed 12V regulator node as the DC-IN source and link it
>>>>> to the 3.3V regulator node.
>>>>>
>>>>> Signed-off-by: Wei Deng <wei.deng@oss.qualcomm.com>
>>>>> ---
>>>>>  arch/arm64/boot/dts/qcom/monaco-evk.dts | 99 +++++++++++++++++++++++++
>>>>>  1 file changed, 99 insertions(+)
>>>>>
>>>>
>>>>
>>>> My bot found new DTB warnings on the .dts files added or changed in this
>>>> series.
>>>>
>>>> Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
>>>> are fixed by another series. Ultimately, it is up to the platform
>>>> maintainer whether these warnings are acceptable or not. No need to reply
>>>> unless the platform maintainer has comments.
>>>>
>>>> If you already ran DT checks and didn't see these error(s), then
>>>> make sure dt-schema is up to date:
>>>>
>>>>   pip3 install dtschema --upgrade
>>>>
>>>>
>>>> This patch series was applied (using b4) to base:
>>>>  Base: attempting to guess base-commit...
>>>>  Base: tags/next-20251112 (exact match)
>>>>  Base: tags/next-20251112 (use --merge-base to override)
>>>>
>>>> If this is not the correct base, please add 'base-commit' tag
>>>> (or use b4 which does this automatically)
>>>>
>>>> New warnings running 'make CHECK_DTBS=y for arch/arm64/boot/dts/qcom/' for 20251113130519.2647081-1-wei.deng@oss.qualcomm.com:
>>>>
>>>> arch/arm64/boot/dts/qcom/monaco-evk.dtb: wcn6855-pmu (qcom,wcn6855-pmu): 'vddpcielp3-supply', 'vddpcielp9-supply' do not match any of the regexes: '^pinctrl-[0-9]+$'
>>>>         from schema $id: http://devicetree.org/schemas/regulator/qcom,qca6390-pmu.yaml
>>>> arch/arm64/boot/dts/qcom/monaco-evk.dtb: wcn6855-pmu (qcom,wcn6855-pmu): 'vddpcie1p3-supply' is a required property
>>>>         from schema $id: http://devicetree.org/schemas/regulator/qcom,qca6390-pmu.yaml
>>>> arch/arm64/boot/dts/qcom/monaco-evk.dtb: wcn6855-pmu (qcom,wcn6855-pmu): 'vddpcie1p9-supply' is a required property
>>>>         from schema $id: http://devicetree.org/schemas/regulator/qcom,qca6390-pmu.yaml
>>>
>>> This is the 3rd report of your typos. Is there some reason you are
>>> ignoring the reports?
>>>
>>
>> Sorry for the delayed response. These warnings are worth addressing 
>> and will be resolved in the next patch.
>>
> 
> 
> Three of your patchsets have bugs easily pointed out by tools, so please
> answer - are you ignoring the reports? Are you doing any tests before
> sending?
> 

Testing was completed on the local hardware platform with successful 
compilation and normal functionality, so the tests in this section 
were omitted. Prior to the next submission, a dt-binding constraint 
check will be performed.

> Best regards,
> Krzysztof

-- 
Best Regards,
Wei Deng


