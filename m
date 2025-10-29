Return-Path: <devicetree+bounces-232615-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 69B0AC19718
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 10:44:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 66F0F4221D8
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 09:39:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1A9A932A3E1;
	Wed, 29 Oct 2025 09:36:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SOXIJ5X7";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="IFIuuh/w"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 823C5329C5E
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 09:36:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761730612; cv=none; b=Q2nitr4kHKI7aSlSW0+0tmPovorPLwyPNwxH/+IL/WYuqlrF9dB1MMiRc0WeFRx8S7IOG6ALN1M2EtozA0olnJ978Bx6rfdv4UBUNzSDAuFbosLLwQaojyx/gSjbMYLuIHQVgu/ODP1V5Vgz0Fmezf0deAHXx1OxAkc+N/bp0Oo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761730612; c=relaxed/simple;
	bh=mUVFVXyWIuUdZYclv/LiD9nnidNGrwpodmI4ocApS6c=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=qKyPoJyOwZxck/wpInYVJgfJMffyrQFErD/WbdTlavfxBR4hJaaeVS5D/YhJadWlyg3OluCxo6Vik0b+oHLPWjYqJFYNFKKph3upvaQXuIlEhoqNn3omp+36va7+VJGCuz4SPUN0P42oZqcKTrTMMvsd8oxiVdvhIabOhp+MMBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SOXIJ5X7; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=IFIuuh/w; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59T4uqGE3642836
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 09:36:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZX+z0zuBmZ1IF/kipaR4w1lPQN0bglI+X/qgX7JeaWQ=; b=SOXIJ5X7NyS/x87f
	PCygJAZQV6pkM1a8VGccHJAhdgp1in90HTaJRBWqEjzQhVW+9TGIf/dr8ZqW9AHs
	NAdE9bkucW9GwfYl78PjR4oLHz3DtK4GaiRXwZJwtl5VyEFJnaUlCdxO7SDGXLLK
	B562o2Z7YIIAF2K7bQQTBf1Xnho3iXJChdZ3Xmlni0yyWK6ZqNEU2q/2+EAxzjmF
	5GI/r/xZXeb+LWgfBtgxSaggeWxNc5mZwcoGH8p7aixiuUoNDq3ROqEBPigWAifm
	pXs30nEKYoPnNq+bi2wkinBmZxutW4De8LPfD2c+mOMsW2JqjayOS22Q6OZkC5Cs
	bg2U+Q==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a34a1j1ns-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 09:36:49 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4e890deecf6so10800271cf.0
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 02:36:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761730609; x=1762335409; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=ZX+z0zuBmZ1IF/kipaR4w1lPQN0bglI+X/qgX7JeaWQ=;
        b=IFIuuh/wh0MLjc3u4WqzR/DnAXWmVQsGXILjvzakprgParaRMu1BYbRYXMEENRQQXl
         MWwzzTESHWgOMsoLjnZtB/FQjmUEdBRuiu2lwHCSVwnkPF8Chlf5pItfSCsoHdHrAZPi
         tFeDmecRX2o9jXIxbi38XaACjCUyZWmuM6Kue7e8t3nTMY/jkoqcfZjU9l6yo3ozO3bC
         p7A4csU0A6XqESEVHSDcNjcRr2HOAfB1XYyYTask2MAxB6bBFhg3W3ssYxgtvo0DMAby
         D8Kg2kxiuc2wMi0Q8rhBHuM+MHwIMCjkbpxW1KiJfdCTKtOFR7NiPdLhQMRB0NYYHfgb
         R5bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761730609; x=1762335409;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZX+z0zuBmZ1IF/kipaR4w1lPQN0bglI+X/qgX7JeaWQ=;
        b=imaIX67fGMKyYu4p+aogoFeSNnzQNM8X6pNw/mbyq648uRXLTzOpXTaKMjTA3c0K2Z
         NE0wgPh7E0P6rQqYCSbajuMaetq+brBes/3Fk5GAQsSqh26SUEYci0xgsPU9S2qhPSRA
         62VUgJzVuh9Vxis/mEy2IFWjQUy684utcbFxEuFv+tlmj8BBZRYOMdyXtKOdb16AZYih
         Oyv1wyT0YKjXoKU7NkXcIi3Uop7X6tjlU4hDpXpHYq+khaemXFN3OpneogLw0OpXKuZf
         chPoUBtbUD7MqJsrMe29ATumk4GRIdF83H2GTNgHAFiGwkEcl4G5fV/x4YLR8Ybp2aCA
         JUDg==
X-Forwarded-Encrypted: i=1; AJvYcCX8flZTJfoY03NXhE7SFCL6f+r9xkjSZKhM3JO3goDY87g30FBDofXwUdAXwSm8+OfukYI3DFAvtp7Y@vger.kernel.org
X-Gm-Message-State: AOJu0YyS3jQu+UniNJ8tFf8dzG2PSmazaXhxPN1s1SUp70dzmn6rHbJa
	2AtD19Hg/cTVuScIMkesU3H/A1Hf/lhr5sDa03sMfxQk1oPAdUomTAVkJUnOnSn+Iv2Qx1ZhAug
	PsIhb6Ajdo3t3EaayeNPZmP82J5y/xxaOAHBoCgrnxrES61wj3QO/TPNWZQwE8pIt
