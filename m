Return-Path: <devicetree+bounces-188809-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 191E9AE59E9
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 04:24:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id ECB114A5592
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 02:24:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9B1A8233733;
	Tue, 24 Jun 2025 02:23:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RjxEtyAJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31AA81FECBA
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 02:23:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750731789; cv=none; b=eQt+5ECmmAewcP4ctUpwHzHEQDI9KORttSADvdkDlakVGXTwDR/Zttd2RH9US34P5MVH4tF0OPQKsQb9sbWpXUU515KMP8omj53jVs9mDHEds5MgvtcVJMMFderBkeERNqdV0o91uKwr5YYL7OKRFW8bgtzbCfxgoIZMd49QDDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750731789; c=relaxed/simple;
	bh=QYoCyqAmLLMb5Rq1x6IEWblU/9cQxXc178wCyGoQFJw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=YzJBJACbk9MKlNTXnP5fNWIRyopauyz9ixF+eBBf8nrFwABLRkAwHPDHp/rCnjJU9DTOQR+GN2UtF2fVma2JdkBy4mUIZ+D05t9Q0NLWaHstdQZ94EDYiunjnYlHo2rgk0og35kUbowROUdBo15tzxxc6eHSoLfDpz0RtNsEjdU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RjxEtyAJ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55NIodEk020695
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 02:23:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=6rU5RVHRmopMQn44WoHUeWY0
	jhRfCw1+v2AKpZBxabM=; b=RjxEtyAJuamwhozVhZJ7cHBTKRyPDdnahjjITDyr
	OYcLXMNYITJxicgmJQKq0mxIT1FVWjh/td6iV4I086xdyuqSIIxAVBmSkKIfagZr
	gwARejgQl9eTUMYoRvmAEZDt6b9bhMu0RuMU7UnXoHeg/MR2P/d62G7nShZr2NVE
	eAPRGT6vBhIWBgJO/BQlGEAzhorQGYy6TJvcQflokzPaMayE+0enft9jNm4OGktR
	HxUJiT02+gSPg2f2ZPlf4kdcz4htr19I3aCgKy8DLvf4LSdHMt070tQ0Ntpcqwwc
	e3i6C1+GJOm3RxCjECJe1jdqb2eMYKYPNF7Mmsx3doefmw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ec264r5a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 02:23:07 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c5f3b8b1a1so736562185a.3
        for <devicetree@vger.kernel.org>; Mon, 23 Jun 2025 19:23:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750731785; x=1751336585;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6rU5RVHRmopMQn44WoHUeWY0jhRfCw1+v2AKpZBxabM=;
        b=sQLzHTiIsKP3SI2tszj5TJjIvS9wBxcFLVHFu5h491dzWp2tcxWdKOyZR7zOA5Yd5A
         ko2Dgv22gkL3jBkSgyYeha0fBO1kzYaRHY0oJt0t2jS2xRQET/yvx863CSurEtakJ2n2
         2AQs2uIZaomwz6Tvt7rf5DgWbh7L7MxL5Ynia7Yf80ZFijK+PAAKbR64CZ3fX3MeE5ql
         sJD/P0p9Vs1uy7K5aT6sqxxcOuMKP3MJZbhws+UD/pO6K9aWYK6mANMnonlibBH0CBDN
         Ccs1l0crj/VxeN+KzO5mnoeEyn47qc3XgTzPntIqRWyCO5xf/0dteEsMvgs3fGcS/Kyu
         97Ng==
X-Forwarded-Encrypted: i=1; AJvYcCVdoE8+ap0h1BV2Wib3+7ReFLPnRHDiOpwCcI3iqmCotEM6jU6focIw9RrfjSMgsNg1gj9MtMzcDSXV@vger.kernel.org
X-Gm-Message-State: AOJu0YwJhjrhNVNjaMJaJqyXVGjkqa0Dzrhq+zDs1o6wBYpF1Bs7n41H
	lKYHpXxBRafbEsGXqY++YGlAfn2saNK89uvkj8hx0fvzwTpT41f232UXIjL/diXR7o+6OA28/Ad
	JgwiolPb86duXntLh37YOkv21/XxTcGwcGLLADI8m+VtieikKec4JoR9BdrACvMery2DVo4oXIw
	E=
