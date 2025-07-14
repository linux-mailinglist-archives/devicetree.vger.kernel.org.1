Return-Path: <devicetree+bounces-196038-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id F1F8BB04014
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 15:35:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B582718840F4
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 13:31:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B40121171B;
	Mon, 14 Jul 2025 13:30:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ni27Lgie"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 912332367B1
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 13:30:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752499830; cv=none; b=SSxUhlVfh24GWBFoe8LkaqFFVf9L5x5fOKiTnx4guj+8uJXBC22Hc1aMuWpBnGuK7gTie12R31tc+ztinH6SyxhakLwN54AN//e8DOt+Fu6DqNg8WGksnMk+xREoKaAowHkuvd/bcEebjqjEugr0qA98fOBTUHc0rce5gx2Cges=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752499830; c=relaxed/simple;
	bh=3uKXuWP37D0CEeXXM1tywrvm2McS8VXMhZeTn28VHoI=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=CYtM0ybU8MjdEBP29CxntmAcy7DyVpSBQlk5oLJujYDHeoLaqyA+hDY2pewd8421963L93ePoHpW4r5MJNowUvX4L/JSbH1ACEicdWBgwMp8q5DLQt6ErHOysg4bl2TjXBsiUx3yKm4hxuRszThKOgVfbje0BicQfLPbH458x08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ni27Lgie; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56E9t22p027032
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 13:30:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	EwocCM6XUaxUM6zqzmqtMLsjRln2ZwRH5MrCIvcpmqQ=; b=ni27LgiegFlY/Rqd
	7oocgMbfgVrGrmZLlh1wU+5fWe5lXdhnbpjBjLfspfNAvACzfPxjBDG7UJSHkVZs
	/p8Fb2FeDKLIq/x/54voDnw7RDbpboVEDnftVbB4E4Kb2hiqXd3LMRZDFVHPRf/1
	XZ89NbHnIfBMovimnGzgkobXxU4Pe5FRELVz6JAiTZsNY5QYRnOF+asOWCQu3v1k
	h8MbmNIf23va0W4Zi3h7wMI48cUCLac/m+feu6lHP/SCfPeh/OmN5AM9HhDK2Sft
	bapFm8gRZxa1kqQtkxYkffuQuyQI9G1P2cNHoF5wzhZeK3ysHiVBxOBpSy9dAbPj
	KAOO6A==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ugvmvsy7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 13:30:27 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7dfe47423f7so37978385a.2
        for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 06:30:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752499799; x=1753104599;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EwocCM6XUaxUM6zqzmqtMLsjRln2ZwRH5MrCIvcpmqQ=;
        b=bIAv/B9gpwB+p+bKtIJpCvs89TFHhqTFpy9uDdYEiJdkrFVnfLbhMOAjd0hXffhg7e
         z/pb8WN9udBwtlhs7Qt1XkrY7zRWdOMyEVaBo0XUF15vmT17k2dKSTdfE3mh59PpTUIE
         UTl/MuHol5ncqbrCsVfPSJiSxIw20g5as6cze36lppZ9qUKUdHZEZjGc5qxGyqv7RZeb
         9FrdOuJlqyAnovhxFM1ToN2YNfqn57lAJTAeRDJ6kRE9rHOKu8h9aL8BaGqIQP8Z8vFv
         H5bBIdori2NdMvKHF5fTwMHQ3lCJQcl7gCObDi6yEhLjdQGUHUuwc2nQ8VGf8U8kgjoM
         R5pg==
X-Forwarded-Encrypted: i=1; AJvYcCW5VA9oN0fI4ho1W/z3Bvox6GetbLGHXJXcyhIe/6KfJ7AGbDIMK5Ig2WV6G39R7mBMPbtf+o/mVkPm@vger.kernel.org
X-Gm-Message-State: AOJu0YyLnhMlZkD3eQPDpHPnTtFVW8wvOE4VXUXQJfcmAFH91CmNQNbH
	oIrcYWJo67U1iILl/kfFfZ9AghAX3lnMFqNbTpo2oud04FCsiHtgRrcad89sr0V82Vxtz9G79F3
	LYNC2eOiiTC9AjI+B6PhF4wk9QaS9IDx5d5/GQyPA+k3KKzGYPjVuyCiGR4YiKpx6
