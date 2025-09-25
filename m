Return-Path: <devicetree+bounces-221650-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 25E81BA1886
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 23:28:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 88F1B7B0FD9
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 21:26:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1601B32142D;
	Thu, 25 Sep 2025 21:28:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="B8sZz5an"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A018231E0F0
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 21:28:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758835694; cv=none; b=hYBZR8AtS1qAH+sFw+8kXoOmPxpWWZwOAuwoYw9DKL8Rv9sKTvpCSPay4AxQIF6pnWg8B6Bl92vdTP0rdIDls3RF26tNvaQ3sFJ238FbAPlsz7oT2SRa3iNaQeodk/WhuKhV2YXsoMtpS9Vxn57PedZS3UuYDnuxwL9NBDZWfXc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758835694; c=relaxed/simple;
	bh=mGf87w9ZJVllgijc5JEtI9vZxiYgE1xsayOGWYC3GHc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ParktWPxcy74t0dFbEPW2PaWPQOFOciI9giOpcQJ62gNpg+sBRKnmxQMYn75zhwN8yY1Bvoul3E/7A5xfRI51P77JfRlI0gcfqVfolBH4AdL8FiCj9dRq1+ChVIzW+1peQxhAFLr7qMzm7/Phftci1cocwXmEV/gkx2SZFnQPV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=B8sZz5an; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58PIPbOr027585
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 21:28:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=xVJa3hRBr3b8zN4SyC/HCbPD
	O2Mv7vIE7SFYZLeD+YA=; b=B8sZz5anXZPlbzTc9hWAN039PM5eI/vPGLR9keVD
	lp79P3PfevuRe+d5Kc1Zaz8mlSd11QLO931d5PcKqGVijyYlGPGB1nXoKRUwNdBF
	r3mDHD73DhqAZQh3wDMrj68lJ+5USVUq75bsLx66tk2WZrp/3QORyHSOEcvLe9wf
	y8omFZDmX2TZuDBkSmtRMFPvf83NQiUaucsmNvvZSrZGrMqRnyJixksO4+y1EztY
	VnHysQoE83yxbJZqAyvpNyBOsYtcUUGmarQWl/TG5ay+HJFznS5hOU4wO+7GGm46
	GcJtkNrDyZm9WdrSfEoFfeVC0G+0eeIKz5SsHpJie/v9/A==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db0q0ema-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 21:28:11 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4d91b91b6f8so33015701cf.3
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 14:28:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758835690; x=1759440490;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xVJa3hRBr3b8zN4SyC/HCbPDO2Mv7vIE7SFYZLeD+YA=;
        b=iisMtyHss5EEf5Gg30gsvd3+8FwPNNgWHii4VekAI0GgJF/XgceRpsX0DSZPLyfB3u
         2MEIzzmIyDoutIcgATMG117IKiHu3rSy3PYzu87LyTmJJeVQOWHHKCoCwCBvEwz8/Dm/
         tZRAQxAmcS86d0wBET33BCqibw8ByCttRd6ov9z03I/PN+wHUc0aABf2FWjwFRHprPRt
         kG4AhjZvf48JsO7JsXAYavLNPhWjKNTi28aeR55k1sVuqSx6dioL4SbUuwtNqP4Z9nkM
         gSqJXjmX5raH9WfAYRZ2QYFlG9A+FflRBfMVwLSrf3QvO5uGxk+Xe6ZOJMddHNPdMRmJ
         Ziyw==
X-Forwarded-Encrypted: i=1; AJvYcCWVuFCilG/UtaTX2ri5w4X3HNWdgy6Oa6KEFWGhtqbBL+MBGnPQJKe5LgOxcEFH6wzjgWp+CAEia36v@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9wfPtqecAyvYLG62xWoC6wbyRP6UFEj7+ov4XVHP+aXYxTVoI
	que9xZwi2kcKQjgJyMuDpVAxDN2jizwlMpOog56JT5RLvhPxO3SmqkNrbrHx/qKm5tZCqxLzzzI
	50oz6hKBlzMGMstDrBgs0SN7RlF7V82+aWOqJHB5urH1cCnSZvOPI6cgMJHsB26CU3psO1f/m
