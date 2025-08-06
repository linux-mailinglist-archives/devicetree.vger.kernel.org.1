Return-Path: <devicetree+bounces-202072-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B0874B1BF67
	for <lists+devicetree@lfdr.de>; Wed,  6 Aug 2025 05:47:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6684E18A5B86
	for <lists+devicetree@lfdr.de>; Wed,  6 Aug 2025 03:47:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 70B021CEAB2;
	Wed,  6 Aug 2025 03:47:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="mzCGJaoS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 03CA129D05
	for <devicetree@vger.kernel.org>; Wed,  6 Aug 2025 03:47:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754452027; cv=none; b=sUdeBLjwPf440NwoEoonqa/vFdIZrwJHJYZdOfy+I7IMc3jgHM/WqQmXY52y8SMSZsJT3BBs5Wycup4yjjY7IRxHkiBi0rNf6wTvYrgFWBOIee6uhDg7w88ELvYeGyErA52JY39ATYOcNsZjNroJeaVsgQP8VCYag2cc8tDzq2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754452027; c=relaxed/simple;
	bh=SZNNbsaDOLAUvUge4L4R7nT1OmTDf0tURWgAzVUteLA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=kF5k8e01Bv4yG3P0h/CgpukLNACmRZVYpVivXkC5R5WV0RzZQRzxgCaFpiSEJny+b9GUD6i+z/GGznobFNQaMHO+e45WwhpJQNEkID/k01Chz9YbVidtz7OxQX+XbebYW7tdJRTwG5d4CqcgKaPYwtXHJXH9FUpqy8YhS3n/RdM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=mzCGJaoS; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5761fGxf009770
	for <devicetree@vger.kernel.org>; Wed, 6 Aug 2025 03:47:05 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=uzO3gUvM2oUa6aLeaVCj3dH+
	MS759piHbjXm21lQVQ8=; b=mzCGJaoSZ6f1FgMO9zeG/iAb9tlRkfedI/WzWEC4
	LcHol/+wg/+ZmGqYtYExKN+kWeXgPNAnDtg7+NSuTtEFo6eTiSJ+82NQ4022vci9
	/ZZPLtUY9J03B1W7pLyDCk/C+3Vlw5NTkBwXkOy9/rnXC6vT2dV2bF5mQk/TBScH
	d9VD6cpp7NxN14fnq39hAg7sBv8X6RvRmxeyiLbuy0h9lsy48MIwCDw2wNrBlksj
	2PAY6PMSpoFvIKhwzv0b23KCPbDqyG7+VekHY/Z8D4CybckxEOcswoxN+sAkRBPn
	r90iR0zqHIBrTP5DYFUetO0iG+Xv9YvdSC0e8s4tgd3LDw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48bpy89afg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 06 Aug 2025 03:47:05 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7e7ffcbcf7eso479410685a.3
        for <devicetree@vger.kernel.org>; Tue, 05 Aug 2025 20:47:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1754452024; x=1755056824;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=uzO3gUvM2oUa6aLeaVCj3dH+MS759piHbjXm21lQVQ8=;
        b=dH6GaqZtD6uUnPFoGiMpzS3drnziF4G4IZvNBWpOcy5+G66ubd+VCHVY7UjQaR068P
         l/amIeAXAjJB+tyVx9Vm14fzVdsdKH9mmVYqDifgmOTcbTimQR76QEdL1pyJ/pvSly8Y
         +cHn3BMfFYh6BtRy2lZR3Vwxsl5ePUK8/AYwI28eB3ZLB5dIJ3HYG63ghIq0PBHRjwUy
         bF+5oO1F1tXTmj4TuQM6T4guFHyrU8qv7D8tgYS5QZcY7YjevNJ5E+STyUC0ZpdeLyhU
         qVl2fUb3qQ+NspYAKjlw6/rjzNYw4LcsZuLMQ5IRlaL5opw+mp0L4/PtEi2I4H7UlLIa
         AIfg==
X-Forwarded-Encrypted: i=1; AJvYcCVZXvZIvyEIStt647yD50ef0x9mUEV3TafugGoP1HNIbdquol3efKdvadEpaSM5hsa36cNSSb0IOG90@vger.kernel.org
X-Gm-Message-State: AOJu0Yx+Pu9Rq2KpTaMUYfVuoZfTEjuMQcd/ACLd3wxvY0eLQ/z0Rs1p
	5lbQZJqWFsb3weqwiKD0Ev8cCIl+ytj+HOBM/tpIFrBWM6uzHv2iKWb+DVjeFjO6F0oeQQ/r8dz
	3biks7qlQOMBQ4/UYSA7pvkwqAW7d4N47EKDzCXSqbd7ih05l/FH9/o2FgRQhbSSw
