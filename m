Return-Path: <devicetree+bounces-219620-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B3461B8D09D
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 22:15:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 67A407C00C0
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 20:15:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FE6E286D77;
	Sat, 20 Sep 2025 20:15:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="G9gpCqJD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C7CF25393E
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 20:15:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758399351; cv=none; b=rRTgm2r51GHoVQDhsFPHBt4V9u/zXZXHgoGh9LcJL2GiZixuKhfBPfkGjRqD+4tg+e1GD6OATh/duePkk8CGj5SsAEb7OvSlch106Ou1tcG4FQTChXUQblRIGBswYtvPGA8o6+017T85QcG2tkyK8w3Ge8h5IstICf70bUUcyzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758399351; c=relaxed/simple;
	bh=ehh7rR35mtVNzGpsoeQkGq1aRFmROUW8bfdfH07Yzj0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SaRr/cDqGMT4hN86of9F3y8u2ITZW7oX1w31uV/OIDIDCfM9Mm1yQWoAfidxtStWp67B3vPZ1WhLhxvv8LJIj/H4h5oX8jXCUdBVR+q+D9Oj1f4v8u2iX9Q/zgmDaZZP4eABfaR7Y25aWyg5OFHe3Ey22ZfUKnFSr9C4AHoDOI0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=G9gpCqJD; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58KBf6X5002858
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 20:15:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	uxr1OwE6woCsy9ph6puI8An7SoT1y1/n+0nY/X+D0BY=; b=G9gpCqJDGLLtRNRA
	+0vRaSXaPz1xSb72Hq1AnJTvGDThZZkQac6ebr0Qjhm1LnyVlL7CSGHVaweymJP2
	fduQmxF8vwejGMONzgIz7dk/SNqWjWsPsU9QUbSXm76D0/Zkol3NP4or6Skb/7As
	I/vVdZTO1+gJyZy6sGQL0TrMRda1wX67I+qQgbAmISt7URWEpf84RsiNec6795HO
	4N3BSQK8SyVVnbvbQpJxUWAgvyIq1BaEVfYELJfZHWdpoV459Z6b1m1Oqop8Tz2b
	m5p5yaairzIFct8JthBeKxF6sheMSW8AVWLnxmz+KsmYJRegV0zrBIB4J+MzoUk3
	CWQ8rA==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499kkhhaf5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 20:15:48 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4bf85835856so59064491cf.1
        for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 13:15:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758399347; x=1759004147;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=uxr1OwE6woCsy9ph6puI8An7SoT1y1/n+0nY/X+D0BY=;
        b=AYW0RrT5uQhl8pOkt6I5aBx57f+LU8sQQGArPtDLIdrDhVpL/KmAQAJa+84oSRk+Xc
         ZaF44f41ESwmc+SXcZNQd6hfBo+88ObjwcwDH04FRP8LoVTkK34tD0XRWZPspZWepfxs
         PE0+xqC95vE/pYToNDZQW2WU6BpRgQUCw2z4VI2p+9xWBXcif1z8TD8No/jI6IYPp0fq
         w6Vaomj64oiXxw0Yw/qkSt/4wmQuAB1416bwCUue5LgYSo4R2wCxyxT91GKm1VY/tXnw
         yKDf7/pWGYJxYuDnYcT3g53eJHvOETpI/snQ9htayFREDuav9YcEghY/PTxIlCWpu6jT
         NZ8Q==
X-Forwarded-Encrypted: i=1; AJvYcCVXP80tPerG4GzxTqwJu1TjMvM9HFjVzTfZdCqWYOVtOVTyMTke2YNbxh6ugkK43yRI+tk8K3HHEVVD@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7Bp13up/4fWKlzee+naHcwlXaplt6GOdQ6Zf7Nso+0mtht1Nv
	yabgPJ5JoBsXA5deFwoFpCTPZ54T30WXF235t2ClNaoNtvHMM38B9GkeB7A8LdRJ9701vR7Wqvc
	pxaem/DGCA/pE3iHvC5uTTyAsWwqpMqgl7Hi/9YpLjZ1sxC5Co+hnMd28rzr5S53t
