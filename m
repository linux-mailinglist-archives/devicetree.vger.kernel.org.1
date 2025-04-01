Return-Path: <devicetree+bounces-162351-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D1428A77FC3
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 18:02:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 68A2D3A3AE8
	for <lists+devicetree@lfdr.de>; Tue,  1 Apr 2025 15:59:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D2FA20C489;
	Tue,  1 Apr 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Y2BzDNkD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C725120B1E6
	for <devicetree@vger.kernel.org>; Tue,  1 Apr 2025 15:59:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743523193; cv=none; b=P8S9X0MUoUODoh5NjBi0Qyu3gIkwwhdbNd7oXqnp45LE6Rt88kgKTteKQ+THfs6v9tiZ2Q55429dw8CrZDbdcIwDRKK+BVDWmHJegkpMOduoOVobkC8JooEhcif14vbFj/Splb4QtvWQYrT/Q9h0l4kxXvskp10EBZ/T1FIODJE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743523193; c=relaxed/simple;
	bh=s5G+D4Y4H48hG+JqN8iTc8KNENEqqJ+iDJISsHqOWj0=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=XBW6uyD3155sMfXeBJY3InbTjaej2UMYLyi4S55BBUaqYWvRnA44y1lpZFEVdDC0F+qOlK+38usXCBoUQH2fNb1tLmlNNPzHQ9RolOHHvoZn6yP7XYj4Pwus7FA2m63jxwpDnQpQEnr2AxRNbns4haVCb8JbPzSQEf6QOVA42lk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Y2BzDNkD; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 531BtT0B025093
	for <devicetree@vger.kernel.org>; Tue, 1 Apr 2025 15:59:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	iVsiqH8BYsZ0fSUtLECQBLTo683Jv0XmjiQt/jiR8+c=; b=Y2BzDNkDrnHvj5Sr
	5ZWeCx9WABWv4Pdu5vqPYZLVVEhtJauoKguZa5ZJU7XOInjoKTXavRe7TxhcoBJS
	/wePpE3vtGLO1UeY+iIiTMyO2OVFcGbULvwCm+J18qwvYD++S/Nd/Q0EoLeAIOGK
	CsCvTNo27wxOna5HIw2ouVsFoiymWSo4PZPBErZYULJqGZuzNC6t8FactF4CoI6G
	a2garVXJhEVdelujTVZurNj7etbHTgDzA5dmnClJd0zlLiiL5tOPKeY6fZPlQFlW
	xuXsqP4UnZbnAQ558EVMhp0dsWWhuXNNzun9UIT0Ggg3yr++fsfqP7/fbOpy3q/a
	3Mi/Iw==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45p86krmmw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 01 Apr 2025 15:59:50 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6e19bfc2025so11800106d6.1
        for <devicetree@vger.kernel.org>; Tue, 01 Apr 2025 08:59:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1743523189; x=1744127989;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iVsiqH8BYsZ0fSUtLECQBLTo683Jv0XmjiQt/jiR8+c=;
        b=jXyjmKpz2FHe0THoAIR+ZcFxXc3CKdqSRY2FzwXCYDDbB4tkPXR1/YOCgDxjQTk38o
         P2ZH6uVOzvcl8wI1gir4UxC7GQuspIjR9D1stVgeMD6Nvsb05Rmkl83AgniT3WDbUYA/
         Vvw0grr0mAyG+z0TOyq/VlzfYBZOVx/LoOs8tX59edWyEKPOnCQXzXn5u7CF23CLEo8N
         LODXb3CGmqH9W8H1s3tkxC8slCYFWtB0mgZQMFrBVY8hwZSaqESIyMRaXgm1/9CjbInI
         RXodpJInFEsu/B3fHRe8CPxzzPCR1GdXXpr8Be7PCrk9r8wa9KTs7dGHEb3ts40jEv/4
         FrPA==
X-Forwarded-Encrypted: i=1; AJvYcCVCe82jEhFQrZC2m1ftWTMRgEIOWKyrLXMoufTpDiO9ONkmOd02EDi2J41PnjLQQbqnT6OByjNqe0Aj@vger.kernel.org
X-Gm-Message-State: AOJu0Yx37b0OUrxyTKiYVg/CJZsNjm0PCceT0VKmaPMZVighsi35ng9y
	45p5nxbl4wSGrsffox3sERuAYmRyjnJP7UV5oWlo5slyXTi9zPhb+evbimbBvNsT3ujumgdk7SU
	3BZqHgw3t7SeZ7hnCmOAq0A1FMw1tZlhd56JzDP6M4YhoMmTRSOairTCTNsh6
