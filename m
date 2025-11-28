Return-Path: <devicetree+bounces-242997-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id F0917C92558
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 15:30:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 72F3134C814
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 14:30:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7885D32D434;
	Fri, 28 Nov 2025 14:30:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iG8Ozd1t";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="a+Ou6BND"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F50030FC08
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 14:30:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764340206; cv=none; b=e9Yi2MABOIfDlgglFyZndmfRLkbJOYs6eOz9u2MK6jhx517ejUKEZaGV27WiNR03kJO1TCc6ixZb8dnbFBs+vUdrf8QRsMk6AI7LFIen64dKUjGDADSXW2fzKUIWPr/m87ODwtGI6zowIeVNU7VtNL/8cAyW5337JOts5jHzUR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764340206; c=relaxed/simple;
	bh=tRNBe4fjRO1hx9IAslahBhVvZMSRTvihSK2tbffhBp0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nv3DNCPlRxaNGFYN4V/lj5u/e5G+yqUUhmi+56+pqj4aP6U2hZXKjyaU1r7LdGZgDzEMec/eKXW6uSvku5XA7Udd7cPwzid8i8O+Ty4b0OPLan/beZExb2eBrid3WqVgaVU1088GibULeamqXmOLNPUdj5gial2IwumuGW7J654=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iG8Ozd1t; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=a+Ou6BND; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AS8PK5Q4122266
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 14:30:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	I8m/Cd13luBRYG7SBIJit3CvmjCN2CxIcV7mIbzooIg=; b=iG8Ozd1tc2RsfYFs
	sSv5uIi6bkvfKUUvQYZ1efBDhdy/Nsbf6VL/TCtjnHct7tR1j+5J/fZluNL/wERy
	OCV+HreSeU4pB/zn2RgitxSg+nh7g3zdr53Smk5QLk6hQqFc10eEoxu0G/vjtUu3
	AKglRC/z5aFpId35ztl8iNZOsxTXYNw3QdmPkigDyoYijxTA5mctG6Z5majWcX62
	436bPIlgqeFEexVB/FyqAfcnY/VXv/lAb0iQHzLB4Z3FWbM0+3mDzmAxpkWVdyrt
	GLrEkWc0h8sElqYW3O1gddf37pSuOrpeOpHW3f14YJJcgDYHaS1E8nQ23IUgIetm
	tDETWQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4apm61uqeu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 14:30:01 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-297dabf9fd0so25603075ad.0
        for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 06:30:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764340200; x=1764945000; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=I8m/Cd13luBRYG7SBIJit3CvmjCN2CxIcV7mIbzooIg=;
        b=a+Ou6BNDQRak3prVWQh81bkpVgDNzdYyb+5ZyD6aOjZLwfOl0ExP6GZZwWUzFZgDzE
         e0UtmDw+r4oqr/LYxYrXO95EGKbiT7D20QGX9vcA2BGAmvdvcYudgb43W5gvVc1RhEyP
         l7TbSOsytajJ5oczGPpUplZd7VpdzyIivPGGxWJNgLYpFFui4+TKHuEMbCknVO7XMu1H
         pOpbqgH3vy93cCpiycb0F0TozETIyAz9Ko+vbUBnLfvTRiplJ4H4mdo34xnb4B1l8VbN
         8EDdRR0PNXhYbJDjVCEbWJ4AMqjCDiHZxEn5qxjdXSmjQiVvwrN54GuaP57SYImAkAo2
         Mb1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764340200; x=1764945000;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=I8m/Cd13luBRYG7SBIJit3CvmjCN2CxIcV7mIbzooIg=;
        b=KurWK8Wvf0UIsXRRNMyhZHaBltNrF/JahYDPu2bPXLVhqjguBddVrCy7InN6Yx/QgE
         XBESkP598vDDJggInszuCVBtneZhQAn1aZ5V8GipAqHrDij8XJP5aVF6a5Dulq+6X2jL
         u5ZnL3vjEv7azkk9qSDdat26YD10SCMWMFKK+XdxayK5zkOvyl4Oho5Zb+eYhgaFSiKx
         8PehzEhpb/baoGQJP5JESkquQ44K6+uxM38hWWhxSlYStnGBdJzsDv55SxGe37eE/vEm
         +LCU9hSq4ZczggtQ4FHMzFi6wKudomnfkYxU/uSGcnmBWDel9uLR0bSnQqgEJKkX+Szo
         k7bA==
X-Forwarded-Encrypted: i=1; AJvYcCX5RTP05inc/Az1uq9WlQ8tQYn00qRhCFn/TePpuvZT0V7K/UMg/kM/6os/vuQ7vqOOJZ5mFfrI81+0@vger.kernel.org
X-Gm-Message-State: AOJu0YxfP5hxkRJ3pSBatGnWOh0BbUv0oshJwhxufWSxyf1uhXoPeFKo
	DWYw4Q3kML+em2gO1+40Jzp+d6bY4CDx+frEso/RmtxL+5ADSSlkjDLFc/9v2ZuaP3uFOz6vn0D
	/ZmNkA6Cz3LhiLLEe0Wmxoq37Wwl9dmCe3Js0fIYXf27Kx5vmJR08mK+nXQNuA+Eq
