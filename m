Return-Path: <devicetree+bounces-250288-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 27DACCE81BE
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 21:09:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E791D3014A32
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 20:09:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E39D5261593;
	Mon, 29 Dec 2025 20:09:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WKS8R7U0";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="AMihevzF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FA862494FE
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 20:09:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767038975; cv=none; b=DNH5oTRjFZFTAyaMbpbLZ6pF7edeeD7INeAU8OKxy3PS9hYkDyBCnXflIz2U8aiN9LmGiFjrDoFsDA9J6zy3ZdF4+sKMcd1O+MKY9ru2AzQuR1YRDddqQS1Fw3QPIiWWqXa90/XhsAtdSN+9xhpEvEywhgZtbrwVtwGZSfzIlUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767038975; c=relaxed/simple;
	bh=yhRIb5panPmdiq/RTZpc/8+okJ5tM8TCCMxOoRkoV8w=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=Z4dwEdGom133NV3jb5crg0776IBIDXGh/CBBgHHwXR5K1pDXL5zp7i0oWs/+AJg/pPacgV4rhQgHYGZjZxWwf2VNZwrF34u5ZLMgwa1yQWsZ+1Es/wQDCNOr7xE5oai1NDGJH0bJ0HelpWbbGcpPXfP/WH5y16m0bPW36N4Lfh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WKS8R7U0; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=AMihevzF; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BTId3HR2288651
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 20:09:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	f9tLp6hB3CCjo6tl7cSfSd8cgyhOHRdEAok0lYgrgqk=; b=WKS8R7U0ELykYWeg
	Rk4296f0hNNWP+N8zzag4y6s1ujDPXjrEDOv0QQV08agymcEPJ5xJqpFvkT4JZyx
	CAS9/LVqE7mLe3aV4ta5mOaaYicWhRjJbb3NeObo2a1/jjv3ObcZN1qsWVD/WV7h
	t9+T+nJhoW6QsfaIXqO2cWeQH/N61XHVGYVNCruZRoNDLh6bjc8HBs6BLW8e5bKH
	MRNEyeRzEocpHfH6jvQkCr1PtaVxspAumvsimH034KNgljQGiq9uwSPKDDEOw6yK
	YunUCiY9gmSnAlA2+zRSaKGARZC1usbGioje+NRHKvrkZu2wj5noFmFgis0G67fF
	GGUMuA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ba87bwa4c-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 20:09:33 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4ed83a05863so30990201cf.2
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 12:09:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767038972; x=1767643772; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=f9tLp6hB3CCjo6tl7cSfSd8cgyhOHRdEAok0lYgrgqk=;
        b=AMihevzFkJcgv4n56DO5WeewBeWsERB7j25x34Uebq+oJWrcYN94mFusesdXjlW2/p
         hLPlFFOHjAoPc9/yp0egdp30qlGTNVKkOIOFMtqtwP/K/Kpymv/rT3zoRFbRNCHO19a5
         jKjKmRSUdfvL/rriIfuZbeHLfPZnZN0SF4eJKOSkOxZKFSBRuk3Q6+duRUb6/kFjwq1E
         fDO/MH6h3mD2xpHidFMbywxiPrrYxk4i0irhvhvuRqYXrIKY0afXFlH+6TY5uWlB2AXE
         7Y9MK+Q/stQThCIrqxx/+23fjTGpVxwmeZ8Q60FNhCnpXGOYpwBta1oK/0iYDQsl2ppN
         poYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767038972; x=1767643772;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=f9tLp6hB3CCjo6tl7cSfSd8cgyhOHRdEAok0lYgrgqk=;
        b=q7YCTbVlPX1sN3a3sL730vftGWZLGKb+TKTuR96SRw3ZEP938BrV7Jif25odKVVrA9
         64YXM1eb0jn3B7OBbyBk0Toe3XI/clD379zGe8o+4B2b3GAyadjmRtEiXW0IIDaMyRpU
         pfmlmckQfdOXOEi9/CUSvExH5eijP6vd4rPwwv35gsWqukJQ9bHiO7Wk7J5ukq6pzgea
         hr6eHJncY4qTmQSZIrbGPMJsjowsUPvqcdwD92eUAuNmiAHstJYI7Ez6ZbQLrh28a+MF
         rIKyM1FA85C+wQpVSqZLI8eM1INH0EyT30hWEXG132Z1kwT4xnSJLjrrIAZhZHoMxjyH
         80Xw==
