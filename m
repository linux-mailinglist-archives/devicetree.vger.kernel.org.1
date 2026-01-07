Return-Path: <devicetree+bounces-252341-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 46948CFDC62
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 13:54:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E965E3001FF7
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 12:54:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDE9132549E;
	Wed,  7 Jan 2026 12:54:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Fbt0Lm+O";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="eaoyBjbW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 548A93126C6
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 12:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767790464; cv=none; b=q8AtLmbcdogbsNKE/AoSEbls+NnGN1NxK13tdjBzOwLoligMxGFbeUxSOmh/9v/6kn2ZskKfSelFJ8mSNKoPNvKJADCx7zRpucVVa1Iv1rUEjqeMWegmIT3qAeZLpZ8zROvSLdvwCKTNvZl6yoCaAcpm/zjpsvVwE7l/F3RoJbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767790464; c=relaxed/simple;
	bh=LMwd6itfiTBEF73aPLuPGEFQpHr+Y22nRnuuMyYXYo8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=sumN9uyHmbnt5KL1g/vGUlvsi/hByt2J3A9Yi0WBJwWPRrcD6OpYG3mey2JrKEwP2M1G290zvr5Fc+wdBfsRBT2lp32uxkbJeDVBBCSamFWsIMOqHsN5ygbIwuCjgC+SHUR6rpyYxsQ4EagxncxX3HbwUeYdZq1L34VDHT3Pfrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Fbt0Lm+O; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=eaoyBjbW; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6079dqba2593315
	for <devicetree@vger.kernel.org>; Wed, 7 Jan 2026 12:54:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	cmohpzccYb6m1d1KajspLHyFgENTMQiNE15xfOACLWs=; b=Fbt0Lm+OVqkRHeGN
	atnKcm+Hpn1YJJf43vrvm/XXhVBUfAm9SDwIKknzxH9Z7a6J+YofbRacJZgmlUQw
	15h01QKjpTCknvJ0PxvTvL2vX00xpEz08IXAtr2de7Aacau4z2kKcs8IZFo/cOQV
	HioN9MzfDQUa9+bhc2Gb8+zDB41g9adTxdbI10Xy2wCM301X+MNqq9NRcVjiXnCt
	mA3Rdzl9d46QMvhSAm0twcaHE92aEM+0zYMTMYVsRcTUJzuBmQnZyQklp32mZ5Xp
	AQJuyxPKtKNEQV729Knk35hH0k4AA9b2umTdzubQQKp6euA3QgiPjecV9Ag6BcYF
	bG0rJg==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bhn290j0q-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 12:54:22 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-7c240728e2aso3390810b3a.3
        for <devicetree@vger.kernel.org>; Wed, 07 Jan 2026 04:54:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767790462; x=1768395262; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cmohpzccYb6m1d1KajspLHyFgENTMQiNE15xfOACLWs=;
        b=eaoyBjbWIkzd+TPoYAvs+af0DOMArAvEqF/I9XfwE87B9k9WL9VHHc1LOcGRU3bs2S
         Vs65thjR0NJAkRi5ZCZDQt/tIPRhe8PwkoglqzgB31cr5+Bds+NC2ZbR0XFGOjgsYbQ9
         DwqzCTSNUpJVak89MDkkMsSdT9Ef2SVOSVpdxKsEzlFyL8sBm8yLYiukJjjNChXvYjRi
         eISPWWDJVFfoHYqFXXemCYs4QgUpPH7JMT7tdIcpUd6Zu/TMCA7FZZ2IgrFUc9NQvc2K
         9VKx8ccyYzlk06F0i1sgDcrnyOFrY42o4wlaMQL5r3748crga3hoFRH9ALWEEhLV3va1
         KYpA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767790462; x=1768395262;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cmohpzccYb6m1d1KajspLHyFgENTMQiNE15xfOACLWs=;
        b=rG0nj+pISIE+GQ0V758flqA7epElXnCZoskLbtjSJXEnt2/Ff39Kjw5KT7uhUHi6Fy
         7COEG0k0s5OwZQujrXF/Cv18JCQNMG8e7xVWDEbiDiLXI8B7JD7N9KxpHxRfQnh3DPE0
         9JxmjnXrxpYGaKkW18+EgYKqemZ7aQJ8A2B78sZh5Kv5bEfvnW4D4jDaL8tRCG6pOJC0
         f8Pjl/2KpGurj9YfAUmG/gfZqxHJ1RBAQeAtRtj5Sx8IIq36SNzdcFUgSnfYVS0w5qbj
         BbFNlnlMFRcL6XyJQqwrLvURbrgvDm2h8lUOZt6DE9P0ynBTk0v0npwUa5cQdkvvOu53
         JEYw==
