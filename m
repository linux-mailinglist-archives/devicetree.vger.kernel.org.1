Return-Path: <devicetree+bounces-245473-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E0593CB151C
	for <lists+devicetree@lfdr.de>; Tue, 09 Dec 2025 23:43:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 539DB3106C54
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 22:42:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F56C2ED866;
	Tue,  9 Dec 2025 22:42:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="hbODv0BH";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="M+Y9mNYR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A5F1C2EC0A7
	for <devicetree@vger.kernel.org>; Tue,  9 Dec 2025 22:42:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765320164; cv=none; b=jFAVp0o/zLw7Icyn8tx4djHle5pMn6OvWmhILkkH/QRj8Mlq/EHLtIz5mR5rnBQQm7A6X/4cWxLol5VvRfrqVEq/UeYhSW1AaP5K9ElkRkau3WWx0zfofS1SESd3xvPd+CHxJqYmaFD/PeGSinlIYPtplICSXLEkrcKXO4peFIw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765320164; c=relaxed/simple;
	bh=L2apk62jBA8N4mYMxQCPIOA1jy/aRThI0KvKNDAUuFk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=FKXAsd2aJ1fvu51qDZnWAmf6HLjMoHNTJy95jTX4MhjS//N9H+rUyYQXTGGgmopsfm2K2W+a8/XLcWUANYvNwQwdbO2oL1w6YWb07JIhifj3/BQEb7CkxD0m3QnMKGk1YY0u0ZQB1JT//rf/aeQdMVUoLrHVojVqKb8W1qvRTL8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=hbODv0BH; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=M+Y9mNYR; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B9H3n66802457
	for <devicetree@vger.kernel.org>; Tue, 9 Dec 2025 22:42:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=3HJPJw8BnHwUDLYnlVfUA49W
	h43bJ9QOWXO5EKr1pEg=; b=hbODv0BHMkuKkrp767sq30bw1Gn5U7d1at4PVvCs
	YasKvHx+I7njVEZMV2MwANgOwWbWW7FX3wEAIeoT+33w8BKp6r1VCwEeuRupYHfC
	W9grVu/iZlbTcGOeGfO0+OqJ1uCVGK25q55e4KF4N1JpS6IiaOtyEo+MLEQb+l4v
	rGWFGIvtCgvfnPXF6Q5VLTqK9M4RVKF74Xrebmzs94kXHJ4ZGZUMwZyjBnr3nNcu
	oGESH1vn81Nx3Pmb2lC4fx5oXCtzBHp0z7mBPNiI6G9FJDgsTYuMdGHtcHp7Zv/l
	1nonYPz3bacffCtKv/Oy79WJ+x0AsJkP9+C5w+eleBYo2Q==
