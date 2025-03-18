Return-Path: <devicetree+bounces-158523-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F48AA67133
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 11:26:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F03A719A2B36
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 10:25:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2378208984;
	Tue, 18 Mar 2025 10:25:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IASshelC"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 993DB206F3F
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 10:25:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742293511; cv=none; b=qBRgBe7NCgNWK7v1bW97K/Vis5tsO7Ks8WpJs3NtqcMGoEnL+38ao7ZUGfTMLA/mm3f+E49l7E8UIiBsDY8sbhAKnYHToC9L/q0Pef5ObEGlwp6SQerQ+94FKLO+OJdPU4R5EbQiS0ckot2NjAq/9SX0lPSmbBwKBHlqGjC9i+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742293511; c=relaxed/simple;
	bh=viI7y/zKVyvSQat5yicr/ZP4aQMPwYcfsOE3HA4N1zM=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tqnCfRNv3reLj+/VnZx2SVXjxY/QCS6VoHOvs/ZLWRiWg+q3eEdtr1ejA+e5Vxu1Y96i1mYpYT9QCEjrZ+93AKlYzcsq9hkmcX1KEMHoepc6A3hD7IC2j/YuHt3SEHQLzk+sawj29/ZqaoE4bl6Zyzypfj66OluGwCr+VRETiA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IASshelC; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52I9HlD3012987
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 10:25:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	9tGWEqzwTs/fY6RPkduOMFdSME0M9poWROeZ179aC8E=; b=IASshelCF92cIw4f
	A1dPhjICdvIqb6ufrw2KWwm9tA871vKxWyLLy+V69JZFMSQIyzibEEd6RSEqxV/g
	HVJje31jJw5qEq2eLZshtfd/m8/eqZ7juPPbU9Ypaw8hyWX54PKSCm81CWy0Lim9
	aFqB5Gv9APizKnl0hPt09l/RjD9gLSYTHEEEhUm04pMg3XQvVOOpQGeK/CnvcFee
	ljSrAtFPz8oIWVcI4/acLvDrPkfvQ3Y3uhIMoQJvO7qWIxnFrjtmGICsqA3JSG3/
	W6v5STl/Ib/kyzfCCX3ahR3rPpxv/xDxHoLoPSpjDmDwXhQWWCql8tk6X22y7uCs
	13aKpA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45d1utys0h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 10:25:02 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-476783cbdb8so10098861cf.1
        for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 03:25:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742293501; x=1742898301;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=9tGWEqzwTs/fY6RPkduOMFdSME0M9poWROeZ179aC8E=;
        b=ZeAnomDYZGOcLlIZj2a2Liue23NIv1iT6f6hUJj5SpOgPIqxVg442mT2XWX1dSo668
         R3z2Sg9Jo8XZIn1dYP14V33Ahmq1lIjgqC+gn+ik9j/q6yUaxTuLESJ2i0TkFMGPJM+v
         S/FeJfIiDkk3wH9ZrzA+gORR2fGZWzRzPp05hJ8WAPzVcd60iBev2xqc4xiB0LHRSGTE
         c/plQ1FbCSAu9aKbOiZ/cnWr/ZGMJ34+R4hwezMTHLfnOS+EwaooLNxzda1j8P23wi8M
         Sb/DpM+ITeNoRqB4V9SRLODCjLDnJs7JFsf4Thqffr/pAedd7lz366a7tHAR81vXE51m
         lr/g==
X-Forwarded-Encrypted: i=1; AJvYcCVhhrBz8wgC81ow45sGPnJOL7gu4R0SoShJ4IYiC0iHlgErraXDK7Dvrx5Fp6SnurC8joywMRAY4Dnc@vger.kernel.org
X-Gm-Message-State: AOJu0YzdDzBvkJX6dvkLwLLodx/A2FgADSLAIw+AXFnVsaW6DUwid0sp
	sp8jKCC+0TzDF6fWUud1gxAALTVqymMSh12uNECOX+C0wUxbE304dKAJxwOwrEb/6MSkzV4sqhd
	v9j4zNCQAkUn7HGmF4JlD9Dg6JArz5EM3wtx21Nj8E+IJzOCbPvYGyTu5AXmS
X-Gm-Gg: ASbGncvve9a+dcb1wkSvt+7M/kYrEW/GSlg1Q6jG/YOsXKfRMYnb/wH7GFHYscr36L5
	2Hre3a/QPIqOuRWLsHic0P97QsZfm82B2SYg7/i1CZpwcFkHtobGVv5UtIkKuiqFqxDp4V2doDY
	DIfHh+39ciqPhWEpwqKyo95IMcMpUNCVuiJkHwLWmqG6KgIUU8hN6c8dBdlDPLLde1ZB/d2PMLS
	l0z4R1Sb1Vl5bA5r97lj+/Z7cB3F9nIda0BMwV34RcVneqaNzexTyXLr5GtVT9kNkDFL/or+6DG
	3ZaIOGVR0ITfQ05xYY6QcvDFrC+xLizB9Vgz/NAdwHPPlggdZZ8gqFONP+qeIGu/7c0qqw==
