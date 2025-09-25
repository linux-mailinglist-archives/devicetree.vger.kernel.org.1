Return-Path: <devicetree+bounces-221077-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 95AA7B9D1D0
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 04:16:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 43569175217
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 02:16:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E44FC15746F;
	Thu, 25 Sep 2025 02:16:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="K9s7v9Yd"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60957C2E0
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:16:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758766567; cv=none; b=LHdOndCHYlruqcl5LHc2Njc/RGiuUNxxqGFEq+Tgh5yMlqKOmLGxeCVNekmx2DM2K/CE8Uktlk58uSq4Q9R6IamYq6KZp0ZUlQ3Pn4LCrtwVU+gIhZyLGPDgJVO24FaBIeZDqfDauozRF94xZUVzmfHkSw+WzKD7bDi3W50sygE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758766567; c=relaxed/simple;
	bh=W4OgDqX0+JWXCpOQWquNZdf7HNox6eKrB136vl5Cdmg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=pZZDCj3OYUUgfxYoWVplJjwVLetb3BkmZo98oVOwsAILpB47BuaHZXK8Cg4jULoK6TqEPDKJZFu+Jmi0uzsH6F6fECFEGwa8o3jxcQq63TeCK/RUuUuG2d5WC7eeBq/wO4fjb/2gHcbCWbwZ2KzT6Ay7zgPznx1A4PGRUl462DQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=K9s7v9Yd; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P16KID025283
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:16:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=4F2ZVh7EAmpkP2a3mtjmGKdC
	wVw3z5Hk/A0buJB8e3U=; b=K9s7v9YdnmTYdJSJc5hBTKOeLThQCaGqXRhEbWxM
	75aRR6fRRkfDk3pblgvFD5wtY1feklTAZ/+1xdBQCEWwpfmWOLFBXl+oL8J9rVKV
	Q74zZ22j60WL/okfObTVQw1cp0YSILRJUsQO88Mag6w8u89AAnMN15T9O1nYcmWX
	IhTmUh2JfZJ3WrvxFW0rsdSVglL/SkO5kA76mfIGGEw7dKAdHt6Xp3RK3kmFnZwl
	zXkktjvFh0B509RHcARR2zXwZM1Lhsiq6/+LRPeGUVKIT5KLUrFjChrWjahs6LSC
	vO63ULYcuTeXCNzdC3jqh4WsdKC7q9yKnh+nCAHJbUpYQg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499hyexqmq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:16:05 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4d59a4c23a3so12916901cf.2
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 19:16:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758766564; x=1759371364;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=4F2ZVh7EAmpkP2a3mtjmGKdCwVw3z5Hk/A0buJB8e3U=;
        b=sHMXZtLSWUX85GSIeZXX/phks/F8dCHON/00dJNJ4fzTOj1PiDie24AoAS4QMnWzHA
         wd3Lkq5uBq+wPePPjfEPt5nbTSQ2By1IJ1Qbmi8WCuomUEOZ0Zg2NlQpEnsbEOcyniCs
         yvZ3JG7TvAGueOJRrbvlwDirJoaTxo6cLSBJqyPirhSky+U7LVjarctz1pPtmgXln/SA
         b5QUl/0ENRr5V77gMRFujnQyULwdtQh6LItH7Dbk5sNTLYb8pk/9NcFXregTh4Kwqd7m
         GC1PVLg0zI7eqi+CQiBV1KP17DwHgIlWouBdUuIRGRe7lXVm47jDcjl8aFEkDQ94ZYYv
         mX2Q==
X-Forwarded-Encrypted: i=1; AJvYcCXvxyhSwJhhdRSr9q+O3Z0rAaaA8kzWK+yvSYm/j3H4pqicvQnf/0B4uE427GGFIMan/2EZ7uuAMUdz@vger.kernel.org
X-Gm-Message-State: AOJu0YyJhALdCITGJta7x0n4aK7YC1vRaNHK4arqchugvJCVKeHXoV3M
	bvg+QM0c32dLYUi+Pb/eJMPAQOGEF7vJP+9as00MC6TZ4a5A4Ew8iQzYqcVOMNKLSlVotJc9KtG
	AZey+opqVGTS3T6lJ7o+1aJ2hfcPKSzw8kMbNo5Y3Tj0pixjMJ3oIFYrB7dipYDop
X-Gm-Gg: ASbGnctNtw95iY47g6gnY85BkwWwnu1mLfGS89aOvqGUcu9KMdEhglyJ/AQVa2US/cG
	7ZbWftDcHzqkk4Z1J8jum7sew2pbY25vIRwulOSk3Corl7JfLCdsRu1VTXppDOS4GW+f0/E5VX8
	EhxEnsAHcBDI6raUWhzxh8KGJCHK5bTiGl6aY69EqLr7XKqAM53BWIxrUpKJ8ORZQ0vdWMZn6yI
	BiVN63zxPvDwfkS4wsDVPlTiOCwML4US3qJehUFWQUFlTi08MqnfMx/J+zAAVRq5Vuj1FRrHOLY
	DuuaYJqN+gnwAn6RHSP0KPUr6JfKuYSOQCGAaTsUoKkWdl9mngffgYx53y05hXFyWpZOtO+AjHn
	ARK+pqx5NiJ5Zz6BiN1kxPmFn1CWYjINp7WskHIK2/1sgJsbLBVS4
X-Received: by 2002:a05:622a:488a:b0:4b5:e630:956d with SMTP id d75a77b69052e-4da48e6fb4fmr25434151cf.36.1758766564166;
        Wed, 24 Sep 2025 19:16:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEO6F3bBcr0Eyxn631XnKZ093XGXPY9phD3HmDH4TIQtmfCmIzXmtds+LFYS7J/cdNe2teKog==
