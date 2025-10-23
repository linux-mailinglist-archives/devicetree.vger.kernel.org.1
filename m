Return-Path: <devicetree+bounces-230553-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id BA312C03A7C
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 00:17:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4967A19C6AE4
	for <lists+devicetree@lfdr.de>; Thu, 23 Oct 2025 22:18:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 682AB274B37;
	Thu, 23 Oct 2025 22:17:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UUasmk3g"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA3791C3C11
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 22:17:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761257861; cv=none; b=LspOwRCOVvYXmI9zoQ89GYPiIy7d0KksOZeb/Gkwv7XlMsJ6XnswDZvEm/7dPnDmosvBxYZsN3xx0kvGBYsYLz3BHcbPVe6qRTTQlcNflPAzWNePnOWR2D9lJ9jH8Kcl8TzG6qKiEz/1KlZjzCBjRKDe+zWsUY4fZ63PEF5CTnY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761257861; c=relaxed/simple;
	bh=0/6mOrOgE2v/EAXBWu5EaJbxvZ9DvIvrGkrUDTUVJBg=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=i2K1feCqxt/EltIqVGKKCUyT64BzAghvUV5hrea5bzlJOOYf5vo43/c4FGbSKL6L0a46j2Ms4I9qufTScFhcxPnRaD11sxjnS014w1Cuv25nmiqxgEgRWChuBL7F0M91Ys5/qP1FSdemBOfKQqKQ4zdbq7dwX5/OTbMCkbRsfjU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UUasmk3g; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59NEuMxk024762
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 22:17:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	eXhgsnolQuosOCqmxN7GIdRp3agVwulspfbFQ5KcWGY=; b=UUasmk3gf49mUvbJ
	7h9Zg0DoBYf71jSH/3zOhijwNaCgP2i+48GuW9H5qosi3VLTbxGHYWQUc/tBO0Om
	VoVHYzeK1ud3GNdPzLS2M+mEosafzK204m8C7oFEn8QyoCkp1Tv512dj/Ji10gMQ
	kO3YAjYEnAm6lakLFShMTXtXvLjFUnoHOZ2mb8tOHMi2qPhSuCcv14O22ZuoV04P
	1szQTcDb5kDMKNffEAzCSvHjrYqo+iBEouBsB3ODzDNLPiS0pA2BDlFFIPISg1dq
	4ECTvchqCaE7OFB7bhUlKuaDE5Wiuy7JVReKkZNV8qizgXCfdm107V4ItHwpTjQV
	5ULgJw==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v1w8a2hv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 22:17:38 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-76e2eb787f2so1162366b3a.3
        for <devicetree@vger.kernel.org>; Thu, 23 Oct 2025 15:17:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761257857; x=1761862657;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=eXhgsnolQuosOCqmxN7GIdRp3agVwulspfbFQ5KcWGY=;
        b=kFlALGKAMLr/WHSL2Ynp/iPpy9JlQ+TYljQ5gHRRWtm0PY3XcqucsONPHlE4+C51/u
         OrIc9R51A4lF8eZoGnykkg/jE8xvVIsM2SD0UskNbw2BH9NkLZizOl6QMo/5yBonKSgI
         7iZShqsTLiZYcGzmq4eLJQIXJI/gx2nLL/O6ZC5auSBmfMoMXUCZvAKHAP3ww/eD9C4m
         YAIGOmas81wkyBnsWZRDpzDPzKBZ1ixFZGqzki6HniNccyBcuW9g9eSSVxlY5UkWMbuY
         /ZNhKYXBeZgTHs1ntRSHTzBhRqc/BGizjKdfNYPN10aHyVSVyllLgEQ5M1lu66Ar7BLo
         hdzQ==
X-Forwarded-Encrypted: i=1; AJvYcCWFC990oKMxcVUIF7B2QjBZo1bzU2goF+/z6YzKzLPkTboW+xyFCWXjWn3gseQfdiXLhRv9e++RQhcI@vger.kernel.org
X-Gm-Message-State: AOJu0Yxx7oLcdZnPhjrS+aZQAqvU8inlS5aCQLCcph+VPt1C56LnhGym
	IMr55a9Py/Ax9XRwAGDecv0b3ZSFxNnACmVeAUHZR0V9DINWyLUEnoSFLGJEborqcJorfFYCx58
	/FwXQGfqu8FA7LPVLvT0+6flLfeTnShcYy8+2OSS9ZiqoPzfkNLIJ/Ph8kYPKc8q9
X-Gm-Gg: ASbGncuQwR8gsCg0D59T9ZMJLPnGaJbhBOM7ZZwPzgZS2tEFzKfVHpxvpkpfE97wCyP
	B5IfhtA51TLvamFEO0bMDXCwr7ZQ6WdnVSF5nKq8T0gm+z4SzQsBMIpDD4a7WxsVD3T3aTQWBD+
	7mhZcaGdot9yDOJ5FM08Jv74BWhinxTxGxxCfewe20muuUgGg2YdKgH5LhHV+Nop7MffDYk4O5T
	IEUG9hXcVFFriLX5wMIjX0l47V7wG0Eq4utrOQ58Be0jv5qbc6oePLZ7HJ6NVM51X+qIzDQMbyK
	ntD4kP6twrgtdLHQ1R03Q7k/5Y74A4c29YdRcuUHoIXKT5K3HKD1VRiQ3R2rJIkZ86XFDKCe+M7
	TMIcnFg0Ng3N9Z9A10VM5Nlg=
X-Received: by 2002:a05:6a00:92aa:b0:79a:fd01:dfa9 with SMTP id d2e1a72fcca58-7a286765c70mr34302b3a.6.1761257857348;
        Thu, 23 Oct 2025 15:17:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEXCip3lfFlFFHAfU+3zmg9cMpt0K19PwWmMQCOg96oi40mBOKNaVibdgO92QzHjjA63GTbQA==
