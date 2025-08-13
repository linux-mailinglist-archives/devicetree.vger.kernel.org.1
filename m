Return-Path: <devicetree+bounces-204166-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 16488B24476
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 10:37:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E32FF1A24B5E
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 08:35:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 804DC2D8377;
	Wed, 13 Aug 2025 08:34:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="b5Y7GJw9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E84DC2D781B
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 08:34:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755074099; cv=none; b=eATiZ7JPuqHtssjKTFizo6ET47YT5n5oCFqcuFOqUH78XwJx6Ser2o9SOtBm+JtX28zvlcUCzUDHZphx/NPxozjh6pFaSNxLd66NtSvJueoU5Rqsat3imn5Th5iTRJiIqdAjWuNYnMqN/XPSw0hNyHHaWjjEKw462TRlAFgq4I4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755074099; c=relaxed/simple;
	bh=BJsNPLCsMWCuoh56cczBIajDM67zaMKaTgolfgD8pys=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=BXhcmtuwpSBMkjW8vTq+kzvr/cCI8ggt5Ff7CSHWwReTckCgi/0COeU3nE4nWwAHQt17Y5mnyP7J3eFI2IVX9DbGUO0HeI58dakFIt3HdlUivPsmMTHLw8jljqCYS/3aVhfiB45+xc+W3jvLoxMsx4VBad1cYkKadrrcHAzKEA0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=b5Y7GJw9; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57D6mR6l020675
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 08:34:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7vD8uV2t75HZFSBKmavWfIArKi9bpVPP6he9Z/LG/mE=; b=b5Y7GJw9bBvoxizg
	4OLMKKLNwyX0N09rL4bO1YeSgL4Jhodi6Mn9Ewoqq+a6HcoNYS61BX0Py6L3CBKV
	CRI+SbhQRkrIh6EJTJUpbEssUdxUieiGjLnhNF7KKK163KXggMtqM12pomJ7YRfK
	2dZnvqdRAVbAoiiIxq2COln0WlUoNma4CxxkEqERtY9uEVaK3PqVo+HPQc78XrSK
	jduWJfHWPt1+6vOEHYPvMazpANRjtCh9vrfOWrM1VQ1P6BDgFSPUP7Qjuz3GFGwl
	4EMZ2UqhBGDuKBvhGw/HOb7mZOcTY8Wy/wfPOmwbFxKO4h8sO8XzdhIuB5niaIA8
	k1FWnw==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48eqhx9830-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 08:34:56 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b31f112c90aso571420a12.0
        for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 01:34:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755074095; x=1755678895;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7vD8uV2t75HZFSBKmavWfIArKi9bpVPP6he9Z/LG/mE=;
        b=B810qQS4Mu8pcr2oIBpurSPfj7wLFl+OoS0EYwThhwZ+l5bIXi7814jbl/j8e4A64t
         dcc2m1qsqFh26bwlhFHuc4gd2WR9omtvgCcMURtevtLFBxvLnfkBEtn9QsUaK+uEZkSY
         aZ+GSH6vkbuEA7qA+HNAO/2eTXQ6LgoF5O1h8hcTym3B5f87J6Oyy/5xBePPvN74+QNx
         Crds5EM2AAz0lr+QYYmcx+ZqlOoOEnzyaToUozRAerHtZSYLf4+7hSy2XDE9KpW6X6pO
         lO0FREDHa8zbtCQhgG93YafDKt5lcbv4bGfWkwXwJ5OzsBjxja3chnzu6dzgdGbHL3R6
         WP6w==
