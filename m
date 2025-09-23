Return-Path: <devicetree+bounces-220464-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0127CB9684F
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 17:15:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 1D18A7A6A50
	for <lists+devicetree@lfdr.de>; Tue, 23 Sep 2025 15:13:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C0902258CDA;
	Tue, 23 Sep 2025 15:14:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oCGXMV/D"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0697B2417D9
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 15:14:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758640496; cv=none; b=texEAQzUoQ06GHzIpMYuk35YvMpxl6LvZGE9EUmzlMo3OMMKpCdCZ8eH1caRpKSJtqdFBUFL9jgaAaF2cyezPcZcMKouHfLttFXOHDwUbtArWPQ0pptM63qkETFgDKGZgVZ08J1v4mkaWDlhkXwUSVRpXmsgbgg9aLpGNKTdx7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758640496; c=relaxed/simple;
	bh=cqUUhv2/wL8tm/MEQ+ovV57tBKY7kHNqEw2EAVP8oWY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=i0XnPWxZORpHSCXUdtVgsPdkrhY3CWA0h98JwFaU3PRxHplokLaMwTP+vYgDRZ190Nn69DKqJodzoF5s4pNNPDPJm4+z90xaBi4F74h8kxOhvgNH6qx2wIegd7hPhhHNAJ5cLmOISAPTvwDTnAIf1M7D1/nMqJc0zIESUopPucM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oCGXMV/D; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58N8HQ6B024211
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 15:14:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Bcu0cSegjeYGWWYkyIKpmjx0
	8iqAqBOpzkcQPjidusI=; b=oCGXMV/DH1DCZ2tFGFwtQVmB3We0jEUO4DCksFo2
	ZPLDIPKWYoirHo3SiVnmT4obC0s9XMxmAqArn4bc0O6RJXDGz7BWMQLiWW9U5mOg
	cipwRNIwhD4muET2ccoUyHebdmlkr7aC/67GmjjKVQksf/Rq+5v0b0yY9ydtYSOH
	GzqqsUE42mXinvS2EpKoI8AwHy2R9RzgcLW/qf8WRhLfZONxBaP5piCRkIN27roT
	Vk/KBB8Mwm0l0OKMsHKUFJfQAJrDJLEkTBMBDp8TjZstoRIXQQiGVjR8qouBvTXH
	1Pa2CemCC+3tnvT+h433I1HeNrjfhmreXDBDVzyTr1BLPw==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49b3nycvb4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 15:14:52 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-7c547f51b36so45017556d6.3
        for <devicetree@vger.kernel.org>; Tue, 23 Sep 2025 08:14:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758640490; x=1759245290;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Bcu0cSegjeYGWWYkyIKpmjx08iqAqBOpzkcQPjidusI=;
        b=YvxNuuZ8k3sr2zQyJxAYhCXoyybCjSWWdnx7pVx4PALXXu5WOJ2Em+6K2Tt04u3Kci
         +FAquP+vtvJDh95Hj5PVPDuzCyFIRfHYhslKDVrDFAXzkXKoeoq9TDDKSIInIh2N4JGe
         Bm1Fo5vcGsXV41C5MpjMVLkVGlKYqCox+VvGC7FdO7qnXvTBDLUh9cCD+5mn/TRw/kCn
         jZ1PuzKpauCRTjatIQ8gXHTUhpl96jxE1vfPI6Br/T6dRR5gu97WFVGpOh7/Hv/rcDIm
         0Ezrx7ZK/xJ3J/tPLFtuj1N8pObewjrAP0FPUiomTOunrER7VDVgJtnJ7t6F2EO6bNZ3
         5rqg==
X-Forwarded-Encrypted: i=1; AJvYcCWHzjfNvMNqd9UXrq00XDg+tBcQkxfSlNFcuDXQk/Lqmr0sCXOWkwOuk+HeOElVwlGJQ7IkRFuWWEFq@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/m1SljYToFtjScKrEDA6/pCzsJaKgtgLX8XhL2aqdHnEBdDDO
	iBy0x2d5o/CYAZu2qV/nj1R6998EQ+kVbLNS0NZ/D6fLDXbXIMMhfj+onG+yINYrq1qAlQ9R07P
	uWsUHxzg6CnSEcsfGi/c1QMmcjVC+UKGMUcNHgVmfaKNguhCJ5/gnMzEyoH9QreR1
