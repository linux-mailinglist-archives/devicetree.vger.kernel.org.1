Return-Path: <devicetree+bounces-216454-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A325B54D46
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 14:21:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B02D15C08DD
	for <lists+devicetree@lfdr.de>; Fri, 12 Sep 2025 12:16:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 63C7D3043D8;
	Fri, 12 Sep 2025 12:08:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GUQtzCm+"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAF7F3081D9
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 12:08:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757678922; cv=none; b=htBb+gULGSRJlrRAzlZN8j0MtcwHCYLYEHyVcIb009LQ9fxmq7wYn6QVHNQ4VtojYDZO2OB9S5ehfJQOmT3NXPS5lqY6qwhGOAjRHUVkNqEKizA629TQebmIKszVfswahzExHmoBJyVFwBfM907MgXt0cOmQp/Ag6muJXJ9UO2I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757678922; c=relaxed/simple;
	bh=FDrzboKdlEXI9O5b3TBxPT7jVn+E3IRmj5Bgaf1vbIA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=dwHXPIWjnNB6CPYOAZR5RM4nL6uTktK5nohy59DJrOgsevuCbgX3cMVmR4WdYvpuipUuTZfkfiQlyjro08c0NSN/KWtxa7RY2sRh+TuK669+33wLSM0/5tA966l58MPFPBoHQ4lmnuX898YQ5O+YlNkWz7USeseb7hPCRxzWp/w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GUQtzCm+; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58C9fOrw010915
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 12:08:40 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=0oXXG099vonYe458jI6+jdyn
	M6kqgEhK5y0kr8AEekM=; b=GUQtzCm+Kv1oabrFCrcTZ/2JCOVDQrrbOkzuzAdX
	Vc05f31dhWQ/A9c4jyVLi99kBWMUgeFlDlJXrKaMmoLhASOqubcxAYKFSf1eSp/G
	OnyuEm/hR4RBM+tGYNrAVVtAa4G+N6OhSsS2nu5kCt4wYdBQychp2RoYKWxcSNa0
	QwKMP/667CTpNdz0uubf6Fy4enrnCQazxr2AtdE/brdzEqjF76s8NBN6ITqc7N+y
	mzR4CmmfOs2kwTF13/59iv8hs+NYJLYJZWGW+FyiCyWISiCnTahez1UcriM1L4Fd
	loPvoaUNnYizfdsK+kyTx5lPFc/WD/szKKwKOjarAFdV4A==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490e4mbcdu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 12:08:39 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-72023d1be83so58751856d6.3
        for <devicetree@vger.kernel.org>; Fri, 12 Sep 2025 05:08:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757678918; x=1758283718;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0oXXG099vonYe458jI6+jdynM6kqgEhK5y0kr8AEekM=;
        b=Ao+6DvGqR7Pe5RLoppZIUY35F8Ckx42HNhA9/xrTveh0OPKdpMMQ3znDq14fMBd3Z6
         2iwyqrMcc4p6HHmbvBGryOe9twaGc7fPojMtMPwWSzyVXechd1kMRfA+moWN1NRL0592
         vhuQQCKh6FZwkVEpvgqHSpqJ9tLnSOMKEKttYoprEJfGpc1h5FkbFwmo4DSD+xRQfu6x
         gHp7/qKyYRfHY1JIBddbepJaGnhIyAlf+cCP2WaVCJyIRjubM273n1my02cHshIJ0VUe
         AaYfiEjbUArP+6SR6KdNl18ed2m4qCu9+cvZpcqvGrxop3D8XQiG93DHUC7Xx1NDgarw
         udIQ==
X-Forwarded-Encrypted: i=1; AJvYcCXZyjezjyop/8PcOGx6p1JzrM3crM9WMMdzcZjMFCBHopzmGRkMMJDwtODkl9gOxj/N6eG39pdG3bgy@vger.kernel.org
X-Gm-Message-State: AOJu0YzGV/6zdTf3U6b9U/esWq0SLqDVIFVLAaE3ZiopeOPTgYdfGLwm
	D55DGRsM/gkPDj6+Cj0rpEkRYIsdvz7g/wsxGVl4RrFl+RtSAUpaV6T0Ag+/t9uBzt9Bnd81AK6
	c/n8ZDGu/IDJYmmKkpKdkUeW7DPQjL8mF3pdSgnII/VH0unLy3O81WGkwlkTj00zQ
