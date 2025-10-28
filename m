Return-Path: <devicetree+bounces-232370-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 67E71C16DCE
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 22:06:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5EE0418880A8
	for <lists+devicetree@lfdr.de>; Tue, 28 Oct 2025 21:06:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 03BA52D97BA;
	Tue, 28 Oct 2025 21:06:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="U3zMR63R";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DSf59F0o"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78C252D8799
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 21:06:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761685579; cv=none; b=W2lSUuPPK7FAxMPhEBuA60reKAWfewvMhPZfdVa2txKJ9al737sADx0uSCNPjvrirO9xjUtbUWvxag5XNg8NnLdjpHrhIZ9sR0ma2LgCTBbY2W26bmdrydtxDEWwThHSbCrL1qlWtfXxm8lU0MHmeqzBkT6AwivPl7NaZ0Mm/e4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761685579; c=relaxed/simple;
	bh=9j5W6JKT8ymsBvgv3BwD7jABuN8F2x1UYrjiLwb7/UU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=nNaIcuPVxcsQbFb2+fOiXMAIcvzd/ad2MFoKcbPLbjcP2OR7H2F8eTwyEtG5ynRcUa8bHyqhf+g9xeSF3cy3D0rDvz9BHCJijnVUdMv5BE1HPGMSUFXBjOeuob4B+z79FMz14sB5ghlIVnDPpxYxy1vl4WcCBX2SUrfRibyvxg8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=U3zMR63R; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DSf59F0o; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59SJqNtp2510734
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 21:06:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=3LuDd6Mqkc5UQN+6Kj33eDjK
	A0G6b3Ct+WK02iCqVko=; b=U3zMR63Rc8+9bWu7MD990IAbZnQc1JmD0cYakHK3
	ElAuoxoNkhHenZM520RRB0hRAO+XuMPW+hty4VztogTFWdpp+3NWvTUAPao/3gQi
	Us87yalsSQ2t0GiioPBTs8QMiNm9MsUNi64FBKtSmZyFbABrZn8OS0Is2QHTP9xR
	/n0RRi25EfQNP1JoNN2qzMBz0gUtoPXgwK52tJ05ndOpF54VXzcC4k7fUcorKkpZ
	+6Rgu2EZ0wX2OL73JIUJLqC2DkplXTY0iNhiNqbX0wK3N6hdN/f+k89M1/w6CPYj
	yrQ7eCziIoSOu9QVufu3/pZ1llklvO6qqgOTwZHUAcR9wQ==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a34cd85gs-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 21:06:17 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4e88ddf3cd0so175493371cf.3
        for <devicetree@vger.kernel.org>; Tue, 28 Oct 2025 14:06:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1761685577; x=1762290377; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3LuDd6Mqkc5UQN+6Kj33eDjKA0G6b3Ct+WK02iCqVko=;
        b=DSf59F0ocUm0TZA+gBYyEENf4y3i4mISTxBodpQObTtlB2zZv0Tqi/kACsyP6J4MQC
         rNhJ9N7NqbnjxBWOjEUnyvgfvqb5BpF6cRj/DNaxk+uxFpkD/YgpOoQjrtjaOXVsLOnO
         ja4iU6Dn5G03/CerQbP7Jkpjxim//jSOKkiQrzheeSe+Ghy/Y14IEd/hBB45nAo/8UId
         4X6IeA1YvP8eoYxXL+D0yYkp9Z8d4q52N456XBRj3FzkRVfeg1B+VyfxuYQKIoUycBhq
         kgDO6ft98l/MEMktSRKYnnXvQ45undnOWRkKA4FVfjB5q8W9Ql6/pG+Rmj4uOqJo8Wjp
         sLsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761685577; x=1762290377;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3LuDd6Mqkc5UQN+6Kj33eDjKA0G6b3Ct+WK02iCqVko=;
        b=t+Sa5mWH1N963dHPttLS7Tam2BZnFJEpoCpJIW+vtHnuJXlHGT7HRHOoLQoGc1sj7+
         PGrBVUXdbDzrvvVe+MuAORHzl9ZyRBhFDIuHugJOew7e1Ui1gohPWM2pN6Q3NjrQANbj
         3bjBj6uDSygJZINjFMiQJDvijbyIaap3HYdnAV9xxxeyYAHYsCvs5IQn9AafC2PsNFxA
         RXP/P8kfUHn0ByJkGm6JPix7emKs9/dfp8caizih+fGwVssHzLjCIJOg+zflBUXd4cYE
         nDXCzmH+zKaVDnciRePHk2lK2VSFe5P3hofnEP10S8fzj3Z4UGwaiCWzw+tQOqcfkMO2
         vlxA==
X-Forwarded-Encrypted: i=1; AJvYcCUso2Eui4Pr4M7FODosjGvfoYfkXwyq1nNSHZKBDAEHOKCSQId5nbyTrdqcCGZvhOYAiOJmfzp2M0io@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1rKp51Dn0XK9CBIJFMgA1YGA6hzoHSTrUg6C7ywxQnX5XnYvF
	2dNHBC2+QqTJeSOIaJBpx9tY/L5L2xJtloT3BxcACOlVVVQPE+UYIcjFkxBbgyJYvm0CHfzNa/9
	C4d7LQyBmfPr+WuwgDLYTYOGj6SVp3FauvqGEmqZQ8UeIBLtGmJgMhYZb1OoyNibx
