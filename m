Return-Path: <devicetree+bounces-156473-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 04B10A5BD9A
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 11:19:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 24D48189961F
	for <lists+devicetree@lfdr.de>; Tue, 11 Mar 2025 10:19:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8D2B1237170;
	Tue, 11 Mar 2025 10:18:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lKjgeKJL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79CCA2356C5
	for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 10:18:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741688287; cv=none; b=Fgx/LEiDaZ77saPKvz+zkQ9t+cuM4q6NarEaLDXLmK4MK0XVwqkb9X+EOFxceSd5CS5iKWV3fKmpAK6oPzA48x+tXdImRs7pMMhO3AsiQYu+nJRQgWPTmEeHZYQunBfpqevFWENffWErESoNKF7VOUkpmCZlt7zZhPNCAy6sL9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741688287; c=relaxed/simple;
	bh=aYwvhdYqKk+yMw4kbjnkVREvt5t0+ZNbizUj9s6FnbI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=nxt/hhpPKhGPANu6nt8FEHcqYIChdIm8Vgpq5HNPOrHukUyW17ir7edrEqd9g6I7ZMKBYBWnYBc9FCO3f3oOZM2i8ylZrkNZQm1KFR18yWgPSukp05Fo9lC9/0RkMzGpW85064f+7uw5KLmKLKchfw/XFlWSTasyaNZ3fQILEvk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lKjgeKJL; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52B9wXER017846
	for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 10:18:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gLg0XiQLhr7BV81erd1rdBV9tLWyEIS3vPLctOX1NFM=; b=lKjgeKJLX/WEIhn4
	8R4pGOq2vztPel0PPZeOEArS9cJk3IDbIKrB2DBVhXgmR+Ztw7OYxtmzsnQUDv2S
	XNFx9QH+2zzMLrBHZCIGTTek6UqocD0KWeLQQnHA5KUo8TKbCh10ZsVLxhpaXkpc
	/AVX2gRZljbjZNiCQMBg7QZ8glsqCt8Di2FbOuaD/6JLhVP5AC7zA8J+uHLeMx0r
	J9/Y2EB5V6VYqZregT8n12A5WhNx6psQaEpN3KLEhkDVSSkQqlvobpcpMCTgljm+
	ojWku9YzYur8BR8PRwpnN+1ZVnk5fZ3j/Tj4sBKF7EhHuv5RGBwPu7XSqzHAAHxG
	eXakyw==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45ab8m1evb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 10:18:03 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6e8f3766737so6086856d6.1
        for <devicetree@vger.kernel.org>; Tue, 11 Mar 2025 03:18:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741688282; x=1742293082;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gLg0XiQLhr7BV81erd1rdBV9tLWyEIS3vPLctOX1NFM=;
        b=lRXjeAoKZe5HCgE+EFRXAgM3JDvg0Awio9j0PV8UzrlmkBHyeyeOuCFrtzxwpNIbtM
         2sH5sq5bBzEZqdvO//Jr3tVKJxp7kuCBxtsSa2X43cf2Gt7xh6cDcD5SBeQTEjlI6ZLL
         ADDVOuYifwO+wGiPwvnpR3/Fza9p8k7JbZGiX6IgRTjJX5K9CDmDGlSmf5aBHrsBcVkx
         gDRfeBEvDVOvDNKQKF+HAZl76yqEqjL1FeNEGwqZrPBWznJaOYi3MIpfcsGDnejSvmIm
         7UC+uU0h+nsSjPln24iN1psv1fmXrHjFCAg80UC6yWqXe11hDGLoQE2ktZqdIK2/1rFA
         xkSA==
X-Forwarded-Encrypted: i=1; AJvYcCWGV/Liqj855/6FiA+wBxpdsdX0g366/ns/k2eiroTOypQquJZ6fJjTv504iITgiwLqWmIKBN+MCsxA@vger.kernel.org
X-Gm-Message-State: AOJu0Yy8Yt2XjSpgDfRrZb1JjhJiu+r0mJGrDnkklAMVuIZ59sKRlt/Q
	hIIsqjyMyk9kokG/8Ftnb5H8ebcHdpee4KoWNbon6RqR9VoAEi+OmTRh1Wnb+lBjc+GRhn04QA/
	K3KWZvPKKMWDQL/m8V0+2vpALYnO45Pcx37qdSM1fNcRdeNeuojPbYvSU46G3
X-Gm-Gg: ASbGncsmC8HeHhp44/bAkeamsKE0J3seGsUhiXU75m8IDIAMdULQJqaQG5mZCdLdj+S
	2I4TjWuQ4EKWrs0CqB85pB2isVtjx2Ocuuju2e9O96vZ4foCqbc4Xszp6QmxpA+VXZo2IVTwXCk
	2OxiW/SYI2Lk5Uc0eUsMKx0RtCBIMUViQM61jXeuf67OE5mx9R06axL2wRbD09oAaLLHpZ3P/5T
	C0v0wppXijHMHrcNZrlu62qTlUPJc1RISRqSOJ0rdflYFTMuNBbq5+kWewNH8fmVqTZEeNgAUDO
	W8ye8K5+NO+2uXlXEEtCoPO+go9CMlF20tWhhzBTykacXyifzNWeatlXOECePO9ls0Yfug==
X-Received: by 2002:a05:6214:5192:b0:6e8:f701:f6d8 with SMTP id 6a1803df08f44-6ea23b414ecmr16717446d6.0.1741688282154;
        Tue, 11 Mar 2025 03:18:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGW83xBYS/+ns5BJXqeVLeMUipXXxeFLW0QWx8QN5GkkDNXt4yXik/fUudE+ZYwMdYnZzYWfg==
