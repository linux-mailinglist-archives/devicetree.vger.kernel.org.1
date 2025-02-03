Return-Path: <devicetree+bounces-142557-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 6BF27A25B78
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 14:54:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2CC8C1883B17
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 13:54:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49BC2205AD0;
	Mon,  3 Feb 2025 13:53:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="AmNuGbpu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C93DC205AA5
	for <devicetree@vger.kernel.org>; Mon,  3 Feb 2025 13:53:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738590804; cv=none; b=IX++n9V8eKf7gNGlJoPz65UKk0yZI6yY2fZ+N0tn6EU4qAFppDQnyvfLC7mE7rl+59/lAT4rP2Ls+zvmAOe6Di4Mg+Soasur1u2PAZrzKXlWjZPgCieED3MNAF1Z0knnkqrgwh/hHBezsTQHz0uLFs8QK1gMdifO06nXJQZCMjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738590804; c=relaxed/simple;
	bh=BDaTRPRB1+xDmux3TdJKzmueBfcUfMxtJ+8A1GnOBwE=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=HwGdQtEvcg8R+mNZj1Wq+8kDx++n39YXBWkzyqD9GSDfQ23YrUxZf5Vw3qaUZ3unjUnl5AahE6A+/EUSQ8k90/InkNqENUmnM/+ox1Ohg3VXTlAVFMyRlcn4iB3MGP8bQo8UOGrQtbkhRMkuyMkfNI9eYLbAO25dB1wqif23lTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=AmNuGbpu; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5135NjR9032022
	for <devicetree@vger.kernel.org>; Mon, 3 Feb 2025 13:53:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	1my9vn2BynZGg5rPWbUB5/Z05wI52PF0CqTy6aaA3E0=; b=AmNuGbpuWXWCJK2V
	7udmnfL2FzWril8doULY1ShjJcg94lhhLnQBwrSPNMBhromsJZ7JX9YQO+Y91qIx
	idVVvRDpMFgo6AMJWmkEDgnI/flO2NeAfFQ4GCr2/G8uvbU7EbnY9N4/A0ErpkJS
	DMieKKwaG9YZuPQ9s6tUtu760xePTO+YD3sUcgSVWHjZSmKccCwnjdk8k1DGV9Vs
	HDsTwPBYaJ6T/Fh5LrB6RiXyjl69rTP/YEJbKGUYUbQ4z05iA51CdbKN/3IQSmEe
	hYWJV++FuBlRvpfMN1cAB6q7Snuw3h3kDdKb5ErM7YDL/BbzCWkMVYR9OfK5/9qP
	lTw3Dw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 44jqm418ug-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 03 Feb 2025 13:53:22 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7b6e132c31eso20975485a.3
        for <devicetree@vger.kernel.org>; Mon, 03 Feb 2025 05:53:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738590801; x=1739195601;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1my9vn2BynZGg5rPWbUB5/Z05wI52PF0CqTy6aaA3E0=;
        b=ILUqBUfdEntrSggto85MQvoMDsAcS5qVRelzmvnuw2VCzq100COnt46aHrxeBsWhEc
         TAl7tCLXaX1zQnGe7ymWnp6oS0EuDWuTuXGfeUNeYQCFeSVu/KikNbhlFDmkErDqlKF8
         o0mVwdqcPiomNJgJ8+u/ZutxQdRPQ4HZ1klYxmZYd7He85v8c5AU0+tUpT5n+M3/HF98
         ZTHyp9OeAJrT8oSPFwqRuk3x1DbKiuJH8SNB6Mnjc0bAhSFK2DsNda0erbpv1HLo018x
         yYPdp/FIsukH3g+QClUG0IDyQkpKxJBp6lzNaRJONBg1TXGfUKSb8tat8Zh6/mSABD3L
         +zcg==
