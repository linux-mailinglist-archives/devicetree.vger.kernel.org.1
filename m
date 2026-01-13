Return-Path: <devicetree+bounces-254433-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B865BD1842A
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 11:58:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 721B631046DC
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 10:53:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B25C38A9A3;
	Tue, 13 Jan 2026 10:52:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eCBqg9kC";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hW2bOFkQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21826389E0B
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 10:52:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768301541; cv=none; b=rJdagjCMsaOyXdZGPpKUX/+eIjQ7PwYaHTF3dxBQeArnndy4/PePyuxxp1ADSPZyzewcXUijRIrVbZNh7BZePOzNrOkydxhkAFg2pb7eDetezuwCDRBGFcAc3KPfwc9OfHJHUfDuqrogKxvxT1fHqq8LtD/w0nGciLGSSjo9+Ig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768301541; c=relaxed/simple;
	bh=ZrIW+AmS/RhW38jCuB4j1VFU2MBy9yfW1yeUV0fRa5I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Z7WxSmRNzeIMMm8zXBzdP5KxCpD9uq6xHgx8wQmnBD9vU21BiiYLmKydVQAWB1uhbBfWk3rbAoCix4PJEcV6PDaVzsWljNs5jHgEIqhURfu9z52C0M0OEjJezhWPCQqe0xlcATu2SUIzpJL30XncQRnN3lWAjYcQDTNW02/xKcg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eCBqg9kC; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hW2bOFkQ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60D75Bux2604538
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 10:52:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=u1lmTEvB8oQ3jgCLKOdlKf+E
	9e4jgDJPhGlUMR5/CRE=; b=eCBqg9kC4FFnOpNwGM7363bUeiN7OTX10KJ2fiod
	uGWxrOHBlLX88i70Vy2HkUzLQ/QGGtphcYSLL0QiNQkVrJDYzUh5B/FAHiHLMVbk
	wGRU42DY+tUZcu/yYGOedzVclCil2GNBH2VBY1HKZbKCQTtRHQutUuEsdHAH2Pu3
	9GhQa7Ryu9pFp2ILTudQ6DEHXpk0oKYLfKRqGejTU/QfdY6QwJHspCU91GkDlrES
	ZI/9xOET/P8xaAZinMBmCUdIwTncvbLqcpCMWmohjGv29P51O9wFYDCb22wK8dwQ
	t4Bs7q7CZKZVqqgjl1ersuV9VhxXXUyjBs1s9dSKTgqB5Q==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bn7uytc41-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 10:52:19 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b8738fb141so1690494985a.0
        for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 02:52:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768301538; x=1768906338; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=u1lmTEvB8oQ3jgCLKOdlKf+E9e4jgDJPhGlUMR5/CRE=;
        b=hW2bOFkQQJEH4FfqzYYouW3gyA1z9LvtvYwRLoa2EfIWs22IeUMBhztijOBtuJpxGf
         j/yeV2MgAo+6WWrXBeJPrdmQysbLSmC3BJcGiiTjmwGsILd3jTuphdlAAOfHadsNlF/Z
         elNM56oguetF6KxDtNt7t4ztV5Pa0JoeJ29iP1ona1HYdnyPtqPvPrrpJkuLDN9Ru0qn
         w193FJtJFvvlZixZbzfSDCLMc++f7H66cSBHSNel2LwyLF9jbqvyhiilXoq5gru5rPyV
         dxNeAmzxdGhYMrWxiSb0GBpj44b82J69M0hpU5iP9Nu+E8EOy+b65NNAIGW/zzMlT7e6
         A1gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768301538; x=1768906338;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=u1lmTEvB8oQ3jgCLKOdlKf+E9e4jgDJPhGlUMR5/CRE=;
        b=LILgKFTCpwuCzdVMmZOWEpKW2nppEyp71nMaTCwqIDPm3iJwrXdQZK9vPQVJONcFUH
         JSvaYQc5qa+Q6jfc5L1cfnnr8NzeFoJn7hd55p1KvnPQO10/0yq0lEEd4JvkbhOmcVnd
         agaFAA3Gd9m8brMXqDFsGKraLClWvS0Idx92aPV2diciEcK2fMV6ydLdSL5R8BQ3LnR4
         VwLoVJshn70jDWFpOa9wGeveC5cfs0S47u9mv0vRzbuaD6DqF4Irk+X0WmdAC8ieX2iM
         NVlM6IC3D8HrqFLlVtLtU7vzGvK70yGRNmSswAKATxaLOpU9HuEmIqVFWFKDxtMmweIP
         shDQ==
