Return-Path: <devicetree+bounces-159699-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F0FAA6BCCE
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 15:19:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2BDF1480AD1
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 14:18:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 32D941D63F2;
	Fri, 21 Mar 2025 14:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mbWFbcVs"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C65A1BD014
	for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 14:17:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742566654; cv=none; b=iOj6VXN4twz2t/NnhR0s8mjq1m4wTPNKQWM2/CVjr2yHIdaywXYjeblHSYkMdD2Yiv13jFtsum0oie9GhDdEe/jAQyo0nB0SVpBte5s1Fp8GsdiIoBUnecVg38Ij/CeaURPFeYJOuEx/EXHXhjCj5IjfiTIsKZ5waS9ZOcnxXJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742566654; c=relaxed/simple;
	bh=GCY3r8rAAbKxWBoKNPFtSuyFe2XkAq3Gsfr1HfzAxdE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nli3OM2ux8w05LUZr0oodMK0KJC4WakDyZsIS4RzrVE7oAUK5bYg1OJvopjn7uHxxcSmp4oAI4Q10KUyAbRjYyK6MagCs+XXGbFshDv3SV7PeA8imSU8Zjg/T52wKn0RGklD9JWGoh854v0Xphyto6LxOEI4I089a+nvi8uGing=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mbWFbcVs; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52LATCCB011441
	for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 14:17:30 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=O8rDG6mc90cpVD8APsXbzuEd
	d44KuoOwLvpTV3Smtis=; b=mbWFbcVsxJyNDBSxrw4EZss8r0tIgahU/BASCYmS
	XN7WM4ujs2W1Ev2+dp/h2z8q5FwVs5p51c2TZf2tUp3y+yFtw2BZuCC4Ub97itct
	p5IZIsAlWbCYLlV0s0N4dIcEjGoca1zWVCrrpCoiYaUFSagwmCB9ZyNWSCH4R03t
	x0rw78T00jCOW4UQtDHjy6yQHb46rA2mQGXyiRA4sNuut1BckZV9VQIt4iLJeCIN
	oWz/OHDhp85banjVwEcH5xiYsmffG/vphQqCvqGcmTxT6N0MqwYDvSk7XckD2gGb
	UXUQyAwBRCkU4gUz8f4JlFZ7tlOB1R+BV42QufwL+UhUAA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45g15y6q1e-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 14:17:29 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c54e8ad9b3so478606785a.1
        for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 07:17:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742566649; x=1743171449;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=O8rDG6mc90cpVD8APsXbzuEdd44KuoOwLvpTV3Smtis=;
        b=fcTDZgLrm6dyk2ie2BmtS0/DXbDGs2usVLU+GGp8EgkWeSttwUgYNUA0VlRXCULh82
         YiaE7D/62FD4NoAIT/LIUhxoFVqUFpTCxp3eKM/0DRk3mZ2sJysi2Gd3UHxWInOep8tD
         WAAfZJki6PmyJ5k5gfaF2U+HayXzNLhgwXZwv4hr+2HBt5lJ0JTHqg7xSNXzu+bwy+in
         ruslsQx+AqDHx0Wng9rl5u0CZIveJZaTYrPLb7SMQGJ582YuHsDXZlrlF9sSLAdmswHV
         PZ8nLE1dgDRHeCrqdAbAz32CE/RCLxKzt8fSvVtYfAfYVXj5hUBteJ7fXQNJzIOytxJM
         vr6A==
X-Forwarded-Encrypted: i=1; AJvYcCVxQeGjdDrB+5EysQxg9VfQdWE+oG1q9L7JkEscmnCl6UQI/rIFLzBPiPQ2klhf6mfDzuFNjuBhmzet@vger.kernel.org
X-Gm-Message-State: AOJu0YzyjJwWiB4r5Diwxq75sr+x0u5UcJZiyKXggPRHRtlKvf01QjgC
	OTUylIWMlc+zXYQiT6NZJb884KuezuXf8rncqzZjlxHdT8E+ymAwSeBrYQTuXiNI7yL2ihSkp3j
	xp5gSM0fIOOT0Vbe92A43g7v09K+/Rw/9Ih4YRvxY1T4iJJDtJRb/A09a3ZH4
