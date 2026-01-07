Return-Path: <devicetree+bounces-252290-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E3348CFD2C8
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 11:30:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5B2D43011EE5
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 10:30:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BC0532572C;
	Wed,  7 Jan 2026 10:30:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gBlOykeV";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="axkp+V/+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E2E5923EA95
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 10:30:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767781813; cv=none; b=ghLMkTXqgENSP7LqEVApB7rpRTkOHekJjlFBwEGAJ+LlnYrdRkfuzFwO9Beujql55qMEsSce7uZyPv8cZF6m2gba+CDHbbuQQ0OoStFB8N7ByiZsM8UHcyafINYzknwYzNx/2kqZNewhdAwZ88UFD/y1BPcDKyXnr+u206Nt2J4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767781813; c=relaxed/simple;
	bh=SM875Nr+BEqPsbt2JS1PV3BL+H7QTt3TmRz/kLFFaGo=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=YznXN4Uo30owYNxvplLmrVSXZWnyJVnbKx2rdMf43NTuaJvUaZ3tugZECES9B9yR16dxUbalzjCF1tUT8HP1n2XPi3c/GKcFLj0AXne9+7/HMMYIxZ1ueqPNAiHUD5H+D2HyQQRQ3jbe/JYZwkHsTM5/+p7B3NAsk+iPY/xUMnk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gBlOykeV; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=axkp+V/+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6078e26Q2578203
	for <devicetree@vger.kernel.org>; Wed, 7 Jan 2026 10:30:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	5eZoqXuEx+wpj+Jjesmzm9AHfwsCA1raBMhPGpTi0Y8=; b=gBlOykeVsnit6X0b
	URmPRJX+TgMih5guFtijtD4JvYgVRJa6FVmkzuvKqsCvJvGzzzbGqGl9cHHKvpic
	tNZ4phLhQqghxE/mqkCuHqhTP2L7RozW1BhUyfBxFtIlCH3ZlixE631hCKXBi6Uq
	FKtOJCRbPEje/nnkZ4gmhPxbjKt2sYxOde/dSWtNL1clg8BMACT9C1rtUuseg486
	tq8vh03XMq43cimcV3U3SZpfStiyTfrTIwVkOn/EAfc67577VpDbTTWHz+5oO/2o
	e2U/kSduHZZbsq+mMiB+L/TCz0ncyB/jsK+AJ8/Gbr5FUpkphHeowSeUJYYiLVr9
	zIdv1Q==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bhm658c09-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 10:30:10 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b25c5dc2c3so38900185a.3
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 02:30:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767781810; x=1768386610; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5eZoqXuEx+wpj+Jjesmzm9AHfwsCA1raBMhPGpTi0Y8=;
        b=axkp+V/+U7ZoPm1YU5I5beMlFluQxbe9ZsY6CYluJetT7XAS8Pwz+6NGmW6qrU+izk
         WmEpJsfdxBfq8R6ptpzR8R8YSjjVJuNwHOU8eanND7wpiYtZVyKtWq93kvsGj6mIdnTq
         D+MNodJ99g6HA0IhLnRANCTTMRXBsm+uPl6KKm3AKFSTdl5cX7wBkR2vguEFGq6mwrBp
         1lDoQo4sx5WeVWlEvJ/vTHjzf2DH0tlXoReBvWEbRZePGx1yPmcli1aS5VBq8dyxg2VD
         tm1gpmdOV1onfubXbJJyvIkeZH9WX75ausT/RTqZvxEvNyZlI+rj3iPe7luZxbJfSKG2
         oYcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767781810; x=1768386610;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5eZoqXuEx+wpj+Jjesmzm9AHfwsCA1raBMhPGpTi0Y8=;
        b=Am/EQmpA3IBZCGWtqJf4WGAxf/vLBMCwpkAfCgSYpMAOjHaDPB4J0TS7PTS3s+ToyM
         P6J+vdrsbkUdlppxDDhsz5gSMKC0Hhf5eaMGTBY+HsbYsVC/5zkaG/qzNtdGnsUM5Th+
         BEm99relIMuzTgoRKSKRv81dysfSNjOcfpy3lh6DFp9W8+oBZE7XjcLboS31xc2zA1Dv
         EF1j1AEA6zIsbvDJeqksdq7xXLCnk8OyBmP4KvNAYUZaCybEUezaOOykcAmA1Rt78MgP
         P27hiVPfHGjfFHe0yNNBn2Iya7ePTsga9jjvTPcxZ1DDRlQe9TrmVnI/WbIdc6v+8fNN
         zeYA==