X-Forwarded-Encrypted: i=1; AJvYcCVJxYtIvC3BjFcI2+Foy8UmIT3uqze5grMI7qo94fS/NWKEktMf35ebPDW6ELvtZJCj8pK+jODVE7I+@vger.kernel.org
X-Gm-Message-State: AOJu0YyqWEHOCqgQvcr80a74Mu2JXmUT6uoEMVsR1IxPWam6cKDS0N/u
	fjzHZ5LbxSufI9mgymfI62V0rn2rA7bPjuN8Po9KIHQ9fi5NbrhNthNBxLkRbXwOGPAoAgz+cnC
	mdvjM/MjkrZ/C4u4X02DSk8ehyEFNTFpJE9YJ7ktxpwCicTBT2/arOG1JGWMyNtI3
X-Gm-Gg: AY/fxX4aBg1Go/13nuJ03DU1M3ie5s653aTfWzzX0fNNLPUEwKqxSYuz0Xw9/G+LJcs
	VmRzNHBFk9rdRKi/O80rSGOy06HGMkQaQUJcr7L++R8FxlTR92cZT95R34aTYg4NrLI6ynTXkYM
	UZMWmGD8vHibm6vryUqua3B4QvZExnDOnp/g4OKtcdd2GEXeRI5xRbA/jGNwHKb6FUmoqJgwLrT
	rIKR0c4GjWI6+dPZHJMNyWV5vovrB1eC2yzJHYyXIKdil+iB+OPk8qzOJoUYxDgF9rZLPPCiTKF
	LQpzDjdzT15oqN7lAk+hhnuXTwepwngSWr+22KKVag8aQHPT/4BS9qdlszXVhV+kaoUsB4YioQF
	6D/3lo0enBXfPNJYMDswr+t2/gzI9kTZO/enxkUOIEEQQEtkFcbNexyeRwJvXP5DQ3lksVwecLg
	E+YTU8UAFNY2MxXZ/x9gymjdA=
X-Received: by 2002:a05:620a:3901:b0:8b9:f737:2006 with SMTP id af79cd13be357-8c5208c1ea3mr291908685a.37.1768301538210;
        Tue, 13 Jan 2026 02:52:18 -0800 (PST)
X-Received: by 2002:a05:620a:3901:b0:8b9:f737:2006 with SMTP id af79cd13be357-8c5208c1ea3mr291906485a.37.1768301537759;
        Tue, 13 Jan 2026 02:52:17 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59b7c2dd9e2sm3393247e87.5.2026.01.13.02.52.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Jan 2026 02:52:16 -0800 (PST)
