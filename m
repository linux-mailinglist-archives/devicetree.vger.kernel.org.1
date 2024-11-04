Return-Path: <devicetree+bounces-118776-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C7D29BB835
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 15:46:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id ED6D21F23347
	for <lists+devicetree@lfdr.de>; Mon,  4 Nov 2024 14:46:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE9011BBBD6;
	Mon,  4 Nov 2024 14:46:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="dnUrk4ps"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAEB470835
	for <devicetree@vger.kernel.org>; Mon,  4 Nov 2024 14:46:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730731570; cv=none; b=Zx0f4+/+Bh93cBWCrSiueDhb6cNxb8JdjpNTBtBea4pPXsyMfFXHoTULlFsCF1clioJt13D5nFVgRCEjpHcnXffJ7E/Z8tXOjjer4Rm5y88ozrK3iIzSZuS5+YnuqpDhVaRIr++2FPBTthV3bP8ApOqjpSmjot2exYy9zdMjc3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730731570; c=relaxed/simple;
	bh=ri5gKANv6TvUTPl9+9xRfhB8LDqHtD0yB8YlHumIS9c=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=h2P0rvdECkCMd9QH47FITj4L6Wj6AE7UaWHmD2tlmzD46pMqKqoRdvzheJNBrv1Anb5P6ubKyC50cKmikojdGYTq99rHq3PX4w/ddcMXjXvPG8L93Fdq7InDJEnv13jdL1OEZ3lxiEAsZLqkG84im68/Q3Lqp2bRxSp+/+7xAro=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=fail smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=dnUrk4ps; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 4A4BYlH1001294
	for <devicetree@vger.kernel.org>; Mon, 4 Nov 2024 14:46:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	iEq/Fez3KiO14L7XUIPT1fn4g59MvDWGnwPCbPiCdc8=; b=dnUrk4psxz61ql1d
	XTAu50K15rdAPnpWd0A9Whx7RVc9UH+Mog/DM6oiw4kFxB5A4tgQugcPW4hr5erg
	1ICb6mCY68H1TP9y+GLQPnf5K2Rzx528BCfaegzZWkXRhDZNYBelfjr9C1ZEZLaz
	FpRvlTe0OPOMsT1zGwpO1W6a4/2E4TuGk0AZrPM3ZFIoOEbAcnSaODX9TrStjGKD
	+Do0voXrDhMTadRVzNq8wNFrcEvcK6sU0sFUr3NGfb94WXKW6td6ahHPfV0XdyRK
	9nWKXdmtUiYiMW1bHYdvOfDNWO6YxhrEcLEjGcFZRcBcxoC9PlPIBzH2kvzr66QG
	SXNkHg==
Received: from mail-oi1-f200.google.com (mail-oi1-f200.google.com [209.85.167.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 42p5ye2pg6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 04 Nov 2024 14:46:06 +0000 (GMT)
Received: by mail-oi1-f200.google.com with SMTP id 5614622812f47-3df19f2433cso60478b6e.3
        for <devicetree@vger.kernel.org>; Mon, 04 Nov 2024 06:46:06 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730731565; x=1731336365;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iEq/Fez3KiO14L7XUIPT1fn4g59MvDWGnwPCbPiCdc8=;
        b=ZivNTNaVjxJoSL6ElZw/x4VQtn3y7Yb1SSYdzwvIuUAomej8CmDHUgJMSJrHp0v4Zf
         jRv6N373Bn6eM0luzEU/8CiVN+qXnxi9zfHqDyWBOsNVgaperoaE1QBYEkekuvAqYUJQ
         kT5OpKCV2yS4ztuJ+LoKwpL3YtZToCk/IV6nfyQhh1UO0xOs/fRbkcmzwLctLEsWJtof
         S38ZkXK0BZeAf+IUVSSXPGmt+qabaEJZPU9hgkzh8Vo8YBU5YXNakAxBoykOJglt0VqE
         +xIGnhG5wy5tLKRGZITgk4xDj2ADWT4GpfHeML35pwfj9wuxBQ2WRoeCb4Zh1kAmTPPG
         rK4g==
X-Forwarded-Encrypted: i=1; AJvYcCVRxkP3VSBLCGha9xMmREudwGxHGunwWqhVuL5v/jeFe42fwI/ryRK9a/KxeG2AMoXoTJlX52HgO95q@vger.kernel.org
X-Gm-Message-State: AOJu0YyWy1UkDlhYvohcwH9aMI33SHK/I9NsztMOMQLNf7dPygk52weK
	9ztQY8upUHq/ldQgTjn9UMygu0AKgKZAx7h0+hNtf0enEpIgaP6Cxtr2pAF8pSA5Ya/eXdB+CEF
	qUCr6U6+2VOtQDf3mpo3JLpFtsDvpPwF5FpU18thSyyWzohLB2bxodWh2H0Rc
X-Received: by 2002:a54:4713:0:b0:3e4:d640:7449 with SMTP id 5614622812f47-3e638443fcamr7064336b6e.4.1730731565117;
        Mon, 04 Nov 2024 06:46:05 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGjt7yLH7obj2yJY5lX8bMi7SMYsNafpSge3M0yoLdMOlcEwQ3eZbty9K7EcZfKV6+orGjU0w==
X-Received: by 2002:a54:4713:0:b0:3e4:d640:7449 with SMTP id 5614622812f47-3e638443fcamr7064299b6e.4.1730731563300;
        Mon, 04 Nov 2024 06:46:03 -0800 (PST)
Received: from [192.168.212.120] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9e566797a7sm561800866b.190.2024.11.04.06.46.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 04 Nov 2024 06:46:02 -0800 (PST)
Message-ID: <f0863c6a-44cc-4709-aaab-a089fb6620e6@oss.qualcomm.com>
Date: Mon, 4 Nov 2024 15:45:59 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: sm8650: Fix CDSP context banks unit
 addresses
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Ling Xu <quic_lxu5@quicinc.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20241104144204.114279-1-krzysztof.kozlowski@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20241104144204.114279-1-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: XhcT32eyF2-l4YYBEhkk8ANpGOkaiLxI
X-Proofpoint-GUID: XhcT32eyF2-l4YYBEhkk8ANpGOkaiLxI
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1039,Hydra:6.0.680,FMLib:17.12.60.29
 definitions=2024-09-06_09,2024-09-06_01,2024-09-02_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 bulkscore=0
 mlxscore=0 spamscore=0 lowpriorityscore=0 adultscore=0 malwarescore=0
 suspectscore=0 priorityscore=1501 clxscore=1015 mlxlogscore=999
 phishscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2409260000 definitions=main-2411040128

On 4.11.2024 3:42 PM, Krzysztof Kozlowski wrote:
> There is a mismatch between 'reg' property and unit address for last
> there CDSP compute context banks.  Current values were taken as-is from
> downstream source.  Considering that 'reg' is used by Linux driver as
> SID of context bank and that least significant bytes of IOMMU value
> match the 'reg', assume the unit-address is wrong and needs fixing.
> This also won't have any practical impact, except adhering to Devicetree
> spec.
> 
> Fixes: dae8cdb0a9e1 ("arm64: dts: qcom: sm8650: Add three missing fastrpc-compute-cb nodes")
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

