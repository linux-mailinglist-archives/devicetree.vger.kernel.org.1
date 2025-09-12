Return-Path: <devicetree+bounces-216390-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id ED7B6B549F8
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 12:36:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1CC61189DD24
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 10:37:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1C3F42EB5DC;
	Fri, 12 Sep 2025 10:36:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PRXaSTge"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 829C6283FEB
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 10:36:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757673408; cv=none; b=qJU8MHE9l+DI2LUQQUhiMyasZVptkhjDdjeimOZVpINVe0cD30Jc4TLyUpxVEXp0xQvaqIZPXdAeZDOAbrcL3F0CnanMFkElTdNEGm7dHCJi4l51lU2nxzPnsLFO/cqqG+HEACjC1NDVlkOUjggmw+B/pXljE9FKwpAaU3pg1gU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757673408; c=relaxed/simple;
	bh=nJ3+l5v55fpLJ9xg3lY7KIMVNF6NVqMD4GX1L9S7lTY=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=pZ3Tfej/WnyPHd67qPN3eqEuY0rtJiW+dR6gPXCibs9uyBV0ssr08wVyWTGVfnaFq00ZCgBCvyV1Sa6PZ2/7/27zkpeVzmAinOX6Drhhk/xR18eOFJmfcSjyhmgiEslSHyedmdt0pjoj6M5dhS1dT2qTBtxxZ3aYFOAjM54F+Tc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PRXaSTge; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58C9fLKX015470
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 10:36:45 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	kuHENK0DYgi7JlXzy3OZov0FtKUnSjJcORNhHeAJWYU=; b=PRXaSTgetmg7zo0w
	8p3lbwOJ6d1M9WnZe5isUSyBKGnV4OhtM8zPP/FpHxml5tOvmt3B7qVE8jx9FxTu
	yyhuwKmp2dAW4/MBgOPuCax387Ou86SPB43fMN9Eva1YdUn82fopsZOLJsm9/iVI
	AzJdj06Nr62QF3zOmG06y8KSKA0dMSG6zidkRBTY0JpHQOtQ89WUY+xe+xpqc27w
	dLv8fpjJOeXTsImOjEKhLqKqzlSY4kipXpLdk42+pkq9WTt5dWhC7YG8iucSHMP2
	mJ5qlUDmCEVzu1ojjyY1YgQO7LBk9C8Qouoi0UG4hSs7MtznxgDcDqPDbP4blvx2
	iEPk7Q==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490aapuf7b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 10:36:45 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-720802c209dso2640856d6.2
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 03:36:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757673405; x=1758278205;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kuHENK0DYgi7JlXzy3OZov0FtKUnSjJcORNhHeAJWYU=;
        b=ovyVCXZEbalcGxbHgda+gb7eAYa9RD4fmAsa2lecwwSAVkSZOthK/3LGagYtkdJ4o6
         5sKSs9d/X0lP0W46Sdw1BTYrhCZC7GVfGCBYxIqTgPi2FFm8+ODZQHrUNQUNB+Q23Cn6
         EvHn0Ze6MXlKS+BFf1Dod4kQlc8JJ3ELdBQwY7rj0xzqIKKeyG77wAvfTNBOAtrGRINm
         MzzGdxnMHYC4/jKpu4U/dlmnkDmsBx1W1AzXSGTvbWL0GF0+Gj/R0KXIZpKio8WyWLqa
         KUP3FYCYqQ6KzWhahua42deGEuMFo8MU602ZoH14mNKOWlhPbFLXd/dKcEoeL2Zkf2PG
         Bpvg==
X-Forwarded-Encrypted: i=1; AJvYcCUcguMamJVxCNE2C3NbXQ0if0/pW1EpKhaNEM83O4iITKYpDtZSGYiAAnLaku8JMr8CJfG/9BjKTmvM@vger.kernel.org
X-Gm-Message-State: AOJu0Yw9mTFnoT0LkjxBiKU3uEb187Az5L9lMKwrQ0PCufWyYEuydLta
	hE/ymS6d+jnBmih1EEgdxx5vEP2pQPkiUvJRrsaYhB9gb7asmcY/UNWE5Az2H6zguoONugHrCoP
	BoGqkbrQfjT4/sOrW0UMpl3kpzbMpeKKLRlsxGZTB2DcD04WH8rSSbaGe3vLN0fdJ
X-Gm-Gg: ASbGnct+9k0zbXc8Qph6W5lhhyBEZ7eGSoyiLFt24hVzDIqyQdrnSIztvIJmh2TGo0B
	i64ZsADRajD9BOQfUpGCQmdI2sLVAbo4CWQ6lRW6pRLA9uhpDQEDlOjTw3mk24qPZgnaouAtUZc
	KZlP1SY772q996kYQdN9c2zKFD2++d/wdUpF8u7OTlETrZ5l45yIMVAuVrsPf8hdTu1nmcR4CkU
	T7EDMibmtS8ygXoejQjGPiTqMkWhQMXdi7GwXNa9EADgzaeJkTU9TrWKl+0RYVlzeMemirmZOtH
	rHPSeygYzOEircBOWPFdtnupM34QWuGjQyNpCJSK0rC4SbdkUwIp9jNgKEOXcEtrmR0s8MiM7a6
	MRJKQhcTwPjdErMgQsjh78A==
X-Received: by 2002:a05:622a:901a:b0:4b5:fc2a:f37a with SMTP id d75a77b69052e-4b7888cc278mr1141031cf.3.1757673404441;
        Fri, 12 Sep 2025 03:36:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGU7PAoPRCNJz37EaX6IxNCBg6Jtsm+8T8pgUt1a0L7KS8lH3skeL6+I/GUlg9QPEybmuu4Fw==
