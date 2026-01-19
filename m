Return-Path: <devicetree+bounces-256876-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E562D3A978
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 13:51:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A612430635C0
	for <lists+devicetree@lfdr.de>; Mon, 19 Jan 2026 12:49:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7932A328B71;
	Mon, 19 Jan 2026 12:49:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cm2Coeaw";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="G7gyXKCJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C94D03358B7
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 12:49:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768826948; cv=none; b=lKVfZ9VUEURRAcCpyfI+Cs/H4kAWq4BElal6p+iLIPXAFf2jg0bxmTySPhv7btmTOkoL92SgCSOGnoFL0Xf86J5YJhhv8BUxFX/T0ZauCcWN6oiX5VycTpdIWs0Pjcds/sjE9cca33AtAtLCwd7JrCrJMh4dQPXietJUfSoZqnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768826948; c=relaxed/simple;
	bh=vD8cbVHkNYwHVGwV3rwR0Uo/5RfBWglP0e/ow6yLRi0=;
	h=Subject:To:Cc:References:From:Message-ID:Date:MIME-Version:
	 In-Reply-To:Content-Type; b=CIKcIW1nUFKUmYzzcypMBJTIoL5tUUwKRoKsUiJPoiXxRVWfYbguwG7Mwi1cnUX+vG0qYNrT9Q6yhVKsg5/FDi66LXgO+HaoMRnbuk8E9h/0rVMWPrSRgj6rrgFEKdhFqOlK08/2FWshBkOt+H788pplj8h6pDMMMPg2ZdfvZps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cm2Coeaw; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=G7gyXKCJ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60J91GU9748360
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 12:49:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	TU2vtCAfzwAJaCXmNSsQOt4NE2nzscGeqZYEijVdEEs=; b=cm2CoeawHAQLETPM
	MG1BvPW16Jizl4ho75co5R0zjdZGGt8x/QpllTIiwD9n5uHTzgvFdBVMLtGjDQCb
	FaF0tMoJis8XJHRwqSEJxNJKsVY5hXaFywQvAlHC4kgqI/sMPex9ncq74pGTpPtA
	PDYH2yaj1KnFgS6lc4YK3de7upJUEsM+euyQA4Nx3gTBUnj77LqwJhz8gH3cFh9F
	9up2X2fPm9uhYr2mvR6K3+TXqJRf5/GiwymKiIF5bhfgjO/KXvLWcchFMKYBP9JE
	NmK6VQHLOa0UVx842Vq7j4S/zrL/s7/32ipYUTuJjjQCkzMxkUauj3U6dNf1glaL
	f9OGTQ==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4br2t752f5-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 12:49:05 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-81f5381d17dso3659312b3a.1
        for <devicetree@vger.kernel.org>; Mon, 19 Jan 2026 04:49:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768826945; x=1769431745; darn=vger.kernel.org;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TU2vtCAfzwAJaCXmNSsQOt4NE2nzscGeqZYEijVdEEs=;
        b=G7gyXKCJ9k+913LXqJiYjhZl5LNSzJbIFLG986Rmm4HfMfly0KlAmwV0Hi7gjf/g3M
         PwtVMNo669Q/zyYFbMWbl0HWsFvI/Sv2gNJlQyspkGPLseRMBXS3sUcgufOa9LUapAjw
         Ab5uYV9B5rxuE2MaSSYbpWxa+dLKHS0kPbY/FCF80tZ4JFSMlNEoMZImpp9YGYLAlMz/
         eYZjOdBfm9ensKz4mfUeD/pd+TUFyNdJVOIW88uaeZLhMZSEyzeVl8+0zyhX3cBjud/j
         a32LOgcsw7Q1hsnNHx0IT08iCZgpXdkCaMJ4jkTcVr8Xi00kZ0WDOvauKt1SRnN6IF5M
         hftg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768826945; x=1769431745;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TU2vtCAfzwAJaCXmNSsQOt4NE2nzscGeqZYEijVdEEs=;
        b=b/biY3m8LwsIHkpvUw79/f6RA1KOYrsYb5sxkf5H8OvQA9FoAY8qJULFWUqX02PjX3
         Rj159htmVpxRvvfsA+sZDJwuMVkEJ6zukjMZx/EGjwxVYvRSGJChSbuJD4UcWNWzVinn
         btJhR+4xSTZoEBsSZrLP+yofnm+F0Ay+bNFiu+h+8oZHBxN0hqFF7asuoBftC6ADRR+5
         ERkZRGYbsy7h/h+B6INXrOogVtAflTeZzeBYdC2ET3cDVtI4XyzQPdoHmnXF8SKDsjix
         1pHA/bOZAvzgKib9F/w5xaB5MrnN+AR44OE8aoq0zqabHgUKWiTtO/Ewp6zcQ1m7t3kD
         vnWQ==
