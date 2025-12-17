Return-Path: <devicetree+bounces-247440-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B8786CC81A6
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 15:14:13 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id DA0A2302E71A
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 14:13:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 91D0B33B97D;
	Wed, 17 Dec 2025 13:05:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pvf7oly2";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="I1yzVAux"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFD5430FF3A
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 13:05:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765976727; cv=none; b=ixYqYFvFBHZ3Sr95YXTQ7MjliJY7D5Fzi3cVsNdQgpbHVNXR2OmBXdnp8bZWLcSgB8+wpUrVRw1HnsOcYeZ3iucBPPwwVuJoTFd45lobmwZLYi+hnFXlsVwXLqGDac4zj2Dkt+qAvpMJscQz3FWNf05yFVVNZk172gVd8lIvKPM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765976727; c=relaxed/simple;
	bh=pO4vyT6R27J9rdbyr8kNa6JjCUTFaX2Dxzw48Zd+ugc=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=uupSmPpH1GYTrLNdJAzu7Vh2xy4ER+g992kZMCTjWWMzvYal/FbmbPAOCFNNamAv/D+Jt0GTa0QRSyMLU9xoprhB7EKx4zsuYPT8ubvcJsqoeNts4svotwCO/N4p5TKeCTuFI3Ch7ixKPaKEGVInESeT33ZLfFkdC1a60ZxLt+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pvf7oly2; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=I1yzVAux; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BHCL0NE3000810
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 13:05:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uSfWHb6IES6Rgoj7mGPk8W5CHpNouvcX3WwERHmWEBI=; b=pvf7oly2eCM+fM6q
	ii0/0BSYvb0R1UOSPh8SPAZWUAyZCwa19q7LqoQ+Znne7vMffXZ2jYl5s0GIZh8o
	/UHtJWogrH+f0qHLaPvy8RPIdKf76gx+hQMlqbhPR34Q9kLJXiJazbacHvIKu31D
	Xuf6zegg/0wjG/A+J8bVnpBNredEi9bCjPBvZTIK8jdf4kBZ2JNPR1qwO3BEPIko
	jq/mw9y3CGzGdCnZZTVc+wloOsKL9+7y5rL9hahAD11a3Eqz4G0LebhsrOolm3pA
	vvrsQkusRNh5gfqZOT8Y6t/SMEe5kmihDhrtpeeimZ3pazAQAXunM5TT9tkXzl2z
	AopqIw==
