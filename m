Return-Path: <devicetree+bounces-208037-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 91A42B3168B
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 13:43:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0EAC71C818DB
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 11:43:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 97BA42FB604;
	Fri, 22 Aug 2025 11:43:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fYAOCsr5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 987EF2F90EF
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 11:43:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755862984; cv=none; b=Ekl9sTN6mhSSYezajz/uZtiU79YLsBKx9+fRQKCD+Fujpd6NaQLBj0AHXkr1DPJKFGcdlLQtsUh2UD08cS+QRT4c90qinvK7QLOJT6ozT21DxbF6RHXuwuM3oVUdpUGi5Tmd7K5tBYpPz6kyUeT/9vPCFVvDRZlcOlZk/K0E5D4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755862984; c=relaxed/simple;
	bh=7a/WnaSPj55K8edhn3E5yhFLYk360KQJsw5XrPi5QA8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WMd5VzCiMD/WP3KBB0VFabIYogm28kkycuiyp0qBQIUKVeREAQPEMMmxzxBg0TakdwgbJwDV8e96JazJFIlUev+G1c4lWy0dgQhBc+YGWcTX3VGw+9fwP7BYa7g7JA/ZZOHflBYNrnNA60uvepZS56f1MqvifO3qCWtGv93w5q0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fYAOCsr5; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57M8UMPH028651
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 11:43:02 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=tgTz7yxNUzClQiIcX4b6JBav
	BqVRBHXbupABDNM7vtU=; b=fYAOCsr5tbBL4NRTCiHeGXfBgGz55sQtMnm3YUhI
	6VNwk6Kg7J2PhtaNDLAKfDvNwfI06oq5aT0PUYIofROHRgGHr01aYp36g7QcqbjU
	rl3dor+cC1jJeVy7SlHnLWUXgb9h7LAv8lDQ+x9ZTNeJoejspD+IkcD/83VitQt6
	IY+TRTP+pyIpCi65/RgFS7YtzAuW8Erd5Z238eoNEQmpeo4dmYWNTDMqrr1JO7+x
	BpWRszdtr0wvAOpEjTrkZr7RU3u7qDRwmDtQ1mgXcMFrkI2maLc7xaLgAfHxczuI
	bXP/qrFETcSlezpbXK/orQisJmavKYIktjC+7POCI7U25Q==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52cs20s-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 11:43:01 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-70d9f5bdf67so10045426d6.0
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 04:43:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755862980; x=1756467780;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tgTz7yxNUzClQiIcX4b6JBavBqVRBHXbupABDNM7vtU=;
        b=dHfxyq7U8ofsoZfNAquyFoXowjLdJ40cH+1cpWwY5NdWOrxvUs/pbVBiOdy6YzSy0v
         q9P7VO1dkVAsZa7vemhkJjRRHmy1QHpMbLGSinXf7ZnMG1XTXVDrg7jhsHOj8xzOR7Jb
         LKKJYHPiAMQdfZLDoErMV3qqoqCv6UwOwNMqk2sLthjwYLZQsJ6ksfDjjzd5UPxVib8K
         dIh6mDM+Wbca4qla+MiFT8tmLeW84TUam3UTNZIHQ8lJs/tqFE2c5mNw7cl1DYKy3ovN
         kCFFDGrDtuaEFMLqRoFf5vLuikXSS8osf6geD7z8vWOkGmOaqpFVLTe7wFN60+lV6uq3
         Zyqg==
X-Forwarded-Encrypted: i=1; AJvYcCWBU46NzbH8A8GpOcHjm+HE4yMupftykSvqHJQuvSF/Vz81LwZ6Y0s9lvVcg4dSuiC2aTZ3uUxUjNR6@vger.kernel.org
X-Gm-Message-State: AOJu0YwaASD/TYVjD1eA9JI/Eah5yLpELirjnR40gplEb/Wqhp/afLdk
	kYawGx00glLlfr0HyoGb2Q4TFyVtEKRB4L6DEq6Bu72zVTYvlIJcdn87J0wP4RBEiLhE5YW7pbi
	zwlM+EETCOF2bPtVWfHpLtvKtrCQ5OwORV77oywd6nVZHc5XLjY/5eYjnUoMMqOIP