X-Forwarded-Encrypted: i=1; AJvYcCWo8B9rLIqwrdy5fVar9ipb7Xoao9jvP7492p4/nu/Gpwg+D6BD+2AVAWzLH8htDS8p0YzC7cyux30h@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3gPhSY5vDbquIQaug6adzDjLXJeYi/bgKyJw+s5LuWtvBSXob
	00KeSP1x4uEHnVJhVTmJk2R0mAb2oiZ/KfNeELPpoWmYjQXt1NJuxhiHVS0Z14VJl9E8U5mxemp
	9haEYv5B1hURd6fNb19FN5YT3yOCEq597rBnulXg9HNmAQzl4HY4HjURdBJQzNMHh
X-Gm-Gg: AY/fxX6qKxQYlNAnR3sal/ZaSHTOW7nJ/zUVbo1jxsbLESDxHZFf2XaCmm6TKq6hAL7
	mCOHYI7j6XiZNYaF8DKY8T+TJsEmRdCmrwPxqeYF8TCp60Z1br3zaBDYxfhrBm/0MEdT2HgJ6Jo
	rwRSIvnDpMclBFoTmXjLI1646td80NWHjBWxPAWEK7ZV9C+fYF/I1vBi1fCgk1VVeDPwWunDhSl
	01N9tn3zhxbvzkK71g+Tb1FJ7bHjivl+U66iNzUUbW099y5bqNj29ecuJgkeDjHrubZfdxQp9zj
	DnrcZNMLKN6mWdrcFPbg1gf+ZnkEbqEeCvPyF75UFz9SSz8p0LsvsshFXQEXP1AXHvEJwvpcrdl
	GqOfWO/zjSuVp4a389mS7ZWr73maRgImNhJrNymo=
X-Received: by 2002:a05:6a00:1bc3:b0:7bf:5011:d1e0 with SMTP id d2e1a72fcca58-81b7d862806mr2090559b3a.2.1767790461838;
        Wed, 07 Jan 2026 04:54:21 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFPcfIgzpwtUUWbYvu9xo9zKJhvWT6IPFRQebX05yaw7MX05sqZJj7zBWLDvSUuQp4wYt1A/Q==
X-Received: by 2002:a05:6a00:1bc3:b0:7bf:5011:d1e0 with SMTP id d2e1a72fcca58-81b7d862806mr2090534b3a.2.1767790461338;
        Wed, 07 Jan 2026 04:54:21 -0800 (PST)
Received: from [10.218.7.34] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-819c52f8b0csm5010040b3a.35.2026.01.07.04.54.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 07 Jan 2026 04:54:21 -0800 (PST)
Message-ID: <384fb55f-edaa-4bb0-b6c6-f15d4fd003e0@oss.qualcomm.com>
Date: Wed, 7 Jan 2026 18:24:16 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v5 0/3] spmi-pmic-arb: Add support for PMIC arbiter v8 for
 Glymur and Kaanapali
To: Stephen Boyd <sboyd@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
        kamal.wadhwa@oss.qualcomm.com,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        David Collins <david.collins@oss.qualcomm.com>,
        konrad.dybcio@oss.qualcomm.com
