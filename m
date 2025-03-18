Return-Path: <devicetree+bounces-158747-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 79AF7A67EAE
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 22:33:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9912519C6912
	for <lists+devicetree@lfdr.de>; Tue, 18 Mar 2025 21:33:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 412C21F9A8B;
	Tue, 18 Mar 2025 21:33:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WkxBtbch"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B382F17A304
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 21:33:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742333594; cv=none; b=qCbs4aYZiVam/RpTSvcEwebSUCn4r33aJxV1kgydDUSeV9gPVMuB5Dsd2lL/C6Pr/dU29XWCtN6r8o2hIwCtmoZMclPncjVjYBpcq9iH4aWYZL7Qf2sBarVwTD8q5DEzJFX2f9O7J8J1CncojZDBA6m3i6NbE9LOungJpyp6utY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742333594; c=relaxed/simple;
	bh=XxxH7Wl2RNgHRITz5y5KV2ZjNKcScURwrYps/17Kl4k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ngw6s6BMsQhdY6ZBjAkm+YoR2FKKGzwOJfWULUR1TaYJyXJKND4dC0hOoohv2Q8WzMCTxaC4oUM9NlMt7PFeo4y7TDm3wRWWoazA2J8qR5teNDqyOYQDlWYJwd9wG4vG0zHbIbHZTYFYZvVDmPDzp+UEKPOX+0msdZ8x71RsAWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WkxBtbch; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52IIBEFr003431
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 21:33:11 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=HWM+O/ABS+bwChQR1xXmZHPj
	aip7azCOcMWJO4lqEt8=; b=WkxBtbchZlgJpxW1pOGDk7HaMZUEBujS9UXXMFF4
	w/EBDc8Ix4dwozNE/Aa+6+paFxAvv7nvJH7qH9UN39040YwmNCp/Kl2i/CeakAhZ
	5u+m8eyP7fiyJt7OJGNciHzSNpRTzHpeYOLfO7PoG/uXRsEbiDKY2FiJ2xu+8zUd
	ykxG8hEWxQYkQ7AmjbOJw9oOD5ZtTxDvzKpfskUqCmyLui9L/cEajd/tkXCbwGDc
	GXvKQeUuf26AFfsXGl754HGQW+JYK2gyG9k0SiTWzVbzQ6hDWbdJ2o7Njgk1h9F+
	AgBsl4JzAWIw3Dv1m+kz8MYaosCvzMQYr5V8MuvEh2hxhg==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45fdvxgdgx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 21:33:11 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7c0c1025a6cso1171325785a.0
        for <devicetree@vger.kernel.org>; Tue, 18 Mar 2025 14:33:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742333591; x=1742938391;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HWM+O/ABS+bwChQR1xXmZHPjaip7azCOcMWJO4lqEt8=;
        b=rSbS9Zu5n49rrcjKSfzfC6NNEqYcFBrEsuOMRj24FL3VVY9ckAoLYhpeBY+191bN1F
         NS03zgIG+M9LHkQSrtjUgRMihOaXWHN0wYgWS0Ic+s3q4XtW15TdkaPtbpjWPWsTIoo9
         BeLXLGwzjwH3FvhXROpvld0y06BEgajADC2MxHfQF+ezhTtDXuwGF+8di0irBFm3jqir
         x2YE4L4o9ttk9Uk+YnrwEu56DUAbFg4R8oyl9wMwVuV9xQiuXDOcZKlLCZUTKbjVgTOO
         EblLYZ/vt4xx1k7RP0Do0/rWxppW+7+6vO8whxVaZ0/c5TYG/gVKcvmLZ+NLyY/9RuKh
         720A==
X-Forwarded-Encrypted: i=1; AJvYcCVG1kEUIqe2hL8E7PSvN+L5jY4fVzqb79etE5S06xS8NXqJOsJI6+oURn/Z/xr/VhztCP/249n289vw@vger.kernel.org
X-Gm-Message-State: AOJu0YyQ6Fi73rvTfffHtypHZTIxFSO2Ps3xBNVNH9BY4DJByaklbMqn
	sQYLpF6bAfrLOJiTtRaaJ4oCMwMhnKQrHxIEEuAyFzktVQEcj6NNg4BglwMU5Wp6Qd9YwerMnJ+
	xbch+Y9beG1Gtfj1yxfF399P37zFBn8G3TqfcoFQcx8kLeyVufKAQQ1EtEiqi