Date: Tue, 13 Jan 2026 12:52:15 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: YijieYang <yijie.yang@oss.qualcomm.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 4/4] arm64: dts: qcom: Add base PURWA-IOT-EVK board
Message-ID: <2qa3kn6gw4f5qlncq6iwgxattfbbztu42gpcbekqfghcrdg3l5@z7zsx44xch7a>
References: <20260113-purwa-v3-0-16eefacbdce9@oss.qualcomm.com>
 <20260113102822.590677-4-yijie.yang@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260113102822.590677-4-yijie.yang@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: P3HeboIB6yhF9ZS-XbmZf2OYetfX_0fs
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDA5MiBTYWx0ZWRfXxQiFRr1ydcwo
 nxYL4Tg3rwpKrMhi9N4NuWpa2ocYxxu5167WuOhvrcowVSB1Z7hzdlK6uKr45UBbh4prZmLAhxS
 +AFsB3V++et1wQSiIoknKB7vgjt6I5/Rrfx9ISUGm3MtGRIbH0rCA9440CmPbw/DA5ClDjVrq8m
 coUWp2yYWWFShn0eBv7C2MaM4g8ZJvOM2oNkUcvCr7ynmDhEMJ/qU4+B/5Ti798SD/IvLloT+jb
 TTqZYI2jHZMyekJc+jbA3+QLGDb3+4+CoWk5POSB8yp6RxK2AymABCSIshS9viynW6uxiMy/d+g
 nGw4f/Blq8rMwjUYWNEsDRBrYwZTZaVOROIpV70Tw1DRDNod8z5+l3Ft9xwGFR/wqTH0cCxMERn
 rTApWByaz/+I0o7oPvS9bAYLwuZwYaXhZW8A5FhiW7/DpQ+sXr2mqyTHUzB4ay4YNWUxn02onUq
 q8vNa2FVvcEySKqfsvg==
X-Authority-Analysis: v=2.4 cv=bpdBxUai c=1 sm=1 tr=0 ts=696623e3 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=CCOFXxt_BiQ80FFdstEA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: P3HeboIB6yhF9ZS-XbmZf2OYetfX_0fs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-13_02,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 priorityscore=1501 lowpriorityscore=0 adultscore=0
 impostorscore=0 clxscore=1015 phishscore=0 spamscore=0 bulkscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601130092

On Tue, Jan 13, 2026 at 06:28:16PM +0800, YijieYang wrote:
> From: Yijie Yang <yijie.yang@oss.qualcomm.com>
> 
> The PURWA-IOT-EVK is an evaluation platform for IoT products, composed of
> the Purwa IoT SoM and a carrier board. Together, they form a complete
> embedded system capable of booting to UART.
> 
> PURWA-IOT-EVK uses the PS8833 as a retimer for USB0, unlike HAMOA-IOT-EVK.
> Meanwhile, USB0 bypasses the SBU selector FSUSB42. As a result, the glink
> topology differs from that of HAMOA-IOT-EVK.

What is "glink topology"?

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
> - PCIe ports for PCIe3 through PCIe6a
> 
> Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/Makefile             |   1 +
>  .../{hamoa-iot-evk.dts => purwa-iot-evk.dts}  | 102 +++++++++++-------
>  2 files changed, 65 insertions(+), 38 deletions(-)
>  copy arch/arm64/boot/dts/qcom/{hamoa-iot-evk.dts => purwa-iot-evk.dts} (95%)
> 
> @@ -1102,9 +1140,7 @@ edp_bl_reg_en: edp-bl-reg-en-state {
>  		pins = "gpio10";
>  		function = "normal";
>  	};
> -};
>  
> -&pmc8380_3_gpios {

This needs to be fixed in hamoa-iot-evk.dtsi.

>  	pm_sde7_aux_3p3_en: pcie-aux-3p3-default-state {
>  		pins = "gpio8";
>  		function = "normal";
> @@ -1171,16 +1207,6 @@ &smb2360_2_eusb2_repeater {
>  	vdd3-supply = <&vreg_l8b_3p0>;
>  };
>  
> -&spi11 {
> -	status = "okay";
> -
> -	tpm@0 {
> -		compatible = "st,st33htpm-spi", "tcg,tpm_tis-spi";

No TPM on the board?

> -		reg = <0>;
> -		spi-max-frequency = <20000000>;
> -	};
> -};
> -
>  &swr0 {
>  	status = "okay";
>  
> @@ -1470,7 +1496,7 @@ &usb_1_ss0_hsphy {
>  };
>  
>  &usb_1_ss0_qmpphy_out {
> -	remote-endpoint = <&pmic_glink_ss0_ss_in>;
> +	remote-endpoint = <&retimer_ss0_ss_in>;
>  };
>  
>  &usb_1_ss1_dwc3_hs {
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

