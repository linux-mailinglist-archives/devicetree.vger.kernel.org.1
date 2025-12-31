Return-Path: <devicetree+bounces-250795-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id B68B0CEBE04
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 12:53:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 59A1E301E5B1
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 11:53:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DE94432039E;
	Wed, 31 Dec 2025 11:53:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kDkzpnG3";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="UrRWMJdU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A60F3203B2
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 11:52:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767181981; cv=none; b=q7FgirZOjZ0+dIYsEWP2vtTd8TohLwUBwodESl5kSQeW5+bOmu1T21C1iP5U8FcoeGyKOMkJBO7lyxzAYG5PEC8IkW/r0b40nn6GjyqQiOETknkEZ5/Hjn10JQB2jt6iIdur5hiT0ok6422yZQJQQE2CDqq/QU3KLggo+J7VqFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767181981; c=relaxed/simple;
	bh=lkfEDleNSodrY9E1mS7olTOQa8hDTN1Yc0q6zuMSnXg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hmE2rUh/ifVjc1KyqssRktwg2iEOKVvTu2iARZ7cYrQiMp8AD07Ot81xw/nOqdonxJgymR8V2tiUYY+9zXvqByXDiH/n5ZQ8agbRHHgx64rhxfE0n6f4LyNFWGtardpYo4rIyBvNPIoj1zjDvYkNPMq97zbi9cBDwE1YLwrNRpk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kDkzpnG3; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=UrRWMJdU; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BVAjDxI3368818
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 11:52:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UIRN+BgNNuec8PINp7IZ+l0JeMYrVOprchsUVNfphIs=; b=kDkzpnG3xgKk8Fqq
	+TN3bRMddZDqzFO4PO1+K/s63h/R3H1xvfl2ovJ3STqSYq7apeOfAQmX6C6E8OL0
	Fme64/phuiPMYJheCC/Vjb78x+DalpO1hh9HrmgvQqKJSxEcZJROEwRvl611eEmg
	HtzLp3GMLrfcxoTIYy4jVZE2SZz02YcOF3hWr/5+108VhJtAQnls2VCeff1Twzlk
	mgwRGlLN9DhiJZ/ncXThqsfItuvf4nstPiF8Bvluz6TtuXnf/Dee+FttWcloHeuu
	EuczJcCHQeS6+HXHjA57YBfukW2z3uz/kX0x8EVDyFFRwIVcK0YAiIj1rC3qNgUT
	Z4QbwA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bd2bb0357-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 11:52:58 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4edaa289e0dso36144401cf.3
        for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 03:52:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767181978; x=1767786778; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=UIRN+BgNNuec8PINp7IZ+l0JeMYrVOprchsUVNfphIs=;
        b=UrRWMJdU8+tfwL1kGkoIfB/HxlCXSi7ZU8eWOrIhipEHKQ/9xOp0Gz6/ncnNuRNxOl
         wTq9MQXmPT3+TPOl8rbwNAgSyZm2OOP6NNdBAGa0DS/4FevyqivlrTVspFwbl+Ir+5UJ
         WzE08Ckeseqh/mvpRfFdZRvAbG3eYL7kkIW8ZASI49FvImu/wy4A2J1OhkDSJ0RKVNxg
         HlmAemDvKM2ohHbOE7F3FMNaM7GcpGLBUrJYghVaWS5Y5F+PPHiR43luowkqrb7uZYzm
         lmWytN6aMYkx+GYiN2xu+hmfGID0DuDSQ+nOTzZo6owvbNJKTW5plcfkwxWaL/jEPBFM
         bN8A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767181978; x=1767786778;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UIRN+BgNNuec8PINp7IZ+l0JeMYrVOprchsUVNfphIs=;
        b=QlFe4K0rbrFk1RIo8yk6n1J+YzDJ39HYedeLVBwBy8KQYro0nZhkAX5whAsbgJfr2h
         d+cQzT5x8gSJOPVeRBkJAap1N7sWTW57RpJZ30hDT/luFR/T85eXrYxy0llV1k35Cw5K
         yU9DAlwJlgA8g0mKyhY++vAnxX+d78kzMefJM/vVr83ajZ72X9v6Y995wDCM1+OBG2yX
         Hmv8PXbvovLGJWmbkHcwIE2DJM7jJxbin+ZwP7z1JaljzcGHiw1XUXSLBEHY/puTkBAV
         pd6/cBfa0zpGkmyFAR6BJfg+RO017UkcJI7xcUAcPULc5GkpABybHUBudrnEjoB17kUk
         sszQ==
X-Forwarded-Encrypted: i=1; AJvYcCXkAokomURoN/Z5HgDRmLQ4iT3QmfGBgmpY3H80RdpPeEFaln103AiMqr9qHlxKro48Jk9YGCnFEv/K@vger.kernel.org
X-Gm-Message-State: AOJu0YyXhutN0rBTVHBbVc3BqyCNiFmQ2ORQwXvnbfZdH1GXsbvdCrr5
	imozpUBz1qnMZfqtfUGBEpJeDqn4GaLSljYv6dFpB1Q4k86E2Iqpl5+WxRBWozb/HD7/RpSzhEA
	JOwJvCTYJq+VXFzYDpidwBpta2+4ok+CtM7FriP+tZV9gvw6sutsKJ56zy2ka3laL
