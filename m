Return-Path: <devicetree+bounces-199881-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id C85BBB12AAF
	for <lists+devicetree@lfdr.de>; Sat, 26 Jul 2025 15:19:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 21D7C7A3436
	for <lists+devicetree@lfdr.de>; Sat, 26 Jul 2025 13:18:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E47772857EC;
	Sat, 26 Jul 2025 13:19:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GG95piGR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 362C023BF91
	for <devicetree@vger.kernel.org>; Sat, 26 Jul 2025 13:19:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753535974; cv=none; b=piQky7tU7ChWhDvMlfw0i6JM6fzJYeZZ/XolOsoxJ/cTvtXnnAni7jkZ7ts/GxXbPuLZMIgAe1CeFJQUHNpx/EHdowu2rsRAXmdcL+PuZm6JTAgrVe64dABFVSh6Th0xxgnUTiNVkOecdWvP3jiMt2wE5Vt38SOLzy83dz6nMmM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753535974; c=relaxed/simple;
	bh=kS9mTNecFI8kxGYFVb6bjLud3Ye7vR+V9xS9j4LHP6I=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HJReG4Y3x8DjlIloMjuIgp19Zt0i8ppTnd5o5jqA9cESXoehb40diaWa1Z34oLWUi1iG/2qPATLjNiuVxjeKoiW4U2zWw2oRyxmeXrlCHvkqg5v1hEHsWwIzdlGGwYJ+B7jUtcusYtWD5qM2GsldOcZCAGxfuslcAm87Sx8OLng=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GG95piGR; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56QAuvc2019690
	for <devicetree@vger.kernel.org>; Sat, 26 Jul 2025 13:19:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=wKlRx43bg26GnzmWCYPgxvkf
	BptJ5iTMD+pzuCHYoZo=; b=GG95piGR1Nr7fWfwhZdOyz5BftydJKVBeLiAIod/
	4uwit/XW9Mj5nkVIjJACv0PpfxgeN9cyPGmBjeKD+Lo9jae8QNdq6Tv1mPcVT82c
	PRv8wiKsULpFc/rcaMBiVVeryA3Zbn3ePxJi4b6ORtQ5fX1wPrkoWpzcDy9/3t4R
	NRdX+1EICayksXj2pTwys76gL/AiaOAtQ9YMKN2snnz3Z39xFrKu+zPILzglJ/3U
	YokN/pZbaQCjkyQ7n1BxTa8RwDBieUyd5Ni1zZBY/Wt5G3GGFKR1c31CY9AnUqVP
	7oISdv2xTJMn3bEX21ErP/MxO/FZv/KRKNiFr+7U+aBLOQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484qd9rmtw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 26 Jul 2025 13:19:32 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6fe182a48acso67988786d6.1
        for <devicetree@vger.kernel.org>; Sat, 26 Jul 2025 06:19:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753535971; x=1754140771;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wKlRx43bg26GnzmWCYPgxvkfBptJ5iTMD+pzuCHYoZo=;
        b=B+JBZ0lIPODyHXE3mNDSaaplE1I8FR6R122q1F2l6qlJpm9UXkiocZ4GoiwqD+8mDC
         NAhCDlbROAaDPdjlG6rll3pVvz8dnTOL+PKClk0F3xMZRwx3e+JfdqlApPUOiVtNiRaA
         RoleH8VaMK2NvfDqFlLP+QtEm+VaUYZk6zNXWNo611roLhhGlG7eDhTbHheNXuYRffmM
         AqnFAXyjQhi8USGfyjcNce+HQasJED36kDb7enX1VOstjVGh09GbJQGgmYCmR37b9+LM
         IcXOr28seZtzOCFcQ/IxUlAE/Ht/5Y9Gc/HzF3eCgfvDnaSi8qXPBzy/25QgQ4gOMaxY
         9l4A==
X-Forwarded-Encrypted: i=1; AJvYcCV3f/T5zIUyS0CAkNdh3PgY1GQ6NOaiYnIsMUJ5ouVwWfnB39tYWMRJ9FGPcE9rTViaTp7IhINK6q7O@vger.kernel.org
X-Gm-Message-State: AOJu0YzGuUax9zXgQ+bZxBFM1BOKKNDpEiZ5IlfsLx7aly1r/g32aEct
	RtJIW1LxhGxxZ3HRdo3yBvOc96nMC8N/EUphu7pSzFlC5sqfmmm9b7Mkhn6u5+JPDlTcYsM96jb
	dX/Hrwf7bitc97yE4bqLcH60wl5vO/QUjVZpJWPQ4tUDAplvnftWOrGFC6AvQVd5PtEaYwCDz
X-Gm-Gg: ASbGncsdLH/ETbhmOBiLIzU/hfd0rn3inzjv9sV5CZdtQkKY4C0+g8TTYNDc0XyjewJ
	Bn0NYWS27yZ+WGTwnhcIwNdhx953YA+YJQ2moYLd4Y2sf4RPwC0svwqzAeULDrI9p0UCFpEtiSz
	XR5cJdAW37N2oK95sp8SRsaoAXEdk5t2LTHmz41e2IKCR3ijoXTzMLqX0gY3HO4Y5BaW2xxuHU6
	TUSGR5gvLfGyG4UIIR13gRtQjJIfS+GwHEUP3/8PGlCJ76weDEKQv1nqenbXp+62+qGWVnqP0jX
	jfE6T4IWkki46SvKx+V+RJlqIjL/KtU31QPtujZ1IgAEBhk64/z1c2KlrPIgtECOCBzn9ou6Mvq
	5TwhkqwH2QtFb88ek7qYXgsOFpP5u+kA1zukn6f2Z2nCb7bZZclp3
