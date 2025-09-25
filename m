Return-Path: <devicetree+bounces-221649-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2517FBA1871
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 23:26:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C7EBE741EB8
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 21:26:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC7A831D733;
	Thu, 25 Sep 2025 21:26:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Rdh4RSoD"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7132E31AF3F
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 21:26:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758835596; cv=none; b=XDwd8d5v2jw07+0JxJt+SoCR+3ZNWf/amDXYmO39G+0ujZ3LMkgN97q85Ueo2U3PpngnIXI3gM2w9ko1cLrykl8QHj2rzSDEh1P+SOQRK4ldIj3BQ2EMfIYxZPigDpor9Tmkp151SZbPcvuKSVRj21s5OirOuMIwBUDdYUXVbFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758835596; c=relaxed/simple;
	bh=k0yjSh2ANN6eecUIqxnDtUriloBzJfvWyMx9nup5pZU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=oPuLUlQxjNhiw2URl9EPSGqCUpJlZQuRRwRssMD7mxX/4HZjprT5toF2hH51sfmh5iETQfNb8zO12E5LsSJ9oZrjJ56ciqDkdgs3KTwbT6GIcL2Z5wJi8nO23VsNyGhPry2onSDAlMlQC81rUXWYgqIHtKpuxitMrjJsd/U/72Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Rdh4RSoD; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58PIPpAZ014479
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 21:26:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=LNofiBLmX+3scjm7ESiysXbi
	J9+y7g4bNVHA/dL9wFo=; b=Rdh4RSoDuySpRfTy9imujpPKVMr0+/f+/vjmsEVf
	HnrhSNPCiLvE7k7sHTljl1qX1Ey0TxQtJzc23QhRNgWDhP5E99JRwsABIwiM8pBk
	I98IAZbXKeZocyZhWmK+T0vtFsDQYHW5VIdR08MtvzuSZ99n3e0zdkxSC8LPfCWd
	2Na39j9GFgmtb4EnJjmRgUMJT5TS0oN/d+78RRAJ74kRKvqca2hW8SSfI/iFvqrr
	3J8gjDySCXfCF+kjFHFH4iYjfGYdNraazRCvt3BnjNHp4EeH15clO7DDtN3B1eNC
	vCDvs3pufEoSfTWpO+0SjMVjEF1O34DvM1fga4mP6prMXA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db0rgeug-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 21:26:34 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b302991816so28224351cf.0
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 14:26:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758835593; x=1759440393;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LNofiBLmX+3scjm7ESiysXbiJ9+y7g4bNVHA/dL9wFo=;
        b=rVOdQ9RVmAwwAL0KZYQC+zJ+VAG6dw/p1MMZ65M7HQC5Z1hy7DfRugL/JSSo0Vcvcs
         OeBLG3YfDfQEpFza5wGD9YBdSyhk0emeo8vKsXflEfnodTdA+Ps7/8PFtxlarcX0dQKN
         aNe2dORkoFWA5hLM7ODLy5FXbTc3H3zCu366al3qadwlDXVyPyapUHR6jP7KwjMiCHS5
         n3R54crUs3WTGBuapQ4t2ZXGDH9P6W1Jj2tSkWItCCjYRMgYifZMe51ynQgfT6SUVRX7
         ElffNPMLP1WUj49liUyZWZZ368kVnCO3+MZapsPGgFHC6XsLS8GqHVE9k6CqRNQeyuAK
         67zA==
X-Forwarded-Encrypted: i=1; AJvYcCWSm0w/6MttFYSBcg7PifgYi2NqFeb3vO2iW7EzuyGoR+2+oiOAGD5V+kzaNwAmpksJpRANMjL6eq/A@vger.kernel.org
X-Gm-Message-State: AOJu0Yy/vtLwAn+K+D8oAiL76o4CoLmRzPOFajoLurFh7FkQnqLW2P0W
	VGKrpt0Elu8mcySbyDXNs1RCqKNgiJr6g2HKkMYmTlpyFTCYcUDBT1JybjJJX/Kva2Qk8SwRqb3
	tEwyXMY9Pjmon9+4mu7r1FoK/zVtb8+0ix1PaLFHwB8+5S4gq+yYb0esGEcgnw/SH
