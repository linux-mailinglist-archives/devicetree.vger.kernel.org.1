Return-Path: <devicetree+bounces-216194-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DD61DB53FD4
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 03:23:48 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9026716BE41
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 01:23:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D8FAA14A4CC;
	Fri, 12 Sep 2025 01:23:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="d3TxWoP2"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45A5B131E49
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 01:23:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757640223; cv=none; b=evuI6McsJh/nNN/nmXDpQlG21et8OUwwZu1hSK0x/tR5x0vaZz6MDbubmth1it+cCUhnI+yachiiPOegU+yxSvnAgYPHo6VwkCY/GTJJDYc6c/Ksg/L3OOzjd1/HlSNihey/8sMtxsXvHvYT1IOBwtVp3V/t3c8oLz9CfL5XKGU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757640223; c=relaxed/simple;
	bh=1QhHmcne+afHWrmPYChFnyoHWYfd27UDyP7cgfsSLMI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Fs6SP2j8H2jjaczZrT+TR3mYwURfnTzeoa+fiY/jzdjlYE8fQbfmFJPMDAiKcVYmdWp2A5EKvh2Jf1NB4HHsk+FaY5wZNOWyJ80KqYbpqvx4ZKGEWA5IxEfPe4bP/UsQOnk27yqg9/Kw5Xi1nKzx+I0nMk1nwNjEx++cytFNl9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=d3TxWoP2; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58BJ3eX6011093
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 01:23:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=phbp1n99fIqtgMb8Vmy4j4H4
	6BAYfSIrlAEx8Qjq1Sk=; b=d3TxWoP2/LYVaA4Gx0sEwXAL/6dei5QGC1WRhyK7
	E//AnrvxWvAc+hQu5facbEQscD/S7ydLzj/Rk9Uh+fYDyI9jFBus/XEanDKY+Z/b
	E1LJhhr+497Y7asGnsVon0KnMM38vzia5xzqr9FfKbqbSfhB4WLIAZ2phAzrYpc7
	TPVGxbmdsGqWRCw9DftynMpaCrhenT0wUVWNsRT+J8y9gWyH79rigQSv8Lsh+FeB
	T5eCNjBspj43EO2dXA0AalhdF+J3l0GO+Lem+SkDp8yAjnTgU3AySS5k96gdtV5x
	NldL1vfUDh1ND6jl8QcfTkbZBKA3fBrc6xb7n9WzGdfFqA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490aapt2qn-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 01:23:40 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4b5d5cc0f25so29074001cf.2
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 18:23:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757640220; x=1758245020;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=phbp1n99fIqtgMb8Vmy4j4H46BAYfSIrlAEx8Qjq1Sk=;
        b=VMP7mgyAky+f+Vt9oYhLW4reTwxzx6NSu7dzesHjcf5zFO63UziaGJIgri/FqAY0kA
         7hHsd6aTsxFS0O2yiwtjgJ0RIrYJimSCYBCMJ5g71feq0j+QAhq1gDK197bPO5vHeOI8
         gMmWAk8Kjp0zdP7pRptaDRsiay3KrHWCDHdTWW/DsKTHSHj0+1ERaH37w+KnD3GVX0Pz
         /AqzWuY1/zM15Ya77q2zoNDkBFBTjXbELhewyf3cbkXwD8fPQxGyYVA86wcLPKwIECI2
         XBGsoeCWz+Hzd55qL9Tx3PupdWBjkIy2316PB+SGqETZx5fn9+ce/dG8Kq6oLRoG7H4P
         rzvA==
X-Forwarded-Encrypted: i=1; AJvYcCXpGHQJQdb301dSxo7NL3t48KBK4TKXaMthbflEma05irl9HqaR8Ul0bAhbw2EcefF9xM6pu3GgvV13@vger.kernel.org
X-Gm-Message-State: AOJu0YwPdO8wvJpb0I01R8iupnB1lj+w/pOzGgBo9QHZ5IID4s9W4FaM
	syLG4yu50g0oWTO6CuHIbmG5bzLaXcBqGzxqY+t8Fj+uD2r0wEkDQ4Yf4z/2hipPaRaSpk/vSA0
	ExIN4k34Zf2eYoBWmRH60tsjdOn393MjMc+ow2bc5StWygVncAtbw3Oa53q1vfZpe
