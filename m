Return-Path: <devicetree+bounces-228520-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A2E88BEE988
	for <lists+devicetree@lfdr.de>; Sun, 19 Oct 2025 18:02:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 199831886D6F
	for <lists+devicetree@lfdr.de>; Sun, 19 Oct 2025 16:03:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 37B122EBBB9;
	Sun, 19 Oct 2025 16:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="A60wrfVL"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BB1772EC0AE
	for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 16:02:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760889754; cv=none; b=Y5SO4a/6hOUjBynYm7aFkiREITQ5AbKf/uNdR9BTKErzcBwcbPb/TqOfwJzQCxVYa1wBQs7wgMLI1GSnEbsdVbPNzOz2Yny1YYEaAHahAkdN6OAeSYeGkpuoiIZLBs1TNJlZpvnb4CMt7B/OBNOOb5FEWhwV8J6rdhVD/1dS+Po=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760889754; c=relaxed/simple;
	bh=+xf9X2P4LBJXHBq+W5F0WMYPtUAcqU/5yUdWFR8RWg8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QPPYOinZawCicGfrN5OO/y2SAqsO22UPrK60ygfrkTNzWoFkkkXuv5tCTJy9J4J/360CrmeURfvl+KtDY3vlO36rDmorTPrH6R+bBw2vnjZLyx3UvtaUqOl65eN2Ce4QlLyNEt8oHh8jfJoHknJ2zrHUwhtSzzpiglAcQdXAXxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=A60wrfVL; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59JFMC79009474
	for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 16:02:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=yrSgxSLSjug2hqzstf5hGIeQ
	dvScIsYA26L3fjhfwUQ=; b=A60wrfVL9zZXiJo1IpYz5nSiXDhJggSOBHOpZkcc
	tlEyseTYqS/ksvdbaDIM4xqXhH0AI8SNEg5poSQa6MnO0U3gkv0/wHZ+LW401cjl
	TbpqwHrALb3oAEU3qn8lDhxRWU6UjE4aA0EP7S7HhCQ95vm0ShrjGSygZnkV8DfV
	u/1b75DmFFnSSN7r4zNkl5rIOQexFxo47+aLiFttYBRZrGcB7lugIdY6BdlEwmIm
	LVu9DQpsYbPjUFdm8qtASQ8ptQKYjFfAIVun/PdmA3OcU46mVZNAH6SlHqa/kAyy
	xkh0MQo9VfIfM5eqvPM/87ayI4rlCiexYTCfrN7WlcCNqQ==
