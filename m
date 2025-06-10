Return-Path: <devicetree+bounces-184219-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 14865AD3493
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 13:09:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D911B3A9010
	for <lists+devicetree@lfdr.de>; Tue, 10 Jun 2025 11:08:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28CEF28DF32;
	Tue, 10 Jun 2025 11:09:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TTvxENWB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DF2428DF1F
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 11:09:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749553744; cv=none; b=Un4qm3ZhUR9kCgM8h7fue9kQehPr9IXw3QRGfSKdEeXSjzN7a/bn53aHXLLxxU8tsBWlH6GpP2b6gdd0UUJQ4KbRwOs4j2U89tBSgN2W8rBQqWJzX/hrle6GOiaVbw4rKDKpeOyQB3zmDA8snqaTFrrtVl/2pT8ddO2d3LRsnEs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749553744; c=relaxed/simple;
	bh=OuxlYYpKRxD7usymkX2lfps+kKcWWYmdxYcWmu919Dg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jrvSy+WphrptC+MAK4jCnO+Zht5OmP+BwfO8hN/PEqEgKMy1rFk1CuSChWgmsWw+6JY+vx5FnBjvx6nFDy76HaekttiCtCT1sDSGxTSrCsz3Lpa9Js7+GbxNrP0sMe2AWMWyj/doewlumO8lUhoQAhZR5HhBqZ2debKHEsd50pk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TTvxENWB; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55A6nZhe002424
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 11:09:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=RRO1LVjJx/5BoAejkQrBHrD0
	HlTmpBzY0jUVoVo8gL4=; b=TTvxENWBt4wSO+/DbmHuJHde6djttEoNq+xx3FA5
	P+QbNGaCN9hZJcQDdYuUXMJohNAZ/M3yKraGfltPGp4Wa1tW5vCL4CtXFTWS86gP
	gG9vr58ZON6PNO55ym34wl2uQrGNQEkTfZ8XTqmHYmUtWX3UHYauflMsR5ItbTDF
	TYeO3p99IozZkHWlC9WUwXRG1o4cw8iFGfWpsDjo/C5ivuLD8K30Th0+y/NPI6yj
	a/gbq0c3TWWwX6qfvqjlzzKZsIlOFH4ggZ5WeOTPqdfR37rjD9bK1YSsSjU03iR+
	GgpKE0PS0tAREJevLQshnrIiReVSboWdF4Lhnwql9nzHuQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 475v2y3yse-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 11:09:01 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7d097fd7b32so1288882785a.2
        for <devicetree@vger.kernel.org>; Tue, 10 Jun 2025 04:09:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749553740; x=1750158540;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RRO1LVjJx/5BoAejkQrBHrD0HlTmpBzY0jUVoVo8gL4=;
        b=SGQjGPCnLD2Zhes/fpD1iN3ewKNH+CpZjoiZXMu2ysSJjnmRwg2zqzWMH1TuuX1KzR
         hLi+eHLefpzAVwqY6nB26N2piPZYNsDtDo8VNAAbrXUr1sJwhDjy9G3opgUGb4xqda6E
         hitcnPH0ygWLRlIZH8qc05+EOehhw5u3ZsAN8ttH80YowBdoGlVtQQ31sLdu860SrvK+
         N5Tr82Wu1rkCJ+WtsMY3Vgv0k0lr52bfZtFMyd+YpO4mXKwzIfIy0zirXoZNdeKHmPnR
         25dVASCqfbeY3Gd3cd0u869wvHbYDzyS3s/FkOlke4iG3GALqA0mQXgRXPcdyioLltmv
         4NuA==
X-Forwarded-Encrypted: i=1; AJvYcCXjt7pvRcsPsC6PKankvqd5srv2m+LOfadWDBCzk5A+gnAz4/3oFsdkbRxpcn4srvYJTVFoVec/OqFK@vger.kernel.org
X-Gm-Message-State: AOJu0Ywunoc/4/KveLiUAe18Q0RjsmWe41lkb0DwnD1dEcx9rr3vcvTv
	NJayfOh+m8Fadnt4Rmt0mJd+Gt/5GZ3aKVAU2LmqGrXn5XelOCV8AqzUIYT4ce8XkNuiIDlmaOO
	vpMl53Jo07VkkomobpwBdtuH/SCMOjyepMnbDqzpkRSy6l0MjaJocD+CSvoXgtFTZ
