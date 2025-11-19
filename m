Return-Path: <devicetree+bounces-240079-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id E5301C6D212
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 08:32:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 0619E4EE5C4
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 07:30:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D3B972DF131;
	Wed, 19 Nov 2025 07:30:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DZ3MBwOr";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="aJnUDW49"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9C7962D9EFB
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 07:30:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763537417; cv=none; b=CDeVgCv/nLRQXXT5Sw9/R7fIjTDCiDtoxg/QhW04x2t/aU8yfcmY4vzmKy44hTnFecxa/rJczO9vjzXFcsRjwBRDqyu4DP14pdrZbgRUEE7y5GKeAcrXrVilu932qzNVcbjzL8kG1IoSvxwft1wdXfDbg7qV9lSHir29FvJQtg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763537417; c=relaxed/simple;
	bh=wLa35XDm6IPnbg6hbzYVHjTSg581R2tB1S27xkWk2IA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=UHC8RdZEZe/zjqeoOsoByobZAl9RgTVAw7WqHzYdIKjXL2G+Up8gPzGpyRy4PHWFYLNpNze7/F7ssFrIvLBuWVwkhI+6iRw0Xv0Uxh+2wIwrhj4fRHvHonrwvmxLGAAvDGxeWo5/vDXQ9MJoqLwdFdBns2asPOS4DEOL3j1c1uY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DZ3MBwOr; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=aJnUDW49; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AJ1u9S73165027
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 07:30:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=gr6zOUWr6GHGR7NZx6vebADU
	cm/oi70IB3+o15K/5YA=; b=DZ3MBwOrkOsisKJbtpBWpE4cuLqSVsNnbxjsxHe9
	iKeW+TaKZwQYG4wwevDSv9/fQVkUOcL8//P4Rfeud2O32p2EQ13Ry0bIglK9v4pC
	G8JYGRB3aZ3k8ER4rxQjPbZa/sJqRwCB4eldss0AcpbaGkz52rvOu78gAb0GwUww
	RDehzZQ9uwwZ8FI8KyMK71GNW3d5PLMJZKmrXE+uN1q43T/SAWtgILPwUAX/X07Z
	etNnMsgE5V2aVU7LNHMdyQ9HBpNPrrNXTR0UiX9xsY2xkXBpgoWHK76gE5bnblro
	xRN1NvoAUcdWWXhOfKgeuoeQo2LJ8QBIp/EoSSbWdq9p7A==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4agvqgt7yv-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 07:30:14 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ed79dd4a47so203621081cf.3
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 23:30:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763537414; x=1764142214; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=gr6zOUWr6GHGR7NZx6vebADUcm/oi70IB3+o15K/5YA=;
        b=aJnUDW49VDEX+PHd46uxm2ohNwHiW6PXMicD0vpThSE5w3lyvo2j6YmpBfGtHf6PfX
         ksrr2Zk2dqiQn50j0hl17DEY5i7a+5Sa+rqeLcKbXOnANzM703dZdjrbhYd8Z7YG/YyM
         lJ0TQvNpPLhf5jSnsbB5qw3lAFbvuThkHGxpzeHRTS4WaQz4/tvr6/E1vsQ+oevZX9Az
         ib0UL0TJuzLwYBh8t+sPjW3vl3c+GqHp9USGFab2bHZn5RiTTgWjyya+MvO6m+k5BBE1
         JK6eu2ZLzx5TcMnjjvjEWxE+CvL0WNzDfX9r/1F1RD3wk3mc6NvMhgJanJXip8I2F4OF
         2aJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763537414; x=1764142214;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gr6zOUWr6GHGR7NZx6vebADUcm/oi70IB3+o15K/5YA=;
        b=TGuRGIjqazXe4EIxTjbvAqRTs58u4RNBHgAA8smOXUsiBXHD9aBJiahQ6uNugrs1iI
         G4Vdx3OzF8WFcNTrbpgQRdtncomtbT2egysg1/7ji6ZCq88w8mhpTbO3Qtn295+NxTZb
         z+p+bmhXK6LQVMa3+V9/Zgy9ZdqfyrONrEg89q6zbXf8t/Z0YEzRpgZBXPNMpIPEflci
         7xAu0pHuodEADkmss1vrwtltx1bEAQSUuvx/zBI9KdJPV75kn193byqYvtkn/sg1Od4F
         Hx2Ryl2q6NCr5k11KvoNONwfLwCex4I9Hldn1ZmRaJkMQ2SAwEcwaDt639aodNPF6TyV
         4yfw==
X-Forwarded-Encrypted: i=1; AJvYcCVxmR2mS6tXf6B5SFkQXY/jcuKq/yHGCfO0D1csdVHA6w/0r8KHI5tvQzO1T5U6/BfLxCWXXhhoMF/P@vger.kernel.org
X-Gm-Message-State: AOJu0YyuhygvI2KKhogqBubxB7keEAYRlBawuS9xEojp9HbYzP2d2Qp6
	dlZc+7xkGAs6w6s9pXOrAQG937PKRaoDQRCCNAFDo6Z4xpgL2FzCgP8d67JfUEAkVlql2CWrfwZ
	/bnxuTPCH56DAo/bQBE58GyE/AhvNq3IWVntu89wpG64+3oIxfoMiW0+d4CEQ779B
