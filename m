Return-Path: <devicetree+bounces-254684-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 295D2D1AC85
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 19:04:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3E91D306292A
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 18:02:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CEED7320CD6;
	Tue, 13 Jan 2026 18:02:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="USID14Y7";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="WpIT0/Mn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69FD12E541E
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 18:02:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768327351; cv=none; b=OGkNlauckY2PSIZIaxcqaZAu8az14RGDhkkiwWK73pY5RhTNrqu7+lfsFIeIBT642u0rkFxDVeD95LDT8ip3ziEsTaXeUa9waFkZMrHLwF2Ikz2Nqhd8osQwhNnlOAAUaMOMkHrzQyRIvxmn2gQmrSiFDFZIkCRJXrio8kFusJw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768327351; c=relaxed/simple;
	bh=iz8Hkvp9kwVgplSnC8GOHucWIW2xYg314CR0OcMDh9k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gFEAvHucUM3zvtql87lRhrROyHXb91YSpeqUuSdKThD8G8Aar+VGv4ihrEnz1PdsXSFqCXiVN0BisUomJgRWkXujWKmBrzzpFNtr1QWIHI1CSP/9x1thVrlVZNOWYllft/Ojd6fJdfSEwH6dtYTOR1MeCN9KRYBSKt533rl/9lY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=USID14Y7; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=WpIT0/Mn; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60DHQ4as693817
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 18:02:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=dYZF5BEYPTLnr6jfhO0yzE0M
	4xtiE5bgtZhyDzTV9eM=; b=USID14Y7Vu3EC++WrkoKi2LRWzspHX92FgrNiNYw
	Meb0If9oB+pZJpNCMFRRX0Wbkp62VlydM9uktYMsckROYgeByaO27XtRiwyoRRN3
	xkjqw1q5VaX+bdMyVGb2NDcpR9SY1rZaZ3A6Nlh0dmh+ixJWT0bGU2vnJEbbKecd
	p8g2QVYv4Gwg7bQG1A9pvgbe7lRR+OKl2Ic+9fXvU68qwC+L2gy3KaT0bjkIj1yx
	YsY+7AvCO9rqKUDzXrCHj1nZcHg+9Z9r6VsxLp/op8qj32dpqDFGtlWZslP3Z6am
	2yShPuKNuV6dhpsQjpI5PsZZZjj84x3tnFWKdMCZsaIxiw==