X-Received: by 2002:a05:6214:5192:b0:6e8:f701:f6d8 with SMTP id 6a1803df08f44-6ea23b414ecmr16717256d6.0.1741688281842;
        Tue, 11 Mar 2025 03:18:01 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac2399d4edfsm907415066b.171.2025.03.11.03.17.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Mar 2025 03:18:01 -0700 (PDT)
Message-ID: <44553d96-d1c4-4cd9-88ee-5d3bd7227715@oss.qualcomm.com>
Date: Tue, 11 Mar 2025 11:17:58 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/4] soc: qcom: llcc-qcom: Add support for SM8750
To: Melody Olvera <quic_molvera@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Conor Dooley <conor@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>,
        Trilok Soni <quic_tsoni@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250304-sm8750_llcc_master-v2-0-ae4e1949546e@quicinc.com>
 <20250304-sm8750_llcc_master-v2-3-ae4e1949546e@quicinc.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250304-sm8750_llcc_master-v2-3-ae4e1949546e@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: Zd5vwybhH-yq8HIe0QbunoKtk2LC6Hpe
X-Authority-Analysis: v=2.4 cv=K9nYHzWI c=1 sm=1 tr=0 ts=67d00ddb cx=c_pps a=UgVkIMxJMSkC9lv97toC5g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=COk6AnOGAAAA:8 a=Wn71LMW1St--75GlNFMA:9 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: Zd5vwybhH-yq8HIe0QbunoKtk2LC6Hpe
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-11_01,2025-03-11_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 impostorscore=0 spamscore=0 mlxlogscore=672 clxscore=1015
 priorityscore=1501 mlxscore=0 bulkscore=0 malwarescore=0 suspectscore=0
 adultscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2503110069

On 3/4/25 11:23 PM, Melody Olvera wrote:
> Add system cache table and configs for SM8750 SoCs.
> 
> Signed-off-by: Melody Olvera <quic_molvera@quicinc.com>
> ---

[...]

> +		.usecase_id = LLCC_MODPE,
> +		.slice_id = 29,
> +		.max_cap = 256,
> +		.priority = 1,
> +		.fixed_size = true,
> +		.bonus_ways = 0xf0000000,
> +		.ovcap_prio = true,

ovcap_prio = false, alloc_oneway_en = true

> +	}, {
> +		.usecase_id = LLCC_WRCACHE,
> +		.slice_id = 31,
> +		.max_cap = 512,
> +		.priority = 1,
> +		.fixed_size = true,
> +		.bonus_ways = 0xffffffff,

.activate_on_init = true,

[...]

> +		.usecase_id = LLCC_LCPDARE,
> +		.slice_id = 30,
> +		.max_cap = 128,
> +		.priority = 5,
> +		.fixed_size = true,
> +		.bonus_ways = 0xffffffff,
> +		.activate_on_init = true,
> +		.ovcap_prio = true,

ovcap_prio = false, alloc_oneway_en = true

[...]

> +		.usecase_id = LLCC_VIDVSP,
> +		.slice_id = 4,
> +		.max_cap = 256,
> +		.priority = 4,
> +		.fixed_size = true,
> +		.bonus_ways = 0xffffffff,
> +	}, {
> +		.usecase_id = LLCC_VIDDEC,
> +		.slice_id = 5,
> +		.max_cap = 6144,
> +		.priority = 4,
> +		.fixed_size = true,
> +		.bonus_ways = 0xffffffff,
> +		.cache_mode = 2,
> +		.vict_prio = true,

.vict_prio = false, .overcap_prio = true

> +	}, {
> +		.usecase_id = LLCC_CAMOFE,
> +		.slice_id = 33,
> +		.max_cap = 6144,
> +		.priority = 4,
> +		.fixed_size = true,
> +		.bonus_ways = 0xffffffff,
> +		.mru_uncap_en = true,
> +		.vict_prio = true,

.mru_uncap_en = false, stale_en = true
.vict_prio = false, .overcap_prio = true

> +	}, {
> +		.usecase_id = LLCC_CAMRTIP,
> +		.slice_id = 13,
> +		.max_cap = 1024,
> +		.priority = 4,
> +		.fixed_size = true,
> +		.bonus_ways = 0xffffffff,
> +		.mru_uncap_en = true,
> +		.vict_prio = true,

same

> +	}, {
> +		.usecase_id = LLCC_CAMSRTIP,
> +		.slice_id = 14,
> +		.max_cap = 6144,
> +		.priority = 4,
> +		.fixed_size = true,
> +		.bonus_ways = 0xffffffff,
> +		.mru_uncap_en = true,
> +		.vict_prio = true,

same

> +	}, {
> +		.usecase_id = LLCC_CAMRTRF,
> +		.slice_id = 7,
> +		.max_cap = 3584,
> +		.priority = 1,
> +		.fixed_size = true,
> +		.bonus_ways = 0xffffffff,
> +		.mru_uncap_en = true,
> +		.vict_prio = true,

same

> +	}, {
> +		.usecase_id = LLCC_CAMSRTRF,
> +		.slice_id = 21,
> +		.max_cap = 6144,
> +		.priority = 1,
> +		.fixed_size = true,
> +		.bonus_ways = 0xffffffff,
> +		.mru_uncap_en = true,
> +		.vict_prio = true,

same


Apart from that, it looks like there's some sort of grouping / parent-child
relationships involved in this thing - do we need more sw changes for that?

Konrad

