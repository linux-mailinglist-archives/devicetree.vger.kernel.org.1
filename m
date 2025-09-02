Return-Path: <devicetree+bounces-211621-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 39231B3FB49
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 11:53:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0ADEB7A357B
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 09:52:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0E74E2F0C5F;
	Tue,  2 Sep 2025 09:51:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oYymdD6X"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3150A2F0695
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 09:50:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756806661; cv=none; b=EYB1SEGzutBFvMF5R3FQYGe0tFBesP5ZS0DleVwmg2COoQ9I3nmewpuwcVBHkDQ+g7GR3im2PAv+wqgMYphA53LGYnLlS4SXHEJ2+lJ/lWvQT9cYEI4QWtLyhHDnGvxxWzYL4w/z/q4vDXGqelPN32/lfLdPkLEAQHWAUF3kouY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756806661; c=relaxed/simple;
	bh=Fw7CUP2+qJw8Q2uQuLdE+0O7GNkj9fOnp/YEL97iIqc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=d4q8XzDm8iRwxB7V1QapPRHeF46GqVZx7B8UcoopIflkG75NBfAaW+xKQoCtyCXZEF0BOY/dpV6ZpjPrcytD7zQdxmlaBnH8DMjktzvv4NWgvHjqAWg8+c5YYZnCUrnfO5sSwdh3ZgrMtRKhjDVRNTV2sYiqPBsLevZG2XU/goY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oYymdD6X; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5822Rqpo029973
	for <devicetree@vger.kernel.org>; Tue, 2 Sep 2025 09:50:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=VS8jFUXuJu8JiDeDzmlG9QSe
	cm6oM4zjP0DoxNt7tcU=; b=oYymdD6X6qwyayEFgz/fOqNrajwjDWGqrvz8iLPR
	7Rzhw1wRjBPU233Zlei1ikNdVlS+E2ZcD/3nsRBySbGiEoEkkum/Yvtbyr9NHSuO
	lAhLh8ztHqvt03HlMlA/gK8iuxaCRtUR9bB+M3L3jRrfXtB1SH48rDS0jsqYyGOM
	ARUiBfv3fO/vvUfLFFmDQJEXIAqZe4PCCAe9dOCMaACO83vmsNW0Vm/Y/+e+b/wW
	tlJnYGqxzEleETI6I7JfGsEMz7doE6apdPTwYE7mYOPR/rIn9V+UTTj+oSnz8C5P
	aQq8Fha71HY/3vaUvJTKWO/icz/XK9ZguZzr9kN6/ks4Mw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48w8wy3622-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 09:50:59 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b3415ddb6aso17490361cf.0
        for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 02:50:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756806658; x=1757411458;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VS8jFUXuJu8JiDeDzmlG9QSecm6oM4zjP0DoxNt7tcU=;
        b=GmFvOuFumNv3v++066hu0SFzHGAzswz3JgbvXu4MUyJEZZ2lUbYBUqG+o/gugJ3qbO
         rdOk7nNtGDmaD4l1DpkwQHNAPenCXI1l6Udw8SHVaWT6DVFwyfXx87WbLG2UaULsD1rP
         AJvrKImwYcdrzzNTRl+OFyULvht7EtYZ5fb4v6tGNQrZQ1ldPSmoqXDerCHtxOpbukaN
         jnWhh6GblftB9coJiDO1RdrYh7p4bEc5bQpzaD6XANIMts6NN2MySSirlWscyDYSsoUj
         Clp1Y1FauwOoH2XtGZqA/Mn6AwSgwnvdj6VLAMd+DCyNwBrZI4UDxlybzwY3tcHgOTVm
         CmYw==
