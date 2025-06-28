Return-Path: <devicetree+bounces-190626-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B0950AEC3EC
	for <lists+devicetree@lfdr.de>; Sat, 28 Jun 2025 03:55:44 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3B58F4A162B
	for <lists+devicetree@lfdr.de>; Sat, 28 Jun 2025 01:55:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 539581D9A54;
	Sat, 28 Jun 2025 01:55:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BixOOQ14"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD72D1CAA62
	for <devicetree@vger.kernel.org>; Sat, 28 Jun 2025 01:55:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751075739; cv=none; b=qtpLEOg+w4fyqlhtXKo5sD8F6qzDbLiu5atNTPUn3TlqGmdie50uOUztSy3h/EeODpGLHXEAURlVXWS8jNkFDCoRtJYe8R0QzfLcyLUoiT4VKY9Ek2XJu4U1vd5EiSU+81FHGTTtVDtL5eVbjDJnwZMxCEgcSEbBvXjWvTePsUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751075739; c=relaxed/simple;
	bh=Yj4HqbTO+hsJVkoO5tBN3KU0UwRywL0zRbgyWn3HDWo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=WqWDDgWNw1rsAySFsfBDV9D2jE8uZ/P/Yd1nqaz66QZOUoDB7m4Uu9f5N6An8rBW8djjPPSSFaMSUgLGntK2tFnObZNAnODQTgUhrhL2K/orR1g/zREbE0agvuErwKYRSr9hQOvEIhtKg2hWcKj26+bP3EMnEeage0dInhBIdvw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BixOOQ14; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55S0DGC2004785
	for <devicetree@vger.kernel.org>; Sat, 28 Jun 2025 01:55:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=It1FpRXOceRECWa3Bwdhslvh
	PP0irZBQMnIJ9MHFFPo=; b=BixOOQ14Zw1BRrBwZSFhHjchS17b3drzrnaKuJh+
	jL+74BS+dkHcuuZ4i7GvJ0oIGav0dCPs4gqEE9tlYHuKCn/gCEO05GqGdUFpMM05
	OyELt0kTpE4DUa2FKGpaX2UxD7OnLKT8RbkPpXEA4zFfdjxmjiuGbK0ETQwbQLKU
	JYUBbXJCSU9DRUgoFaxxZnEB/eMk0F1TvlX7PGyW2+bKMfJz5vsgRzzFt+5RMh7z
	KdlezfBon0JeFO31AR55GFDm0y6FAr/ai4d1JI67WQ4k2Jzgv1ihxmpNgIZDOseL
	6gbHTebLZ4067njGpjd69rM0iu+WvhHlnHWNGbft0jIZsA==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47fbhqxrte-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 28 Jun 2025 01:55:36 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7d413a12847so66478685a.0
        for <devicetree@vger.kernel.org>; Fri, 27 Jun 2025 18:55:36 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751075736; x=1751680536;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=It1FpRXOceRECWa3BwdhslvhPP0irZBQMnIJ9MHFFPo=;
        b=LB4+Pi3/sBi6L52Re6qdxuwAv6zwIWrgIRrbnID779aNrw1XmxSkpAQaL+/l63Li3g
         LJCeU37ArUcgnmWHVXb+8iiruXYzUEV3fJ3xVb7cGgNyGOCKSXgmSMJ8fPCM/vCZmtNo
         bDSmWcnS0kLkykh0/APZUC4uPFERN+vFOnfQgnXIF6kcJjNENQaZsbK41w7pdpzio+25
         qqAf8mfC0zKHmc4pOLM1E6lbRVcSyjaXQbdq7WpsJv4C2RVwN39gVv/82TfUHaPHKaJC
         CE74H1tcnLEqrDZO+j4MqAbhR/IdsZ8/7zyk7UPFQ6wpO+Pbm0MM5l1A+roJDpdtvwno
         cDKw==
X-Forwarded-Encrypted: i=1; AJvYcCXWiWB3I8a4cXe2KUbkjdDBN9hTV09r07ghY6NuHZ89x/xzdODuYu6IusPJ/O1BPc/JygKhRJuGGdar@vger.kernel.org
X-Gm-Message-State: AOJu0YwWz6oqhOfCtHwT6eWY58TCDrVzL4vzFAG4+4oHvRuNf4zGqMbu
	+PDsEyXCSa+XpU9BqX1uO869rzDWPPrOSJqSwELzUAuYbSQiy58Ry9RITh08LUIWKHNYUCWj5ya
	9qVi7Z7esDdKLbclnhNSXWsIj6003H9iXDS+rXrRM68KLqihukwAuH4wY2fXjGGIr
