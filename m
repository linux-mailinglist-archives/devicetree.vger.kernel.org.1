Return-Path: <devicetree+bounces-155670-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 47E14A57BEB
	for <lists+devicetree@lfdr.de>; Sat,  8 Mar 2025 17:27:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CB896188DFC4
	for <lists+devicetree@lfdr.de>; Sat,  8 Mar 2025 16:27:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D070E1E5209;
	Sat,  8 Mar 2025 16:26:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ArfQomQJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 65BAD1E1E14
	for <devicetree@vger.kernel.org>; Sat,  8 Mar 2025 16:26:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741451219; cv=none; b=T2SSvsj1Ghi9ndFkGRnmULLEbLxb5OTWSEgsf7i4wNQxse3xdGVHNkhKXyHff0DDpo0UHhqnlOIqnF6vtvsWo+lEMXFJ8mekpRcA4yjam7e9a7eNNGmXd3putWRYvRjbsS3Vi8fQMe3JWZzRsimI73vrdQ9M4xe8VkQLBN/9aPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741451219; c=relaxed/simple;
	bh=+yeAi6o63XZJNcGLjqaeE8KAaksS4jx3rCm4s7/i3n8=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=hCcoG5FlWTGX/ip2PwhhbR2+kCc5bW/9HW2HbWeHwWW1lC7PUv532fzW3zOYDj0WHAm0JrBj+YUqik9cfHaAMymZXOPhs5k+X25W4HABKG0My4UR7APHdm5PYoHxfoSgOWTtSVgvWLIuasddJrdWQFY3ANzhpHep3iwL9DyLwLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ArfQomQJ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 528AZl9F017701
	for <devicetree@vger.kernel.org>; Sat, 8 Mar 2025 16:26:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	UYF+00qdv9WUI0wGaGNAnqHDXSMxquIebpmxvyOuOV4=; b=ArfQomQJKYD5e4jG
	QgJuqgK9lzg5kS0kaBo9xezwzMEWi+kb+4dMC3nbX7aYPU0jv1HIRIx5QOxm7BI5
	jyjrsk7kro+4hxr7wJPGVRrQ20HUsYplfGwA6fIyesUNKFih57OWVM83YmepPGlJ
	rscVX02oOMp1FWtb4Ye7l/zU4/4ar2r7sKm6l+9SSSoSg0vwdPLC4uqTsYpGiPTd
	rsTFCcDtjSSUFdHmQMgs11evOft3h9LV5y6kjQG1J7O5pV+P9L9gotaBveZTzUHO
	72zAbjOz6oqASQp9PD6JICFk6Ic13M8nxmXaoY3KVdgOkpd939yzT4G3JC23m6OK
	H3vXyQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 458f6a8tmp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 08 Mar 2025 16:26:57 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4766654b0c3so2307441cf.0
        for <devicetree@vger.kernel.org>; Sat, 08 Mar 2025 08:26:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741451216; x=1742056016;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=UYF+00qdv9WUI0wGaGNAnqHDXSMxquIebpmxvyOuOV4=;
        b=PWzeEYQfTYchPtny7MPhsYUu21U0AzUxQA/cuDHdF7Yk4+pG3ELnT5jxuESW6zg/67
         YE+A717eZemRsr4XhtC6tDBakIfixa55dufIg3d72zrmas6L3vX/DYnBHq9yqteZ19om
         p1wIhfjlnHWGgNgo4JP3Yq57/GUXM+D3PyhNsdH4rZklcgw9rKrS650/5qkPNqInux7b
         zVfLUCLE5b+ddGPFG9JemMwprL/0uYjTsyi4ZkBNrqjGGr0CY/DAOLtZcx6QxiwANwgW
         y7HMLPu89RGVRa5T0TAuIW+YWM0bZxWXyJN4Kf2Z4lHL+ESMCDxSva0AtG9lWTsy+bgA
         4rYA==
