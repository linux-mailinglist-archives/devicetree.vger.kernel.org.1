Return-Path: <devicetree+bounces-222052-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id EC2E3BA5563
	for <lists+devicetree@lfdr.de>; Sat, 27 Sep 2025 00:32:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C69997AB204
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 22:31:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3EFA5252900;
	Fri, 26 Sep 2025 22:32:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NIIdeMse"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5BAC4C9D
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 22:32:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758925964; cv=none; b=KnqQgiqvZ/uzvfp4Ec5RIHbhTks2UrJtYqHYDTpCgXzaP5DlbNwiosLb3FSXqTSznoGo8gE74ar4XNJC5+7ZCIap5zjJ2677TlXg9+9U2MtiLPp5BQMm4HJ4W431Vj1jFybtyQAnqxsYOUK8IT9QSLrKFLZtMlY6b/FLG7omhhQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758925964; c=relaxed/simple;
	bh=znFcf1RBV0F44gQwo5us/gWI6yjbNviXchEBoQK6rSw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nbIjsrYC7wANrqFexmXONZLOtsvKJ7ru3dwj/u2UDu3Yw4MFihtf3eDWsoOkoNFC7sCk5klzDke1RbmDV0SUzUzEwtt7w9VBanIIY5ugpVD7zF8OG8TyUVJs14xOcavgWMyBm867/GXxpx8ncK6D4WVx+Z+Boc+n1h+oI/+p5bI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NIIdeMse; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58QEX3s6011338
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 22:32:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=2SVj+rcrTxYvSoZ0kq/i2JFM
	zLdOy0X+vezT0Ex6p1o=; b=NIIdeMse6Y3bSYMx9gvq5jlmkWzGJ04T9+n4a78b
	MNxEMKfIr110a9g9unBtvcBxZ+gv89wrXtbKus4OLaGllYRX3glsv/pwD7l/A9wJ
	CkEIQFtBigf7W8WqCjGdbyNMqFAsyVu8AfCzKJVf+lgAODVIT0l+mXOdO/l5xBM3
	aOpjumfKq+OUcsA2gyxK/WePIeW6SCMA+uGFAy20hOA3koo+gG0tquk2tECLHRef
	RxBzQahiUGDa0gdSjr5E93PgDbhi4/9NFiu8q2QxpiNGn5O77MU2ddSL2RUUro/4
	mDGRGxIzFhe3G3MrLtaF1FxJX3uP+JL8Dbf7Hm5Ofy2XLg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db32499f-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 22:32:42 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4d413127749so54748961cf.2
        for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 15:32:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758925961; x=1759530761;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2SVj+rcrTxYvSoZ0kq/i2JFMzLdOy0X+vezT0Ex6p1o=;
        b=OFjPlVLnkAcCS8x4CotqCIGqaUf0025bgq36AJ8kYn7qKNhNhbbQeSoXIQ113oYsLg
         Z5cZQAUU/X7LqGYTz/87inShTBUkesPJeuKHp0Gpn9XIFJ0YWIP0XahKL1IcsaM8ibEi
         tukxpkS03USGiyKgSzb4J6Zb2aiVWLr8GzELApAjLQSncOT4Pt7/Vh8wUjZL8OkZ2Xf4
         9l1fDcT6sIiToFY2ykwu5TVXvPKwVtUG56kvYHq3o8Fy6W30dAWwDNaAJC1oI8uIFW2k
         DqGGiMBo4HMROMg0azFfj0nmBWwsMJw5T2OzgDwHdQvPO2aFsD2HSn1tXCZM6UgVlvKZ
         5Qcg==
X-Forwarded-Encrypted: i=1; AJvYcCWn0IKulf9UkocEK/tdj4cyYsxbXrsfCdLSMFteOfqGlTgjawfg7FAXXSJdXbL+nr+QTWg4BTl5c9CF@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1dVeOSoC2bKOPavv4ODB/5xnHZsYd9LVUGiZ2g4FuHRu4dTKm
	G5kzTrl0/7QKXen3tvcbJWBfO916jVE3NL88FkasEKXTTuMrMeb9hLFT17Le4Q2roaCi9iwgsHY
	EV6zK0r5SssjunvX78HWTyRxryApJZilyFCFgmORezzabIe05nmhjI2GE3sxqxQrk
X-Gm-Gg: ASbGncvAXs19Ybokt3mEvs7b61d109LLEnwhNy3neytlCR7cOnwauhVdhbvIJGiaXjv
	14AoLhEJ4OlcUXXZsH7qFjdkBH2d4yNLgeHEnM0Z9Yu+CCQHX6olOi1ZqJvhG4RQjMfeZHT0M1J
	YRYkwZMu/nrHjCfoA9kY5XtnAJMZM0i/ufHfeJq0FxviJVy5GOSsRIPYneodIBYmm715aOsnjw3
	CdtWXTx+yR1smqx35KHDHrSYkyn5o7t4nEkIHJvdbNjZUsBdnN3/juqhpNQ16LmaQk123VVMfww
	NM8BzrptiXBZ0y5UGUXteb4mrdWy+ZhOpnQmtdnB7Rh9cxU9hJY94iLgKeBmbLZMoMnTwfp02bE
	dIU5ohHIfDTq4uPnpHNrZfx08xf02M7BPFo6yrh24cyjyb28dnmrs
X-Received: by 2002:ac8:7d8e:0:b0:4cf:b74b:e1af with SMTP id d75a77b69052e-4da4c1aeacfmr120856911cf.63.1758925960416;
        Fri, 26 Sep 2025 15:32:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFSKsflht3AH+ZuTBu3r3cqv4Tg39yfPXMIU2pgxdiUv01mDKS9PShSozAj2uV/V6eYBFeM8w==
