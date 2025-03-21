Return-Path: <devicetree+bounces-159746-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id DADB2A6BEDE
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 16:56:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AFA923BC40E
	for <lists+devicetree@lfdr.de>; Fri, 21 Mar 2025 15:53:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 82BCC221569;
	Fri, 21 Mar 2025 15:53:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="jD29Qml+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC621225387
	for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 15:53:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742572390; cv=none; b=gWc3IP6DkRK03Cm1IFzm7bBYUszZJ0uLg1poRyz9o/GlhX+i7uKn+Ax8cSXntKepirYztBLyAy6kNlXuR+le6+w7pvdLLde6Vun3pjP8/0p6IubKHcIhk+IC4hXaNColTsXQ1qItAN+PTEBWiyaAJKW9N4QNPomLVn6hppGR29M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742572390; c=relaxed/simple;
	bh=Z0R+V8mIAAyfySi3sGNVs4O7MwDKBcqIsi51k8di+xk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Exp6cZ9rSvNPHeYwHqJiXIub2n0cydmLwiuz+LysjJgCAhdhpOzPNADRryR6R73tQirjks17dfSjIQK7dwPtoOMZDKuO/JDrApfa5dWwnN2zJStmaDFUmf3phpac8aQ3dEhbs0LkLYjcIS7q+TVkproNi8K0Wm8CuTk+qevxdkM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=jD29Qml+; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 52LATExw022410
	for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 15:53:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=VQlDE2/fBoDju/XlglpVY6/w
	fpayn18xS3bj6jOtEoE=; b=jD29Qml+wTE5+2QhwYgyLZzkeSaTzE/Pij7VjbA8
	4k/oIrWsQmIIoY+EZfu/XxBkvCr9ObjmenKZfOZvT417avfhJwOHhvfnZTpcRbQo
	K/K05js6Gt8KWqcU0/pisHfHxvtLYFI1ME0D8iaphCtOp8GITOEWO92R07LO0hFq
	VXgVdxArFxisF0wZCH5OHYTnQptnX1R1gE5RxZM0ie+vgOZe8nTsfe9KWNBftY9K
	+NxWKq64w0ezd4sk2iEBcQcxJ/chx0OAtgyCIZOJC+nre/RG2hdyQ2WmJW7fcDUV
	H7hDNM6UhcPNcpQBIwVulZKgQBjKNw2Us8yTMtx5bQbnLA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45fd1dt9xe-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 15:53:07 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-47699e92ab0so42222231cf.0
        for <devicetree@vger.kernel.org>; Fri, 21 Mar 2025 08:53:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742572387; x=1743177187;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VQlDE2/fBoDju/XlglpVY6/wfpayn18xS3bj6jOtEoE=;
        b=aAPzBEQqzwhlhHAh0DvowgKWXWXXrhvU8Be7rl8eBcO7JUKyD0RYOp6XwFVzfTqHSx
         4adw1blb9EBZi4hAldzEf2rr/l6hV4gSuneqmJYKaVp38gCNSEYNq2m4LAXn+8fFewNJ
         u5szWgV+LTVt1gsFKjb+6gZXd/8ujnhQOEMd9TeXejS/Bscy/Kwmj3z6LeFAoxX0JDFG
         t1/kX+biZ6h48QhEXAN2WaYJijRq6i2SB1/YF9IV1IXJRHX0uDM/PrAl3cUmnskaBjnV
         GFCXvcBLo1s5i6jSy0YjXLYQkFuQK1AVQaVVzTLRvd324iSIOnbssjcon2xYzUXZ1kL5
         L9CA==
X-Forwarded-Encrypted: i=1; AJvYcCUwfT1frTQDQRl2WhAuXFGmYeyVBHeJ1h8IV94PTuJM+FHSr7W2yvaicvt+gDoF5I7PRHk5k8iPcX6f@vger.kernel.org
X-Gm-Message-State: AOJu0YyHTljcCyd9PMqGwRa647XaWmPSrB96Ma6K0YPOPJaOkuXlsCPf
	x/fxSt0PdO2sV0MslTUxaVBO5w/mTtr8t4i9rk3oaTFtMK2Wb8t9j81C8Ny8ZQeVuV9Gvel8+LY
	JHEntt2NZZbmKp3LFv46ztEDwC4kr0iFQ60xCmiqzEvbUq2rmcQbo2U0lvy+5