X-Forwarded-Encrypted: i=1; AJvYcCW7tm946uZbkRzrH3oBfs/CZXsQH8HI75zBbMBOV2Ealq89Z1s3yeRa1j0QtWiOhvmqy0udigCIrLLV@vger.kernel.org
X-Gm-Message-State: AOJu0YxQufdxoz34rI4iutGGmi8HDzpwWe+JUO1H6yLTpFOLa9yG3j0q
	Xzws3Wr21BwPMkpKs/Cgv31fMS8LAA8goSJUlk29+IkDA80ALniO3L6ocqNIWartfLJFNXMMjVF
	bqgs0S9mOszZTHTbHAsGX+EI1UZwyWBbCkahexNmLACwqa2lP24WUVwJv0GmYc84N
X-Gm-Gg: AY/fxX5bfPcbHwJjQ5eR8IL57wI0r4eORJNLdcuBtDLiW9tjksUz/QsQ5FcA3tHoBH2
	0W8zc/LYt6j/FyUlKDG9AMNGHEXOYbA/8uf3vjukjBEBxUTXUKTdkkBlKTgY1kKuUt1Gu3o16OZ
	WZJECL5WBDsDF313kIYUgiIHKLJAVlzRqbsxohY6mxHs8ku+/mzbfrrn3ZvsvWTGEF8MiN5EKEw
	INxOnfDWFliralDzMpBbGtR4X1TrxVcXMenH/f+2qzQStdpVFkfwLVs8v3zfDDQ8pcsdvZmQmWD
	/2rZWbp54br3etOp3tfLbXXG00xf2A9u4R+Y37ToRLwteB3B8cYIcWi8rYEvU28XgpaLV8MQRBq
	tjZ/a18/hW/2KGbblqxegdJ+gLimNUDEk2U7c2S0=
X-Received: by 2002:a05:6a00:ac4:b0:81f:7db2:89db with SMTP id d2e1a72fcca58-81fa188208fmr9565270b3a.68.1768826944590;
        Mon, 19 Jan 2026 04:49:04 -0800 (PST)
X-Received: by 2002:a05:6a00:ac4:b0:81f:7db2:89db with SMTP id d2e1a72fcca58-81fa188208fmr9565248b3a.68.1768826944085;
        Mon, 19 Jan 2026 04:49:04 -0800 (PST)
Received: from [10.217.223.153] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-81fa1278061sm9319886b3a.44.2026.01.19.04.49.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 19 Jan 2026 04:49:03 -0800 (PST)
Subject: Re: [PATCH v2 0/2] Enable Inline crypto engine for kodiak
To: Rob Herring <robh@kernel.org>
Cc: linux-mmc@vger.kernel.org, linux-kernel@vger.kernel.org,
        krzk+dt@kernel.org, ulf.hansson@linaro.org, devicetree@vger.kernel.org,
        andersson@kernel.org, konradybcio@kernel.org, conor+dt@kernel.org
References: <20260114094848.3790487-1-neeraj.soni@oss.qualcomm.com>
 <176840729246.2734238.959231359705262987.robh@kernel.org>
