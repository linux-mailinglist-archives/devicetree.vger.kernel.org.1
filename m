Return-Path: <devicetree+bounces-199737-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 373B5B11CF6
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 12:59:02 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 61A651736AC
	for <lists+devicetree@lfdr.de>; Fri, 25 Jul 2025 10:59:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35A292E54A1;
	Fri, 25 Jul 2025 10:58:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OTFs5W29"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAF8620127B
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 10:58:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753441135; cv=none; b=Rl4GdmCD5ujxgpChkc4ytxTOJMBff6oS+ysH2mIGPZp1Jj+zm4fPI4bEWS10kG5tTatA4vqvCIGqTe4U7WVhHRpSkmMYpJAGwM+YCZ5xT4hfL/UU6lE2ykn8+CFJmA0D+uXOwb8TvXhFhQyCyLdbpXLssY8EJeTFViD0Dn56QbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753441135; c=relaxed/simple;
	bh=JSdqNAliPMTeWFGkFGa7l9KyEsQZmwUCxwW/WKeui2E=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cx32swXqqYjPb4ET8IA3q8hCSVPe/tn8I5efcaWaVrkWyMbjlzUAopKVNhy5P/+gvl9twvDuu+vRXgmGD+7jRUCFM9wMzgcVqwhm3wtP51fzBJmrO1G3hFqeDmEUwxuI7/xCfb+8H598hSdNuQ/D+3pjZiAnmTaZbL14MtiZ24U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OTFs5W29; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56P9HrrN018456
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 10:58:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=fc+K/K09v6Pjm1qZcv9s4rQ5
	4FX/fpzKyJJ8Ta7tUJg=; b=OTFs5W298655IRqNBfEvRrC85pWtP0sXQhL2XMkk
	uOdiFToErD/MaVJnbUdkClnMMMPJSb48o7eO20T932kWcTAShk2b/tL2rrkQzkxn
	ftsNOCGsxKeuUas8YznoMQzHxEzEzFELSmd91xspTj4pfBdYHsi89fCV+9w4fZ1p
	CSZDCa5k0JshLeXI3tasgxfUlUz0pEP5RdEuD3S9DTOYrKLPLQI4/8gfThcj27y/
	Rv0uraMOGZ7JVR8rJF7c+tkOh2bP5fRM5uGEiBlqHT+6EpdrR3gd/e7aShdIClrF
	sjCCYkNgTOq866Bk4Zvu0yLit9vS110zck4WTwbgUzXbNw==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 483w2s1stb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 10:58:51 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7e2c8137662so404979385a.2
        for <devicetree@vger.kernel.org>; Fri, 25 Jul 2025 03:58:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753441131; x=1754045931;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fc+K/K09v6Pjm1qZcv9s4rQ54FX/fpzKyJJ8Ta7tUJg=;
        b=PQagZQ9zdzU0ie9VOfv8Raigs7PoNbC9VTa7S7HKYw7HFbV4ZI1HCidjhhrVxZlqs3
         pa3U6tu1yOTNRgsE3VqrAjkxYckvwIfzBN59SdLhZ4EtmL1T2oTJUNdMzzJxPWCdvGsh
         xHv957P430F/rVFFs/MHerXmN8ipDU3EzHSheOswZb1tcJLZJ7o/kqCs2JTsxUbDgUyI
         Y8Rbn4ulfXWu6JJGweeuuBRZPE+DQfgUhrMp/9c+7iZqMEoUjhp8qVC+jlycoAYlvOVX
         VX4u+Y4TLCFCXaJXCHKbpK58KXPz6buC0R5LLC0AGVqCVxhMIg30rOgnei3avGrahnGx
         ccaw==
X-Forwarded-Encrypted: i=1; AJvYcCVunivKz3NqERY8hFx/xpjwCEkF4zBKbRM8KtEZBCeepbupTCae4ogv6MkawdH8TlSqcGTKTy1CQu4+@vger.kernel.org
X-Gm-Message-State: AOJu0YxlPUjlENTurKWhzwJFKpZxANYpFu7gU3RDYOw1Cdd8vtTe9ySz
	v6Bs0M8jApJEIuRKXXUYCBJa28wIKXVWoDal+dQSK75wDyKNRl3YAs6YjgFS5mzoO4lXL/nRK7j
	1Va13u4tlDt2jVKnQsuwklGgQTwYy9595fRngiuW2o40Lj1ElnyGQc61InoDZpk65
X-Gm-Gg: ASbGncsf6DlonelHd2O+Ix2qsZe45BB2lSjC2/KD6s3FR1LCLMF5R2uMFFR60FI0Akv
	Qm2DMfdfW/j+mN15onjx0QmtYllaF76LRSGDe+WHjE2LY8hSWPUjWQJSMySVd/mfysI8tVlV3Og
	CGpsjY4GmPFPugT0cu/HgOIyGto2ZZCXatdz2zcfHEBoJCPFlR2FqCW1erDEsDKKEARgMuPaLGn
	QAaEPURF+uzo1O4mTBuFnJGKN6wjPRrBqOG3UBfDE++RfTTnEnEOmIDTto4+SsMkOqckHd026+a
	l2Z2iQsbfVFrI586SCnCyyazaxcBV3lk5TYZ/u/yJCVdGcPLbO/NgFHvLco0bL0+D+sv128ajo6
	lrZwkwIN+TMGlOVF8DLVaJM6PyjNeZQjAyOxYQVGwZy1jAb1GnPZJ