X-Gm-Gg: ASbGnctv8RA0EJGV8QTkkOK6Fo9MvplxCikEiqZxmwwTVH7hsaPp70MyIPi1cVT3+o8
	8/mrLoaayj7eWEYnuY5UJ+bq5/1bAtEpJ3f9jnIgIChIGbupq/SYzALcariMzfSesynvYH/EtiY
	hQc7YvjZmN5gu60aFZ3xgYDjezkOBNeDkPZmFNJTnTkapkmxXuAXE4YeRpOH3XbpZhC5cDOhdcE
	GmIXMgXxc7yBo6ummjksZHBb7oa8wxoQaIj1CULDaW7qckScwC5asBKx9M1VSkzvGMPrDpjbjOp
	bn50xyU7wQMn4Ux0wRawBahNL/0tm052fihFUzgRXNr8aBbsi8HIDArU3z4S1NvhmcW7RQ==
X-Received: by 2002:a05:6214:27ca:b0:6e8:f589:ee3c with SMTP id 6a1803df08f44-6eed5fdc4f8mr68482306d6.4.1743523189626;
        Tue, 01 Apr 2025 08:59:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGcj6DyVh3s44alBnkASPCCH0lLtilsnzjnLJjgoTmTdUdo3LYZcKFQUcOnrnyfNVz01bfZug==
X-Received: by 2002:a05:6214:27ca:b0:6e8:f589:ee3c with SMTP id 6a1803df08f44-6eed5fdc4f8mr68482156d6.4.1743523189250;
        Tue, 01 Apr 2025 08:59:49 -0700 (PDT)
Received: from [192.168.65.90] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5edc16ed61esm7201988a12.34.2025.04.01.08.59.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 01 Apr 2025 08:59:48 -0700 (PDT)
Message-ID: <ef783edb-c966-4ef7-b496-564420c1b852@oss.qualcomm.com>
Date: Tue, 1 Apr 2025 17:59:44 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v1 6/6] arm64: dts: qcom: Add support for X1-based Asus
 Zenbook A14
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
 <20250331215720.19692-7-alex.vinarskis@gmail.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250331215720.19692-7-alex.vinarskis@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=W8g4VQWk c=1 sm=1 tr=0 ts=67ec0d76 cx=c_pps a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=FpWmc02/iXfjRdCD7H54yg==:17 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=pGLkceISAAAA:8 a=E544tAf0YMCSjjrfBEcA:9 a=QEXdDO2ut3YA:10 a=RVmHIydaz68A:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: I6LiUwNfbDo3JQQV_VbFvj_CNlPLQYGo
X-Proofpoint-ORIG-GUID: I6LiUwNfbDo3JQQV_VbFvj_CNlPLQYGo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-01_06,2025-04-01_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0
 priorityscore=1501 lowpriorityscore=0 bulkscore=0 suspectscore=0
 mlxlogscore=999 mlxscore=0 clxscore=1015 malwarescore=0 adultscore=0
 phishscore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502280000 definitions=main-2504010098

On 3/31/25 11:53 PM, Aleksandrs Vinarskis wrote:
> Initial support for Asus Zenbook A14. Particular moddel exists
> in X1-26-100, X1P-42-100 (UX3407QA) and X1E-78-100 (UX3407RA).
> 
> Mostly similar to other X1-based laptops. Notable differences are:
> * Wifi/Bluetooth combo being Qualcomm FastConnect 6900 on UX3407QA
>   and Qualcomm FastConnect 7800 on UX3407RA
> * USB Type-C retimers are Parade PS8833, appear to behave identical
>   to Parade PS8830
> * gpio90 is TZ protected

[...]

