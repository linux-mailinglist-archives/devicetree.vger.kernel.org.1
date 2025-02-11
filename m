Return-Path: <devicetree+bounces-145333-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B485A30F1C
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 16:03:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B4385167EEC
	for <lists+devicetree@lfdr.de>; Tue, 11 Feb 2025 15:03:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB5E0253B46;
	Tue, 11 Feb 2025 15:02:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cxOnScG2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3813D253B40
	for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 15:02:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739286164; cv=none; b=JqIhgRiLjFCQjPEO0OldiEMVMb/cbvHE73Ns85C3/0F69mwHZBgIBcaPIjFgwjI1pj2pTFVkNnRpydKp1CL+LFidRxjv0ewoVBnw3vSsWTAxbiGzk8WsMjzvZrjALepYs2/eiyHkb3+VnKt4/2CMBujsQ41M0YnzMZ54fXdXZ74=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739286164; c=relaxed/simple;
	bh=0MoAkeXGXl7JWzofzMauQ+F1BtvUSbi7MBO3YLF8uHs=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=VQ+dvlVFgyv/MlvQdNzEqp+siuuAfzjn4QbWU05zbNS66arjJqEeGssHwgXvGGCekkSajQ1IzRLtpCU5PxskXfsCcIVfAG4n/XWNEtGJ5naAO6xXeOHwn13tOslQQ+UVBn7sU0GAK+Ci+Ih4ySy7v2uHi8u5TJxAq9o0cT6EZto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cxOnScG2; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 51BDLscC008015
	for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 15:02:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	K6Q5hm1OPHRpoa4kVXD8cbwi81K5xuOqGMfiWarlgEs=; b=cxOnScG2MS/OL3Jq
	wy5ZpSpFLBMqDO9KZWGn2zTmKMVcDfTE16PHIjmTdhLSKfRvVj7jTdVrThdT7z/w
	FOY5GkK+lyYIx6p1gZzLwdzyli6G/t+Uf7H5Aik8mAtjWZOIyIHUdHV6cBA2Ju23
	fpmnoDCVb0lQqlHTKXFta/s3+3tbVPWHWw6Kcof4MckldGQydPIlfIjPgN02JUFe
	Owst2k+jfWimKC+2Dp2luad6dbWAS3D9cAd7KsXTDiK3pgSJsnvGZSdi6NQul7i/
	Zz3C9x9dK/kjaS2yilk8eb1kinWb5AcAjhjbT7Mbkkb6/JmuwL3JaZevyYbNmQly
	+oznBA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44qy4d9qty-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 15:02:42 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-46a32c5cdbdso1689961cf.1
        for <devicetree@vger.kernel.org>; Tue, 11 Feb 2025 07:02:42 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739286161; x=1739890961;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=K6Q5hm1OPHRpoa4kVXD8cbwi81K5xuOqGMfiWarlgEs=;
        b=maMs/kRY9X9C4rXMoF/TAd/e3PSk+07GrUBRvCwY7+/eiI9Fzcox/RSC6qkgxAiXb0
         nAdYy5kKomzYT6aHOjZY51WNrAL7zqj1SaE+72mYP1NJKwt75eA+2ScO7g1vwekCnUzB
         ICxOAvyexFl80CYOLxO9cGvnDVR4orl/R5+NifKRy/XDzF4KQ2dFLBsfBPnfJ7vLrAgH
         JBBUEriZ4aXBxb9nk0sVF45CQCphnqg3kb9a+XsE4yRbonNXa6SBKYQR/rwoUhueqYyd
         WFnEm5BCFqdSz4+WIw2GBUs1jTgI/J9CB9vY+3VoysgmUUADBPRQ9MgFwaLscu379uIk
         Z+jA==
X-Forwarded-Encrypted: i=1; AJvYcCVFUgJWFIrnkV8wpKgI4ZFtaatLDWVcMQgfxwE7BvK0P2Jz2EzRwfeyN8j73rWkDMePJuOoimGxpIHy@vger.kernel.org
X-Gm-Message-State: AOJu0YxJqdHb3OKdHqBQJqljBOUkFl4uVqEA0Z8PcmsJZmAQnEgHWMAC
	2/yi6D5utt1x4PlrwIvDci6LEFhgkkp9njyQjmDN1t7dAT2BRcj0Iudjs24vOb0AJp9jufKdsjq
	b0M3aksRUxxV4cDOWcm08LeqDKd2BiiCxfzm9FszLMI7rHY8fVQe/PEF8e/bAljw2Y3PZ
X-Gm-Gg: ASbGncvZa945mrJ5hWq4KxNy3HZr8mMUM8GDdVYg3fUmTMr0QthwwxOEcYhn3ix2neB
	F/dy1Zlj8p80safJ6rYhw7qa4IEySppeFKOF6IDfTW5M91IT0+P/Fiw6pjsJ29MxRcbS7f0FIN8
	OivdL99PYBNPeWP0PH3DbFT2zLUulsSHDyqtplUSYYVQiFhcQV83s6tClrHIyALfO7OEg3H9mRf
	1WnsBX4r4EfxOR7OH5D/RomHjsKo/dGQQfW9Q9WTTWApLVOy2Rk6sfL7ntgS/IReTcR6BxtxIXa
	br58sx5P44ezYbBvWL1y9lpzLVdqv0g7FtCI7z7wi3fZMGFbtu/yxRajOr4=
X-Received: by 2002:ac8:58c6:0:b0:471:9a74:f46 with SMTP id d75a77b69052e-471a3e27799mr15311271cf.15.1739286160806;
        Tue, 11 Feb 2025 07:02:40 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFqOTD4B6Evza60wAUfKUybCDvikPI7vVxr1RuQkYFD1D2hK4fwRjHabOJVHvZhZQTg+r3eDQ==
X-Received: by 2002:ac8:58c6:0:b0:471:9a74:f46 with SMTP id d75a77b69052e-471a3e27799mr15311081cf.15.1739286160410;
        Tue, 11 Feb 2025 07:02:40 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5de4e6d60bbsm7827843a12.15.2025.02.11.07.02.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 11 Feb 2025 07:02:39 -0800 (PST)
Message-ID: <e2bccf9e-0a30-4177-b3e1-996230151d3f@oss.qualcomm.com>
Date: Tue, 11 Feb 2025 16:02:38 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: x1e80100: Add the watchdog device
To: Abel Vesa <abel.vesa@linaro.org>, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Rajendra Nayak <quic_rjendra@quicinc.com>
References: <20250206-x1e80100-add-watchdog-v1-1-77147510c2d7@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250206-x1e80100-add-watchdog-v1-1-77147510c2d7@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: z2HP7WPZj1Q6HMxn2UXnbqUjIgBthQRT
X-Proofpoint-GUID: z2HP7WPZj1Q6HMxn2UXnbqUjIgBthQRT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-11_06,2025-02-11_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015
 priorityscore=1501 mlxlogscore=711 bulkscore=0 phishscore=0 spamscore=0
 suspectscore=0 adultscore=0 lowpriorityscore=0 mlxscore=0 impostorscore=0
 malwarescore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2501170000 definitions=main-2502110100

On 6.02.2025 11:37 AM, Abel Vesa wrote:
> From: Rajendra Nayak <quic_rjendra@quicinc.com>
> 
> The X Elite implements Server Base System Architecture (SBSA) specification
> compliant generic watchdog.
> 
> Describe it.
> 
> Signed-off-by: Rajendra Nayak <quic_rjendra@quicinc.com>
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