X-Gm-Gg: ASbGncuBgTEPKVAIxS/i32TQE6+Au38CthryHHDHbWdHDWaEsy3s7EbbN1+wnR7UmXB
	ocKL+OYZwLND0WI6BTJOiR5cMofptf2c4U/Z+QOzDFZznZKVZb3PCJfl68PRPLYx48YXQe7S8eX
	Lpec+RAGRIEMkOigfr4daM0Rm2tphjDOdhG5DFCj8+WGcrV9n4734cpblQ3nQnJE9q2+vru5qmv
	N3+NYWr/UhYRHrb8Ndm+ysC1DVihqqMJUK/Gp5/zA4BOHTTpJZdY5u1+F3Gd7GkOJEGtBY7nnHp
	CrokJCLcTo1qS7+QvSchSAizkXO60mnj+yDA8KiO+673WYjszZl43T08wHBxD2mCmDkp2543ZFy
	DF06f+SzNp3Hhz3z73OquJf4qVRV1rQQBAC4=
X-Received: by 2002:a05:620a:448c:b0:7d0:a16a:4c7c with SMTP id af79cd13be357-7d3f995269amr1959054485a.46.1750731785065;
        Mon, 23 Jun 2025 19:23:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHvirql2XLDma9IdoxjWUc2Yo9Oo5zM03/72H1GEWUIWTzmVc//QLdRiK/ccO0WeTWvWYjxhg==
X-Received: by 2002:a05:620a:448c:b0:7d0:a16a:4c7c with SMTP id af79cd13be357-7d3f995269amr1959052585a.46.1750731784655;
        Mon, 23 Jun 2025 19:23:04 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-553e41bbc36sm1621583e87.94.2025.06.23.19.23.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jun 2025 19:23:03 -0700 (PDT)
Date: Tue, 24 Jun 2025 05:23:01 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>
Cc: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v2 1/2] arm64: dts: qcom: x1-asus-zenbook: fixup GPU nodes
Message-ID: <zzcog42hu5fnxbhbxoe4tyyawg3fn6uhk2x3nrnvy5ujvfpaqr@x6kapd7v6vpt>
References: <20250623113709.21184-1-alex.vinarskis@gmail.com>
 <20250623113709.21184-2-alex.vinarskis@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250623113709.21184-2-alex.vinarskis@gmail.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI0MDAxOCBTYWx0ZWRfX9ihNzxHyiioj
 N9fQq4mF1PxspppKrwg9dy/ieQonQLz0jwNI8welvgGdPJ/ZK5gOnMDG2bEBzSCumVBdf8LIQ15
 XlXMmb6ySrGhmVaa/w4DxDFUxcnwSHwVIvkFGQ2hP7MqrgE9jkSEOvmFRuOiFYPKRqlLy0+tHHt
 ndAOPsiW1YU9i8YVNoNpcL8LzMbiI14VIJE1IpEoqlNzVqReVxQg4083wS1M+R0qjf1P2G6tHGh
 G4uOEj0fOIxe97oSYsPvmFQccWQWS1s7VA15kEFisIaTS5jjWi00QWM7Wqq0ZAcSiwKx4XiM3o6
 Xe/1HP7gNAkgU6M33Zfq975lL7w3x+ANRU+zrh6XggF/6xbBL2GWVtZjecgpAmwmPBLbxifI8Bu
 DdiGtVyR2vw0oQ5zuk7Wy9Kh1nnO1dopfhQqP9FWPoWBDD7yST42W8ycf/a/njstYrD/OCko
X-Authority-Analysis: v=2.4 cv=XPQwSRhE c=1 sm=1 tr=0 ts=685a0c0b cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6IFa9wvqVegA:10 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=kxFBVqErRWOHaCLb2-MA:9
 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: 15hg_VWWW3zQoawHwpWfEkmAySHB1qjR
X-Proofpoint-ORIG-GUID: 15hg_VWWW3zQoawHwpWfEkmAySHB1qjR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-24_01,2025-06-23_07,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 impostorscore=0 clxscore=1015 suspectscore=0 mlxscore=0
 spamscore=0 phishscore=0 malwarescore=0 mlxlogscore=996 bulkscore=0
 priorityscore=1501 adultscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2506240018

On Mon, Jun 23, 2025 at 01:36:13PM +0200, Aleksandrs Vinarskis wrote:
> It appears not the latest version of the patch was merged. Align with
> latest upstreamed version by correcting GPU enable location and typo
> in GPU firmware path for x1p42100 variant.
> 
> Fixes: 6516961352a1 ("arm64: dts: qcom: Add support for X1-based Asus Zenbook A14")
> 
> Signed-off-by: Aleksandrs Vinarskis <alex.vinarskis@gmail.com>
> ---
>  arch/arm64/boot/dts/qcom/x1-asus-zenbook-a14.dtsi      | 4 ----
>  arch/arm64/boot/dts/qcom/x1e80100-asus-zenbook-a14.dts | 4 ++++
>  arch/arm64/boot/dts/qcom/x1p42100-asus-zenbook-a14.dts | 6 +++++-
>  3 files changed, 9 insertions(+), 5 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

