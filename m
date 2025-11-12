Return-Path: <devicetree+bounces-237702-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id CDA20C52F53
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 16:20:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id BD594350FA2
	for <lists+devicetree@lfdr.de>; Wed, 12 Nov 2025 15:11:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD6BB350D4D;
	Wed, 12 Nov 2025 15:02:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DmgGa4JJ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="F7+cjIY8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC5EB342C80
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 15:02:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762959772; cv=none; b=UkOLtxIH7OuulM/KmE86Vzvgokx3JyKEwjX7yMCopANCi0faJwYWSSqGbAkDjOgcaIiNeF7mHm802B4SknOmSKjInlJd+mFL8T5yZiqMxsx1dNv1b++P/+x66F8JmWaCT9sPP708bbC6XUDYBrW0pmgfRqNBQGKkLICQGdlrtUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762959772; c=relaxed/simple;
	bh=iD4qsnKznEoOb28KGZ84ux57r68RZ32XkXTT4u90lM8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=RSm0/0qnxSd1QiE9dx0gmiQex8pnh54vgU6xYk40q9LTfS+FPbwSNkRhAypA8l0Hs/XwpnthtpAoi4FWAF/9qm91FYwzUkIw+hbuo6Kx28vep6mOed7QubAMNLVq9WBq1iHjW8XVDxeFCUNM9+A0vTiBDEsOq28wYYpVP6Xvozg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DmgGa4JJ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=F7+cjIY8; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AC9fSTu721887
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 15:02:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=9rRTmxPmVpuHkJ2g/EvFY5Hn
	zt6+vzvauOfhyJ8/hJU=; b=DmgGa4JJWIGDnZ46LPY3gqsLs2QAAzxbY9dixRM6
	KhiJp0ND027Y62a8UoqPWaFEjGM5Me4ptwDlvoZI0WHTREXDhNzCfkBQcE0zw3nP
	17e1UufPzbepL4EpBB/ysTOnH6npHhcSJAVTyfdI8ghlDOY/L2jYUnbjR43YFZtX
	LJEIDYSzUduSqYlbB5wAL9zaPuMi4xCTUXuZ1ZyS2uFY5lNBa19XwjDLmH5BGiEp
	R7PJgLKMdkXzqmzmHv/NioNw/Wz/P9QKSGPQ3JFd27LQ86F425zYsXRoR05zE0yb
	RQfMJgSjydrBBiBWtEhdgxdAVB/hiThMnbcyaL+P28cdzQ==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4acqu1ryu7-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 15:02:48 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b99dc8f439bso2016839a12.2
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 07:02:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762959768; x=1763564568; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=9rRTmxPmVpuHkJ2g/EvFY5Hnzt6+vzvauOfhyJ8/hJU=;
        b=F7+cjIY8dIaSjF51QmhmedgISsF/g325q/A60CThAmwlpi4+KAfUn4SXsfi6IaNddY
         2gqxo53lKk5HbG7ECGPJUYYBQ8X3LZF2kmZhmY+6HNe5hTBBQByj+cx2fVGxZtYzVY20
         BH1b1XXqdOiWd1ZB3QZSYOAM+4/a/hpZ5++KEaR6e9OdxzmKqHKs8UMO0Bi1T+63oflp
         BRE6llS7V87fR6ozeQfJkJu/KFeYMU2Baq2jqGj7HKmZw1oXWofz8IWxbyJk7RoUujG8
         FU6hq+qhB5q+hfjt3xhZNbfarVDB3jitqc7V3ErbsZSi9Me2aYiN3eGXMPiQnnb7hNRt
         0OyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762959768; x=1763564568;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9rRTmxPmVpuHkJ2g/EvFY5Hnzt6+vzvauOfhyJ8/hJU=;
        b=U3bD52+fZl5snsXGYiONImVazjUFSGt8N9vYZqXfp0WZOr+4sglQIASnJhbQlV5uPY
         XtEWkgKygYE1/IE9230ca5s6GGbjxO9BtOzNa24/tqzRn+B2vgs7U1HQipEoJVhOeWr8
         hfc1IF0jhQoV0dNyvdv3AfuFViR1w0LgJE/yKbyIN4R5Y6WM6ve8qnAeWnwOWPXJVo4w
         QSBYzI8XgDdHzS/No4P98dOy6BZw/ZSf1hW6bTNSmaCzD8Jt9W2DGfWAym8BTIEzmYYo
         XEezmzKEVfP9etO3qHE9eqo02M9BfszFkLmV+EyfqSH0zHU/Ay+b1BH4bdhuLajibg+a
         UN1g==
X-Forwarded-Encrypted: i=1; AJvYcCXK8Wkp42+LSFsHy0ViBdwLN4Vnf6ZIOcMgnyv9KYy/w/dgsNSPP/0A1ZCl7ABq0SnVMc5EQn/lyWlV@vger.kernel.org
X-Gm-Message-State: AOJu0YyXXL8AE1yJN8sOnaxYfasPEUo4/g0i6XIQ/Z8XDeenz+JXFHff
	CPGP9HuHgT8Atcht0sarcDGzksBWs1sPHrfB6TMmREWwUJR9WDVC1gZtat67ev4jTwCIxdRl2Dg
	l2N5vLesTL79vKRzS96jXQMwMB2LoXWlBfoDXYlIFVbU2x4u3mYuA/IVm/j7pp/MU