X-Forwarded-Encrypted: i=1; AJvYcCVOa3nPHHg4azNK9yPBCUAZkhzzZ0h0LfqySvgQdTFFLaia2FaEyO98kVG58/xJmCcKF5i38SuML+Vt@vger.kernel.org
X-Gm-Message-State: AOJu0YzqZaOzgjuHveZZ12KjyrdfdPLRq17/8v6pePLEjHuZESpFNQDs
	nqcXPPPp/0hI/5LO6HsPEDRMee7SV4/8Gh4noyyBH6rchsHh9k0rGHFPoxQ1jJa+wNQ93i1FTO6
	5WDTsvAfdD/IDuOR0GGwGNVWqcNKUIC3hf26FFVd4/6nQ3WRUy6j/M8lhulNpXXl1
X-Gm-Gg: AY/fxX7kkfo75WHCPeXIDMX+hW9ClQJZ2EThj/zQnw+1QEUZGjHUc90oVzH3LquyZyu
	BnDh+5SdUstAxzzH2rxEEnvb2HBzN5ciOQ+Fiu4uNO1RaJxxoCe3bUcp/UPnoqtytzplkgSdEMa
	POxUmmSspbYYRB+tFphem29s9GfNDXx0RrOPzquXsFlX7yLr35cwCmf5/LlB06GKES6EunS1mCh
	/WfslPnq7ZOnQ8jjdE8dxRebBcTetcj/3tbJPx3/qByvJFH1jbV1L0dwxZbAunkJFU5b9MAsWUz
	P+fZLkEDDqQYqrSwukMkLEq58xTgydV5fZl7j//u3Oiv9tY3zt7PeYg3p9HUsUa1VgIjswpS/RX
	JWjrq38sGgBUjuCUHQOCk57UO5H70WyT/5IvzVTOFwQMm//0rBBkDTVY6cYLuSmYm6b8=
X-Received: by 2002:a05:622a:211:b0:4ee:1367:8836 with SMTP id d75a77b69052e-4ffb48b6d14mr23047521cf.5.1767781809992;
        Wed, 07 Jan 2026 02:30:09 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFUrIPLiovyjV3wNkl0Gr0hSK7w31yFwiOQATXrQQSR9ZklE3a9droobikS8YaV/sBkBGm24A==
X-Received: by 2002:a05:622a:211:b0:4ee:1367:8836 with SMTP id d75a77b69052e-4ffb48b6d14mr23047121cf.5.1767781809223;
        Wed, 07 Jan 2026 02:30:09 -0800 (PST)
Received: from [192.168.119.254] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6507be655aesm4330978a12.17.2026.01.07.02.30.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jan 2026 02:30:08 -0800 (PST)
Message-ID: <0d6f8f95-01be-4fa3-9fde-bc00cbb894f6@oss.qualcomm.com>
Date: Wed, 7 Jan 2026 11:30:04 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] pinctrl: qcom: glymur: Add Mahua TLMM support
To: Manivannan Sadhasivam <manivannan.sadhasivam@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>
Cc: Gopikrishna Garmidi <gopikrishna.garmidi@oss.qualcomm.com>,
        Linus Walleij <linusw@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Rajendra Nayak <rajendra.nayak@oss.qualcomm.com>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>,
        Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260102-pinctrl-qcom-mahua-tlmm-v1-0-0edd71af08b2@oss.qualcomm.com>
 <20260102-pinctrl-qcom-mahua-tlmm-v1-2-0edd71af08b2@oss.qualcomm.com>
 <91d2e5f7-7d93-4909-9ed2-6b19abf0b448@oss.qualcomm.com>
 <dayj662qu7tb3l2fuq4sfdxunvkk2rt777vm7dfvdazbwiwpzn@mysrwdbdptqt>
 <adlhkus5gvum6fkd7bxjohwlsiumw7w6w4c36vzphjz7my2644@pmobztmgpdvx>
 <zaf4uoms75wc7yvmrmqs53couefqsv5oie2hbiwvhitqonbs4u@aq6bcvf4nq3o>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <zaf4uoms75wc7yvmrmqs53couefqsv5oie2hbiwvhitqonbs4u@aq6bcvf4nq3o>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=XpL3+FF9 c=1 sm=1 tr=0 ts=695e35b2 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=GKTbh6UPsD-Qk4FR_nEA:9
 a=QEXdDO2ut3YA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-ORIG-GUID: Qwik5jKVAZ0EMPTZWMw-YthjsM3j1bz5