X-Gm-Gg: ASbGncs279reWhyhUg1EzFLzhhXnSnWi/80b0KzLVOtxSVIWpnnh+bGEhTNVDjHRS/y
	bDEPXkMB6ZNKgu5NadDPI5Tc2VsI6HxLaEvw38+TrnZ8uu05PoWohOjfKohr4CadDLStbGoJqy2
	Nl4gPno1nyH4uMrldoHLsfhtKzAl0UMXutQf8+4mIJCbzUi4AhsmvBPmOubsGQhE0LZUS4EHSp2
	bAlRjThY8d1jdcwKBXw4jZhkU0T0j1KDADeBzO2ORW2KFzdqySPyo2QjixRuMr8pOM768i8BRTP
	XC2tjqsShicPOQUQT4eF0MGxMljHMygIrfd7JaJPKxeq4YPqVleyDF3pXVlg9CqHhAsVQNuMtaO
	68tsQqo5haIp96s+YTkpV+C5AVSFtsKBBQhHuJtNg5wfbWkDDdaq8fzhd9Dwml1bThfO0H9Ke5T
	WXG+RZQevhCtY9
X-Received: by 2002:a05:622a:2b4f:b0:4eb:a216:c070 with SMTP id d75a77b69052e-4ed15cc0fd8mr9754421cf.84.1761685576561;
        Tue, 28 Oct 2025 14:06:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEsAXdNpraFNqns3dJFErOHHCkGYA7vRGOdqLB7Vapn2gKMaCa6HiAkrwDzj46FFPulHQDr+A==
X-Received: by 2002:a05:622a:2b4f:b0:4eb:a216:c070 with SMTP id d75a77b69052e-4ed15cc0fd8mr9753721cf.84.1761685575889;
        Tue, 28 Oct 2025 14:06:15 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-378ee09d2e5sm28860611fa.17.2025.10.28.14.06.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Oct 2025 14:06:15 -0700 (PDT)
Date: Tue, 28 Oct 2025 23:06:13 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Abel Vesa <abel.vesa@linaro.org>, Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 7/7] soc: qcom: ubwc: Add configuration Glymur platform
Message-ID: <k5aszduqmczeuxpwzuq7wvkotvnqdnkhn4kdnmc6mjvzyxw6r6@kfa3cnb5qwnc>
References: <20251014-glymur-display-v2-0-ff935e2f88c5@linaro.org>
 <20251014-glymur-display-v2-7-ff935e2f88c5@linaro.org>
 <7dxq62ltoeerb4g2fgchb2hd7eomvlexfgyvamxsuuirblavtn@4bg3dy2bukdq>
 <ump2gq7hta5dzul7bwjmb45dtrxezkbticdwis7opl2drmnuyz@wwlanncd6xlb>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ump2gq7hta5dzul7bwjmb45dtrxezkbticdwis7opl2drmnuyz@wwlanncd6xlb>
X-Proofpoint-ORIG-GUID: uA_aw1wH_I-9zxvmVOjbNJJelSxxUljT
X-Proofpoint-GUID: uA_aw1wH_I-9zxvmVOjbNJJelSxxUljT
X-Authority-Analysis: v=2.4 cv=avi/yCZV c=1 sm=1 tr=0 ts=69013049 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=KKAkSRfTAAAA:8 a=JArj1d4ql11fNzbR7T4A:9 a=CjuIK1q_8ugA:10
 a=kacYvNCVWA4VmyqE58fU:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI4MDE3NyBTYWx0ZWRfX/Dx4xUpXvdN6
 IrtM8X7Q3IknMcbO5YLNZckaD2kPmOUGjVScwnnUtME5/Gq4aV+bD0HZdynasKdgzb+AaQOr87n
 XBnvBiw2GumXE8JVQez3LlJo5z+Z8hSNQ4nq/hQwWXmy/mBxzRk8mX4EmULA51t3w1R/rwvMMwJ
 BsiJuGIibLTba1WSqqzABodX9BhsPYOojYUtLNsV0teQpHWm4jfwNYG5hI7ByN+2FSqdif1iWfo
 OEMURPjcB6wRDiugCR/Tm+EIj75MiTlunIBIsCI0vQ7BJ7RKeJ+iqjXYBat/+mKNoGuuaevuJqn
 JqXlM9ZIOcUp5sK7h20s+B4MrTP6KX9xoN1XD4rlIrKbh9stpDtssXgdhVcxqo016nMww7zGbEs
 C3gVj5uCwLAhGpYq4af+hBZprl6B4g==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-28_08,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 impostorscore=0 malwarescore=0
 suspectscore=0 adultscore=0 spamscore=0 bulkscore=0 phishscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2510280177

On Mon, Oct 27, 2025 at 12:17:13PM -0500, Bjorn Andersson wrote:
> On Mon, Oct 27, 2025 at 02:29:01PM +0200, Dmitry Baryshkov wrote:
> > On Tue, Oct 14, 2025 at 03:38:32PM +0300, Abel Vesa wrote:
> > > Describe the Universal Bandwidth Compression (UBWC) configuration
> > > for the new Glymur platform.
> > > 
> > > Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> > > ---
> > >  drivers/soc/qcom/ubwc_config.c | 12 ++++++++++++
> > >  1 file changed, 12 insertions(+)
> > > 
> > 
> > Bjorn, do you indent to pick up this patch on your own or would you ack
> > merging it through the drm/msm tree?
> > 
> 
> As there's no dependencies between the trees, I can pick these through
> the qcom tree now.

Thanks, SGTM.

-- 
With best wishes
Dmitry

