Return-Path: <devicetree+bounces-250159-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id D0CB6CE699C
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 12:50:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A092C302EF7A
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 11:48:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9282C2D594F;
	Mon, 29 Dec 2025 11:48:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nV+sZL9p";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jLgaYJ+I"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37FD02D5C61
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 11:48:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767008908; cv=none; b=vBjcVhRBYlgQiRTmxPBS9VNAikA65BIgexpNW6VVUA4DAEKCPQMyYrZrPewMwNst6iwL9kDwF91RQyvd8xYGltMkMXWzvQ/2TmCDwQ848Raw9hcetnjccKxi393lN2D1SR7z4NKvSI47Y5HNm3QT+QSyRgIXI9RJZgldldL604o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767008908; c=relaxed/simple;
	bh=fbErg+DAWCcYhV7EN7duW/Ip1YxF3oLKzJejmVLo95I=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tCiv4Gd4HSGrTk/+6dTn9pGeCnJVbWRA9gVFQ8i8E02dGhECKMWwucxHFQeJh38nK0MWIn0KEH8DnMfDHoiX/+5f4nf4Pw4c0cFq7WkPwCqhiGnJwDKLEHjSYZxltwUXSB3tg2nBDa1DdQ9dwjKyqW6EqZqGGeVn+xyQ71mV6mA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nV+sZL9p; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jLgaYJ+I; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BTAND9w4107603
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 11:48:26 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	197vYatdgxzcBa15cIBvM/1x4eTpxhjqkNIKVJh5980=; b=nV+sZL9pVVZOMhlG
	lZvH33EjC6qOkdIbU2fX0wQ55+UagwgArCVaqP9EjPWoYeIdFAEdVYi7KkGhLZrq
	t/IsuJFOoaFt7ld/3otXz8x3+kFgdbfwhT8vcE204fxZTDLxv7zxGmpZHUguGKIT
	OQbK3O6HBdAGIZGcl4FrknFQl158YPyCpt8lcRvLBEG93WgJ7A7aD6GbOC0L5Nam
	+IQ4ESlVdZICg0ZAvmw5eFySwZQ8pSgiep5lxkqYRek+gcbWTKyjXLI4dT0S38dn
	bjj6LmuRVqS+z6w9++P92M/JKEzhxI7dhUC7kSjuFZ/WydF1pminakXzuTuDC2KU
	bu9Jhw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ba87bv89c-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 11:48:26 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4f1aba09639so26973171cf.0
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 03:48:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767008905; x=1767613705; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=197vYatdgxzcBa15cIBvM/1x4eTpxhjqkNIKVJh5980=;
        b=jLgaYJ+Io2u1T5wQjMP3rKM2vkPJPxk+wYEH3+kx/5DArNLHrShrzeTUkzEURyLgF3
         v8wIJf5hFCBuZIxp232WWSp6HjD3zISfile1HjhP6c4RpnTr29NMXhWq+L3RisDr9gkD
         UT1KgaxBCLnGz1vpwyoitvB4oF9Iu5uvwLwuE/aclPs1JPcDnOPEPuBmHzaS1eybYg4F
         BLS1cWm32gwfxVDwRgWRKkNpSLsZNUTHix+308Tk6yM4vcXlrOZj1VYhoVoLcQ6671Xj
         30vxc2GRE48zlz0upoXIb+nm2nCUdT9SFYliC6ZkDSo21jjbU2mW6vM6h1ThnI2qI9g2
         vhtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767008905; x=1767613705;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=197vYatdgxzcBa15cIBvM/1x4eTpxhjqkNIKVJh5980=;
        b=Q7OqBPTH5j8geDegEWfyTpcNWLSl/vqE6RlxonSY1uzVq4oqOzl69FF1aswvEYZYQj
         rrwCPdfbOpRA77TF7KXbyQHQ8uU76YExYrnf7BBSARpld2No0Jp9quWRlJ842L+oFINt
         nFeQhmFPL0C1NqgWBwI9i2QrfEQqTf627DpLYDshsdubHylv3RoalJtjxHE4o3N0doIt
         RUK2B9BMGFDX0kt+GWVUPi3duAvHGswjeUajAQMEQLteRaa6FQ5sQVpG7PugDc0ab0D3
         sDtkNRsV/aBKncxhP+qS5gBTPckch/j5b83JrVcWe8+fPIp734Ysj7j7iSDEsgNHoBji
         xmdg==
X-Forwarded-Encrypted: i=1; AJvYcCVTAN+3igd/HI6bF+ZINefToFlLVp5QIrcNjTXhsGQgFt/6tSBMEOvT1MQvpE9u2bmNCH4aDkgsIyug@vger.kernel.org
X-Gm-Message-State: AOJu0YyeW4xA/33Tmj0zHjbUD+jsyo4EbXvIarXz1lFYDvnh+kRuWpIb
	pSkZhbXxjb5s1htKQzu52QZwyZJ6icgGVFP6zLeXjdAg5fUULICq7mNnv+4rn56cg3uqUmfKzxU
	gNGZDPyfh/ikFOn8sXnYS2j1cLVLkgwGdJy/20MLqh9f5Se7/Kyq6Bh0Js5v4Hq9o