X-Forwarded-Encrypted: i=1; AJvYcCUbAo0+Y5qe3FN60rwPjb1NIMqBccXUhGdiJUcP9m9Ew9onR62B/7yUinhpFZnY0krmk1CgZ8V0Qd8X@vger.kernel.org
X-Gm-Message-State: AOJu0YyFFVLLovh/1P9TDtWpVtXuklXnn0mYkn3hyFo89nHq4PvGAG3Y
	4/RyH0LMIRRlc7TtAOG7WU3yC9n8f5DX12a/Z6G5RnVzJsR3jahJrDsggQtSTelB5ItNQ0S5Tym
	f+HP4DO8/FYLN5uqT2htLXep2Lip3vp4vuFa35ZuNaIIzd4fOcC3xNtcohzrFDmLC
X-Gm-Gg: AY/fxX5+6S+oNxTjGHuIeOYAhlF9UfHp2rGDf03aJa+uFtjLus7W9EGX0sCLJ0MFT5E
	ryT41Puk6JMSRPrcwQmlFnjAgX7s8k5dW8+EqEZNJ6Y8RmMYt7yxmG17ILMhXqz4mY3u7tZgXvC
	dVHTMS4Tel3G/tG7REqivkMtoACnfG8JNP7TRK4nRdviiWTm2dYHUV1RVwRRtxDmLirVk8743E3
	ZWKJy65dRCR0bhuuMteIfBpWtbWd//Nx55qayRLnJjhp5/zwIbhEvoVAl2kmqqAP/QH4IB154Az
	jmroM/2Dga9Q9LwfyThA9K4YcjSJ9hnzILIUKbtLP7A5dJ79TvCCzs22p0taT+fzxEg51Iy/oLI
	H4b4mhRmzZ2g2d/oiHERN5RjgY5/2ZyNgf0VrEkdGT1cSOAs5MBEFiob9rTlJhpb73Q==
X-Received: by 2002:a05:622a:1819:b0:4ee:87e:dedf with SMTP id d75a77b69052e-4f4abdc433cmr358682231cf.8.1767038972446;
        Mon, 29 Dec 2025 12:09:32 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGm0o4PJ1efZdK7cCCaywgTcLp9LChUwOU7faNlTclPAySRBXp99GhA9cWhyaw0KrIm5+FEdA==
X-Received: by 2002:a05:622a:1819:b0:4ee:87e:dedf with SMTP id d75a77b69052e-4f4abdc433cmr358681971cf.8.1767038972051;
        Mon, 29 Dec 2025 12:09:32 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037f0cb27sm3352659966b.51.2025.12.29.12.09.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Dec 2025 12:09:31 -0800 (PST)
Message-ID: <8a64f70b-8034-45e7-86a3-0015cf357132@oss.qualcomm.com>
Date: Mon, 29 Dec 2025 21:09:29 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] dt-bindings: display/msm/gpu: Narrow reg and
 reg-names for Adreno 610.0 and alike
To: Krzysztof Kozlowski <krzk@kernel.org>, rob.clark@oss.qualcomm.com
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>, Konrad Dybcio <konradybcio@kernel.org>,
        Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar
 <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251227110504.36732-3-krzysztof.kozlowski@oss.qualcomm.com>
 <CACSVV03H_oii=fuhaeBhUZSJk-2mr08jGqAs30Z_h9tzeDgdtw@mail.gmail.com>
 <2a35d31a-1a3e-4cd4-ac3a-27104ff12801@kernel.org>
 <CACSVV03FfvZVzuKGfaJrsXmE7VVxEF5zN4-R7h1PXA11jOO3gw@mail.gmail.com>
 <8288af85-13da-46e3-8d89-71995fbd17f8@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <8288af85-13da-46e3-8d89-71995fbd17f8@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: hYaLyeZEntohSZ5QpK3D1g7So9Lz--ry