X-Received: by 2002:a05:6a00:92aa:b0:79a:fd01:dfa9 with SMTP id d2e1a72fcca58-7a286765c70mr34262b3a.6.1761257856827;
        Thu, 23 Oct 2025 15:17:36 -0700 (PDT)
Received: from [192.168.1.5] ([106.222.232.102])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7a274b8b32asm3691332b3a.43.2025.10.23.15.17.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Oct 2025 15:17:36 -0700 (PDT)
Message-ID: <25ad160b-b618-4ade-a978-e4ae56c79e32@oss.qualcomm.com>
Date: Fri, 24 Oct 2025 03:47:29 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 5/6] arm64: dts: qcom: qcs615: Add gpu and rgmu nodes
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, Jie Zhang <quic_jiezh@quicinc.com>
References: <20251017-qcs615-spin-2-v1-0-0baa44f80905@oss.qualcomm.com>
 <20251017-qcs615-spin-2-v1-5-0baa44f80905@oss.qualcomm.com>
 <fdec4bf0-6d88-4a9b-a81a-061476dd9e1b@oss.qualcomm.com>
Content-Language: en-US
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
In-Reply-To: <fdec4bf0-6d88-4a9b-a81a-061476dd9e1b@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAxNSBTYWx0ZWRfX4nfRNTcIl31z
 xTxzNy61dRRY/ZPJsvtDgmpQEI+Ym7m5mDy2sLsjggdjizGb+fBIpbvvvJLQizBEZtBvW5XrcVP
 Z0jeijuvFm/KyBIijTZAoPjN5iEVUU4+Vdfv3u9sC/BmIbOr9ZqfedGIBa59nuFNL8m8F5+petS
 469omSfMceQgEXB9J7TRLktlgobva+myExfn+qtuaH9lxsIYhlZZux7pT7SzV95IVxw8/S5yCk/
 tpBsju/dMSzinNjlhVz70pNkDjl+TS/J3J/pL7v+b78KaQiLPlR/sG6y71rAWgKcv35ggQ8cjO7
 MCAj6acZ3DXpfKP33qIm15pvUqin0yRA0704nHv4CzlxQN1PvXbFx8TqHrvsXONE1CU1s69U10d
 bi1twBRlVguXU/U0UnoVuYKita7l2Q==
X-Authority-Analysis: v=2.4 cv=bNUb4f+Z c=1 sm=1 tr=0 ts=68faa982 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=OORdEvYNKPdDRPFHMUl15A==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=bgAURMIcSi5BoiUHQI0A:9 a=QEXdDO2ut3YA:10
 a=IoOABgeZipijB_acs4fv:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: ylBKIAlv4o4xKi97dOAw2n-TN8cIj1Gu
X-Proofpoint-ORIG-GUID: ylBKIAlv4o4xKi97dOAw2n-TN8cIj1Gu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-23_03,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015
 priorityscore=1501 suspectscore=0 adultscore=0 spamscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180015

On 10/22/2025 8:57 PM, Konrad Dybcio wrote:
> On 10/17/25 7:08 PM, Akhil P Oommen wrote:
>> From: Jie Zhang <quic_jiezh@quicinc.com>
>>
>> Add gpu and rgmu nodes for qcs615 chipset.
>>
>> Signed-off-by: Jie Zhang <quic_jiezh@quicinc.com>
>> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
>> ---
> 
> [...]
> 
>> +			gpu_zap_shader: zap-shader {
>> +				memory-region = <&pil_gpu_mem>;
>> +			};
>> +
>> +			gpu_opp_table: opp-table {
>> +				compatible = "operating-points-v2";
>> +
>> +				opp-845000000 {
>> +					opp-hz = /bits/ 64 <845000000>;
>> +					required-opps = <&rpmhpd_opp_turbo>;
>> +					opp-peak-kBps = <7050000>;
> 
> Are there speed bins?

None I am aware of as of now.

> 
> [...]
> 
>> +		rgmu: rgmu@506a000 {
>> +			compatible = "qcom,adreno-rgmu-612.0", "qcom,adreno-rgmu";
>> +			reg = <0x0 0x0506a000 0x0 0x34000>;
>> +			reg-names = "gmu";
>> +
>> +			clocks = <&gpucc GPU_CC_CX_GMU_CLK>,
>> +				 <&gpucc GPU_CC_CXO_CLK>,
>> +				 <&gcc GCC_DDRSS_GPU_AXI_CLK>,
>> +				 <&gcc GCC_GPU_MEMNOC_GFX_CLK>,
>> +				 <&gpucc GPU_CC_HLOS1_VOTE_GPU_SMMU_CLK>;
>> +			clock-names = "gmu",
>> +				      "cxo",
>> +				      "axi",
>> +				      "memnoc",
>> +				      "smmu_vote";
>> +
>> +			power-domains = <&gpucc CX_GDSC>,
>> +					<&gpucc GX_GDSC>,
>> +					<&rpmhpd RPMHPD_CX>;
>> +			power-domain-names = "cx", "gx", "vdd_cx";
> 
> I think the gpucc node should reference _CX directly instead,
> then genpd/opp should trickle the requirements up the chain

Do you mean the CX rail scaling here should be handled by gpucc clk driver?


> 
>> +
>> +			interrupts = <GIC_SPI 304 IRQ_TYPE_LEVEL_HIGH>,
>> +				     <GIC_SPI 305 IRQ_TYPE_LEVEL_HIGH>;
>> +			interrupt-names = "oob", "gmu";
> 
> 1 a line, please

Ack. Thanks

-Akhil

> 
> lgtm otherwise
> 
> Konrad



