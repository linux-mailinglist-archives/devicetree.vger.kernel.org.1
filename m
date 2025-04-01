Return-Path: <devicetree+bounces-162243-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 7177BA778BA
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 12:20:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B52F17A2E96
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 10:18:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 591661F0989;
	Tue,  1 Apr 2025 10:19:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kezNLTyo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C699F1EDA11
	for <devicetree@vger.kernel.org>; Tue,  1 Apr 2025 10:19:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743502770; cv=none; b=Y2+2IpIDAO0Y1hy5X3b+JRa9nONssg6kgpkTSh77cUVBfslfUZy30bW5ZcgCGfwRpu9YCaEkAneuuMUY4TsfFXO/ib4+p/rtkhvSRg24L6jFZ/NJPsCyxRtIeRMUVpzoAaKFOymZbsEstBG0FgFQa89B2Kp5WiMT36pFhMbLS48=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743502770; c=relaxed/simple;
	bh=VLndyfSBwsI92OgxkgucYvEjqkkt/ZCVDRe+KPbDQio=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=ay2YkvOynFy6hBWgTzZdGIjvgZD8uIv0I1ksp8dvGjVmRgZb+Ey4GOBX3XQRjHB0rg8tQLCbfC6n0sCyArBnYrdr5trZ9WtOQO9C182NQJHD63yZR7vR9nbIdsn8QZ5kAHtzMGjhVwbq82yEJxdmoD5jMWexTkOEy2DA0ZaNaFY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kezNLTyo; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5316En85000548
	for <devicetree@vger.kernel.org>; Tue, 1 Apr 2025 10:19:27 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2DOPs8qVr8I70ztM6rWE5VLdIGBtlthQzmw040FJiSQ=; b=kezNLTyod0Rfl4kQ
	eCeOAyLIBXdZAYqjmEWxfbPtTouMkt1hAjJSWdaeQTVAKA5CONG2aTyu4wgOucpU
	VLgo/wx5qlvOuKO3eQs+1Jgsd0wwC4t7QiS6FEOGYL27+GG3zPUKu5mSCycPlWW3
	AX/2ZXHAcfxsFNaE8OAQb9FNJqKPOcuLwOI/4oMWj4nEQOCNN5oD6+2C1SKIAB7J
	hlXV3EcuwT7pF5Gxg3jolRNS62V2+pmZfIyfGZlLs9XWW68wnEiqyvBrmkVoeFlP
	MlI8Cj7tYuXCNaHoMd0B8GVbxtqDGAXFuRy3j+0leZb4QL+KxN/W6y/ZfX12oeBZ
	MsH2cg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45p67qfwdv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 01 Apr 2025 10:19:27 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4775d024d0eso10428141cf.0
        for <devicetree@vger.kernel.org>; Tue, 01 Apr 2025 03:19:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743502767; x=1744107567;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2DOPs8qVr8I70ztM6rWE5VLdIGBtlthQzmw040FJiSQ=;
        b=Y9nZleURwkg5nNuSzu7X3gX5oKiKEWr/6hDg3a9/LRbDmkKCTlGbf7GHJEHpYPuFlr
         bDsgNth+dnI5UheSiXgzBqsKkFo0IHOG3iovmpZVwfc07lkerU69etbhP+eHaYKX6J1D
         hEhI8UiJm8EZl1jKh27HCiKWUrczXQ89UStGzVSXwDHKm3oXKjAuN1u74LJsb1el+DgZ
         XHWWL6f/Ky84wAKh9ALbR5dy0DArKt5i3ezbi/QkVA2hHuU0Y+DcgroC/pJuR6FJx6/Y
         8aFyolt2ut1BG5MqYb7h8BxWFvtaLoin/KKd9cGxquPBK0Mp6N4sayv8eHaoNCCh9nnp
         C35A==
X-Forwarded-Encrypted: i=1; AJvYcCWqK3zWX/y81XrstA76nIM1SyLSqe1Qzhv37o/Xoqb7b8bBw1Y7au2GF9+2vJygHtRANHZWNNPN9Uq6@vger.kernel.org
X-Gm-Message-State: AOJu0YxZv+k92a/s6QMPi64yDqfrosT2aY1WNOZXg3tApMUJGvICSa30
	qliDUEWoQnMjgvdDXNQ431apxn8ZJpWWk8WnxChmVVvbNgKg9FzsoF/gmcLR8d7Xfn1saSQlOvH
	UtZg8u5qv9b2a5aLk0iaDjWyuflCzcFO5/6crVh7/m3xYMe0s1QnC8LaOC0VC
