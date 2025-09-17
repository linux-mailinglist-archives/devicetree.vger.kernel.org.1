Return-Path: <devicetree+bounces-218399-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 93C8BB7F75A
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 15:42:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A70435856D4
	for <lists+devicetree@lfdr.de>; Wed, 17 Sep 2025 13:40:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BFC31316182;
	Wed, 17 Sep 2025 13:38:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HtRC0glf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48D8B30CB31
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 13:38:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758116298; cv=none; b=f3uLocubbbxbuTtrWRunPDSKljRvBCCLn9Ln7+Qf/PCcDwoJX1CLBoLaEWF5kpcbh53En+INBtKSe/ZPXV51VuHr57GsSO00EKsdduOQVM2PBSo4ijCgjbZjrX5kkTQ0t+pMvWp9oiOV5zvji4kpHq8ACktek6IlcQXQUChHCyo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758116298; c=relaxed/simple;
	bh=9AWqLs/ayntfczwGA7UyGJrTFP6POWFxb5/w/HcMm70=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WmvZjJkqZCYf1y/wsb4HQIrOJGFvgzYH3gaHQYqISy25UFy2FqIdO2e9p7qd4tnfauknZ+0xECZgwTtrwvGgIb6LzCqqzrr3/wuZkntekSeQZel+Id0fSnVv9Z6I581o48Uu0WS8irur5KC4KjbNslrMLLges6pXb5JpFeglsoE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HtRC0glf; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58H8XZCv029493
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 13:38:14 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=+KFU62nDlSmYNsWvrE+F0DGQ
	RnG1HQg63ixfyZ2aRqM=; b=HtRC0glf7CNFzuwHtsfRwqyDgKhBlUsfksVgpfwo
	4AY3nqZ3sNJCHbd4/9QdZ5KLmArBKURGIsMT53j9fQYEXh5sJ7/FsMMK+jsdJr5m
	cie55z/ysOAmOiIok9+8ShtxBSLEmbhXe7kQm/0e3yp3pYySa60zpeHo4/UMGPfH
	UKh09MpJU0E9gFrGQ2VZhCIXWugpWVxwm20FnM8YbeEos+yPzxspl9VlJIvVcXjw
	SkUaMcCDvZ+thmSG3rP9Pgjm8zQSPBTkKV5EF9dS2NsF4RRY8JmJShR1WeNiBeyA
	tRYFyVkhIN/+6EUvFXUjVoojjIYbm38xREyr6rgSlhDz7Q==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497fy0thdu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 13:38:14 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-76d3633c86dso120809296d6.0
        for <devicetree@vger.kernel.org>; Wed, 17 Sep 2025 06:38:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758116292; x=1758721092;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+KFU62nDlSmYNsWvrE+F0DGQRnG1HQg63ixfyZ2aRqM=;
        b=I68KEFRMThDhkVTmLBs5Rzd57EP6968/iV7g2JC1QpTix/HIdP1AFl76tkuY4TzEeo
         s5uy4+NbTtskwt4zTV996PIbm9JsRGLSN0L1z+uYojPZCoQ123p+hpq5WFtUPF/uvAUH
         wW64RItXYZNQ5ckthiOJqRDWqSLRFWFhnSYcebKiZs/qJaEUhsYAlcUC/Ps/yVwCxQ7t
         LHAiQ9+1KMzNBAkH4JYU+gbOn/H1m2rRAWLjp4EqJNJmWCZVUxCH9Rrg9+YFdLnAC09a
         hzN0wWbVDvlFjR1zFa/9Uf24E8gV999Xdy7QCnw0t3AzLcUkB9xQIaxt/RdSOEA6new3
         B7yA==
X-Forwarded-Encrypted: i=1; AJvYcCVi/SGtFp3jgfG8tWP2n92Nmds1smalCInYoMB8HgCgfZ7k8f0pPPze8e7vt7bKGGJfV5b6eg5litic@vger.kernel.org
X-Gm-Message-State: AOJu0YzdhSItj8HjtkcnIH2zoAE5VCzwfMsF3WGfxzEjp5mWLP4QVaVE
	wHhTvsNZe8M56S4V7ROVGbojc4DYWNSrx1MCCfD2byDo26UqE+U6AP6CyGZwvi93qbzWs2ykQBu
	mCmUImUmxefswy68lVqCfmnSb6721TQPYa3TqHdDKBWJwFXZRpJQEyl2s+7rRrc/2q5Z/jJ64