X-Gm-Gg: ASbGnctJoxgx08No6kELW35VP4eACTTZEM7QTgro16giv43hhcFgxVdF/KzFmuuBMnC
	d4RAEKXjIopk5mi0yrOXskrjwlgY67hvVXI1hcVOXiRci5IW+E2yW9pWrUiYBGmKNaUH4sJZ6gK
	GQyXqnhh/JD0dmyE8ksA6lhta0LgyHtILkJgnXX2WbguCcFVc2M+BN/n4xw9cJuJwlwgx7u2oxl
	pnEgZjQX/irUx882IJVQfZNpDjiajW8yXGzrvW01TTeVj8QeLuWQZGLlmBwWit0KBLmD7hhgSka
	CpdOkXOFp1sItnzCmJRaW8m+jFp95qKQoW43/6nz7g4F/5EsVed7gSdRFL/yGnr757GJwNyzdhi
	VvSwpap+q9MdfrgMn5Druky6+p4LdY+ie3oU=
X-Received: by 2002:a05:620a:46a0:b0:7d3:9012:75d7 with SMTP id af79cd13be357-7d443976abfmr871096885a.43.1751075735689;
        Fri, 27 Jun 2025 18:55:35 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFtab+OtC4EBlk9U3wu7wzT8L0Rv1HTjySotQtNdoIMLlCUeXq6oWJfdAb/GbiKRGr/Dg4hNQ==
X-Received: by 2002:a05:620a:46a0:b0:7d3:9012:75d7 with SMTP id af79cd13be357-7d443976abfmr871095685a.43.1751075735347;
        Fri, 27 Jun 2025 18:55:35 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32cd2f007f7sm6835311fa.94.2025.06.27.18.55.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jun 2025 18:55:33 -0700 (PDT)
Date: Sat, 28 Jun 2025 04:55:30 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konradybcio@kernel.org>
Cc: Bjorn Andersson <andersson@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Georgi Djakov <djakov@kernel.org>,
        Raviteja Laggyshetty <quic_rlaggysh@quicinc.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Dmitry Baryshkov <lumag@kernel.org>,
        Taniya Das <quic_tdas@quicinc.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        Krzysztof Kozlowski <krzk@kernel.org>, linux-clk@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH 1/4] arm64: dts: qcom: qcs615: Drop IPA interconnects
Message-ID: <b2fpasn6ki63yxgtjuxpalpmdlqjaym4fjmzw5mupeifmxzrnk@bdfdnxfaqj5g>
References: <20250627-topic-qcs615_icc_ipa-v1-0-dc47596cde69@oss.qualcomm.com>
 <20250627-topic-qcs615_icc_ipa-v1-1-dc47596cde69@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250627-topic-qcs615_icc_ipa-v1-1-dc47596cde69@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: 3QRsBZuxtwMLDtLNrHiKFFWA2RxaljF1
X-Authority-Analysis: v=2.4 cv=Id+HWXqa c=1 sm=1 tr=0 ts=685f4b98 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=phXncWpSF8SbJm8Som4A:9 a=CjuIK1q_8ugA:10
 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: 3QRsBZuxtwMLDtLNrHiKFFWA2RxaljF1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI4MDAxMyBTYWx0ZWRfX5C37s35L5p2b
 DXnQzlmUwlpNrHXFOEm2th0CqSKNvDsavHRntxCQasFu6fp2oqAbzSgNHbO7M9HRx/5s1LC7Meb
 fTbbjYdUwa3+R6/eTjr0H2aYi2Nat99m4mPmtacvHit33U6Fc3zNWoJ8iH30V/ThgPWj1Y/ORnY
 yFSpRLxUhRaa5btOquLfoi1N15n24EaGyeLBzQooMylDVTwdfb9TRq12XjsTtF6+oBKtGtbeuXe
 GTvedYk1+CkO0BqAJbfgrOKhQVbjtdqMT58jo23rHwVdYcekYb0g7zLl1iLPVLDaH52iCjDZHbT
 m9WvkcB/P075bqhZi+2tBzXA8ZmRFNN2h6HysOdUxPBD6Bty9wfrq47JEvgOQ4Z8ldUGVe1Z+e7
 knD7+dii5DquNzzv2WCeTsU96tJN3enVMV0hChmafcns9ttt4UmY1C/7fOfvSubFAxLUziis
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-27_05,2025-06-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 mlxlogscore=706 phishscore=0 bulkscore=0
 clxscore=1015 impostorscore=0 mlxscore=0 lowpriorityscore=0 malwarescore=0
 suspectscore=0 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506280013

On Fri, Jun 27, 2025 at 09:37:55PM +0200, Konrad Dybcio wrote:
> From: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> 
> In the same spirit as e.g. Commit 6314184be391 ("arm64: dts: qcom:
> sc8180x: Drop ipa-virt interconnect") drop the resources that should
> be taken care of through the clk-rpmh driver.
> 
> Signed-off-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
> ---
>  arch/arm64/boot/dts/qcom/qcs615.dtsi | 6 ------
>  1 file changed, 6 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

