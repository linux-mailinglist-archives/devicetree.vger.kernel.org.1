Return-Path: <devicetree+bounces-253073-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id EE672D0715C
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 05:12:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 4B6F3302074C
	for <lists+devicetree@lfdr.de>; Fri,  9 Jan 2026 04:11:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 15F6B2DB7AF;
	Fri,  9 Jan 2026 04:11:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="C+KH/p47";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fevexLsz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FDC92737F2
	for <devicetree@vger.kernel.org>; Fri,  9 Jan 2026 04:11:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767931870; cv=none; b=cqL2xqrQ+HURT2SwH+7cHd/LHyrGifJ/2mpq//a6q/3blDpJDCKIBWaCKTZ0lVNDIAtgjrYLX2NV5LiBKFOHb+Ba3MEj+TjpceTrdA0zAhVrUWEUv9qUEqC1cP/2NAMAfEFMbg6GQI86uzS55yjoSpr+eQJbPCe/X/rLnFrRf54=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767931870; c=relaxed/simple;
	bh=hICcjxGR+Wljz+6LE0ufles6gMhEISPHaCxvzSwsoWw=;
	h=Message-ID:Date:MIME-Version:Subject:From:To:References:
	 In-Reply-To:Content-Type; b=TEBaj5eY+qGhiUPCtaFBwGKfD7RFCv77P6JvJtGAxEZQgf5AleqRma0dYWI5FZOQxunkov0ho7OOTm4ZfJFEbPx74TQASIAmtDtYjFXJVSV8s3R0cyfAK7kbXk0jJ9phWEqiWPyqxO2N1AqVUduP48gOj4/P29Pl3gQlz8f0joI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=C+KH/p47; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fevexLsz; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 608JG3sv3019775
	for <devicetree@vger.kernel.org>; Fri, 9 Jan 2026 04:11:06 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ae8UX2cu9IJeZKZROGT+I9ypykXH8VWW5tgU8zONoZ4=; b=C+KH/p47mI4hp0KN
	nlvqbrtdCnaopUVyqMT9Xx0B77iS399s2y+FStoe1YzQwOWt28Ji8A76JEchQd9l
	uX7k+qNlWTwIXjJLgzRwYTgIOYlAZaWT8GvoKbNsoCOjsg3appgQZL160eC5couz
	IhtO6Zqlsti+Z1SoDqnPu3GKG3xsvUDXAZPJPJU5bNJp6eQkfuI3zLJyKz4uTlCl
	V3vaVNCja9YD+IpMPQfZl9zNIKauW90BS9mJOpNZ6Ea3+DMJ6I+WaeSOaChg7FBY
	JsB2gX+xJpGKIf4//l1gHZ88DoSZbrf18ix85cBX9yaZSUkoJLO62FdiVENDsh1n
	RCQc5w==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bjjk3h81k-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 09 Jan 2026 04:11:06 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-81e81fbbb8cso71079b3a.3
        for <devicetree@vger.kernel.org>; Thu, 08 Jan 2026 20:11:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767931866; x=1768536666; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :to:from:subject:user-agent:mime-version:date:message-id:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ae8UX2cu9IJeZKZROGT+I9ypykXH8VWW5tgU8zONoZ4=;
        b=fevexLszm+Y25+mEQe9u/vIGFhAFCTOdiscbmTPYWcb0Cn/ht8SkWbMTT0Cz7jhSSN
         0k5Cw2WFxvAeofQBhbeFc2tN+ZLOxw9M12NY3cw5teDS7nhlZxaF2s5Y8ve6uZ5wMCab
         dvR/62GU1rydHARBxC0yew7Gb0ae6zJNDy7j2TStnNRehcXUxGa5c7Bftg5b8KSiqXV6
         4Yd5zdNJoHkhOhBurKo53fZ6yf2ANbck89i+cnjrmcr6+N7T44fIymcQdCp+DPtkuuTI
         UftsqaEbe+3f6xYbGyz5LzBgVz0072nOkUYl1WvsULHPIKkZfujvH2JiGBGkItikseNH
         63yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767931866; x=1768536666;
        h=content-transfer-encoding:in-reply-to:content-language:references
         :to:from:subject:user-agent:mime-version:date:message-id:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ae8UX2cu9IJeZKZROGT+I9ypykXH8VWW5tgU8zONoZ4=;
        b=uqcEi307MuDpW8QFE70tQLalSUpvWVQA6c77/ISbrjyGsLyqHLPRmL68xf3qczQ6uO
         EHfdfI6KwTfax4tYISErs1vI8gEr/inV2Lq3ANXPECo7SgSWqbPLKEQSAQAYwmZzglGb
         rydLGRjfLkcfr3qYwKloXMMUiuenDU+HsxJKT4Ck55R/5iyDo45YWH1jp6WufDBIORvN
         1yH3L/kkLCKFqZg5Xk/vyhTMRbxz9RQkuB5nvhi2YCwonyS5Kpxsk6oxE9jOq3P5kl1p
         2WwZzgSM4N54EkTXH/j0z01uEI8i8NfuWm70cNvyHx+n3UKB8qBPsOZtcMsJhWPRNta2
         nIOw==
