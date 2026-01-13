Return-Path: <devicetree+bounces-254525-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 191A1D1901E
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 14:05:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id DEADE3041CD2
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 13:04:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6388838FF0E;
	Tue, 13 Jan 2026 13:04:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lUOwiqaS";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FhSI5bVz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4D9638FEE6
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 13:04:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768309479; cv=none; b=sETeBZBvmyz20uA+7M28xFo0JLcZ5AKoKsa2UNV+wyMIT70pSEvWbpS0k+G/hUWhDSmMv9xkLIx2n3WTqzwRYdUPdhu4OQJkfsGtxGJCorydTYgwQSp4HjEhY1hM9EVNq25UxZ/3pNERNfEMgxvdgcg6KVdpGanX9JdYDPhUIRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768309479; c=relaxed/simple;
	bh=f1smv8y9rYnHFcqj5jCfR+O+3u96mNBPMUNJqZeNiOE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=A6baKaWDm1duGht7tlxbEQYNTGd76iYeRWcqnZ7SLRVkv7Z9O3EEMAA/e66BGRLYsgMP3aoRi7/kqirORsTLydkRP3mRJYE5R4WQq2W5ZkOPh9PWBcl+l3Kw99NlYT5YzeooCj64T0+njMD+KU7caDgWo/v6bgI84DUQ84IZYus=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lUOwiqaS; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FhSI5bVz; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60DBDsdU4165225
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 13:04:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=LrBsZObGco9NNSkqSndahBNl
	GYG6lpT3RWJ1IaZFwls=; b=lUOwiqaS8c/BRPD8rg7glwhP5sLXjAe2QS/iAfRE
	6Rz9cd7faEMGMaULOtXhQ0DvY53nAiBuDrt0zInxo0/oqK8jHbe0NBQemSSqr8U7
	lKr5i+nzgTi+aZV/I3POjWcilZ6hMaSwYkMDuyQ9lqxGiVSfy73iZrOtpVXU5/bA
	Uy6iPd92Id0ny6RC7kps0gGVIYIJfnZipRJq0umvj8yJS5RhKyvSBQ/L7QGIZ2dJ
	UBgwwN5k2KeQooO/5+OezHbtwiEfYatWirMNLWs1JLUBLHFiyLfSiu/M7tHt/tbo
	B5bwjXvWyycyQxOgXIQ6Gul+zQlu1Rz2zd6zn89Fh2iZZA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bnn06ra7t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 13:04:37 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2a0d43fcb2fso157032825ad.3
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 05:04:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768309476; x=1768914276; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=LrBsZObGco9NNSkqSndahBNlGYG6lpT3RWJ1IaZFwls=;
        b=FhSI5bVzYLvDFWHdlbxdlmD+4dpT2PPXsG9FEcKoFSRD2Rhifxj0cgY/eH0/JC8/XO
         g0qjgvXoOUgfLoXzZA90QujqZWhV0cJDofePjqtk86rZOHZ8qIRcmH44TM9uHIMfMsOv
         6xeJG9JJA+LxOLtQNja27avDDJJ8e9HXJaA5/c6qnNe0FZ/SVylGwfRY3u8MCrR9f+jQ
         SXp8fNZPRBgcC4tQP0ZtpzooRVcbnQSy+WzmhVWq8LVIUpY2KP0FwnZgFMf/TJlgNOns
         7KtHJ45S5gpSfLCg2yiuzx3MdSedV7oVL/je5FW4iJCzzGThGkZ/FzhoSrLwS3fs/JQC
         yePQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768309476; x=1768914276;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LrBsZObGco9NNSkqSndahBNlGYG6lpT3RWJ1IaZFwls=;
        b=Uj3QCmWeVLxGi/iIihyg5Uw377RSRAkwQnKWH34sNVuoPmBsx3F5FCnjrOnBPlJpob
         KFkq7FEwtc56PXT24otHFosvv2mRYXn0xa6mpOveDKZaoASlolWE5bpy99Bgunx+G6sB
         /L/WXoF+jVJF8XbUApLlWHUl7ozN+GihnKXlIiiv61eskzGQznenIXjHrzv3bSSgH4PW
         uMloAKCIxZKPTGvhtcA+ZTVKmf5IR1MTHXq/w73+WcSdw1PjGU7CPG0dK86zMofUmE3t
         byoqdyD1YOOx0kGjDc7MbsX85f9XYj6m3VwDC+tK3ZX/05CqP4bO+ZRRWRiteGcKVKZZ
         jCaQ==
X-Forwarded-Encrypted: i=1; AJvYcCWGGa3+v9uAd+B9VZyRZuvzm+vbXVkm4FnWRBRxqOF2K6/2bUpmlILTFyBBEwmn6h9CV7BahsSfWOpD@vger.kernel.org
X-Gm-Message-State: AOJu0YwUPAui87NRLEFyB7I4n3y3UXz8zSHPRZILRhsX6umsdc/T9iQC
	BtvtBjF5KPh7BxegUz2jhMEO3b+4mC13gXUqAC7UCcc6vKIgJfr+5F5XkMKXXG58lHttavquekU
	VVC3WvpNfklFee9DZFVFf/OHoQ8fhQap8q9SZz7SavOQzNgcRQvoZZvrSO9eoYSz0nqfyhK93
