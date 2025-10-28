Return-Path: <devicetree+bounces-232018-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 02622C13B50
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 10:08:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 639FE346ED0
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 09:08:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D1A2929B8E5;
	Tue, 28 Oct 2025 09:08:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cjWFCcDJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A39F279DA6
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 09:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761642505; cv=none; b=tszAgwB4895NgX5/FXkLRTFx9pVZWMJmcmQmW/RmLLZpGTn/cUAA5JXw/qnaP0lsY24yBnd8iDagD6E5kdjoeXJtNQR0tY8yBvgP1piw+FlYxorGMtm9KG88sbYOW/AWJE2ErSyl/R+aj2+xogNkj3KYa/6XvAmYuwC1YiHGeYI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761642505; c=relaxed/simple;
	bh=Mjy7PAoHBx36v7HAC236+RJx5SHs8x1JsKTGJ2NS6UU=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=o+u2ssTgtsUbr07Gm4j4aaRq41T68q607Tg+O5Z11NyQ7cdqfRSS+VtJJx8zd79aVvHEapDcsY7fUiYCIJ/GJm2i8R1cHcaY0Vga7RA1xJBQ1cz5iaSbx5F+zqckCXjNigQS5c4kNqc6i9VPSSsX4J/Vwa8HYcz2qRIt8tu/MZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cjWFCcDJ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59S8Xs7p1177185
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 09:08:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	lNzCwtBrvgtjl8ydwxDZPx2RnyuBjsk244P+LTCOqBw=; b=cjWFCcDJIwlRWvP4
	6+AL2Rg9VjLUH37XJlCwumQhGczMosLlQNq58RlQUWnQ8Y1nnR+lO2lv3VC8d1Yt
	EVDp4zmzGHGPDbFNJ08lfz1SF+aNOm8B95c9TH8rx7kV53vTjU2LNZwKAOPapg6U
	Vq+fyROCB8xEOjIPoWwcbppPcDYKW4xXtETbNp7zMuYfmZgntB1tGFl8Eh+522ml
	7y4fwUUCpORrKAQJw4Xp4ynSAXRtQ8EtEyyp/CGctbdIvkrDmD3c79B0JG742Kvw
	Hzx592468RbxYaXK+AS+9ITJV2IvVkg+qqJdbZuE1z2qfKcZqKeE/GGai2hM0BJG
	LoJBNg==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a2tebg3fv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 09:08:22 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-87bd2dececeso22914086d6.1
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 02:08:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761642502; x=1762247302;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lNzCwtBrvgtjl8ydwxDZPx2RnyuBjsk244P+LTCOqBw=;
        b=gRmLS7nY2jiS/VhEceYnYUaA6P6pYQE1jjQ24qcmTcOdq+Wol2/GC+cfzsjWQJacu/
         pMdSZI56k7TFbklr+2ta5JO0cug7yDT53f3vbtwt7nM2gbkNGHrJlYKI8511aYsFJZem
         WNFG3sIpSE/9gGftdcsl6pLtH7hAzrrwkPmFLxUk6AHhLAlmil9Bivbsr5VE0iLR+toU
         2IiKiYDZ+q6cwfK8K6hUTNRlkkTJkk8ELNrMLeARam+SPinnSai5r8Y2CnzI7e3qaX4g
         ojBUp+igmFUt+uEioFZRSai+dgMKoFdiatyCvHelG+IDBQrkrf5SJ6vbKIi6xclD8dbo
         1oBA==
X-Forwarded-Encrypted: i=1; AJvYcCWJvLCMzAbZfnQQ89/lXDlm7TJxO2VwuQHgfADgKM1CO402zSzYComa22pYY5kHdiCe8egIav7P2Nxf@vger.kernel.org
X-Gm-Message-State: AOJu0YwSkVeuJl6INe6YvtOvWikBjZ+JTfUnrvt1KqLW+5B3a+GutYdC
	8FA38rduFZceVe/kkkhSUSAvuQvpLgg/vRO2iofAvaT346ODX7Rr5bAaiSZfEhD2s8u2XQHtu7R
	F07eYQDNUc3jqThaWfuz/IyJ7fujMuBr54QJHAdCM0imQigBGeBsjCP8zMAPrlRee
X-Gm-Gg: ASbGncttr/Vt2r9E+El0MLlFo7xBNsqSE6cadb4T3ki7w7/hlMN3EaGgbrgIRb0hwbe
	FZgf7VJCOR9NSBE0l0rVdiUXlxO9yl61ENFqzqk3R3XZkr2DSLGc3aYnmVMWaCm7tDUdKvLTPCi
	wW+b0XMLHgzZcdFcH8RKrcJygtXr13r64zqnIZP20mcxaeGkT/5X1HDGbZ/sh2JUpDfav2hwiBI
	zcdfDCVuurRtcpVfUxAhC3AxI0cOq8AQOOEL/G2XpHsxRu2Y6Qb+FdZcHWxYhwprK1nKe6lRch8
	c2RFEUUTsP6Lx+LBwkfFmY1wLcGstcOR5lVTY8NFNM1juTiSvX6p0+i+zGgJ8j7ZwVoXHKZGhZX
	f/g5yY+uhYJ5cWleqvPfZkLy+7hkq+GADffRpFFlKa9jKG75joQA5TxOk