X-Gm-Gg: ASbGncssOifJXo3apMEp25QT2VeWKEOyIAsPfSVokuTEnV3jJxejFvbQqTV+rb8hOCG
	KTIs5oz18TLoRUm+8CVorFtv8GwTHG8X4fGmI6d5RMkmuaF3TQ0XmewcKsTF+03z0dXq79vMaOM
	fth6Ph2/dS241ilaj7+Ua1HlaQbgRinNLJ9/gdarLlFdnDzyM6/WKjR79aDfl8Qhk0CPX7kKIM6
	a4ryImK6cO0wMN7JD8kXM05ffv9gMLZRygCYhMfRQYvyByWJEVdg9pCzRden3hwAwt8AYh5Kzjn
	Pz418z3aKp95wtc6WpfuovsAG/sENMFilcL7t5Dgrh6Z5NrerKCkTjihDHxzAd/dwrPdvLbKSaA
	yfjrXGLDXtGfhyYIR1RLRDBKh8bbxPnyA13Zu9MzLmQGe5qvFvsKx
X-Received: by 2002:a05:622a:4208:b0:4b6:2360:accd with SMTP id d75a77b69052e-4da4d125b3bmr70727451cf.79.1758835689896;
        Thu, 25 Sep 2025 14:28:09 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IERpLILMpHgYah/4YChT5n6vChPATcZxT+HTlD/SkOj7T7pjCCewNbSF+lhHTpWFPOyyIoKdQ==
X-Received: by 2002:a05:622a:4208:b0:4b6:2360:accd with SMTP id d75a77b69052e-4da4d125b3bmr70727131cf.79.1758835689375;
        Thu, 25 Sep 2025 14:28:09 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58313dd66fesm1132195e87.54.2025.09.25.14.28.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 14:28:08 -0700 (PDT)
Date: Fri, 26 Sep 2025 00:28:06 +0300
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
Subject: Re: [PATCH 7/9] clk: qcom: clk-alpha-pll: Update the PLL support for
 cal_l
Message-ID: <wbabc2pjwe2ir6pb2nd5s3hfaf6y7nd6baabjl3rdgawtsdxq3@ncedo6jio7rz>
References: <20250924-knp-clk-v1-0-29b02b818782@oss.qualcomm.com>
 <20250924-knp-clk-v1-7-29b02b818782@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250924-knp-clk-v1-7-29b02b818782@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfXzMmuJ+FolyaZ
 /+jdDtbaqZTP9O5f7ZSvDaxobvXVZA/yJLr6TXhZsDsXAwt9MGJ0uAKkC+PICs8KISmzGixXdhv
 5S280xCGnlv3AZtxyXG9qnT3Hru/89ZLDDFKTqtn//6HQYd/GGf8ewWdBRDkubIf1K4IcfyIr5H
 Py3Qwy1fVaK2fYZ1Gdb20WCS7HZ+434pRAVq07rSFuavPEBbiJ5o/Kk9goFCrgRuTmc8ukKJw8u
 pDQmg4LJf9FPYVQCJTIQmhcXfHjW9m+19KO795L5E4FPNeurrjKa7Y8qoIzGQOsyRxyI9FH5Q/S
 GIbh0iAazxe1RGNcgewryEjgi8Ui8CNnrMuvpARObfPYAdllUyVDKSMNhJYypZ7BI9oA7yA959b
 uA05gWUZQ8GHeJHibCG5xKitkqlvuQ==
X-Proofpoint-GUID: -81P-hE9O6Hm-Z13uThbYNBKF-cZ1xUB
X-Proofpoint-ORIG-GUID: -81P-hE9O6Hm-Z13uThbYNBKF-cZ1xUB
X-Authority-Analysis: v=2.4 cv=JsX8bc4C c=1 sm=1 tr=0 ts=68d5b3eb cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=QDpnt0wtCZc4EWvjjt8A:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-25_02,2025-09-25_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 priorityscore=1501 spamscore=0 malwarescore=0
 lowpriorityscore=0 bulkscore=0 clxscore=1015 phishscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250171

On Wed, Sep 24, 2025 at 03:58:59PM -0700, Jingyi Wang wrote:
> From: Taniya Das <taniya.das@oss.qualcomm.com>
> 
> Recent QCOM PLLs require the CAL_L field to be programmed according to
> specific hardware recommendations, rather than using the legacy default
> value of 0x44. Hardcoding this value can lead to suboptimal or incorrect
> behavior on newer platforms.
> 
> To address this, introduce a `cal_l` field in the PLL configuration
> structure, allowing CAL_L to be set explicitly based on platform
> requirements. This improves flexibility and ensures correct PLL
> initialization across different hardware variants.
> 
> Signed-off-by: Taniya Das <taniya.das@oss.qualcomm.com>
> Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
> ---
>  drivers/clk/qcom/clk-alpha-pll.c | 6 +++++-
>  drivers/clk/qcom/clk-alpha-pll.h | 1 +
>  2 files changed, 6 insertions(+), 1 deletion(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