Received: from mail-vs1-f71.google.com (mail-vs1-f71.google.com [209.85.217.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4axqu58w8e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 22:42:41 +0000 (GMT)
Received: by mail-vs1-f71.google.com with SMTP id ada2fe7eead31-5dbfaf0bdb6so2924741137.0
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 14:42:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765320161; x=1765924961; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3HJPJw8BnHwUDLYnlVfUA49Wh43bJ9QOWXO5EKr1pEg=;
        b=M+Y9mNYRHNPIkrgGLP+ljH4akvqT+F7f6bOy6tFae1WE0lz5sQ9gFGwTqsXlCYU8uk
         jvxyaA2ZlnuQxJ1gnsN5K7FVGBQIJBRXpXmCLq+IwWDASu34c2VOvfgEk3lBOYTE6H0Q
         0epBgQ2u+Z3eXnUifmJFz89MspTNutI08Qa5Z1AxFLrm4l7jUrrqtHcywKYIA8Y61FnB
         FGIzUXdW2mleBB2lFmGvN0lBuw00iPdJsmLdKrFY3Rm5jhjk6aEPGC6rHBL15c7k2FoX
         2XZ5krEaZnkvEE93Zwy0CTwgczhDNl8CqP9cs1+OWaRK/kwMQGDyUP0qb+c8cBaqlkUz
         nv3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765320161; x=1765924961;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3HJPJw8BnHwUDLYnlVfUA49Wh43bJ9QOWXO5EKr1pEg=;
        b=DDOlCQc6v6kenkvXm7NkTmPwYn67gQF1NCm+ItwpHSi3pg95P03hP6tMEkwURHPjUR
         km36RSyOhqYVkBDbSVIa5SEuBXTIFlu9a3uuBAc2PC7h71qi0c0B1IizXh1kM2bMVXd8
         YYMEWRJzbhD3/E7AXBIQaw8C8GvukyhOk8nUq20JRtAVnow8FV5uB7PaCVxsR0u+IToQ
         D9PcKQUi0ajpC2ZaXXirCJOM3UfhkioS287+eKX77Tcwh2H8gWoxLixaMQRQwL2V63LT
         3xYysyhmdwKPHPZIHUHra5YpAHxIJny9ppaStgqXWsjMomDZ+RBeKGhfk1FYkwEjSofR
         wlRg==
X-Forwarded-Encrypted: i=1; AJvYcCV++qlnL8uEgs89zYUYYCBiMUwapbaTvAsfklAEUOr4zcIk2MgpwC55i3kdSiWW823KG7HEzOpKBQ/4@vger.kernel.org
X-Gm-Message-State: AOJu0YwBvDzuB14xuiQdRHYNHPfC08gtC3yZSaeo8ufPUyw2R77r5sE8
	NkyjNGDCZl7UEY1bxTLkhwtfmoLzCpglHE387zyeliPfD8lG5fTEQP5fB/+vuBkFDkS4GeuWhWU
	VlzYNQYkMbXOogNQ8PcJ1KAs8lawjsFoGFTDjgx6TFiWlXPInSI+1I0P+LwiLZDkf
X-Gm-Gg: ASbGnctd0v1UXc3oFNb5j730h6AM4qNOl3FljMeRIzZzyvpsN5+z8BTJSr3WCtpCJHs
	mYLrKCL2t6oQDxMDnHX+XCpUnCsKebbATh5MXlfkYPP9rSNM67M6c2g0a6yxXRaaiuY0iXDaqxc
	wSphAKpy6W6AGigvgqh9skmTwOPTeg/CmxmFK7chnARLRv9s4bq+OAm8KyhZi+Bjj//5P37OnY/
	eVWzgxZKyMXwd3WeJob9VZb1vMdC6/hPjpWGQl2+nJKaGcA39eqYH3n5XzdyR0oN+W8q//Z/4db
	LTzC+jc5ML7F4KxoN1O0QhjJL7fDzADg84RoMW1kqHIYlk2oy5FTMRcL8BA4OStsjmdONrsvGK8
	a7iU4gQicudPZ8HHesFED3Ne6M7kcjRdv6fui0i0kUfiB+mXbH4qWlntIyyv9yO2Rgkx3Jve3GY
	XBq9GocjWyFwwA+VmyyY2s2d0=
X-Received: by 2002:a05:6102:548b:b0:5e5:63e3:ebb9 with SMTP id ada2fe7eead31-5e571f1cc97mr140225137.40.1765320160704;
        Tue, 09 Dec 2025 14:42:40 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG29A2AD+KXPtA0IIwiku2hfP40ZWsH21yDI12RRxWKtn8K06eKpoAWm4hl2mHpkBLV34qYPg==
X-Received: by 2002:a05:6102:548b:b0:5e5:63e3:ebb9 with SMTP id ada2fe7eead31-5e571f1cc97mr140193137.40.1765320160271;
        Tue, 09 Dec 2025 14:42:40 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37e70595ff7sm50933701fa.30.2025.12.09.14.42.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 14:42:38 -0800 (PST)
Date: Wed, 10 Dec 2025 00:42:35 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: david@ixit.cz
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        Casey Connolly <casey.connolly@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Dmitry Baryshkov <lumag@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Petr Hodina <phodina@protonmail.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        phone-devel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        Amit Pundir <amit.pundir@linaro.org>,
        Casey Connolly <casey@connolly.tech>,
        Joel Selvaraj <foss@joelselvaraj.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v6 8/8] arm64: dts: qcom: Add support for Pixel 3 and
 Pixel 3 XL
Message-ID: <2eg7ef244ykfb73c3ztd4z6tqu647j5h3qaobdjxsxywdqtnun@lea2erzgtgka>
References: <20251208-pixel-3-v6-0-e9e559d6f412@ixit.cz>
 <20251208-pixel-3-v6-8-e9e559d6f412@ixit.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251208-pixel-3-v6-8-e9e559d6f412@ixit.cz>
X-Proofpoint-GUID: deRo7MZqaKNS0ROcIYaK5ir6l-018pZO
X-Authority-Analysis: v=2.4 cv=Y7/1cxeN c=1 sm=1 tr=0 ts=6938a5e1 cx=c_pps
 a=P2rfLEam3zuxRRdjJWA2cw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=WFa1dZBpAAAA:8 a=EUspDBNiAAAA:8
 a=vNBBnn9n697nUSg-uQcA:9 a=CjuIK1q_8ugA:10 a=dK5gKXOJidcA:10
 a=ODZdjJIeia2B_SHc_B0f:22 a=cvBusfyB2V15izCimMoJ:22 a=MZguhEFr_PtxzKXayD1K:22
X-Proofpoint-ORIG-GUID: deRo7MZqaKNS0ROcIYaK5ir6l-018pZO
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA5MDE3NyBTYWx0ZWRfX0zM77FEjd6ry
 6K6TVWcmLMG/sxBLnNMZewJQ20XZ61w7WR6aedkbXPJ5C3oGKx4SWLnzRAp9MHnKaDJe0FEcoht
 zzgQnpZizI64nafzW1z66IFtfobauzaPU2ytJKEwWEhK0Bc5yucSdw2jEy3uxIEJ9wmxfE42pKC
 T0a7dwQuuRs286y4DwR8IDHEOYLckCuWYEFJNfdIrceeJVXYZ30nbAOapz+hkxKSn6KLz/eudWT
 CocMgEo8Fsyisb0DDQx7CS8Z3A3h7v4YSUDIf8MgQAah2D8vJEwOSUpbp/QinG0cJcCasIezy4I
 Z03rcK5XarCPG+hPCGgxlOXC0PqNEDgUNluSFdAzbsKupth+LDy2YP17Y+SxgeQ9dmghTGWtULJ
 LZYaf1U0GIUHxkeF2nTTLqhLBCOJYQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-09_05,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 impostorscore=0 lowpriorityscore=0 suspectscore=0 spamscore=0
 phishscore=0 bulkscore=0 priorityscore=1501 adultscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512090177

On Mon, Dec 08, 2025 at 10:42:01AM +0100, David Heidelberg via B4 Relay wrote:
> From: David Heidelberg <david@ixit.cz>
> 
> This adds initial device tree support for the following phones:
> 
>  - Google Pixel 3 (blueline)
>  - Google Pixel 3 XL (crosshatch)
> 
> Both phone boards use the same identifiers and differ only slightly
> in their connected peripherals.
> 
> Supported functionality includes:
>  - Debug UART
>  - UFS
>  - USB-C (peripheral mode)
>  - Framebuffer (both u-boot and Linux)
>  - Display (Pixel 3 only, and the driver needs work)
>  - GPU
>  - Bluetooth
>  - Wi-Fi
> 
> The rmtfs region is allocated using UIO, making it technically "dynamic."
> 
> Its address and size can be read from sysfs:
> 
> $ cat /sys/class/uio/uio0/name
> /sys/class/uio/uio0/maps/map0/addr
> 0x00000000f2701000
> 
> $ cat /sys/class/uio/uio0/maps/map0/size
> 0x0000000000200000
> 
> Like the OnePlus 6, the Pixel 3 requires 1 kB of reserved memory on either
> side of the rmtfs region to work around an XPU bug that would otherwise
> cause erroneous violations when accessing the rmtfs_mem region.
> 
> Co-developed-by: Amit Pundir <amit.pundir@linaro.org>
> Signed-off-by: Amit Pundir <amit.pundir@linaro.org>
> Co-developed-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
> Co-developed-by: Casey Connolly <casey@connolly.tech>
> Signed-off-by: Casey Connolly <casey@connolly.tech>
> Co-developed-by: Joel Selvaraj <foss@joelselvaraj.com>
> Signed-off-by: Joel Selvaraj <foss@joelselvaraj.com>
> Co-developed-by: Sumit Semwal <sumit.semwal@linaro.org>
> Signed-off-by: Sumit Semwal <sumit.semwal@linaro.org>
> Co-developed-by: Vinod Koul <vkoul@kernel.org>
> Signed-off-by: Vinod Koul <vkoul@kernel.org>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>  arch/arm64/boot/dts/qcom/Makefile                  |   2 +
>  .../arm64/boot/dts/qcom/sdm845-google-blueline.dts |  85 ++++
>  arch/arm64/boot/dts/qcom/sdm845-google-common.dtsi | 524 +++++++++++++++++++++
>  .../boot/dts/qcom/sdm845-google-crosshatch.dts     |  33 ++
>  4 files changed, 644 insertions(+)
> 
> +
> +&wifi {
> +	vdd-0.8-cx-mx-supply = <&vreg_l5a_0p8>;
> +	vdd-1.8-xo-supply = <&vreg_l7a_1p8>;
> +	vdd-1.3-rfa-supply = <&vreg_l17a_1p3>;
> +	vdd-3.3-ch0-supply = <&vreg_l25a_3p3>;
> +
> +	qcom,snoc-host-cap-8bit-quirk;
> +
> +	status = "okay";
> +};

Missing calbiration data. It needs to be declared here and submitted to
ath10k ML: https://wireless.docs.kernel.org/en/latest/en/users/drivers/ath10k/boardfiles.html


-- 
With best wishes
Dmitry