X-Gm-Gg: ASbGncvA7hdMQZ5AHCd68XR7N6FHwXQ+yTfExHK4yoHjltioip2lvV5O8PY9v6kR9NI
	kPV/t92hMjdfipeaOcvLOK86mE1rnMJF8hY2wMgqRF8850gngAbO83ntS3UXlcZOQKlrBYxrfrV
	mmo2jCBOLxxlYMoP7wCI7Pf/ZuJMSYdzVL9OYH1GZHlMykJAecBZ7fX6Ei1vKAhtey6GLiwIe81
	4eFTGpQIhC+aHlW1xLOGG/IkMBE919egMc64IRJrWKfJRpwWZnMlnPVMz6hH7hbHaMn5sm1P2n7
	JsNKxFNDZPLd6AMqc5oYDtMMnp3ZqredMLTyC8Gdwq+PAaRFnmF9yc/4562O24SoRBCJQS+PT52
	2WX5gZl39ENAvEkGAycejoNeoKit+qc0n7so=
X-Received: by 2002:a05:620a:1a03:b0:7d0:a243:d5c5 with SMTP id af79cd13be357-7d229863013mr2388360785a.5.1749553740427;
        Tue, 10 Jun 2025 04:09:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFf2S/Xw7rHK+GuKet0+88mZ8uKvvupXT9KiOLqZgjzbbHszn9+Ms80XTWb/7xwX2+AEhOHdg==
X-Received: by 2002:a05:620a:1a03:b0:7d0:a243:d5c5 with SMTP id af79cd13be357-7d229863013mr2388357385a.5.1749553740038;
        Tue, 10 Jun 2025 04:09:00 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55367733280sm1516525e87.240.2025.06.10.04.08.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Jun 2025 04:08:59 -0700 (PDT)
Date: Tue, 10 Jun 2025 14:08:56 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH v2 2/2] arm64: dts: qcom: sm8450-qrd: Flatten usb
 controller node
Message-ID: <20250610110856.g5lv3p6engqwc6jk@umbar.lan>
References: <20250610091805.2997546-1-krishna.kurapati@oss.qualcomm.com>
 <20250610091805.2997546-3-krishna.kurapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250610091805.2997546-3-krishna.kurapati@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjEwMDA4NiBTYWx0ZWRfXy2XqO+chhsDG
 LIUf50nNTrXZAxa/kBft3mAqknkkfCFsAoaJxm6B/rF7tJoG3hmMhyBnkeHnIlK7H9sRtpnoNe7
 1dFTlkGaE4MTuALZYxV3W1Hhf0wOfftszRqIdkYybepUhL+IiM79UqwYQvcnMYPzD71uMK/w0BD
 wsbfRV95w0yUSM2x9IB5rqHEZNsF7Sr9VAGBalU2u2/yTWbkqemsnPL3lCOc5eFkM7R9q2W8deH
 F3ZdRnMQV1KCH4l9ryoXn2EEOvaVB3P28yEvPQkzGRyxDzpTg3QWBabm84dQGChniZzasaWXAjy
 1jUs71GFk5coPOUguWAoToNsNUS6+RPvJCdM0j6u1GLnI2cFODuVNTsjZhPlToU/uTZKRnvo3km
 jAy3/mzLiwNm5dPT5TgwoMy9SS79C93RMDEuapq51mBDfxcZ791VHo+9ICiu3tURKKikIkj+