X-Received: by 2002:ac8:58c1:0:b0:471:fe93:4b5f with SMTP id d75a77b69052e-476c81b622emr86278471cf.13.1742293501465;
        Tue, 18 Mar 2025 03:25:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGDsMQDOS+0HDILyNXHIvpznOD0Y7l4AYvNrP+8R89ZspJwFSR2+cZXNbEUsjSQJ6tnA8Zr6g==
X-Received: by 2002:ac8:58c1:0:b0:471:fe93:4b5f with SMTP id d75a77b69052e-476c81b622emr86278321cf.13.1742293501043;
        Tue, 18 Mar 2025 03:25:01 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5e816968bfbsm7331474a12.17.2025.03.18.03.24.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 18 Mar 2025 03:25:00 -0700 (PDT)
Message-ID: <8e830d99-61d1-43c0-bcd3-a8b669fcc2bb@oss.qualcomm.com>
Date: Tue, 18 Mar 2025 11:24:57 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/3] arm64: dts: qcom: sm6350: Add OPP table support to
 UFSHC
To: Luca Weiss <luca.weiss@fairphone.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250314-sm6350-ufs-things-v1-0-3600362cc52c@fairphone.com>
 <20250314-sm6350-ufs-things-v1-2-3600362cc52c@fairphone.com>
 <cddcd851-5e8c-4202-baad-e56a09d5775a@oss.qualcomm.com>
 <D8IJ5TEHREW1.2FK88ACT1JPYQ@fairphone.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <D8IJ5TEHREW1.2FK88ACT1JPYQ@fairphone.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=H8Pbw/Yi c=1 sm=1 tr=0 ts=67d949fe cx=c_pps a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=6H0WHjuAAAAA:8 a=EUspDBNiAAAA:8 a=4oVbTNSGWYtvGuB_2MIA:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22 a=Soq9LBFxuPC4vsCAQt-j:22
X-Proofpoint-GUID: YxJt7u6TSZhX7hT97V6dobk-TBLZ0hEQ
X-Proofpoint-ORIG-GUID: YxJt7u6TSZhX7hT97V6dobk-TBLZ0hEQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-18_05,2025-03-17_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=999
 lowpriorityscore=0 bulkscore=0 adultscore=0 spamscore=0 priorityscore=1501
 mlxscore=0 suspectscore=0 malwarescore=0 clxscore=1015 impostorscore=0
 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503180076

On 3/17/25 1:12 PM, Luca Weiss wrote:
> Hi Konrad,
> 
> On Fri Mar 14, 2025 at 11:08 PM CET, Konrad Dybcio wrote:
>> On 3/14/25 10:17 AM, Luca Weiss wrote:
>>> UFS host controller, when scaling gears, should choose appropriate
>>> performance state of RPMh power domain controller along with clock
>>> frequency. So let's add the OPP table support to specify both clock
>>> frequency and RPMh performance states replacing the old "freq-table-hz"
>>> property.
>>>
>>> Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
>>> ---
>>
>> [...]
>>
>>> +
>>> +			ufs_opp_table: opp-table {
>>> +				compatible = "operating-points-v2";
>>> +
>>> +				opp-50000000 {
>>> +					opp-hz = /bits/ 64 <50000000>,
>>> +						 /bits/ 64 <0>,
>>> +						 /bits/ 64 <0>,
>>> +						 /bits/ 64 <37500000>,
>>
>> This rate on this clk requires opp_svs (not low_svs)
> 
> Not sure where you're seeing this?
> 
> This is from my msm-4.19 tree:
> 
> gcc_ufs_phy_axi_clk_src:
>     .rate_max = (unsigned long[VDD_NUM]) { [VDD_LOWER] = 50000000,
> gcc_ufs_phy_unipro_core_clk_src:
>     .rate_max = (unsigned long[VDD_NUM]) { [VDD_LOWER] = 37500000,
> gcc_ufs_phy_ice_core_clk_src:
>     .rate_max = (unsigned long[VDD_NUM]) { [VDD_LOWER] = 75000000,
> 
> [VDD_LOWER] = RPMH_REGULATOR_LEVEL_LOW_SVS,
> 
> My intepretation for this is we need low_svs?

Hm, I took another look and it seems you're right, I must have misread

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