X-Gm-Gg: ASbGncv3W2hRXL8nIhJCnEfis9jmOZD5LtCL82yWTqdxIOFGdEljKmrgsTs1xeq2EHZ
	ImSZd3hgc2B6lMd3GVRCsBwvzGnCY1XleTmwO6oUbJ0I52GHSRn0rBOTX2N4d1AbTkDeNqPf2yI
	HXOsQtEi/t2QsyLOmazbwDWzH7TZNzwHBYD1sgAh3itkFILi4fAKX5rWtNzQs1ZH8YsuB0EtrQy
	ztpQFpI/YggmlRiFv5vCDJegSv9+fbeJy86qf60VURWv9LWSd1IwWrVpgkuPUJJl4BRk2kUR74R
	UyKqgxgtWZnwQ7lJxDaiPvBI1z4L+M/MwaeNCYuMUWXOiHBIsIQG40lgarMbGr0DZp+vLTVbijR
	ZRtk+QN/x75qd68HqLb78IF3pTxdyH3I7Bjg2kYdLg74qOWQU70wkkT4cWe0BTL17RIkc4GFEcm
	mTrnPpCI9okShcNT3vqoGsLfw=
X-Received: by 2002:a05:622a:1805:b0:4ee:4126:661c with SMTP id d75a77b69052e-4ee41266803mr10122141cf.81.1763537413346;
        Tue, 18 Nov 2025 23:30:13 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEiHQ8A794wC8FAFVGiBeoz1a+i7y/spa5oW2exn/cbbWa1BhXSiZK4W3EMjFKRgzYgR2jmAg==
X-Received: by 2002:a05:622a:1805:b0:4ee:4126:661c with SMTP id d75a77b69052e-4ee41266803mr10121711cf.81.1763537412918;
        Tue, 18 Nov 2025 23:30:12 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-595803b30cfsm4512138e87.32.2025.11.18.23.30.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Nov 2025 23:30:12 -0800 (PST)
Date: Wed, 19 Nov 2025 09:30:10 +0200
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
        phodina@protonmail.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        phone-devel@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v3 7/8] drm/panel: sw43408: Improve wording when
 reset-gpios aren't available
Message-ID: <ye4ktw4ekpolnmbzkchdtllxpv53ftk6p5o2beld65o2ebedbz@fek4ildiq5td>
References: <20251118-pixel-3-v3-0-317a2b400d8a@ixit.cz>
 <20251118-pixel-3-v3-7-317a2b400d8a@ixit.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251118-pixel-3-v3-7-317a2b400d8a@ixit.cz>
X-Proofpoint-ORIG-GUID: rgsPhbwo3At5TE2XcEzgCoxf_3P8H-8t
X-Proofpoint-GUID: rgsPhbwo3At5TE2XcEzgCoxf_3P8H-8t
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE5MDA1NyBTYWx0ZWRfX9K2PavM2AuRe
 Rnr/yz78GoAhrNGf30PlbphSSGCqIkhxkfaArIJeYRRDTZwf02nry4LNnKrPP08Nrc1wAE5WVVv
 GGi/0y7uqv4DbvoXh1xrAmDxkJCUBiLGllWGJaUDWGSLtvo6oD6SD4h6uB8Z4nyXMQe1fojThdM
 MQpx04/PKwZHJaBjWQLp/iKPn3bADkEOJQ99W9TpsO9uI3FBaKnx8JtxO70JDF5FrQvx8iwDADn
 oJokQQrisAaEnm8Km9iTNF/tdH+e7+k1rOYg5RsrC/AUAOYLrcSNFqyfh7rlfkUhtPHEQigZ95z
 HeuvkZoqUfm4YVj7ErVrzL+k39A2TF3Nzu0t0VNKxPEpsGJWYKEnDa3l//+bJt2/j8ytEKJX7cD
 uCPkr/TPcZ2aqnJBTfoz04kClfdEng==
X-Authority-Analysis: v=2.4 cv=LMJrgZW9 c=1 sm=1 tr=0 ts=691d7206 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=1NbFu7V7WBOcOkta9d0A:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-19_01,2025-11-18_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 clxscore=1015 lowpriorityscore=0 spamscore=0 suspectscore=0
 bulkscore=0 adultscore=0 priorityscore=1501 malwarescore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511190057

On Tue, Nov 18, 2025 at 12:30:42PM +0100, David Heidelberg via B4 Relay wrote:
> From: David Heidelberg <david@ixit.cz>
> 
> Choose better wording.
> 
> Cosmetic: also inline PTR_ERR.
> 
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>  drivers/gpu/drm/panel/panel-lg-sw43408.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

