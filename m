Return-Path: <devicetree+bounces-217810-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EB324B59452
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 12:52:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9B8C4486040
	for <lists+devicetree@lfdr.de>; Tue, 16 Sep 2025 10:51:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47A442C11FB;
	Tue, 16 Sep 2025 10:51:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="b7B0bIps"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 768162C326A
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:51:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758019871; cv=none; b=JI7OTsS8L8Fb9Svdg3yCIF5HoUAM5eTU4ffwYbwiWWdi4zMifm+d+pvlncSZb9L4NHTxQWeuiLg+g1pvj7Wrp3VeKT195nVFsmHEcfkK5AO4m/sN/wMUiKiCj7nd/+kt5wogp5moZAPGn+YUPowmxjVbJz7ZT5jsXfgULdSpb4Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758019871; c=relaxed/simple;
	bh=kEfwWe+VHc/Nr7dgeDGRdbm0d6c2a2tZk6u9cmKA1oI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=P9SOvukmeqpU+F+GH/bw+Ke0YCDvX9T4KdF+e1FKeFWi62ss4ZJWm7iSmX3jPuFbmwwI8zr7dcIq6Mksv47sN5BPiVH9xHtweDxyc5PD7dLxlgVpagOcPcUNqyF1f0nKvm6FDjmjsdGIl5ubSPChGIlAlF1HHqRq6+QIdD0H5Xc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=b7B0bIps; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58GA4RtV014179
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:51:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=2FWNiMd69SOkpVvXV5XEQpKz
	vB2oZ4Z/GeoK8cF0vYc=; b=b7B0bIpsG/JCcvNB2e1mtJylW/6MvvYxPj8AdmLC
	ieflZFyo1A83dp43fAOjOyV5DvEXR0mRAs99zMGkPdhJcwzcO8iRPBGEw1b9BVmu
	C22vowFK6Ndu46h1AxG68eC0QfHDvDxKgPHlAnU2Y4/I2Ec0m9Cg4Q5Xy4g7ZYfi
	yPWCq+cLnISH2WA8olDxyROzISdm0SVfqY9iJIzKz688waklo4GcAtPd7IncfugF
	3F4ycxVBMea/B3xLS3UCL2+XdL5/lf3WxSSjjD93m0V0W3wZefv31Zk9uMdtyarA
	swQBL8nFyrcP8EOPCc0a1R35Ym9IUrCQLv2S7phXS3AFaA==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 495072rjuv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 10:51:08 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b62de0167aso136143721cf.0
        for <devicetree@vger.kernel.org>; Tue, 16 Sep 2025 03:51:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758019867; x=1758624667;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2FWNiMd69SOkpVvXV5XEQpKzvB2oZ4Z/GeoK8cF0vYc=;
        b=o44QFqbOf714JEEcFFCJAz2RuF2pchjTz9qofTH1AYCvJPRBqMkHU/QDaVwzfrJLFh
         L4XQU0XlCQvE7Qy0xTe4o5fenv3lg1ewKHZXOXSY+Y3XhENjOGc5EP6h1FIBbxe9Gw21
         OasfY1MA40SlIyYy6lWVHjYQEJnEdYwC2TyFKWGjCuYs0G9Au0SZ4jBacy9y0V9NQG+P
         0QB8zWK32OVIE3SbJ3hXVhojBpAmrrpjcTCOYJdaU3TYpssI7DKjNhBKMWgmLhdwsLBY
         +rmklH1CD+75q7SiUUjL+zE9OHKw+bYbKM5hvqqcA4r6PJubrzSShbpKUUm+8V/rQ8xK
         JSLw==
X-Forwarded-Encrypted: i=1; AJvYcCULNK8+hNbFzrQhAWHfkf2uPk9x72twGgupNPKhhaMbzJxQu+V7Ws9BtAQHQ9nCZgcOmh7DJiKQEac2@vger.kernel.org
X-Gm-Message-State: AOJu0YxSH1dxgIrTEJxkXzfVq04hM98f9KM1AJndkqcGQrZ5xtxYr3Pl
	0Bz6NAUqnK/HwrKJInUbpgpWWHP308WQuTJooe5peFZD0d1SVDYu7zj1YvT3mmJwh0dOOSvbMEs
	dzoF2TOXjlE4pTZtWXnyUON7Nx6NwjkcxxPW6yKAuO0A7QsRnRYrM9493/NYDDFoe
