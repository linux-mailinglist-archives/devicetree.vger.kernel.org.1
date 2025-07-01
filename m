Return-Path: <devicetree+bounces-191444-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FB7EAEF59F
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 12:53:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CD877189ED39
	for <lists+devicetree@lfdr.de>; Tue,  1 Jul 2025 10:53:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8F07E27055F;
	Tue,  1 Jul 2025 10:52:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kpO+o37z"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBAD722F76F
	for <devicetree@vger.kernel.org>; Tue,  1 Jul 2025 10:52:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751367179; cv=none; b=D+g0I9vBKXPReoWxRdi8NP22hF1FisoX8hC+SIaN0TWqIqAErdIzv8zcnNx5AKYydwKS6M6MovOfNrlikVBDi4fXZ76AlIQPak8vxo/za2KiYxy3QU7US55CIi6QtwYKct2BMWADARDWdQCs0PUosrTubliPjAK6izLtSNbaSLk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751367179; c=relaxed/simple;
	bh=kR+ZkS9e9E9ecNCnSafkiQB90cSgCsUd8H0SkECdtdg=;
	h=Message-ID:Date:MIME-Version:Subject:To:References:From:
	 In-Reply-To:Content-Type; b=uswKPN274C9T4tVkoLmS/O54sLJevhe6U7NPhovczpTFYn0zB63/Cdp+iTXN+YIQBoVawL2saKT3ncj04Q4CjOYvVKU/ij4jHn2ZTZXQudBVjVVOqNizZoDG1FsJ6QZLQPiinmmJPcW0BQs27kULeMOGhR2WzCeMZGdAaAStz6c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kpO+o37z; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5619oRRe008527
	for <devicetree@vger.kernel.org>; Tue, 1 Jul 2025 10:52:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	QxbRybMavykaO3hOyS4gFxOqBrYNmHEunWQ2+lzoQ0E=; b=kpO+o37ziGhx1lEN
	mP41qeGktyBF4IN4ceoOB+k7fMbgsFM+m560HEnRYfXI7hmRzA30Qy1NEfXwgRFu
	kTasNqI1WbpXhNGg54e9yP3kj/nnbyx3wbdsraD/DboBVdBTsw2DHuoOODMmMciZ
	s/98+J55ThxB/NPQfiUzImrOnZOdXmbxc4a1nc5WLKGq6O3GB5K6kJ4pRdPev+xg
	oseFMBnqGHMilSsBiowEdXkiH/xHiOsNDzFUDj7f540+g540vk8ELJsFUJQHz2wT
	w5lMMrKp7FuGyLar2RFXspy2VFB8B93Ne8MMpH75+pwbHPClyNd+e3onRHmt4V6c
	1Uu9Vg==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47kkfmw82s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 10:52:56 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4a43be59f17so8133031cf.3
        for <devicetree@vger.kernel.org>; Tue, 01 Jul 2025 03:52:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751367176; x=1751971976;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=QxbRybMavykaO3hOyS4gFxOqBrYNmHEunWQ2+lzoQ0E=;
        b=VmZAyFuJ7MoCw9KZOZM951RjjR9h/p1jg2UefrBhYT1MC68yqW/3lAaDsWhBQZhu4x
         6tVkvG3CTCir4fiQRawNI+UeOqUlk5JR5nUDRb/Bh21/VeFS/fMhFMDXQi9lS6fODUZV
         5fXnFWY3TCn0Pf4CA7dDHEUWLTj7tdFRv79URgfUiPn4y3ShgRqoc4Vyt+DOv3Jm5cw2
         Z81dxaApqsVh799SrbdBu19z9ZoIeS3nnbnAmVSohx25QpuGYVHB9P+keHmT/uzNdrsx
         BJUfU+RDsyQ3KvCxdtduIPIIBnqOMyWEa71C4/Be6WEg+P4k48fM/TTJ3aevFH3+IGew
         6fCw==
X-Forwarded-Encrypted: i=1; AJvYcCVVa870STZZuQEssqEM5e1lE0t7TLm1KsC3G47bwXTmVxJAkw4VD8DNi/L2BdIN68bq2pSf99PHK224@vger.kernel.org
X-Gm-Message-State: AOJu0Yypz5ic7fMJkKqpHoUZ+nnOQM94pxhKRPZZPdol8b+sA/LaCzrC
	K7h/AKtDG3k9lzPsRhcBbeSd4chjHN1YLDVpJfbW0Io+knJ+Y3RBPyLBJdxffBQ+6x69fn2x87V
	kRJ/4XSt1FNKN3GkkFSAgKgrRM7jMqaKBVHtE0XylIuBSrPLiLPGMKF/okWsNdKlT
X-Gm-Gg: ASbGncuKwIJNlCRAlf4NSOOpWdRm+Sp1SSIzffmng17clHbX302F0o/VwH5BrOvKxqV
	9KjHGoyebUrlgy6daPirQRIYjY7xr8z7l5U3jauog5/i9pnEEoksL8QVTvpjeMN4qxhVUJ/VyAH
	tYU0msp9Njy4MznXiLg77kFaDPWSCf6viEbaRSmYQq70caaRoTST4hST7BWYiTzlm1uzFKs1k6q
	dX/SibtKh4ZDRcXv3dXeWASNuGYllvZ9OE1wH2sdbGKFaq6gVbAWB1wC801ohCsJrYwvSBv7QFO
	bka01YqKXCXStRfC7fgguxQrXeStPnnMM4xrUaERxK63B4ujLRyLLwjkq79LSC+Tf/DukhWcTDe
	1XP1vY0r2
