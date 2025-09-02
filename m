Return-Path: <devicetree+bounces-211482-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 66B6DB3F269
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 04:38:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2CCBB1704CC
	for <lists+devicetree@lfdr.de>; Tue,  2 Sep 2025 02:38:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D4B382DF3FD;
	Tue,  2 Sep 2025 02:37:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hN4V3ceV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 475802DEA99
	for <devicetree@vger.kernel.org>; Tue,  2 Sep 2025 02:37:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756780674; cv=none; b=RGH0uNpnKZBvEha/EhazJv27cBv9MK2Misy8GrNgekOEVshWFOY5D3qnlkQPJv7V4Fx/OXrcwlHoA5fNQIZkJVhOazvUBjcMsVairbA9BTP/+Q1Q8fM4q1LTAq8p34sLXWDeH7/+seLa9oxE9rx1HrVKhJp0c3skIbwCW3BOzMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756780674; c=relaxed/simple;
	bh=mvW1r+I6v264GsbUKPHR+IJlXVioOuFSNcADZqKNIN0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=I03WoZH/3LFr7jQVKcHL3tD19yzZksS/ZTLZRzmIWhzL37dQzHLUIMopzqwSjNcjG+nmSNAtdOsrgVRc7TZYHK+hPTz1y9+4ZN60y8ujT/wOQjcMinFHmT79b26OIUYnene3ITE0nclmp85FchVbQ/8PCfQ9zvIPmhJKIfQvLjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hN4V3ceV; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5822RnpT029949
	for <devicetree@vger.kernel.org>; Tue, 2 Sep 2025 02:37:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=lCo5yqlFfxj1rvdhih1bRt/q
	s2pr+IUjnvQtOm6Ugdc=; b=hN4V3ceVrCO59fQZWqDSQI4pKyokMr/MSvzy2K9v
	5l06D5M1sXycexN1SIXlPHkhfNIJwvUvwcIzH8VX6W40ZwpsLfRcqWXqDuhGv9mb
	BpaWGlWRyXpHP0wnHNB142kkU4e7FJg1qj08HeC1XNcJSe7ckqRu95wNn1tXWE+N
	36AeVo5Tf8oBdU4D3dWhSCJRK6tUlOQsFGYItKhkLFbuNj3QJxNBuxpnUGsGfXVc
	+f2k19J22Z5F9kFSszKmNbq7DYOtjBwyAZaMi+RG2yhNO1VmWn83ll5z8/ehg8K4
	hToMnhGjhKnE/KUfRznLIVKBfo/Jb5Iv4Z3Ig/lWkqQZgA==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ush2x5x3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 02 Sep 2025 02:37:52 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-7188e3c2073so32503806d6.1
        for <devicetree@vger.kernel.org>; Mon, 01 Sep 2025 19:37:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756780670; x=1757385470;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lCo5yqlFfxj1rvdhih1bRt/qs2pr+IUjnvQtOm6Ugdc=;
        b=fHfn3fr29cr3n93Pc0QgtcVx9BksqExsShoD5nReemNiVHlAbMF2R4MaNcWZJZeGAF
         bWw3DLkwoNq7Y5Sukm6BNQDmLdjH3gfZQou2oqbcU7Eu8JY8Rws8lEZ1SRTlMAosJQmd
         HgQ0oSddRE71YaHu2Ubi95gbF0s5kiv6HXzwZ7ebuGShQx502fkpf4hSfariP++p01si
         zxbqbNCb6dYCgmLTfI88zVJGwN1iuhyIA+WOSjWWngKBpG1fKqosPzyCv8IOMJep5c+u
         rwmFVxuRSJh3eYVPC5QI3qNopnMyvz/kf1lb1N8jIzIYrFycgzwkfkHq8AuDkS2hlX4b
         hCBw==
X-Forwarded-Encrypted: i=1; AJvYcCWVEdBrvORt95ZIIVkU8iizgycZWVE4Fq4n/5lO7eToYpwZrPI6/wrYLS8zs6tAhBz4ncWclu1hn/iE@vger.kernel.org
X-Gm-Message-State: AOJu0YwL/5QEpivxrOWXm9GoTrBuh7+0dH4SktcH4zFcZJpwv60FoZ8o
	qBkmGQsYsFmbDDxLcEnCIcuvgRBRcwJos1Xm/Dqx1ldA4MDSwwBkI9AqFpbFj/kkBO0N60eHgwq
	WycBIJULdl7wLFgaFQHKkR0y/J4q5WoJ1QhVY52ZGUArqj4+rPF0fA0S2Bc1/ZeWh4QKxwy/E