X-Gm-Gg: ASbGncvhRDq/ULfw8bZm/SwAIdgLkXsRkHxAMYYronOpdDyJ0ry3b8iCOVp5exI+LMu
	O1v6a6mni+tPU07J6eNhUYNToGpxD+nnzP2aryqRnenXr9IWox9/S8GKpBoQhPRpVDzqTGP/2wo
	RhPS8/z2uV9QItH0qLOcSAx//qho6eOOZoU9kFToHg+MId+9pePjyZc2yWaQDc7K9lfpm99joJf
	AuV8U4/z2DjDOCNBQxDWSz8dVtQqEcPizp1IG71fXMg0K23t2xlPGHQqnMWd0Vbn4ZisGO0rHgi
	EJ5PVBN/owKSCsgCFw1nK3Mn/KTeD7J2KZjLBbj20r4BXfPRXJB2vpee85xXoNf/S9QyAKTOiTK
	LELaz5ZRcC9dwvm+wH3a60BHQDqSGwfYRZTELhIc8WlMSR4raUWXD
X-Received: by 2002:a05:622a:14:b0:4cd:fa3d:9c0a with SMTP id d75a77b69052e-4da4c39d3b2mr69916711cf.63.1758835593375;
        Thu, 25 Sep 2025 14:26:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFJSdxhuD1dfzzIzvxJqoo52XPqJp9hoPrRGGFcB4BT/HealsuaBlfh5g8fOW/NRvXrmYui7w==
X-Received: by 2002:a05:622a:14:b0:4cd:fa3d:9c0a with SMTP id d75a77b69052e-4da4c39d3b2mr69916241cf.63.1758835592884;
        Thu, 25 Sep 2025 14:26:32 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-583139fb60esm1142055e87.47.2025.09.25.14.26.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 14:26:31 -0700 (PDT)
Date: Fri, 26 Sep 2025 00:26:29 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com
Subject: Re: [PATCH 6/9] clk: qcom: Add support for Global clock controller
 on Kaanapali
Message-ID: <jfcnilahauqhinz7mlsyjcqpovy2bspithahhotqayfxjqbtlp@fzkqchygd5hd>
References: <20250924-knp-clk-v1-0-29b02b818782@oss.qualcomm.com>
 <20250924-knp-clk-v1-6-29b02b818782@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250924-knp-clk-v1-6-29b02b818782@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=dP+rWeZb c=1 sm=1 tr=0 ts=68d5b38a cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=F7eGajQwVCTwq7oO_cwA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-ORIG-GUID: vL-PDR3goVbsDgLlXmCYbv_fts1WqJG2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfXwn3+Kp9ZDPMO
 PTERbqIRGvuu5udS1O+H2yrYQUbaSkRAYZZPfjeHtsH/uUMYPIxpsA5GFapJRvEXcC7JNr8y63Q
 i7EK7L5jBQCd1lCLXSmLaILbm35DqaJOKNHKS9CYbDaYRL8Eav4ZVvNV7Ta4R67yx2Pt+00tD4z
 +2FPWWwVDPlDuu/W05A59vdiXuDcsmtxrLSQ0g2z5wyfWjWNWHAdlY1IMU7B5CE+L09l8lJVqHc
 f8TO6yp/lyCUYsZiMom2C798NSgB1abYrvnIaIS6PQ5BQE57Vz+AOcPGt5Z74GiT2H7h8H9InUx
 Njqzr37faup1Horc9osgP95xrmuuHJSxZi/glhoWR4cO394CNqmDZ6cenvbb6wqPtWeGno8MB0U
 bXEYeDsxASG2fg1MxhWHuKdJkpO0Ww==
X-Proofpoint-GUID: vL-PDR3goVbsDgLlXmCYbv_fts1WqJG2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-25_02,2025-09-25_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 spamscore=0 phishscore=0 clxscore=1015 priorityscore=1501
 impostorscore=0 suspectscore=0 adultscore=0 bulkscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250171

On Wed, Sep 24, 2025 at 03:58:58PM -0700, Jingyi Wang wrote:
> From: Taniya Das <taniya.das@oss.qualcomm.com>
> 
> Add support for Global clock controller for Kaanapali Qualcomm SoC.
> 
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---
>  drivers/clk/qcom/Kconfig         |    9 +
>  drivers/clk/qcom/Makefile        |    1 +
>  drivers/clk/qcom/gcc-kaanapali.c | 3541 ++++++++++++++++++++++++++++++++++++++
>  3 files changed, 3551 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