X-Gm-Gg: ASbGnctSLYXD6rf1hZtOiYrNP0kR9gMWZHztFeI26CjWjP/na5K91xvUzjN4Xj4lx0F
	YIODezclcBgJOQ94Pi6jGWlpREn8Xv2l43hekyQEYatU75lAZXUqs4ShUHbMoo/QW8mAH1umWVU
	YiYR4H/uB63WD5/Q3plSy1CDWSqWjC8lDUhLC1pDtKIQK4yCSNTpuPWpBOp5pR5YsHvlyBJYQMw
	CQR0+xhjr0rDtv99xS/5Dvl3FiB/6Q4T9eHM/eRR4nQBCAg6KB5PGIk58zc+6kGzjalx6B4VBqJ
	8n5oBMsUmaryvKwIyFPOFowdItaIrfJsgGDn2/+hdbmxxciIVnUOL+RzDw22BcJtnhI1Xp1D/Ws
	O/UFHd9C0Tqkl0WAczIqdo1/4XIpLYofC1fzyrFJbu28yY7IQbO9t
X-Received: by 2002:a05:622a:2617:b0:4b5:d70a:2245 with SMTP id d75a77b69052e-4b77d12aedamr217457271cf.77.1758019867440;
        Tue, 16 Sep 2025 03:51:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFLdtaBJl4Dq2wLZch+XJIZbmZ+n7DyR5fUUJ0r2GfTbCwlwe4XzrdpDgcxuCfKBDWHawqRQg==
X-Received: by 2002:a05:622a:2617:b0:4b5:d70a:2245 with SMTP id d75a77b69052e-4b77d12aedamr217456721cf.77.1758019866821;
        Tue, 16 Sep 2025 03:51:06 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e5dba7604sm4325333e87.59.2025.09.16.03.51.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Sep 2025 03:51:06 -0700 (PDT)
Date: Tue, 16 Sep 2025 13:51:04 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Paul Sajna <sajattack@postmarketos.org>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <quic_jesszhan@quicinc.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        David Heidelberg <david@ixit.cz>, phone-devel@vger.kernel.org,
        Amir Dahan <system64fumo@protonmail.com>
Subject: Re: [PATCH v2 2/3] drm: panel: Add LG SW49410 Panel
Message-ID: <tu26qvyzihyknyzjeu3ycz5fm5mddlvmw776tjbqy7qpguq7hk@unfyoqd65azd>
References: <20250915-judyln-panel-v2-0-01ab2199fea5@postmarketos.org>
 <20250915-judyln-panel-v2-2-01ab2199fea5@postmarketos.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250915-judyln-panel-v2-2-01ab2199fea5@postmarketos.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDAyNSBTYWx0ZWRfX0lpVVyw+ItNJ
 aBXO9cMDNGxrTHpJPu6f/hKmAUqv2ahE0XqPp81ClPOqoln9PTpcdAxqPscQrZIamf4Ci2c2Lwl
 qGG5THLnZjmLJrC+8vaK81kZ8eprvwS4/UYqLJxAqgogC9XMvlzKOK4sCyOcUUHqUiqfHjXGeAJ
 Tyt7OsWyHBmCsLO9mjteY/7n2aKpS4w98h2Pls+0D9ernhMkOjXlZDJvqG10Cwo/POAvEzGbxWa
 ck7NX+08W0aBOOCHJrHSRcCtaoUlXjKonNGnzH50lyz5xHIWudugtrHANWYRaUnKEhhlKg2NeKH
 MxrmjeQ5tYoKYpeyZDWU6Kxm6dTjD7ARWNbnUQedQjdG8gEHwZMirnt4EAzCzpynlChJ2GVMl57
 TIqS4I7s
X-Proofpoint-GUID: Aj6yRYhndR_UlWhwh4MARwR95x-bSSQr
X-Authority-Analysis: v=2.4 cv=WcsMa1hX c=1 sm=1 tr=0 ts=68c9411c cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=sfOm8-O8AAAA:8 a=Gbw9aFdXAAAA:8 a=EUspDBNiAAAA:8
 a=XYq36MTTh7cM02dhETgA:9 a=CjuIK1q_8ugA:10 a=dawVfQjAaf238kedN5IG:22
 a=TvTJqdcANYtsRzA46cdi:22 a=9vIz8raoGPyDa4jBFAYH:22
X-Proofpoint-ORIG-GUID: Aj6yRYhndR_UlWhwh4MARwR95x-bSSQr
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-16_02,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 adultscore=0 bulkscore=0 spamscore=0
 suspectscore=0 phishscore=0 clxscore=1015 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509130025

On Mon, Sep 15, 2025 at 07:32:13PM -0700, Paul Sajna wrote:
> From: Amir Dahan <system64fumo@protonmail.com>
> 
> Added panel driver used by LG G7 ThinQ (judyln)
> 
> Signed-off-by: Amir Dahan <system64fumo@protonmail.com>
> Co-developed-by: Paul Sajna <sajattack@postmarketos.org>
> Signed-off-by: Paul Sajna <sajattack@postmarketos.org>
> ---
>  drivers/gpu/drm/panel/Kconfig            |  13 +
>  drivers/gpu/drm/panel/Makefile           |   1 +
>  drivers/gpu/drm/panel/panel-lg-sw49410.c | 502 +++++++++++++++++++++++++++++++
>  3 files changed, 516 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