X-Gm-Gg: ASbGncsDocTDjskOshY+ffwonHm4KwTmNwCcDIwwVfDSTOKvvLbm5GQIep4kQ8ibKCV
	utxkCS0fbr/8wL/9x2G6W/FqMABPUVMMIPaENBMG0S5C3WdZAFbXuIRhKfmUVl/cYjad1cipiCv
	VYTfcTthOCgiP3t5bHOlustG4NMJjdmvdTstPCsuL1MqBPteCg2eR/qSSfH0KJ2y07ojHRSBrz5
	jv0DWMc3cam5w4u0XgP+KGKmSg+qnHz18Mm0tgndnDkcRFwezwF3v9J66hD6FuRI0axJckkuKW7
	w6YcbW+1yA2Hk9cwoHrdM451bZKrsqWtkJVa+QUpVDRYUZxO7Zwvuxhor44CIVtomeXsE/smYgp
	qMZvqjgTYD8TLALwL8Cbitn/WhQkL+k9oty6IEz/rbjJbAezPfVyqo6AzKoB2unpCcYv3980gUj
	x68v2sXb+ccPdz
X-Received: by 2002:a17:902:fc8f:b0:297:f2d6:17b2 with SMTP id d9443c01a7336-2984edc8fe0mr41002895ad.40.1762959767888;
        Wed, 12 Nov 2025 07:02:47 -0800 (PST)
X-Google-Smtp-Source: AGHT+IG52Cu/IxlVXdEs1d7W8EbJc1ChZaCVEpT5U7zLUcnX+dRF/CdNr77aqvhMxDvsYHGz3fMfJA==
X-Received: by 2002:a17:902:fc8f:b0:297:f2d6:17b2 with SMTP id d9443c01a7336-2984edc8fe0mr41001495ad.40.1762959766459;
        Wed, 12 Nov 2025 07:02:46 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-594518375f1sm5692754e87.76.2025.11.12.07.02.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Nov 2025 07:02:44 -0800 (PST)
Date: Wed, 12 Nov 2025 17:02:41 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Gopi Botlagunta <venkata.botlagunta@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        venkata.valluru@oss.qualcomm.com, jessica.zhang@oss.qualcomm.com,
        Yi Zhang <zhanyi@qti.qualcomm.com>
Subject: Re: [PATCH 2/2] arm64: configs: Update defconfig for DSI-LVDS bridge
 support
Message-ID: <jgjhjgjchajp5lyn5wgnykqbrhecakywwumy3lsyqybsijuiqx@ridtnd3irslb>
References: <20251112-add-lt9211c-bridge-for-rb3gen2-industrial-mezzanine-v1-0-6eab844ec3ac@oss.qualcomm.com>
 <20251112-add-lt9211c-bridge-for-rb3gen2-industrial-mezzanine-v1-2-6eab844ec3ac@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251112-add-lt9211c-bridge-for-rb3gen2-industrial-mezzanine-v1-2-6eab844ec3ac@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: oz6LGNWkmhgCCfioTgY-Pnq5gqPhd6hm
X-Authority-Analysis: v=2.4 cv=Hpl72kTS c=1 sm=1 tr=0 ts=6914a198 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=4RWRdER6p9Cvvg2m5vIA:9 a=CjuIK1q_8ugA:10
 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-GUID: oz6LGNWkmhgCCfioTgY-Pnq5gqPhd6hm
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEyMDEyMiBTYWx0ZWRfXx2/U0hL2bbTo
 5gMOQHbYRtLtc3hPGr4xYlWYVagMEL3gMftAwk1DEYapSzQjaOG1EA8eeMJ9P9W1TTsTeGXg0jU
 nEQpBWPjRoidCxI3vtFy4Gm6cWiV48bSXW3eyEosB8DrHGS1p0SPwutc6+Is3Ct60WqIXmPrNVe
 3UQbQHboer4vD0gce7aLdM1YrD5soq6vakr8xUZ9xWU7+Mn/YmOmM29y0Tq3F2e8vAc32tQxh9o
 VwBj2BiwLh44NmzGT4TCxH1833tS+qgvPvvZqec2hD/HIT61ncSoxq+spaVDQqbds//KlBPqU8f
 z27wuK2HF4SppYgpV15ZNNuJvnZTnEe5VQqoVjf7kr1rRmmZvfedMtcsO3cRD52ReT7xLR8EjEZ
 J80jl7+KEtaFWZEs4C2wpu3rTBQR7Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-12_04,2025-11-11_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 malwarescore=0 spamscore=0 suspectscore=0
 adultscore=0 phishscore=0 lowpriorityscore=0 clxscore=1015 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511120122

On Wed, Nov 12, 2025 at 08:18:12PM +0530, Gopi Botlagunta wrote:
> Enable LT9211c bridge driver.

Why?

> 
> Signed-off-by: Yi Zhang <zhanyi@qti.qualcomm.com>
> Signed-off-by: Gopi Botlagunta <venkata.botlagunta@oss.qualcomm.com>
> ---
>  arch/arm64/configs/defconfig | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
> index 00d15233a72b..1d35af618159 100644
> --- a/arch/arm64/configs/defconfig
> +++ b/arch/arm64/configs/defconfig
> @@ -959,6 +959,7 @@ CONFIG_DRM_DISPLAY_CONNECTOR=m
>  CONFIG_DRM_FSL_LDB=m
>  CONFIG_DRM_ITE_IT6263=m
>  CONFIG_DRM_LONTIUM_LT8912B=m
> +CONFIG_DRM_LONTIUM_LT9211C=m
>  CONFIG_DRM_LONTIUM_LT9611=m
>  CONFIG_DRM_LONTIUM_LT9611UXC=m
>  CONFIG_DRM_ITE_IT66121=m
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

