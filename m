Return-Path: <devicetree+bounces-221102-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C43EDB9D37E
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 04:41:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D42E419C5917
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 02:42:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5FBB42E5B02;
	Thu, 25 Sep 2025 02:41:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="SSnJ43HS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EF6BF2DECD6
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:41:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758768110; cv=none; b=LvUWqQtZ0LGd2YkarGNDCuePSEd7KMZr3f5nRfbvHc8+ChXA246jUy6Xj1BmGMJ2fdfmLr88ckgZ9XM6EZE1UacGmNHT6P0y46Zv2Jbra6T4aRu8IyzH+m/6qGqxMVWufi7F/I/3bMkfB0rP0KHPC804SY9WwzT6ZXJOa11kJrA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758768110; c=relaxed/simple;
	bh=7ciLY+0WA0WdD0zQWgT/kOVB7yzTSooA9pRCRJa2KjU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=jZiZ2/9JEt9zCPgy462m8m1xfJOoiHRdnNQF194zbjdlvBGBqSF9YwOilJOgFNn/2+J+on+U3evveXJOw9jByp49wOQIGYIwoyB+XFYpjLW9dvPJbHSY18QoBFDeL08828Xg8RZCZMIgRJpl843zgUBKvb6vrHH+iekQP/+jjpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=SSnJ43HS; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58P1J5Po002652
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:41:48 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=l6roaFaJv6NtbeRVgfZ0Cnfu
	GdOUptJbjLE7JsJv3w8=; b=SSnJ43HSGLwhj3vESbnNlRYDklAMDge9yoR2l7zA
	OtvGAD6SR/fR8ubEgCByKraNYx1yzfG7UkX6hg6+B8LCuTYmfHb/kNOvmRYVyz+Z
	oxytUB0OEwEUUXnSQmW9QpxVkDE53X21B+uDSNfLV+nALUbOz6IZACwN5Xz1785U
	LHqdAX6PvtQlIS5GQppRQYBgI1BBxdgr4ioO9OmLbd4CHH44UWL479Q5vzLTDTDO
	X074lI+OZ5wBBnrs6Lu+E1vDJ9LhtNiyxKkRb6UrviRfZCV3f050LiA1vJ5J/e6L
	fVKR+et/FSVFgne+ABNUgDY/fVw+Fy70ABjPiaXYgE5MlQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bajf10wp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:41:48 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4d59a4c23a3so13294631cf.2
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 19:41:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758768107; x=1759372907;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l6roaFaJv6NtbeRVgfZ0CnfuGdOUptJbjLE7JsJv3w8=;
        b=Hr68NOpAbk5fzxv0eEmkITXIteJUdO6MbMg9JkymR3w+fNNvBzg031/PCi9lg2VwHq
         UAj1GCHrZ7TGXJsUdWvViRYhSmjA6seWLgfrYXsGWuTDZ8ik2FrPQdeKY9Rv5Qq7lU56
         hzCn04kL5x2SLMOPWUsb0F1yXi0nFPsOwk6HYbW8l5nlQ3f3A7hKXCYDGHVLrksGu9Dh
         2thCJeW6Ad3bJmD2alaKjvEg96w+WRMA0ezcSX36/L/9QAVJXvbGnPFjdBZ5EzVEH915
         cZ1SWxUn15A2mw114hMe/UdrNP8e3uipqoDIxeu7uMz5bLyVexm804GE890+oqG+Lj3z
         FQSw==
X-Forwarded-Encrypted: i=1; AJvYcCW+XuutEcVr09Q0AjBGZ9+FWUXsaeobYxis2nFhlB9Wrlm2lcwsKxYBxJNfsYlrEmpsplM/0sTjdQuE@vger.kernel.org
X-Gm-Message-State: AOJu0Ywt/W8L2bnb7qvM9Hn7pibRZKS5SO1X/ZfVtz1XciiqMvaWeqFw
	DmULV8Jt38Fllgn9kwXhY+18NU392vqWbyiWiwQIWZP+cP7CS0H5JUxVF30zsYc+GhpKnue7std
	bVS1zns1Xp3zLD16xuAgB6n37f/PW6e4af36DvAZqz9oFLAU3d00S6fBp1njXZMDf