X-Gm-Gg: ASbGncuGiv7sV2XVf8Ddcgjo5cPfROn4vl0Htv35AxxMkey5KPV1PhSzWNjoa32KwTY
	V82bqmXLqdHfkr+4ps8+a8OtIhwWwxLWcT2FMWmUA2AURmRTsoEYNRUT2w+hCmBSlIWPPXhl/Jh
	4v0rLmzv2+YBdjfmCCvgpuwNGGhsFpHrkz4heQQWW+YlMJRSJ9Rvlb0XlNaVE3gPNYfFjKaCtB9
	cDFMWMn7g+freE+I0fKROgbtEUKwH69XgU46YA6zIxeMMQqcbPaGjtARuH1y+8kwX5FOBGpHOh7
	oTRxuxLxR2bmeXV/1M0GzEIjybN5r648J53IsaAORmj0yH0D3NZgVSJUM4crB4tKBF+5Cofk8IJ
	HcitHgwGZ3/N5gAH0tbYoGHLg9I8XgfE703povLWymceENdXP75mR
X-Received: by 2002:a05:6214:495:b0:78e:c8a6:e891 with SMTP id 6a1803df08f44-7e70372875emr27552056d6.24.1758640490290;
        Tue, 23 Sep 2025 08:14:50 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGtPKm9FBKjU71bzOcabqJzjkJFUNtMGIjoAr5LjR7CttWL9p5iBVAiTOs2U1UGVvuJBs8rSw==
X-Received: by 2002:a05:6214:495:b0:78e:c8a6:e891 with SMTP id 6a1803df08f44-7e70372875emr27551656d6.24.1758640489666;
        Tue, 23 Sep 2025 08:14:49 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-578a5f45364sm4282644e87.15.2025.09.23.08.14.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Sep 2025 08:14:46 -0700 (PDT)
Date: Tue, 23 Sep 2025 18:14:45 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 2/3] arm64: dts: qcom: rename x1e80100 to hamoa
Message-ID: <f5kgh4hivkrxcfkinberpdxdnyybw552zqup66cmobtgqag477@qldaejueyyr3>
References: <20250923-rename-dts-v1-0-21888b68c781@oss.qualcomm.com>
 <20250923-rename-dts-v1-2-21888b68c781@oss.qualcomm.com>
 <aNKAjIXT3ll3L0qT@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aNKAjIXT3ll3L0qT@linaro.org>
X-Authority-Analysis: v=2.4 cv=EuPSrTcA c=1 sm=1 tr=0 ts=68d2b96d cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=qHWDp1yotbHPGaiNsJcA:9 a=CjuIK1q_8ugA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-GUID: UP3uoV4zXZ0iHomZYRiUPto_Na2XQ9TB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDA5MCBTYWx0ZWRfX+trAaxHAoo2S
 bEqbIv2yuuwLqC1GLQGPKgbx36oT2y6sydfxk2SU6LiyO3C8fBnKTS81HQnh2UAK5DYt5ghnhN6
 YewiZfcc/1DVUUhukZwMqgmWGf/InY3717NI+km+0KJxtBP6IKpwVr20tFltq1tFrFOJg9dBKjb
 XvZSHpdkmh4C7zmaFOTTNCJ4BcFIcPdd1FK68DImnED1tmBds9alO8EI7AYWM4bBy0GRFMkjN7H
 6fEVtaMSAvDje4Mn7LqL/cXjudMxo9i9e4rozBUuuCjHiyyECqivWP0vS9VlTxpa3Pu2gZYqvk3
 Lq4gsWNl1OcL3Ejkn62JSGyRZshFKZ2dYznj15S3Iw7PpmH/nXosLMplG+r4fjE0bGnztebdsFj
 dAWrylQ1
X-Proofpoint-ORIG-GUID: UP3uoV4zXZ0iHomZYRiUPto_Na2XQ9TB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-23_03,2025-09-22_05,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 malwarescore=0 spamscore=0 adultscore=0
 clxscore=1015 priorityscore=1501 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220090