> +	leds {
> +		compatible = "gpio-leds";
> +
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&cam_indicator_en>;

property-n
property-names

please, we're trying to unify such small things even though we know
it's "wrong" in a lot of places

> +
> +&i2c0 {
> +	clock-frequency = <400000>;
> +	status = "okay";
> +
> +	/* ELAN, 04F3:3315 */
> +	touchpad@15 {
> +		compatible = "hid-over-i2c";
> +		reg = <0x15>;
> +
> +		hid-descr-addr = <0x1>;
> +		interrupts-extended = <&tlmm 3 IRQ_TYPE_LEVEL_LOW>;
> +
> +		pinctrl-0 = <&tpad_default>;
> +		pinctrl-names = "default";
> +
> +		wakeup-source;
> +	};
> +};
> +
> +&i2c3 {
> +	clock-frequency = <400000>;
> +	status = "okay";

It's also customary to leave a newline before 'status'

> +&pm8550_gpios {
> +	rtmr0_default: rtmr0-reset-n-active-state {
> +		pins = "gpio10";
> +		function = "normal";
> +		power-source = <1>; /* 1.8V */

Drop the 1.8v comments please

[...]

> +&spi10 {
> +	status = "disabled";
> +
> +	/* Unknown device */
> +};

Does the device crash if you enable this bus? Keeping it 'okay' would
make it easier for folks to poke at it

> +
> +&tlmm {
> +	gpio-reserved-ranges = <44 4>,  /* SPI11, TZ Protected */
> +			       <90 1>;	/* Unknown, TZ Protected */
> +
> +	bt_en_default: bt-en-sleep {
> +		pins = "gpio116";
> +		function = "gpio";
> +		output-low;
> +		bias-disable;
> +		qcom,drive-strength = <16>;

drop "qcom," and please keep the order of:

pins
function
drive-strength
bias
output/input

as you did below

> +
> +/ {
> +	model = "ASUS Zenbook A14 UX3407RA";

There's no strict policy, but variants usually go in braces

> +	compatible = "asus,x1e80100-zenbook-a14", "qcom,x1e80100";
> +};
> +
> +&gpu_zap_shader {
> +	firmware-name = "qcom/x1e80100/ASUSTeK/zenbook-a14/qcdxkmsuc8380.mbn";
> +};
> +
> +&remoteproc_adsp {
> +	firmware-name = "qcom/x1e80100/ASUSTeK/zenbook-a14/qcadsp8380.mbn",
> +			"qcom/x1e80100/ASUSTeK/zenbook-a14/adsp_dtbs.elf";
> +
> +	status = "okay";
> +};
> +
> +&remoteproc_cdsp {
> +	firmware-name = "qcom/x1e80100/ASUSTeK/zenbook-a14/qccdsp8380.mbn",
> +			"qcom/x1e80100/ASUSTeK/zenbook-a14/cdsp_dtbs.elf";
> +
> +	status = "okay";
> +};
> +
> +&uart14 {
> +	status = "okay";
> +
> +	bluetooth {
> +		compatible = "qcom,wcn7850-bt";
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&bt_en_default>;
> +		enable-gpios = <&tlmm 116 GPIO_ACTIVE_HIGH>;
> +		max-speed = <3000000>;
> +	};
> +};
> diff --git a/arch/arm64/boot/dts/qcom/x1p42100-asus-zenbook-a14.dts b/arch/arm64/boot/dts/qcom/x1p42100-asus-zenbook-a14.dts
> new file mode 100644
> index 000000000000..b6c9a707090f
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/x1p42100-asus-zenbook-a14.dts
> @@ -0,0 +1,48 @@
> +// SPDX-License-Identifier: BSD-3-Clause
> +/*
> + * Copyright (c) 2025 Qualcomm Innovation Center, Inc. All rights reserved.
> + * Copyright (c) 2025 Aleksandrs Vinarskis <alex.vinarskis@gmail.com>
> + */
> +
> +/dts-v1/;
> +
> +#include "x1p42100.dtsi"
> +#include "x1-zenbook-a14.dtsi"
> +
> +/delete-node/ &pmc8380_6;
> +/delete-node/ &pmc8380_6_thermal;
> +
> +/ {
> +	model = "ASUS Zenbook A14 UX3407QA";
> +	compatible = "asus,x1p42100-zenbook-a14", "qcom,x1p42100";
> +};
> +
> +&gpu_zap_shader {
> +	firmware-name = "qcom/x1p42100/ASUSTeK/zenbook-a14/qcdxkmsuc8380.mbn";
> +};

This file is not going to work on this SoC, you can drop it

> +
> +&remoteproc_adsp {
> +	firmware-name = "qcom/x1p42100/ASUSTeK/zenbook-a14/qcadsp8380.mbn",
> +			"qcom/x1p42100/ASUSTeK/zenbook-a14/adsp_dtbs.elf";
> +
> +	status = "okay";
> +};
> +
> +&remoteproc_cdsp {
> +	firmware-name = "qcom/x1p42100/ASUSTeK/zenbook-a14/qccdsp8380.mbn",
> +			"qcom/x1p42100/ASUSTeK/zenbook-a14/cdsp_dtbs.elf";
> +
> +	status = "okay";

Are the DSP firmware files actually different between the two?

Konrad