X-Forwarded-Encrypted: i=1; AJvYcCX7oBcdvClGKIDArPLdziDq0Fjwvg/BLGh72sDQ/8xLFyq2WFR5C4/vQOq4AAccs200my/EBYiKjyFm@vger.kernel.org
X-Gm-Message-State: AOJu0Ywid4joYJObhOq6WdEu8//52qC0a5qwfcYvfizZ8QHi1lobE2PM
	AkdFKlPCk99vvnk2B/d/9R4TBTAG6ZK9+jEXi02uNnIIZgJOKxRg9AGvLQ3t408UFP015RG9OS9
	sb8GzIHr5lVvQgoZYISf1IV+4PAXZ+CQeozo18VcNQz8DBLNgv8b9tJBpXsm2qrgW
X-Gm-Gg: AY/fxX7iWytErgT4f9NWSO9tRhdxgouu3BYahTzOYnuPOy/gPVj0rgSwAZ4Ga8ZOabj
	0iZ0H3BeqAxIhnOgZwGSmlPuyRsL2Nw4Q7NDM3FsJuYYiNcib2zQX4lVY77gKFMeAvfVNIbN0lJ
	m92bCntvZjxRrL9db5gGPv/+UbufIWXOZrz8eUq1faQMa7pq0gNeIy2lLi+neuZCvHUYSBMxHjF
	xuk/HSdMh+Oue2IvC7ForGdv18PICtYpx+hWqZCPLpkA78agcxG4UdlXNq1ZJuoJzZ+RLOagQFo
	DFnNloXk9aeLIQ0jqNnm58P68u/w2I377sS+Ul7p9+b28Ub9EAthrPfSJN/czpdWIPbaDVRJuLW
	sgvO9NB4S9YHXgw/bDSfnDcKFGwFKVe7ReZJOaU6+lzEUHsjG4LM5XQ==
X-Received: by 2002:a05:6a00:1a10:b0:81c:c98c:aea8 with SMTP id d2e1a72fcca58-81cc98cb5a1mr4152445b3a.61.1767931865718;
        Thu, 08 Jan 2026 20:11:05 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFNflnxwa+mIRljWGYQSB7vt2PdnS2C3KlfmwRh7bmAkSxaKyzvwwixjykjONp+pqzf/8NvcQ==
X-Received: by 2002:a05:6a00:1a10:b0:81c:c98c:aea8 with SMTP id d2e1a72fcca58-81cc98cb5a1mr4152418b3a.61.1767931865235;
        Thu, 08 Jan 2026 20:11:05 -0800 (PST)
Received: from [10.151.37.217] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819baa19242sm9011293b3a.7.2026.01.08.20.11.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Jan 2026 20:11:04 -0800 (PST)
Message-ID: <6c299100-122a-436d-8b90-28c9a7d48677@oss.qualcomm.com>
Date: Fri, 9 Jan 2026 09:41:00 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [RFT PATCH 2/2] arm64: dts: qcom: ipq9574: Complete USB DWC3
 wrapper interrupts
From: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260106185123.19929-3-krzysztof.kozlowski@oss.qualcomm.com>
 <20260106185123.19929-4-krzysztof.kozlowski@oss.qualcomm.com>
 <32f4a425-e181-41ab-913f-55e3dd3b4fd5@oss.qualcomm.com>
