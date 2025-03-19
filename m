Return-Path: <devicetree+bounces-159067-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 81549A6986C
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 19:52:29 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E04AE480FC6
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 18:52:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD4CB20B808;
	Wed, 19 Mar 2025 18:52:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UlzCD9vX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E7EE20966B
	for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 18:52:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742410345; cv=none; b=D/Bwhf/VJrPq3AZ0tGh2EcJv1KLpybJftJPRjLjezJxWv5aKHGxomnv2eytm2N/ZEHokHDZToRJBRj+18yAPknBUyYbq25sKRngob6OqpatPEE9+PnvyVvanyHZnIyqMAw0npI45zQmu69PadCbJM8SWEaQz1xevdrqhFxhbFFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742410345; c=relaxed/simple;
	bh=0M6YQDs72gfV+jsPgaj46ufU7WjDlWBfzX2AhI4YCFk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=krl85aSFM9CerO+1m3Bg3AUmQx7ol7/Kp4Cb/cAJ2e4MZTHaP/9BKWaGqArWgQLEB+axhV0WGJ9hv/KkqV9PwZ61/nsKdDdxbT1fCa4bgnPhy2YwNMJkr7mPkFz3OK+1ViVJnxRdQS8PCj1Z7GERSPAbWnQ4gxtOUg6eI5YgPqI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UlzCD9vX; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52JE00gP004516
	for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 18:52:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=o2JrlZxInygffkbnIxhe0MWZ
	Qd5M4umD0iQoB70ylfs=; b=UlzCD9vXBnImeJSObQDo6GexmUB7rfazi4TGHiQ+
	cSIgSGWbCUEhdYeuAPj9ed+AohmMi7ZImUHff8kduA/LZ9q3AgvIplGvbW96g83u
	BQyGg6CehrPXm8rT8Pydvnu2yRiSm2TWsaWnXEodAbrr9nJxwWqkhOivk7FCnbbw
	Y5PAhypdTSXyE5T6BRjmvJTgxTLUIGoH7D7+wWlwhrOSDG5zGqyLvTFbtT91+bga
	Sk22YEmg3PNGk2m1UXQPRUs7Witoo5kDFcR50ztBZXZE3n8ecALaMiTA7fa3x8ru
	3HXW4l4nqRonLjppn91kbuNLHyR5rvEuAQfJb8k0IVesnA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45exwx6bvr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 18:52:23 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-6e8caff3bacso66034656d6.1
        for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 11:52:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742410342; x=1743015142;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=o2JrlZxInygffkbnIxhe0MWZQd5M4umD0iQoB70ylfs=;
        b=IsUIIvi+wrcb3plow4R9ox7alO6ucXuIPkFlKd5GolzCvjjr6VD1XJAYhwseNTveIv
         2ifvZxk+Oeo6jx3NDYbf6E8KEwUoC2IHfri5PC1H0j+r3w37RT2HdX9/UkGPzP/SmESL
         efK6qDytQcSb2ufX3mVNY+wBdYiiVrqirQrPYXyM01kfmQic42WJotDkzgjI76qa9cPJ
         UxUcH/sjLnkL17V6XyfJjDt2xCsdTBL8/PEFUR6DrwkLswFIB4M7C/wXcODWHRsB7GUn
         nRyQKB+kqfZWBbBPlgONvzTCO9vNofvRiIeag7KyNykjEnMQsiK/rBq61g7cxTKTgNSZ
         9guQ==
X-Forwarded-Encrypted: i=1; AJvYcCXi9S3kW1WHaC2WqShfff/LiYiovnqz6p52EZi6ROD1KtpxdKE8WKAGwCad0jwTryMsY+4UhVElC3tC@vger.kernel.org
X-Gm-Message-State: AOJu0YzAG9bCsb8PXoJGdgjOdH5sLh/XkqTfQCxw7VH6TnxNTfnuE38/
	A8LknkF41l1pR9BvtANB5VfAUs12TXbwrJ/Gt0A11lraj6N4MCGXRR7MQfudTn4CSQbtR8RDTXQ
	6DRcSjnj6mv0VYuSq+dCA3xXuLr2x5JVN+StanNySgx/hlCJ6VjCjwO+Tku+d
