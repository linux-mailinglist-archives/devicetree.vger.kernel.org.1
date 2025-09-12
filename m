Return-Path: <devicetree+bounces-216382-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 7B294B54993
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 12:22:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DE1AB189E0A8
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 10:23:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FBA2283FDF;
	Fri, 12 Sep 2025 10:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="baq9JZNn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 063E0235055
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 10:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757672435; cv=none; b=hJOJAOATlx48yJvCdwc9hri/uGQs+5VlPa/sW4WFBoCHd87nYLJpRn7lI7L/LxIeGq3M5xH2HLQoAb79deNccfGx/N485dx1HJjrBZyyBBTPJALsrKRaRVe1SBJyAHqOs3je8ocG6CMSp0v/l807LVmqN3mGYs6QTFlZEG6Qzks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757672435; c=relaxed/simple;
	bh=lGn8lwvYmkoBLqlcSTBOdo/mB29tRg/g9F6ugJIwNjY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=F0unLK1JUGMYCqJncJNd0wkd+MOummMFQPPEbQmWlT4qy6VqcVF/IuTTJTzNp4zhUMsDoJZ6aj1XMLEirDtwy5HKokfSk4N1cVnY7JT06GZ7bwna96omklSGSQCUaktQt4sb01oFIgEdLUvEJO8W5mSCku3NLPqc+htDwdDnzP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=baq9JZNn; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58C9fLsj010823
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 10:20:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=2+yk/HK2uTnuVPRZXu78qeeV
	MxzPMF0ZBseadsxMnhI=; b=baq9JZNnbBmtFqW2UCkb8P6sbj8TO0pqY2b/7FaO
	ywtAcEEjCW0fP1NFmwJ2ZmyuM3qyL1s7Q5y1aW6oXXCven99Q9ZZBRVAqyRVkP8T
	tibnnQQDd95xH4Xsk0216wOSu2WzFbmu/25Eo9VM8WPN6bDJpYr8n6jNCi3hpOZu
	NT5IQ6UZn4hvzXoVJCDKzS0+etyoDyg2umSy5EBclcVvaq0iHHvB2EZwangsKRUf
	PHoQbZlk4F18xguE7gjsWM/w6x7HzwRRnQA01k6p1Ywzp2c1vbE3K5meUlQNsmDA
	PTjj9Zy9TGop9cvAn5o9VWYukgf7X7bcJU9cMIsb7vv4pg==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490e4mb09y-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 10:20:32 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b6019b13b2so64653221cf.3
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 03:20:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757672431; x=1758277231;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2+yk/HK2uTnuVPRZXu78qeeVMxzPMF0ZBseadsxMnhI=;
        b=Efcjpvp1tD8XLWjgHdknYL3heZKAhxlpkukaIfNpaPcO4nJJW1z01TsvsAyHNxFpUj
         WcJuiULDzPAYbhTQv3fFRx8wxCOu5rLdRDCZoUwYSsvih5o3q7MnaBqLUBS96lKJy23u
         9kabP9il11RiLK7bCp6arl3rxT7tL2Q0clGYgGol+hQhTUvA18p9TPVhlcyfdpUGDr/d
         lnHcuJ+3UCAyvQpjhLuxSyMvuh9P5SS34Z82ypDfpwvtvC8qaom1EXndy51tv9NI9xvK
         QnKcNHZ7bLwaYDuhR2v/CARFT1CNeIT2YxDi90ip52YOIuzZKSlu0KWxCSvT/7gohaU7
         D73g==
X-Forwarded-Encrypted: i=1; AJvYcCXK9uI++vR6rY17u1Gg9xwfbinNfxcPNe37mrWRlT1aSeIpZ9hzgL3ykpD+K/GYwZra8g13eX2dxFYh@vger.kernel.org
X-Gm-Message-State: AOJu0YwtWY0J7k7tmKRGzS6TOToRA7lg+JA+qbrf6abByJOZG2tOXiVv
	ofKGihMsI2nefwzijUoA09xAZ1w7BtLFbtR/74uGy29/Q/27HNCWioB1B4NEeefm+d6t+Y6eUR3
	zshyFfw5aKW/YC9MWKdP1Y7Z+XlpML+iTP0ljnmQS9JlQGtO+p5SaBGOms++qFA3h