X-Gm-Gg: ASbGncteNL1GEq4+3YyKJTGHAkvmjtt/gkEmUc03+oiVNvnPxo9lnTnIlQmf6nkOHNH
	KW2itWRL0RaNmIIK/G5qh8XBxkoth1LpecWm3fcs3P5Q0uJS/1w06mElExtHN1t2ZVIJLQTYJt6
	h3uSRvUcp1wAc9okjWRsFQgOD4k/ZFBMy4oZe/B4R2gUxWMuSeEle5B8Ktumin2xGHzpGYWxkWp
	znYiTgvA/bKDDTiVKsjqOEOQLq50xkDH+IBKiD9T3ecCvVkkYMXrDRaGJmkDYqriBlXiE3v/OCy
	0tZeiMraPU1QAdSe8DmbXvyz3S1v9r0pzgS0ebbdf05saTrWYYUiXcd0Pshds+HBXQqYGYUpVGN
	Wg7MZWczyFMsCkXd3LQtAjD1FEmTPUHGOq3AfrvLJbtdd1NTTGBRn
X-Received: by 2002:a05:620a:aa13:b0:7e3:49b5:d53f with SMTP id af79cd13be357-7e814eec6ddmr188021185a.34.1754452023484;
        Tue, 05 Aug 2025 20:47:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IETZoK/bA2Y9Krb11P0NcogumIV9weE+6Fu9JMkAUX39k+KYb80V4r912KnrkZIKfzAnXHpaw==
X-Received: by 2002:a05:620a:aa13:b0:7e3:49b5:d53f with SMTP id af79cd13be357-7e814eec6ddmr188017985a.34.1754452022876;
        Tue, 05 Aug 2025 20:47:02 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b88db2214sm2114064e87.177.2025.08.05.20.46.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Aug 2025 20:47:00 -0700 (PDT)
Date: Wed, 6 Aug 2025 06:46:57 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yongxing Mou <quic_yongmou@quicinc.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 2/6] dt-bindings: display/msm: dp-controller: document
 QCS8300 compatible
Message-ID: <b24ln55wgmjzksugbowgilxqbnp6d6mgq4cdqljrj4jftuefa5@gjcszc3t4bqg>
References: <20250806-mdssdt_qcs8300-v6-0-dbc17a8b86af@quicinc.com>
 <20250806-mdssdt_qcs8300-v6-2-dbc17a8b86af@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250806-mdssdt_qcs8300-v6-2-dbc17a8b86af@quicinc.com>
X-Proofpoint-GUID: kzAA1sE7GdjOSLa9Rq-6zNGFFSZWoifH
X-Proofpoint-ORIG-GUID: kzAA1sE7GdjOSLa9Rq-6zNGFFSZWoifH
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODA2MDAwOSBTYWx0ZWRfX6tPntx1X8ztT
 +M52gTRvUFKZAT6FLyQfYj0uqhH5GqjxdptEvTbJISWj3GH42Z3cfAc98dEDOYZE17M6OJwR3qr
 AHXTL8O06AoZP8BTPnSIno7ZhKVqF6NVacUHK2d3MbteGd93/AllyGZlfYvrd+IWZ09srAMbS4x
 z7itiBMReZPqZVrwry/ianjOL/el3h6CQC0IsZQhTN4oA8aS4pxc8qLaPD4G6E/PHt/lDxJAXX5
 BeYYYDx7/OWRnxWMJyVrun/TDcpNjdAznBW/xsCOGC2kTkjTLq6ziq+L5EAvWi1e49jMt4jOd2v
 Z6vUIdZiOdQDJiIfm5MNPcmWr3nQuGd6jTqxLyYeJI6vQroTm0Kvd5LtPSXmBbxLow9OuWsrwdj
 dpBE7yTQ
X-Authority-Analysis: v=2.4 cv=GrlC+l1C c=1 sm=1 tr=0 ts=6892d039 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=COk6AnOGAAAA:8 a=q-PZGS4JpPPfnBF8F2QA:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-05_05,2025-08-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 malwarescore=0 clxscore=1015 suspectscore=0 priorityscore=1501
 phishscore=0 adultscore=0 bulkscore=0 impostorscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508060009

On Wed, Aug 06, 2025 at 11:16:46AM +0800, Yongxing Mou wrote:
> Add compatible string for the DisplayPort controller found on the
> Qualcomm QCS8300 SoC.


Typical comment: you've missed the explanation, why it can not use
fallback.

> 
> Signed-off-by: Yongxing Mou <quic_yongmou@quicinc.com>
> ---
>  Documentation/devicetree/bindings/display/msm/dp-controller.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> index 2893f097df826a5f941fbb754fb4a96a1e410a70..f5930f29c91ec95e9182c7b8ee83c0549c6657cc 100644
> --- a/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> +++ b/Documentation/devicetree/bindings/display/msm/dp-controller.yaml
> @@ -18,6 +18,7 @@ properties:
>    compatible:
>      oneOf:
>        - enum:
> +          - qcom,qcs8300-dp
>            - qcom,sa8775p-dp
>            - qcom,sc7180-dp
>            - qcom,sc7280-dp
> @@ -186,6 +187,7 @@ allOf:
>          compatible:
>            contains:
>              enum:
> +              - qcom,qcs8300-dp
>                - qcom,sa8775p-dp
>                - qcom,sc7280-dp
>                - qcom,sc8180x-dp
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