X-Gm-Gg: ASbGncsQJSWTQryMspN/9Ie+DAK2BqhSx7qquDVp+084E4/39V1D/11/ChiMKvMTD2R
	Y2mDwnDjzlUK2r/pspVIGKplYyLeO8NVK9snXDG5tru0ni6whFMVzoA1qNAXlSuV/fBaI3dKoVj
	tbx58rUe7v3l5HH75nbJuabF51ptAzLuiScxipbwAXMP2Eq+Cuowyj/SQmmcIBM+2b6jZ4M+gxT
	lf2xrUt0HgECbbAZm/SlPb5tUi6TnJLxpzMw/UETutyAqni/ujejVu2p4F/eYNCU7ytq+J8hzFi
	3FZfRxbMCRkZKfjxkHPNT1XVF3EukrzvO9GUvCkFY3kLRd3nkQ2J2jvQLfxmxfyLpX68EGWl38o
	/47qxFI+TjmLOeJdOO0A/nE81Mar+WhC0FQ==
X-Received: by 2002:a17:903:234a:b0:299:fc47:d7e3 with SMTP id d9443c01a7336-29b6c57224emr319638365ad.31.1764340199724;
        Fri, 28 Nov 2025 06:29:59 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGQDWkrRLq6Z/YilM0CQ3+TKY3UGACkoNWNyTlguCOA8KyIumCSBYe74T3rnKhV4ld7zREH+Q==
X-Received: by 2002:a17:903:234a:b0:299:fc47:d7e3 with SMTP id d9443c01a7336-29b6c57224emr319637915ad.31.1764340199231;
        Fri, 28 Nov 2025 06:29:59 -0800 (PST)
Received: from [192.168.1.119] ([183.192.29.70])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29bceb54c6asm48719675ad.90.2025.11.28.06.29.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Nov 2025 06:29:58 -0800 (PST)
Message-ID: <ed2aaebf-f0ed-4eb6-b880-9c39d4f0533c@oss.qualcomm.com>
Date: Fri, 28 Nov 2025 22:29:32 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/5] clk: qcom: cmnpll: Account for reference clock
 divider
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Luo Jie <quic_luoj@quicinc.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        quic_kkumarcs@quicinc.com, quic_linchen@quicinc.com,
        quic_leiwei@quicinc.com, quic_pavir@quicinc.com,
        quic_suruchia@quicinc.com
References: <20251128-qcom_ipq5332_cmnpll-v1-0-55127ba85613@oss.qualcomm.com>
 <20251128-qcom_ipq5332_cmnpll-v1-1-55127ba85613@oss.qualcomm.com>
 <2d83f0d3-4798-4183-9e3d-9972db706cdb@oss.qualcomm.com>
Content-Language: en-US
From: Jie Luo <jie.luo@oss.qualcomm.com>
In-Reply-To: <2d83f0d3-4798-4183-9e3d-9972db706cdb@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: pJ9xuel3vM34dG6SgCL2OO2Fd4gVq1Av
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI4MDEwNiBTYWx0ZWRfX5/MeX6HqE6IU
 bHvmq09X7jdV5tYbPpNVtP0lDO7VgocQOo+qqowQ43/Fg3RaE8XVmkiurkcPAbxR+7OTd8XymMo
 3O5fGiD0/EQDn/MHsqRup9nTaFFXFNv8yy+PkST64RQ1xMZVHdhatoKoTrzo5QtWyJo/koykWHN
 zKn4b51srqPQUPV9l/b6CbQYj7DTy5JAQZhcEUJJ4rrtCWY2+4c7/VDrWSumYM155m5k/VFwhmj
 RleWT/V69TnNlpKT9PLNA9iIh3I4nGxwETcHNdaadpA8StJjOohUnFfujo7M/ZdjDxr8fqkACik
 2TAc5vsOnq3LuGfRAvdHCK85ZWsO8iKgrl4oP7NypW1HjJhHDtWQzQILSCxQF91UfehtPLDRVf6
 TnnCeD4FzDV0fENmX3dgPHOKjxjY/Q==
X-Proofpoint-ORIG-GUID: pJ9xuel3vM34dG6SgCL2OO2Fd4gVq1Av
X-Authority-Analysis: v=2.4 cv=IciKmGqa c=1 sm=1 tr=0 ts=6929b1e9 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=sdhyOahhduPysBwc4dimug==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=HfvJj5BQp2OzgikQKL0A:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-28_03,2025-11-27_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 clxscore=1015 impostorscore=0
 priorityscore=1501 bulkscore=0 adultscore=0 spamscore=0 malwarescore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511280106



On 11/28/2025 7:38 PM, Konrad Dybcio wrote:
> On 11/28/25 9:40 AM, Luo Jie wrote:
>> The clk_cmn_pll_recalc_rate() function must account for the reference clock
>> divider programmed in CMN_PLL_REFCLK_CONFIG. Without this fix, platforms
>> with a reference divider other than 1 calculate incorrect CMN PLL rates.
>> For example, on IPQ5332 where the reference divider is 2, the computed rate
>> becomes twice the actual output.
>>
>> Read CMN_PLL_REFCLK_DIV and divide the parent rate by this value before
>> applying the 2 * FACTOR scaling. This yields the correct rate calculation:
>> rate = (parent_rate / ref_div) * 2 * factor.
>>
>> Maintain backward compatibility with earlier platforms (e.g. IPQ9574,
>> IPQ5424, IPQ5018) that use ref_div = 1.
> 
> I'm not sure how to interpret this. Is the value fixed on these platforms
> you mentioned, and always shows up as 0?
> 
> Konrad

On these platforms the hardware ref_div register comes up with a value
of 1 by default. It is, however, still a programmable field and not
strictly fixed to 1.

The ref_div == 0 check in this patch is only meant as a safety net to
avoid a divide‑by‑zero in the rate calculation.