X-Gm-Gg: ASbGncvc0lcyCZAmdguLBF9T/1/Bo0B6UfA01iGmnqmCI1CxWp7YNhGy7kzj6tibVxf
	8Y2EAAp18WkHARzeJzJrNmk+Evhh8NvjeLrEsu/KnSFPE7pkchjLSamoXnkCSTJ5z1XHYBULBjS
	GdzX/wNgq5J0GTnh0MGewqGxBOAsE29haHPXe1w5JN1THZlh07+S82KPeaCq3oVA6tjxCSL9uDQ
	MXdlif/uz3BSxurOVZd2tdLTVT5gMTelIAe15e0Qkm6jkfB6iiLhtO+hg0zHMO56hmylHiCmDQe
	XNU+q6VADcSnub5JV+wrsL5igrNXBoRukVyc8n1hOMx74y9zHFpWIixRLhN1Eq8Ia/tGjd0yO+0
	BEhraG0nwO0I1V9HvbFvL1eNz3D2XgxmMWsmlRdbKJdo2/gaGKtFZzspD
X-Received: by 2002:ac8:7fc8:0:b0:4e8:9ed2:78fa with SMTP id d75a77b69052e-4ed15b7550amr17762831cf.1.1761730608711;
        Wed, 29 Oct 2025 02:36:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEiuuYOYZ78vOwZJBF8pnhsLeaffastPxwg51v90izy5tvj931KhAwTG4MlABhwJ5UScWforA==
X-Received: by 2002:ac8:7fc8:0:b0:4e8:9ed2:78fa with SMTP id d75a77b69052e-4ed15b7550amr17762601cf.1.1761730608194;
        Wed, 29 Oct 2025 02:36:48 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d8530905dsm1366152566b.6.2025.10.29.02.36.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Oct 2025 02:36:47 -0700 (PDT)
Message-ID: <289d000a-b142-46cf-ad15-07ab8ed377c9@oss.qualcomm.com>
Date: Wed, 29 Oct 2025 10:36:45 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 0/7] arm64: dts: qcom: cleanup GPU's zap-shader node
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251028-dt-zap-shader-v1-0-7eccb823b986@oss.qualcomm.com>
 <c83079bd-ebd2-49fc-ab62-1fba08276cc4@oss.qualcomm.com>
 <51f10d4e-3962-4c20-9d5f-afd0ac3f598e@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <51f10d4e-3962-4c20-9d5f-afd0ac3f598e@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=dbiNHHXe c=1 sm=1 tr=0 ts=6901e031 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=AlufK8GOJj28j8g1HjIA:9 a=QEXdDO2ut3YA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-ORIG-GUID: -Fv4GOSPpFwf4OeJnAXjJEiZ3fKObPaz
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI5MDA3MSBTYWx0ZWRfX9xaBRfQDFFaE
 ynSglCMZB25np1GBfviumAQxbXU3DimboB7tOJB7Met0Ay3TQ4DsjerydH6CcDDIZof29VacXLD
 NC1neJQDuuuaUk8VNCVu3GrTnlTdwBYHaN0ujFqGuf6MCAfRYZ0cv6om/o6i+iPpKjvntik4xGd
 RSkGIERbQF08YIupxgVIKYMIzsLkdDOw7HQL2DxrfC/rLCleoXDOibCnikOeQ/kCqC3/4grHzXm
 5VI+xn6hWZVVGJ3/bqDzi/TWonwyAhNLPrprGBGRLD1vxhGC/vDZdGj88ccMFCei699spHxk563
 BESN8T5a0McPJqd4tzYIoadqhES3SxiIsmozjN47+O7zcR+3LsYclrIUg4jACBO/TLUGd4m8JMe
 Obafgv8BJUYqKdH4jC8/yjQk+w3fEA==
X-Proofpoint-GUID: -Fv4GOSPpFwf4OeJnAXjJEiZ3fKObPaz
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-29_04,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 suspectscore=0 lowpriorityscore=0 impostorscore=0 adultscore=0
 malwarescore=0 bulkscore=0 priorityscore=1501 clxscore=1015 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510290071

On 10/29/25 10:35 AM, Dmitry Baryshkov wrote:
> On 29/10/2025 11:33, Konrad Dybcio wrote:
>> On 10/28/25 9:59 PM, Dmitry Baryshkov wrote:
>>> Historically all devices manually defined GPU zap-shader node in their
>>> board DT files. This practice is frowned upon. Add the zap-shader node
>>> on all platforms, define a label for it and use the label in order to
>>> patch the node with the firmware name.
>>
>> I'm not sure this is much of an improvement, since at the end of the
>> series, boards still have a &gpu { zap-shader {} } section, with the
>> inner one not being referred to through a label, which reduces
>> duplication in the single LoC used to assign memory-region, but
>> doesn't e.g. prevent typos in the zap-shader node name
> 
> By the end of the series the boards don't have zap-shader{}. They use &gpu_zap_shader { firmware-name = "something" ; };

/me wipes glasses

You're right, I skipped over the last patch

Konrad

