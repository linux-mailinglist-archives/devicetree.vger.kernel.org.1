Return-Path: <devicetree+bounces-197618-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BC4C8B09F92
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 11:27:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2CAF61C47AB3
	for <lists+devicetree@lfdr.de>; Fri, 18 Jul 2025 09:28:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE23E298993;
	Fri, 18 Jul 2025 09:27:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="c0LA6yVy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7018B298261
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 09:27:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752830861; cv=none; b=MJSZ9qBUQMIaN8C2A1n6MXhPZQ5OTxyeb3n/NK0XYH3eYo6u+DpRwdnwZSCkGySYjL/OeuLxivKgMJQEx5knZvQFygOS6qgw/1gQfGat3Mma3Gep+a7cVVHPOl1AwbSrbPi7b/Js7t49r0rOP5QEPtgBs+mQkphUjADr8hBFsJY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752830861; c=relaxed/simple;
	bh=FGPREmcEPnOwK5l5AewGV5z4NawSGFEuuZib4LYJ1z4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UJ/ihbG66NCnv7KBvmSW5sqkRRrFXZ7DA1W0TvobOaZZr4ltbWRQIn9FCajO2QgJWslasn2L6cM+Zc7jix38mD3Wf9HJuqcnoOfWVD+SIlZz649ztG1ZCX9huncmt0ZbgtMc4FDremqR1afTgX9BdHFSi/YI/p3UlOWCWk0QLp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=c0LA6yVy; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56I71HBE028086
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 09:27:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=2LrGVanutbs4/9+mngI5KLF5
	t6u0n34A7dypspT6PBY=; b=c0LA6yVyWaaIvWWQZhTZSgtA6vDYf/XrxMWyqiEx
	RitzYSlSINExQqM+6E5i4yG2SVHd5DGStSgZ9zo6ZcY/vgc5o8vDB7L8T8xKo8De
	WBY3xggBpB09L12FU/luRCf/rT30x89FmFh558y+7dhSdoJ8Weg0x31WfGvwk3vr
	sYinDpN/gmY/+L0EOH/VJdJd3XVBUU7rW9+MZ2FkzmgDz6JV/A153YCjL/bmBP2R
	d7A9SaFBid83QhMz9JPYOYr+CTr5ZrAxrwTbf9OpCF289Uwufp3xHVD/Gyo+1C9+
	azMpocOEr2fJmqrySpSIWl3kvkTVn+8w4zA4X7AjJZGC3w==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47wnh636jy-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 09:27:39 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c7c30d8986so534413785a.2
        for <devicetree@vger.kernel.org>; Fri, 18 Jul 2025 02:27:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752830858; x=1753435658;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2LrGVanutbs4/9+mngI5KLF5t6u0n34A7dypspT6PBY=;
        b=L+TCrCZU4evFmLitrKJKc4/FDoJ3ZID5wSW0ti/fGeeRFoxfpxdxJ9EYwPmdiH3sX0
         1I6LfVYTylG+PtwuNaMCNHTnnfvjpKa5yLaYW4/FQxgoOiWThEjuZdxt47MUtValOc1F
         sYQ1unQwnFbr16VReXqSbYMGu0DvJlX3jpA2CL6u4csuom7pu2cwnLAQMEhKH9reHvC/
         AzTl+YADr8KmDHjMi7PNK4EK6oD/Sn2CgoT3fq47VH/d76HjyZDTJnO8baFER+N0YpCl
         46Ud+nJO20wLAoMSKMQU5kYwVeryKqGRwp+87bLDQhRlm/kAY2QSTZjMCM4QQa0hUUSa
         tsBg==
X-Forwarded-Encrypted: i=1; AJvYcCWwDRHoxWGP0rBjqirOEiyQR1vWJ81X+2slbhOYSbI5kpvX7Y02jIkJVe2WRhnBNWig/lRaz8UKEANB@vger.kernel.org
X-Gm-Message-State: AOJu0YwcAOCoJ9hJBSlCm9ij04RlFqUr+PXDUyro50T4T1hDDV1T2WLA
	MSMui8umczYtPQcgFAO6pRr5mbjVboDhBUIZ+Q+IbBy41EJJQTsP+ozNaxiR6lPlyt14Wq6Wt1I
	g8GzRxsinKj4qk5/yq29+gnGxlrPzyfWy10OpsYZsmhttJECBUr7c8phmMn700z9U