X-Proofpoint-GUID: Qwik5jKVAZ0EMPTZWMw-YthjsM3j1bz5
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA3MDA4NSBTYWx0ZWRfX5u/R+n7ZRPCp
 ZrbAAZl7M/Rc8nHwnGeBJ/nkneQRgc7ijh/W2Gb3+Dz7ppEHWRlRs1sO2GQnHn++62HgjgrX/T6
 Y3SfNDFGLZt0267OKAiekR9QTlzwSBI3QTSkaFFXi7pGvgeptsiW7w6pYrG4u3cdd7DqtnPKaum
 j3FkjdvXDhglKhvOBVe5e7yxbiB2+3Ns83xsIL9Ew8uVR6ePRmp8REpRbXh+SyAbwJ7JB9qeLi8
 4sy1B44iHd/zpPoSkPVdKZkjVnvEy5Er9HHkmANXz01yMCnNHKMMVOkCKmPJxd0CJyf5i9v1+Ub
 fMIN6v4UB750rpo+7kAPv70lB69SLvhUtRrHJSVpHTsbYuD4tKjEN4ux+8kMFY3DWE2e76LI4aC
 Ch9OMCDoMzp3psO+haJ4FCfN6nAIYYsQqqD8tolhDT+ujtPEc0wcbz8RCouMxnsejhTA9Ldrfm4
 6fhwISZ5FeTcv/BQ0kA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-07_01,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 clxscore=1015 suspectscore=0 priorityscore=1501
 adultscore=0 spamscore=0 impostorscore=0 lowpriorityscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601070085