Received: from mail-oo1-f69.google.com (mail-oo1-f69.google.com [209.85.161.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bntet046a-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 18:02:29 +0000 (GMT)
Received: by mail-oo1-f69.google.com with SMTP id 006d021491bc7-65cfea2cedeso9938288eaf.0
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 10:02:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768327349; x=1768932149; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=dYZF5BEYPTLnr6jfhO0yzE0M4xtiE5bgtZhyDzTV9eM=;
        b=WpIT0/MnhTIwXD0VtY7JwsW+eM5tZlbD/7Qob2tUMIdKeQN3cPTOTQrwTHZt/OojzF
         UPZx1tGShWmWZWrLo74PmR7p3m0GHkG9VXrgKdZtOlQkMSg4bLgIRrYefElR6I0k58RA
         vMeH13UXZ2+6tr0G9q5N9i4LLzexxO4Z62YcYRdRjcjjVkpiZK/fR6TnppBLD5fNdrEH
         2o6S9FEvo6vNhAGvKBD0/O5wht65tA1OyRVg6jyPZS7+SMrRF8YMUHfkCendN/96teKb
         Y8IYjx1e1v0ocXz2QFynMaGS54+eB48Cu/tvxWAV//CFZ3Tj7aZ5utUusItajNGdvxn/
         oKqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768327349; x=1768932149;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dYZF5BEYPTLnr6jfhO0yzE0M4xtiE5bgtZhyDzTV9eM=;
        b=UjRSVBpOSM9B0RzogRfjWAkGK1KHLSwg0gvdUZLALgAKiZKnVaC/WJVJlt+tHZZYcZ
         MwhNxAmBzQKaK7x3kctobSuZrp7fMNE/ZVoSwF01LfBMkfqM70heu4cKEKRMDgE3nWkj
         O7XFQL6cN3XaeVVXT4o11ti7Jv+TelzzFnrApF+xYUDrBLb3yNYVawYM/UXjO+mhfLNA
         MoAue3LlB3n+wOBJWb3xUS+DOl9tkMkQKtAg6ZL+fla/GDKt4OxmOJaEIVBqBQAeRViZ
         bUDhhj58kSDVEe6cvVtO077Z2wXYHg89Ureq8NMU7OAOIwsN6ia/zzBlpCqcmreF5Brf
         ABWQ==
X-Forwarded-Encrypted: i=1; AJvYcCWIqOX9usf+FFBHBEz6MVqcq3ZWaikp2Rkn8G01Q9jpp01ZB5VR0qEPyb2QFj7IgsnccuefiE8RalAc@vger.kernel.org
X-Gm-Message-State: AOJu0YwcCN1u5rYwZycQpImXX9d0TTqpZM060gwxVzMA0GLWN2Fgqqtd
	ug73E/iWr/guzWdCKpHVxNgPSHqFVkfO1GtwrK1BLmBmv+R9AoKpiapOP9g1m73PQwuRi03joOC
	dVJmk44akEi4wuYL9XxIQBlhpfP2a7D11JHypgOuMn/SW5z5kmLgyz1fvyXeMYcXd
X-Gm-Gg: AY/fxX4zPGFRsxtjDXBi/3i+oPhoUf9JFWwBxlwfKPhzYVZnMNRWRmSpbwZ8v7IfoD6
	uFVQgj0gocErufCaxeddxrF7rtIeRFehqMNOzVK47vFKIt5UOgtSu7u2qH9cNma5UozxyRi3S/O
	OeibdOex1gaf4ke/MuQ1fBOj+82P/bygxdnG/9USS7oxyJZibTcpHsb/kIkU9hK1kHtW8Gr1Or4
	uvRyWw/p8xb9Wk1RpPjDTUcvFcaMDVyLz/b0swC6mPnDNTA8cNY7zWmi9Hi6RBWJBFOfZ+4AmZ3
	VH6GY2s2LQ84B4+K8CtOh4mImAHpE0zTX+wu6kvjMLEvLHlhevMaGLyb/N16evKN22++DbPWCo9
	WVOs2ELR0xpaAC+uKq6aJnrBBYTWgJOH9CEBg0xEe1eBn9RN3bpvxEgs3OwflxZDXDCL7lr5Eck
	yoBlmC5qrXO9qAt8bdTEUIkDw=
X-Received: by 2002:a05:6820:f00c:b0:659:9a49:8e40 with SMTP id 006d021491bc7-661005f50a3mr53746eaf.16.1768327348354;
        Tue, 13 Jan 2026 10:02:28 -0800 (PST)
X-Received: by 2002:a05:6820:f00c:b0:659:9a49:8e40 with SMTP id 006d021491bc7-661005f50a3mr53714eaf.16.1768327347742;
        Tue, 13 Jan 2026 10:02:27 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59b71b7eaacsm4777666e87.40.2026.01.13.10.02.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 10:02:27 -0800 (PST)
Date: Tue, 13 Jan 2026 20:02:25 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: Re: [PATCH RFT 3/3] arm64: dts: qcom: glymur-crd: Enable USB support
Message-ID: <4wyliidx7f2otaudyfhevemnigd2zpietbhsovhna2cvftbd2o@x22jpa6ffjyy>
References: <20260113-dts-qcom-glymur-add-usb-support-v1-0-98d6d387df01@oss.qualcomm.com>
 <20260113-dts-qcom-glymur-add-usb-support-v1-3-98d6d387df01@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260113-dts-qcom-glymur-add-usb-support-v1-3-98d6d387df01@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: XWmMbD4al9ax2GVwhM9kk4WqS1AnPrcJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDE1MCBTYWx0ZWRfX5umQPXUno1I5
 DetBgWEQ5MLZ/ImxFT7lOtBQJOr1CmmnhTJvkSD11vqs5NmGnGyEWsJItABXMWcHLVVpbX/Rv8H
 9REbfnG7ns2FVEsSnseKxeHu0s+OwIoHmnpmbJY/YyZ2wjQZ3NFV2TsaUKbyrB5jTkK1Cpbptgr
 BT0mwGS9//+5NjLyTl2gTxoPfpC8+S0E64EW326ncaQRYavdsDmEhIbfIvIlZ5ip/6oVlX4TYc7
 Ab28A+7+2E8JoyKR4tw2rlviYrp2u1XYl0bGiM8JP/Bu4tQTvSx6oEZH+y2fvfAFNT0yx3ClL6/
 NGI/g3YPGI2s5wowL0K0rpfYp4iABO03b+vMwo7razFoVKMzW1Ekef3cARW1tA1Wzi3rCCMkDUI
 QiJviX0SFZ1CH2V8Moa/+AnbihurcztM0hB/lZz+ZEld3u5pXa1U3gGVL7WHhfaT87uyEvuuZrT
 /G0XsmkN7tg1rcEaYgQ==
X-Authority-Analysis: v=2.4 cv=TMlIilla c=1 sm=1 tr=0 ts=696688b5 cx=c_pps
 a=lVi5GcDxkcJcfCmEjVJoaw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=xHoz2crWuGNP45Pviq8A:9 a=CjuIK1q_8ugA:10
 a=rBiNkAWo9uy_4UTK5NWh:22
X-Proofpoint-GUID: XWmMbD4al9ax2GVwhM9kk4WqS1AnPrcJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_04,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 bulkscore=0 adultscore=0 phishscore=0
 clxscore=1015 lowpriorityscore=0 spamscore=0 suspectscore=0
 priorityscore=1501 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601130150

On Tue, Jan 13, 2026 at 02:33:06PM +0200, Abel Vesa wrote:
> From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> 
> The Qualcomm Glymur Compute Reference Device comes with 3 Type-C ports,
> one USB Type-A, and a fingerprint reader connected over USB. Each of these
> 3 Type-C ports are connected to one of the USB combo PHYs and one of the
> M31 eUSB2 PHYs. The Type-A is connected to the USB Multi-port controller
> via one of the M31 eUSB2 PHYs and one combo PHY. The fingerprint reader
> is connected to the USB_2 controller. All M31 eUSB2 PHYs have associated
> eUSB2 to USB 2.0 repeaters, which are either part of SMB2360 PMICs or
> dedicated NXP PTN3222.
> 
> So enable all needed controllers, PHYs and repeaters, while describing
> their supplies. Also describe the PMIC glink graph for Type-C connectors.
> 
> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> Co-developed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/glymur-crd.dts | 283 ++++++++++++++++++++++++++++++++
>  1 file changed, 283 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/glymur-crd.dts b/arch/arm64/boot/dts/qcom/glymur-crd.dts
> index 7c168e813f1e..3188bfa27bea 100644
> --- a/arch/arm64/boot/dts/qcom/glymur-crd.dts
> +++ b/arch/arm64/boot/dts/qcom/glymur-crd.dts
> @@ -56,6 +56,97 @@ key-volume-up {
>  		};
>  	};
>  
> +	pmic-glink {
> +		compatible = "qcom,glymur-pmic-glink";
> +		#address-cells = <1>;
> +		#size-cells = <0>;

No orientation-gpios?

> +
> @@ -858,3 +1015,129 @@ &pcie6_port0 {
>  	reset-gpios = <&tlmm 149 GPIO_ACTIVE_LOW>;
>  	wake-gpios = <&tlmm 151 GPIO_ACTIVE_LOW>;
>  };
> +
> +&usb1_ss0_qmpphy {
> +	vdda-phy-supply = <&vreg_l4h_e0_1p2>;
> +	vdda-pll-supply = <&vreg_l3f_e0_0p72>;
> +	refgen-supply = <&vreg_l2f_e0_0p82>;
> +
> +	status = "okay";
> +};
> +
> +&usb1_ss0_qmpphy_out {
> +	remote-endpoint = <&pmic_glink_ss_in>;
> +};
> +
> +&usb1_ss0_dwc3_hs {
> +	remote-endpoint = <&pmic_glink_hs_in>;
> +};

This is obviously not sorted. Please sort the nodes.

> +
> +&usb1_ss0 {
> +	status = "okay";
> +};
> +
> +&usb1_ss1_qmpphy_out {
> +	remote-endpoint = <&pmic_glink_ss_in1>;
> +};
> +
> +&usb1_ss1_dwc3_hs {
> +	remote-endpoint = <&pmic_glink_hs_in1>;
> +};
> +
> +&usb1_ss1_hsphy {
> +	vdd-supply = <&vreg_l3f_e0_0p72>;
> +	vdda12-supply = <&vreg_l4h_e0_1p2>;
> +
> +	phys = <&smb2370_k_e2_eusb2_repeater>;
> +
> +	status = "okay";
> +};
> +
> +&usb1_ss1_qmpphy {
> +	vdda-phy-supply = <&vreg_l4h_e0_1p2>;
> +	vdda-pll-supply = <&vreg_l1h_e0_0p89>;
> +	refgen-supply = <&vreg_l2f_e0_0p82>;
> +
> +	status = "okay";
> +};
> +
> +&usb1_ss1 {
> +	status = "okay";
> +};
> +
> +&usb1_ss2_qmpphy_out {
> +	remote-endpoint = <&pmic_glink_ss_in2>;
> +};
> +
> +&usb1_ss2_dwc3_hs {
> +	remote-endpoint = <&pmic_glink_hs_in2>;
> +};
> +
> +&usb1_ss2_hsphy {
> +	vdd-supply = <&vreg_l4c_e1_0p72>;
> +	vdda12-supply = <&vreg_l4f_e1_1p08>;
> +
> +	phys = <&smb2370_l_e2_eusb2_repeater>;
> +
> +	status = "okay";
> +};
> +
> +&usb1_ss2_qmpphy {
> +	vdda-phy-supply = <&vreg_l4f_e1_1p08>;
> +	vdda-pll-supply = <&vreg_l4c_e1_0p72>;
> +	refgen-supply = <&vreg_l1c_e1_0p82>;
> +
> +	status = "okay";
> +};
> +
> +&usb1_ss2 {
> +	status = "okay";
> +};
> +
> +&usb_2 {
> +	status = "okay";
> +};
> +
> +&usb_2_hsphy {
> +	phys = <&ptn3222_2>;
> +
> +	status = "okay";
> +};
> +
> +&usb_mp_hsphy0 {
> +	vdd-supply = <&vreg_l2h_e0_0p72>;
> +	vdda12-supply = <&vreg_l4h_e0_1p2>;
> +
> +	phys = <&ptn3222_0>;
> +
> +	status = "okay";
> +};
> +
> +&usb_mp_hsphy1 {
> +	vdd-supply = <&vreg_l2h_e0_0p72>;
> +	vdda12-supply = <&vreg_l4h_e0_1p2>;
> +
> +	phys = <&ptn3222_1>;
> +
> +	status = "okay";
> +};
> +
> +&usb_mp_qmpphy0 {
> +	vdda-phy-supply = <&vreg_l4h_e0_1p2>;
> +	vdda-pll-supply = <&vreg_l2h_e0_0p72>;
> +	refgen-supply = <&vreg_l4f_e1_1p08>;
> +
> +	status = "okay";
> +};
> +
> +&usb_mp_qmpphy1 {
> +	vdda-phy-supply = <&vreg_l4h_e0_1p2>;
> +	vdda-pll-supply = <&vreg_l2h_e0_0p72>;
> +	refgen-supply = <&vreg_l4f_e1_1p08>;
> +
> +	status = "okay";
> +};
> +
> +&usb_mp {
> +	status = "okay";
> +};
> 
> -- 
> 2.48.1
> 

-- 
With best wishes
Dmitry