X-Received: by 2002:a05:620a:d88:b0:7e3:4fcb:4f2a with SMTP id af79cd13be357-7e63bf51e5dmr124512385a.8.1753441130730;
        Fri, 25 Jul 2025 03:58:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH2ENeOxfOJSO5X9K0+/zLWicSxsuTWZSbLuZMJbscME2E/vfnxmZs2kgSjs4iFhOgNTo3Viw==
X-Received: by 2002:a05:620a:d88:b0:7e3:4fcb:4f2a with SMTP id af79cd13be357-7e63bf51e5dmr124509885a.8.1753441130266;
        Fri, 25 Jul 2025 03:58:50 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b53c715b3sm860234e87.84.2025.07.25.03.58.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Jul 2025 03:58:49 -0700 (PDT)
Date: Fri, 25 Jul 2025 13:58:47 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] arm64: dts: qcom: sc7280: Flatten primary usb
 controller node
Message-ID: <bqfmhif5fksohr7iichslnyocaxcz3o7fp75wuv2576pnkndhw@l2lttn4opps6>
References: <20250725050216.526327-1-krishna.kurapati@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250725050216.526327-1-krishna.kurapati@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: 0yUlTB-1P6WN7beihD11bukBY_wKt3cz
X-Authority-Analysis: v=2.4 cv=IZyHWXqa c=1 sm=1 tr=0 ts=6883636b cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=xNPlZoMqyQeERECHpiUA:9
 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: 0yUlTB-1P6WN7beihD11bukBY_wKt3cz
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI1MDA5MyBTYWx0ZWRfXy3LOrP0L/mXt
 7WAUc8S7GHCfLI1fiG/EWk6wXdDyoNtFFGsaK9dRvUuqlXzmCOZs+1UH3AqZhtd/L86zkk9osSQ
 gXjIYZjDzb+TLjeZGvqcB1Xs2kotWAltmbajk6BYtdNYv5Voh3QhAEeVzipDVuq5DMl0/VpAgIc
 1fhBxSUDW+64xJCSFWK6jgzfc9zGsqvQGr5XXBg7kaGIu0zOJJ/4h2wbXLARN05nAWvVhZv7FQ3
 5WJ5QEckWDvziTbYc5RglHQFxwcdbE3Ul/H3vEFFASIB5j/+toqzzAysNcyVF9qY9Z3fvbzeEKG
 rrTw4SbL2WGC3HVZrTSC05jcbmE+i9wG6eld7zhwkoe1cPrmgcjwhbkRT/DWa6tryk7UJGNejjZ
 9uIrCFRBOfBAClaijBxsSM/FTZ+AtbvSLw9oavFDYgYmPd57+xjzKJXJpGrkFWJZ9jbdA6Ny
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-25_03,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 mlxlogscore=948 mlxscore=0 adultscore=0
 phishscore=0 spamscore=0 lowpriorityscore=0 malwarescore=0 impostorscore=0
 clxscore=1015 priorityscore=1501 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507250093

On Fri, Jul 25, 2025 at 10:32:16AM +0530, Krishna Kurapati wrote:
> Flatten primary usb controller node and update to using latest
> bindings and flattened driver approach.
> 
> Signed-off-by: Krishna Kurapati <krishna.kurapati@oss.qualcomm.com>
> ---
> Link to RFC:
> https://lore.kernel.org/all/20250720072125.1514823-1-krishna.kurapati@oss.qualcomm.com/
> 
> Changes in v2:
> Fixed base address.
> 
>  .../boot/dts/qcom/qcm6490-fairphone-fp5.dts   |  6 +-
>  arch/arm64/boot/dts/qcom/qcm6490-idp.dts      |  7 +--
>  .../boot/dts/qcom/qcm6490-shift-otter.dts     |  6 +-
>  arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts  |  6 +-
>  .../arm64/boot/dts/qcom/sc7280-herobrine.dtsi |  6 +-
>  arch/arm64/boot/dts/qcom/sc7280-idp.dts       |  6 +-
>  arch/arm64/boot/dts/qcom/sc7280-idp.dtsi      |  6 +-
>  arch/arm64/boot/dts/qcom/sc7280.dtsi          | 59 ++++++++-----------
>  .../boot/dts/qcom/sm7325-nothing-spacewar.dts |  6 +-
>  9 files changed, 42 insertions(+), 66 deletions(-)
> 

> diff --git a/arch/arm64/boot/dts/qcom/sc7280.dtsi b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> index 64a2abd30100..6fd502df9c7a 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280.dtsi
> @@ -4253,13 +4253,9 @@ compute-cb@14 {
>  		};
>  
>  		usb_1: usb@a6f8800 {
> -			compatible = "qcom,sc7280-dwc3", "qcom,dwc3";
> -			reg = <0 0x0a6f8800 0 0x400>;
> +			compatible = "qcom,sc7280-dwc3", "qcom,snps-dwc3";
> +			reg = <0 0x0a600000 0 0xfc100>;

This should have triggered a warning. It should be usb@a600000 now.

>  			status = "disabled";
> -			#address-cells = <2>;
> -			#size-cells = <2>;
> -			ranges;
> -			dma-ranges;
>  
>  			clocks = <&gcc GCC_CFG_NOC_USB3_PRIM_AXI_CLK>,
>  				 <&gcc GCC_USB30_PRIM_MASTER_CLK>,

-- 
With best wishes
Dmitry