From: Neeraj Soni <neeraj.soni@oss.qualcomm.com>
Message-ID: <9c21bc87-326a-aa0b-ba81-31b10e119acb@oss.qualcomm.com>
Date: Mon, 19 Jan 2026 18:18:59 +0530
User-Agent: Mozilla/5.0 (Windows NT 10.0; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
In-Reply-To: <176840729246.2734238.959231359705262987.robh@kernel.org>
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Fdc6BZ+6 c=1 sm=1 tr=0 ts=696e2841 cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=gEfo2CItAAAA:8 a=EUspDBNiAAAA:8
 a=tbLNEdYNDDqBs7JTpEAA:9 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
 a=sptkURWiP4Gy88Gu7hUp:22
X-Proofpoint-ORIG-GUID: yUvcWpJerqnVg3GXksB3AbSTvToEH7hk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE5MDEwNSBTYWx0ZWRfX06QtLSLIih7a
 hRWPl3Bx6Or8JtSD41aCZxn21LtWfYnYP9MSx9If+CRxAdO5JDCvyrw7H42HzJVKHy39gFGtwHs
 BBNVvalC9YfApPY0h+29ZmGCpQsO8ca9NYEPNkxMT979UFANG7/a34zayh0vA8RpVm/xvIJrNZQ
 C1ivIt3zR1g7+X57HTp2pSTdPhO88qybHDllEwhGWZfMhDRBZ70GQdsLdLTfG5ZpnUaAA4VScrf
 3bvBKE1Tlo02LhxtxVyRTPclNHgW+tABwOL+4JMy6IfG+JmXpD81iweVhkdpLpkktMUfQzJC9XY
 MtQaR15qHojqvIIiGbJoCpKw2nfHnFa/MX/OoTtJbn92OcayrIrB4qB0/wIbchXE9KVJ2SN8u1c
 Jscp6Wd/YoWFQ2gRobmc6Q2WIKRiKpXSJ/SK5SN9R2vlh4/rHNRnxA+HsjtIzPnixB0LOWVPTAp
 HA2nX0FzZQHz7U0FaLQ==
X-Proofpoint-GUID: yUvcWpJerqnVg3GXksB3AbSTvToEH7hk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-19_02,2026-01-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 malwarescore=0 lowpriorityscore=0 phishscore=0
 bulkscore=0 impostorscore=0 priorityscore=1501 spamscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601190105

Hi,

On 1/14/2026 9:48 PM, Rob Herring wrote:
> 
> On Wed, 14 Jan 2026 15:18:46 +0530, Neeraj Soni wrote:
>> Document Inline Crypto Engine (ICE) handle for SDHC and add its device-tree
>> node to enable it for kodiak.
>>
>> How this patch was tested:
>> - export ARCH=arm64
>> - export CROSS_COMPILE=aarch64-linux-gnu-
>> - make menuconfig
>> - make defconifg
>> - make DT_SCHEMA_FILES=Documentation/devicetree/bindings/mmc/sdhci-msm.yaml dt_binding_check
>> - make ARCH=arm64 CROSS_COMPILE=aarch64-linux-gnu- CHECK_DTBS=y dtbs
>>
>> ---
>> Changes in v2:
>> - Removed the "if: required:" description for "qcom,ice" dt-binding
>>   as the ICE node is optional.
>> - Corrected the ICE dt node entry according to the dt-binding description.
>> - Added test details.
>>
>> Changes in v1:
>> - Updated the dt-binding for ICE node.
>> - Added the dt node for ICE for kodiak.
>>
>> Neeraj Soni (2):
>>   dt-bindings: mmc: sdhci-msm: Add ICE phandle
>>   arm64: dts: qcom: kodiak: enable the inline crypto engine for SDHC
>>
>>  Documentation/devicetree/bindings/mmc/sdhci-msm.yaml | 4 ++++
>>  arch/arm64/boot/dts/qcom/kodiak.dtsi                 | 9 +++++++++
>>  2 files changed, 13 insertions(+)
>>
>> --
>> 2.34.1
>>
>>
>>
> 
> 
> My bot found new DTB warnings on the .dts files added or changed in this
> series.
> 
> Some warnings may be from an existing SoC .dtsi. Or perhaps the warnings
> are fixed by another series. Ultimately, it is up to the platform
> maintainer whether these warnings are acceptable or not. No need to reply
> unless the platform maintainer has comments.
> 
> If you already ran DT checks and didn't see these error(s), then
> make sure dt-schema is up to date:
> 
>   pip3 install dtschema --upgrade
> 
> 
> This patch series was applied (using b4) to base:
>  Base: attempting to guess base-commit...
>  Base: tags/v6.19-rc1-102-g3af51501e2b8 (exact match)
>  Base: tags/v6.19-rc1-102-g3af51501e2b8 (use --merge-base to override)
> 
> If this is not the correct base, please add 'base-commit' tag
> (or use b4 which does this automatically)
> 
> New warnings running 'make CHECK_DTBS=y for arch/arm64/boot/dts/qcom/' for 20260114094848.3790487-1-neeraj.soni@oss.qualcomm.com:
> 
> arch/arm64/boot/dts/qcom/sm7325-nothing-spacewar.dtb: soc@0 (simple-bus): crypto@7C8000: 'ranges' is a required property
> 	from schema $id: http://devicetree.org/schemas/simple-bus.yaml
> arch/arm64/boot/dts/qcom/sc7280-herobrine-crd-pro.dtb: soc@0 (simple-bus): crypto@7C8000: 'ranges' is a required property
> 	from schema $id: http://devicetree.org/schemas/simple-bus.yaml
> arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dtb: soc@0 (simple-bus): crypto@7C8000: 'ranges' is a required property
> 	from schema $id: http://devicetree.org/schemas/simple-bus.yaml
> arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dtb: pmic@2 (qcom,pm8350c): pwm:nvmem: [[386, 387]] is too short
> 	from schema $id: http://devicetree.org/schemas/mfd/qcom,spmi-pmic.yaml
> arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dtb: pwm (qcom,pm8350c-pwm): nvmem: [[386, 387]] is too short
> 	from schema $id: http://devicetree.org/schemas/leds/leds-qcom-lpg.yaml
> arch/arm64/boot/dts/qcom/sc7280-herobrine-zombie.dtb: soc@0 (simple-bus): crypto@7C8000: 'ranges' is a required property
> 	from schema $id: http://devicetree.org/schemas/simple-bus.yaml
> arch/arm64/boot/dts/qcom/qcm6490-idp.dtb: soc@0 (simple-bus): crypto@7C8000: 'ranges' is a required property
> 	from schema $id: http://devicetree.org/schemas/simple-bus.yaml
> arch/arm64/boot/dts/qcom/qcm6490-particle-tachyon.dtb: soc@0 (simple-bus): crypto@7C8000: 'ranges' is a required property
> 	from schema $id: http://devicetree.org/schemas/simple-bus.yaml
> arch/arm64/boot/dts/qcom/sc7280-herobrine-crd.dtb: soc@0 (simple-bus): crypto@7C8000: 'ranges' is a required property
> 	from schema $id: http://devicetree.org/schemas/simple-bus.yaml
> arch/arm64/boot/dts/qcom/sc7280-idp.dtb: soc@0 (simple-bus): crypto@7C8000: 'ranges' is a required property
> 	from schema $id: http://devicetree.org/schemas/simple-bus.yaml
> arch/arm64/boot/dts/qcom/sc7280-herobrine-evoker-lte.dtb: soc@0 (simple-bus): crypto@7C8000: 'ranges' is a required property
> 	from schema $id: http://devicetree.org/schemas/simple-bus.yaml
> arch/arm64/boot/dts/qcom/sc7280-idp2.dtb: soc@0 (simple-bus): crypto@7C8000: 'ranges' is a required property
> 	from schema $id: http://devicetree.org/schemas/simple-bus.yaml
> arch/arm64/boot/dts/qcom/sc7280-herobrine-evoker.dtb: soc@0 (simple-bus): crypto@7C8000: 'ranges' is a required property
> 	from schema $id: http://devicetree.org/schemas/simple-bus.yaml
> arch/arm64/boot/dts/qcom/sc7280-herobrine-zombie-lte.dtb: soc@0 (simple-bus): crypto@7C8000: 'ranges' is a required property
> 	from schema $id: http://devicetree.org/schemas/simple-bus.yaml
> arch/arm64/boot/dts/qcom/sc7280-herobrine-herobrine-r1.dtb: soc@0 (simple-bus): crypto@7C8000: 'ranges' is a required property
> 	from schema $id: http://devicetree.org/schemas/simple-bus.yaml
> arch/arm64/boot/dts/qcom/sc7280-herobrine-zombie-nvme-lte.dtb: soc@0 (simple-bus): crypto@7C8000: 'ranges' is a required property
> 	from schema $id: http://devicetree.org/schemas/simple-bus.yaml
> arch/arm64/boot/dts/qcom/sc7280-herobrine-zombie-nvme.dtb: soc@0 (simple-bus): crypto@7C8000: 'ranges' is a required property
> 	from schema $id: http://devicetree.org/schemas/simple-bus.yaml
> arch/arm64/boot/dts/qcom/sc7280-crd-r3.dtb: soc@0 (simple-bus): crypto@7C8000: 'ranges' is a required property
> 	from schema $id: http://devicetree.org/schemas/simple-bus.yaml
> arch/arm64/boot/dts/qcom/qcm6490-shift-otter.dtb: soc@0 (simple-bus): crypto@7C8000: 'ranges' is a required property
> 	from schema $id: http://devicetree.org/schemas/simple-bus.yaml
> arch/arm64/boot/dts/qcom/sc7280-herobrine-villager-r1.dtb: soc@0 (simple-bus): crypto@7C8000: 'ranges' is a required property
> 	from schema $id: http://devicetree.org/schemas/simple-bus.yaml
> arch/arm64/boot/dts/qcom/qcm6490-fairphone-fp5.dtb: soc@0 (simple-bus): crypto@7C8000: 'ranges' is a required property
> 	from schema $id: http://devicetree.org/schemas/simple-bus.yaml
> arch/arm64/boot/dts/qcom/qcs6490-thundercomm-rubikpi3.dtb: soc@0 (simple-bus): crypto@7C8000: 'ranges' is a required property
> 	from schema $id: http://devicetree.org/schemas/simple-bus.yaml
> arch/arm64/boot/dts/qcom/sc7280-herobrine-villager-r1-lte.dtb: soc@0 (simple-bus): crypto@7C8000: 'ranges' is a required property
> 	from schema $id: http://devicetree.org/schemas/simple-bus.yaml
> arch/arm64/boot/dts/qcom/qcs6490-radxa-dragon-q6a.dtb: soc@0 (simple-bus): crypto@7C8000: 'ranges' is a required property
> 	from schema $id: http://devicetree.org/schemas/simple-bus.yaml
> arch/arm64/boot/dts/qcom/sc7280-herobrine-villager-r0.dtb: soc@0 (simple-bus): crypto@7C8000: 'ranges' is a required property
> 	from schema $id: http://devicetree.org/schemas/simple-bus.yaml
> 
The crypto node i added is not a "bus" node but a leaf node for Inline Crypto Engine (ICE). There are no props like "compatible = "simple-bus"" or "#address-cells" and "#size-cells" 
added in the ICE dt which indicates it is bus device so why the tool expects "ranges" prop? Adding "ranges" as a property in ICE node will be wrong since it is not a "bus" device.
> 
> 
> 
> 
Regards
Neeraj