X-Gm-Gg: ASbGncsQuXyVLHktECzird27WKNC1HHP4hikVT3GhooErRmL18XzquAfFcBu3WK+gMG
	cuUIxxC9hUt1G11lP97oauLGBFNnQqNkzNAOeOqrCiloYJklIE+vM259sdTzZgtd874+5SRMlGy
	2VSPfYWuBa4iBhAJ6kN7etIghDQkYrBt3C6T9nv60tZ7X3xNzbmjHGAvkmA3JDBdZs0lSDGIDK1
	Hti3fBzISfyxK4HTl5xtP+E68hoYMbrhD2SQYkwIbVQfMHW8P0pShYZI7j5McOiidBwALq5zAdq
	Bm4SrjCm7FK+bRw059LOzy5s/pMdhq9QXGuEswJ1CsysnpmvFqlMad5/L1RHa7VpMTRaalPHbAG
	CxUEFw7dgGEQv5gKRb1Av49/k26XkqLGt2C7oQoLRF8k+RQDOZEg8
X-Received: by 2002:ad4:5749:0:b0:713:72a7:6883 with SMTP id 6a1803df08f44-71372a76a95mr105620406d6.7.1756780670189;
        Mon, 01 Sep 2025 19:37:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG0/wEIEAbtq3sjhvO53PDFgxs1zysY8DJ507cbMdLdgxRDoNuiMJQbnFpFLtplZJ6Uvd5Y/g==
X-Received: by 2002:ad4:5749:0:b0:713:72a7:6883 with SMTP id 6a1803df08f44-71372a76a95mr105620126d6.7.1756780669614;
        Mon, 01 Sep 2025 19:37:49 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-560826d66e9sm294225e87.41.2025.09.01.19.37.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Sep 2025 19:37:48 -0700 (PDT)
Date: Tue, 2 Sep 2025 05:37:47 +0300
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
Message-ID: <wxnyux7a5raz5ltz7hpd5dp5euuwwjts2qvhvr4ksdgoye6pm5@2jxthgfwgpuf>
References: <20250828-hamoa_initial-v8-0-c9d173072a5c@oss.qualcomm.com>
 <20250828-hamoa_initial-v8-3-c9d173072a5c@oss.qualcomm.com>
 <qgirqibqvsld7n2ac4cvuvtqknhqkq535jkxnxjjqvss5wpm36@i3mbp7qgqxju>
 <1600b292-df57-4328-baa6-db6467e00096@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1600b292-df57-4328-baa6-db6467e00096@quicinc.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODMwMDAzMiBTYWx0ZWRfXxKJSCacY4YTB
 UbvM1WRlZNCfSMdrXFP34Q0giV9ebrvx8O1l+lag1kiyZIa8K5Av1MmhBdnvEu9hio0J6z/I+75
 XZIKMtjW+p0VJj8OLjZ5SR/5abvQ6wdOwkrWxDN6vs4nH9//2S7/E68wNkhxsfgFYG3lQSLIUMj
 bHFfPL8caRGuffwOxWFBTiPMUBNtOlDTDU3l8JEIBl04Kvqoy6U+REJgcvn1JR0ah7k4WxWyHBb
 FS5/H7nVWijyaYIgvzHWe6fYdeugGjuuhKNDA48RCO3xz2CePu09mlao88ysmWOqfsE2Fyv4/l3
 SK+MZNQHAUTXklE6uret2C1DvalAHDJuNEHqVesNk48AL9cQqR/RPT6JLBI/3L2wrrP/O2Y3LGd
 +FcYdFb9
X-Proofpoint-ORIG-GUID: 2fFU-jatJe6AkeKP9jSzpnqcPB8rMCty
X-Proofpoint-GUID: 2fFU-jatJe6AkeKP9jSzpnqcPB8rMCty
X-Authority-Analysis: v=2.4 cv=M9NNKzws c=1 sm=1 tr=0 ts=68b65880 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8 a=NQYTYoutc-N_kOBkNTkA:9
 a=CjuIK1q_8ugA:10 a=OIgjcC2v60KrkQgK7BGD:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-02_01,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 adultscore=0 spamscore=0 priorityscore=1501 malwarescore=0
 clxscore=1015 suspectscore=0 phishscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508300032