X-Gm-Gg: ASbGncuzNKtc5dIcBXfNburMsAh77p8bVshuKzN+AhEWyZszcalmS77rrs69jR+lkIY
	XRxv3OBRl5ph5bwDOC7f/XYtN7IlW+giXBHkcxbJq2Skg38KRhf4mY7L4RGZAAY+3sZ/e9Ui+AP
	Jq+XIZ7k6OnOfsXWnQG9/RQ8uq9MpgMfh9DUoUhINE016rumZvsazuqdRenN4F+RIWaPNPHYZUD
	hsd8Zgr+DU5ty0qlT+2OoHcU/z0H/Vtr7dyvnX1VWxwmoc5VD1PVQlOJc/6xyCjafT1GpZ54+QH
	NnkdNiwvyNDJO3bHO7qy5L+9PmArTqvOzpodNG7fgMXwFiqIpjn4H3wQiLSi0m/aPmdFgkHm0Xr
	UBQkiuVthI625ZJzSjHWmYykjcDenAfwUOMD9dWDHnZ6U3TektnwJ
X-Received: by 2002:a05:622a:1901:b0:4b7:9e60:e344 with SMTP id d75a77b69052e-4bdaed6db53mr137324061cf.31.1758399347185;
        Sat, 20 Sep 2025 13:15:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFCIgnxQ52I0il7IQ1thYRIw+v/2tADbsAI+6zmr+gpePo3kxfC0SKEeBt0o4Y3XDSfKvLXqQ==
X-Received: by 2002:a05:622a:1901:b0:4b7:9e60:e344 with SMTP id d75a77b69052e-4bdaed6db53mr137323871cf.31.1758399346678;
        Sat, 20 Sep 2025 13:15:46 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3628559a89dsm17870521fa.66.2025.09.20.13.15.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 20 Sep 2025 13:15:44 -0700 (PDT)
Date: Sat, 20 Sep 2025 23:15:41 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Eric =?utf-8?Q?Gon=C3=A7alves?= <ghatto404@gmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/5] arm64: dts: qcom: r0q: add gpio keys
Message-ID: <r6e23h4nkddktkle5rohdiiqkw667rq26j7u2yodao6p3scixp@y3roqbly4oje>
References: <20250920014637.38175-1-ghatto404@gmail.com>
 <20250920014637.38175-2-ghatto404@gmail.com>
 <qiiuezocvxvj5bhrr77v6o2amaaaepdx54pqoewvhtnxce5ccz@g7bhkrb6a4pd>
 <5436E420-E459-4E47-9752-EF80F550FA6F@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <5436E420-E459-4E47-9752-EF80F550FA6F@gmail.com>
X-Proofpoint-ORIG-GUID: qctMByf0QWepAFnZvQRYdgyo3oz9AQZR
X-Proofpoint-GUID: qctMByf0QWepAFnZvQRYdgyo3oz9AQZR
X-Authority-Analysis: v=2.4 cv=JMo7s9Kb c=1 sm=1 tr=0 ts=68cf0b74 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=pGLkceISAAAA:8 a=gpHoPsJBt9AuGvPBovIA:9
 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAyMiBTYWx0ZWRfX3Hr0Aq+f0SbK
 z3fBlLpQiKz6bTeHuJ0ebajepH5gZlxaRVy0zUry/jCRGX8mt0V9awPs+sen64pjZND375pv23z
 4WrCNjtLcl7AvEZ90puzQDto0f14iP2b8nb8SJJ0M4p+GZQ1uVqpP5mPdBtuvPZEuxasJC9Cox4
 XokQXUFcpsdB7YvRbudYP/X6QKvsdfbY1E6FAXT0pu824gi+AslZrDHysBiQjI75sxcDlGJKMSl
 9av9BJmKS/9nmlkEM5gX84DQ9G48noZ40o6RUTYuP+jJwYBvEF6tpQdqk0s5dIrGXLU3ixXb97L
 iF2hjvggRjUmsmEgl/BHTJYXV9zkJFBA1cyr4NJr6BqwxZwYsUhEUsp/kR2maTam+5w/sqpM25v
 YmHfV6Ar
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-20_07,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0
 clxscore=1015 adultscore=0 spamscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509200022