X-Forwarded-Encrypted: i=1; AJvYcCXPvaU+yLtkMmjdhBms91aWL7NzOTSdzg1DTV/k3BrRmFx933NCFPI0cgmNJ5P4sneuqIA+2QZ+KOG+@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8IZ3Vk96vp9MpU3mBRLXma0jMRD43xr+0awIXZn/iA3Fa8e9I
	mlL65TQyIhhx0yLmLuGmo7q9GlLa9i8R7NrqQ2tWzSRwhc7ufQDwxxp0z4mYs0X0SDKra6hmPXY
	ASjlfUEK/OnJgAAz4NVSzyNXlj8rn6PHqxxaCc7XIjNU5iprDpypU4f0L6Gdd
X-Gm-Gg: ASbGncs6thxQ4ugcY/AN4N0cuwYKIFhEQ85jROHtrDk1twh76phipvYgIagzHflI7TR
	2RgxvKVyqjw5cjqX2b5R/qrFZq4SX4jUzpfCzPCif+ZHZK/FSd7ZZ856drwqaWb9gsksil4Qkre
	H+PyaRxAr08fcOPA1fKT8lm4gymHXqUQ0VQuHvc3wKI0IB32olVPTp5iwvXuMP2KdQdrvgAzYJT
	/IgHNfExj4PpwV64wmx+Uxs1z56QF8XPsIuoQcB1kPVUc2sNDWaIH2E1SuaYNZuyyMaMVa2TNSi
	ucADbcOVrN4EINTKSWf3irYQEDbAIQJbdsJ+tPx+CxslPfD2bTjAM+biAh8=
X-Received: by 2002:a05:620a:3197:b0:7bf:f916:faf1 with SMTP id af79cd13be357-7bffccc9225mr1263566085a.2.1738590800769;
        Mon, 03 Feb 2025 05:53:20 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHoz4zJLV52R3SeV3FERp7sQHSO7BCfUwtoXieuP2UYa736qUJQrEWnCeNYRuw1lj4Hh2NZiA==
X-Received: by 2002:a05:620a:3197:b0:7bf:f916:faf1 with SMTP id af79cd13be357-7bffccc9225mr1263564485a.2.1738590800391;
        Mon, 03 Feb 2025 05:53:20 -0800 (PST)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab6e47d0feasm770707666b.52.2025.02.03.05.53.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Feb 2025 05:53:19 -0800 (PST)
Message-ID: <7778b91c-aa94-4010-89bc-5e86f78ae275@oss.qualcomm.com>
Date: Mon, 3 Feb 2025 14:53:18 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v3 1/2] arm64: dts: qcom: qcs8300: add display dt nodes
 for MDSS, DPU, DisplayPort and eDP PHY
To: Yongxing Mou <quic_yongmou@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250114-dts_qcs8300-v3-0-d114cc5e4af9@quicinc.com>
 <20250114-dts_qcs8300-v3-1-d114cc5e4af9@quicinc.com>
 <e66dd1b2-3257-448d-9c41-9be643652962@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <e66dd1b2-3257-448d-9c41-9be643652962@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: doBuBh7kZuSbdXtANatE-339cmP15faY
X-Proofpoint-ORIG-GUID: doBuBh7kZuSbdXtANatE-339cmP15faY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1057,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-02-03_06,2025-01-31_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 bulkscore=0
 spamscore=0 malwarescore=0 priorityscore=1501 suspectscore=0 adultscore=0
 clxscore=1015 impostorscore=0 mlxscore=0 lowpriorityscore=0
 mlxlogscore=925 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.19.0-2501170000 definitions=main-2502030102

On 3.02.2025 2:43 PM, Konrad Dybcio wrote:
> On 14.01.2025 7:59 AM, Yongxing Mou wrote:
>> Add devicetree changes to enable MDSS display-subsystem,
>> display-controller(DPU), DisplayPort controller and eDP PHY for
>> Qualcomm QCS8300 platform.
>>
>> Signed-off-by: Yongxing Mou <quic_yongmou@quicinc.com>
>> ---
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Wrong copypasta, please use this one instead:

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Konrad

