Return-Path: <devicetree+bounces-208035-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A0B6FB31683
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 13:42:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A69361893BDD
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 11:42:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 28AB52F6575;
	Fri, 22 Aug 2025 11:42:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OiaUG0Bt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1CDF2F49EA
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 11:42:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755862950; cv=none; b=TUS44sNF9U04+rCymKsqSZ6zUIiYcVQI7KYmPXgyJZBXJSPHhpr/3+MTsBCSpTzbaZ0udVeEQ4aA1CPz+a4o0anOo19ANO/eoVGLPiu8LjPw+PWh332hr9jIWSfQlzLpdF97jqKM8mqSspmR0Ka3fk5GGqIooBKd8ZdhlbZB0TI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755862950; c=relaxed/simple;
	bh=3o+FmQxfh3Vqu+734KWY67K1eSRB0PrsBChmW5BJDQI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=fbRQayXFvjuFWtL/QtMHVehwxTEHiP5iRZ9LRD+CpxtNBtXdDCPhZWQfantlrtKkOJG/WTgrbP3gkPm9mhWwuyqlbkq44mHoD2U63HdPnI1SWMr8wajybweVy8jljuSaCwP9b3cp056KkDPLVwGE0o0G4h0OM4zAgxr68ihvcTQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OiaUG0Bt; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57M8UKRg028630
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 11:42:28 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=KAhSD2vjv/ePHUmD+gzyEEp4
	2L2WxYKoMwQm05Sn2Yc=; b=OiaUG0Btg4yL0nRWgSNlhwZClARkvbc61cx7zd60
	ACHg8wc7y11jD3eOM/32pUXH+TVk8km+31XcXZjI9FSulMPjp+t2vo5CuE1EPTc/
	XJVsEUCoRTaafNgdnv/eSPRvzLpVkMczXOoMoj4hZARV8yJOGV/AZL8F63otkVpA
	z0DppPkqHX413v8iMPvxF2ZqVDGWZ9nwDGzC1E5Zm20V4bz8r113YK4RrDj7VChB
	jpte2SnZs5FytqPkJObC0CkPcLRz30JurOImTJv4Bz0bwS2OcshjVku77l+H8s5s
	RXbqlJ4FYde8yKvsJ7zOnzJCullQPwo+FJdEU03xA+rPDw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52cs1yg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 11:42:28 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b10990a1f0so59183001cf.0
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 04:42:27 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755862947; x=1756467747;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KAhSD2vjv/ePHUmD+gzyEEp42L2WxYKoMwQm05Sn2Yc=;
        b=j2D79MTCBWiYC1wFSCN+trXX+09WRiPs/iNaop5LDtorrAHaPTcDCU5nfQyE9OzNg2
         QwvWS0MMk6aCBciPP/nye+aqMf+XLtW0obCSAPrOX9BIzUpy55pB0njcXlzlm6CXe74L
         pbevtcm5whu/fjNcykdndDPoKMIKURqABHPxbJv9vmn3+1QehZRGrFz5zLySOcA5KP8O
         kHcYv6xdiCg134eqPQW3wGBTbEh/Pdm1YiRL/9tyfVxhXYnPWd8jbWaeHPpxLVTFanlj
         MtNeF1XcRrZ5W4vAmyfCVMkO+4h3lwFV9PuYeYA2W9413CLUW6kyJjvYaOzP7+sz+NLO
         hlQw==
X-Forwarded-Encrypted: i=1; AJvYcCVIcY2w9MQKn15S+d/NPAB5gZn/+GYl+CPhUaxJlk4tC4MxGYgEofBqhaqUewQpoAe4iuSj0b6dWzdx@vger.kernel.org
X-Gm-Message-State: AOJu0YzkCyXeVmJptoMc5ydW8YM5QFEAFWUsRKfL981b+qnd78O637Vi
	u0Ur2aj2Ppww0yLa2HckCBkaJ+Wv0P00hzt26Z3nDAs/zwkX3KvliRgcQLbFDHkRoGJraGCjHgW
	oYpcIhcRo0DmHrZN0eGRE1x9vOITmDO4Z2eENztnDIRoVNvRkLZtpbiq8sgKaIEoR