On Mon, Sep 01, 2025 at 11:02:24AM +0800, Yingying Tang wrote:
> 
> 
> On 8/28/2025 7:18 PM, Dmitry Baryshkov wrote:
> > On Thu, Aug 28, 2025 at 12:48:47PM +0800, Yijie Yang wrote:
> >> The HAMOA-IOT-EVK is an evaluation platform for IoT products, composed of
> >> the Hamoa IoT SoM and a carrier board. Together, they form a complete
> >> embedded system capable of booting to UART.
> >>
> >> This change enables the following peripherals on the carrier board:
> >> - UART
> >> - On-board regulators
> >> - USB Type-C mux
> >> - Pinctrl
> >> - Embedded USB (EUSB) repeaters
> >> - NVMe
> >> - pmic-glink
> >> - USB DisplayPorts
> >> - Bluetooth
> >> - Graphic
> >> - Audio
> >>
> >> Written in collaboration with Quill Qi (Audio) <le.qi@oss.qualcomm.com>,
> >> Jie Zhang (Graphics) <quic_jiezh@quicinc.com>, Shuai Zhang (Bluetooth)
> >> <quic_shuaz@quicinc.com>, and Yongxing Mou (USB DisplayPorts)
> >> <quic_yongmou@quicinc.com>.
> >>
> >> Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
> >> ---
> >>  arch/arm64/boot/dts/qcom/Makefile          |    1 +
> >>  arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts | 1247 ++++++++++++++++++++++++++++
> >>  2 files changed, 1248 insertions(+)
> >>
> >> +
> >> +	wcd938x: audio-codec {
> >> +		compatible = "qcom,wcd9385-codec";
> >> +
> >> +		pinctrl-0 = <&wcd_default>;
> >> +		pinctrl-names = "default";
> >> +
> >> +		reset-gpios = <&tlmm 191 GPIO_ACTIVE_LOW>;
> >> +
> >> +		qcom,micbias1-microvolt = <1800000>;
> >> +		qcom,micbias2-microvolt = <1800000>;
> >> +		qcom,micbias3-microvolt = <1800000>;
> >> +		qcom,micbias4-microvolt = <1800000>;
> >> +		qcom,mbhc-buttons-vthreshold-microvolt = <75000 150000 237000 500000
> >> +		500000 500000 500000 500000>;
> > 
> > Other platforms use a single line here. If you don't want to do it,
> > align data to start from the same column rather than restarting from the
> > column 1.
> > 
> >> +		qcom,mbhc-headset-vthreshold-microvolt = <1700000>;
> >> +		qcom,mbhc-headphone-vthreshold-microvolt = <50000>;
> >> +		qcom,rx-device = <&wcd_rx>;
> >> +		qcom,tx-device = <&wcd_tx>;
> >> +
> >> +		vdd-buck-supply = <&vreg_l15b_1p8>;
> >> +		vdd-rxtx-supply = <&vreg_l15b_1p8>;
> >> +		vdd-io-supply = <&vreg_l15b_1p8>;
> >> +		vdd-mic-bias-supply = <&vreg_bob1>;
> >> +
> >> +		#sound-dai-cells = <1>;
> >> +	};
> >> +
> >> +	wcn7850-pmu {
> >> +		compatible = "qcom,wcn7850-pmu";
> >> +
> >> +		vdd-supply = <&vreg_wcn_0p95>;
> >> +		vddio-supply = <&vreg_l15b_1p8>;
> >> +		vddaon-supply = <&vreg_wcn_0p95>;
> >> +		vdddig-supply = <&vreg_wcn_0p95>;
> >> +		vddrfa1p2-supply = <&vreg_wcn_1p9>;
> >> +		vddrfa1p8-supply = <&vreg_wcn_1p9>;
> >> +
> >> +		bt-enable-gpios = <&tlmm 116 GPIO_ACTIVE_HIGH>;
> > 
> > Okay, so how is WiFi controlled? Is there a GPIO? The DT should be
> > describing the hardware, not the UEFI behaviour.
> > 
> Hi Dmitry, as I described in previous mail, On hamoa platfrom whole wifi module's power supply and enable gpio are voted in UEFI.
> Hamoa is PC platform, so BIOS/UEFI behavior is compatible with Windows/ACPI architecture. UEFI is responsible for enabling power supply 
> for all devices which may be used in boot phase (such as WLAN may be used to boot from network).

This is not completely relevant. You are describing driver / Linux /
bootloader behaviour. I asked if there is a GPIO in the hardware. If
there is one, please add it here.

> 
> So we need not Wifi chip's power and control GPIO in kernel side, thanks 

What if someone requests this GPIO from userspace and pulls it down?

> >> +
> >> +		pinctrl-0 = <&wcn_bt_en>;
> >> +		pinctrl-names = "default";
> >> +
> > 
> 

-- 
With best wishes
Dmitry

