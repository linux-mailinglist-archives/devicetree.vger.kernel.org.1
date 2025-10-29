Return-Path: <devicetree+bounces-232655-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 84093C19D6C
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 11:47:56 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1F70B565DF7
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 10:41:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A6A8E326D69;
	Wed, 29 Oct 2025 10:36:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="FyDoxIoZ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jB5Omj4k"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EF453126A3
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 10:36:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761734210; cv=none; b=lyydnZH9WSfxOSqVsRbwvefZzcAjLoJywTHXvEzvRj62Ybn944sOJyDcJA0rZLXjnWnJcXXAIyxtiaWNGWJY+nC+k1sYeZLm1ljNJMpCROaAN8F8BFv+6ov95HplrAdPtbv0Xvc8MQmRKSHPz6BsKT8m+51I4/j3oYgP8kDpSXs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761734210; c=relaxed/simple;
	bh=1q/1phPagPUCQxAzcCDU7tAH37qhNCsUMCP0nmK5qpo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YwX80FqFncJKykyoZrhvFRDQQLFg+poDzSP7/uyFOSQ31eD0IHReIHQNc96VBem2yrLDgJEi0xv3FlOlnSxBG8JCcDFG28QXV/KVHnm1zEfRrb4TvZj4YBYwSkX4Dnpv3yfqlqZ947nn9dLhQPX3mYQZJENYV7SlHjiLZ3Q1RlM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=FyDoxIoZ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jB5Omj4k; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59T4uwHu3676845
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 10:36:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	toxdlYRW6wbbji6ZyP5mSx2SHaUDU1C2FPUNRmJL/Mg=; b=FyDoxIoZYiP8iBzh
	113JaYIAIvwzPXjywvyKwUE54nnpEOkhvKI7SysO6iLU4FI/90v+DKXvmsluHx6h
	x/MBn0IorHQkUqzh6iPwPpND02sxN3DpXAqfICtXr54MzA7hp8niyeTZFKZuUf8O
	Al2UWsuT8dO4h8pj/Kt69aopTavp2B3XU4qlOvZkSQpSujN3nKlhUoTMsW1Etom3
	F1Rp9LfUqz+aasSxYTslwP/ay9qhvF2M/6CjpDsOjjkamNT9Ra142pvMD0Rd0xaG
	xRa3t44JraPWBeCfNVLOWkw8CEgjcEbLmtKp9Ovb8TNIvVf3sElCRhu6wOfviKUf
	OPymUQ==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a34a1j6jh-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 10:36:47 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-88f7eff9d5fso1863931885a.0
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 03:36:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761734207; x=1762339007; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=toxdlYRW6wbbji6ZyP5mSx2SHaUDU1C2FPUNRmJL/Mg=;
        b=jB5Omj4kROpuL4KhAkaxjFlYbhlBnMlliNI4oZvaJwDvdqojWoa+RhWlRlBR5+hE4l
         C4jWW+XGbZf4Fp0fBSUx66NwHzMSPsYuApheDNmH8gLmSvYlYlkbl6DDk7wZPgt0oodC
         mCbha9Ggb1SsCi4V9OriCd5Bf8gkI4zPHLvpyF+s/QggyWnGe67YvZtd9J+Fnb1yhFYr
         elUX1odrbJpGKUvu52kLMbe3ZWxc/PUChBEzoHaFCDF2qv0CeQOXEx/ybOYNRAyV3wSl
         l9ByrAX1iuO/eOSoxAJzRAtxi28fqJXp0rYE/ip3rYkSkhkYsZCNahbfLwrDreVWpUuC
         /7hA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761734207; x=1762339007;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=toxdlYRW6wbbji6ZyP5mSx2SHaUDU1C2FPUNRmJL/Mg=;
        b=ErOBgGWi3KWKrGhjSne6knghtORqVMFGaSSYjA7kyZ2VV9dP0HCsLUBv8ESp1EGURw
         NJI6lFbVmAlVj4WPXcth6oA5SiiyW9Kl9d1BJI/fU44QKIvAnAh3sfkXw+Ci2ng5ZNGh
         4PN3IxFL5BMQGbQNH6V7xAgFa12dBDfP3InvAaAWBnB2KRC5RCrPX6qq2agqeXPRbvyb
         5drP+X2YEno1TjDdKQ+vf+mTZKH9NeFowiuKQbMM4J4QRJhqbc4LiqBrpy8YqJxWYe7k
         cKq7mrOFldaNGJC03UvlHVHUbDiMSNGI65z9pMu373GrYZFfE6vrmJc6wo4RfEs94PT3
         pNdA==
X-Forwarded-Encrypted: i=1; AJvYcCVgD/GttV/C0VC5EP0VWJk1KlcJYdYx05oA/EeVtRfTUyUl9HD8v3fL7kTVaQ33+jfRETbUDpqfRoIN@vger.kernel.org
X-Gm-Message-State: AOJu0Yw+2SkBVPhUX85e7XK+XtT/WIiNhruToOE8c1yVaZWkg0lY1aOR
	DpvAYuQG0UB6KTcEIbrlK+UjniOwX97I71jWaF8Bjb+pwkIHoFOFQAq1uW9/adRhYcyUmQoNG0r
	RuMe5BjB2U+7JJ3FlKNKehmE73Dj/vCuskJ1ZxusblkcP59aldVQ939RW/hTVPr6S
