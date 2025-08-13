Return-Path: <devicetree+bounces-204247-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EBF2B24B00
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 15:48:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8D41F171AA3
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 13:45:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 430D72EAB91;
	Wed, 13 Aug 2025 13:45:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BWyDWoEo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1B9E14F125
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 13:45:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755092711; cv=none; b=iqfIB44t3zgND7qeLNh0d826KSaqdpG2EKrNcd0Eihc6XlCWGiLpLtJ0aiR56//DMpNkBk5A216cS1QEOxF1DnNb6RGRNWxfjAJYx7BuMDV7+yEkQC4TY1QtsTmvP3vh8ZIeenMeprDXQBRwGmNt6RYoi9kzwvKX6RccUfxJO7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755092711; c=relaxed/simple;
	bh=rrnMVCgKWPLf3+i9sUlbk7B07YYSKzjrB6rut30/jHI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NQAlGK+6cZ94jJCM5TO6uRSPeoH2szou69wz10dFxOhupw37pWH4Uj0aYqwg47jLZvaj40pNFUDsMUYYkK748E66b3iZa1yOQhfxlvEIEzubRkbnUt3SJzuoMBPewpPMqaRDXMYQiJ9D/SDsJABvxRjn9VZowLfpMGuzCZd7zYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BWyDWoEo; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57DBLcj7031866
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 13:45:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Tbskgr1FSTKaGM3oXM2qZ3de
	YMZHFeQyPrPKxR6kD+w=; b=BWyDWoEoFq58JRa7SG5IxEESvB+SRK7rvbZs0POW
	sWjRIfqUXIvOJzv1PPyAnuOrxuJaj+K4ayVOhePlzBTJpBHTdM7Oob8H7sRnXAf0
	D6UvXPg8TY9ebo5GZzexsA9gCdZdajJb1519o40GZtzjXBKi+v/1BZTWKpJ9U0+3
	8W9HHulT+EDFFMjpzCjkrgwf5K8C2AP+5XdS4Xz6sMr+S2cRzJ65OxywIaaI+3e3
	xW78x4RcKJ5z1MuOLPkX5XrUuIOzcqrN3K0lDxIMvsK+3VsqTDZS0VJarkgltiea
	NwBRv/2P9qgpSJdJMd5oiDaTv2RgToLKYbNov39aG5tr8Q==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48fem4fx34-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 13:45:08 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b0fa8190d4so26115161cf.0
        for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 06:45:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755092708; x=1755697508;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Tbskgr1FSTKaGM3oXM2qZ3deYMZHFeQyPrPKxR6kD+w=;
        b=DChqXMEkMc6YmWVweCG+AzfhwGj9SR2YpY+89n978raRD2D+RLD2wHG53CAU/gMcWY
         hpagYMm8Gy6KvyVJ/WSZehtUKuxPoPmgdl1EceujDHiTvDBKM0R9KUgAmOqRxMWTAT1R
         qDncanr99tMMjyZxK2F1YgOryry/1YUgA2Dwe4rebaEkcExs7ZUwB1TYB6r7UcbfXr82
         Ygu3UlEY8ca1/q40oT8OUQxoQI2AycS82Z6EzGWvqzAS5O947Phq96SjIEimPVlxPdQn
         XFkgW3ej4g1k1m56DszmTND4XVqPgutyZta4qzaZM9exyXfjRZaIWhe1dEom4XpeXlSh
         cJVw==
X-Forwarded-Encrypted: i=1; AJvYcCXJYaJxpnx7kMX+mrQclHlFFoCWrrtEHt7vbv46MpTMJS+4gv7dJlxosUTv+W+o2cXsgzaFTE/En4Uk@vger.kernel.org
X-Gm-Message-State: AOJu0Yyuf4G2qkUGagmPz1Z9iEbDMyA3TOytTfCIqtkC+ajTLoBNbLFX
	Kug+kmLe89lUyIrYuqKsFPqCFC6q2VXB9qBBTJ0tHxIJcmBhDHREi1KQO9jN63mdB2gdK9DDLMg
	6ND+xzfEnrVtVdo6GnoIxxllq5OxVKhBtRM5v8GH23wDt9IYFq/jvk0CHOGY+vWYQ