X-Gm-Gg: ASbGnct1iubGH5c2N61imw7FUIwRIs46WL+8TVzXf1nsgZt+l+RbPuaGHjor6xHiFHm
	pdn3uD5LUTnqLj35H76RifASLXehHxTtNHea0eztKQPVuozWnxxU09pE7GmrlXZwjNH2wDd2/9J
	BEvbNRkZ4nwwxGK6Oslvma30vRTRur0jwPLPGLgDZJdVr332zCMpueabDUqNTHHhwHt5oHmFy1L
	Ay8ZF5lLidrZwu33Oj42D6LswYtsIouPLxEEZcAdyINwyTqD2SPHXpK0D5m97OwoD3IJ8QpcG18
	5MCGNyE01ms5aG2MdgK0QLLPA9X4UE7/GEF+7ZYhAvUOQmmRHj5aHkdgZ9XDZw4DG57iVSE3gZE
	/BdElgVexkaBqoQmbaQxPPgQ3VxothwJf2OSk/ZWoya3Y/JDWW0/u
X-Received: by 2002:a05:620a:7112:b0:7d4:57b7:bc12 with SMTP id af79cd13be357-7e356a248demr336203085a.10.1752830857804;
        Fri, 18 Jul 2025 02:27:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFRPTaLxKWC/RL7n39Kl8/6M0XWNZ+Lf77HUcHwzll4t6nXZKM+vIee/jhv/vO0jbOVdQCyeQ==
X-Received: by 2002:a05:620a:7112:b0:7d4:57b7:bc12 with SMTP id af79cd13be357-7e356a248demr336198985a.10.1752830857235;
        Fri, 18 Jul 2025 02:27:37 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55a31dadf33sm183041e87.214.2025.07.18.02.27.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jul 2025 02:27:36 -0700 (PDT)
Date: Fri, 18 Jul 2025 12:27:34 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yijie Yang <yijie.yang@oss.qualcomm.com>
Cc: Stephan Gerhold <stephan.gerhold@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 4/4] arm64: dts: qcom: Add base HAMOA-IOT-EVK board
Message-ID: <ng7koaqz6s4cslugrujklsrprsl7v7wijtserr6edvsvbeqfkv@pldexeryni7h>
References: <20250716-hamoa_initial-v1-0-f6f5d0f9a163@oss.qualcomm.com>
 <20250716-hamoa_initial-v1-4-f6f5d0f9a163@oss.qualcomm.com>
 <aHkm4qjgSaklHGp0@linaro.org>
 <4363f117-cc25-4904-84cf-4b3779797223@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4363f117-cc25-4904-84cf-4b3779797223@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=dKimmPZb c=1 sm=1 tr=0 ts=687a138b cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=LY8-0S5nuflZfSqsnlMA:9 a=CjuIK1q_8ugA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-GUID: icpOf8YNmKp74aJPGLwqXqdLVnV1d3gC
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE4MDA3NCBTYWx0ZWRfX9oyohAsEN8sT
 Ww6xP0ivqttx7aEiB77pSpnM9vOEkZTtdEE3Qf7QvlkGnQCOQ6wjiq2eQtonbbszQ3clLjgBMuQ
 OkKQ1xOFPr+CaXZihBmw8o4wQTOpz2wrkY5goCCgDoKoms/7f1mc47UB8oEq9gLNti+nYCc0z+i
 zrLuAVNaHR5DxFz7tJ+w9DiabsOLQ7mJQAEz1Zqk5RWYL1A9fVga8DEDmlbCMrHCijNiuBco9NS
 n0LyAoetO3LG6OWN9w6gOqAtNo+F4nFZ6jozxRiW+zHu3Ybp7IkAwL5j4ppLjN+WnUWGuHoPdtD
 d6VN3jhK/P/rHNj5RekmmPqDN+/N4dUtCqMCscnZXS/ERHosrgRNyyUcGmvmrJ/cFTdowc7eqA5
 hy15o3MOujimo0jgRXKmoWpZJnsW9HFWOt+5aT3ffhflmiXfQC8rbZ+V48KbVqI2gWb7rURW
X-Proofpoint-ORIG-GUID: icpOf8YNmKp74aJPGLwqXqdLVnV1d3gC
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-18_02,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 mlxlogscore=999 mlxscore=0 spamscore=0
 adultscore=0 impostorscore=0 priorityscore=1501 suspectscore=0 bulkscore=0
 phishscore=0 lowpriorityscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507180074