X-Gm-Gg: ASbGncv+NWLSxzs79xsoPezzWrThVURxoTU2mDsqvjc//ucw2U3Yerbbs2tyEkdC2Hn
	tTKooe/i110AIz3o8yAOptJjGFrycCs+i/rIUcM7gXIz7uUpg5+gDtb/XYcRP/X2+QWmaPJNkgt
	98+Phj/MZ+kxfJE0NlLGvnTnX19epvCu9AYAJeRfHuuSz73KEQJDakGBkJ08kqgJbiXpKT+qW9I
	4Xi4VNDEEXtAgD9Jc9SqTiNPt7ZlC+Vl603sbDXk0iGrU+ZF+C9BlF97WZB8F3kx7FCU+Krn70e
	uMjp6sF4ulInfL64cXjTIkQ4E2e4W2wG0UE2s/j8QZZ1s7mv0MP76Gfrjo1L9daBvJAaZRit0oj
	k/S3wlsbiX5zIlBY3yud+1TqdVxngQQFa5da9+fUssnpstCuTuv13
X-Received: by 2002:ad4:5be7:0:b0:790:551a:a689 with SMTP id 6a1803df08f44-790551aa6d1mr5920956d6.26.1758116292403;
        Wed, 17 Sep 2025 06:38:12 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE1nPyxnUe1a4SQooIlckIH9ZJqLc0nczYSng4R3dxSwdKHdCFNkmzXBw6/lVvnS5Wpi8xtJQ==
X-Received: by 2002:ad4:5be7:0:b0:790:551a:a689 with SMTP id 6a1803df08f44-790551aa6d1mr5920226d6.26.1758116291647;
        Wed, 17 Sep 2025 06:38:11 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5777bf5ec93sm597011e87.23.2025.09.17.06.38.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Sep 2025 06:38:10 -0700 (PDT)
Date: Wed, 17 Sep 2025 16:38:09 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Yongxing Mou <quic_yongmou@quicinc.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v6 2/2] arm64: dts: qcom: qcs8300-ride: Enable Display
 Port
Message-ID: <osd5xcw3cdbrutwokggs4y6lg6aqc6ywyl26ujy7wfzi66wssq@5d5sau7xejsq>
References: <20250917-dts_qcs8300-v6-0-5c862aa80f64@oss.qualcomm.com>
 <20250917-dts_qcs8300-v6-2-5c862aa80f64@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250917-dts_qcs8300-v6-2-5c862aa80f64@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: B6BX74L2rHmOd8kbhnwvE5PagX6-g8PK
X-Authority-Analysis: v=2.4 cv=btZMBFai c=1 sm=1 tr=0 ts=68cab9c6 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=ejZKuhsRmfo8bG81SBcA:9 a=CjuIK1q_8ugA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-GUID: B6BX74L2rHmOd8kbhnwvE5PagX6-g8PK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwMiBTYWx0ZWRfXxsgEaXeRW51A
 S8FpV/6BUa7hvwfaiFJFPNB6/M5+YXjzBKlQCZGT423wgrYnfoEBNuEhLU8pPJ40f5LmCiM9bz4
 C9Prj4tBfcQEveYm9fm5OWnwQj9WMEev2b0d1+scL9iniwmbo/EuQhS5kcWU3cXwKRlj7bSMrw1
 QJGQbgXuEOYd0NvKYh2vshus6R4ihP62PlprqC8T5sYdvFIwkTQU8HI0TbBZyJ7UjV1bcRijNra
 Uql00haFCOQD4dyptGJkxOptCfdmmUmF4yKb2JgaGLkPN5dJI8TU0+IuBUteEDPYCIVLfUeN/3W
 zWFcNyT/0TuTdIwii/eheoIZudMxoCtoIiaEOrTESvnmWW+nUR8Zsey/7LhNY47W0wO/d0oEeO9
 UWfFae20
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-17_01,2025-09-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 priorityscore=1501 impostorscore=0 clxscore=1015 malwarescore=0
 spamscore=0 adultscore=0 phishscore=0 suspectscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509160202

On Wed, Sep 17, 2025 at 02:09:48PM +0800, Yongxing Mou wrote:
> Enable DPTX0 along with their corresponding PHYs for
> qcs8300-ride platform.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs8300-ride.dts | 42 +++++++++++++++++++++++++++++++
>  1 file changed, 42 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