X-Forwarded-Encrypted: i=1; AJvYcCXUtQ0oKh/c66HzCtTHQFuzmkEoMG4k+iTAquGBW8eZ5DZ9eUUp8iizO9ZscPD4pScTHYFWCwzJk5qy@vger.kernel.org
X-Gm-Message-State: AOJu0YxDVmuWgMjiMTjys0eY9+SFfbPDwAiJJWdqrRvaebSmtGZPU/Pt
	USjjztvTbP/uaNTeuVsyKnJo2X/TLnLjWZNn7zRG9bqGA8fHjRRibO/pEEi0rMb5+L+HAR5G5j/
	/bPGwCwcO2PdBORA1UfhSbyrnLao+QshyuFQu7bYV8XE5tXwgJMCUK7jFMtcl2fYH9w0NiXvF
X-Gm-Gg: ASbGncsXgAg1XmeP/P/zcyy+dEORhUBVDZQK9xa3vdURy+nUb7ogPMZF4+68hWfIcEg
	41WlkArvjLXiAE0Ee6QUf6+WPr/TGV+vjM5tjH5OUqp4OMC9tX0vNfyGAWpqfqnJIHwp7ryUVNT
	xbp0DndxcWc3FQTuGH3xm/34xuTNtuT2ezwF8fSpqTWVzgvpN9kYKK7PHVqZ6g3HzkIenRsTacN
	diNvcWmpIqGuhxnASfxplBdO9b77prPzf6EQjHiHgIxng3K5+LeBSAwZWTY2FaCwQCEsRCbYnUd
	dxycwWat7caSLEL9QT5OaSVDCZTYfD9Sb2vqtz8123Glt5AhuNcaEcrUAYjVkC+BmjuaW8w=
X-Received: by 2002:a17:902:db02:b0:240:9d6:4554 with SMTP id d9443c01a7336-2430eae02b8mr23183945ad.21.1755074095407;
        Wed, 13 Aug 2025 01:34:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFtwP6EhgGczqdw69+FCzTPeDqzNTzM6qfuthNnA+SimcTyI9+YyBr8qv6iPBl/3QLmyphKiA==
X-Received: by 2002:a17:902:db02:b0:240:9d6:4554 with SMTP id d9443c01a7336-2430eae02b8mr23183465ad.21.1755074094530;
        Wed, 13 Aug 2025 01:34:54 -0700 (PDT)