X-Gm-Gg: ASbGnctF05IX0xIooj4JGZy6YLHlRFuBWqHstVMRBsqUuzqIw16Z8YqNsusvMJhVrsT
	5Eyr0V9oUjYozgIVwWo+Ck0lp+E/wphfthkixX/REzYbTyUD+qFmKatQrcYoxE1N1c4BySCaHHM
	LLpFMIuju3CqX8AiU9j5PsiUBsI1PN2iJ48Lq0IAsO/Z4U6nwsVVXpwawmTNknY/Lm/sx0vqZ08
	15pPlTuUU5C4gtq/cR1fgmr0L74c4HvkFUg12vTahxXv4zAbSmaaQqWJabLsXUE3b2zDVsm9c1G
	hYXqvkOtcCk0/3CDqitu+JJXTlROY9zrYsptAK9Rcrv4mNuL9YBpOToVlrr21nx7X8/oi0wjMif
	P7UDk87fHdu+59/Ug4inzZgu600nndimgCxdSAeyKu8mI3j25zRqS
X-Received: by 2002:a05:622a:1249:b0:4b5:e72d:dbc5 with SMTP id d75a77b69052e-4b77d129e28mr16280241cf.48.1757640220003;
        Thu, 11 Sep 2025 18:23:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEAynI4bz/KxCp5t8jQU11GPgKeKhLD17wiB7Oe2sOXdsf6j6PRyZcg3pJ4ziMN/rj7L8iEeA==
X-Received: by 2002:a05:622a:1249:b0:4b5:e72d:dbc5 with SMTP id d75a77b69052e-4b77d129e28mr16279831cf.48.1757640219550;
        Thu, 11 Sep 2025 18:23:39 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-34f1a820665sm5335571fa.33.2025.09.11.18.23.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Sep 2025 18:23:37 -0700 (PDT)
Date: Fri, 12 Sep 2025 04:23:34 +0300
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
Subject: Re: [PATCH v4 03/13] phy: qcom: qmp-usbc: Add DP-related fields for
 USB/DP switchable PHY
Message-ID: <msoxnqzbmyxztzr4e4a44gf34i4alvnkzbq2hxwcymc2k6qdd4@5cij6oq4k6qh>
References: <20250911-add-displayport-support-for-qcs615-platform-v4-0-2702bdda14ed@oss.qualcomm.com>
 <20250911-add-displayport-support-for-qcs615-platform-v4-3-2702bdda14ed@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250911-add-displayport-support-for-qcs615-platform-v4-3-2702bdda14ed@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=eMETjGp1 c=1 sm=1 tr=0 ts=68c3761c cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=vMfMRHGFLa_JFT07zEoA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-GUID: RmijywZEyDKl4VbzLbOIUVFV4G2OcqxI
X-Proofpoint-ORIG-GUID: RmijywZEyDKl4VbzLbOIUVFV4G2OcqxI
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAwMCBTYWx0ZWRfX3RWdbIhTdohL
 dCeQoUlojLojUHKTqVScNN+MO/kqAU+mRabludn85ACLhgSC0PagvV7GnfTGvy61qwaltUQz+XL
 oKDN4rv/2TsUt9u//5rUxw04Fe2SwH6rXUh+U6tUIxYUP+6ZZJFjfBzvOu2GckpSN4yqo3sQyiH
 iyqgI3YWEihRHzeZGK5WsI/HKbDw+9p+/7QUT4M464cs9X7esLJnk9mwsI94OYnbk+RWW7q6S9E
 EZkhUMWudQyrm60BHfEukRLL4NZqWSuTXdpN19yyJumzIusn42jD2lZKTDssWUv4Er3YFjgmHxD
 YArW2HLMc9R+kLkQjnSud0KEI14kOmPEnLJhJHb+SCpGzZHoJYr/PlBQNZZS5yW1l95EGLSH7ec
 7SIBnc63
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-11_04,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 malwarescore=0 clxscore=1015 adultscore=0
 bulkscore=0 phishscore=0 spamscore=0 suspectscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509060000

On Thu, Sep 11, 2025 at 10:55:00PM +0800, Xiangxu Yin wrote:
> Extend qmp_usbc_offsets and qmp_phy_cfg with DP-specific fields,
> including register offsets, init tables, and callback hooks. Also
> update qmp_usbc struct to track DP-related resources and state.
> This enables support for USB/DP switchable Type-C PHYs that operate
> in either mode.
> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 54 +++++++++++++++++++++++++++-----
>  1 file changed, 46 insertions(+), 8 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