X-Gm-Gg: AY/fxX6B+AIdCsNM8u2ytxGOf9qz0zZNA340RW5eVRoSRdsDcZFOQZ7sVY/YiNub/hc
	WfzxbTHbEy18g9Z8HVAdJn36L9MVaEIymoqAVw527L+c90uem2dbj5XM60ttqyk4EsclnXKHozc
	9ln1kCGNh51QuRFuya0xWOEnoSI/OX64WRTU9a/JwlYwe09+hPTX8UT5QPG9/to9YJIiQrugCzz
	VFtLfuXbpXn0xMvcYP3s9NEKGb/0EmVHkYzi87aPD+hwAZT+tUT6JIHLLOo8ThdyE0jpT7DQFKa
	Y5W0zABQghg5g+5u2xWhurh0R/Yrt6+W6AaqKwIsxr+8trvGoRelCLRcQGUFudW0MzmLnjciGcA
	yEsGBE4lIxep+V7qV9o3yy862269naPqjVTIh1XKST4rMgkg9C3qVzQtNrUD/eZpTpg==
X-Received: by 2002:a05:622a:87:b0:4ec:f9c2:c200 with SMTP id d75a77b69052e-4f4abdfd1ecmr314602531cf.11.1767008905272;
        Mon, 29 Dec 2025 03:48:25 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF1P2FyJAMSSx6XzaoQprEUStNYsVSCWjAZgWVJEifL21TGZpMhyQBU1RbwOWaNYz3+xX4sHQ==
X-Received: by 2002:a05:622a:87:b0:4ec:f9c2:c200 with SMTP id d75a77b69052e-4f4abdfd1ecmr314602371cf.11.1767008904785;
        Mon, 29 Dec 2025 03:48:24 -0800 (PST)
Received: from [192.168.119.72] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b8037ad8577sm3297200666b.24.2025.12.29.03.48.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 29 Dec 2025 03:48:24 -0800 (PST)
Message-ID: <7c13ed57-3ae8-4dbc-9ee8-472a84e2dc40@oss.qualcomm.com>
Date: Mon, 29 Dec 2025 12:48:22 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 2/3] arm64: dts: qcom: hamoa: Add the APSS watchdog
To: Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck
 <linux@roeck-us.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Rajendra Nayak <quic_rjendra@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Stephan Gerhold <stephan.gerhold@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-watchdog@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20251224-arm64-dts-qcom-x1e80100-el2-add-apss-wdt-v3-0-1801c55d2883@oss.qualcomm.com>
 <20251224-arm64-dts-qcom-x1e80100-el2-add-apss-wdt-v3-2-1801c55d2883@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251224-arm64-dts-qcom-x1e80100-el2-add-apss-wdt-v3-2-1801c55d2883@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: NEKsCdlPOOl0fMwaSYibBzzDpK60c1bt
X-Proofpoint-GUID: NEKsCdlPOOl0fMwaSYibBzzDpK60c1bt
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI5MDEwOCBTYWx0ZWRfX04EE43nvgajh
 ahFe54FZzDpliTOZXxsctSePXtYMjySEyW+eGK0tGZ4kbNCpIaYiWMjGHpXIT387ud18qUjXJ9d
 y6yIC6zNGRumA4Nx44F1Xx0Y0XF5Sl3YXvJ1CPTWIRVC87lV7T0nZKxNdiorV0SpLbhzGiSwyt0
 jzh73HvQdqs0lT5MZFwDVYAQK002Er1GQ/oH1qOF6dvUW+nuw6CNukxSIDMUIRhA81MZNeKumpf
 5iF020inNqK/boKgsXixKhry2rVWbwPTeUjZjzcrgS5hU4A0j+CiLxHuOksZbgTGJ5tCb5r5bXC
 fNF5H6POqunk0D8kDloVtxJ37V0A4RvX8ViPBM7oh5NvhjBykBDEtns7kKE4bi85QDdYlG+KHRH
 MOEk6+uX3TV4OKX5stZs8WljVzITUstKhIDZxjn1gVAHsZ5q6TNUkHvOY/WId9kKZUF8XUTpk8O
 ZWwwpc7stCVfs5MNdZw==
X-Authority-Analysis: v=2.4 cv=do7Wylg4 c=1 sm=1 tr=0 ts=69526a8a cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=jtJCHLo7aIGmxyxyT8UA:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-29_03,2025-12-29_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 bulkscore=0 clxscore=1015 lowpriorityscore=0
 adultscore=0 spamscore=0 suspectscore=0 phishscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512290108

On 12/24/25 11:45 AM, Abel Vesa wrote:
> The watchdog support in EL1 is SBSA compliant, handled by Gunyah
> hypervisor, but in EL2. the watchdog is an instance of the APSS WDT HW
> block, same as older platforms. So describe the APSS WDT node and mark
> it as reserved, as it will only be enabled in EL2 overlay.
> 
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