Received: from [10.92.180.108] ([202.46.23.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-241d1f0f7ccsm318630375ad.57.2025.08.13.01.34.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 13 Aug 2025 01:34:54 -0700 (PDT)
Message-ID: <fa3c54d3-aa8b-4991-8709-89a8bf9eead1@oss.qualcomm.com>
Date: Wed, 13 Aug 2025 14:04:46 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 2/2] arm64: dts: qcom: sm8450: Flatten usb controller
 node
To: Krzysztof Kozlowski <krzk@kernel.org>
Cc: linux-kernel@vger.kernel.org, neil.armstrong@linaro.org,
        devicetree@vger.kernel.org, Konrad Dybcio <konradybcio@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
References: <20250715052739.3831549-1-krishna.kurapati@oss.qualcomm.com>
 <20250715052739.3831549-3-krishna.kurapati@oss.qualcomm.com>
 <f9219b68-35a6-456d-911e-c4e8590d69ea@kernel.org>
Content-Language: en-US
From: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
In-Reply-To: <f9219b68-35a6-456d-911e-c4e8590d69ea@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODEwMDA1NyBTYWx0ZWRfX6dBGV8xAEFEs
 CzsGpo5aAa/Nb+RRAv6+pdXguPh2c7eAy7u9sZa6EtNhcq6hVPwIa5gZPeBQkJtlghgrvOQO3xJ
 ZiqtTC3cCQz60gylQOBdF0b1nY4gOOlAG7nH4UhxGD5MYt5NGJ43XQFUXtEio3ueA01gbaBaVbj
 JrJ0lJSD2fWPMP8ZnwH5KQlM3klw7j7/8gIcQyCtGYM4DDPR4BIVROWd1xPEvWhZdJtWZUJ+VzJ
 PWhysRnI8SEEnQNoyBVnjPUEyIBiwFsUwlqY/26gVkpd7n7y6qwhpfFfl7h2DdZVvjB7zg60U+2
 IpdDghK/rC/RogZ5DFlznb/accN6COL8ye/K3011+z7FZFf03YuvCWJ5citgGZaP89Yt67ecSJD
 XibqLj50
X-Proofpoint-GUID: cjRfzVAePB75NG7jLlpbRpuD0l0M6DS6
X-Authority-Analysis: v=2.4 cv=aYNhnQot c=1 sm=1 tr=0 ts=689c4e30 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=j4ogTh8yFefVWWEFDRgCtg==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=vr-wfZUyanrvw1r9NhMA:9
 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-ORIG-GUID: cjRfzVAePB75NG7jLlpbRpuD0l0M6DS6
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-12_08,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 priorityscore=1501 suspectscore=0 phishscore=0
 impostorscore=0 bulkscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508100057



On 8/13/2025 12:57 PM, Krzysztof Kozlowski wrote:
> On 15/07/2025 07:27, Krishna Kurapati wrote:
>> Flatten usb controller node and update to using latest bindings
>> and flattened driver approach.
>>
>> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
>> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
>> ---
>>   arch/arm64/boot/dts/qcom/sm8450-hdk.dts       |  5 --
>>   .../dts/qcom/sm8450-sony-xperia-nagara.dtsi   |  5 +-
>>   arch/arm64/boot/dts/qcom/sm8450.dtsi          | 57 +++++++++----------
>>   3 files changed, 27 insertions(+), 40 deletions(-)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/sm8450-hdk.dts b/arch/arm64/boot/dts/qcom/sm8450-hdk.dts
>> index 2ff40a120aad..0c6aa7ddf432 100644
>> --- a/arch/arm64/boot/dts/qcom/sm8450-hdk.dts
>> +++ b/arch/arm64/boot/dts/qcom/sm8450-hdk.dts
>> @@ -1199,11 +1199,6 @@ &usb_1 {
>>   	status = "okay";
>>   };
>>   
>> -&usb_1_dwc3 {
>> -	dr_mode = "otg";
>> -	usb-role-switch;
>> -};
>> -
>>   &usb_1_dwc3_hs {
>>   	remote-endpoint = <&pmic_glink_hs_in>;
>>   };
>> diff --git a/arch/arm64/boot/dts/qcom/sm8450-sony-xperia-nagara.dtsi b/arch/arm64/boot/dts/qcom/sm8450-sony-xperia-nagara.dtsi
>> index cc1335a07a35..6bd315e10992 100644
>> --- a/arch/arm64/boot/dts/qcom/sm8450-sony-xperia-nagara.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/sm8450-sony-xperia-nagara.dtsi
>> @@ -781,11 +781,8 @@ &uart7 {
>>   };
>>   
>>   &usb_1 {
>> -	status = "okay";
>> -};
>> -
>> -&usb_1_dwc3 {
>>   	dr_mode = "peripheral";
>> +	status = "okay";
>>   };
>>   
>>   &usb_1_hsphy {
>> diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
>> index 54c6d0fdb2af..89dbac3bdd2b 100644
>> --- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
>> +++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
>> @@ -5417,12 +5417,9 @@ opp-202000000 {
>>   		};
>>   
>>   		usb_1: usb@a6f8800 {
>> -			compatible = "qcom,sm8450-dwc3", "qcom,dwc3";
>> -			reg = <0 0x0a6f8800 0 0x400>;
>> +			compatible = "qcom,sm8450-dwc3", "qcom,snps-dwc3";
>> +			reg = <0 0x0a600000 0 0xfc100>;
> 
> 
> So this was never checked. Can you start using tools before you send
> code upstream?
> 
> 

Hi Krzysztof,

  Apologies. I didn't compile it with W=1 previously. When I did after 
the kernel test robot complained, I saw the issue.

  Also I rebased it on top of latest linux next where I see the 
flattened patch is present.

Regards,
Krishna,