X-Gm-Gg: AY/fxX6FbPm7dSvOqFJUDwqlQs8xsNupLANwlvnuj/UN+3HFhaDTp3Tzp+01ZVdgJaC
	7UG84qQi5EdRHnJFkEQnEvIKiAUzHCocU7WlNwuqTccYou7PAhSFZgClbH/KxSSwdLomRspRXlj
	TfyJw3KfQkN0rg/ZjlbxFYLqxuU6wBIlyJGM4tbpL87/YMIZLBwbkbnRTsosPmS5YSAgTNgKRwc
	n/H0aZpeMjmEZWD2Fbu2FtIsobfB8gZXWsxvNo/F7EJtUG0DhtzUiXtzG0vyn3u/45wodIUzmS8
	MGC4qYXBjBFa9HmGrcJc/WAs98UK7UEJeivTUNmvJ/cMqiYNcBfUnh9wlogLoLReqgNv/tiS/2M
	bwNmsNue2xWrHXyhvmxSPuSponsAuFiXFDBTtGeZBPMLP57sqlriCOfOF10IhwbKp1A==
X-Received: by 2002:a05:622a:19a2:b0:4ed:7f85:225c with SMTP id d75a77b69052e-4f4abdfb09cmr399191041cf.10.1767181978399;
        Wed, 31 Dec 2025 03:52:58 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFgunkNErCZGim6m8hhI75uoM5KaZPqIb8v7Ufo8RVVQN6sLhOSiT1qqVYs44WwO/9rWCfh/w==
X-Received: by 2002:a05:622a:19a2:b0:4ed:7f85:225c with SMTP id d75a77b69052e-4f4abdfb09cmr399190911cf.10.1767181978020;
        Wed, 31 Dec 2025 03:52:58 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b916b372esm38283354a12.32.2025.12.31.03.52.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 Dec 2025 03:52:57 -0800 (PST)
Message-ID: <26838d5c-230e-425f-bd38-0160d30b00a0@oss.qualcomm.com>
Date: Wed, 31 Dec 2025 12:52:55 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: interrupt-controller: qcom,pdc: Document
 x1p42100 PDC
To: Krzysztof Kozlowski <krzk@kernel.org>,
        Maulik Shah <maulik.shah@oss.qualcomm.com>,
        Thomas Gleixner <tglx@linutronix.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20251231-purwa_pdc-v1-0-2b4979dd88ad@oss.qualcomm.com>
 <20251231-purwa_pdc-v1-1-2b4979dd88ad@oss.qualcomm.com>
 <209c49fb-04a6-43dc-a3f1-8451e3946d06@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <209c49fb-04a6-43dc-a3f1-8451e3946d06@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: Np4Rg5A0U3cbq7SFkCSU0KS4TMQ6qU3m
X-Proofpoint-ORIG-GUID: Np4Rg5A0U3cbq7SFkCSU0KS4TMQ6qU3m
X-Authority-Analysis: v=2.4 cv=dMKrWeZb c=1 sm=1 tr=0 ts=69550e9a cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=3f242UcOTUeKJ-iiDoMA:9 a=QEXdDO2ut3YA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMxMDEwNCBTYWx0ZWRfX6HFztHJUGvir
 316xvDTfeofFimKsU2cC1T+Aer3PzYuA4lc00sJMJBMdjMO7HDsfSehvyLBP7wC+ZRhhdtViowl
 q2jjVESSRX/uFl842av0nzLw08S2yicvPDjrszp9rK9SKdjtm1GBhAoNn7yHfxiFZomxSuOWjt9
 pnC/sJAooluy0F9Y8APhB939p6NS2bebcsBUPTcgA8Qqw0umIksAalbj7tnhnHvys+I443oErVE
 Sho3WH1nqqMyFu+LUVZcIAsPsKPJcoLt0uYfM7KeBoDnRyVI8Tuz8bKF83B3/zXj/qzVp+tEGbV
 3V6mW9OWHfSN8c3YszCVes2+kCTt5c8S2KSQK6Gz0jgOSEFFWKT9ZkN3qcLs+g7yR3qyBzXCadf
 5sJkHeezl7IQMUOd2ABLMI8bXWqWUDhW3b9jP85eFiX0bQPI4dOjupkfBnTP3pF234G1v6bXSfk
 aorEY8W1XoniuSVmiww==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-31_03,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 suspectscore=0 spamscore=0 malwarescore=0
 impostorscore=0 adultscore=0 phishscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512310104

On 12/31/25 11:49 AM, Krzysztof Kozlowski wrote:
> On 31/12/2025 11:18, Maulik Shah wrote:
>> Purwa shares the Hamoa (X1E80100) PDC device, but the hardware register
> 
> We don't use Hamoa name in upstream.

(the file is now called hamoa.dtsi)

Konrad

>> bug addressed in commit e9a48ea4d90b ("irqchip/qcom-pdc: Workaround
>> hardware register bug on X1E80100") is already fixed in Purwa silicon.
>>
>> Hamoa compatible forces the software workaround. Add PDC compatible
>> for purwa as "qcom,x1p42100-pdc" to remove the workaround from Purwa.
>>
>> Fixes: f08edb529916 ("arm64: dts: qcom: Add X1P42100 SoC and CRD")
> 
> Your are describing wrong bug being fixed... or actually not a bug.
> Every SoC should have dedicated compatible (see writing bindings) and
> missing compatible is not a bug.
> 
> Best regards,
> Krzysztof