X-Gm-Gg: ASbGncsD13xeoas9W2Lg15cUWoAPmL6U7f8f58gbF6oHigMC9zIvprJAta96U2yWMm3
	FDtWfbHllgvCXaAe84joC6EfoEzxTbwQXbINP9F1r8wJNT2jnCZkQCsg1nSM7IaXUoWRb5qMhsa
	y2a0T+PQ34UnPow2S2KUmukUiJA6zhXa0Qb/LWX/Ys6GFIRmZDYAgxdOZ+WQU/2wf1E894EvNWy
	zX/jmFXTwe/EYTEQnZC+2otysMBsB5BCwG+E0wBj+/Hh5GxslTAYr5JFICoDhxBty4aUZHGSvXL
	aMMWZxBTrODaUb9df3yA24JKHaN2nyD/CmJT+yBOE+EQwbE0InN6P/lCrUyRHkVEajGUKnA1JGI
	wCYraPb0G0P4evq7b1r7Y
X-Received: by 2002:a05:620a:4712:b0:7e3:297d:ec32 with SMTP id af79cd13be357-7e3297df03dmr166521785a.10.1752499798876;
        Mon, 14 Jul 2025 06:29:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE4pVl04wh4MC/yMhCnGpjY5MlKKeWfA0cK5VDPj8AHG8h6eRZW2+HItMHeuT0gOF1TXD/tzA==
X-Received: by 2002:a05:620a:4712:b0:7e3:297d:ec32 with SMTP id af79cd13be357-7e3297df03dmr166519985a.10.1752499798442;
        Mon, 14 Jul 2025 06:29:58 -0700 (PDT)
Received: from [192.168.143.225] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae6e7e91c81sm830369866b.37.2025.07.14.06.29.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Jul 2025 06:29:57 -0700 (PDT)
Message-ID: <d35d95a9-2844-4940-bfa0-aaae58de48e1@oss.qualcomm.com>
Date: Mon, 14 Jul 2025 15:29:55 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v7 12/15] arm64: dts: qcom: x1e80100-t14s: Add pm8010
 camera PMIC with voltage levels for IR and RGB camera
To: Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>, Robert Foss <rfoss@kernel.org>,
        Todor Tomov <todor.too@gmail.com>,
        Mauro Carvalho Chehab
 <mchehab@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org
References: <20250711-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v7-0-0bc5da82f526@linaro.org>
 <20250711-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v7-12-0bc5da82f526@linaro.org>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250711-b4-linux-next-25-03-13-dtsi-x1e80100-camss-v7-12-0bc5da82f526@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-GUID: k0lCxv-6M2KOXue2Cr63LHOp2ukUJaeP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE0MDA3OSBTYWx0ZWRfX0eEnD2gGLFVC
 IGCfu8t3862GXn6gUBC2YTd0ErHBv/g71B2U3FPukTkL1XavR9tWFuiJ4424ejOarhp/9nz7vDg
 Jq6oxU6jq0XfjpNJG3hCHOO1HYpSggTzSQVabvQYo8Xcwp9O6SHuyUTRb7ez6pDa36qDjRfr/lu
 dkHrHIk3P71i+zDkLJgHer+1DxIGsBigXwPjaTLwpWZ1sVms7I/cRH+TTitX0yvTvfuiyJf+2/Z
 AEZyX+GNaLUJggKT7PIPittLolPW1FfP6IRObLNqjK1lvkp3zSauBXiAK8cRzQYLZGcZjt1cyhT
 17bIA/AYi4lCNj5uB4GoLPbyb4HfaoGOUDD2hB/fOWnU6SnD6rwNODYWiuZUCyMIhcWZ5qjdAfO
 5vUckYt4FfcVzAczde92/IDn3vtdl9qSkEobqpoTzemT2i5nTZaZlTdeVeXlADmJDlIXUWiR