X-Gm-Gg: ASbGncsl4Vy7aUNvm/xDcBC9DjBUtHsltAI2scvWDosUTxlrClCIRT4ieM69SOH6GU+
	BB+lPqGsw9K7eVdric2nE9so+NPyp4PaEMv2Lcl86Qcn7dbJI2mLT4rQpcOvoL3LsuUdUdKwxE4
	zjeuhUK3R3h744Q4mvUE//O4uDmSMcVTEZ49K+rzidUvepErMX5n4VbYw+gLfT03kfj7WCcW3VW
	WsLIDjWf+8cpA8MKdr6Rd1dT+zD9kJdVas8P3/NJbEDhpXhWRJlPd/8qowDXY8vatDe2Tv3dOXl
	lCaGxIMRhuxo09dPY6PlQK79YTqJKLkmBNuF7xbfueYWvifLkfK0YqjFLIb3/8vKNwFn3Dc4WjV
	vTx0=
X-Received: by 2002:a05:620a:4550:b0:7c3:cde7:a685 with SMTP id af79cd13be357-7c5a8396ad0mr33661685a.13.1742333591050;
        Tue, 18 Mar 2025 14:33:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFRZBo0QGmn61PGE7V4h9Fp9fhf5n14AdOu0ZUsVrghTVbJLnoF8kgujmhYrXa+WQyRmL2iAQ==
X-Received: by 2002:a05:620a:4550:b0:7c3:cde7:a685 with SMTP id af79cd13be357-7c5a8396ad0mr33659285a.13.1742333590782;
        Tue, 18 Mar 2025 14:33:10 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-549ba864f9bsm1791651e87.153.2025.03.18.14.33.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Mar 2025 14:33:08 -0700 (PDT)
Date: Tue, 18 Mar 2025 23:33:07 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org,
        Marc Gonzalez <mgonzalez@freebox.fr>,
        Dmitry Baryshkov <lumag@kernel.org>, Arnaud Vrac <avrac@freebox.fr>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 6/8] arm64: dts: qcom: msm8998-fxtec: Add QUSB2PHY VDD
 supply
Message-ID: <3adym6olojyjwzzg7cxgng755uqg2g3bo7haymkpxvpi35fw5p@pyl2nv3ftz2c>
References: <20250318-topic-more_dt_bindings_fixes-v1-0-cb36882ea9cc@oss.qualcomm.com>
 <20250318-topic-more_dt_bindings_fixes-v1-6-cb36882ea9cc@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250318-topic-more_dt_bindings_fixes-v1-6-cb36882ea9cc@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=SKhCVPvH c=1 sm=1 tr=0 ts=67d9e697 cx=c_pps a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=czvDKQ4P4fPyK2hnz74A:9 a=CjuIK1q_8ugA:10 a=PkAOt9_mmfBkvtOLxIEI:22
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-ORIG-GUID: rbGXM6KYP7YTcNq7V5MOMSxbGiyygOk3
X-Proofpoint-GUID: rbGXM6KYP7YTcNq7V5MOMSxbGiyygOk3
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-18_10,2025-03-17_03,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 malwarescore=0
 mlxlogscore=696 spamscore=0 lowpriorityscore=0 priorityscore=1501
 clxscore=1015 bulkscore=0 mlxscore=0 suspectscore=0 phishscore=0
 impostorscore=0 adultscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502280000 definitions=main-2503180156

On Tue, Mar 18, 2025 at 07:35:19PM +0100, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> Set the supply as required by bindings, to silence the warning:
> 
> 'vdd-supply' is a required property
> 
> The value is inferred from MTP schematics, but it shouldn't change
> between boards due to specific electrical characteristics.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/msm8998-fxtec-pro1.dts | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