On Fri, Jul 18, 2025 at 04:19:13PM +0800, Yijie Yang wrote:
> 
> 
> On 2025-07-18 00:37, Stephan Gerhold wrote:
> > On Wed, Jul 16, 2025 at 05:08:42PM +0800, Yijie Yang wrote:
> > > The HAMOA-IOT-EVK is an evaluation platform for IoT products, composed of
> > > the Hamoa IoT SoM and a carrier board. Together, they form a complete
> > > embedded system capable of booting to UART.
> > > 
> > > This change enables and overlays the following peripherals on the carrier
> > > board:
> > > - UART
> > > - On-board regulators
> > > - USB Type-C mux
> > > - Pinctrl
> > > - Embedded USB (EUSB) repeaters
> > > - NVMe
> > > - pmic-glink
> > > 
> > > Written with contributions from Shuai Zhang (added Bluetooth).
> > > 
> > > Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
> > > ---
> > >   arch/arm64/boot/dts/qcom/Makefile          |   1 +
> > >   arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts | 835 +++++++++++++++++++++++++++++
> > >   2 files changed, 836 insertions(+)
> > > 
> > > diff --git a/arch/arm64/boot/dts/qcom/Makefile b/arch/arm64/boot/dts/qcom/Makefile
> > > index 4bfa926b6a0850c3c459bcba28129c559d50a7cf..c5994b75d3e56e74ffb64b2389ee1bcc086f3065 100644
> > > --- a/arch/arm64/boot/dts/qcom/Makefile
> > > +++ b/arch/arm64/boot/dts/qcom/Makefile
> > > @@ -13,6 +13,7 @@ dtb-$(CONFIG_ARCH_QCOM)	+= apq8039-t2.dtb
> > >   dtb-$(CONFIG_ARCH_QCOM)	+= apq8094-sony-xperia-kitakami-karin_windy.dtb
> > >   dtb-$(CONFIG_ARCH_QCOM)	+= apq8096-db820c.dtb
> > >   dtb-$(CONFIG_ARCH_QCOM)	+= apq8096-ifc6640.dtb
> > > +dtb-$(CONFIG_ARCH_QCOM)	+= hamoa-iot-evk.dtb
> > >   dtb-$(CONFIG_ARCH_QCOM)	+= ipq5018-rdp432-c2.dtb
> > >   dtb-$(CONFIG_ARCH_QCOM)	+= ipq5018-tplink-archer-ax55-v1.dtb
> > >   dtb-$(CONFIG_ARCH_QCOM)	+= ipq5332-rdp441.dtb
> > > diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
> > > new file mode 100644
> > > index 0000000000000000000000000000000000000000..843f39c9d59286a9303a545411b2518d7649a059
> > > --- /dev/null
> > > +++ b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
> > > [...]
> > > +	vreg_wcn_3p3: regulator-wcn-3p3 {
> > > +		compatible = "regulator-fixed";
> > > +
> > > +		regulator-name = "VREG_WCN_3P3";
> > > +		regulator-min-microvolt = <3300000>;
> > > +		regulator-max-microvolt = <3300000>;
> > > +
> > > +		gpio = <&tlmm 214 GPIO_ACTIVE_HIGH>;
> > > +		enable-active-high;
> > > +
> > > +		pinctrl-0 = <&wcn_sw_en>;
> > > +		pinctrl-names = "default";
> > > +
> > > +		regulator-boot-on;
> > > +	};
> > > +
> > > +	/*
> > > +	 * TODO: These two regulators are actually part of the removable M.2
> > > +	 * card and not the CRD mainboard. Need to describe this differently.
> > > +	 * Functionally it works correctly, because all we need to do is to
> > > +	 * turn on the actual 3.3V supply above.
> > > +	 */
> > > +	vreg_wcn_0p95: regulator-wcn-0p95 {
> > > +		compatible = "regulator-fixed";
> > > +
> > > +		regulator-name = "VREG_WCN_0P95";
> > > +		regulator-min-microvolt = <950000>;
> > > +		regulator-max-microvolt = <950000>;
> > > +
> > > +		vin-supply = <&vreg_wcn_3p3>;
> > > +	};
> > > +
> > > +	vreg_wcn_1p9: regulator-wcn-1p9 {
> > > +		compatible = "regulator-fixed";
> > > +
> > > +		regulator-name = "VREG_WCN_1P9";
> > > +		regulator-min-microvolt = <1900000>;
> > > +		regulator-max-microvolt = <1900000>;
> > > +
> > > +		vin-supply = <&vreg_wcn_3p3>;
> > > +	};
> > 
> > Like the TODO comment already says, regulators located on a M.2 card
> > shouldn't be described as part of the device DT. We need a proper
> > solution for modelling the M.2 slots together with the standard power
> > supplies (3.3V and 1.8V) and hook this up to the pwrseq subsystem. This
> > is also the reason why the CRD does not have Bluetooth enabled upstream
> > yet, this needs to be solved first.
> > 
> > As far as I know, there is no one actively working on addressing this at
> > the moment. Perhaps you can assign someone at QC to work on solving this
> > upstream.
> 
> This power section is now managed by UEFI, rendering these regulator nodes
> unnecessary. Therefore, I will remove them in the next version.

No. The regulators for the M.2 slot should be present here so that Linux
doesn't disable them. Which triggers a question: how are they
controlled? I don't see a GPIO line there.

> 
> > 
> > Thanks,
> > Stephan
> 
> -- 
> Best Regards,
> Yijie
> 

-- 
With best wishes
Dmitry