X-Gm-Gg: ASbGncuONLJ65YY9iFuvglXgBttbEkwPRk7u16DQc9S7haLaP8NFOSjZGyT2VfGxpWg
	B3jeMBHVlfUlzD4LcESpuwELn5meYrADgGnW4G/oOT0S5KBc0f2Ig1QvsEZNP/6ReHWefkftB8i
	z4twORBHTwkXybp+UkFyaNJtE793EO5RG5pG7fdGe9H3bUfHRlOqnen3FTJkyRf4+3mC7S2SqpO
	5lEUPmbWoeSG5qv2mLZiXHCYhW34LL7i0OeKcL8c8eDw36m9QYiIC2wC5Qv+nLVy90Sqw6eKsQ6
	8bgJfw4PF4nQkwyUqvjWrSywRtJ/bJ21QoM8ylDTSHPoGdAnuBeUSvXr7FkUmxhsQvq0dfPkdne
	oemw1QSaq8Jwv9aoI3TzC7uLAfR0sAhXwyrOvS8DcO6bRGFqlFaNt
X-Received: by 2002:a05:6214:3018:b0:765:fe8f:13df with SMTP id 6a1803df08f44-767c50643a1mr31418766d6.63.1757678917666;
        Fri, 12 Sep 2025 05:08:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHM2i4nwyWJB0E+QBu+zEM9C2hMOxGjTWUuESDMwXmBg9KEJdV9S8YjsKklNga/yVnrgK5IRg==
X-Received: by 2002:a05:6214:3018:b0:765:fe8f:13df with SMTP id 6a1803df08f44-767c50643a1mr31417486d6.63.1757678916750;
        Fri, 12 Sep 2025 05:08:36 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-571a0fd0825sm170007e87.125.2025.09.12.05.08.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Sep 2025 05:08:35 -0700 (PDT)
Date: Fri, 12 Sep 2025 15:08:33 +0300
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
Subject: Re: [PATCH v4 08/13] phy: qcom: qmp-usbc: Add USB/DP switchable PHY
 clk register
Message-ID: <7ozv3u7xuvtz2x5q3pp5kdeydtsu5jlrgwjnxpxxiuh7przr2z@35uo7t3b4ze2>
References: <20250911-add-displayport-support-for-qcs615-platform-v4-0-2702bdda14ed@oss.qualcomm.com>
 <20250911-add-displayport-support-for-qcs615-platform-v4-8-2702bdda14ed@oss.qualcomm.com>
 <6p43oxn57kke5eotoqtt5gqtmhmgeteoymewqm3ko5q5veyegs@krkh4dwdno5i>
 <335ffce5-19c6-409d-8386-686fe9e5dea5@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <335ffce5-19c6-409d-8386-686fe9e5dea5@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzOCBTYWx0ZWRfXycjBY4j7ehI1
 eMgwybN3StwS/LcWKXH5MwvRa7TBTorGvAUz0hVL/tU1Ai04VnioFHvHc/SIW66LGlYRcb22D7y
 D+Z+6lVamGIb7ldpYIWqYmMDh2SY7iT//oMvtIvBYXhIIddTrEP7RobJ6cIfFiA+uyBlUoek/Mx
 fGZX4FbuxkhFeCPtnyqvIKGca+wD2rz2mmKkb9+0HYK2D03ouzJOJzJP7HVBssuYmUe5nwPgT23
 vqvpp1Tpf9by0NOc8CFLpvf15msI2w0Fmw4KhFkzruv+FfwsoIvjHNJDn0F0rNFOcQvdmhCqChq
 yAMQ6aEHoy24Ptg6eS3x4AGZRWxvu7Hqv5eQ/nHF5IbM0SmcnHCdl9Om2ch3kt2+EMmMlL7YadI
 aU/svolo
X-Authority-Analysis: v=2.4 cv=J66q7BnS c=1 sm=1 tr=0 ts=68c40d47 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=bQXPqPv9zJb0mhjPT90A:9 a=CjuIK1q_8ugA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-GUID: IbelLYTqEKFBo2Je-kPQKFguVmbynBLQ
X-Proofpoint-ORIG-GUID: IbelLYTqEKFBo2Je-kPQKFguVmbynBLQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-12_04,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 malwarescore=0 clxscore=1015 spamscore=0 phishscore=0
 adultscore=0 priorityscore=1501 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060038