On Sat, Sep 20, 2025 at 03:02:42PM -0300, Eric Gonçalves wrote:
> 
> 
> On September 20, 2025 12:45:27 PM GMT-03:00, Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com> wrote:
> >On Sat, Sep 20, 2025 at 01:46:33AM +0000, Eric Gonçalves wrote:
> >> Add GPIO keys support to Samsung Galaxy S22 (r0q).
> >> 
> >> Signed-off-by: Eric Gonçalves <ghatto404@gmail.com>
> >> ---
> >>  .../boot/dts/qcom/sm8450-samsung-r0q.dts      | 53 +++++++++++++++----
> >>  1 file changed, 44 insertions(+), 9 deletions(-)
> >> 
> >> diff --git a/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts b/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts
> >> index 880d74ae6032..70e953824996 100644
> >> --- a/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts
> >> +++ b/arch/arm64/boot/dts/qcom/sm8450-samsung-r0q.dts
> >> @@ -2,11 +2,12 @@
> >>  
> >>  /dts-v1/;
> >>  
> >> +#include <dt-bindings/input/linux-event-codes.h>
> >>  #include <dt-bindings/regulator/qcom,rpmh-regulator.h>
> >> -
> >>  #include "sm8450.dtsi"
> >>  #include "pm8350.dtsi"
> >>  #include "pm8350c.dtsi"
> >> +#include "pmk8350.dtsi"
> >>  
> >>  / {
> >>  	model = "Samsung Galaxy S22 5G";
> >> @@ -28,13 +29,19 @@ framebuffer: framebuffer@b8000000 {
> >>  		};
> >>  	};
> >>  
> >> -	vph_pwr: regulator-vph-pwr {
> >> -		compatible = "regulator-fixed";
> >> -		regulator-name = "vph_pwr";
> >> -		regulator-min-microvolt = <3700000>;
> >> -		regulator-max-microvolt = <3700000>;
> >> -		regulator-always-on;
> >> -		regulator-boot-on;
> >
> >Please don't mix up refactorings and new features. Split this patch into
> >several.
> The patch only added gpio-keys node and pon_resin,
> pon_pwrkey. Do you mean I have to split each button
> into separate patches?

No. The patch also moves regulator-vph-pwr and changes the comment in
the TLMM node.

> >
> >> +	gpio-keys {
> >> +		compatible = "gpio-keys";
> >> +		autorepeat;
> >> +
> >> +		pinctrl-0 = <&vol_up_n>;
> >> +		pinctrl-names = "default";
> >> +
> >> +		key-vol-up {
> >> +			label = "Volume Up";
> >> +			linux,code = <KEY_VOLUMEUP>;
> >> +			gpios = <&pm8350_gpios 6 GPIO_ACTIVE_LOW>;
> >> +			debounce-interval = <15>;
> >> +		};
> >>  	};
> >>  
> >>  	reserved-memory {
> >> @@ -47,6 +54,15 @@ splash-region@b8000000 {
> >>  			no-map;
> >>  		};
> >>  	};
> >> +
> >> +	vph_pwr: regulator-vph-pwr {
> >> +		compatible = "regulator-fixed";
> >> +		regulator-name = "vph_pwr";
> >> +		regulator-min-microvolt = <3700000>;
> >> +		regulator-max-microvolt = <3700000>;
> >> +		regulator-always-on;
> >> +		regulator-boot-on;
> >> +	};
> >>  };
> >>  
> >>  &apps_rsc {
> >> @@ -119,8 +135,27 @@ vreg_l1c_1p8: ldo1 {
> >>  	};
> >>  };
> >>  
> >> +&pm8350_gpios {
> >> +	vol_up_n: vol-up-n-state {
> >> +		pins = "gpio6";
> >> +		function = "normal";
> >> +		power-source = <1>;
> >> +		input-enable;
> >> +	};
> >> +};
> >> +
> >> +&pon_pwrkey {
> >> +	status = "okay";
> >> +};
> >> +
> >> +&pon_resin {
> >> +	linux,code = <KEY_VOLUMEDOWN>;
> >> +
> >> +	status = "okay";
> >> +};
> >> +
> >>  &tlmm {
> >> -	gpio-reserved-ranges = <36 4>; /* SPI (not linked to anything) */
> >> +	gpio-reserved-ranges = <36 4>; /* SPI (Unused) */
> >>  };
> >>  
> >>  &usb_1 {
> >> -- 
> >> 2.51.0
> >> 
> >
> Resend because I forgot to CC the mailing lists

-- 
With best wishes
Dmitry