X-Received: by 2002:a05:622a:488a:b0:4b5:e630:956d with SMTP id d75a77b69052e-4da48e6fb4fmr25433871cf.36.1758766563671;
        Wed, 24 Sep 2025 19:16:03 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58313dd67c4sm243342e87.55.2025.09.24.19.16.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 19:16:01 -0700 (PDT)
Date: Thu, 25 Sep 2025 05:15:58 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com
Subject: Re: [PATCH 16/20] arm64: dts: qcom: kaanapali: Add QRD board
Message-ID: <adxbl5cejcng4iukb5xeriyi3e5xzeqn6xvqmro7o3y5f6tlio@qwxwv64uxvfj>
References: <20250924-knp-dts-v1-0-3fdbc4b9e1b1@oss.qualcomm.com>
 <20250924-knp-dts-v1-16-3fdbc4b9e1b1@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250924-knp-dts-v1-16-3fdbc4b9e1b1@oss.qualcomm.com>
X-Proofpoint-GUID: 3CCHXXOZ6Y42mv7VKTxK4DedMDs8xG1y
X-Authority-Analysis: v=2.4 cv=YMOfyQGx c=1 sm=1 tr=0 ts=68d4a5e5 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=lEEYZ7q47cWEcR7klmIA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAwNCBTYWx0ZWRfX6MjybNBV6/4f
 TIzxvkTSlTbmU/EQyjEsj8Bd/DbaXtPn7KLD0Uvo+CircbAR321XeqUiK8LihplGvi4iRX5iG7f
 Dj4BcHLCb9zq/t0kl9R0AjsV8I4fGvtLNmBGGW6OlPY1mi1lKimkPRdWHL7rwexChiAxRxJuDA3
 sRyxra7tTaj0emQSzJnVG5ukHQnp0AUyzbebhsvr8b5mTeuhZZaWeLFeSg1WG8VgKKL0fSAjIZw
 bsQ57wzT5UR0tg+Hm2+hk8RvgYh9A4PPdatzToswg9jsmY+H6Nm853NC6wPIr3C94Sas7XD6FsK
 2lzxwqJE4ieQa7ix+E569Qij2snsRvZKfTIvBZ1ILqtGr+Y8m2/YaoU6Ps8W5MpNqcFAhwlhDcR
 F8+70Zey
X-Proofpoint-ORIG-GUID: 3CCHXXOZ6Y42mv7VKTxK4DedMDs8xG1y
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 adultscore=0 priorityscore=1501 spamscore=0
 clxscore=1015 suspectscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200004

On Wed, Sep 24, 2025 at 05:17:33PM -0700, Jingyi Wang wrote:
> Add support for Qualcomm Kaanapali QRD board which enables booting to
> shell with uart console, UFS, PMIC peripherals, bus, SDHCI, remoteprocs,
> USB, PCIE, WLAN and Bluetooth.
> 
> Written with help from Jishnu Prakash (added rpmhpd nodes), Nitin Rawat
> (added ufs), Jyothi Kumar Seerapu(added bus), Ronak Raheja (added USB),
> Manish Pandey(added SDHCI), Jishnu Prakash(added PMIC), Qiang Yu
> (added PCIE), Yijie Yang(Added WLAN) and Zijun Hu(Added Bluetooth).
> 
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/Makefile          |    1 +
>  arch/arm64/boot/dts/qcom/kaanapali-qrd.dts | 1212 ++++++++++++++++++++++++++++
>  2 files changed, 1213 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> index 7edfa5fa00fc..da9ef255073c 100644
> --- a/arch/arm64/boot/dts/qcom/Makefile
> +++ b/arch/arm64/boot/dts/qcom/Makefile
> @@ -30,6 +30,7 @@ dtb-$(CONFIG_ARCH_QCOM)	+= ipq9574-rdp449.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= ipq9574-rdp453.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= ipq9574-rdp454.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= kaanapali-mtp.dtb
> +dtb-$(CONFIG_ARCH_QCOM)	+= kaanapali-qrd.dtb
>  dtb-$(CONFIG_ARCH_QCOM)	+= lemans-evk.dtb
>  
>  lemans-evk-camera-csi1-imx577-dtbs	:= lemans-evk.dtb lemans-evk-camera-csi1-imx577.dtbo
> diff --git a/arch/arm64/boot/dts/qcom/kaanapali-qrd.dts b/arch/arm64/boot/dts/qcom/kaanapali-qrd.dts
> new file mode 100644
> index 000000000000..5900812c74a5
> --- /dev/null
> +++ b/arch/arm64/boot/dts/qcom/kaanapali-qrd.dts
> @@ -0,0 +1,1212 @@
> +// SPDX-License-Identifier: BSD-3-Clause

Please sort the nodes in the file. You got two entries for tlmm, for
example.

> +&usb_1 {
> +	dr_mode = "peripheral";

Is it?

> +
> +	status = "okay";
> +};
> +
> +&usb_1_hsphy {
> +	vdd-supply = <&vreg_l4f_0p8>;
> +	vdda12-supply = <&vreg_l1d_1p2>;
> +
> +	phys = <&pmih0108_eusb2_repeater>;
> +
> +	status = "okay";
> +};
> +
> +&usb_dp_qmpphy {
> +	vdda-phy-supply = <&vreg_l1d_1p2>;
> +	vdda-pll-supply = <&vreg_l4f_0p8>;
> +
> +	status = "okay";
> +};
> 
> -- 
> 2.25.1
> 

-- 
With best wishes
Dmitry