Received: from mail-vk1-f198.google.com (mail-vk1-f198.google.com [209.85.221.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3n331n02-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 13:05:24 +0000 (GMT)
Received: by mail-vk1-f198.google.com with SMTP id 71dfb90a1353d-559a4539437so540588e0c.1
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 05:05:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765976724; x=1766581524; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=uSfWHb6IES6Rgoj7mGPk8W5CHpNouvcX3WwERHmWEBI=;
        b=I1yzVAuxLjcjrCT5Cn0TeSA9DCEin1ALIPUZuJN1cMU2WU0QOk/o6LEMAeudQi3H6v
         BohANO4gzz5Beq0tF2wBePElY+4adGOcDc+6WWEvD/aRP+fbp12Zxc0Uq+AKRt1I0QI0
         dWfbSu/fJCBYzbgeO9Kqhgt2RgZQ161+O41PU01NlM2UiBEL+9yKI/T4LOTasqm92s8C
         AqiL2qyqZ+wPCrMZCNfLon0eFxvvfXXkbxDL03jCBBIEu/lNM3YZ/tyf/lt4t2P9ILAi
         3Uo9Y5bsLOQs0iicM5QNRaWaaQA1TeYiw2mH42eTfjSPjVBK6yNNtkbcasYEPQS27XV3
         xnFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765976724; x=1766581524;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uSfWHb6IES6Rgoj7mGPk8W5CHpNouvcX3WwERHmWEBI=;
        b=tC+gazLEOdHR2jdIXR/z6m8NkdaRlAu26uK6AuI9FH511te13LxvqEQt1WaN+hQjfT
         azd8Y8ESUhKmguUWH1o71caYMyXvlSppKF0KwwBLUpBsUUoInTIBRGMkP+a6r9R+5RTb
         OFXoJne1toMM7GBJyCAwRutOBM1AXb2V2cXuazY4TEFUOFUdD/AAxk8m1hoDxxhj7Pny
         omYSjr+OFYLFk94P9KElCeobH2uDaPgTPPRPpMDrsyPy3bfF7EjS5BPc1i/ho445xOcc
         IZ0RIgz/4nBb1RUt4uRPHaaR4tCylGsJCjI6kQ1erLwFPtIzsgMpSaccQJkYP89YWcv9
         gDyw==
X-Forwarded-Encrypted: i=1; AJvYcCXKUcmZsXFTrF99+uVQdJTooOuGXiVESdCWrt5yQyiiLcxZthL0MHRqK7JNzq14uOPhzta2Pijkms0v@vger.kernel.org
X-Gm-Message-State: AOJu0YwZHX8tQ18akAM+Wk/EU4s9Tvr9D7IlJ4gQ4/YyPI6P7YxJg+cd
	5Y1EW82b0IjC3v3TYPu0OYfzhcOjwb0/Me7YGzzVvE8d7bySgWURZpXTPAohcxi4bVZPRiIZ9Om
	T8dkrGFgvN6R+usOhLw/2JkseMQNWO516/1eU/W4W/NL/JbMcXC/DTeVuy/9210TBxnIt+Vds
X-Gm-Gg: AY/fxX7yBfwGURrpSnxqgCzpXfq8gfb2QVylaWkOZkJlQPqfjxNlXyOWndo/IhmhT+Z
	s4hSqB7p/ap0U6yGAzeLWOHMAx3K6fpahiY2ShKF/hVvW/lwZ/1ujVDrJS6vHZKL2S+PQBVSJuO
	cSuR5+oBjp0F2OKfDipWi7Nwjst+7ge2p6OrgCwCyGjAdNtoubIG938orZSEIjjTkIERf0rxjnp
	MP0aq2sCCuLBDii5MsI8oLzDjX72wEF5YC16nEsxIkYOrJnMaYz0ksbduwQnnQ03sJyXrvOW0/R
	aUN3jXdMwgwAZ4qbfxK9bZg8KMQi8J6xWmL61T+5S6/BMA94Ik4Fgu4Ft7CKI8VCUjyIAlZYIf9
	W4qRY0haMxULco+DLRZQ8IW4ASwBorJbdm0bhFl+iFcvH0hl93HLaSInwn/48YhOV/Q==
X-Received: by 2002:ac5:cda2:0:b0:55b:ac1:d05f with SMTP id 71dfb90a1353d-55fed4513dcmr3081428e0c.0.1765976723727;
        Wed, 17 Dec 2025 05:05:23 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGNkAmEGb+DEQkMQXhO/klpSQ3KdCkRgLFiz07IuBTxL1i8X9YIGirss2PL9bV3+bxlJNGCPg==
X-Received: by 2002:ac5:cda2:0:b0:55b:ac1:d05f with SMTP id 71dfb90a1353d-55fed4513dcmr3081391e0c.0.1765976723213;
        Wed, 17 Dec 2025 05:05:23 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-64b3f4ea465sm2415418a12.5.2025.12.17.05.05.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 17 Dec 2025 05:05:22 -0800 (PST)
Message-ID: <152303f5-ada5-4a54-8909-2f8583fc48c2@oss.qualcomm.com>
Date: Wed, 17 Dec 2025 14:05:19 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sm8750: Add camera clock controller
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: Taniya Das <taniya.das@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251203-sm8750_camcc_dt-v1-1-418e65e0e4e8@oss.qualcomm.com>
 <3e1d1dc4-7b94-47df-b4bd-f6ce4d7842dd@linaro.org>
 <vsdh2yzhr3kasg2epvxgjvc2dkzm33qegftrj7oh7ogd7kvq6a@izq7deto3ljd>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <vsdh2yzhr3kasg2epvxgjvc2dkzm33qegftrj7oh7ogd7kvq6a@izq7deto3ljd>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE3MDEwMSBTYWx0ZWRfX6oJDGyfWT71K
 M2m3Ne9qi6cPaFy5U0IpHk8awks5pOfSJnkSWTqZKN3llrh3X/Dqle11dP9DiU2+mWso2UC3Ppd
 DDAiG18oQnD+dCtR2t4WujjwkCK28KmBEcYuYQUtTuUrzN0rTLXwnrXp0IzHkcPhtzqhFqT8BNA
 MBG4Hpin4ureHMCJs0Es9hJg2iviHHjUvx0D85bGB6NHoyfai/kzqDz1OZxHbVmKvQUUH+kI89K
 LfoEMaaUaQ3MZbsyaZICkBP0P1BGk5xIedqvZGCDkqUIqol0zxduwLNpUNjy2QV1TRvRo5pxLfm
 575OMF3RwNWCrtMJLKs8YSiJXh0T+kEMprI8enE6CeFCs2MsG2LfCn2WELfx0GiAB+8EN4KhdG8
 0dqRVOGoi8woeVyS27H55sEuXU8W8Q==
X-Proofpoint-GUID: KmjNGz0gnZoHfrlEd9z8LdT72fEw9-aq
X-Proofpoint-ORIG-GUID: KmjNGz0gnZoHfrlEd9z8LdT72fEw9-aq
X-Authority-Analysis: v=2.4 cv=U82fzOru c=1 sm=1 tr=0 ts=6942aa94 cx=c_pps
 a=1Os3MKEOqt8YzSjcPV0cFA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=eKbRlcxksK2tBPLDyXgA:9
 a=QEXdDO2ut3YA:10 a=hhpmQAJR8DioWGSBphRh:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-17_01,2025-12-16_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 bulkscore=0 impostorscore=0 malwarescore=0 priorityscore=1501
 adultscore=0 clxscore=1015 spamscore=0 lowpriorityscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512170101

On 12/6/25 4:45 AM, Dmitry Baryshkov wrote:
> On Wed, Dec 03, 2025 at 04:03:26PM +0200, Vladimir Zapolskiy wrote:
>> Hi Taniya.
>>
>> On 12/3/25 12:32, Taniya Das wrote:
>>> Add the camcc clock controller device node for SM8750 SoC.
>>>
>>> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
>>> ---
>>>   arch/arm64/boot/dts/qcom/sm8750.dtsi | 35 ++++++++++++++++++++++++++++++++++-
>>>   1 file changed, 34 insertions(+), 1 deletion(-)
> 
>>> @@ -2046,6 +2047,22 @@ aggre2_noc: interconnect@1700000 {
>>>   			clocks = <&rpmhcc RPMH_IPA_CLK>;
>>>   		};
>>> +		cambistmclkcc: clock-controller@1760000 {
>>> +		       compatible = "qcom,sm8750-cambistmclkcc";
>>> +		       reg = <0x0 0x1760000 0x0 0x6000>;
>>> +		       clocks = <&gcc GCC_CAM_BIST_MCLK_AHB_CLK> ,
>>> +				<&bi_tcxo_div2>,
>>> +				<&bi_tcxo_ao_div2>,
>>> +				<&sleep_clk>;
>>> +			power-domains = <&rpmhpd RPMHPD_MMCX>,
>>> +					<&rpmhpd RPMHPD_MX>;
>>> +			required-opps = <&rpmhpd_opp_low_svs>,
>>> +					<&rpmhpd_opp_low_svs>;
>>> +			#clock-cells = <1>;
>>> +			#reset-cells = <1>;
>>> +			#power-domain-cells = <1>;
>>
>> I've briefly checked the recently sent driver, and I didn't find that this
>> clock controller serves as a reset controller or a power domain controller.
>>
>> And if so, these properties shall be obviously removed.
> 
> I'd agree here.

This block is most definitely a reset provider, but none are described
in Linux as of right now

I don't see any GDSCs though

Konrad

