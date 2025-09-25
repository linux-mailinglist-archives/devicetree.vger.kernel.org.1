Return-Path: <devicetree+bounces-221105-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D8E6BB9D3A8
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 04:47:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DD0F11B2023B
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 02:47:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB4AA2E62AF;
	Thu, 25 Sep 2025 02:47:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HX4F8QJ3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC782E54D1
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:47:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758768437; cv=none; b=N0xHzb7ox2VJyOrJUajZ69qyVNO+6rs+CI7Zu7xAUimnFsnvz1Rj8Ndj+XiVJVGrP5zdVjYWK90uf+nOHHHFHH+Hqe/OgzALaHHr8JW906C0yi3ac3fMCd63crcSXT4ii7eskODtv/Ixlxe6y9hXK1tcMAYj/Zvgqxz6rLUvPBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758768437; c=relaxed/simple;
	bh=knL0qShSKz9iITJEJ5pqwFTLrmcOR2lgqU1fn+jaaVY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Kewwct8/IP/onV1IpI64G+ka8SHx7+x44sU2G2x8ekadkmnJeBgpEDewCNjl3C8WwxcxAoJepJ0CTUTjt+Zj+QPiFlFlnVMJhwXO5HaenrXD1geEAUZECn7QKocXBOzbTgARuX0zR6yXbKicUNUsLNrv3xTgV965ycUydPlURrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HX4F8QJ3; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P1VDes002776
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:47:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=vmzDde1nY9Gum+QP/kxmg/q8
	dry3hyyGVlLVwLkd+PM=; b=HX4F8QJ3IB7L6d4GE/+g7UqPw04IyNlM7sVMyFyf
	3OmCpJ9X+A/hHFuLuT4w5s0w6HkAT1GYeXSsI2Uo6Kry4P1vYCSFOKzfc/EjsJlW
	GJ/IYnEbYUqzyxKEwfzLXSxZEr2Z/vuAqnHYljJE4+eDHJ99FvLtDiBXHs9HRbxO
	SCcAy8mqGF6ttw0/tCjl2zWgVO8rdVFlskGCaAnd3eb/LBklI3jq+yAl9t2I7sg9
	1quHLjQ/MGW9RcKNeoVuBq+hO6skgvwhYWPs9pX3nj5MEaUkO18AELFdrvJYav9t
	VlW2CXNrzUVisbgqZS4+ve5L7QMeHfms9ykmDnPjmG404w==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bajf11am-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:47:15 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-795cd25af0aso4446776d6.3
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 19:47:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758768434; x=1759373234;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vmzDde1nY9Gum+QP/kxmg/q8dry3hyyGVlLVwLkd+PM=;
        b=n1aVXxTAjxAcrn8PI7+gLQIkKmRWVe0Fp4bxNhISav4V3MC4AoZFxnuU4578v/3bqu
         fzTvTRAgZGuHHLQEXFX4objEOL2ian8tC8G+we/BE3Fy37T3sx2MzkVhAHNE1VFOpbkU
         HWP2WdE8EWpfqxiy3Ur+lglj4sksDs2NYEWNKoVjRkOXYKvjFjlwixJMI5NNnbIAfQac
         ULXGZ9I9JlRHh0V9L9jWrVvPkl9QOvGdhXdaIYyLfMUadvafs5LY9dE0ZDDfpAfHMRp7
         bHXSa8PIxIgv2P3p7ZODhlxaQWlhnhPJFLnzFsDxr+hkGlB4RlbE4uIrygUOBCSybotd
         LR4g==
X-Forwarded-Encrypted: i=1; AJvYcCVFwn5ferzVSgROB1tpmlP5HyeUasjnod+vLx/Ry7rqWzwV9HKuUgvL8NuIttHtIBwXV8gZZmLnFfeU@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8bshF2f8HBdvUe7cxaXkGbomxfwpnTYqwbQ0KZsphv7RS8cgs
	KkOeFNzdtzKtT5x622sJCBY+RQ5Fm931cotjMt94r//Bx+eAcq3LO+H8Gos9OjZsyRHCHKAhKHp
	mjCMopGj4+vd2OvyCKxwKuRR8n2VeSZu8oHN0vS+kSqbxgAZiHtS4oLQBnYAt3Cmn
