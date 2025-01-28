Return-Path: <devicetree+bounces-141435-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 27ABBA20AF7
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 14:07:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 72CAA1882946
	for <lists+devicetree@lfdr.de>; Tue, 28 Jan 2025 13:07:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A6291A08A0;
	Tue, 28 Jan 2025 13:07:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="h0o5qczS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D8D729CE7
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 13:07:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738069634; cv=none; b=J2Wr4QKRkB/P9e5rOiDH1JswSrB0ii9+qN/lV7WLBUwZoy0XTLh9Oev1LuHPZBNSVyqrirazLyZGyqf5ChAKtre6u3233XCshsn/m8Y+fbJOTaEE9F9n5WqnfaIIQw30sSadPxqt55/EoCAQ5eoCW1Hc+bOD9kqsRa2ip+X2sDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738069634; c=relaxed/simple;
	bh=GDaU32EvRHRK9wGedA+BAdNlFaX1nqXnybQQ8LCDip4=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=iJj8hkuWRwbvOYHlD4VXUbJRpC89ZOwFqUwFNy0ekkQ0rGZ3ILdoq6vZTDgtjXF3p999aTNP4ed6QrejFuIYrPDEUdBJ+Vlnkn30+059i8bf6zDKE6eIgvm6TyzRa/NMw039PgDtPZQtZPJQiH2DWtyTeizV0LjMTPRYMF/B2d4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=h0o5qczS; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 50SASbm4032380
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 13:07:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ZoFWNZjjtn3S0JbX52k/k5VcMwMNPQrO6WGv7ON35pI=; b=h0o5qczSW4IJ0rxT
	hp+1T8/r+Iq+y2+mZwBOx6sdZE1HedPB2AeEGxB+f7n1YapRKRppFS5meyFQEXCc
	YPJA8tNpMtz6txtM5I4ktRmEsK5EOyTubiWyYU0hCVk/PO7z+wyPrXR/u8VgRrWl
	EtN5AWI0ZVucZCwdtFTH8KUCoB4s6GlUGECUyNxi/wshTwfupvtTU+08+DSBX+w4
	/qHZw+fTemVvpoUPTsN/p5M7R2CwldxO0aC3pe43Q5nx14ohyDpoC4sAMY0nU6hx
	wFicjF9c/fr4zFHhuwZ1cYxxDP+DUiUdSiNHiTzybeUdp/vXm4/7paTQyzVazJY1
	aR5jVQ==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44ewh48bd3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 13:07:12 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7b6e43ed084so115765285a.0
        for <devicetree@vger.kernel.org>; Tue, 28 Jan 2025 05:07:12 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738069631; x=1738674431;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ZoFWNZjjtn3S0JbX52k/k5VcMwMNPQrO6WGv7ON35pI=;
        b=JTxg7J2GJolv6nOKcQncD6b4w7c6X4qZid7iYdbJOJumFA7QQOect/PutDg6rtOc6q
         RNpXmCf1jdmx4OHNqmfUAcdD7AHLU3iDaQwNjukQcG77M/PoUFNmGqOMhQYfeD5u5Pww
         sljHBMXAR+0NoVLkJr0qbITwCMSRjZlxaIT2xj1F74JBZpSP7frB4/8DUEJLi1eXZGhA
         C1MVLIK8B5YNZNpu/I1pdujeSkAkEo1OT19EQQrfTYFgJye7x56gyc95l38n8uIr3X6v
         mK1GDgZE8gsmqJIKu43wspRgeXfTgRvr1AUukPbbjpj6U40/m9PUASwlmdGwD2hfnZW8
         o+PA==
X-Forwarded-Encrypted: i=1; AJvYcCXaUVNFt+UKNaTw4kqYhYuQW+ytVXww8a/xUrFiJM+jVI2SR3LTe/ODgGtbAswy6u8iaOtUGcCxx7gn@vger.kernel.org
X-Gm-Message-State: AOJu0Yy72aIU9vSskYVBahGVljm2L7eEXfN21fGNGZJFDJaF9rbdP9Go
	zIr60bbjBZZyNC3DuXnOOz59h7owZxLz7mDyw0FiUlJ5zNgiIna+QJLwyMQhFZvqkf9wx61rUrD
	H1dffuW43yGVg0Gh/f9T0RlBHIzEd82CvZSFx2SeX38lio4M9wQJZyF6+h70g
X-Gm-Gg: ASbGncvw5ykBHVPmCX1hMGtEOHBQwYegMjr2xF6OQJIDj+wu/hfTicnTSDGdAQv9Yp9
	ySazqjv5JMgmCPgXjLwPmpujAyMVHqcdwc15i8kaFkDwyKwc9wZKYUFTuqv8qf1kx5y0wDEdsj/
	1EUGKGqXFbnBUVPizjQbvyNmGslT+2V0BWq6DXUZZ6Tmsb9/ZuZBKho7qS8E0ZQ2bV575+XnTPW
	kEUfOioWN/fHLyEIltPvoxCRRSk/lktVajS5YmTjq47eWzYXDoTs4tNOR9rw7dxghsNbZ1yp2P5
	BpQRyBihBy7l0r5NV3+3JiPQJC8Ec+nHWk2cc9RER8YX6JnY128C2AuJSu0=
X-Received: by 2002:a05:620a:254f:b0:7b6:d089:2749 with SMTP id af79cd13be357-7be63208909mr2288223185a.7.1738069630861;
        Tue, 28 Jan 2025 05:07:10 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGJcXi/KqHTxoK0sFEd+b2WX0zBTMQypEIaYX0c3DTXdvotIgOtYQR6qy7LV9eSiuhMmxo2Gg==
X-Received: by 2002:a05:620a:254f:b0:7b6:d089:2749 with SMTP id af79cd13be357-7be63208909mr2288220885a.7.1738069630448;
        Tue, 28 Jan 2025 05:07:10 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab676116951sm768227866b.169.2025.01.28.05.07.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Jan 2025 05:07:09 -0800 (PST)
Message-ID: <d855adaa-7670-41ea-b8d3-a117c06190cf@oss.qualcomm.com>
Date: Tue, 28 Jan 2025 14:07:08 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 07/10] arm64: dts: qcom: sm8650: add USB interconnect
 paths
To: Neil Armstrong <neil.armstrong@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250115-topic-sm8x50-upstream-dt-icc-update-v1-0-eaa8b10e2af7@linaro.org>
 <20250115-topic-sm8x50-upstream-dt-icc-update-v1-7-eaa8b10e2af7@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250115-topic-sm8x50-upstream-dt-icc-update-v1-7-eaa8b10e2af7@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: nWZeBbzb2xXMdxFnwPgcWE8ztXMa2O1Y
X-Proofpoint-ORIG-GUID: nWZeBbzb2xXMdxFnwPgcWE8ztXMa2O1Y
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-01-28_04,2025-01-27_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 bulkscore=0
 phishscore=0 suspectscore=0 spamscore=0 priorityscore=1501 mlxscore=0
 malwarescore=0 adultscore=0 clxscore=1015 lowpriorityscore=0
 mlxlogscore=610 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2411120000 definitions=main-2501280100

On 15.01.2025 2:43 PM, Neil Armstrong wrote:
> Add the interconnect paths for the USB controller.
> 
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

