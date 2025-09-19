Return-Path: <devicetree+bounces-219430-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 63B2DB8AF77
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 20:43:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1FF155A6DAF
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 18:43:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C00925D536;
	Fri, 19 Sep 2025 18:43:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="K/PK5xiK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E40C25A2AE
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 18:43:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758307385; cv=none; b=E44oB+LcE/eCfvcX5dB4pV7E89SdtA/5f7axvpET6wsF52b2+W2d6c6UO4t7VYD5rbcvoVJdNKgI5OclIoTnpYnwfF0LQj7Tlm1ZPuPCR0NLtWxHU0PQjAj5UA1Fc1K+21JY1qnLxbTjD+nYjV65Ko8/GvY6mSh3phOv/Rd6+9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758307385; c=relaxed/simple;
	bh=vrkEpEkg6sDXkk+i+SIpLer0i3cfnFivhO+rvdi1vww=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gR+MhyyY+VSlUqu9Ubr1cjFIEytc793Kud7FcTxCVlrbjIOqsipeKtQa6rsdQMk3JGqmiJUcg85vDwHEsvI5S+T3qztv0NhcmOzdWXEmHtIN20/XPJqVhGNYJLkRDKTIA+feUIlbP6ZJmNNnzGmPwWppy04y0+lmjykCGvaRSFE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=K/PK5xiK; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58JEbbP1032419
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 18:43:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=iDUVT1j3d1+CSBXfFOTmyvH1
	fdhZ2PGbb9X8k35Q3Ls=; b=K/PK5xiKgRdHln+rXzsf7M3F+hfCe70jVbWY+97H
	vb8vd4bOKlTFixKmvI69F2HTXw9VGxrQBm46A6YdcUnOoU/SxCmibMOx3jPVlOdW
	EN443q8AcfUV/InJZoSJ279xcEKACXMiBb9dq946wlZRV3RynEUHF3+IQJgtNm5A
	xLR9ytZdCiRF2T8hgyeB9H1YY1+F1PO4SQYthEXMuZX0w58qwerZlXGec1hl44nC
	FkkhWac4GEz4e31yLaU+3N1wBViYWHKzovqtTJBvA/fVLo6XGJPLwLAi3qD+MNwq
	5+1T6yT6KtUTFgjiJg0XWSgIuHSLxemc+SaAdWnrcJdS7w==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497fxyuh3j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 18:43:03 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-78f6250f0cdso38970506d6.2
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 11:43:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758307382; x=1758912182;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=iDUVT1j3d1+CSBXfFOTmyvH1fdhZ2PGbb9X8k35Q3Ls=;
        b=FKOmOjX2C3PXQB914P1zHFk0B4VduAX2w6vovwKFrmPeb+qA/poVh0CKH70Hueubnj
         p1PhVtvczZA8hQVMNdWRaUv+TrnmRG2vmAv3vwiqPuw3NwsQOEcvrdz7OJBcbJwucz3a
         0qacNHvG+y3He9UAxAcFrHbulaNbF2RwgCZHlFIh299Zsfhn4Hbh8MVIM1pq79LeP+5k
         DMtvfVsLiJsIsbe49Tvl/+wDCazzl6XmQeJq7DOFYm6n3STH6v4peoRNEb6rEqbXQu10
         T9XRHnldI3cdbYPzQzKGvBh4mSLbSSCzn6Jd/2MB3lzaZnmqxdjkOGwhOBDptKN5xnsq
         QCQg==
X-Forwarded-Encrypted: i=1; AJvYcCUdkPP6u+hz+iRBi84784DZ/m212ZDArSfmEKKF2ZjxYvwRMhzPE54/o4wJm5npij2+a17my+bZwSbW@vger.kernel.org
X-Gm-Message-State: AOJu0YynmDrnj3ckpzilLNwot4VLk0k8zTHfa45z65sJt1lc2yb0qeA9
	BaosyZ+ndpyuHDjv7t6dv+ZaAo/fJHLMHqZImNqHyPTYyowxvfc/C+23H+B9SW/Tuk8cY0/X34b
	aO9yM/Oy+XNw7wU6QnXLigrjThbZPRF5q8C+m5KBZ0u9bqUsClweBxNN6sGHC7mk2