X-Forwarded-Encrypted: i=1; AJvYcCXJ8l9nkS4L0fgD4ugSoVMA5MDKWr8neELnnR95CQ+88/jYSugW8iVuevWRw0aloHfSI5shGpQgYe/M@vger.kernel.org
X-Gm-Message-State: AOJu0YxX1xOZGPVsv1t9hVobB9Ary8SaBJVxJQIhF29SLpg3pRWIKXjV
	PFORAAxQ1jCVC0S+DYLST+orTeJ4IASA36b+jMoZQq/S/vvlSbAYW/S8wpdx9vpmLdOdVJIdhZk
	evJNH/CRrnfnui1rj27I+/AtauGYTh178qtynLwdCGAYdBiyhM8qCjz68aiTWm4Vo
X-Gm-Gg: ASbGnctIxNJ5BGW6cD7ogq3CoTxz8XF8rFn9zqCG8PPTHe92l/cKWeqdQaA+UQT6D4f
	DQCW0CCgW5gsl8+ggpItQeXlDSVsMqvTGR218HFp/2f43FGBJFnkedp2zZcwjeA13pYgGz1obXJ
	s6xmr3p8WXxVCnsMu1BnTy46GkVx/lr0P3P+Fy1tWyZfwESyYSb4sFaS2Nn63nQS3LhQNwfUaal
	6/lK9gKL8MIUaMnCnVG2APS4qg03doW8/Rz5SGZfJBW99HJ/14xp+LdAdTD5zKyVTWOjXBVriZQ
	dhbglJl0pylCOSHbp86/EXByjQVPKpM6gt8DwWm0Ph1PbQXHl+s2bf56FruTh7zyQK/XV5WVc9N
	sC5gLJXdVo7VOXuOJAYekX+fxM1gKKc3olQD8SqhJNn95jwKU/Adv
X-Received: by 2002:a05:622a:38a:b0:4b2:8ac4:f09e with SMTP id d75a77b69052e-4b31ba120a6mr151877061cf.40.1756806658068;
        Tue, 02 Sep 2025 02:50:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHI1gYcFOnDtwfO86fvtbDCwttIApFPz4/9POC1oskRgllyLJ+lFBLaQWgL/L6QoCI7n7hKVw==
X-Received: by 2002:a05:622a:38a:b0:4b2:8ac4:f09e with SMTP id d75a77b69052e-4b31ba120a6mr151876771cf.40.1756806657496;
        Tue, 02 Sep 2025 02:50:57 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-560826d1209sm578672e87.19.2025.09.02.02.50.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 02 Sep 2025 02:50:56 -0700 (PDT)
Date: Tue, 2 Sep 2025 12:50:54 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yingying Tang <quic_yintang@quicinc.com>
Cc: Yijie Yang <yijie.yang@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Yingying Tang <yintang@qti.qualcomm.com>,
        miaoqing.pan@oss.qualcomm.com,
        "stone Zhang (Stone)" <stonez@qti.qualcomm.com>,
        zhichen@qti.qualcomm.com
Subject: Re: [PATCH v8 3/3] arm64: dts: qcom: Add base HAMOA-IOT-EVK board
Message-ID: <lfdgxbezefncmyw6euac6navuaiq25jjrrd4j3sabwjbi5adth@sx76za7f2e5a>
References: <20250828-hamoa_initial-v8-0-c9d173072a5c@oss.qualcomm.com>
 <20250828-hamoa_initial-v8-3-c9d173072a5c@oss.qualcomm.com>
 <qgirqibqvsld7n2ac4cvuvtqknhqkq535jkxnxjjqvss5wpm36@i3mbp7qgqxju>
 <1600b292-df57-4328-baa6-db6467e00096@quicinc.com>
 <wxnyux7a5raz5ltz7hpd5dp5euuwwjts2qvhvr4ksdgoye6pm5@2jxthgfwgpuf>
 <23d10901-6b8a-41fb-8cb2-e8e361093561@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <23d10901-6b8a-41fb-8cb2-e8e361093561@quicinc.com>
