Return-Path: <devicetree+bounces-199024-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 3734BB0F139
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 13:32:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4CFE13A68F9
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 11:31:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 330CF2E0924;
	Wed, 23 Jul 2025 11:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MqqsE0j5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14F6B28B4F8
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 11:31:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753270313; cv=none; b=uLcB07mhdUzUBh6CuouJpo501Qaci8AcvYvMx2nCzdV9Kg7xn5UL6MP+V5t19JXX5raNUHvD1LnPFROgENgfZmh+4eiZG55q/Inp/AOO8i6oNP785ut1M368qJ5pQQM+adKCAQQs60+OWZfMUzhLZY4V97SlSYMY+ZRN7keX9O4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753270313; c=relaxed/simple;
	bh=pV0VD1Ve0EwcnOI6Dsn5yVqFhYxL60jCXm0cCBSm0b0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JJ/HQaWvnKM92LT11WY/BUzrUvGvL6WzeqJkHx6+rt5lW8287eNHEQ1zjqsTimG7tluU0kuK4/zVlotBzf03Y7Heak2hNg9gjstbulw33k8NS3coLaJKJxG7rC1+wOnJKkKO38HsLmuObRofQSWnaTVONO1KGvjrWavVnyYO37o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MqqsE0j5; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56N9FEDt007882
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 11:31:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	tK5Pqy7KQu9d9+qheXVruzD1mIXvjyuacLXlsOVg6YA=; b=MqqsE0j5IWELOehA
	GF5/LC2Y3Ya9EmwnMJIku3INqfBLrqTgaHa0vnfsP3w27DRp/iPY3R/aN0+cuKh5
	wsSXJUV+bkJ6h4H0b93WSG62VBUDl2DCUA2njpfsDfxMPjKEmIQUV66pLl9faq69
	6cZpPMArjo4bGfEP/d2ImpT9RlpwJGJ8d4o862zkkMRQgjgaeyYl3d8Fzg2mqnsH
	33a2U0RKSx0kwsLBC6i77AVH5Tl7xzPgJYeqsEpubAqTTJ8twclq55DdZyLap4A7
	W3xjBH2GGp5M6/ByxlI3c6KE81TtH+zCwqO8jI3hx2L1/o4M6C50J6UXXUOk0eBR
	ubErGQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48047qcy2f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 11:31:49 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-6fe182a48acso16046016d6.1
        for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 04:31:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753270309; x=1753875109;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tK5Pqy7KQu9d9+qheXVruzD1mIXvjyuacLXlsOVg6YA=;
        b=jOKLzOOw524hZqj5Z6bwz87UhqkPlsQwST72qeEr/l+N6ZHFZdHz41eLYjHqF52u7S
         T2QjwFPKH0kG45EPUnJijOMApVyFTuIy5YF+9AD3A+UA4wbyZvE4iMa668Gy0287ex0b
         jzWtxMulKqMb5dDQ7f6R1lfZyD0wFDpSacbCAO7FIS2vnigenh9xPBww3IdC9qNKaOQS
         7dWVc4o+ewEURG5ELY3Dlv1MmpGbenpko69Wxy8bU5VxcTXSJneHDDNYBCSY37w/PzfN
         1sfE+bYVvRviejvijhAZxvQcuAxUoaWEcKRUNN/Gt+aAgsFymNZKnnI1GibSrJVM4yzf
         n3vw==
X-Forwarded-Encrypted: i=1; AJvYcCX7JkwH+APbIuHGO/sGSqLO9K+t7hz2/kXJr7lwuUC3F5LdwP+VwIHftBSDV1J66wNDKHhUVD6zVOdK@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/DPhAwFR77YS53NffGQqdJPWySfubEI8UqtaF606+nBS56rgj
	7v76rV+SrXPuSEliX17tAOurtbPe5NEwOtXu6my9ZY4211EiZF+EtsAPTfRGzFkrryg21jrjpMc
	79bKE2K8AxhlyuLTX14v8j7Fh4QufxSI/cwNL6aW2zW7hTat5busPNN9MhquWNi24Rys/FjLB