X-Gm-Gg: ASbGncsDMwzUJi5ry58oq674faa6/ok3pJtR2LNpE/0Q8Qu1F9AuDBIX9IvJWFtuFUR
	ECypxXjpUZ7EwCo3giTNa377e+lGNKjgPhxOrgPW8U/N79KAVnd5/aVQMnyi8m9+9Rcx31rhlUI
	LTXHRzGMIP4egU5h1rmQZp4rbIbrQaM1XC2X9pKRYwrDZ4V+fJXPsjIIl/VSptR9R07qoWKE7od
	P6sDvoNRJTWLxzW+C+RTMiZrxb4eV7pulbYnthklNb589BazsMzcxvJEVigtpBdf3VMt6gis7Rq
	W73a8b5dZjkTgRGgpY+3Kws51kxqvhp6dDVgyggTL7qiAe3olnDJ2k7T3qpGcxQtJSKjsLuIYU+
	5AXz0NER5m/ze3UxMhg2e5a+TbtlkraCEFDEp7mDGjmdbzSejEBbK
X-Received: by 2002:a05:6214:628:b0:70d:47a7:72cf with SMTP id 6a1803df08f44-70d97124af1mr30644906d6.24.1755862946606;
        Fri, 22 Aug 2025 04:42:26 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEDtB7Zynj/rf/xXI0GvnluKkqYde7D50ORiC0miS2xPMWbtzXkTpNJzvnsT5Gfpb6b73VP8g==
X-Received: by 2002:a05:6214:628:b0:70d:47a7:72cf with SMTP id 6a1803df08f44-70d97124af1mr30644576d6.24.1755862946133;
        Fri, 22 Aug 2025 04:42:26 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55e033fc2e8sm1537277e87.59.2025.08.22.04.42.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 04:42:25 -0700 (PDT)
Date: Fri, 22 Aug 2025 14:42:23 +0300
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
Subject: Re: [PATCH v4 1/6] drm/msm/adreno: Add speedbins for A663 GPU
Message-ID: <atomptaspsr7cfmqs4v3lr4lgeufbwq7jqz3lf72r2rxhv6emg@uhx443xvylz7>
References: <20250822-a663-gpu-support-v4-0-97d26bb2144e@oss.qualcomm.com>
 <20250822-a663-gpu-support-v4-1-97d26bb2144e@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250822-a663-gpu-support-v4-1-97d26bb2144e@oss.qualcomm.com>
X-Proofpoint-GUID: lQv4dYPNgRdJpdKucFLC8KGyf7G_eqi9
X-Proofpoint-ORIG-GUID: lQv4dYPNgRdJpdKucFLC8KGyf7G_eqi9
X-Authority-Analysis: v=2.4 cv=Xpij+VF9 c=1 sm=1 tr=0 ts=68a857a4 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=EbwLtv1J8F1BF5yYxN8A:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX2NfNIP36x1Si
 SzKIudiUjqciMkKQh+VXXRsz7lV72caeGCYnduVTRYm2eS9RuXfX2cQ8HX0GlWQxSzGNUGfl7oH
 fK3B8VNeev669xKfd0rbawjCzvBL3HIAKqLLRDD3Q5VXT60qj3YfRRc5QDVlLb2QgBSQ9XnUb5x
 5euej3BZ+jooyG9DI5J4BbHh25kQMoFEhSTEcehBbJLENjEeS0WC6fpq2AMugVuW+nhGrRgyDyp
 0yrqiYPZQMcvRanoiljhsT8cJZ2/2POhRBNOlF7zsBaRDJ8X9wqIxmvZy0TQ+feeSPivGaMWF3g
 /QZVArHKM2DZKKkmtK/dhJZhZ1j7GIoUWBVeLjFPb5c16zUTo2ywylBgP7jFQ9FoDuyIo2IfVK7
 0peNq8c6qxgrTBLnIa35oVqOic9E1Q==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-22_04,2025-08-20_03,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 clxscore=1015 lowpriorityscore=0 bulkscore=0 impostorscore=0
 adultscore=0 spamscore=0 phishscore=0 malwarescore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013

On Fri, Aug 22, 2025 at 12:25:26AM +0530, Akhil P Oommen wrote:
> Add speedbin mappings for A663 GPU.
> 
> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> ---
>  drivers/gpu/drm/msm/adreno/a6xx_catalog.c | 5 +++++
>  1 file changed, 5 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