X-Gm-Gg: ASbGncsCeU/kOX8ghiTWOS6pwn4yRbmqg21UiCUMoD7d8ntvlrggPaMYrNKYWOt9UZ1
	aifYAWwyiJiBs9jrTu38QQSu5k5Y3ZdnbKpC84apCOyvjxeHA3GVKH2FWF8bBQvO0aXVZ0ZTwGb
	JtCcSolGACwWR87SQ2XmzC/2fJduEMITtrbrxDC+1XQrm+pGJRcP1PQY750ljefoz37UXCbBdnp
	KjWEtassx3X8EEgWQUtVu3L1n+SKNo8EfRF781zFdEIj4enVdVwVexpbNZ0Csp8hd710ZFQ2emq
	5OlOsK2TAVnxt1leB5ts+L54f2JBBjg1PhrFlowheCe+0QNWg9PlQ3VAancxK3L4PUHwp57bcmk
	1Eja0W3T17nvTB3RVv7MrTSFMyTALmieNyWtVQqArHXUKY287zbvx
X-Received: by 2002:a05:622a:1886:b0:4cc:48c0:adfb with SMTP id d75a77b69052e-4da4782a6c3mr25545191cf.9.1758768106553;
        Wed, 24 Sep 2025 19:41:46 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEKT8RyctbGQ3mP7DDb/CtYIWh4SsjSRD24MobA41ee3lV6NyrPEs1SAryjLLGpuLO2wIFF+Q==
X-Received: by 2002:a05:622a:1886:b0:4cc:48c0:adfb with SMTP id d75a77b69052e-4da4782a6c3mr25545051cf.9.1758768106092;
        Wed, 24 Sep 2025 19:41:46 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-36fb7fe8750sm2191921fa.66.2025.09.24.19.41.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 19:41:44 -0700 (PDT)
Date: Thu, 25 Sep 2025 05:41:41 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
Subject: Re: [PATCH 3/3] pmdomain: qcom: rpmhpd: Add RPMh power domain
 support for Kaanapali
Message-ID: <fd234vzjys553445l5a2hgdkwoe3gub3ubjzhbmtuljjz3ukvi@y6irjcva5de5>
References: <20250924-knp-pd-v1-0-b78444125c91@oss.qualcomm.com>
 <20250924-knp-pd-v1-3-b78444125c91@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250924-knp-pd-v1-3-b78444125c91@oss.qualcomm.com>
X-Proofpoint-GUID: xks6758ywTkISj2AdfxaqIx0unfSX6Qn
X-Authority-Analysis: v=2.4 cv=fY2ty1QF c=1 sm=1 tr=0 ts=68d4abec cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=hka-zFMH_fk-WL56CYAA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDE2OCBTYWx0ZWRfX0ST014cPKeaa
 gcX6iKI6ePiIjdsE9jNt6efpbOLobVfGe3BTZeWgbw3K6u/4W+EjIljWJl/KTXoq+U2jpm19ghz
 7bXnJdK+aQMYeoOv6zyyAtZQ2hdr4l9/IJr/FwExTSvWKUJma2bR4pHUzYR0DYnco+mWekK9H4G
 q37616V0Vfiz75PTvoqzht0IJ8SwTwv+LqEzr2tm7u05sJ3q9tmgfxEN7vMVHBNv12lJTfntfBU
 +Eg+tgnK5RN9TjqOQFaONeGtvRjC8Jeb3Fgnj/EQEYz+h+dYC45CHUIt3xnK+QaNdxJwRa9KKpA
 8Oj1lkS4SzNnbxty3cF82LoenWOS9stVsokIMhMxMIyLuUJx5G1oRkK7Q+OEQ99t8Ip/U4khZ2J
 3Huh82Yx
X-Proofpoint-ORIG-GUID: xks6758ywTkISj2AdfxaqIx0unfSX6Qn
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 malwarescore=0 spamscore=0 adultscore=0 impostorscore=0
 phishscore=0 bulkscore=0 priorityscore=1501 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220168

On Wed, Sep 24, 2025 at 04:17:08PM -0700, Jingyi Wang wrote:
> From: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
> 
> Add the RPMh power domains present in Kaanapali SoCs. Also increase the
> maximum allowed number of levels for ARC resources from 16 to 32, as
> needed starting on the Kaanapali SoC where the ARC vote registers have been
> expanded from 4 to 5 bits.
> 
> Signed-off-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---
>  drivers/pmdomain/qcom/rpmhpd.c | 28 +++++++++++++++++++++++++++-
>  1 file changed, 27 insertions(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