X-Gm-Gg: ASbGncvobQ3Ks1dh/LGVZ4d6xCV6ppPNM4kphxGLsexblQsUG+fCbKFv/0uTv50jspw
	cOPWg6ABuBKZvYFJfQste+o3L9cjL7Kkee3wOIODUHh2XACYk1HGYaZKpSnfsTqz1Nl818CAXsk
	LxfevTptbY5u8Ns/Y2crzV7pNyMeNaD43rm6pdkgfPMfBVIAK97W6hiT16mTbjLShkeY3SexIM0
	OAG/qbo7By8K6NeWPhmbdkHO7Dd6fKJhZUjwuvAPSwdfdmUtEpSOueL3pSVUOxe8Cb8sgqZJBqR
	TFaR9h55z0aIyfo1YO01VeBIKFjjlDi5ddBbxtomJRI+TOz5mFitRJ/Q/oUFYE8VBDchWOt+MNk
	cCCGMfH6RtmjP9Yb6bSQj6GKc09TMsV0C1lz6EfSOkFQoZeXbyVD2
X-Received: by 2002:ac8:7d05:0:b0:4ab:640d:414e with SMTP id d75a77b69052e-4b0fdfdcf13mr30020661cf.3.1755092707543;
        Wed, 13 Aug 2025 06:45:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEwat25ikRoIeKUsZVQAp4uJJPxvfxNq7VavVdhY+SbjXOk0RTjYbCeFGW8hIPVRdi8aHXzsw==
X-Received: by 2002:ac8:7d05:0:b0:4ab:640d:414e with SMTP id d75a77b69052e-4b0fdfdcf13mr30018941cf.3.1755092705862;
        Wed, 13 Aug 2025 06:45:05 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55b88ca2978sm5281543e87.116.2025.08.13.06.45.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 13 Aug 2025 06:45:04 -0700 (PDT)
Date: Wed, 13 Aug 2025 16:45:03 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Taniya Das <taniya.das@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>,
        Ajit Pandey <quic_ajipan@quicinc.com>,
        Imran Shaik <quic_imrashai@quicinc.com>,
        Jagadeesh Kona <quic_jkona@quicinc.com>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v4 7/7] clk: qcom: gcc: Add support for Global Clock
 Controller
Message-ID: <rv7puyb6wj4jf5yfnml3sjwjes2qnxwwfmkvhlbgbxescy7zjg@nh7xym4qgjg6>
References: <20250813-glymur-clock-controller-v4-v4-0-a408b390b22c@oss.qualcomm.com>
 <20250813-glymur-clock-controller-v4-v4-7-a408b390b22c@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250813-glymur-clock-controller-v4-v4-7-a408b390b22c@oss.qualcomm.com>
X-Proofpoint-GUID: NExwamUCHI5Ubts8GvIE3zAeVayo5QhK
X-Proofpoint-ORIG-GUID: NExwamUCHI5Ubts8GvIE3zAeVayo5QhK
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODExMDA2OCBTYWx0ZWRfX962dYvX/S39A
 /dOZ7SLL1DxRYo5BJuRBCQjS/ZhMcFXVU7Ce3Pf8OK8GqgZEi6Km6iuQNoZJN9QLcG9pgAouudZ
 PTibCfQXL8wVU+sSn1foEy8Tr7J0KsKH5dcQa5Jia6WPivPBKvRYvfdesy6O4c/SYmjJRvbbIR6
 ZNgEcgimS0N1cqk0OG44MxZGLwyDDWW+tWYK3nUVloINc7fn2u4jmmLqsfDiKZkgzK/yJ1qW1bY
 KXD6RIbpRP7sOfiZoTqEAO5wQP/jn6wJeDiyHZzCTMUPZsAnywvRavzekEIXk7Bk6KUq09qu+T7
 edFIJrsAuAU8Sd6ZAKsxqMhuBKZDMvQOX07Mc+4tQ86oZ0Rn9KH9cb9iKTgcuUOWGfa303q13i6
 CMPvjuuT
X-Authority-Analysis: v=2.4 cv=YMafyQGx c=1 sm=1 tr=0 ts=689c96e4 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=wc6weylmL2S_uF29i7wA:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-13_01,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 priorityscore=1501 spamscore=0 suspectscore=0
 adultscore=0 impostorscore=0 malwarescore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508110068

On Wed, Aug 13, 2025 at 01:25:23PM +0530, Taniya Das wrote:
> Add support for Global clock controller for Glymur SoC which would
> enable the consumers to enable/disable the required clocks.
> 
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> ---
>  drivers/clk/qcom/Kconfig      |    9 +
>  drivers/clk/qcom/Makefile     |    1 +
>  drivers/clk/qcom/gcc-glymur.c | 8616 +++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 8626 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

