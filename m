Return-Path: <devicetree+bounces-219946-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D66FB8FCAB
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 11:40:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3CC7F18A0D9C
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 09:40:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8BC1A2882BD;
	Mon, 22 Sep 2025 09:40:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="pXKZRq/9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C90C9287519
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 09:40:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758534011; cv=none; b=kaDJRTT4D5kRrYWxuan9vGvGbdNF3L3r/rQTLlomjpyvJgsXM7AU/J2gpMpThUyPpl7wAVn7j4r8xOVtRiLmWu+tnOBCHrkIgCKs2FH5HTKHJGnfMxQZQapZkeFhDkN+pi2wLR/XJh6WhPCMHd64Q2ClkY4Vb+hVgc0xLpTqtxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758534011; c=relaxed/simple;
	bh=iUm7WYS7P/wtRO0KyVFWy2NmCc/VczuVuNk9FQ+1J0c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nGXB83PipFWxJvzMLMAUBC0kp8VSK0OIznHHV8umX7+XgKIBMnrTMfiY6wnOvdoWLadqTvhHdpY6pZa/vvgjKQAFD6iBSrxMUCuw4zSdk3bP6AlvX5ixJ/d9wX2ZzFuR6ZtooS2jVgXdsGHkyvhZUq+7ty0pFcr1/8QtmK273kQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=pXKZRq/9; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58M7p41a005685
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 09:40:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	7YluqLjFkeDBsYKSBhPJwBbp0COj/3zoNrL6kINO3I8=; b=pXKZRq/9CE6rRZBi
	Jky4PBi9rEiRdx/UtJ49BKRg39I3qn6KPqZ7JbDsFC+VZ5u7i96zjwhIbWjnyQJw
	OKsskdpkAPiWwJHqpK9W45VCgi4gIRGtbVgyDRaDxLwxnr5WAq+nRDZGKl8EeASH
	92AWXuxGg6RRhILFrJ1caqk5iyvkZ2PgVam+dVTzcPEsXwVe4bUhInEGxOHLoVdR
	VmGbjCkCkPnH+/ksnlrW22jnvtqDPm+Rfzp89mL3AfjDsEnmYC/5C77WAgu1LmOi
	ASjDpqPWKy7lis9fVDzCdoD0iX+5MrkGNfx8xG9xY2miUqdr4soYidhBHd7YcbBD
	U3pDaw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49b2e10d9x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 09:40:08 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b5d58d226cso93459651cf.1
        for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 02:40:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758534007; x=1759138807;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7YluqLjFkeDBsYKSBhPJwBbp0COj/3zoNrL6kINO3I8=;
        b=Id6zOdGRyea2vYYt/6ZzNeGSQf3iFnvec5No6NYjrVeODGvkovHX+Nr49znnt/KqWg
         J7fJcSgb8TOlPgA95IyCOJBo4bstcBFgn0gPegGD+jRk9s0d9YJlC3DL4Dj5FeTZRVe4
         dCSuJrdRvTuDqYawnkhoRt9rZlI1KDmq+f22alZmjBsb4xT8QdQ3zFqm5jJ3EaT2gpLD
         Msx7c6uC8CZn+uGCICqTCJkRG4uIu2Hz4GTk4984Wd0rx/+Vl0g9vITW8/VPq8Sz3fHm
         OP3JRHDVJaO2tb2Y4ttwvCCDSZRVo7kCYW7qIdSRxRlwFx+KH9fau3VLii9+tPu8oWY8
         aVQA==
X-Forwarded-Encrypted: i=1; AJvYcCVsi0hyDlk/j2zfqUvw6DmVmS2v1bc1DHBG5fy5GCHdgycDJY1Ud6Y/OPhxP4rOMKvmTe53EQlovixI@vger.kernel.org
X-Gm-Message-State: AOJu0YwQP2usjxlQ0MmceKd7UU64ExRbuD0BVycy1dGaasAOPijiqrk8
	hGm4HN7nO7Sc8T7AXYE6G9alO9Zk4L2Wdtw1V2lEQQcCyBVOwrpQdIJDVAqfsl4pspk+DCE4Cxf
	Pif4W+grhWKNKN7m/wPI5SR2biS1cOr0sBj1KKn50/DRkSiXfThQv5QfWG/I+KKWA
X-Gm-Gg: ASbGncta0tQypGd5gTJpXtkSO7rZpBgVgjV6qtZmUkCTOmXnQJJRcHsly0Fg7K9sYQW
	s4D/DplMBDh87c5Rsq1EF2idNh/Zd/7T0kXMaQgGINsktoFj04C7m1PETmzRMAXIQieyZcSXPRU
	zlEluHBxuXtU9OMhV5EDiLl6a7EnVitfMFzucfl1GtVhykt4dUdpMeCCUBa8mIaUMTwLDIfCa5o
	U63E4Fum4ltczyLPuArPXkjx5FFRfaxKEASiu9okwCFeF4L5JfdR+8GAOlVMCkVP3AqiJJiFDmK
	5hOGspUuRc7jDsP1W532xQD96StiCahVWE9phqB3z9Uma4p4HsZvicMud/DPTMx27PoOYIbbZTQ
	eyjCpytlhzAqQVJuA6785LIb4q1+xFEnVgETlaXGZeSeFqFGEsuDi