Content-Language: en-US
In-Reply-To: <32f4a425-e181-41ab-913f-55e3dd3b4fd5@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: IrAaGkhNXKMxF_KxIixUG57v45pO_6ey
X-Authority-Analysis: v=2.4 cv=EazFgfmC c=1 sm=1 tr=0 ts=69607fda cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=yZjr3wkweJ7bfLCuHRAA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-GUID: IrAaGkhNXKMxF_KxIixUG57v45pO_6ey
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA5MDAyNSBTYWx0ZWRfX2ljVujcdE1Yn
 YspOGnXWJeEE21JJCbHhB+u+tLS3U9g9MZavWBc31l3i+c2oIZtdb1spE38KRtgxaNSo2AAHc2E
 pWITo/Oh3XUdUVZtH/+7giEUiXXxf3b5ioJ81fNrf6CJAVV01Foe0vr+dpUe5KpYWimCIPZg/YR
 kRKX/MDVOPjYeC16wAc5kEiO9hT+BIz/nmOXL1KYj33/sP5PY8k4IKZYYbEpuqapXMi7Qp1k8XZ
 +NVzFXLxELWc3qkht/ESt1NDT0Ivb9eDz/Rd/FHc3KhIgb10CpWkEMkf2z4cFZ3PqYgq1NyEre1
 JUcdhTPD4ILAr7iU5WT9C4tFHF2hGfgRjd/lx31YX0/X/qSbElSZUMhG+PyPjWvkvs79ggr6yPB
 EXHA8O7a9rLEWy/1SXcOvxoowJJzNzyZm5yHfOiuJhgqkW/LXaoeC9TiUtJO7PEZpj+NiC1JYed
 7JcrjCjmnFYQXcXFGLw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-09_01,2026-01-08_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 adultscore=0 impostorscore=0 priorityscore=1501
 malwarescore=0 bulkscore=0 lowpriorityscore=0 phishscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601090025


On 1/8/2026 11:13 AM, Kathiravan Thirumoorthy wrote:
>
> On 1/7/2026 12:21 AM, Krzysztof Kozlowski wrote:
>> Complete interrupts for DWC3 node to match what is required by
>> Devicetree bindings, as reported by dtbs_check:
>>
>>    ipq9574-rdp433.dtb: usb@8af8800 (qcom,ipq9574-dwc3): 
>> interrupt-names: ['pwr_event'] is too short
>>
>> The actual interrupt numbers are taken from reference manual of similar
>> chip, but not IPQ9574, due to lack of access to it.
>>
>> Signed-off-by: Krzysztof Kozlowski 
>> <krzysztof.kozlowski@oss.qualcomm.com>
>>
>> ---
>>
>> Not tested on hardware.
>>
>> "lack of access" = no IPQ9574 at all.
>
> Initially the SoC was named as IPQ9048 and after sometime it is 
> renamed as IPQ9574. But unfortunately, the reference manual is not 
> updated with the new naming.
>
> I can confirm the below interrupts are correct. So,
>
> Reviewed-by: Kathiravan Thirumoorthy 
> <kathiravan.thirumoorthy@oss.qualcomm.com>
>
> Thanks, Kathiravan T.

Also, confirmed that USB is working well, without any issues.

Tested-by: Kathiravan Thirumoorthy 
<kathiravan.thirumoorthy@oss.qualcomm.com>

>
>> ---
>>   arch/arm64/boot/dts/qcom/ipq9574.dtsi | 10 ++++++++--
>>   1 file changed, 8 insertions(+), 2 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/ipq9574.dtsi 
>> b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
>> index 86c9cb9fffc9..d7278f2137ac 100644
>> --- a/arch/arm64/boot/dts/qcom/ipq9574.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
>> @@ -765,8 +765,14 @@ usb3: usb@8af8800 {
>>               assigned-clock-rates = <200000000>,
>>                              <24000000>;
>>   -            interrupts-extended = <&intc GIC_SPI 134 
>> IRQ_TYPE_LEVEL_HIGH>;
>> -            interrupt-names = "pwr_event";
>> +            interrupts-extended = <&intc GIC_SPI 134 
>> IRQ_TYPE_LEVEL_HIGH>,
>> +                          <&intc GIC_SPI 136 IRQ_TYPE_LEVEL_HIGH>,
>> +                          <&intc GIC_SPI 111 IRQ_TYPE_LEVEL_HIGH>,
>> +                          <&intc GIC_SPI 112 IRQ_TYPE_LEVEL_HIGH>;
>> +            interrupt-names = "pwr_event",
>> +                      "qusb2_phy",
>> +                      "dm_hs_phy_irq",
>> +                      "dp_hs_phy_irq";
>>                 resets = <&gcc GCC_USB_BCR>;
>>               status = "disabled";