X-Gm-Gg: ASbGncsCi2vAfHtTueE+KDjUY1ZR4MuADC+qBFppl8h+/umyEBmFZjKX7DFDGKUSjpT
	SmExWp9nXQzfqQruhc0/zwpD4OjxIyxXBXxAA1L0HiAC4YwQJ+zZHargr26Bd70PLRzJiJt9Y3l
	9u7ccCP0IyHRwWm0Hiu1D9Bdzh+s4BsU27LzvkcNh7CbIHP9u1ejKVsXjvNTgncrFQiWr/mPoj4
	agJUPG/3vGQH5qTYw7UftS+h9Wr63GyoACHm5sMrPdQcVsfMhNTGCbf2PASjS1oZQgwY6W09DyU
	uAMOAKKXtoYvziMLkLOBw6ilO3dforrnBQMa3tiyiDQyV+ZDcvIrqT9B7foIX5lH7HPwmixBi5Y
	W0z0=
X-Received: by 2002:a05:622a:180a:b0:477:1e1e:de with SMTP id d75a77b69052e-4771e1e070bmr43920031cf.0.1742572386762;
        Fri, 21 Mar 2025 08:53:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF3lNdzhAtr0sK0LLAK9PFg2BBOEsioVsVc8qjwwC0svOGQ2IU+IMTDXrTnp+MfGwnE56Mnog==
X-Received: by 2002:a05:622a:180a:b0:477:1e1e:de with SMTP id d75a77b69052e-4771e1e070bmr43919501cf.0.1742572386254;
        Fri, 21 Mar 2025 08:53:06 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ad647c54csm216260e87.66.2025.03.21.08.53.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Mar 2025 08:53:04 -0700 (PDT)
Date: Fri, 21 Mar 2025 17:53:01 +0200
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
Subject: Re: [PATCH v3 08/10] phy: phy-snps-eusb2: refactor reference clock
 init
Message-ID: <vphiep5kvusrsyv76a3hdnkso35isoe76uy5hx2vm33tix7yxl@4qh6sk3xe3nu>
References: <20250321135854.1431375-1-ivo.ivanov.ivanov1@gmail.com>
 <20250321135854.1431375-9-ivo.ivanov.ivanov1@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250321135854.1431375-9-ivo.ivanov.ivanov1@gmail.com>
X-Proofpoint-ORIG-GUID: 517Ye4csiqpUAHRKpxI0Be3XBNH8ZNCd
X-Proofpoint-GUID: 517Ye4csiqpUAHRKpxI0Be3XBNH8ZNCd
X-Authority-Analysis: v=2.4 cv=T52MT+KQ c=1 sm=1 tr=0 ts=67dd8b63 cx=c_pps a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=Vs1iUdzkB0EA:10 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=bmNeyW_Q0om-5_paTGoA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1093,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-03-21_05,2025-03-21_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 adultscore=0
 impostorscore=0 priorityscore=1501 bulkscore=0 mlxscore=0 clxscore=1015
 mlxlogscore=708 lowpriorityscore=0 phishscore=0 spamscore=0 malwarescore=0
 classifier=spam authscore=0 authtc=n/a authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2503210116

On Fri, Mar 21, 2025 at 03:58:52PM +0200, Ivaylo Ivanov wrote:
> Instead of matching frequencies with a switch and case, introduce
> a table-based lookup. This improves readability, reduces redundancy,
> and makes it easier to extend support for additional frequencies in
> the future.
> 
> Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
> ---
>  drivers/phy/phy-snps-eusb2.c | 61 +++++++++++++++++++-----------------
>  1 file changed, 32 insertions(+), 29 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