X-Authority-Analysis: v=2.4 cv=Ycq95xRf c=1 sm=1 tr=0 ts=68b6be03 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=RJ5EoE1EhMmZrhn8kTQA:9
 a=CjuIK1q_8ugA:10 a=dawVfQjAaf238kedN5IG:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-GUID: _rIPgcWTLErcCHUPfZAYXmhLKiZzN7LJ
X-Proofpoint-ORIG-GUID: _rIPgcWTLErcCHUPfZAYXmhLKiZzN7LJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTAxMDEwMSBTYWx0ZWRfX/I06iG5p5EZ0
 E9JNMSYOjzNNZsbdNuYLKuvaaF0n/3gGUGWgwbM9MBy93kQiPrNbyqrMhlW55uwrUeTxlx06A4v
 lBBhhrJ3kJPLvfGDVlkieCd1wSuOZlFdlRgZt7/j8zd8YDAJElm3euy9tO/TGM0FKKJPS2/0ZG3
 t42t/ymIccMLaAZ6aYAx17+rUPOTlRto45B6ztl7FfVMVFI2cq67wHi6f09TkthBEgvE1OimivJ
 j1vy11jXMMRV7VlFsvrboAUKRoOrlyXeG9v29e7F29OCZWYEUIpsGKgPH+rOyJQW8+zu3yEOCYw
 KY73HSFwk6Y/uZ/R6hcmCuc3+L3loDrLjIkUFivY5kLUi2CcHqs3XiuczTVgf4c/4Ozd1phQOh3
 eGQp/2Ip
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-02_03,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 adultscore=0 phishscore=0 malwarescore=0
 bulkscore=0 suspectscore=0 impostorscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509010101

