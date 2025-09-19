Return-Path: <devicetree+bounces-219394-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C3169B8AA13
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 18:46:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8EB405A3CC3
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 16:45:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 148D9321437;
	Fri, 19 Sep 2025 16:45:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="L+zIWkYX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5017331E88A
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 16:45:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758300336; cv=none; b=G3XoxChav5seMOZcRYc4kETXFF9NRkRGb19H9gUU73sxsiFWOl6PbdvaHrbwp8gE/GIjr4+S/kMZbEQJ1TWASiCjtWLjArGheV7bE/sy0O+xpJOzvcvHD1KRAx062kwIClwTqECm7SN21wv5Q61onpK89BArPnHP6GbNvsyaNTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758300336; c=relaxed/simple;
	bh=4fs98jrSck3x8PLmQUQVQOKqZfnNTah8hBpBS8SrcvU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mCgYpNxTpkbvdGpYs1FqiAsD/v5Saogb9bhwTGCpJGhF3Iz1ldei3tsIG5zmnJUJk8seeDf8ZHw53txUkkfa1TewWogbgyA0i7XK7zzklRCaf9+sQW0ywRNA8BZV5chdFIwMF1lecpcsdyK1N7NjZ++4M4pCj3N0Yd5iW95ZM34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=L+zIWkYX; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58JEN497021478
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 16:45:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=C20ghaTYz2z07OewDUW3U9kP
	PyChf5ZskPTDdANcg0M=; b=L+zIWkYX2CHEXD1IG7LIUWQjC0kQ25fACtMvwpbi
	OZboAtLm0n3MKd/wqPAgbMCllkaBCywR/c1UNbx1+bk1upwTi5krAOiY71qoc0b2
	mivrON5KmSG3KK97wOSVX03BecCOBLMcWCTd47sVdojrmDgixGdUsvzoIh5GLaDm
	aJVclV883owgqTbbHMTb+uPs707N0k+5UoKpuhQr5EqDLQKjYj5jGRrfrQJsVsTx
	ji7qbLbGiKr67yB3KEJIZgXwx0mG+6sRoNFTnbeB0NUw4vBVXA48aV6Hb2Gz35D+
	RY8MC/gjrF7wxU3T1isgVegs5peQSApRmS6bTSj9bGegVw==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 497fy5k5e1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 16:45:32 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4b5e178be7eso56180301cf.1
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 09:45:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758300332; x=1758905132;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=C20ghaTYz2z07OewDUW3U9kPPyChf5ZskPTDdANcg0M=;
        b=uhZ+QCph7HV7ulxi/zKCT83AS5+xNTDjWsbcW/iy5jpe3i8bj/yEtLSjJeQO4+bnk7
         werEeP/xzXcaBcc3EJiV2mtkyUPxxiKttXkZ7mpZLIiJETyIRjE2svu13JRdQGTOrHJt
         cwRzCQ5g/9kl4xzsPuc2Ji3tmm9vThSr9pdv10A0OXY3KH5I3Cq5d8UkiAl+dXjc4W1f
         4FNpqqAlrHHEKp5Qv/VRU11uc3RDglXur8n34WssxqWNE0nrmXnCojhFDCOQ6qLy+iyg
         rpoahvrGTJNw03Lr5jFT9nxZuYXQQPv+bl6XrvR6fT8H+bC5umP70Qh8SCYxpuyquJOR
         yG7Q==
X-Forwarded-Encrypted: i=1; AJvYcCV2llzekJAsMCgt0E2agmLsaF5I6GzjQ+PSKTs2kGCfXFNsRWhQvHPCC57u+rtmmoM4NqE7wx72c7PK@vger.kernel.org
X-Gm-Message-State: AOJu0Yz/B3NCrDN1YuDv8UKxSEIYUcPwpMONh43tdOYy+LH3w+vSXaZg
	Xsw9dxds7S2v0jharMr7kznhIFNtLQe9IhuE0UCpRaTNVQxiaA7frLU2FlNsSiv1YtaMZGDUfjA
	x3Uzf70MUHrTa+ALd3roq5pOv4L4Za72iMcI8JTeE1YtiuimzuZ2E1Txi7M3mi6Nj