X-Received: by 2002:a05:622a:3cb:b0:4bd:8a70:8419 with SMTP id d75a77b69052e-4c0740771efmr132175871cf.49.1758534006526;
        Mon, 22 Sep 2025 02:40:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHHPdl7qbXwWAyMzAb2xrKkqm9pTpnhem1oin/ZkSbUrYmV5Vp09P9ycfD9quaP9yIYnQ94uw==
X-Received: by 2002:a05:622a:3cb:b0:4bd:8a70:8419 with SMTP id d75a77b69052e-4c0740771efmr132175461cf.49.1758534005900;
        Mon, 22 Sep 2025 02:40:05 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-57e06875b8dsm981204e87.2.2025.09.22.02.40.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Sep 2025 02:40:05 -0700 (PDT)
Date: Mon, 22 Sep 2025 12:40:03 +0300
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
Subject: Re: [PATCH v5 05/14] phy: qcom: qmp-usbc: Move reset config into PHY
 cfg
Message-ID: <ysxjabaah6rcbsjlreteo32zdljjcd547vgqeoxototwicjj74@rwovxeg6rnli>
References: <20250919-add-displayport-support-for-qcs615-platform-v5-0-eae6681f4002@oss.qualcomm.com>
 <20250919-add-displayport-support-for-qcs615-platform-v5-5-eae6681f4002@oss.qualcomm.com>
 <z3phuuokrhonbukct2siz3ujear5ymtnoviea2epxzvjdmsvkj@w4puf4c44tmk>
 <83b5a265-1c5f-49f5-a89e-22f466df3304@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <83b5a265-1c5f-49f5-a89e-22f466df3304@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIyMDA3NiBTYWx0ZWRfXy+AnV39rkrdD
 enWdUZFrkLX3UFxuIjxZNXpTwauzaF/nhoxu1a1kxbPYHWkZF6vFnZxhVcKUcA8+yBBsmGrMeve
 /UfPXCKWiH7dAJpCfWqk+835a14J7WVsbGko6jtRWNv6UVhdFPSkn7bloTTX8Z6u/hr7XJatwmD
 2yMwSC8mW/6MHv1R7B2Zm/xuLS4rXNPPldXk5uD62XVWtDEjf6d5KH8n5mHXFJt70GcL1NmKafW
 nAZsTj05EE/5p6Li2NmixukddYSOiRe7QFS784eQ2ZIK4Xz/l8q2QERjFQP+jtu8i1We5QD3rFO
 S/enBX5PSootoRVtX7OjtI/H/sAuBY/MOCsN0FL4YZs4okpdFxO34DdQG6J4y5VEubcqr6dbvnj
 EJ2FrWUr
X-Proofpoint-ORIG-GUID: _us_cxHHpFe5lYUxyDBt63i3q0CicwBc
X-Authority-Analysis: v=2.4 cv=HM7DFptv c=1 sm=1 tr=0 ts=68d11978 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=zhdrUoIqCuD_tm7jGOwA:9 a=3ZKOabzyN94A:10
 a=wPNLvfGTeEIA:10 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: _us_cxHHpFe5lYUxyDBt63i3q0CicwBc
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-22_01,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 suspectscore=0 impostorscore=0 spamscore=0 phishscore=0
 malwarescore=0 adultscore=0 priorityscore=1501 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509220076

On Mon, Sep 22, 2025 at 04:04:42PM +0800, Xiangxu Yin wrote:
> 
> On 9/20/2025 12:45 AM, Dmitry Baryshkov wrote:
> > On Fri, Sep 19, 2025 at 10:24:22PM +0800, Xiangxu Yin wrote:
> >> Move resets to qmp_phy_cfg for per-PHY customization. Keep legacy DT
> >> path on the old hardcoded list; non-legacy path uses cfg->reset_list.
> > Why? Start your commit messages with the description of the issue that
> > you are trying to solve.
> 
> 
> The original reset list only works for USB-only PHYs. USB3DP PHYs need different
> reset names like "dp_phy", so they use a separate list. Moving resets to
> qmp_phy_cfg enables per-PHY config without special-case logic in DT parsing.
> I will update commit msg with issue description.
> 
> Or do you suggest using (offs->dp_serdes != 0) to choose the reset list instead
> using new attributes?

You can't because othe DP PHYs supported by this driver will use 3
resets: phy, phy_phy and dp_phy.

> 
> 
> >> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> >> ---
> >>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 18 +++++++++++++++---
> >>  1 file changed, 15 insertions(+), 3 deletions(-)
> >>

-- 
With best wishes
Dmitry