On 1/5/26 6:20 PM, Manivannan Sadhasivam wrote:
> On Mon, Jan 05, 2026 at 09:31:03AM -0600, Bjorn Andersson wrote:
>> On Mon, Jan 05, 2026 at 11:04:44AM +0530, Manivannan Sadhasivam wrote:
>>> On Fri, Jan 02, 2026 at 01:40:22PM +0100, Konrad Dybcio wrote:
>>>> On 1/2/26 12:07 PM, Gopikrishna Garmidi wrote:
>>>>> Introduce support for the Mahua TLMM (Top Level Mode Multiplexer)
>>>>> in the pinctrl-glymur driver. Mahua shares the same pin configuration
>>>>> as Glymur but requires a different PDC wake IRQ mapping.
>>>>>
>>>>> Changes include:
>>>>> - Add mahua_pdc_map[] with Mahua-specific GPIO to PDC IRQ mappings
>>>>> - Define mahua_tlmm msm_pinctrl_soc_data structure
>>>>> - Update device match table to include "qcom,mahua-tlmm" compatible
>>>>> - Modify probe function to use of_device_get_match_data() for dynamic
>>>>>   SoC-specific data selection
>>>>>
>>>>> Signed-off-by: Gopikrishna Garmidi <gopikrishna.garmidi@oss.qualcomm.com>
>>>>> ---
>>>>>  drivers/pinctrl/qcom/pinctrl-glymur.c | 43 ++++++++++++++++++++++++++++++++---
>>>>>  1 file changed, 40 insertions(+), 3 deletions(-)
>>>>>
>>>>> diff --git a/drivers/pinctrl/qcom/pinctrl-glymur.c b/drivers/pinctrl/qcom/pinctrl-glymur.c
>>>>> index 335005084b6b..bf56a064d09c 100644
>>>>> --- a/drivers/pinctrl/qcom/pinctrl-glymur.c
>>>>> +++ b/drivers/pinctrl/qcom/pinctrl-glymur.c
>>>>> @@ -1729,6 +1729,25 @@ static const struct msm_gpio_wakeirq_map glymur_pdc_map[] = {
>>>>>  	{ 232, 206 }, { 234, 172 }, { 235, 173 }, { 242, 158 }, { 244, 156 },
>>>>>  };
>>>>>  
>>>>> +static const struct msm_gpio_wakeirq_map mahua_pdc_map[] = {
>>>>> +	{ 0, 116 },   { 2, 114 },   { 3, 115 },	  { 4, 175 },	{ 5, 176 },
>>>>> +	{ 7, 111 },   { 11, 129 },  { 13, 130 },  { 15, 112 },	{ 19, 113 },
>>>>> +	{ 23, 187 },  { 27, 188 },  { 28, 121 },  { 29, 122 },	{ 30, 136 },
>>>>> +	{ 31, 203 },  { 32, 189 },  { 34, 174 },  { 35, 190 },	{ 36, 191 },
>>>>> +	{ 39, 124 },  { 43, 192 },  { 47, 193 },  { 51, 123 },	{ 53, 133 },
>>>>> +	{ 55, 125 },  { 59, 131 },  { 64, 134 },  { 65, 150 },	{ 66, 186 },
>>>>> +	{ 67, 132 },  { 68, 195 },  { 71, 135 },  { 75, 196 },	{ 79, 197 },
>>>>> +	{ 83, 198 },  { 84, 181 },  { 85, 199 },  { 87, 200 },	{ 91, 201 },
>>>>> +	{ 92, 182 },  { 93, 183 },  { 94, 184 },  { 95, 185 },	{ 98, 202 },
>>>>> +	{ 105, 157 }, { 113, 128 }, { 121, 117 }, { 123, 118 }, { 125, 119 },
>>>>> +	{ 129, 120 }, { 131, 126 }, { 132, 160 }, { 133, 194 }, { 134, 127 },
>>>>> +	{ 141, 137 }, { 144, 138 }, { 145, 139 }, { 147, 140 }, { 148, 141 },
>>>>> +	{ 150, 146 }, { 151, 147 }, { 153, 148 }, { 154, 144 }, { 155, 159 },
>>>>> +	{ 156, 149 }, { 157, 151 }, { 163, 142 }, { 172, 143 }, { 181, 145 },
>>>>> +	{ 193, 161 }, { 196, 152 }, { 203, 177 }, { 208, 178 }, { 215, 162 },
>>>>> +	{ 217, 153 }, { 220, 154 }, { 221, 155 }, { 228, 179 }, { 230, 180 },
>>>>> +	{ 232, 206 }, { 234, 172 }, { 235, 173 }, { 242, 158 }, { 244, 156 },
>>>>
>>>> Over the "common" base, Glymur has GPIO143 (PCIE3a_RST) and Mahua has GPIO155
>>>> (PCIE3b_RST). Both SoCs GPIO maps seem to contain both, but Mahua has a _unused
>>>> suffix for the missing 143, which makes sense given the bus isn't bifurcated
>>>> there.
>>>>
>>>> The _RST (PERST#) pin is driven by the SoC so I don't think it's useful to
>>>> have it as a wakeup source, unless someone decides to connect something that's
>>>> not PCIe to it (+Mani)
>>>>
>>>
>>> PERST# by definition is an optional reset line, but on most of the *recent*
>>> designs, OEMs always connect it to PERST# line. So practically, I don't think it
>>> make sense to mark this GPIO as a wakeup source.
>>>
>>
>> This assumes that all the OEMs uses the particular PCI instance. If they
>> choose to route this GPIO to some other use case, they would have to
>> figure out that we omitted one entry in this table and patch it with
>> the appropriate data in order to have their GPIO wakeup capable.
>>
>> Wouldn't it be better to put the correct information in this table at
>> this time? If we have a concrete reason not to, I think we should
>> include something useful in the commit message to help the poor engineer
>> faced with this task...
>>
> 
> There is no concrete reason actually. I just mentioned that in practical
> usecase, I never saw an OEM routing the PERST# signal to other wakeup capable
> functionality. But the possibility still exists, so I'm not completely against
> it.

I'm curious whether we can just describe the union of these sets as a
common config, because as I've mentioned, IPCat says both of these platforms
seem to have these interrupts wired up

Konrad

