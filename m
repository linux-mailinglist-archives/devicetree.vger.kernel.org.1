Return-Path: <devicetree+bounces-166609-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 46054A87D07
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 12:08:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 153F31887C49
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 10:08:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2830C27701F;
	Mon, 14 Apr 2025 10:05:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BGFWwjQa"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C15E26E148
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 10:05:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744625159; cv=none; b=ZvgWS16DBQCx+ooRl75SSUePJDvw6lR5CuKdVKCg2ZgCNOZI3addgt8VK2eiMOnqQiO7ksNfE02xLgIwzTGknG2P9V9WS2KqlKLAU+1utAP/eSZm8MXxPYYs4ZiG+3pm2KcTUgrvHi01Ln1FovQHPRcpcPy1j2/xEIrItCu30a8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744625159; c=relaxed/simple;
	bh=jDs8thLNCqncuvS6eDO8362rXAxntviZVG8dwQeCguA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MvkbDJiXz9pFKzKS5S5wWkGWxZULmG/url6O9MfIBHAylFJnbP84lyKLohnBVYbCaBPXYmdbxUfbZGoJI1kAxlmXDMCnfYoK1Y8IN4yWy+PbZp9MJ5yUpxEr3A2EF23JXLS7/94Jj1gZRwDq+dthYQhRRni8WF6iJw3nQ7m5rn0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BGFWwjQa; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53E99ngt029037
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 10:05:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UMvb8N95/gaSyVsSWCc3DQiAI8CRlEgBC06NE46MZVI=; b=BGFWwjQa2f9cEjFT
	qbBrfWdM+RFdK0K9hdYfPuRteQ8XNaiYwx67b3Ohkbvu55nMDHsq/Vu1HliRSriu
	G8YP0GPLDLIhb/pRr+RCG7ds+150Bmpj6tF0j5w3EfAUhGu1egHaUHu5o6JwgAsW
	EX0UNu99uROjyJlAnmg5ljh5DGJOE374S2ttB89cFaW5GNlrnec2iQX2TZUM9LM2
	vVMbxndBqfFYBx/4KJnmDmmcAqD9aVQ2xC9+aA4aCFwbA/GX40vp8Gn9A7FdKEYD
	Wwz4eulHTX7xCMDig8iDUl0dMS54L7mummSuDy6dnWbx9JFL0RvvwLZSoaxe3BJ9
	BsFp/w==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45yfs14677-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 10:05:55 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-476718f9369so9582521cf.3
        for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 03:05:55 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744625134; x=1745229934;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UMvb8N95/gaSyVsSWCc3DQiAI8CRlEgBC06NE46MZVI=;
        b=o0ml+aWg9Z33h56j2HafFuqBNZ6XA/CSolyZWM1bf6qbr5VuivMXsMDERyL4OShFU8
         YdB27sL8Oq90qVaSRZfCgVbA0Xc+5gZx7/b29ocFaB9UcQSRboTvxUZvnLN/glSB/SeW
         wElPazoC9F1d5zwWMBCOdqEtTxBt0qgaOlaQAmJ7P3VTQhqTplmKCVwx6sbccg0lqKlh
         7b0sGPxiOeFr4FdgmaR9XNM8/Jcz0dl0R8IvH9KQqJpRFktK5tuj8QkKiq2aPDZBXP2V
         yO5cY2cpNDuJvgVifAjsLXFxpq04eol/wE35V7iz5BNXVYUy7VfxPNfr+LojzqYNrBGW
         rQBQ==
X-Forwarded-Encrypted: i=1; AJvYcCUCz8SD951/oAdv34wENr6qNoJMvolUYHXy+s8mrvHiXa6vhlUsV8Po/0lIKAl49HnH+8/K5QjnBUTQ@vger.kernel.org
X-Gm-Message-State: AOJu0YzNBa3VIJJsDDOyKB+67wMvu7vW8gLHTmI6OZgpM+F1FxtO9J1B
	6I1dgjCVVWwJLzVPL/wbWHKA8a7a638NZKs1xo4gS74zTpFv4TEE1RA3dJZaxm4L2Anurx79Xcz
	cN55yAsDepcsJ7HU8E9nwDxYQTHy2AkvfmzF/Q8jt/XsnM0dz5qHy3CW9g/TB