X-Proofpoint-GUID: hYaLyeZEntohSZ5QpK3D1g7So9Lz--ry
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI5MDE4NCBTYWx0ZWRfX15Y4MwgjJHvh
 3V9o5x+zUpyWNmMa30W6h7hc92e5kixy/fpwN9Z/lwc/tc4ZwotqQhQk/7d4T6pdy+I1Sp3LwyT
 TbrbIpabL6QqjJRVDZryXOoj+zc4r4y9N3g3gmJjTk/HifKaIz8VkL6NwGSbawij2Fl9bMCRJtr
 qh1qB2VDR0LaMzwtLq95A/k4hxmQh3dlIuNmRCtZbk2ewfWTFtvYks72iXLaPRF+LCxlR+aA12a
 tGtQHYWTyfnSKtxiInHK/74ovIKdJjWt4vnXCLKTAnAxfKjbhikyo+X/hIqCxVxOD5DTapmZeon
 IFZ2rGNJwBpK+MQ5jcNuR25+Qy0cX/Bq4sEls0Krkm+/p1i4OhvJZnQVzXj1weIIA7JvaqJwirA
 GuA1YTtaetjs9ZOMLwqLQGV8yZpzmBPvbIPnVLkAR4cfnX9tzPZkjNNmwKq5IaJy1B57F9zL+F5
 hsPd7jbpoPiu2NrbgNA==
X-Authority-Analysis: v=2.4 cv=do7Wylg4 c=1 sm=1 tr=0 ts=6952dffd cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=wQVahuwBDa5KTzDLV_QA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-29_06,2025-12-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 bulkscore=0 clxscore=1015 lowpriorityscore=0
 adultscore=0 spamscore=0 suspectscore=0 phishscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512290184

On 12/29/25 8:23 AM, Krzysztof Kozlowski wrote:
> On 28/12/2025 15:59, Rob Clark wrote:
>> On Sat, Dec 27, 2025 at 11:56 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>>>
>>> On 27/12/2025 23:01, Rob Clark wrote:
>>>> On Sat, Dec 27, 2025 at 3:05 AM Krzysztof Kozlowski
>>>> <krzysztof.kozlowski@oss.qualcomm.com> wrote:
>>>>>
>>>>> DTS files for qcom,adreno-610.0 and qcom,adreno-07000200 contain only one
>>>>> "reg" entry, not two, and the binding defines the second entry in
>>>>> "reg-names" differently than top-level part, so just simplify it and
>>>>> narrow to only one entry.
>>>>
>>>> I'll defer to Akhil about whether this is actually needed (vs just
>>>> incomplete gpu devcoredump support for certain GPUs).  In general
>>>> cx_dbgc is needed to capture state for gpu devcoredump state
>>>> snapshots, but not directly used in normal operations.  It seems
>>>> similar to the situation with mapping gpucc as part of gmu, ie. not
>>>> something the CPU normally deals with directly, but necessary to
>>>> capture crash state.
>>>
>>> I don't get why binding was added with cx_dbgc, but DTS not. Neither
>>> binding nor DTS depends on actual usage, so I assume someone
>>> intentionally did not want DTS to contain cx_dbgc and binding should
>>> follow. Otherwise we should make the DTS complete and make the binding
>>> strict (leading to warnings if DTS is not updated).
>>
>> I'm not sure about the history.. but I can say that cx_dbgc is only
>> used for gpu state snapshot / devcoredump.  So it would be easy to not
>> notice if it were missing.
>>
>> We have a similar slightly ugly thing where gpucc is included in the
>> gmu map.. only for devcoredump.  Maybe we need a different way to
>> handle these things that are only mapped for state capture?
> 
> No. Either hardware has it or not. If hardware has it, then both DTS and
> binding should have it. If people decided that DTS should not have it
> (for whatever reason), then apparently that's the desired hardware
> description and let's remove it from the binding to match the ABI.

I don't recall why it was never added. It's

<0x0 0x05961000 0x0 0x800>

for both 6115 and 2290 though. I'll send a patch to fix that up.
It seems like (at a glance) that there shouldn't be much of an issue
with the crashdumper, but I'm not super sure either..

Konrad