On Fri, Sep 12, 2025 at 08:00:14PM +0800, Xiangxu Yin wrote:
> 
> On 9/12/2025 6:19 PM, Dmitry Baryshkov wrote:
> > On Thu, Sep 11, 2025 at 10:55:05PM +0800, Xiangxu Yin wrote:
> >> Add USB/DP switchable PHY clock registration and DT parsing for DP offsets.
> >> Extend qmp_usbc_register_clocks and clock provider logic to support both
> >> USB and DP instances.
> >>
> >> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> >> ---
> >>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 208 +++++++++++++++++++++++++++++--
> >>  1 file changed, 195 insertions(+), 13 deletions(-)
> >>
> >> @@ -1276,8 +1291,11 @@ static int phy_pipe_clk_register(struct qmp_usbc *qmp, struct device_node *np)
> >>  
> >>  	ret = of_property_read_string(np, "clock-output-names", &init.name);
> >>  	if (ret) {
> >> -		dev_err(qmp->dev, "%pOFn: No clock-output-names\n", np);
> >> -		return ret;
> >> +		char name[64];
> >> +
> >> +		/* Clock name is not mandatory. */
> >> +		snprintf(name, sizeof(name), "%s::pipe_clk", dev_name(qmp->dev));
> >> +		init.name = name;
> >>  	}
> > Do we have any guarantees that memory for 'name' exists beyond this point?
> 
> 
> If the previous of_property_read_string() call succeeded, could 'name'
> still be empty? or you means 'char name[64]' will be release after '}'?
> 
> From local verification, I can see 88e8000.phy::pipe_clk node from clk_summary.

char name[64] belong to a stack frame that is not guaranteed to exist
after you've close this bracked. So it can be easily overwritten with
other values.