X-Received: by 2002:ad4:5c6f:0:b0:87d:cb51:4015 with SMTP id 6a1803df08f44-87ffaffe3d1mr25573296d6.1.1761642502359;
        Tue, 28 Oct 2025 02:08:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHSsVgQ4selJ8mk4A008ZLRPPa4YkiK7p7R9VTF5PkagGcPA4cHYsISXb8KpyC6ExxL2/ff3A==
X-Received: by 2002:ad4:5c6f:0:b0:87d:cb51:4015 with SMTP id 6a1803df08f44-87ffaffe3d1mr25573046d6.1.1761642501909;
        Tue, 28 Oct 2025 02:08:21 -0700 (PDT)
Received: from [192.168.119.202] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b6d853696a3sm1026501966b.27.2025.10.28.02.08.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 28 Oct 2025 02:08:21 -0700 (PDT)
Message-ID: <b5d9d47b-7fb2-4ce4-9bc8-0d28395b78db@oss.qualcomm.com>
Date: Tue, 28 Oct 2025 10:08:19 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH] arm64: dts: qcom: Add backlight support for eDP panel
To: Yongxing Mou <yongxing.mou@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20251028-hamoa_dvt_backlight-v1-1-97ecb8d0ad01@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20251028-hamoa_dvt_backlight-v1-1-97ecb8d0ad01@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI4MDA3NyBTYWx0ZWRfXyxZvof2ielSy
 d+ctHB6KjjH1Tox1ujr9COOe+T2Vte7uHtcvMKTEaxr3NwXOBtR5CcZwaFjCGwtzQT14qwI3HvC
 +89vN2stJ0dY5zqY8jMV6hWtiKy3qmP4FUYH7xmGSwyDZljuBPLGepsVYHdkPRJ9tyqJoEKa66P
 DmwWIUy9lWvqPX0jqIOq8mVlN+7T3+0dxKGypRellZLxwfrvC7b9G2hGuWFGqCZhCcIWmEXE67Q
 X9rYBrSOJNwJP4D8YwQY65J4FE1FQVsuoXsE/5qjG8Ib5HjBaMnt7gyH6LFtJR1slEugtQH01Sd
 D7ucmgIx+TwxDUqe0huymeantaf4aEouoxVFO5Xlm8qdzpEEEVEzTDPUFttFPXC/QAli0pOahje
 MVy/+ktInYUcyuS3nAqne8vg9zD44g==
X-Proofpoint-GUID: OhZXcY7kQJ0TUOFb8WMVbHvAH6vO6R_v
X-Proofpoint-ORIG-GUID: OhZXcY7kQJ0TUOFb8WMVbHvAH6vO6R_v
X-Authority-Analysis: v=2.4 cv=V/BwEOni c=1 sm=1 tr=0 ts=69008806 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=gak16K312S0d-va-ULgA:9 a=QEXdDO2ut3YA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-28_03,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 adultscore=0 malwarescore=0 spamscore=0
 phishscore=0 impostorscore=0 suspectscore=0 bulkscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510020000 definitions=main-2510280077

On 10/28/25 8:04 AM, Yongxing Mou wrote:
> Previously, the eDP panel backlight was enabled via UEFI. Added backlight
> control node in kernel DTS due to some meta may not enable the backlight.
> 
> Aligned with other x1e80100-based platforms: the PWM signal is controlled
> by PMK8550, and the backlight enable signal is handled by PMC8380.
> 
> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> ---

The subject must say "hamoa-iot-evk:"
>  arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts | 55 ++++++++++++++++++++++++++++++
>  1 file changed, 55 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
> index 36dd6599402b4650b7f8ad2c0cd22212116a25fe..fda1b3a3c7673be74832c27849231cba4bc1f25f 100644
> --- a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
> +++ b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
> @@ -17,6 +17,16 @@ aliases {
>  		serial1 = &uart14;
>  	};
>  
> +	backlight: backlight {
> +		compatible = "pwm-backlight";
> +		pwms = <&pmk8550_pwm 0 5000000>;

Try adjusting the backlight value.. you'll find some funny behavior
near the max level.. which reminds me I should send some fixes for
some laptop DTs

[...]

> +	vreg_edp_bl: regulator-edp-bl {
> +		compatible = "regulator-fixed";
> +
> +		regulator-name = "VBL9";
> +		regulator-min-microvolt = <3600000>;
> +		regulator-max-microvolt = <3600000>;
> +
> +		gpio = <&pmc8380_3_gpios 10 GPIO_ACTIVE_HIGH>;
> +		enable-active-high;
> +
> +		pinctrl-names = "default";
> +		pinctrl-0 = <&edp_bl_reg_en>;

property-n
property-names

in this order, please

Konrad