X-Gm-Gg: ASbGnctevCNnb4txclangf3eZycCDKwtcTvSJke7aWm7LRguZZgSb9U3DhVDnlpJXTw
	X3U4jycvsZZ9Xr3dMoV74Stk07goq0f047LHIBuNOZYBPzofznTcV+R/vjPWLCO0rZfxQox4Frz
	+NJod/JYeG20le3X0WCqWCwpUG4gE4dHVFTohLQZcIj4NY0pjOV4ZkKqwlGQxzbSWJoTOmUMyBp
	aKAl0P0Db/LR4eja9c7kbfWuFPF3ZOBQLPcEYV42eNOChUX1uSBMIEDAg2OiKiHkAB0E+fj+PqY
	ZFHdGgBgYk5YrxC4kJs/J9vBGiCk6e/a+3q+bWpAxTSnu8D4PSqtfRqXeKZexk9diwV3+Q==
X-Received: by 2002:ac8:5743:0:b0:472:15be:54ad with SMTP id d75a77b69052e-478f8caaa3emr8015411cf.14.1743502766797;
        Tue, 01 Apr 2025 03:19:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHVCXq1wEZzeuviNZFWjwRTsD/J2nl2Zsg5QfwBRNLIyCOjFWs9y0I9oOKP+u8l03W7oJ4KfA==
X-Received: by 2002:ac8:5743:0:b0:472:15be:54ad with SMTP id d75a77b69052e-478f8caaa3emr8015221cf.14.1743502766458;
        Tue, 01 Apr 2025 03:19:26 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5edc16aae6fsm6857889a12.16.2025.04.01.03.19.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Apr 2025 03:19:25 -0700 (PDT)
Message-ID: <219c03ee-4440-4452-94c8-f8b32c147db5@oss.qualcomm.com>
Date: Tue, 1 Apr 2025 12:19:24 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 1/6] arm64: dts: qcom: move pcie6a type change from
 X1P42100 to X1P42100-crd
To: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Abel Vesa <abel.vesa@linaro.org>,
        Johan Hovold <johan+linaro@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org
Cc: Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Heikki Krogerus <heikki.krogerus@linux.intel.com>
References: <20250331215720.19692-1-alex.vinarskis@gmail.com>
 <20250331215720.19692-2-alex.vinarskis@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250331215720.19692-2-alex.vinarskis@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=fMI53Yae c=1 sm=1 tr=0 ts=67ebbdaf cx=c_pps a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=pGLkceISAAAA:8 a=umw4QfNw0YT-tJYoN0AA:9
 a=QEXdDO2ut3YA:10 a=a_PwQJl-kcHnX1M80qC6:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: Coe1qlZrWHEAoNTiwv1CH1ppU8jaZ04D
X-Proofpoint-GUID: Coe1qlZrWHEAoNTiwv1CH1ppU8jaZ04D
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-01_04,2025-03-27_02,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 adultscore=0 mlxscore=0
 priorityscore=1501 phishscore=0 spamscore=0 impostorscore=0 clxscore=1015
 mlxlogscore=906 bulkscore=0 malwarescore=0 suspectscore=0
 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504010066

On 3/31/25 11:53 PM, Aleksandrs Vinarskis wrote:
> It appears at least on some devices (Asus Zenbook A14, x1-26-100) change
> of pcie6a_phy's compatible breaks the controller. Move compatible change
> from generic x1p42100.dtsi to CRD's specific x1p42100-crd.dts instead.
> 
> Signed-off-by: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>
> ---
>  arch/arm64/boot/dts/qcom/x1p42100-crd.dts | 4 ++++
>  arch/arm64/boot/dts/qcom/x1p42100.dtsi    | 4 ----
>  2 files changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1p42100-crd.dts b/arch/arm64/boot/dts/qcom/x1p42100-crd.dts
> index cf07860a63e9..a2a212b31556 100644
> --- a/arch/arm64/boot/dts/qcom/x1p42100-crd.dts
> +++ b/arch/arm64/boot/dts/qcom/x1p42100-crd.dts
> @@ -15,3 +15,7 @@ / {
>  	model = "Qualcomm Technologies, Inc. X1P42100 CRD";
>  	compatible = "qcom,x1p42100-crd", "qcom,x1p42100";
>  };
> +
> +&pcie6a_phy {
> +	compatible = "qcom,x1p42100-qmp-gen4x4-pcie-phy";
> +};
> diff --git a/arch/arm64/boot/dts/qcom/x1p42100.dtsi b/arch/arm64/boot/dts/qcom/x1p42100.dtsi
> index 27f479010bc3..4424a8708d39 100644
> --- a/arch/arm64/boot/dts/qcom/x1p42100.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1p42100.dtsi
> @@ -37,10 +37,6 @@ &pcie3 {
>  	num-lanes = <4>;
>  };
>  
> -&pcie6a_phy {
> -	compatible = "qcom,x1p42100-qmp-gen4x4-pcie-phy";
> -};


This is not correct. The hardware is different in all SoCs, not just the
ones put in the CRD.

You're probably missing this change [1], please test it out and leave a t-b
if it's confirmed working for you.

Konrad

[1] https://lore.kernel.org/linux-arm-msm/4c7059a0-46a0-424d-9068-60894c6cec1c@quicinc.com/T/#m9675593a62b2334ab2afd4269da6938464a03fa6

