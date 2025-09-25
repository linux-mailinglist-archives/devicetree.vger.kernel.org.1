Return-Path: <devicetree+bounces-221101-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 33C3EB9D36C
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 04:38:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E86A64A14F1
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 02:38:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E4702DE6ED;
	Thu, 25 Sep 2025 02:38:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="gJsc3Gel"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19F2721423C
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:38:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758767928; cv=none; b=kRpJQzOMPZBaGA5fzgfVWDydbPoHB/gqrd56+aCeBmgPTauqveJNLlml2j95fE80CUHzJQ+z0FtNbk6rpWs/bvM7YxKqz7yu/j8KWSiiy4bUGeQXBa0J1U0xzW8j903FKNJdt4NyQ8v/A8EF2DG1rlOQ/MKR8q06N6A08nn25JA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758767928; c=relaxed/simple;
	bh=XJUYhg0VFEFsFldPgT7FY7B/fRd3lwXDjvW6ijcWA2A=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=uB58aQqg1cbLIJvHd9u629+cJOkHNK5Jw6NH+M5ruOC7gJPNJSWSp1NHmMx3LN6SZ9+jIHiS0smNOH2GXFP+KVll5rMQQPYwLA/ItarfWz2dErA4jsJ9+sBjDQPZ4PgQybq0Kx6yXMc12LelYFMKlCcqQEnZMyH9/NSgrGxiNY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=gJsc3Gel; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58ONobNs025518
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:38:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=5dBE8wCPmuYIKAvATllBrBFt
	XuoveB9RJyGGd22KLBI=; b=gJsc3GelbCCaxk56G1ZmWDeZOuARJATTmewX1iCN
	WySsOwM7j+mT46n7E2K7aGftaSd6Ry/38Rs0mpxmcY+JCQ47MB3g0/8FO9CIT01K
	4QSE0SvoknYR5ONMZ6JFVkxuTrQP7e1zH5Pd9vd2A9+Uknce+y+ODjhvNfQ0SqQC
	b+YkDZZBYQLiTsin5XWQxoZsU1bakv9hqwAziiBnZ6/JDuOw7liU+zWg31sbUmKX
	SVx7wLoSxK/LvIyQTimO/jtM4tvy0p4tM9wyVl7mzvcfdULxCEwzCrQdHN95LK2r
	IR2VtiHRrp8wXU/0xiv09jauuDdyCMiGEtNKRjpktpoDqQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499hyexsmd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 02:38:46 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4d1b3c6833bso12333841cf.0
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 19:38:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758767925; x=1759372725;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=5dBE8wCPmuYIKAvATllBrBFtXuoveB9RJyGGd22KLBI=;
        b=bhQkfmgNQ4fD4hGfYdcp1j8mhKsAjVF7ZBImYrAO1HwmjLtGpiOo3wNzSHlcVRnmfO
         HYwxxOrUEkUweKUfZkQCbEjONxDbArRQkY4HenJ8XI9ADBq5QvzVWLP+hx8yFO9BWvXL
         2uFzOYZG4dL2dz+GKGh5h8kvQbrwjxbKCPE62sDaVc6tVJu8T0YFYFZhY9NrjQcffgZg
         PC+hFdJion8UXOt7aDUloTuWYwqONOlWK17RcDN30bEkieEkFlNin07f5qp8eYhBPE4J
         9FV3TPy7mxLkfPS9Re/zWkTHOUoK8dkymwp3LthyB99nRuFAEM7X3TiAwhLBI6TTwaJE
         LFNw==
X-Forwarded-Encrypted: i=1; AJvYcCWRS8mlVvnh0zxgNjB44GOeXivaeUfoOPbNGkxI1BXBd4T6QHrePBjy4hADSdSfkbHHOgL9n9efox3F@vger.kernel.org
X-Gm-Message-State: AOJu0YxQ/nDJXPgssNFEaIYg4wHMnBam9MzO95XyUuCmnmULb1F6qneW
	95HNz6jm4yRGpVtL6BarajbAO6le4AntgkvfHyywk5BNXNcFQ1rVLspaQ7QJ4gsP3qz0xslb90l
	tClOJkyF/tjZrSZ2hPd0XmE2gGEyZr+suV9vBVx+P67wlU+byWYOhBk4n9Z1Rg+LB