X-Gm-Gg: ASbGncutFZ+BTvfd+zL5rkfiU/Zy8A70n+Axfap/3G3EfzDu90dcrbTxtahMdg5DSrf
	OypyQHPKu2sRI9UZQjBHzjmAA2UExSXzeN5Yu0MbWOifIIoOIxpTJfM3C7hu8+2u+AAv+zjmfLl
	RvtyvbkxkI8A4RdOP7xDuQaGsT5OfrAiFIvQ5UAcb4tDzcjqyG80k8tbJlpWVu2mPafyI3nv7lO
	L4kY91Mj/eYq+oepMKcsp76/G3fDV/++WqFH2++EyJOGF4iV3pSpokqi/s9cNUgEXruqX9gZrXo
	1aypb0+0EjIZyQ9KdoKqjWkxOymA9ze5dKLKGaFjce3kNxRGT/2u5FXkNNVBSpuqO3jnJTeyCe9
	fjPJ0n6dEdGBpbH2ytbslkWYxlHJgNTpP5eiuZCf0P/F4nUA4UG4f
X-Received: by 2002:ad4:5de6:0:b0:78d:72e5:4309 with SMTP id 6a1803df08f44-79913f8ccc3mr48541676d6.25.1758300331933;
        Fri, 19 Sep 2025 09:45:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IENMkKKG2cQIkLe25WJp4a+nFBl5DjpFFzclGB37kCIW8D1f1msQ+H2z+bjyqDP10qr1zJDzA==
X-Received: by 2002:ad4:5de6:0:b0:78d:72e5:4309 with SMTP id 6a1803df08f44-79913f8ccc3mr48541056d6.25.1758300331184;
        Fri, 19 Sep 2025 09:45:31 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-361a26cbcffsm14030911fa.22.2025.09.19.09.45.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 09:45:29 -0700 (PDT)
Date: Fri, 19 Sep 2025 19:45:27 +0300
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
Message-ID: <z3phuuokrhonbukct2siz3ujear5ymtnoviea2epxzvjdmsvkj@w4puf4c44tmk>
References: <20250919-add-displayport-support-for-qcs615-platform-v5-0-eae6681f4002@oss.qualcomm.com>
 <20250919-add-displayport-support-for-qcs615-platform-v5-5-eae6681f4002@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250919-add-displayport-support-for-qcs615-platform-v5-5-eae6681f4002@oss.qualcomm.com>
X-Proofpoint-GUID: EKyDmB86F9JFxHWiblHzK6ArbdSoNNg1
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTE2MDIwMiBTYWx0ZWRfX/r0PaEmjD5GS
 KDe1AECMz5PBAcAc5SS3Egc9987zZSBXYASnwkUHGSyMLsFEcxjqwLg9TwG3xHFPCw+iwwnA0Nz
 zV2pgoFwlZILcDDkKi4SXRgyfm0wcyJtBq6TtFYfuWDzVZfNYSfK24Kmny8Xye/ygz0x9RxzNrd
 in2txHvuS5kUXCGB3on0o2OSBKphRvaUQ4j/RBY6FuoKy0qxY7vyVSaAADegeKTJ9uYUE0vSv7T
 KccQ59O/iqCTOM/rb93lF6oiItQsEMFE4l4U+pZBIyns5PomODyW68khCmlRaSYFjGgdnjubzds
 EHtw1ELs6X1xJMU1zvG+42/1XC03EcPjbtCxoylmWbX1X6DOPn2o6kYY/zagHOp52pB8lqhffbS
 LuOv+wuT
X-Authority-Analysis: v=2.4 cv=Y+f4sgeN c=1 sm=1 tr=0 ts=68cd88ad cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=_hUenYmi4SsfCOKiixMA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-ORIG-GUID: EKyDmB86F9JFxHWiblHzK6ArbdSoNNg1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-19_01,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 impostorscore=0 phishscore=0 adultscore=0
 malwarescore=0 bulkscore=0 spamscore=0 clxscore=1015 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509160202

On Fri, Sep 19, 2025 at 10:24:22PM +0800, Xiangxu Yin wrote:
> Move resets to qmp_phy_cfg for per-PHY customization. Keep legacy DT
> path on the old hardcoded list; non-legacy path uses cfg->reset_list.

Why? Start your commit messages with the description of the issue that
you are trying to solve.

> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 18 +++++++++++++++---
>  1 file changed, 15 insertions(+), 3 deletions(-)
> 

-- 
With best wishes
Dmitry

