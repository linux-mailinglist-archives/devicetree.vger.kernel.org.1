Return-Path: <devicetree+bounces-214769-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C0BFB4A547
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 10:31:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C37A51684AE
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 08:31:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5080422D9E9;
	Tue,  9 Sep 2025 08:31:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OXecIJdm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B3A8712CDA5
	for <devicetree@vger.kernel.org>; Tue,  9 Sep 2025 08:31:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757406698; cv=none; b=eRl+eWyMMJhA0u23B7rS6SiDI6HD93rlCSRAY0n6xAPILUgcSNLxeb8sPXVw9yic7G2WBmaakWS+49xNtKckue5xHwckn5kwEnYiP5bBn/+MzqT3bjz4Ji53kGpZaGHEb3WxsS/ES4AQC9X0iyNP3wBc3T/yvWIIhMx+afgmmyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757406698; c=relaxed/simple;
	bh=Q3tkmiFsZJm37YxiC2B+AnN9v8rzwEJsKzvyIscck8s=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=tFzJ5U+A57URhwIMOC68lAmW4eVUQST5fCXIGNpXQ/rU1N6BZl/STO/S6S95dfkzFi6xcctMkjenQLU7rJDGij0e+ZXfUmYXfhfm0eZJ8Ty0NTF3B8S5Kvs+eE/yEMzoSwDBFW/KsHVV7hkkU+4VFkzlF0q2Cnj24NfT7K7N4Iw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OXecIJdm; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5896SpHV021302
	for <devicetree@vger.kernel.org>; Tue, 9 Sep 2025 08:31:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	R7eITHZjo81f81b5RbKzWZ5Utg4ySiLXReDKdi+aAZk=; b=OXecIJdmhLNXRsX9
	97HOkojdeBBfs3VJ8ArdF+MybavsBOIkKvscuENImJT7T+FZSbF/0TXkjYx7VFt4
	dioYLMck09m/UDp4g28tVVbJumDGos3g+pXUzp0kVH+D4FGlnkJ577PfLhOj+/V9
	v0/sDc87Oj6sts8jVd1rAg8y3fgeYgP9RdxXWvD+tfjWhloqA1i+lvECBcy2H/sc
	6YlLOU/2eq94Df3j3mcUN6vFtuMeVTWde6d0ByVDZ8OQ4O9CYbFQAUPJ+YrI9eup
	L87igay6e842zCEYR1d/X/Xlaj4qVD8PvLL5wcHPv3nFi9AlyxJO5rOR/skCWb+6
	oWT3tw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490by8yk1e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 08:31:35 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-71ce3c952c1so7118696d6.3
        for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 01:31:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757406694; x=1758011494;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=R7eITHZjo81f81b5RbKzWZ5Utg4ySiLXReDKdi+aAZk=;
        b=aONAW7IUDLjb967cA1A59KXpar6fFrANsrttMLr7o9Xy/5orRd5uybAmh8FeWtDKq1
         z0M1qRq4Fn8e/KZ9KZTxViHdEFjigsc8whHmyhYPt4LdBh3IIxALifJKD8Ly+S3kdKlw
         UtYfK7kwG+4SgHwVXt3g8jHz0y2ORW6wjEpVDxpFrdd/56sbf2wBMuBnV6ai6rdTUiND
         CGjYPAoSMMndSdGManTEwL9ypmXGd76+Nsun6+3EkY4KOzxAX2RYwj1FUKGFMunE4Z0W
         T+vb8zEHQ/kqyeRpF4KUoIOrGmS0F37JczwBcnpWmgQvG04lCSKhrr2jGNsfGP7DFzf3
         q60g==