X-Gm-Gg: ASbGncu3h9q0zHCLP/KtNAEDRwzvYmcYOglMfxHiLQMgQ+EwH5fAm070DGhgoX1LqYi
	4Bk0/jxLAjg+DknB8bQQ01x/jh0fRVQHWjrTMsWyFz1T8g6Ld6hqPL/UH0ry5fsLCwqTs5dUi6D
	XQ7gKEvsrREHs1OaNOML+IUSwx4GYOU/60OaRkiIBXuy8Oru7p6LvG0laqDcZJPIzBlprwF3Abj
	B+eA9LBvEnjUKRi5nEfzBzm8KYRXETeKChs7KDApYhdvzvHVOVhL/KurhBqX8C9NWoLoRZdrFEK
	mluH6xiDNJ3lhDTMhlLczGtYlSHdCiMKAcJBSjsGm1dDPiuQCHAVZ1WuZRlPdO4S9TZAJ9BD9i4
	2E2sH/dxpJya3g+iERerMTN89YzIrvPQRA9Qg2lbxIz9YVPK8FqWm
X-Received: by 2002:a05:622a:13d3:b0:4d8:d502:7469 with SMTP id d75a77b69052e-4da4cd4c801mr27417401cf.75.1758767924745;
        Wed, 24 Sep 2025 19:38:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHzAX+Bo3ArcJumD4HPQ/3vJQ49cheZkg9XDmwTcQRShTjOBjhcFEYQXZyYcD5dNdPNkm6f7w==
X-Received: by 2002:a05:622a:13d3:b0:4d8:d502:7469 with SMTP id d75a77b69052e-4da4cd4c801mr27417231cf.75.1758767924318;
        Wed, 24 Sep 2025 19:38:44 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-36fb4e38aeesm2096901fa.18.2025.09.24.19.38.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 19:38:42 -0700 (PDT)
Date: Thu, 25 Sep 2025 05:38:39 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com
Subject: Re: [PATCH 0/2] Add Qualcomm SM8850 socinfo
Message-ID: <ebxbhaaefuoemadcef5h4lxfw2k2hwkfe72aubctqb3tk2zdmp@p7ck45rd2hy7>
References: <20250924-knp-socid-v1-0-fad059c60e71@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250924-knp-socid-v1-0-fad059c60e71@oss.qualcomm.com>
X-Proofpoint-GUID: 0HM86sj9jpp1H5pxXmI8nyy2QZHTfjJs
X-Authority-Analysis: v=2.4 cv=YMOfyQGx c=1 sm=1 tr=0 ts=68d4ab36 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=MSJ7r52RwriqJIIK1REA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAwNCBTYWx0ZWRfX0pC/gohoB4fl
 5n/9AunCBTdTHcH4LtGuncLdgWMgZZHmfcbXrLQCOno9JcwbD6qsmX61PTMhEU4+jeWzRHlYvtJ
 2+61HYNtIF6XCXAkveOY0N/hKFwJjvkX7myeP5Oy/oEByuYuyCpTdLf3M10f2MqArCNmyu5Lxlg
 5mDKAxh2Hb2pQNbVgR6jowiszDiXweXFLfl0MAZF+6F7h4hYRU5PoSL8y0D6d+7m8MScFN9cnEo
 IKGCn6tWvF8kky4OWEDfO6GAbFjPRBTtL1xof4uA1YB1n2y5ZG/aIrVfyBA6VW7GamYG/9XyQtD
 SBuKAy5iZLwoen/gUpSX+NBoXJtweuHkk5wio0iMIlUcnh0R7MbYk1vNL5lkT9bZ7ClwIteDT6F
 ViyrgS2a
X-Proofpoint-ORIG-GUID: 0HM86sj9jpp1H5pxXmI8nyy2QZHTfjJs
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 bulkscore=0 adultscore=0 priorityscore=1501 spamscore=0
 clxscore=1015 suspectscore=0 phishscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200004

On Wed, Sep 24, 2025 at 04:17:45PM -0700, Jingyi Wang wrote:
> Add socinfo for Qualcomm SM8850 SoC.

What is SM8850?

> 
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---
> Jingyi Wang (2):
>       dt-bindings: arm: qcom,ids: add SoC ID for SM8850
>       soc: qcom: socinfo: add SM8850 SoC ID
> 
>  drivers/soc/qcom/socinfo.c         | 1 +
>  include/dt-bindings/arm/qcom,ids.h | 1 +
>  2 files changed, 2 insertions(+)
> ---
> base-commit: ae2d20002576d2893ecaff25db3d7ef9190ac0b6
> change-id: 20250917-knp-socid-f96f14a9640d
> 
> Best regards,
> -- 
> Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> 

-- 
With best wishes
Dmitry