On Tue, Sep 02, 2025 at 02:56:37PM +0800, Yingying Tang wrote:
> 
> 
> On 9/2/2025 10:37 AM, Dmitry Baryshkov wrote:
> > On Mon, Sep 01, 2025 at 11:02:24AM +0800, Yingying Tang wrote:
> >>
> >>
> >> On 8/28/2025 7:18 PM, Dmitry Baryshkov wrote:
> >>> On Thu, Aug 28, 2025 at 12:48:47PM +0800, Yijie Yang wrote:
> >>>> The HAMOA-IOT-EVK is an evaluation platform for IoT products, composed of
> >>>> the Hamoa IoT SoM and a carrier board. Together, they form a complete
> >>>> embedded system capable of booting to UART.
> >>>>
> >>>> This change enables the following peripherals on the carrier board:
> >>>> - UART
> >>>> - On-board regulators
> >>>> - USB Type-C mux
> >>>> - Pinctrl
> >>>> - Embedded USB (EUSB) repeaters
> >>>> - NVMe
> >>>> - pmic-glink
> >>>> - USB DisplayPorts
> >>>> - Bluetooth
> >>>> - Graphic
> >>>> - Audio
> >>>>
> >>>> Written in collaboration with Quill Qi (Audio) <le.qi@oss.qualcomm.com>,
> >>>> Jie Zhang (Graphics) <quic_jiezh@quicinc.com>, Shuai Zhang (Bluetooth)
> >>>> <quic_shuaz@quicinc.com>, and Yongxing Mou (USB DisplayPorts)
> >>>> <quic_yongmou@quicinc.com>.
> >>>>
> >>>> Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
> >>>> ---
> >>>>  arch/arm64/boot/dts/qcom/Makefile          |    1 +
> >>>>  arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts | 1247 ++++++++++++++++++++++++++++
> >>>>  2 files changed, 1248 insertions(+)
> >>>>
> >>>> +
> >>>> +	wcd938x: audio-codec {
> >>>> +		compatible = "qcom,wcd9385-codec";
> >>>> +
> >>>> +		pinctrl-0 = <&wcd_default>;
> >>>> +		pinctrl-names = "default";
> >>>> +
> >>>> +		reset-gpios = <&tlmm 191 GPIO_ACTIVE_LOW>;
> >>>> +
> >>>> +		qcom,micbias1-microvolt = <1800000>;
> >>>> +		qcom,micbias2-microvolt = <1800000>;
> >>>> +		qcom,micbias3-microvolt = <1800000>;
> >>>> +		qcom,micbias4-microvolt = <1800000>;
> >>>> +		qcom,mbhc-buttons-vthreshold-microvolt = <75000 150000 237000 500000
> >>>> +		500000 500000 500000 500000>;
> >>>
> >>> Other platforms use a single line here. If you don't want to do it,
> >>> align data to start from the same column rather than restarting from the
> >>> column 1.
> >>>
> >>>> +		qcom,mbhc-headset-vthreshold-microvolt = <1700000>;
> >>>> +		qcom,mbhc-headphone-vthreshold-microvolt = <50000>;
> >>>> +		qcom,rx-device = <&wcd_rx>;
> >>>> +		qcom,tx-device = <&wcd_tx>;
> >>>> +
> >>>> +		vdd-buck-supply = <&vreg_l15b_1p8>;
> >>>> +		vdd-rxtx-supply = <&vreg_l15b_1p8>;
> >>>> +		vdd-io-supply = <&vreg_l15b_1p8>;
> >>>> +		vdd-mic-bias-supply = <&vreg_bob1>;
> >>>> +
> >>>> +		#sound-dai-cells = <1>;
> >>>> +	};
> >>>> +
> >>>> +	wcn7850-pmu {
> >>>> +		compatible = "qcom,wcn7850-pmu";
> >>>> +
> >>>> +		vdd-supply = <&vreg_wcn_0p95>;
> >>>> +		vddio-supply = <&vreg_l15b_1p8>;
> >>>> +		vddaon-supply = <&vreg_wcn_0p95>;
> >>>> +		vdddig-supply = <&vreg_wcn_0p95>;
> >>>> +		vddrfa1p2-supply = <&vreg_wcn_1p9>;
> >>>> +		vddrfa1p8-supply = <&vreg_wcn_1p9>;
> >>>> +
> >>>> +		bt-enable-gpios = <&tlmm 116 GPIO_ACTIVE_HIGH>;
> >>>
> >>> Okay, so how is WiFi controlled? Is there a GPIO? The DT should be
> >>> describing the hardware, not the UEFI behaviour.
> >>>
> >> Hi Dmitry, as I described in previous mail, On hamoa platfrom whole wifi module's power supply and enable gpio are voted in UEFI.
> >> Hamoa is PC platform, so BIOS/UEFI behavior is compatible with Windows/ACPI architecture. UEFI is responsible for enabling power supply 
> >> for all devices which may be used in boot phase (such as WLAN may be used to boot from network).
> > 
> > This is not completely relevant. You are describing driver / Linux /
> > bootloader behaviour. I asked if there is a GPIO in the hardware. If
> > there is one, please add it here.
> 
> Hi Dimitry,
> 
> During the UEFI boot phase, the WLAN enable GPIO has already been asserted, and the WLAN chip is functioning normally. 
> If we include this GPIO in the kernel device tree, when the kernel configures this GPIO, its voltage level may experience a brief glitch, which could cause the WLAN chip to reset and result in a PCIe link down.

Here you are describing driver behaviour. It's a software issue and
can be handled in the driver.

I'm asking you to describe the hardware. From the hardware perspective
there is a GPIO pin. Please describe it in the DT.

> So I didn't add wlan-en-gpio in this hamoa's device tree.
> 
> 
> 
> > 
> >>
> >> So we need not Wifi chip's power and control GPIO in kernel side, thanks 
> > 
> > What if someone requests this GPIO from userspace and pulls it down?
> > 
> >>>> +
> >>>> +		pinctrl-0 = <&wcn_bt_en>;
> >>>> +		pinctrl-names = "default";
> >>>> +
> >>>
> >>
> > 
> 

-- 
With best wishes
Dmitry