X-Forwarded-Encrypted: i=1; AJvYcCVrV7lcszQvGPhKPDEv6TVzwSOBDlKngtxA8hNrbojeKJ5/3MgqlheMKG4nnu1CRREIsd8W5wnZwD9h@vger.kernel.org
X-Gm-Message-State: AOJu0Yx8l2M+zl/svsrM/wGEpMZ6m1avW6i1i6W7yGBFaC4oiHN15YZa
	pbId+jQBjfujU+9fmuS0ll6WlRAXs01+bCEKOqccTn4KK/Z10XyG2L0Vl6e2RwEk7b36Tut+/Xe
	Jv4ZJle/F6BNL2PZmUQ0dBldNEICVwaLtoe//92M1WRFv1KTu+R1OFxB9f9Bi5PzJ
X-Gm-Gg: ASbGnct9AkST+5XTXc8nOAPL/p8wUocfF75G8Sc96KUX/SUXK3do5R4l65OQI2g+7FU
	/vPkKxkuRQPbA7IUQLZTXxJkXdqLwG53qge3aAulnd4kDiReNdXoXkry2e7NJzAildp/J0rPYON
	OzZnHaS6e1h9I6/hnmJedim9PM1wU5FTxeGWsEc2M2gssI7poe8RyRTtaZT2yxQ5L158bV9mfim
	3RV2iKmjG+h4KNEStO5Cs53MZcZfUkVHdG1rQysOgbFwVoUvy7oQofnVF3galnOpneLAS6I8FM1
	e/qIcuTADFwPWYWZpAJ15tZVB3ZI5jXUm8scLWfY2Vm/9Uid1BVGl5Uk4c024yu+3zH3BrKALXF
	NGjRNMd1KlYH+NLwycJtxqQ==
X-Received: by 2002:a05:622a:409:b0:4b5:e391:e3e0 with SMTP id d75a77b69052e-4b5f824786cmr71643951cf.0.1757406694446;
        Tue, 09 Sep 2025 01:31:34 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFw4k1HxsrxxCB989pCSBZXp1N3A5thT3d8CW6byohkVI2BrFWDomLFgQWaPLslSwKMDUaaAw==
X-Received: by 2002:a05:622a:409:b0:4b5:e391:e3e0 with SMTP id d75a77b69052e-4b5f824786cmr71643811cf.0.1757406693919;
        Tue, 09 Sep 2025 01:31:33 -0700 (PDT)
Received: from [192.168.149.223] (078088045245.garwolin.vectranet.pl. [78.88.45.245])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b046eb335f5sm1400382866b.28.2025.09.09.01.31.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 09 Sep 2025 01:31:33 -0700 (PDT)
Message-ID: <c1dff274-4b71-4d18-be2d-eb5959111243@oss.qualcomm.com>
Date: Tue, 9 Sep 2025 10:31:31 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v10 4/4] arm64: dts: qcom: Add base HAMOA-IOT-EVK board
To: Yijie Yang <yijie.yang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20250909-hamoa_initial-v10-0-ec10057ffcd2@oss.qualcomm.com>
 <20250909-hamoa_initial-v10-4-ec10057ffcd2@oss.qualcomm.com>
Content-Language: en-US
From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
In-Reply-To: <20250909-hamoa_initial-v10-4-ec10057ffcd2@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Authority-Analysis: v=2.4 cv=Yv8PR5YX c=1 sm=1 tr=0 ts=68bfe5e7 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=FpWmc02/iXfjRdCD7H54yg==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8
 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=Kyid7Z_SZgMD8xIH7KUA:9 a=QEXdDO2ut3YA:10
 a=OIgjcC2v60KrkQgK7BGD:22 a=cvBusfyB2V15izCimMoJ:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: xYW2z83qDz4nKhX4fEKebw2CHkhq_21F
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAxOCBTYWx0ZWRfX96R1LyKwdcDa
 wtHuC9GWsvnWeR+mY8touiLC5Zh+/D/dlOeal7hO1HwFveXfYedcbaY5v4y7Yv8eWgm479hsInL
 uNYFCiHBY8lLCrZalxaZ8VQv1YvLtsotjtHVNGz6GnKbQ0aYAdcQPaVdlCUF+vjLXp6rN5J2wFy
 d1FhOpOxY19l5B4kyqBHycIu4yeZ7cD1WnrrgVoq+NWUGqBWXERjstY56+53/nblwwadpYHFAWt
 14ATjmrqksyUH6nB4axQAONogsASvBDX1kR13gsQjNe1uRKq2qOZ12ITxeen8NpbUEamab0WUJF
 BkTCWg2g9b2rtEzJyt/8sXJm1vvlhq7kk4gK/c/NbSUdEdhroNvbYFVFsheArb1x4CO3k9nudJz
 9s0x9yD8