X-Gm-Gg: ASbGnctFfUb5NnLBAyk2M3Q4Pk5qOYiSrEGh3RkTwioU8dKj1UaFnCJ1FGbZzCfZkJ1
	6XH3c2hV6E5nlv5JqMZq7uG7wB0DCUp6xfEAry1C15iCV+pqRKMWlJJDZ4odsx1JFd79nXv5B0r
	Xt8adjMIHXtUqeNKHCKUMJLGVt3NAJQ8TDnq4DseWnlXhU3CeVdteX7o9RP9rvJ4ZoqPQ3hbDPd
	jCrMW+cmxVjcdHNx+OiQv4Y/vpjHCSCYwF0odz7w9S5wsKM0hvGEZLX1ulbQzvKG3QWV1c7Ase1
	9LkTK3TTmjGI0RLsdf6w7yegw10wQHEVQdHA9Sr31CESCRCTU2fWHu7REAbxqiWgyGCT1tSjyYI
	aXwY=
X-Received: by 2002:a05:6214:19c2:b0:6e8:f60b:9bf8 with SMTP id 6a1803df08f44-6eb35329e00mr2748646d6.33.1742410342232;
        Wed, 19 Mar 2025 11:52:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFyZio9qkdx621sRV5r0hgdNA5GgHPEN2TxpyMUdo1RgpYx/nbTusOZVvGhm+AJZBFm/raHsw==
X-Received: by 2002:a05:6214:19c2:b0:6e8:f60b:9bf8 with SMTP id 6a1803df08f44-6eb35329e00mr2748356d6.33.1742410341934;
        Wed, 19 Mar 2025 11:52:21 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-549ba864febsm2034961e87.134.2025.03.19.11.52.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Mar 2025 11:52:19 -0700 (PDT)
Date: Wed, 19 Mar 2025 20:52:18 +0200
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
Subject: Re: [PATCH 3/8] arm64: dts: qcom: sdm845: Add specific APPS RSC
 compatible
Message-ID: <vvygjk2bq7vpvcthkboypucbpcr7t4yzngincrpza2quew6jm6@bjyao4usc2lh>
References: <20250318-topic-more_dt_bindings_fixes-v1-0-cb36882ea9cc@oss.qualcomm.com>
 <20250318-topic-more_dt_bindings_fixes-v1-3-cb36882ea9cc@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250318-topic-more_dt_bindings_fixes-v1-3-cb36882ea9cc@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: W48AcYR5GjlfUzIzJYiMxWA2QOfEyBJo
X-Authority-Analysis: v=2.4 cv=INICChvG c=1 sm=1 tr=0 ts=67db1267 cx=c_pps a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=EUspDBNiAAAA:8 a=8V4trvCbKhewGEgX0-gA:9 a=CjuIK1q_8ugA:10 a=PkAOt9_mmfBkvtOLxIEI:22
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: W48AcYR5GjlfUzIzJYiMxWA2QOfEyBJo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-19_06,2025-03-19_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 adultscore=0
 priorityscore=1501 lowpriorityscore=0 malwarescore=0 clxscore=1015
 mlxlogscore=680 impostorscore=0 phishscore=0 mlxscore=0 spamscore=0
 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503190126

On Tue, Mar 18, 2025 at 07:35:16PM +0100, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> SDM845 comes in a couple firmware flavors, some of which don't support
> PSCI in OSI mode. That prevents the power domain exepcted by the RSC
> node from providing useful information on system power collapse.
> 
> Use the platform-specific compatible to allow not passing one.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sdm845.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