X-Gm-Gg: ASbGncsfgpSkiacyuoCfd3hlp8ReRpo+ZV753WMsQKXXydk0RrcSFRKubZpIZUhRH0g
	No+sRKJjz5U7xzXsdfIKCceNgC33qs5UaH/f70hY1iUE+NbW5xAfLwBEGu7MTYTuEMhaAEo2w+a
	fHNGS4bZrpISiHsSbxWHyJJbslswXNxu8L/5W/VnMFKkygN8hVV73GivOflTMRObCyDhw9U79E6
	30X8AopO04WlACxmMSsQ+M3g9nzs87lalUV2JhE07PzjAvfSXQD5n7LWAzvxR62rPF/FI/YiWFi
	sekV28jq4Sgl98C6/rYwpQbBpv/wHyqWKZlO7411AC2Qr2MF+IejBK5ANPBDQugoHWN3E4MKgK+
	ZIiyt1bZZLnpMOvpsG69Z4YP0EEQge/lgXDdn/2tLWrex2ciElGz/
X-Received: by 2002:a05:6214:20a6:b0:702:c3af:2f44 with SMTP id 6a1803df08f44-706eb94119dmr97079696d6.20.1753270308787;
        Wed, 23 Jul 2025 04:31:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGIZMlMLWLJLVR9CzSUMPV/Lcdv53v0D6YQdORkgTfSC5CVTA/SCOyvECPkVGx3vpwvKDNjmQ==
X-Received: by 2002:a05:6214:20a6:b0:702:c3af:2f44 with SMTP id 6a1803df08f44-706eb94119dmr97079086d6.20.1753270308258;
        Wed, 23 Jul 2025 04:31:48 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-330a91d9747sm19241091fa.78.2025.07.23.04.31.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Jul 2025 04:31:47 -0700 (PDT)
Date: Wed, 23 Jul 2025 14:31:45 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: "Yu Zhang(Yuriy)" <yu.zhang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/2] arm64: dts: qcom: qcs615-ride: add WiFi/BT nodes
Message-ID: <fym6hgenzzpct3kbat4iz42o6nyavfkrp6z5jkf6vjfnwo2u55@of7pgzoxbgej>
References: <20250707-615-v4-0-1a2f74d167d7@oss.qualcomm.com>
 <20250707-615-v4-2-1a2f74d167d7@oss.qualcomm.com>
 <smnw6whsw5todddsoveeanohcaesfip27udzkbw5wk5dwlztzz@ic3xemwrbjwg>
 <a63cab56-2d32-4d38-83f9-911561807e9d@oss.qualcomm.com>
 <7117b159-6743-4db3-9ae5-1cf4ae051601@oss.qualcomm.com>
 <469e2e9c-b950-4ecc-bfa9-82aa9178b65d@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <469e2e9c-b950-4ecc-bfa9-82aa9178b65d@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIzMDA5NyBTYWx0ZWRfXyMIjLhErsETK
 9t9SZp3DmNP/e1jH0lzwNhXBvJ4fzS1qq5V94POqdhL98XyUyX/p94D/Y8jvSYEKiwCVFL+8/Et
 IXSu4m5gh1k3a2k+1ps9zcHcXq0NqN0l/T8aOvBCSVUw5CKO+BycB860aEqGQ/brNmL+36yFO0G
 TupLYXzi4LKPDq9v/Hq6IH4DNZoWBldAbWdEWJJ44zNxrMIX6S2ovjT30W1s7ABZ735gCdSpTdJ
 WXQjdbgFQzfyb5dA0TR/NkTHJRadKj5cKJZe5BoGPBVysUih2owNDp6wztC8JPFwbI5LLdc9bvI
 KWWq142jp5qOEtKpYQjXXvD/M6EDbJJDnyYgSsoELNhnKw8tNH8b920nJjAaCUk3zS7dR+BM4N2
 XgajQstYA9nAwxgC9eyPqOtYa1Y1Vb3lDTdMQmLDBmTaa8mdSgKOFk7TwAZ4QvTxAIqI9X6P