X-Received: by 2002:ac8:5f88:0:b0:474:faeb:50aa with SMTP id d75a77b69052e-4a82fa6dc8fmr15414351cf.5.1751367175886;
        Tue, 01 Jul 2025 03:52:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFwuhymIujTpbLs+Uj+WN+K42bm42dkWUnlK1+8TUnmYd2rxY2XjyypP9SJRtzMLocaOTr6Nw==
X-Received: by 2002:ac8:5f88:0:b0:474:faeb:50aa with SMTP id d75a77b69052e-4a82fa6dc8fmr15414201cf.5.1751367175428;
        Tue, 01 Jul 2025 03:52:55 -0700 (PDT)
Received: from [192.168.1.114] (83.9.29.190.neoplus.adsl.tpnet.pl. [83.9.29.190])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-60c832165b2sm7335176a12.77.2025.07.01.03.52.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Jul 2025 03:52:54 -0700 (PDT)
Message-ID: <b1567c91-9e0c-4519-b575-c365405494cf@oss.qualcomm.com>
Date: Tue, 1 Jul 2025 12:52:52 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 4/5] arm64: dts: qcom: sdm670-google-sargo: add imx355
 front camera
To: Richard Acayan <mailingradian@gmail.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Sakari Ailus <sakari.ailus@linux.intel.com>,
        Tianshu Qiu <tian.shu.qiu@intel.com>, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org
References: <20250630225944.320755-7-mailingradian@gmail.com>
 <20250630225944.320755-11-mailingradian@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250630225944.320755-11-mailingradian@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-ORIG-GUID: t6y82DHU-gqr32HRdZmgtleA677F7oL_
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzAxMDA2NiBTYWx0ZWRfX28kRBNmmccSO
 +U2Kuqj9plcHlJ5/2esacYHfxhfRWGE0XjGN/RYDp1Dd/+eWBX+IWGzCqHaNohdfzazQ+lj9i9y
 yoay+tGwwkm48NBtHY/EQP2FgYWo/NNqOiaZdj6W7tqrqt0CcNDm8woGxWNKGj1HOugpGV0y4vz
 HLEXIHWhCpO19njjX2vUdG2BfPnlk7f7aWeu4ARyeUynDRu3OVRq5Qc66QJF5v1TxYqJkniWJRL
 TPaA9xofTpPkwf/HFTtjbQwtvkvFrIUp1AP1lVUAevj2GMD7VthbNaiyeXybBv23JcMlYTh7Zh1
 0ewTXp6uInjDGYmDsW0DyX1V/VK7lMULEL04aM9wjvBp+SybOIRG1HE7k/uHc88gWowQ+X73y8V
 j3o0zABNBon59h3WaAmOzHf3l1steQ7gDhjC9djV6MRPGUzcFzXFgfonxupuRtWJsvpTcWja
X-Authority-Analysis: v=2.4 cv=L9sdQ/T8 c=1 sm=1 tr=0 ts=6863be08 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=fKQzr7EGRj+VoE0XNsDNvQ==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=pGLkceISAAAA:8 a=yHq2CAHK8kHy-pw9ZNkA:9
 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: t6y82DHU-gqr32HRdZmgtleA677F7oL_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-01_02,2025-06-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 phishscore=0 impostorscore=0 priorityscore=1501
 malwarescore=0 lowpriorityscore=0 adultscore=0 suspectscore=0 mlxlogscore=999
 bulkscore=0 mlxscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507010066



On 01-Jul-25 00:59, Richard Acayan wrote:
> The Sony IMX355 is the front camera on the Pixel 3a. It is connected to
> CSIPHY1 and CCI I2C1, and uses MCLK2. Add support for it.
> 
> Signed-off-by: Richard Acayan <mailingradian@gmail.com>
> ---
>  .../boot/dts/qcom/sdm670-google-sargo.dts     | 112 ++++++++++++++++++
>  1 file changed, 112 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm670-google-sargo.dts b/arch/arm64/boot/dts/qcom/sdm670-google-sargo.dts
> index d01422844fbf..0af6a440ecbc 100644
> --- a/arch/arm64/boot/dts/qcom/sdm670-google-sargo.dts
> +++ b/arch/arm64/boot/dts/qcom/sdm670-google-sargo.dts
> @@ -172,6 +172,34 @@ vreg_s2b_1p05: vreg-s2b-regulator {
>  		regulator-min-microvolt = <1050000>;
>  		regulator-max-microvolt = <1050000>;
>  	};
> +
> +	cam_front_ldo: cam-front-ldo-regulator {
> +		compatible = "regulator-fixed";
> +		regulator-name = "cam_front_ldo";
> +		regulator-min-microvolt = <1352000>;
> +		regulator-max-microvolt = <1352000>;
> +		regulator-enable-ramp-delay = <135>;
> +
> +		gpios = <&pm660l_gpios 4 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&cam_front_ldo_pin>;

property-n
property-names

please

[...]

> +&camss {
> +	vdda-phy-supply = <&vreg_l1a_1p225>;
> +	status = "okay";

Please consistently add a newline before 'status'

[...]

> +&cci_i2c1 {
> +	camera@1a {
> +		compatible = "sony,imx355";
> +		reg = <0x1a>;
> +
> +		clocks = <&camcc CAM_CC_MCLK2_CLK>;
> +		clock-names = "mclk";
> +
> +		clock-frequency = <19200000>;
> +
> +		assigned-clocks = <&camcc CAM_CC_MCLK2_CLK>;
> +		assigned-clock-rates = <24000000>;

This and the above rate are in a bit of a disagreement..

[...]

> +	cam_mclk_default: cam-default-state {
> +		mclk2-pins {

You can drop this extra level of {} and put the properties
directly under cam-default-state

Konrad