X-Gm-Gg: AY/fxX5EPuVO1Q8iIxSSk/19wdZ+rxzTZJ7eq2TN4871yYy6L6/WTZfTV+aIjCFIivO
	1BmBO5+bib81FImvsrt6VXiB/pChEw+1PnuAvbrF6m0kOrpC73pkuhSN4uXzMwIswctJZd6AA4u
	Gwrk2gISfkwtyipu/zjhtHde1IKQAAxLCCsb22TLkDfy/oRfDXBlvqWpjia4TMU0pGW6asj5bx6
	Nj/TqNO+OOabIKb3hI9vcJiYCOr/8mpf+nLkGL+qScmP64Ze5oc7lqRxjgQHj2WJBHvyhN7c/MD
	zB/UYNdy8jqMlkFsfPBKvM2lzkMb9e2zQLbF98+ZUq2d7HudJj40kTz0fyE41lz/ioU+llWe9wS
	VdmUpppeqi6su937KAxlBnBARl1zWikEiH7ac
X-Received: by 2002:a17:903:138d:b0:2a0:f828:24a3 with SMTP id d9443c01a7336-2a3ee485087mr129935835ad.28.1768309476013;
        Tue, 13 Jan 2026 05:04:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHpKvGzrZdXR5BWwgsLxpcnOulsUHWmcEnI6Ymv+Xl0EvB/JBQjr9f/Ye2wpymi4KJtZM5E8Q==
X-Received: by 2002:a17:903:138d:b0:2a0:f828:24a3 with SMTP id d9443c01a7336-2a3ee485087mr129935575ad.28.1768309475307;
        Tue, 13 Jan 2026 05:04:35 -0800 (PST)
Received: from hu-mojha-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3c3a31dsm201124835ad.9.2026.01.13.05.04.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 05:04:34 -0800 (PST)
Date: Tue, 13 Jan 2026 18:34:28 +0530
From: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] arm64: dts: qcom: sm8750: Enable download mode register
 write
Message-ID: <20260113130428.n2kuo2d2tkoosws2@hu-mojha-hyd.qualcomm.com>
References: <20260112151725.2308971-1-mukesh.ojha@oss.qualcomm.com>
 <433fc01b-0e59-49bf-afdc-a23e815cc563@oss.qualcomm.com>
 <cca646c3-5e74-47cf-9dfa-49a888db0414@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cca646c3-5e74-47cf-9dfa-49a888db0414@oss.qualcomm.com>
X-Proofpoint-GUID: 1g49qY7C9sbz-W67YRhkPp9lbJYupM4f
X-Authority-Analysis: v=2.4 cv=ZODaWH7b c=1 sm=1 tr=0 ts=696642e5 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=kj9zAlcOel0A:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=uypVyKnD2Y_mXFCH2p8A:9
 a=CjuIK1q_8ugA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: 1g49qY7C9sbz-W67YRhkPp9lbJYupM4f
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDEwOSBTYWx0ZWRfXxG50UrA6iMCb
 8bi5xTsI5eC6UhDPSuxurGdrltc9QkwNbw3BJUsR7jI/kajDHNVeRtXmMOnD0NvjZiAWK8XUgHz
 kcdXmGHirQHX5z9JyeTUxQehxyTkBtpQq+GTFLcgP6t8vMRplWdeQgBpGOltBLBf2cF2b7U5BJc
 h8DhjeZ1mW/nsHsWcka3EpOJo9wV0ZAHcwYW1KR7BZ0rG174c4VqAmQLQobOTlK9j3+nKkgT0pX
 +oYRnAT6w1wvTnkDsUXjgGdT6cnKqXbj/ZCE5OU47RTJ5X0OCobYK26I/NelvpvsucnBqvJ1uoe
 mHzbmBwTFz0K8P10QFsqZd6PwsN0duG44WarKSPHCrF5C0oJdbZe1HZpJPRH+NFPODbeMeFKfLD
 iy7Hypv81oOXaT3q2iGB3Hv1cmaZhxRqniGBMfU/r+1mmwRZ1VVuOXrouM4w+JhN14JYi2Up9iJ
 Nr9t0EUxFdj586e3wTA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_03,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 bulkscore=0 malwarescore=0 lowpriorityscore=0 suspectscore=0
 phishscore=0 priorityscore=1501 spamscore=0 impostorscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601130109

On Tue, Jan 13, 2026 at 10:20:58AM +0100, Konrad Dybcio wrote:
> On 1/13/26 10:16 AM, Konrad Dybcio wrote:
> > On 1/12/26 4:17 PM, Mukesh Ojha wrote:
> >> Enable download mode setting for sm8750 which can help collect
> >> ramdump for this SoC.
> >>
> >> Signed-off-by: Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>
> >> ---
> > 
> > Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Actually no, we have a mess to undo..
> 
> There's already this node:
> 
> tcsrcc: clock-controller@f204008 {
>         compatible = "qcom,sm8750-tcsr", "syscon";
>         reg = <0x0 0x0f204008 0x0 0x3004>;
> 
>         clocks = <&rpmhcc RPMH_CXO_CLK>;
> 
>         #clock-cells = <1>;
>         #reset-cells = <1>;
> };
> 
> That's located at the rear end of TLMM (someone had a funny idea to
> move registers around when designing this specific SoC)
> 
> Problem is, those registers aren't actually "TCSRCC", not even "TCSR"
> Physically, they belong to the TLMM register window (which starts at
> the base it promises under the TLMM node today and is 0xf0_0000-long.
> 
> What we should have done for a fairer representation is make TLMM a
> clock provider on this specific platform
> 
> qcom,sm8750-tcsr binds the tcsrcc driver, so we can't describe the
> actual TCSR (as in this patch).. we'll have to break something..
> 

+               syscon: syscon@1fc0000 {
+                       compatible = "syscon";
+                       reg = <0 0x01fc0000 0 0x30000>;
+               };


What about above ?


> Konrad

-- 
-Mukesh Ojha