X-Received: by 2002:ac8:7d8e:0:b0:4cf:b74b:e1af with SMTP id d75a77b69052e-4da4c1aeacfmr120856541cf.63.1758925959860;
        Fri, 26 Sep 2025 15:32:39 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58313430ccbsm2145795e87.17.2025.09.26.15.32.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 26 Sep 2025 15:32:37 -0700 (PDT)
Date: Sat, 27 Sep 2025 01:32:34 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Aleksandrs Vinarskis <alex@vinarskis.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Jens Glathe <jens.glathe@oldschoolsolutions.biz>
Subject: Re: [PATCH v2 2/3] arm64: dts: qcom: Rework X1-based Asus Zenbook
 A14's displays
Message-ID: <nemvj6vyk2mj255l5fi372677znsptawkkhx4zlcsty5enpy6a@fhtpf2c6v4v4>
References: <20250926-zenbook-improvements-v2-0-c0b512ab6b57@vinarskis.com>
 <20250926-zenbook-improvements-v2-2-c0b512ab6b57@vinarskis.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250926-zenbook-improvements-v2-2-c0b512ab6b57@vinarskis.com>
X-Authority-Analysis: v=2.4 cv=ao6/yCZV c=1 sm=1 tr=0 ts=68d7148a cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=I76Qk8w-AAAA:8 a=gxl3bz0cAAAA:8 a=APu70hjm6WG7nynXYqgA:9
 a=CjuIK1q_8ugA:10 a=dawVfQjAaf238kedN5IG:22 a=vUPM0Wvl0xcrLs4nqPIT:22
 a=kiRiLd-pWN9FGgpmzFdl:22 a=poXaRoVlC6wW9_mwW8W4:22 a=Z5ABNNGmrOfJ6cZ5bIyy:22
 a=UDnyf2zBuKT2w-IlGP_r:22
X-Proofpoint-ORIG-GUID: PBGcmwdpwSF_1xoaOIpvcE4EHU_ci85S
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MiBTYWx0ZWRfX6IWjyZMxhXBR
 +Hf1CWjV395P81UeR8g3wBxfuKym2D1BJd+lhnH+LH6qpu3iRpZdN1QwtmGfWq/VXqOKQsd/N1U
 SsDBtqmyKEsqgxt0bZHcXBqblJiozCoC4Resn2qpxNqffU635qsvcw4NrLH073zMgt4/H95grIT
 euOkee6ihqzBrEYW4nnY4g33w4a2l0h1NJBfOb9Xpx/tsAaA0piqTRrzkgBo44q2XEcOOFuMFS/
 vg0/wz7mmGWNJSHIglvzYntYay4s7HhsQe4G9e3BmueuHVghUXifycXP4pL7CjLFBVHau9Vz6ut
 wPdsfTs11Kyzrdi6EwsZo/ezMPtoDyxo+QrZMetdY1XdhXV6yjN3htpSGKevpWoGpwnqiULqnqi
 JKQJIqCCV8cTfMethlPj5cVWOd1iLg==
X-Proofpoint-GUID: PBGcmwdpwSF_1xoaOIpvcE4EHU_ci85S
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-26_08,2025-09-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 impostorscore=0 priorityscore=1501 suspectscore=0 phishscore=0
 adultscore=0 spamscore=0 clxscore=1015 lowpriorityscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250172

On Fri, Sep 26, 2025 at 09:08:53AM +0200, Aleksandrs Vinarskis wrote:
> The laptop comes in two variants:
> 
> * UX3407RA, higher end, FHD+ OLED or WOXGA+ OLED panels
> * UX3407QA, lower end, FHD+ OLED or FHD+ LCD panels
> 
> Even though all three panels work with "edp-panel", unfortunately the
> brightness adjustmenet of LCD panel is PWM based, requiring a dedicated
> device-tree. Convert "x1p42100-asus-zenbook-a14.dts" into ".dtsi" to
> allow for this split, introduce new LCD variant. Leave current variant
> without postfix and with the unchanged model name, as some distros
> (eg. Ubuntu) rely on this for automatic device-tree detection during
> kernel installation/upgrade.
> 
> As dedicated device-tree is required, update compatibles of OLED
> variants to correct ones. Keep "edp-panel" as fallback, since it is
> enough to make the panels work.
> 
> While at it moving .dts, .dtsi around, drop 'model' from the top level
> x1-asus-zenbook-a14.dtsi as well.
> 
> Signed-off-by: Aleksandrs Vinarskis <alex@vinarskis.com>
> Co-developed-by: Jens Glathe <jens.glathe@oldschoolsolutions.biz>
> Signed-off-by: Jens Glathe <jens.glathe@oldschoolsolutions.biz>

I'm sorry, but I think the order of tags is incorrect. You are sending
this patch, so your SoB should be the last one.

The patch LGTM.

> ---
>  arch/arm64/boot/dts/qcom/Makefile                  |   2 +
>  arch/arm64/boot/dts/qcom/x1-asus-zenbook-a14.dtsi  |   7 +-
>  .../boot/dts/qcom/x1e80100-asus-zenbook-a14.dts    |   8 ++
>  .../dts/qcom/x1p42100-asus-zenbook-a14-lcd.dts     |  62 +++++++++
>  .../boot/dts/qcom/x1p42100-asus-zenbook-a14.dts    | 133 ++------------------
>  .../boot/dts/qcom/x1p42100-asus-zenbook-a14.dtsi   | 138 +++++++++++++++++++++
>  6 files changed, 218 insertions(+), 132 deletions(-)
> 

-- 
With best wishes
Dmitry