X-Gm-Gg: ASbGncv0y+H+zwZl2GXZ98l1bssiSUKDtXm4QaRr0P/t2GzunnD52fEy6+Sd7vFZk4n
	6+RYy+mwdIHVgM4Da8oJbgvmBTQvx16I9iLrrIcQXjGIqmPX5ySP9TGx5M+NaFVbb11EG8uq158
	U+40PCXD77r4puG2JDut8qkZiLct9WJM59ZgxpuyC7kaP/0Yvf92BWXGF7r0YO0Pj7cGY709Z2A
	qVPUkkClkzL6a+dSksWgWLyILe3iUPxEJpf/XV4bxLy1tklYgawfliY8Bb/z9afBOip3mtdkRzE
	/NzyQ9MyF7G0PeJGpx0e6sPPWi50s2IjuNq/h+yiIt3wDX2P5gMmId199BwH1/ZAGgc/Ae+HEgL
	dreB/bKmPFXd0crc+RXZfnE6k61REAnV1+BwoJYYXEgvjjguH8dtL
X-Received: by 2002:a05:622a:3d2:b0:4d9:ea03:74f8 with SMTP id d75a77b69052e-4da473535b8mr32183151cf.16.1758768434005;
        Wed, 24 Sep 2025 19:47:14 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IExb7T/OYccuwzgjimDxaVA2LXm9/FSZaMnNzHFBySx7V4Je77xVRXOd4TLu6HqCTkejd5+IA==
X-Received: by 2002:a05:622a:3d2:b0:4d9:ea03:74f8 with SMTP id d75a77b69052e-4da473535b8mr32182901cf.16.1758768433568;
        Wed, 24 Sep 2025 19:47:13 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5831665640bsm259733e87.83.2025.09.24.19.47.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 19:47:12 -0700 (PDT)
Date: Thu, 25 Sep 2025 05:47:11 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com
Subject: Re: [PATCH 2/2] interconnect: qcom: add Kaanapali interconnect
 provider driver
Message-ID: <2mq2qqrgm5x4hj2cnstzsqzfk4lmzhg223hmobrjnqu62facc4@p57wbmkys4in>
References: <20250924-knp-interconnect-v1-0-4c822a72141c@oss.qualcomm.com>
 <20250924-knp-interconnect-v1-2-4c822a72141c@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250924-knp-interconnect-v1-2-4c822a72141c@oss.qualcomm.com>
X-Proofpoint-GUID: GtOUQR8JA79z5ISztj_V8zPjvktmOVCA
X-Authority-Analysis: v=2.4 cv=fY2ty1QF c=1 sm=1 tr=0 ts=68d4ad33 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=2uCcKERadT1UtqjeBP8A:9 a=CjuIK1q_8ugA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDE2OCBTYWx0ZWRfX39HfJ0AaPGzb
 xSj9gswdYQ6L9cDNFBmmbkDcyFHFu67uV3tgVov8Me6LXdo/ZGmRRP2gLgdkoHpJYWw+KvJiai5
 Lko74g6H4lrj5p4BLbVHNno4H1PlBdj9ZUbu1GKcfxPsN07rqRMgg7/SpbFEI/G0ov5cFKdSh9e
 QlEwAO5tYXYJ3Cx8iy8coRS+NKU44zTaYi5I0gZRO1NcKrq6MwN0FgpJq2p2ZTMMgZXZltWgJbg
 ZSpdrzVr2MYXiW7VZCrbBPr/JvhrfOUvMciI+zpCxnlUXaHpgA1qnqJbnAy9rvGIg3+Xpk+b5ur
 3sfAxOapa+VNtMEiN528h4RUJmnGi6gvl/gvgThyeVdsxbpUt61ZmTLIJ+a8tNaxddunzgql/1R
 JoDaXSHY
X-Proofpoint-ORIG-GUID: GtOUQR8JA79z5ISztj_V8zPjvktmOVCA
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 spamscore=0 adultscore=0 impostorscore=0
 phishscore=0 bulkscore=0 priorityscore=1501 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220168

On Wed, Sep 24, 2025 at 04:02:45PM -0700, Jingyi Wang wrote:
> From: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
> 
> Add driver for the Qualcomm interconnect buses found in Kaanapali
> based platforms. The topology consists of several NoCs that are
> controlled by a remote processor that collects the aggregated
> bandwidth for each master-slave pairs.
> 
> Signed-off-by: Raviteja Laggyshetty <raviteja.laggyshetty@oss.qualcomm.com>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---
>  drivers/interconnect/qcom/Kconfig     |    9 +
>  drivers/interconnect/qcom/Makefile    |    2 +
>  drivers/interconnect/qcom/kaanapali.c | 1868 +++++++++++++++++++++++++++++++++
>  3 files changed, 1879 insertions(+)
> 
> +
> +MODULE_DESCRIPTION("Kaanapali NoC driver");

Qualcomm Kaanapali ...

> +MODULE_LICENSE("GPL");
> 
> -- 
> 2.25.1
> 

-- 
With best wishes
Dmitry