X-Received: by 2002:a05:622a:901a:b0:4b5:fc2a:f37a with SMTP id d75a77b69052e-4b7888cc278mr1140821cf.3.1757673404019;
        Fri, 12 Sep 2025 03:36:44 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b07b32dd88fsm343748266b.51.2025.09.12.03.36.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Sep 2025 03:36:43 -0700 (PDT)
Message-ID: <fa6f147f-c4fd-4267-82e3-139129caccbe@oss.qualcomm.com>
Date: Fri, 12 Sep 2025 12:36:41 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2 3/3] arch: arm64: dts: qcom: sdm845-starqltechn: fix
 max77705 interrupts
To: Dzmitry Sankouski <dsankouski@gmail.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Krzysztof Kozlowski <krzk@kernel.org>, Lee Jones <lee@kernel.org>,
        Rob Herring <robh@kernel.org>, Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Cc: linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
References: <20250909-starqltechn-correct_max77705_nodes-v2-0-e4174d374074@gmail.com>
 <20250909-starqltechn-correct_max77705_nodes-v2-3-e4174d374074@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250909-starqltechn-correct_max77705_nodes-v2-3-e4174d374074@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=eMETjGp1 c=1 sm=1 tr=0 ts=68c3f7bd cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=pGLkceISAAAA:8 a=5anC7vb6YJh9jDJep64A:9
 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-GUID: OfdPk7Q7aWydRm5kbMV7e4wdXIQeJckS
X-Proofpoint-ORIG-GUID: OfdPk7Q7aWydRm5kbMV7e4wdXIQeJckS
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAwMCBTYWx0ZWRfX7axBJD0KjoyB
 TrRkNP/TyUOGWEk5t0RHZKATEIwbYJ9aGe2qRNn5zy26lMgNUkVxWIUR/W9tjVwf+Cmm9CPpZa9
 M6P3PiuNh+zBOWZ3capf4OY+R3PqekB5Dwr9eieM3UT7sepkkY+8EO/KJV4HEFHmjYiETsrOjtz
 Nle9QcDDl6s8gAmukrHfrmMUyMx+kcKNNxbEMB1Pgf3oDafHkCoWTMwfn4n2l2pkf/CU9+st4b1
 0UMlA6NR0mOONYHFDstYUVpIaNcn9WOEOir9cwnNbQCIUa6njTHs79+Ll6IYX8eavbxQ3AQO1fY
 OBQ49usEihNK8uuMI5XtyCoJ0Sh/VcNBBgl/RZ5LzMVqRBAaALTK+SnsZhvQyfqEaI6M660tOf3
 2yp9g2lr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_03,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 malwarescore=0 clxscore=1015 adultscore=0
 bulkscore=0 phishscore=0 spamscore=0 suspectscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509060000

On 9/9/25 9:22 PM, Dzmitry Sankouski wrote:
> Since max77705 has a register, which indicates interrupt source, it acts
> as an interrupt controller.
> 
> Use max77705 as an interrupt controller for charger and fuelgauge
> subdevices.

"""
Direct MAX77705's subdevices to use the IC's internal interrupt
controller, instead of listening to every interrupt fired by the
chip towards the host device.
"""

Fixes: 7a88a931d095 ("arm64: dts: qcom: sdm845-starqltechn: add max77705 PMIC")

Konrad> 
> Signed-off-by: Dzmitry Sankouski <dsankouski@gmail.com>
> ---
> Changes for v2:
> - fix commit msg header prefix to 'arm64: dts: qcom: sdm845-starqltechn:'
> - remove binding header for interrupt numbers
> - make interrupt-cells 1, because irq trigger type is not used
> ---
>  arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts | 12 +++++++-----
>  1 file changed, 7 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts b/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts
> index 8a1e4c76914c..597e25d27d76 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts
> +++ b/arch/arm64/boot/dts/qcom/sdm845-samsung-starqltechn.dts
> @@ -584,13 +584,15 @@ &uart9 {
>  &i2c14 {
>  	status = "okay";
>  
> -	pmic@66 {
> +	max77705: pmic@66 {
>  		compatible = "maxim,max77705";
>  		reg = <0x66>;
>  		interrupt-parent = <&pm8998_gpios>;
>  		interrupts = <11 IRQ_TYPE_LEVEL_LOW>;
> +		interrupt-controller;
>  		pinctrl-0 = <&pmic_int_default>;
>  		pinctrl-names = "default";
> +		#interrupt-cells = <1>;
>  
>  		leds {
>  			compatible = "maxim,max77705-rgb";
> @@ -629,8 +631,8 @@ max77705_charger: charger@69 {
>  		reg = <0x69>;
>  		compatible = "maxim,max77705-charger";
>  		monitored-battery = <&battery>;
> -		interrupt-parent = <&pm8998_gpios>;
> -		interrupts = <11 IRQ_TYPE_LEVEL_LOW>;
> +		interrupt-parent = <&max77705>;
> +		interrupts = <0>;
>  	};
>  
>  	fuel-gauge@36 {
> @@ -638,8 +640,8 @@ fuel-gauge@36 {
>  		compatible = "maxim,max77705-battery";
>  		power-supplies = <&max77705_charger>;
>  		maxim,rsns-microohm = <5000>;
> -		interrupt-parent = <&pm8998_gpios>;
> -		interrupts = <11 IRQ_TYPE_LEVEL_LOW>;
> +		interrupt-parent = <&max77705>;
> +		interrupts = <2>;
>  	};
>  };
>  
> 