X-Gm-Gg: ASbGncvmHFVbA8DZTNTx41oRrhKwR0Jn+nG62WMNjMvLjBXZMD0uEH1RrnZUtkDFK6w
	fCFegZ1Iw1kK1QQnbuJmijOWHF9deDY2PnXqSKv+ICBa8XkH262xk8ke6Wda7GQs1JsXsn5wCF5
	ZcYvX9oX2jtylpzYRpEWd2L154kKd2puCxptsA/j7CaQ6Ecu9LsdZQcXuZSvqp0YGliwNGbqGCb
	EAvfwnSitzJOzzmFJ5CZc4AbxLykIZ7aaQdGOhmq/exxliuGaeU6ZbOgcqil58r4t0ElxksfOsA
	caQRhwYRS7wrA+pyDruGqB3lsfU7f4Ud6T5mgtjif5GHkb/J5fe4n2nJ0jssUOsKpycXOXPWALD
	KqyEY32f0Pc9wc0lwTGf5Sa0KaaE6iN+kdywjneMKJbMrvUdyai894RA7xHcDExF7S4lci+CNxY
	W6ZnRFTEiLREiX
X-Received: by 2002:a05:620a:17a4:b0:863:696d:e37a with SMTP id af79cd13be357-8a8e4e006e4mr321291185a.44.1761734206701;
        Wed, 29 Oct 2025 03:36:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHDn6C0Q5aW30mE0+ypBSnHz9+A4C1AANd7lKkjPrOnIt7fuqfOc3mHR+srflmr9P7wSnz0aA==
X-Received: by 2002:a05:620a:17a4:b0:863:696d:e37a with SMTP id af79cd13be357-8a8e4e006e4mr321288785a.44.1761734206193;
        Wed, 29 Oct 2025 03:36:46 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59301f60dfasm3791480e87.61.2025.10.29.03.36.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 03:36:45 -0700 (PDT)
Date: Wed, 29 Oct 2025 12:36:43 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Taniya Das <taniya.das@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 03/24] arm64: dts: qcom: Introduce Glymur base dtsi and
 CRD dts
Message-ID: <gg7srymb2dspk4jeycc5su5gjl434ymgzapqqyqw7yq2marzue@ql27qx2ptuo6>
References: <20250925-v3_glymur_introduction-v1-0-24b601bbecc0@oss.qualcomm.com>
 <20250925-v3_glymur_introduction-v1-3-24b601bbecc0@oss.qualcomm.com>
 <2960a6fc-106b-4280-b4d4-9c1a3a449454@oss.qualcomm.com>
 <0a47016c-1d7e-4026-92bb-a13ac2ce169b@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <0a47016c-1d7e-4026-92bb-a13ac2ce169b@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=Nu/cssdJ c=1 sm=1 tr=0 ts=6901ee3f cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=TvNQ-Dz4i63DqaZ9HxoA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: -mxtFNEIO1VmrELlBnYEOfy3yrfL80IP
X-Proofpoint-ORIG-GUID: -mxtFNEIO1VmrELlBnYEOfy3yrfL80IP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI5MDA3OSBTYWx0ZWRfX/C5kDipLtFW5
 KAhIHz5kNzhehw2L22qSIJi4DNe0m5oHO+BcRexqwjVqWC7ez3kgHJKt6B1XwtBse4y4Lgz/iId
 Sy8bcwba5CIK5Ssg+fqddRWHpUkPHwMNiIQHbJYwdIgysO+xvG6bXLRqXl19FUvIwJg+iD1ewTp
 +8kW3BKwUgYKTWlpVp9I6yiTTkz3sO3H0wflt1Dvo8Iz8MJcAAKCMuyTXWyQ+KiwRUEAignMo/e
 HKdR0i9nWGRU7ek0//ilX0q7XYiA1icLP4M9uHZNH5hvCbfCokNfAbKiDrOi4j79tKxhLlNaeMZ
 XwSIv7a4VZKf+cZZOicP942SZ8b79xxrwbnPk6S5NwZWxal4gH0apGlGtb1ogAq0jG/E/OUQ+bF
 2kgn66Z7UYW+QKwM9igeZme+Z233CA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-29_04,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 adultscore=0 suspectscore=0 clxscore=1015
 lowpriorityscore=0 phishscore=0 impostorscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2510290079

On Wed, Oct 29, 2025 at 03:30:54PM +0530, Taniya Das wrote:
> 
> 
> On 9/25/2025 3:46 PM, Konrad Dybcio wrote:
> >> +		tcsrcc: clock-controller@1fd5044 {
> >> +			compatible = "qcom,glymur-tcsr";
> >> +			reg = <0x0 0x1fd5044 0x0 0x48>;
> > We can map 0x1fd5000 - 0x1fd5094 inclusive, as that seems like a
> > logical subblock (this would require adjusting the driver)
> > 
> 
> Konrad, we encountered issues when trying to map regions beyond just the
> clock reference registers. Normally, we map the entire address range of
> a clock controller (CC) module in the device tree. However, for TCSRCC
> where CLKREF_EN registers are located within shared modules like TCSR or
> TLMM—we don't own the whole address space, and mapping the full range
> can overlap with other devices.
> To avoid this, we propose defining the base address as the first
> register actually used, and the size to only include up to the last
> register we use. This ensures we only map the relevant subblock,
> preventing conflicts with other device nodes.

Then you need to behave slightly differently: map the full range at the
basic device (TLMM, TCSR, etc.) and then create TCSRCC as a child device
to that node (and use paren't regmap to access the registers).

> 
> So want to keep the mapping same from the start of clockref clocks.
> 
> > There's also a laaaarge pool of various TCSR_ registers between
> > the previous node and this one.. but we can leave that in case we
> > need to describe it in a specific way some day
> >> +			#clock-cells = <1>;
> >> +			#reset-cells = <1>;
> >> +		};
> >> +
> 
> -- 
> Thanks,
> Taniya Das
> 

-- 
With best wishes
Dmitry