X-Gm-Gg: ASbGncu+XWr+LBUiccgjPmn2VIPYOYcQvZ6tLJYEc+XE+es7CXmSnqmoJkBBkMUp1Xu
	aqrq3gbB0//wKtIqMY9SIwv1kYlldOYoGd92ZAsaLTUn6VjAgDfhTLOL3zJk6cgWqviPuDpuu9Y
	BY2bqVVka1PE+e1luMNAf1gsv7F+k94s0ZSwTivnflmJkDgMHZY1Nx9sIohG6mTjt89kDAjIlys
	TQ2U5TDatSG/RXGv0kceq1+mAxP6SPZTnV1ouxY2BR958NBI5vwURFvIjeddHReUPmbgxw0TZAX
	ZXYTfn1kX520Il7u1OMXMCaTwjSJlwXrKUP35TpYIguli800AmJlwy3mKjq+DFhqrThlN16L0cz
	5PDI=
X-Received: by 2002:a05:620a:3948:b0:7c5:6b46:e1f6 with SMTP id af79cd13be357-7c5b04e1a47mr1057150385a.1.1742566648728;
        Fri, 21 Mar 2025 07:17:28 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFvRRIcP4NEyB+cyjpZHS6ssbbMaBbZ4WSFsTnEbRxypn2SHDAJVW5qIbAY4WpbAbHbZm7Rbw==
X-Received: by 2002:a05:620a:3948:b0:7c5:6b46:e1f6 with SMTP id af79cd13be357-7c5b04e1a47mr1057143885a.1.1742566648233;
        Fri, 21 Mar 2025 07:17:28 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ad6468766sm200353e87.35.2025.03.21.07.17.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Mar 2025 07:17:26 -0700 (PDT)
Date: Fri, 21 Mar 2025 16:17:23 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Abel Vesa <abel.vesa@linaro.org>, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH v3 04/10] phy: phy-snps-eusb2: refactor constructs names
Message-ID: <ftscdayi4uegv4bfzckytfrg44vi6f5wlvlhjqsh5nmgumrjx4@ur6rgxj5ixsj>
References: <20250321135854.1431375-1-ivo.ivanov.ivanov1@gmail.com>
 <20250321135854.1431375-5-ivo.ivanov.ivanov1@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250321135854.1431375-5-ivo.ivanov.ivanov1@gmail.com>
X-Proofpoint-GUID: DDkUkDus2lg4gDrxweduoT9n9cCEo2Nl
X-Proofpoint-ORIG-GUID: DDkUkDus2lg4gDrxweduoT9n9cCEo2Nl
X-Authority-Analysis: v=2.4 cv=VaD3PEp9 c=1 sm=1 tr=0 ts=67dd74f9 cx=c_pps a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=bmNeyW_Q0om-5_paTGoA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-21_05,2025-03-20_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 clxscore=1015 impostorscore=0
 bulkscore=0 lowpriorityscore=0 adultscore=0 mlxlogscore=862 phishscore=0
 spamscore=0 priorityscore=1501 suspectscore=0 mlxscore=0 malwarescore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503210104

On Fri, Mar 21, 2025 at 03:58:48PM +0200, Ivaylo Ivanov wrote:
> As the driver now resides outside the phy subdirectory under a different
> name, refactor all definitions, structures and functions to explicitly
> specify what code is Qualcomm-specific and what is not.
> 
> Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
> ---
>  drivers/phy/phy-snps-eusb2.c | 256 +++++++++++++++++------------------
>  1 file changed, 128 insertions(+), 128 deletions(-)
> 


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


>  
> -module_platform_driver(qcom_snps_eusb2_hsphy_driver);
> -MODULE_DESCRIPTION("Qualcomm SNPS eUSB2 HS PHY driver");
> +module_platform_driver(snps_eusb2_hsphy_driver);
> +MODULE_DESCRIPTION("SNPS eUSB2 HS PHY driver");

Nit: Synopsys

>  MODULE_LICENSE("GPL");
> -- 
> 2.43.0
> 

-- 
With best wishes
Dmitry