X-Gm-Gg: ASbGncvtAbMlPkExH3X8FCFTzL7Hs7hpE+Q6wgCPzzujSv9C7mAE39AESklDTz5+eFJ
	2jIchyOriO0SbvpkmNwhFqEGqj5i5uuTOiavjdw6DATt7kyP1iKiVNt6f0v2b+NBIT8GFeR5re5
	hTksU0xRAU67B9Khrprx24JrDA1YvDudZenaCHPCNd9iAD/73CVIakGmRA97+Ynj3PC7TrIB8nU
	SAtGSAHJ2gG5sq41MbvSlUIrHYKXXcEJsn+5ZDOQNhXbVeoSuIqIMT0YkCi4e+0PDCOCSu8PMGg
	wpg4V3r2wdOCf596zbCHmj9+wyCvI/HYupnStFdC/lGijW8441ygyKnTl7O6W1da0au4FmH0P9y
	P6Ljmle+Ugl/Yz0SR+xf/Xi5JB85dQ77NyfS/5v08F+FElBBm0bMb
X-Received: by 2002:a05:6214:620d:b0:79e:88e2:1e60 with SMTP id 6a1803df08f44-79e88f16526mr13039936d6.29.1758307381851;
        Fri, 19 Sep 2025 11:43:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGBKob9aSVicKYLHzXQPUikT9E64t9XkAJpeGDW6LHYdfXs9n7cQ4eZ9GnUtn4na0s2vbgtzw==
X-Received: by 2002:a05:6214:620d:b0:79e:88e2:1e60 with SMTP id 6a1803df08f44-79e88f16526mr13039536d6.29.1758307381248;
        Fri, 19 Sep 2025 11:43:01 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-578a5f447f3sm1549103e87.13.2025.09.19.11.43.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 11:43:00 -0700 (PDT)
Date: Fri, 19 Sep 2025 21:42:58 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Subject: Re: [PATCH v5 09/14] phy: qcom: qmp-usbc: Add DP PHY ops for USB/DP
 switchable Type-C PHYs
Message-ID: <zhqm6bqnlx3cu2rlv2wdhbhnuwc35jtia72tjotchyq3utla7x@45ws52wsii3w>
References: <20250919-add-displayport-support-for-qcs615-platform-v5-0-eae6681f4002@oss.qualcomm.com>
 <20250919-add-displayport-support-for-qcs615-platform-v5-9-eae6681f4002@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250919-add-displayport-support-for-qcs615-platform-v5-9-eae6681f4002@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=e50GSbp/ c=1 sm=1 tr=0 ts=68cda437 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=gZRqL4tbKlavufozYNMA:9 a=CjuIK1q_8ugA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: Z6g-jazbTl5SW6Fum1hyXVajljEnBrzW
X-Proofpoint-ORIG-GUID: Z6g-jazbTl5SW6Fum1hyXVajljEnBrzW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwMiBTYWx0ZWRfX+11fR/GFkQVT
 Z8w+kEJsFvP8xsXWAALHp8iqiQNmRgBqzPQAZjjFHdSaEwzUe2JLqeZHla3vuktkuvXRqonJls9
 CQ8XVM6O6RcL2eiC1siKpiHt2oqu2gClZ6amQ2z+C2VUBdo0W8YstDbaGWJbl4DUzSYsdZHNnSp
 7rV5CFwdrTETJUyaMXer5PQK+2NeLxrWniw7gWZU87/0dlfSSefMTedSLmrQtMO9uWi5iRv+I5D
 9vvRooW56zJ7hLrFnLud3+wYSiay9Yq0e1ScyyGNFV95uO7Imfi6f8wef+AjdH9X/yQzJePGFSb
 qq/zTgXsqX8fRxsLg0OBP1P0GRpQzAZxvpgBN/rsPXzVed+nwhTa7rZeOjaq5Xc4S3Y1RccBYwK
 /ti9whyE
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-19_02,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 clxscore=1015 spamscore=0 priorityscore=1501
 phishscore=0 malwarescore=0 suspectscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509160202

On Fri, Sep 19, 2025 at 10:24:26PM +0800, Xiangxu Yin wrote:
> Define qmp_usbc_dp_phy_ops struct to support DP mode on USB/DP
> switchable PHYs.
> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 194 ++++++++++++++++++++++++++++++-
>  1 file changed, 193 insertions(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

