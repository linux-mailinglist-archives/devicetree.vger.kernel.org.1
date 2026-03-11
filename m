Return-Path: <devicetree+bounces-274171-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id IEjbL9+BsWmjCwAAu9opvQ
	(envelope-from <devicetree+bounces-274171-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 15:53:19 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B689265CC1
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 15:53:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 11CE2318FC9F
	for <lists+devicetree@lfdr.de>; Wed, 11 Mar 2026 14:50:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AB7F3D16FE;
	Wed, 11 Mar 2026 14:50:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bDxadHvI";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DA7xQc5S"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CFBC3CAE8D
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 14:50:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773240631; cv=none; b=BsYEDixWKrw2fa5iUpqFkyN9/O4Re7sprwTpHX9LajrhlUAWwKxry0Y+HuAcnnSXIDgs57dB4Hadb/v8Humk51Fm/lPJxglgrYcYDqdd8kdjJRJ0gQ8AVvZNBGmHVPKaY4rRBbXyuz53lEy9gdOu6bJr+SmMCv+HodL4XF4QwHA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773240631; c=relaxed/simple;
	bh=sqSC6+/K44mssFzse64hRisr9Lwqqa7dRnsrkspm/nQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LGu/F5liJ4Qma9QaOEllJAAWNmlAmghd74bc4XKqKEUWMhAK9Vi661nsfs2b6GHW3Y4TW889MlusW5VpDydiqhjKTBbOL6RjRXrrYPs1w75AufV9606pY+v8rpsdpc3MZAKthsNoeA4D6UFQZcPiPi0AnrvTDqyiuhlqSwzfIJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bDxadHvI; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DA7xQc5S; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62BD7tsX4032609
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 14:50:29 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=YvrtAHy/lbnLFEN+e13f6AZn
	kCjI5WMhkOhjmIeICPw=; b=bDxadHvIawOHnBUjjGeNuA4s8/UiVOiZMhoj11U9
	Ug3TnUYZ09Iq1vbDY+ZRpltmngoQy94Oqthi2RBxi2PE7xjkZrBm4DkAe6hXjLFa
	CLfGNBHNxv1qLjdvdTE3I1y1lcK/4soESX5xfWchsJ6CRldW7OlijRuC2yHfPdv4
	cereTc03W2fU4JgoulCEnJMEloTHPtnLFkikin7YEI6qfU+1vpfWaMzni9X7ROM9
	3pXC3dlzrDsYyDtUP0BqKhYy2SofV4UOUw+9/sDk41MQZmqVq2ne6AvF34710jez
	AdlojjzleXYPgOVibnoleVsdrPcsTDeh2Nr+VguKmnWxmQ==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cu90t8d5x-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 14:50:28 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8cd7f6ac239so2347676885a.2
        for <devicetree@vger.kernel.org>; Wed, 11 Mar 2026 07:50:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773240628; x=1773845428; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=YvrtAHy/lbnLFEN+e13f6AZnkCjI5WMhkOhjmIeICPw=;
        b=DA7xQc5SntshUHnvjd1FvxUk5rLbX6ab2rJu+QY7YhTZXc7Oa97FUb5AUysUUCCxnG
         wujjqJmjLPCT+ArmjcTRM1qL+dn6repgvu0RIS+ZV/uh/2B1l2TVafZSem8vnIeJC+Nc
         Zsb94Y7kE33iij8d+TKEQ9sGHRDj+XYtW4ADjYzk6HlMyYcEY8bTBfDLFer7V8fOr7cK
         bqpK7gvVaZbnurzKCAbNJYdZl5mndQoe7R+fATJZSw8vQ/vlNcs+ZXftjT8mrXny/zs8
         R0exVzuDaCMm0rQAnpiR7FjeCv+n1jd/Pg0KvwQH73UFSZDR8iiCjgKDLHMNcGjzs9qI
         QZEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1773240628; x=1773845428;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YvrtAHy/lbnLFEN+e13f6AZnkCjI5WMhkOhjmIeICPw=;
        b=vijMsBeooxLbP3JFhZ/Di7nMmhUlobvU1Io1HpaDv7rjC5k4pZP/MH47NsxcRbazR1
         Sow2/+sZdS3dXlEWank1Oout2rhakP/DAHvWhsrvQ9vHNHzLWxIbjqxr58u/UlKIQBRs
         HZOJD3C+le4GUbD/mpgYaHItNJx7I5KpHvUPyXf+A/gv0hh3qGZ1sTVNJbeCfJz3yT84
         XOIzfTWZdl2o+jtsiCZDwjJdMCnAQd7ZN5gFEDku2Y/G9tvvcVhS87PZG5BNnO81cQv7
         8lTfBJEO/Sd9GVcohsB/tl0NgS5qPJA3DIMNbUW07NQI/bN7WMSzRD2ARPHpS2XTFGJL
         McXQ==
X-Forwarded-Encrypted: i=1; AJvYcCUH3j77Gn9/jaUR/jBMLohjgv+fnKjjUps/7xojKkRX/iHsXrRuNfUXHESTo0JtvTtsLS6M0vZHShFC@vger.kernel.org
X-Gm-Message-State: AOJu0YwPHA/dg3G0U3vtjQhgQ7nl5poXU4KaJ+z0OeVosG5oSUK7RJsb
	cRXZ0YjrwDXiY7xmgj/YMnv1HD+/P39ChzrFUohMPUSG63/XyHXiAJT03eDFU06GNyjuxvctw3T
	xW9x40s0Bq6QoSsMBEmqfaOrS3du/nzSrIYNXsrfvcbUQ24z7jPSK54rt9XqXeSHt
X-Gm-Gg: ATEYQzzGYgQsReSojhPIafD6d3jRL0fcxzHo0nS+bDswzm7r5Lxd6BH8uJPNuUYOZOH
	MkcPFDNwSX3iSoVJ7PIPgqX7lx8U1h9QyKAPbYPITgqw44xzeWMwjKMpbS3Jmf572IFSe8pNTNP
	jR2xoPQm5LtFSdty9ZpsUqrZcd5PmHPNn0ntNV9FX2wUtW1gO+cyeD6m4KzMtDHqOh05GQ8B08C
	gyeHfZtuTbK4CCkzki84hTFREsoazvDka86O6SNm6kf2sA53t9U1HRUiD3Uekz3vbGAURh3KiyG
	q1z/qEgr6lEe3Z9GaU3FxV4PUmYLORJXG1U6kt8obTdX3z6Zv86pPs54VHYYZw/zEm4+XWQ/2U2
	D2p7A7ilx/WrYpoDXrQTLP+bUgX/3qG915VLwzMb09eUfyKGkz2oI+BRZv9W7OKisNHN/eXyxH4
	7Wo1X8i2d+F5N82Gvxo5PcWJk2qK0w1oQFvUg=
X-Received: by 2002:a05:620a:2942:b0:8cb:32eb:e02e with SMTP id af79cd13be357-8cda1a81d9emr339025685a.76.1773240627769;
        Wed, 11 Mar 2026 07:50:27 -0700 (PDT)
X-Received: by 2002:a05:620a:2942:b0:8cb:32eb:e02e with SMTP id af79cd13be357-8cda1a81d9emr339020985a.76.1773240627283;
        Wed, 11 Mar 2026 07:50:27 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5a1560348e5sm434123e87.39.2026.03.11.07.50.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Mar 2026 07:50:26 -0700 (PDT)
Date: Wed, 11 Mar 2026 16:50:24 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Linus Walleij <linusw@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Robert Marko <robimarko@gmail.com>,
        Guru Das Srinagesh <linux@gurudas.dev>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
        linux-mmc@vger.kernel.org
Subject: Re: [PATCH 2/9] clk: qcom: add Global Clock controller (GCC) driver
 for IPQ5210 SoC
Message-ID: <yzw4ruhxaznndpyzlrqnxlbrveenlpl4yp2ebbshyh2yo7te2n@64gldqqmk3nb>
References: <20260311-ipq5210_boot_to_shell-v1-0-fe857d68d698@oss.qualcomm.com>
 <20260311-ipq5210_boot_to_shell-v1-2-fe857d68d698@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260311-ipq5210_boot_to_shell-v1-2-fe857d68d698@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: aqsV0rehXGp2Pz_HtINtQqhHl0p1uK1W
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzExMDEyNSBTYWx0ZWRfX2uP1fN3qMSx2
 dNbdR5xzZ2aRawWaqFVFf8Z/Aou4QKg3hAvAc6Dq2t184xu1nJEF8BHsIDF+ELHA8FSzCY626Sr
 O3Me7ra3CSf8V2C4VopyaJ34QtUb+3SPVZgWyiQ38zgNWuxeiVGfBUP2m5DXRMm8D/uDSoTTROL
 GwYpuvbOrENSEZyfFD3ceOB/mWbHDZIVTMm3RFrT4DjxptwlzWVW2yGu1oic/BMQO9Xz+4pJjoS
 WzPHhC78N6zZc8UlpypkvwOL2TaS1bSJIYpUxgGDyXVNeTBrEo4y5G8H/V6Lw8TNcR4z9lyQ2Ru
 a3Gxh7Q8gVKb9sjl6x82WWMYIQ5HmsSIgUya4o7rNlGTMz+cH2KnlyvbVpCUidSC/YwqjD6uODl
 GUXzPjgUD6GboOILE+LS+6KMXzFwUCj9egtyZTwHf3I+HZNGIRTD3ylK/8mag+a6XOHnvfX0Wk3
 mRbA6Rn8KERbvc+L6LA==
X-Authority-Analysis: v=2.4 cv=DfEaa/tW c=1 sm=1 tr=0 ts=69b18134 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=u7WPNUs3qKkmUXheDGA7:22 a=DJpcGTmdVt4CTyJn9g5Z:22 a=EUspDBNiAAAA:8
 a=VZZ92KuHIUFcEntCV44A:9 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
X-Proofpoint-GUID: aqsV0rehXGp2Pz_HtINtQqhHl0p1uK1W
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-11_02,2026-03-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 impostorscore=0 bulkscore=0
 lowpriorityscore=0 spamscore=0 suspectscore=0 malwarescore=0 phishscore=0
 adultscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603110125
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	MID_RHS_NOT_FQDN(0.50)[];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-274171-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[19];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,baylibre.com,pengutronix.de,linaro.org,gmail.com,gurudas.dev,vger.kernel.org];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,oss.qualcomm.com:dkim];
	MISSING_XM_UA(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 2B689265CC1
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On Wed, Mar 11, 2026 at 03:15:44PM +0530, Kathiravan Thirumoorthy wrote:
> Add support for the global clock controller found on IPQ5210 SoC.
> 
> Signed-off-by: Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>
> ---
>  drivers/clk/qcom/Kconfig       |    8 +
>  drivers/clk/qcom/Makefile      |    1 +
>  drivers/clk/qcom/gcc-ipq5210.c | 2641 ++++++++++++++++++++++++++++++++++++++++
>  3 files changed, 2650 insertions(+)
> 
> +
> +static struct clk_alpha_pll gpll4_main = {
> +	.offset = 0x22000,
> +	.regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_DEFAULT_EVO],
> +	.clkr = {
> +		.enable_reg = 0xb000,
> +		.enable_mask = BIT(2),
> +		.hw.init = &(const struct clk_init_data) {
> +			.name = "gpll4_main",
> +			.parent_data = &gcc_parent_data_xo,
> +			.num_parents = 1,
> +			.ops = &clk_alpha_pll_ops,
> +			.flags = CLK_IS_CRITICAL,

comment, why?

> +		},
> +	},
> +};
-- 
With best wishes
Dmitry