X-Gm-Gg: ASbGncv0GYCaTeAB/D+tkOdVM1yo6OkmTX45Ig0VjttVioYONAoc1nTNWenBgkB4Iwn
	Ag222zrf1ES+QAXr7g1ibhHen8Tbec8KzGLUaIh19gNeNguUKQGHsRtLTVDAv6nSAIXhi+DjYAv
	yLNpLEk9GtzFStqgXOih+8GZHisj3nII0ZMBSXkYH6/q/n8ciV6/FP4LB8gRzI1grhnWZgvFINx
	oaQtyrOnJKck3x73P2rQ0eig8spgwwsLW97JZtWuPfK9LgwjzPmLtcuEAjUBDWcEZIEvrnh9I70
	8mA6Mcd7sqzL0ExJW0KM/zW5DBoXjQHPx1udCtB2QbzWIPuCP2RqA8wKgZ/40OcQWQ==
X-Received: by 2002:a05:620a:3197:b0:7c5:8f37:1eb2 with SMTP id af79cd13be357-7c7af113d7bmr603259285a.9.1744625134287;
        Mon, 14 Apr 2025 03:05:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGmBUa5andw4pRRHVYC8/NGtkbW9c5vRVpeMF8s8vhz5E8trZWGxeC/sN+v6rRNhzWhNX/m+Q==
X-Received: by 2002:a05:620a:3197:b0:7c5:8f37:1eb2 with SMTP id af79cd13be357-7c7af113d7bmr603256585a.9.1744625133674;
        Mon, 14 Apr 2025 03:05:33 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acaa1bb3120sm868414666b.1.2025.04.14.03.05.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Apr 2025 03:05:33 -0700 (PDT)
Message-ID: <691a2358-bf5d-4f03-ae2d-97fb2e40952a@oss.qualcomm.com>
Date: Mon, 14 Apr 2025 12:05:30 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 07/10] arm64: dts: qcom: sa8775p-ride: add anx7625 DSI
 to DP bridge nodes
To: Ayushi Makhija <quic_amakhija@quicinc.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: konradybcio@kernel.org, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        robdclark@gmail.com, dmitry.baryshkov@linaro.org, sean@poorly.run,
        marijn.suijten@somainline.org, andersson@kernel.org, robh@kernel.org,
        robh+dt@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org,
        andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org,
        Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
        jernej.skrabec@gmail.com, quic_abhinavk@quicinc.com,
        quic_rajeevny@quicinc.com, quic_vproddut@quicinc.com,
        quic_jesszhan@quicinc.com
References: <20250404115539.1151201-1-quic_amakhija@quicinc.com>
 <20250404115539.1151201-8-quic_amakhija@quicinc.com>
 <nxnqwh2mzvnxv5ytwjsyulxr6ct6mhv3z3v6q4ojrjhhclwv2i@55nb56hnwi3y>
 <0f4eca6c-67df-4730-88b3-a277903deabc@quicinc.com>
 <wzqct2y67h6bkazxv3se77slsheaw5rspgcrcfjm7ngr5t4alw@nktpqrt5woky>
 <bb277124-a225-450b-acfe-0acd0f94b263@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <bb277124-a225-450b-acfe-0acd0f94b263@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=P9I6hjAu c=1 sm=1 tr=0 ts=67fcde03 cx=c_pps a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=gEfo2CItAAAA:8 a=ovN_W45TYzZQxDyi82gA:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-GUID: _Iwi38CkuOzSLkJzYX0vCWjaKdd-Cst-
X-Proofpoint-ORIG-GUID: _Iwi38CkuOzSLkJzYX0vCWjaKdd-Cst-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-14_03,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 clxscore=1015 bulkscore=0 impostorscore=0 phishscore=0 suspectscore=0
 mlxscore=0 spamscore=0 malwarescore=0 adultscore=0 priorityscore=1501
 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504140073