References: <20251126-pmic_arb_v8-v5-0-4dd8dc5dc5a1@oss.qualcomm.com>
Content-Language: en-US
From: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
In-Reply-To: <20251126-pmic_arb_v8-v5-0-4dd8dc5dc5a1@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: Vg_5X46lMjvrQZv3oF_pmfhHkfXEyUQ7
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTA3MDA5OCBTYWx0ZWRfX+IfaFfc3vZx9
 p46FmMpiAnmgCk/eoU/qP9KnzdD32vxSqI7grMGngvMo7o2gAKZHD0f32VSGwEYEf6Ve13cYpPo
 AVldsqSKEAgGGB+WoF5OPvLrr/Pfpu0k8RV/wDodgYhoVs4oNtekPllSuMnDI+SG/4EF/onC1hv
 5hR2MO4NNm9SkrEG7fCghyLwsjXamBiz8N4SlQ3PENEnYkloy+8GBoFEl5N8uee8AQal7LeXjcy
 AilmYxJpDHXPvbRJSfaGQCgt2KmFL+BxRkewMjKAC1a3wihMAn87n6blTcRRDNoFm9pYpOso3hn
 V86gL9ZAALDDdSrA+wXGs/h8bKV1jJheOZ2oz8ItQzdBTpJ+GCb7DwcnJygUPdktM+yZ45i0dLT
 7hJcI8E/0w1oFQCN4Al4z58M8d2XDfKoAy/A7mIuq2E/g3gotynMLXMZ9SKAsMlQV5SH5Yl4g01
 TKsRudHQubzWmreIWpA==
X-Authority-Analysis: v=2.4 cv=P7k3RyAu c=1 sm=1 tr=0 ts=695e577e cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=4_aleMdjRsvKfd-SFZ0A:9 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-GUID: Vg_5X46lMjvrQZv3oF_pmfhHkfXEyUQ7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-07_01,2026-01-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 phishscore=0 clxscore=1015 malwarescore=0
 lowpriorityscore=0 impostorscore=0 adultscore=0 priorityscore=1501
 bulkscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601070098

Hi Stephen,

On 11/26/2025 10:42 AM, Jishnu Prakash wrote:
> This patch series updates the SPMI dt-bindings and driver to add
> support for PMIC arbiter v8, targeting Qualcomm SoCs Glymur and
> Kaanapali.
> 
> SPMI PMIC Arbiter version 8 builds upon version 7 with support for
> up to four SPMI buses.  To achieve this, the register map was
> slightly rearranged.
> 
> Device tree changes are not included in this series and will be
> posted separately.
> 
> Signed-off-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
> ---
> Changes in v5:
> - In patch 3, removed unused variable `ret` from _pmic_arb_init_apid_v7().
> - Link to v4: https://lore.kernel.org/r/20251124-pmic_arb_v8-v4-0-d91dcbf097c7@oss.qualcomm.com
> 

It looks like all the patches in this series have a Reviewed-by: tag now.
Will you be picking this series in your tree or do you see any issues
or pending actions here?

Thanks,
Jishnu

> Changes in v4:
> - Collected Reviewed-by tags from Rob Herring on patches 1 and 2.
> - Made following changes to address Konrad's comments on patch 3:
>   - Moved bitfield.h inclusion for alphabetical order.
>   - Added mask macros for use in spec_to_hwirq and hwirq_to_* macro
>     definitions and updated their definitions.
>   - Updated if() check in qpnpint_irq_domain_translate() to use FIELD_MAX().
>   - Added helper functions _pmic_arb_read_apid_map() and 
>     _pmic_arb_init_apid_v7() for common use between versions 7 and 8
>     in .init_apid callbacks, to reduce code duplication.
> - Removed pmic_arb_dump_apid_map() as logic for dumping mapping table is
>   now kept in a single place, in helper function _pmic_arb_read_apid_map().
> - Link to v3: https://lore.kernel.org/all/20251024-pmic_arb_v8-v3-0-cad8d6a2cbc0@oss.qualcomm.com/
> 
...
> base-commit: 6a23ae0a96a600d1d12557add110e0bb6e32730c
> change-id: 20251123-pmic_arb_v8-669d7715d3a5
> 
> Best regards,