X-Gm-Gg: ASbGnctxEFcWkZalZT7+tSz1/Z9CjREk6nD3h5KOI3Rq/oUEnppbNFCBe86Zk6nr0Fw
	82vN9tTh8OyQz6mCYb+ITo7+cT47pifnJhve/+29pmscHwpe0BozWiJ/6c+MD7xAmd4NoxP1XwH
	IXj1Y0ABz72mRhRn90tl6TEd16iO86If5hReOwMabS3HtTs24N9vq3lQb0K93eOeqa894xDGMgM
	bedLukjBSEO4XpjVeeA1ovNyKSH+7n+E6Dqz8J9p6AoLJyK8+kRzgy5v3f2Tk0lk6FXQj9yWGPn
	PFcVZrG1q9bkY1zhR1HdGyoAuUpCPcnJe4ZzX5WjxQ0wGNLbHrGsDSAipx/8+J1d4NlQQjH39fX
	vnhtbHrCL0NtQdStd1sZOYXoCeINM4m6JbWj1YlC/KpNOsKACCWV8
X-Received: by 2002:a05:622a:d1:b0:4b4:9169:455e with SMTP id d75a77b69052e-4b77d05e8cbmr30994831cf.34.1757672431545;
        Fri, 12 Sep 2025 03:20:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF+kKC6NUmFZEfIjk6emSV08toNNjqRGF3CD3khX2vxvSwWG/Bv/20qxW9fKMHmTyb8jBpykg==
X-Received: by 2002:a05:622a:d1:b0:4b4:9169:455e with SMTP id d75a77b69052e-4b77d05e8cbmr30994371cf.34.1757672430879;
        Fri, 12 Sep 2025 03:20:30 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e5c3b5fadsm1073715e87.6.2025.09.12.03.20.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 03:20:30 -0700 (PDT)
Date: Fri, 12 Sep 2025 13:20:27 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
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
        li.liu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Subject: Re: [PATCH v4 09/13] phy: qcom: qmp-usbc: Add TCSR parsing and PHY
 mode setting
Message-ID: <x6p3hgatsauguzxryubkh54mue5adldkem2dh74ugf6jf3ige3@cb3mmigu6sjy>
References: <20250911-add-displayport-support-for-qcs615-platform-v4-0-2702bdda14ed@oss.qualcomm.com>
 <20250911-add-displayport-support-for-qcs615-platform-v4-9-2702bdda14ed@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250911-add-displayport-support-for-qcs615-platform-v4-9-2702bdda14ed@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzOCBTYWx0ZWRfX6imsz9LRN/7q
 hh58bStDcPjv8CslogRNEeklqcgu53ZsAq9KLOSaUw8dZNVFSSLUFAB8JPuzaV04RFwbydGxgcm
 giPkDK8oc9ilixjjIP9lN/peTbUlhO9zcL9fhQHHUeT5lpnXYMea3C8LHxJWHGBsxJB5vSy45yi
 lgERPyfdL1li4rCfGy2H9aDJFPwVU23/aGswbyd+EJA+fbvrH2HvFL1JHFYt2kCfXVJ9wBht7yw
 RESQXPGYmqUJjjGSkNiqQvFG9BddCjJa+aD6WDMhlzfZZR8tyULikCjTGCeM//tWS/f4KUJ5E3P
 bI47DxhwkmUflGBa3wuoEzsTSVzZV4b8qoyTD+6YHxJcCxDzU3Xr80mSnng+ehpymeZH5r5KIrI
 5i7Be2Z2
X-Authority-Analysis: v=2.4 cv=J66q7BnS c=1 sm=1 tr=0 ts=68c3f3f0 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=lnF_te-ij5czt4pA2k8A:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-GUID: 0gk4EpX3mBp6EwMqYdv_ty-oeXE5SeZM
X-Proofpoint-ORIG-GUID: 0gk4EpX3mBp6EwMqYdv_ty-oeXE5SeZM
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_03,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 clxscore=1015 spamscore=0 phishscore=0
 adultscore=0 priorityscore=1501 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060038

On Thu, Sep 11, 2025 at 10:55:06PM +0800, Xiangxu Yin wrote:
> Parse TCSR registers to support DP mode signaling via dp_phy_mode_reg.
> Move USB PHY-only register configuration from com_init to
> qmp_usbc_usb_power_on.

Two sets of changes. Two commits.

> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 47 ++++++++++++++++++++------------
>  1 file changed, 29 insertions(+), 18 deletions(-)
> 

-- 
With best wishes
Dmitry

