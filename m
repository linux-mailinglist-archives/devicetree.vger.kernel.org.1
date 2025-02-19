Return-Path: <devicetree+bounces-148282-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 891E5A3B82D
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 10:22:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2179C1898803
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 09:16:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 20A941E1A14;
	Wed, 19 Feb 2025 09:12:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RthxzhI0"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C05A1CF284
	for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 09:12:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739956322; cv=none; b=Y/ooONZWOJi2laTrVEpiMi5xXwLCha6GLSVNTWCKAPClFayulseEIF1Jz39MfcuFEi8QCaDtD79Ls3ihEqkgO1712bCQIO1lxc3a78a77WO0/15LxROLAheDy+kqCXZgV7dqtokD33GXAdk515zl9TBZJLynOi1Rb4qY408LpHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739956322; c=relaxed/simple;
	bh=pqdqicKugu6SrprJ2ukWyHWA7wIefRERcYkP49tq4X0=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=gAcLQbbxVLEEjtAYVPhjk27RW6nNafOkOJBSP6SkI6MdbaGwDksBYy/ppfy0HLl2rVVrUtbrm5m8S2btUhwGJHcxpp3rDW2WUQFsE5sRAAlmv6B2f6VmBW2MTPJnf3+/uGPuKcSTVZ9jOE0TBDld1qxWSW6wglR5XA0T5oMDQOM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RthxzhI0; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51J8jiL0002872
	for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 09:11:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	RWf3hyFP9qHu3N+TuFQ4QO5891nOTUFYzZallVfx+Hg=; b=RthxzhI0ikeMV5qF
	oRwLSgv0b4EMML3CyFC3/foB8KEMdXDplHcZVyqW8HRNsSyS0bTMWtIyhJDfe7jN
	ktUHCSsr0jguNQnCaBwcg8UhYEQ3GDmfKB9XXei6VLAGakZPlM4ayl0sMDsNyD5l
	cOIy1wOrzWanUHBZHVH3jNujkXW80DscOklkNqNjQAPdhzUyq3jQs15Di6dwIyHN
	gvaD5z5PdF6VCcLc7lErGD3u0IgdlyhIXjtwEkW25krPv9wyXFn0w1R6VwCVKJW9
	Uf8AFultERoKj+aWO3NMIt96qms0SyJ+JDNAQcSyzLJ+hTDFhBviMuhD4C2umA0X
	gNGLog==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44vyy29vtj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 09:11:59 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6e422f1ceadso13562706d6.0
        for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 01:11:59 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739956318; x=1740561118;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=RWf3hyFP9qHu3N+TuFQ4QO5891nOTUFYzZallVfx+Hg=;
        b=mHTHsXh3S5yXkkdPHWGHVJMzuG4SqZc9q4KtEkAnaIuMecwGCrG6a1BSCUSb4bOgLE
         h4Wc7de4lm+M+1ml2mI5p59NQ99UweXBNY2RT6t8enjCBYt8FYOC7t/LC0bEp34JYX4d
         QwfGOBD3IjtUJW5R8R4bDAeyUCvIhJ7UrfdMAjJB8LJoRWSvhJam/FJJHjY8ce6f/DnI
         66gB72GbHtNbftVmMFwcUI8MWOeahJpYUlaAcjHmbv3/IS+DlfNsOl+rEt2d0OtNOaNU
         K99jbGqDla5khZBldnn1ZiKQIy465Jmxfa+XdRaCZ75eMfkKnN8RgCJhaQh+QNlR8gGH
         ySaA==
X-Forwarded-Encrypted: i=1; AJvYcCVAkD6Tnr2N3zc/zs4RTD7YfxYbmmZkSNsVnzxpa+xP+5s540gAYjcBfnipxN6vE/f9slZIZ0airvtM@vger.kernel.org
X-Gm-Message-State: AOJu0YwRiutHa2jnPtP67AdvkX1GEhvJ/4rXd10rkreiCF9fCokwxH5U
	oKh+JTHjlTXhgKzkQxlIiJoiYgBhhxg/hd5iouWBV4RDEF5Z9I80eCJ9yQLIiJZNJKX6Ai0Dt90
	HBWp1DffKjDm7dQ9aMw8UaziLRc76sclIWsv05XO2l7BN7LlVvIuKbkhwfgGR
X-Gm-Gg: ASbGnctnpVkcmCN6iKQcPepU63V5ZASb9LHEPM6TbeLD/7pLbQPuIFi28Z+y3tiB+IZ
	qveN2WJjbUlS0k+1IttXyEZ4lX5eRJ4tjKzzDuwE0of/9he4cdYfWgf8zT66hr+rAQYp8kP/yqZ
	a61s7G+ANLA0P76qe78lO+r/i1kHbD1Gto0CBB+U0CLcgCgSP5xDjxV9HYpV7oVAD6qHfstIBg9
	czYgSgE96Q2EwFtepX052gPMZlnMgZgdUHHUSCc+AIVeH/kT4gnzwv42GbC+8l6gDOcNnPjMflR
	8T9FIQ17aQp64OxmI3c8irsTP03JaBH25LYpEXA3CjOg/jRNDVmzmszP68U=
X-Received: by 2002:ad4:5942:0:b0:6d8:f750:b2f1 with SMTP id 6a1803df08f44-6e66cf43fcemr85064236d6.11.1739956318366;
        Wed, 19 Feb 2025 01:11:58 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHh9qfRwSyNI6u3E0QX2thSjqiSHPbSUsOa4hdyGF7Wzxw9q2KMY9CN/e7qnLI2UuDgB5hIjA==
X-Received: by 2002:ad4:5942:0:b0:6d8:f750:b2f1 with SMTP id 6a1803df08f44-6e66cf43fcemr85064006d6.11.1739956317671;
        Wed, 19 Feb 2025 01:11:57 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abb8e0c38absm654189766b.77.2025.02.19.01.11.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 19 Feb 2025 01:11:57 -0800 (PST)
Message-ID: <3e00048d-ffe3-4594-9e54-ccc1b2edbe8c@oss.qualcomm.com>
Date: Wed, 19 Feb 2025 10:11:55 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 1/2] arm64: dts: qcom: sm8750: Change labels to lower-case
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250219090751.124267-1-krzysztof.kozlowski@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250219090751.124267-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: EkxUgZHRTbbMNCLAVMkDVitmiH-wZ3_M
X-Proofpoint-GUID: EkxUgZHRTbbMNCLAVMkDVitmiH-wZ3_M
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-19_04,2025-02-18_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0
 lowpriorityscore=0 clxscore=1015 adultscore=0 phishscore=0 mlxlogscore=875
 bulkscore=0 malwarescore=0 impostorscore=0 priorityscore=1501 mlxscore=0
 spamscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502100000 definitions=main-2502190072

On 19.02.2025 10:07 AM, Krzysztof Kozlowski wrote:
> DTS coding style expects labels to be lowercase.  No functional impact.
> Verified with comparing decompiled DTB (dtx_diff and fdtdump+diff).
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