X-Proofpoint-ORIG-GUID: xYW2z83qDz4nKhX4fEKebw2CHkhq_21F
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-08_06,2025-09-08_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 suspectscore=0 phishscore=0 clxscore=1015
 spamscore=0 priorityscore=1501 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060018

On 9/9/25 5:56 AM, Yijie Yang wrote:
> The HAMOA-IOT-EVK is an evaluation platform for IoT products, composed of
> the Hamoa IoT SoM and a carrier board. Together, they form a complete
> embedded system capable of booting to UART.
> 
> Make the following peripherals on the carrier board enabled:
> - UART
> - On-board regulators
> - USB Type-C mux
> - Pinctrl
> - Embedded USB (EUSB) repeaters
> - NVMe
> - pmic-glink
> - USB DisplayPorts
> - Bluetooth
> - WLAN
> - Audio
> 
> Written in collaboration with Quill Qi (Audio) <le.qi@oss.qualcomm.com>,
> Jie Zhang (Graphics) <quic_jiezh@quicinc.com>, Shuai Zhang (Bluetooth)
> <quic_shuaz@quicinc.com>, Yingying Tang (WLAN) <quic_yintang@quicinc.com>,
> and Yongxing Mou (USB DisplayPorts) <quic_yongmou@quicinc.com>.
> 
> Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
> ---

[...]

> +	sound {
> +		compatible = "qcom,x1e80100-sndcard";
> +		model = "X1E80100-EVK";
> +		audio-routing = "WooferLeft IN",
> +				"WSA WSA_SPK1 OUT",
> +				"TweeterLeft IN",
> +				"WSA WSA_SPK2 OUT",
> +				"WooferRight IN",
> +				"WSA2 WSA_SPK2 OUT",
> +				"TweeterRight IN",
> +				"WSA2 WSA_SPK2 OUT",
> +				"IN1_HPHL",
> +				"HPHL_OUT",
> +				"IN2_HPHR",
> +				"HPHR_OUT",
> +				"AMIC2",
> +				"MIC BIAS2",
> +				"VA DMIC0",
> +				"MIC BIAS3",
> +				"VA DMIC1",
> +				"MIC BIAS3",
> +				"VA DMIC2",
> +				"MIC BIAS1",
> +				"VA DMIC3",
> +				"MIC BIAS1",
> +				"VA DMIC0",
> +				"VA MIC BIAS3",
> +				"VA DMIC1",
> +				"VA MIC BIAS3",
> +				"VA DMIC2",
> +				"VA MIC BIAS1",
> +				"VA DMIC3",
> +				"VA MIC BIAS1",
> +				"TX SWR_INPUT1",
> +				"ADC2_OUTPUT";

It's good to write these entries in pairs, as that's what they
correspond to.

Please also take a look at this commit:
b49e37de8e70 ("arm64: dts: qcom: x1e80100-crd: Drop duplicate DMIC supplies")

[...]

> +&i2c5 {
> +	clock-frequency = <400000>;
> +	status = "okay";

A '\n' before status is customary

[...]

> +&usb_mp_hsphy0 {
> +	phys = <&eusb6_repeater>;
> +};
> +
> +&usb_mp_hsphy1 {
> +	phys = <&eusb3_repeater>;
> +};

See:

https://lore.kernel.org/linux-arm-msm/20250819-x1e80100-fix-usb-mp-repeaters-v1-4-0f8c186458d3@linaro.org/

Konrad