Received: from mail-ua1-f70.google.com (mail-ua1-f70.google.com [209.85.222.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v3nfaj21-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 16:02:31 +0000 (GMT)
Received: by mail-ua1-f70.google.com with SMTP id a1e0cc1a2514c-91a017a6dfaso2025715241.3
        for <devicetree@vger.kernel.org>; Sun, 19 Oct 2025 09:02:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760889750; x=1761494550;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yrSgxSLSjug2hqzstf5hGIeQdvScIsYA26L3fjhfwUQ=;
        b=LdvTgDBUNrSUPMLBQQmC1f6OZPbvyS+cpPppo/XQaxchGKI3a4ICrU7um9aLfZirKE
         sYX9CAvHa90ICyT8Wky3eVjWm5xUdZj/++Xn48HD4nWl96DNPXjdZBEPdS6h8FZM8puB
         pyLVwcJOGZ6EkUXCcP9kKo0HXQmTVM0sjnVxfh7xNjtZqdAPAKQQZi6pS7tp1Rdv97tJ
         Z2AFVFBwjCjbwXw5N+jvYrv9WioG5DafojD5hMLpX6nL+rtVZmS/nHvgdY+q4HB2xmzi
         pyGd/PFhHw2ew96V6UQY0vb1LY4oNIrSm/7AsIeJGEbwPisPTVZfKJWQ/ixn1tkgMnqy
         tygg==
X-Forwarded-Encrypted: i=1; AJvYcCVIbnftSWW+d03m1BezIX1Lbfe783Rp3219HTFJKNCNy/zAFv+YmS+j/d3pxrkxnktzARw+GFqQba6U@vger.kernel.org
X-Gm-Message-State: AOJu0YwfGW7MEizMLKCkPWa5eLgtgvDBV9f3DS58oFNvrea0jLFjrBsr
	VAPudaqI2u/cyb1w1R+csZht3OfQdqL2/0LUveMLCJRnep51l0+fDGQaJLND6RvhXBaJ9gO8aZ8
	zHVi2+lA74WBs3KNH7CG87dtn+OzRpTHqhLt2SDYV3chTMc8sWqHVxdLR52zBy3pq
X-Gm-Gg: ASbGncvR98X4cQXa0TD4mtuTi/ozAplNkzqhbIWBNQWGStbIZCGlhV128H1NoU2c4lE
	CESQqn/7oQZX7H5BubiQ2tsG/iGwqy8NdqLBblssBPm1uuCKtohNqEVMaWmwSRPrxK65V7DlT9L
	QnVq1q3YMNsosAbMeSoaHtvqk+/Xl6uMs/PD5Q8+WlF1PkexiL72k3YlvzkHOHYOWmiXgnSMRin
	BkZTzPERghGRajcOzXyuFYZUftXNojGS/aKlLO9hTNANqvABUWoIDo9Egaf69xiPlzwPY7SnU6Y
	pSWzztd6KeOSe9cELTrA8bC3cPSFPJVBS7BrPDNjXDgjE/CoitpMCZnu8KuRu1B8O0tQcCa2dxe
	4R+hxLshhcEsg0KJYeu1YFPTuGeQPX9OMPuqThEu7yA81gPedCv1yq0td7mC5+6OTQkTS94fBvR
	mud9y2mEMHHz0=
X-Received: by 2002:a05:6122:3d05:b0:54a:8cfe:193e with SMTP id 71dfb90a1353d-5564ee5fc31mr2779082e0c.5.1760889749452;
        Sun, 19 Oct 2025 09:02:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGX12e9u2jTwAw/ohWphMrO/Z/+CwpFfiWoBiRqZoykAWDjj50XtmQqV9+4tCn2aAkVSr9v8A==
X-Received: by 2002:a05:6122:3d05:b0:54a:8cfe:193e with SMTP id 71dfb90a1353d-5564ee5fc31mr2779046e0c.5.1760889748963;
        Sun, 19 Oct 2025 09:02:28 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-377a9578a51sm14051151fa.42.2025.10.19.09.02.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 19 Oct 2025 09:02:27 -0700 (PDT)
Date: Sun, 19 Oct 2025 19:02:25 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: xiangxu.yin@oss.qualcomm.com
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com
Subject: Re: [PATCH v4 2/3] arm64: dts: qcom: Add DisplayPort and QMP USB3DP
 PHY for SM6150
Message-ID: <aruuyvtzi2notuxdoi6mk45y3zybu7dpttpteqrektszkhh4hw@uipxhhy5nar4>
References: <20251015-add-displayport-support-to-qcs615-devicetree-v4-0-aa2cb8470e9d@oss.qualcomm.com>
 <20251015-add-displayport-support-to-qcs615-devicetree-v4-2-aa2cb8470e9d@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251015-add-displayport-support-to-qcs615-devicetree-v4-2-aa2cb8470e9d@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: b5JuJpkdA3ZAXZWl9H1J64vUAjOOZ4PF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAyNyBTYWx0ZWRfX4EUotaQ2vcb0
 wBoPgZq1TaRmiOkv0nGSnj2VeSC9x31d7MCqusnlX4TROCCz12C2/ApPQ+nT50/7ti3wJBLiVpz
 vrkKZV1/Ooc22fWEEg53VCuEN+8DvdE9zo6O+db9pCrqYjHTJLzZ+uKfj6c5uUKN/5O/5OiBqZR
 gbHSzxg6XW2CuZ0/Bu1txSCkmOITPUS49BnHVLbiEwNjXE/N9gvWgH96VvGB/yNpSaUg7q44m6T
 mrHJ5r6weZ4LYCLn0s2B89wpL/0vt54i3bd6OOCTUSEjyGStQbVYwu3jVzRpKs6w1ux3s08bSfr
 S7fV3v3PBrtmCJbO5xpaaiwSWH9bfkVJNlYt2WzEsKh/M1nOuCLvBi7IFMbFT+0wX2aR+MMDL0V
 2A863+9yLL2XXUfnzFh0TV7+6lV/6Q==
X-Proofpoint-GUID: b5JuJpkdA3ZAXZWl9H1J64vUAjOOZ4PF
X-Authority-Analysis: v=2.4 cv=EYjFgfmC c=1 sm=1 tr=0 ts=68f50b97 cx=c_pps
 a=R6oCqFB+Yf/t2GF8e0/dFg==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8
 a=jqVs4JzIjkIIVyEy1LMA:9 a=CjuIK1q_8ugA:10 a=TD8TdBvy0hsOASGTdmB-:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-19_05,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 spamscore=0 malwarescore=0 lowpriorityscore=0
 priorityscore=1501 impostorscore=0 phishscore=0 adultscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180027

On Wed, Oct 15, 2025 at 09:53:19AM +0800, Xiangxu Yin via B4 Relay wrote:
> From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> 
> Introduce DisplayPort controller node and associated QMP USB3-DP PHY
> for SM6150 SoC. Add data-lanes property to the DP endpoint and update
> clock assignments for proper DP integration.
> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/sm6150.dtsi | 113 ++++++++++++++++++++++++++++++++++-
>  1 file changed, 111 insertions(+), 2 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