X-Received: by 2002:a05:6214:c64:b0:6fb:265:a2c5 with SMTP id 6a1803df08f44-70713d6d5d8mr105345626d6.17.1753535970986;
        Sat, 26 Jul 2025 06:19:30 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFYWwkI5Fe219W83PqY4wtTeraw4eW8iJd8EByOKtLD5K1fGPdGZVddIcafeBoh4bciCapvXQ==
X-Received: by 2002:a05:6214:c64:b0:6fb:265:a2c5 with SMTP id 6a1803df08f44-70713d6d5d8mr105345346d6.17.1753535970543;
        Sat, 26 Jul 2025 06:19:30 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-331f407e39csm4495121fa.1.2025.07.26.06.19.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 26 Jul 2025 06:19:29 -0700 (PDT)
Date: Sat, 26 Jul 2025 16:19:26 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: "Yu Zhang(Yuriy)" <yu.zhang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 2/2] arm64: dts: qcom: qcs615-ride: Enable WiFi/BT
 nodes
Message-ID: <ad5d7zx3ztuouvqediihpj6ukmy7dvl4eampuirp5r6ftr4lh2@6fkebmfj25yj>
References: <20250726-615-v6-0-42b8150bcdd6@oss.qualcomm.com>
 <20250726-615-v6-2-42b8150bcdd6@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250726-615-v6-2-42b8150bcdd6@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: _O_uH0VY0Nfd1dPfyYZvoHLkJWT5yLWk
X-Authority-Analysis: v=2.4 cv=Pfv/hjhd c=1 sm=1 tr=0 ts=6884d5e4 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=15mc5X2mdMWtrc8z2E8A:9 a=CjuIK1q_8ugA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: _O_uH0VY0Nfd1dPfyYZvoHLkJWT5yLWk
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI2MDExNSBTYWx0ZWRfX5zVnOLXXCqSu
 XvkfUdgpUoj1Der1bUgVhCdkClF2J9YT+W6m6oA5YWHGT1Ke9BSMN180G3SkOK2V4DdGdq9ngvW
 aLTG5ffgSqrJpR8SYYHKb9djePQNqThnxp4gKOpVvKvn8Y67ogAb/NLdfhz0c6FambOSI+DzBKk
 ti2Ie+X/d+/rxSDq+Y2JDu4TQMNEtK66skQN70jkY6ra2T2DxMI+rqHJGi2XpHIjuMmw0Br6j7G
 BaMUNkWrhmFkGGOJPfmcTQ9AAgsOCCHsewGEetPAq4RjQUdxQYvM889Y85m1vGhzddgXZXGM65j
 pV4gkibX7CAZOsggR7WYuVBHbYUNRQnE70YM/17MGA00Oqz1uVEQ41+JFK1EFfa7QhbRJ/Tr/VA
 azsoTMcCmDT2AKZ7XZ67Kubfkmn0GJfnx9O2mxpiMqexwMejzuuH8iorb+SKBdKrYbAeZBGn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-26_03,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxlogscore=925 clxscore=1015 adultscore=0 priorityscore=1501 mlxscore=0
 spamscore=0 suspectscore=0 phishscore=0 lowpriorityscore=0 malwarescore=0
 impostorscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507260115

On Sat, Jul 26, 2025 at 11:31:31AM +0800, Yu Zhang(Yuriy) wrote:
> Enable WiFi/BT on qcs615-ride by adding a node for the PMU module of the
> WCN6855 and assigning its LDO power outputs to the existing WiFi/BT
> module.
> 
> Signed-off-by: Yu Zhang(Yuriy) <yu.zhang@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs615-ride.dts | 135 +++++++++++++++++++++++++++++++
>  1 file changed, 135 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/qcs615-ride.dts b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> index 011f8ae077c256f079ce1b07720374a9bf721488..f6df6a88adc8cdc416a57d38b8eaabd53fbe3fcd 100644
> --- a/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> +++ b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> @@ -18,6 +18,7 @@ aliases {
>  		mmc0 = &sdhc_1;
>  		mmc1 = &sdhc_2;
>  		serial0 = &uart0;
> +		serial1 = &uart7;
>  	};
>  
>  	chosen {
> @@ -47,6 +48,85 @@ regulator-usb2-vbus {
>  		enable-active-high;
>  		regulator-always-on;
>  	};
> +
> +	vreg_conn_1p8: regulator-conn-1p8 {

regulator-conn-1p8 < regulator-usb2-vbus

Please keep DT sorted

> +		compatible = "regulator-fixed";
> +		regulator-name = "vreg_conn_1p8";
> +		startup-delay-us = <4000>;
> +		enable-active-high;
> +		gpio = <&pm8150_gpios 1 GPIO_ACTIVE_HIGH>;
> +	};
> +

-- 
With best wishes
Dmitry