On Tue, Sep 23, 2025 at 01:12:12PM +0200, Stephan Gerhold wrote:
> On Tue, Sep 23, 2025 at 02:01:55PM +0300, Dmitry Baryshkov wrote:
> > The X1E80100 and several other similar names (X1E78100, X1E001DE) all
> > belong to the platform now known as 'hamoa'. Follow the example of
> > 'lemans' and rename the x1e80100.dtsi to hamoa.dtsi and
> > x1e80100-pmics.dtsi to hamoa-pmics.dtsi.
> > 
> > Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
> > ---
> >  arch/arm64/boot/dts/qcom/hamoa-iot-som.dtsi                        | 4 ++--
> >  arch/arm64/boot/dts/qcom/{x1e80100-pmics.dtsi => hamoa-pmics.dtsi} | 0
> >  arch/arm64/boot/dts/qcom/{x1e80100.dtsi => hamoa.dtsi}             | 0
> >  arch/arm64/boot/dts/qcom/x1-asus-zenbook-a14.dtsi                  | 2 +-
> >  arch/arm64/boot/dts/qcom/x1-crd.dtsi                               | 2 +-
> >  arch/arm64/boot/dts/qcom/x1-dell-thena.dtsi                        | 2 +-
> >  arch/arm64/boot/dts/qcom/x1e001de-devkit.dts                       | 4 ++--
> >  arch/arm64/boot/dts/qcom/x1e78100-lenovo-thinkpad-t14s.dtsi        | 4 ++--
> >  arch/arm64/boot/dts/qcom/x1e80100-asus-vivobook-s15.dts            | 4 ++--
> >  arch/arm64/boot/dts/qcom/x1e80100-asus-zenbook-a14.dts             | 2 +-
> >  arch/arm64/boot/dts/qcom/x1e80100-crd.dts                          | 2 +-
> >  arch/arm64/boot/dts/qcom/x1e80100-dell-inspiron-14-plus-7441.dts   | 2 +-
> >  arch/arm64/boot/dts/qcom/x1e80100-dell-latitude-7455.dts           | 2 +-
> >  arch/arm64/boot/dts/qcom/x1e80100-dell-xps13-9345.dts              | 4 ++--
> >  arch/arm64/boot/dts/qcom/x1e80100-hp-omnibook-x14.dts              | 4 ++--
> >  arch/arm64/boot/dts/qcom/x1e80100-lenovo-yoga-slim7x.dts           | 4 ++--
> >  arch/arm64/boot/dts/qcom/x1e80100-microsoft-romulus.dtsi           | 4 ++--
> >  arch/arm64/boot/dts/qcom/x1e80100-qcp.dts                          | 4 ++--
> >  arch/arm64/boot/dts/qcom/x1p42100-hp-omnibook-x14.dts              | 2 +-
> >  arch/arm64/boot/dts/qcom/x1p42100-lenovo-thinkbook-16.dts          | 2 +-
> >  arch/arm64/boot/dts/qcom/x1p42100.dtsi                             | 4 ++--
> >  21 files changed, 29 insertions(+), 29 deletions(-)
> > 
> > [...]
> > diff --git a/arch/arm64/boot/dts/qcom/x1p42100.dtsi b/arch/arm64/boot/dts/qcom/x1p42100.dtsi
> > index 10d26958d3c66a5a4faf2ca6065e7b661f967b4e..2cecd2dd0de8c39f0702d6983bead2bc2adccf9b 100644
> > --- a/arch/arm64/boot/dts/qcom/x1p42100.dtsi
> > +++ b/arch/arm64/boot/dts/qcom/x1p42100.dtsi
> > @@ -3,8 +3,8 @@
> >   * Copyright (c) 2025 Qualcomm Innovation Center, Inc. All rights reserved.
> >   */
> >  
> > -/* X1P42100 is heavily based on X1E80100, with some meaningful differences */
> > -#include "x1e80100.dtsi"
> > +/* X1P42100 is heavily based on hamoa, with some meaningful differences */
> > +#include "hamoa.dtsi"
> >  
> 
> If you're renaming X1E, please also rename X1P42100 ("X1(P) with 8
> cores"(?)) for consistency. That one also covers multiple SoCs.

I haven't checked if we have clearence for that name.

-- 
With best wishes
Dmitry