X-Forwarded-Encrypted: i=1; AJvYcCUMJ1eqOFUS1dERIK8UMMdr1Ty1HQw8G6F6oHILP9YKjiYAQYpTEGFpaiaf/KNF9lAo4AOgzdjvMZmQ@vger.kernel.org
X-Gm-Message-State: AOJu0YyP6ggGi+vTRM+MECgaGQ2bbKs0wr0cVSieQ6rt2V8zwntAKSwG
	T7l/uVnYxqsAy+6/AWlmg3CBN1wnenMk4l73yNtTIsmKcQgl48H0v/MalUmXypvmIoedXOL2HCV
	7EABOYSJnjt8FOZRiU/v7vpbD5Jw/Zfairpsi6SkhWHszNG8wDbpEDy5FZvU4
X-Gm-Gg: ASbGncuekiT+ny/lLTXszK7mm+RN58B0AR73JZEsoAZQZawhp8Kpq3BiXs+vV/azl9+
	WLOWK/qmv1jyZ5o6pxWRxix2pBtcDkgHQw3p7ayCZRkmwA2PSITfBDfsBupWplqwPGd1Q+ZGNcs
	7w/uk0m4ORO32SHmdA4jPz+3ZSJVcYlbuIKqVuvBWmmGvs6/eGud3lGO9EqYoeBWRb1QdGggM7S
	I5fnE8AuSMJLC2aft06+4IiGJCCsXFckJfZfg6br74+qZbp+IEfdX2ifzvPUau/4iDiD/UIVhD8
	aEUEz03NzV0+bX2JxHtbtvW2NFwy1QmI67kNdvaD8t3JdiSTVs3JkXT0c9b7B5qib4XwVg==
X-Received: by 2002:a05:6214:5289:b0:6e8:fcd2:360e with SMTP id 6a1803df08f44-6e908dc1841mr16900886d6.8.1741451216506;
        Sat, 08 Mar 2025 08:26:56 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFZUnjdtmN4WApyPfmK9L8Dh6PaLf1jZkg4hkpD/S0iWGJt7PYVvTxd9gHzPjPtmCTD02+yrw==
X-Received: by 2002:a05:6214:5289:b0:6e8:fcd2:360e with SMTP id 6a1803df08f44-6e908dc1841mr16900766d6.8.1741451216217;
        Sat, 08 Mar 2025 08:26:56 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac28847a0a8sm12558566b.119.2025.03.08.08.26.54
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 08 Mar 2025 08:26:55 -0800 (PST)
Message-ID: <05c85f64-caf9-434a-93ce-08e1689ac980@oss.qualcomm.com>
Date: Sat, 8 Mar 2025 17:26:53 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 2/2] arm64: dts: qcom: x1e80100-crd: add gpio-keys label
 for lid switch
To: Johan Hovold <johan+linaro@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20250307171222.7470-1-johan+linaro@kernel.org>
 <20250307171222.7470-3-johan+linaro@kernel.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250307171222.7470-3-johan+linaro@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=WsDRMcfv c=1 sm=1 tr=0 ts=67cc6fd1 cx=c_pps a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=Vs1iUdzkB0EA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=oWCs7g1MS80FOPW87D8A:9 a=QEXdDO2ut3YA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: t-mJdUiSAReooLFG-3V-Sr6Q8iSeVQzQ
X-Proofpoint-ORIG-GUID: t-mJdUiSAReooLFG-3V-Sr6Q8iSeVQzQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-08_06,2025-03-07_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0 suspectscore=0
 lowpriorityscore=0 priorityscore=1501 bulkscore=0 adultscore=0
 impostorscore=0 phishscore=0 mlxscore=0 mlxlogscore=974 clxscore=1015
 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502100000
 definitions=main-2503080125

On 7.03.2025 6:12 PM, Johan Hovold wrote:
> Add a gpio-keys label for the lid-switch for consistency and to separate
> it from the volume-up key (e.g. in /proc/interrupts).
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