X-Proofpoint-GUID: 7aBv65gqin8Jlq625avueSL2U0odS8BE
X-Proofpoint-ORIG-GUID: 7aBv65gqin8Jlq625avueSL2U0odS8BE
X-Authority-Analysis: v=2.4 cv=f+BIBPyM c=1 sm=1 tr=0 ts=6848124d cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=07EEn82W8vC_Pu74Ip0A:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-10_04,2025-06-09_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 spamscore=0 mlxlogscore=680 bulkscore=0 impostorscore=0
 lowpriorityscore=0 priorityscore=1501 adultscore=0 phishscore=0 mlxscore=0
 malwarescore=0 clxscore=1015 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506100086

On Tue, Jun 10, 2025 at 02:48:05PM +0530, Krishna Kurapati wrote:
> Flatten usb controller node and update to using latest bindings
> and flattened driver approach.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sm8450-qrd.dts | 60 +++++++++++++++++++++++--
>  1 file changed, 57 insertions(+), 3 deletions(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8450-qrd.dts b/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
> index 0580408485eb..bd6cb895b65b 100644
> --- a/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
> +++ b/arch/arm64/boot/dts/qcom/sm8450-qrd.dts
> @@ -500,19 +500,73 @@ &ufs_mem_phy {
>  	vdda-pll-supply = <&vreg_l6b_1p2>;
>  };
>  
> +/delete-node/ &usb_1_dwc3;
> +
>  &usb_1 {
> -	status = "okay";
> -};
> +	compatible = "qcom,sm8450-dwc3", "qcom,snps-dwc3";
> +	reg = <0x0 0x0a600000 0x0 0x10000>;

All these properties should go to the sm8450.dtsi rather than rewriting
them in the board file.

> +
> +	/delete-property/ ranges;
> +	#address-cells = <1>;
> +	#size-cells = <0>;
> +
> +	interrupts-extended = <&intc GIC_SPI 133 IRQ_TYPE_LEVEL_HIGH>,
> +			      <&intc GIC_SPI 130 IRQ_TYPE_LEVEL_HIGH>,
> +			      <&intc GIC_SPI 131 IRQ_TYPE_LEVEL_HIGH>,
> +			      <&pdc 14 IRQ_TYPE_LEVEL_HIGH>,
> +			      <&pdc 15 IRQ_TYPE_EDGE_BOTH>,
> +			      <&pdc 17 IRQ_TYPE_EDGE_BOTH>;
> +	interrupt-names = "dwc_usb3",
> +			  "pwr_event",
> +			  "hs_phy_irq",
> +			  "dp_hs_phy_irq",
> +			  "dm_hs_phy_irq",
> +			  "ss_phy_irq";
> +
> +	iommus = <&apps_smmu 0x0 0x0>;
> +
> +	maximum-speed = "super-speed-plus";
> +
> +	phys = <&usb_1_hsphy>, <&usb_1_qmpphy QMP_USB43DP_USB3_PHY>;
> +	phy-names = "usb2-phy", "usb3-phy";
> +
> +	snps,dis_u2_susphy_quirk;
> +	snps,dis_enblslpm_quirk;
> +	snps,dis-u1-entry-quirk;
> +	snps,dis-u2-entry-quirk;
>  
> -&usb_1_dwc3 {
>  	dr_mode = "otg";
>  	usb-role-switch;
> +	wakeup-source;
> +
> +	status = "okay";
> +
> +	ports {
> +		#address-cells = <1>;
> +		#size-cells = <0>;
> +
> +		port@0 {
> +			reg = <0>;
> +			usb_1_dwc3_hs: endpoint {
> +			};
> +		};
> +
> +		port@1 {
> +			reg = <1>;
> +			usb_1_dwc3_ss: endpoint {
> +			};
> +		};
> +	};
>  };
>  
>  &usb_1_dwc3_hs {
>  	remote-endpoint = <&pmic_glink_hs_in>;
>  };
>  
> +&usb_1_dwc3_ss {
> +	remote-endpoint = <&usb_1_qmpphy_usb_ss_in>;

This is a part of the SoC routing, so it should go to sm8450.dtsi too.

> +};
> +
>  &usb_1_hsphy {
>  	status = "okay";
>  
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