On 4/14/25 11:56 AM, Ayushi Makhija wrote:
> Hi Dmitry,
> 
> On 4/11/2025 1:31 AM, Dmitry Baryshkov wrote:
>> On Thu, Apr 10, 2025 at 06:37:54PM +0530, Ayushi Makhija wrote:
>>> Hi Dmirity/Konard
>>>
>>> On 4/7/2025 1:42 AM, Dmitry Baryshkov wrote:
>>>> On Fri, Apr 04, 2025 at 05:25:36PM +0530, Ayushi Makhija wrote:
>>>>> Add anx7625 DSI to DP bridge device nodes.

[...]

>>>>> @@ -517,9 +548,135 @@ &i2c11 {
>>>>>  
>>>>>  &i2c18 {
>>>>>  	clock-frequency = <400000>;
>>>>> -	pinctrl-0 = <&qup_i2c18_default>;
>>>>> +	pinctrl-0 = <&qup_i2c18_default>,
>>>>> +		    <&io_expander_intr_active>,
>>>>> +		    <&io_expander_reset_active>;
>>>>
>>>> These pinctrl entries should go to the IO expander itself.
>>>>
>>>>>  	pinctrl-names = "default";
>>>>> +
>>>>>  	status = "okay";
>>>>> +
>>>>> +	io_expander: gpio@74 {
>>>>> +		compatible = "ti,tca9539";
>>>>> +		reg = <0x74>;
>>>>> +		interrupts-extended = <&tlmm 98 IRQ_TYPE_EDGE_BOTH>;
>>>>> +		gpio-controller;
>>>>> +		#gpio-cells = <2>;
>>>>> +		interrupt-controller;
>>>>> +		#interrupt-cells = <2>;
>>>>> +
>>>>> +		gpio2-hog {
>>>>
>>>> This needs a huuge explanation in the commit message. Otherwise I'd say
>>>> these pins should likely be used by the corresponding anx bridges.
>>>
>>> Thanks, for the review.
>>>
>>> Previously, I was referring to the downstream DT and misunderstood the use of gpio-hog.
>>> After reading the schematic, I realized that gpio2, gpio3, gpio10, and gpio11 are all input pins
>>> to the IO expander TC9539. We have already configured gpio2 and gpio10 as interrupts in the
>>> ANX7625 bridges, so the gpio-hog is not required. It is working without the gpio-hog configuration.
>>
>> Please make sure that there are pinctrl entries for all pins.
>>
> 
> Thanks, for the review.
> 
> While declaring the pinctrl entries inside the io_expander node, I am getting below error while checking the DTBS check against DT-binding.
> 
> Error : /local/mnt/workspace/amakhija/linux_next_11042025/linux/arch/arm64/boot/dts/qcom/sa8775p-ride.dtb: gpio@74: 'dsi0-int-pin-state', 'dsi1-int-pin-state' do not match any of the regexes:
>         '^(hog-[0-9]+|.+-hog(-[0-9]+)?)$', 'pinctrl-[0-9]+' from schema $id: http://devicetree.org/schemas/gpio/gpio-pca95xx.yaml#
> 
>         io_expander: gpio@74 {
>                 compatible = "ti,tca9539";
>                 reg = <0x74>;
>                 interrupts-extended = <&tlmm 98 IRQ_TYPE_EDGE_BOTH>;
>                 gpio-controller;
>                 #gpio-cells = <2>;
>                 interrupt-controller;
>                 #interrupt-cells = <2>;
> 
>                 pinctrl-0 = <&io_expander_intr_active>,
>                             <&io_expander_reset_active>;
>                 pinctrl-names = "default";
> 
>                 dsi0_int_pin: dsi0-int-pin-state {
>                         pins = "gpio2";
>                         input-enable;
>                         bias-disable;
>                 };
> 
>                 dsi1_int_pin: dsi1-int-pin-state {
>                         pins = "gpio10";
>                         input-enable;
>                         bias-disable;
>                 };
> 
>         };
> 
> I couldn't find any devicetree example of tca9539 which is using pinctrl. The gpio-pca95xx.yaml DT binding does not match with any regex of the patterns properties.

It looks like patternProperties should be extended, perhaps with
something that includes pincfg-node.yaml? Krzysztof?

Konrad