> 
> 
> >>  
> >>  	init.ops = &clk_fixed_rate_ops;
> >> @@ -1286,19 +1304,176 @@ static int phy_pipe_clk_register(struct qmp_usbc *qmp, struct device_node *np)
> >>  	fixed->fixed_rate = 125000000;
> >>  	fixed->hw.init = &init;
> >>  
> >> -	ret = devm_clk_hw_register(qmp->dev, &fixed->hw);
> >> -	if (ret)
> >> +	return devm_clk_hw_register(qmp->dev, &fixed->hw);
> >> +}
> >> +
> >> +
> >> +/*
> >> + * Display Port PLL driver block diagram for branch clocks
> >> + *
> >> + *              +------------------------------+
> >> + *              |         DP_VCO_CLK           |
> >> + *              |                              |
> >> + *              |    +-------------------+     |
> >> + *              |    |   (DP PLL/VCO)    |     |
> >> + *              |    +---------+---------+     |
> >> + *              |              v               |
> >> + *              |   +----------+-----------+   |
> >> + *              |   | hsclk_divsel_clk_src |   |
> >> + *              |   +----------+-----------+   |
> >> + *              +------------------------------+
> >> + *                              |
> >> + *          +---------<---------v------------>----------+
> >> + *          |                                           |
> >> + * +--------v----------------+                          |
> >> + * |    dp_phy_pll_link_clk  |                          |
> >> + * |     link_clk            |                          |
> >> + * +--------+----------------+                          |
> >> + *          |                                           |
> >> + *          |                                           |
> >> + *          v                                           v
> >> + * Input to DISPCC block                                |
> >> + * for link clk, crypto clk                             |
> >> + * and interface clock                                  |
> >> + *                                                      |
> >> + *                                                      |
> >> + *      +--------<------------+-----------------+---<---+
> >> + *      |                     |                 |
> >> + * +----v---------+  +--------v-----+  +--------v------+
> >> + * | vco_divided  |  | vco_divided  |  | vco_divided   |
> >> + * |    _clk_src  |  |    _clk_src  |  |    _clk_src   |
> >> + * |              |  |              |  |               |
> >> + * |divsel_six    |  |  divsel_two  |  |  divsel_four  |
> >> + * +-------+------+  +-----+--------+  +--------+------+
> >> + *         |                 |                  |
> >> + *         v---->----------v-------------<------v
> >> + *                         |
> >> + *              +----------+-----------------+
> >> + *              |   dp_phy_pll_vco_div_clk   |
> >> + *              +---------+------------------+
> >> + *                        |
> >> + *                        v
> >> + *              Input to DISPCC block
> >> + *              for DP pixel clock
> >> + *
> >> + */
> >> +static int qmp_dp_pixel_clk_determine_rate(struct clk_hw *hw, struct clk_rate_request *req)
> >> +{
> >> +	switch (req->rate) {
> >> +	case 1620000000UL / 2:
> >> +	case 2700000000UL / 2:
> >> +	/* 5.4 and 8.1 GHz are same link rate as 2.7GHz, i.e. div 4 and div 6 */
> >> +		return 0;
> >> +	default:
> >> +		return -EINVAL;
> >> +	}
> >> +}
> >> +
> >> +static unsigned long qmp_dp_pixel_clk_recalc_rate(struct clk_hw *hw, unsigned long parent_rate)
> >> +{
> >> +	const struct qmp_usbc *qmp;
> >> +	const struct phy_configure_opts_dp *dp_opts;
> >> +
> >> +	qmp = container_of(hw, struct qmp_usbc, dp_pixel_hw);
> >> +
> >> +	dp_opts = &qmp->dp_opts;
> >> +
> >> +	switch (dp_opts->link_rate) {
> >> +	case 1620:
> >> +		return 1620000000UL / 2;
> >> +	case 2700:
> >> +		return 2700000000UL / 2;
> >> +	case 5400:
> >> +		return 5400000000UL / 4;
> > No HBR3 support? Then why was it mentioned few lines above?
> >
> >> +	default:
> >> +		return 0;
> >> +	}
> >> +}
> >> +
> >
> >> +static int qmp_usbc_register_clocks(struct qmp_usbc *qmp, struct device_node *np)
> >> +{
> >> +	int ret;
> >>  
> >> -	ret = of_clk_add_hw_provider(np, of_clk_hw_simple_get, &fixed->hw);
> >> +	ret = phy_pipe_clk_register(qmp, np);
> >>  	if (ret)
> >>  		return ret;
> >>  
> >> -	/*
> >> -	 * Roll a devm action because the clock provider is the child node, but
> >> -	 * the child node is not actually a device.
> >> -	 */
> >> -	return devm_add_action_or_reset(qmp->dev, phy_clk_release_provider, np);
> >> +	if (qmp->dp_serdes != 0) {
> >> +		ret = phy_dp_clks_register(qmp, np);
> >> +		if (ret)
> >> +			return ret;
> >> +	}
> >> +
> >> +	return devm_of_clk_add_hw_provider(qmp->dev, qmp_usbc_clks_hw_get, qmp);
> > Do you understand what did the comment (that you've removed) say? And
> > why?


And this was ignored :-(

> >
> >>  }
> >>  
> >>  #if IS_ENABLED(CONFIG_TYPEC)
> >> @@ -1429,6 +1604,13 @@ static int qmp_usbc_parse_dt(struct qmp_usbc *qmp)
> >>  	if (IS_ERR(base))
> >>  		return PTR_ERR(base);
> >>  
> >> +	if (offs->dp_serdes != 0) {
> >> +		qmp->dp_serdes = base + offs->dp_serdes;
> >> +		qmp->dp_tx = base + offs->dp_txa;
> >> +		qmp->dp_tx2 = base + offs->dp_txb;
> >> +		qmp->dp_dp_phy = base + offs->dp_dp_phy;
> >> +	}
> >> +
> >>  	qmp->serdes = base + offs->serdes;
> >>  	qmp->pcs = base + offs->pcs;
> >>  	if (offs->pcs_misc)
> >> @@ -1537,7 +1719,7 @@ static int qmp_usbc_probe(struct platform_device *pdev)
> >>  	 */
> >>  	pm_runtime_forbid(dev);
> >>  
> >> -	ret = phy_pipe_clk_register(qmp, np);
> >> +	ret = qmp_usbc_register_clocks(qmp, np);
> >>  	if (ret)
> >>  		goto err_node_put;
> >>  
> >>
> >> -- 
> >> 2.34.1
> >>

-- 
With best wishes
Dmitry