X-Gm-Gg: ASbGnctzVkDPmxxh57Iryo11yWaelOvk3TWjLs8NgHs2ckjSSzK9EGSuA3cNgbY1NAa
	nRuVdpdJ9pj5vDQ29gMF0zSkFyFGRfo7sI1lRvgO1SU+zWJFwv8o6/lnNNXTwlkcU521uTY+72p
	Eb/LNuiTPEUE0mixn1HNjicdf8W9ttMcxy5gQLtIAEOT2za8K6U+Ap1ckkuO/uigd/WOAcF4bIK
	2+mnJkyBlQrB0oCP6r1aTZqni4o+EuT18/oItiktImi/NDBbhGivEHn7ysQJ+0Yz80XUHrazETP
	JcJxQMZ8MTxykM1+C3BNTG4/qHRa363ezQ76kWbHF7CBCe43lzDrMGyGlGpPjs3oLdgVebueJ2Y
	QLu8c47G8vQaoQMwPSgA8y0Vw2HXWA5pMcRpfECB7p7uAJzlAEOMg
X-Received: by 2002:a05:6214:c8e:b0:70d:479a:ca6e with SMTP id 6a1803df08f44-70d970cdea2mr33546226d6.8.1755862980317;
        Fri, 22 Aug 2025 04:43:00 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEdRz6hdH7m4nOBMkuiSMbEeU+mfLZWmnffBKcn1rd+5I9DQW3QC15nh5Lpj4VpWDwLhDkI8A==
X-Received: by 2002:a05:6214:c8e:b0:70d:479a:ca6e with SMTP id 6a1803df08f44-70d970cdea2mr33545456d6.8.1755862979349;
        Fri, 22 Aug 2025 04:42:59 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3340a44b538sm36210471fa.26.2025.08.22.04.42.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 04:42:58 -0700 (PDT)
Date: Fri, 22 Aug 2025 14:42:56 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Cc: Sean Paul <sean@poorly.run>, Konrad Dybcio <konradybcio@kernel.org>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Connor Abbott <cwabbott0@gmail.com>,
        Srinivas Kandagatla <srini@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Gaurav Kohli <quic_gkohli@quicinc.com>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v4 6/6] arm64: dts: qcom: qcs9100-ride: Enable Adreno 663
 GPU
Message-ID: <g6fwzj7njcxomwoze5phbyt5xx24s4aeaxq7x64qe5esanabix@okocxeysh7xa>
References: <20250822-a663-gpu-support-v4-0-97d26bb2144e@oss.qualcomm.com>
 <20250822-a663-gpu-support-v4-6-97d26bb2144e@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250822-a663-gpu-support-v4-6-97d26bb2144e@oss.qualcomm.com>
X-Proofpoint-GUID: d77Wv5Zk9-aY3EfgTbbkvMVU3yZt8Oud
X-Proofpoint-ORIG-GUID: d77Wv5Zk9-aY3EfgTbbkvMVU3yZt8Oud
X-Authority-Analysis: v=2.4 cv=Xpij+VF9 c=1 sm=1 tr=0 ts=68a857c5 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=lIFQIvOu6nGuaiKUdkgA:9 a=CjuIK1q_8ugA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX2UC52Soa2isz
 nrvwSn7qoOnAYNgtu2kKNAf16vo1w/SAePbjWOn6SO3qtS8YNURMXjQ9La7V1dkUdRZOucIOVB7
 a7JwwYnO11Gs1FB5SCcqUfRkCDQU0d8jMG4Y57sk8B8EIh26T3CRiWTXsKNgLNwYRFW8iFn2yiq
 5HCo/XT4JM/dGvSiGaeGrN5BBE09jQh4PB+zkkqYpCGdlyHqyyLVADOqPoXQUrz0put0B/t9O+A
 AG2xkZ7CmJaknVFTTWwiCqtykcboNWmx5XuN0vyzKWFJuwNlrvI0kuMgdTR8o2DmidQ2+tNL1Eb
 aYkkQHvcDXgYtLSTIeL5Iir9QiyQysdqKyN7jStqMa2ZVa5Jp35Nh4y9mY6QVPqAo6nS0CViVLJ
 ClNtFKFVIuL6uzhDQYXkucnpHmhOsw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-22_04,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 lowpriorityscore=0 bulkscore=0 impostorscore=0
 adultscore=0 spamscore=0 phishscore=0 malwarescore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013

On Fri, Aug 22, 2025 at 12:25:31AM +0530, Akhil P Oommen wrote:
> Enable GPU on both qcs9100-ride platforms and provide the path
> for zap shader.
> 
> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/lemans-ride-common.dtsi | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