X-Proofpoint-ORIG-GUID: U0UWPnDgQrv57n_sL7ljjbX3n-eyInJw
X-Proofpoint-GUID: U0UWPnDgQrv57n_sL7ljjbX3n-eyInJw
X-Authority-Analysis: v=2.4 cv=IrMecK/g c=1 sm=1 tr=0 ts=6880c825 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=yc11P9gDo9Jt-TL_Xg0A:9 a=3ZKOabzyN94A:10
 a=wPNLvfGTeEIA:10 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-23_02,2025-07-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 lowpriorityscore=0 malwarescore=0 adultscore=0 clxscore=1015
 priorityscore=1501 spamscore=0 mlxscore=0 mlxlogscore=999 phishscore=0
 impostorscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507230097

On Wed, Jul 23, 2025 at 10:02:36AM +0800, Yu Zhang(Yuriy) wrote:
> 
> 
> On 7/23/2025 1:36 AM, Dmitry Baryshkov wrote:
> > On 22/07/2025 18:58, Yu Zhang(Yuriy) wrote:
> > > 
> > > 
> > > On 7/19/2025 6:13 PM, Dmitry Baryshkov wrote:
> > > > On Mon, Jul 07, 2025 at 10:51:06AM +0800, Yu Zhang(Yuriy) wrote:
> > > > > Add a node for the PMU module of the WCN6855 present on the qcs615 ride
> > > > > board. Assign its LDO power outputs to the existing WiFi/BT module.
> > > > 
> > > > 
> > > > What is "existing WiFI/BT module"? There is no module in the DT. Not to
> > > > mention that PMU is a part of the WCN6855.
> > > > 
> > > > > 
> > > > > Signed-off-by: Yu Zhang(Yuriy) <yu.zhang@oss.qualcomm.com>
> > > > > ---
> > > > >   arch/arm64/boot/dts/qcom/qcs615-ride.dts | 135
> > > > > +++++++++++++++++++ + +++++++++++
> > > > >   1 file changed, 135 insertions(+)
> > > > > 
> > > > > diff --git a/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> > > > > b/arch/arm64/ boot/dts/qcom/qcs615-ride.dts
> > > > > index 011f8ae077c256f079ce1b07720374a9bf721488..2df8e7e3c1d3b6d6353a6753b8387c7411edd927
> > > > > 100644
> > > > > --- a/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> > > > > +++ b/arch/arm64/boot/dts/qcom/qcs615-ride.dts
> > > > > @@ -18,6 +18,7 @@ aliases {
> > > > >           mmc0 = &sdhc_1;
> > > > >           mmc1 = &sdhc_2;
> > > > >           serial0 = &uart0;
> > > > > +        serial1 = &uart7;
> > > > >       };
> > > > >       chosen {
> > > > > @@ -47,6 +48,85 @@ regulator-usb2-vbus {
> > > > >           enable-active-high;
> > > > >           regulator-always-on;
> > > > >       };
> > > > > +
> > > > > +    vreg_conn_1p8: vreg_conn_1p8 {
> > > > 
> > > > No improvement. Please try again.
> > > > 
> > > you mean should be "vreg_conn_1p8: vreg-conn-1p8",right? I'll update
> > > it,
> > 
> > What is the node name for the previous regulator device? Anything
> > preventing you from following the pattern?
> > 
> Do you mean the prefix 'regulator'?
> I just want to keep 'vreg_conn_1p8' and 'vreg_conn_pa' the same as in
> sa8775p-ride.dtsi, because they're using the same module.

That's a different device. Please use the style of the file that you are
patching.

> 
> > > thanks.>> +        compatible = "regulator-fixed";
> > > > > +        regulator-name = "vreg_conn_1p8";
> > > > > +        startup-delay-us = <4000>;
> > > > > +        enable-active-high;
> > > > > +        gpio = <&pm8150_gpios 1 GPIO_ACTIVE_HIGH>;
> > > > > +    };
> > > > > +
> > > > > +    vreg_conn_pa: vreg_conn_pa {
> > > > > +        compatible = "regulator-fixed";
> > > > > +        regulator-name = "vreg_conn_pa";
> > > > > +        startup-delay-us = <4000>;
> > > > > +        enable-active-high;
> > > > > +        gpio = <&pm8150_gpios 6 GPIO_ACTIVE_HIGH>;
> > > > > +    };
> > > > > +
> > > > 
> > > 
> > 
> > 
> 

-- 
With best wishes
Dmitry