X-Proofpoint-ORIG-GUID: k0lCxv-6M2KOXue2Cr63LHOp2ukUJaeP
X-Authority-Analysis: v=2.4 cv=C4fpyRP+ c=1 sm=1 tr=0 ts=68750673 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=KKAkSRfTAAAA:8 a=tqOywgo3-Srlss81Y0MA:9
 a=QEXdDO2ut3YA:10 a=NFOGd7dJGGMPyQGDc5-O:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-14_01,2025-07-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 mlxscore=0 suspectscore=0 phishscore=0
 clxscore=1015 lowpriorityscore=0 spamscore=0 malwarescore=0 bulkscore=0
 impostorscore=0 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507140079

On 7/11/25 2:58 PM, Bryan O'Donoghue wrote:
> Add the PM8010 PMIC providing the following voltage rails:
> 
> vreg_l1m_r @ 1v2 IR sensor
> vreg_l2m_r @ 1v2 RGB sensor
> vreg_l3m_r @ 1v8 IR sensor
> vreg_l4m_r @ 1v8 RGB sensor
> vreg_l5m_r @ 2v8 IR sensor
> vreg_l7m_r @ 2v8 RGB sensor
> 
> Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
> ---
>  .../dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi    | 59 ++++++++++++++++++++++
>  1 file changed, 59 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
> index e19daf0f41f1f081e4b0c04be71e37f6ef492b6d..c9215c1a37cf4e7bad1512f52afdfc18ea616127 100644
> --- a/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
> +++ b/arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi
> @@ -580,6 +580,13 @@ vreg_l6b_1p8: ldo6 {
>  			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>  		};
>  
> +		vreg_l7b_2p8: ldo7 {
> +			regulator-name = "vreg_l7b_2p8";
> +			regulator-min-microvolt = <2800000>;
> +			regulator-max-microvolt = <2800000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
>  		vreg_l8b_3p0: ldo8 {
>  			regulator-name = "vreg_l8b_3p0";
>  			regulator-min-microvolt = <3072000>;
> @@ -823,6 +830,58 @@ vreg_l3j_0p8: ldo3 {
>  			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
>  		};
>  	};
> +
> +	regulators-8 {
> +		compatible = "qcom,pm8010-rpmh-regulators";
> +		qcom,pmic-id = "m";
> +
> +		vdd-l1-l2-supply = <&vreg_s5j_1p2>;
> +		vdd-l3-l4-supply = <&vreg_s4c_1p8>;
> +		vdd-l7-supply = <&vreg_bob1>;
> +
> +		vreg_l1m_1p2: ldo1 {
> +			regulator-name = "vreg_l1m_1p2";
> +			regulator-min-microvolt = <1200000>;
> +			regulator-max-microvolt = <1260000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l2m_1p2: ldo2 {
> +			regulator-name = "vreg_l2m_1p2";
> +			regulator-min-microvolt = <1200000>;
> +			regulator-max-microvolt = <1260000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l3m_1p8: ldo3 {
> +			regulator-name = "vreg_l3m_1p8";
> +			regulator-min-microvolt = <1800000>;
> +			regulator-max-microvolt = <1900000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l4m_1p8: ldo4 {
> +			regulator-name = "vreg_l4m_1p8";
> +			regulator-min-microvolt = <1800000>;
> +			regulator-max-microvolt = <1900000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l5m_2p8: ldo5 {
> +			regulator-name = "vreg_l5m_2p9";
> +			regulator-min-microvolt = <2800000>;
> +			regulator-max-microvolt = <3072000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};
> +
> +		vreg_l7m_2p8: ldo7 {
> +			regulator-name = "vreg_l7m_2p9";
> +			regulator-min-microvolt = <2800000>;
> +			regulator-max-microvolt = <3072000>;
> +			regulator-initial-mode = <RPMH_REGULATOR_MODE_HPM>;
> +		};

Have you confirmed all these voltages on both T14s and yoga against
schematics or similar?

These vregs are widely configurable, so the reference values may
not be what the hardware expects..

Konrad

