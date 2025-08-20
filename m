Return-Path: <devicetree+bounces-206829-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 52CAEB2DB21
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 13:36:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 649905C75A4
	for <lists+devicetree@lfdr.de>; Wed, 20 Aug 2025 11:35:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0168C2E54D7;
	Wed, 20 Aug 2025 11:34:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eCNU/iKn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83DFD258ECE
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 11:34:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755689650; cv=none; b=l9wN6Xtutc87WNC9CaNjkaD3b8jQKNsxRB76VSC0LtW3E0ekT6kzA0wcOS/ckf9ujq5ONjId5o3mGj8bfVZVvluE1hQCd+neaH1zKT5CEq0Ljoc2SgLNSbUAaYFO+X7EtIsV3dyJZnoQLlfgnT8bA9+CoNe2mKOb12EcE1Xh//o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755689650; c=relaxed/simple;
	bh=fnFlSvGRR/TSyKfoUhH+X2EynjQebmFIrPk4G7+w8Kk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CDK+CPAgTdw3dP84aV0JIihfl0OYuc4wzRnY4HIgWkqIOhv9hPg6dg7D8DpH/HyltHgRQ3h4zJu7cgIuPqqHH1oQvOiSz3gVMnSJhUb77CWECp40K7anpbh7CByxbxsvh+2lc/HAXTuf9M9meWDMDn+YF+jPkgxIyjtC8ZF/P4w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eCNU/iKn; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57K9p5VT009540
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 11:34:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=XcNX4ZDYiBJ7hPbbX3QqeNKI
	VB3toybrjSkdSm9Gk44=; b=eCNU/iKnkqs2/ujRIBoZ3cftAZtZMetCNlRfqUcS
	WBDmgpb5vugP2hRdIcOiP+bTSMIgTQ47Ax+2hnGjqmlxM/13uTFqFs/SC4j6bA+J
	nLUx+pO3Uc6UG3QnR5IYcVJcJV+PHR8bBwBy/yZtefRJvcoU6zXuqUNNLD3JRKiW
	IrjKsYtFqMvvQ0AR2q0XNA0eggWzuVla2/gY0AsDXVP0L3PuEh73qMlD0vSSQuaw
	qRqQaF3gaZq9Qpm5dZRyy+roT3jMPAHnSjEYp5TYJC5ZeKCNgmOLkc0CVjTvUavU
	wc1/3eWdLpk7HpxWlfX2c3/sTguSODbFm9i/Upn9w6kotQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48n52a1k2g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 11:34:08 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-70a927f570eso141473876d6.1
        for <devicetree@vger.kernel.org>; Wed, 20 Aug 2025 04:34:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755689647; x=1756294447;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XcNX4ZDYiBJ7hPbbX3QqeNKIVB3toybrjSkdSm9Gk44=;
        b=G91eawp68053RJHpNkqquIoJKxZz/JPpEX86dfSxL6/4PpLkbJLyrjdI9rb5GcUymi
         hhyUSrT0BxJqfttepS9pc4seXM1zkdYgcSa+iUq9Xl0RYSEcWO0ZoGGtg0l3TLvRRfBB
         xvKWf8LpSKSwfUsN0sLWKlzVrLLnNHRcCdZbzrLFYDtzJBdWOBrWjYaxn6Z/NpTiy4WG
         JPuMv0axS9acrUTzeensrNBsemFl7UO9FM0y20Gxxx0bww887FOxRPN+Q5WKxfi8JIVw
         g6q5DVGCufEhwge4vG8N4vNpd3gFa1ZoJanQcUBPr+KbAmHOhg1m8ng8c/hjfmTwe3G3
         Ov3g==
X-Forwarded-Encrypted: i=1; AJvYcCUO6Wa07OCRFvO8g5kN24mFAfPjnO+I4xqyTvSK26wpQWJnZYa942F+Nb4cPGv8LzoggtaY7WSTDedn@vger.kernel.org
X-Gm-Message-State: AOJu0YzCB9hSr246DHVC0aAKcgCUFcd9lLzHy467/AeEo8LQHIq9IltA
	Gq/uGRD+D8pS6+yUTXQv/7ySeyVx0aWGcX2jC1WZjx/UYgsQu6TK/th4K9CZwvD6eujDEhihHT6
	IjBnR3GIkjLNi0ulkuRetaMX9YZDeSqXarSx3HZvgTdZWg2/uGJZjwdAEU/QU28Gj
X-Gm-Gg: ASbGncvYn6QNAUlKKdteVISKhQCWh+KqZ11YCkd9EN/e8W1RfR03C5/vb00cEaJta0c
	0q/QQQ9WIzk9XFOQgEsRTOvKk2//0nCc81VWkZUFhyrvRK0Zn6pFgWcH3O15D9HDfEn+xDFdWOO
	zscH2m6mQhzQknKpYzItemG7ogFLuGx0GP3qYL5vqpGeMIBhEXrcP0EPJGL2AUn1P0DJ7vVbEBf
	Cn3i3GCxTpQOBas7zF/dfrUnQUhiy26EBQC6q+maqCgvpoB5zZrh7Vzh8ZiQSLouE3jcZl6JUhH
	QG1uGmLaj6ZUQEJxo11dy+0wqsW/+Dm3YFwkEGRDnfpei8KuzWahhSlHdUOwZSQqX7ZfUwsktGT
	bgnKpLLC3UdUF4CDCLCwiMMEbYfTs6caKnPa7dBjOeCAQbKM67E13
X-Received: by 2002:a05:6214:2467:b0:704:f952:18bb with SMTP id 6a1803df08f44-70d771402c7mr20425626d6.46.1755689647360;
        Wed, 20 Aug 2025 04:34:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHKE0JSYrOpvMO2WcRrh53W2VDmbQ14HSNNSlF+so2tCr9GefhcpbJA6wUwasEOVbgwxfyTww==
X-Received: by 2002:a05:6214:2467:b0:704:f952:18bb with SMTP id 6a1803df08f44-70d771402c7mr20425116d6.46.1755689646629;
        Wed, 20 Aug 2025 04:34:06 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55e084e46b7sm233240e87.48.2025.08.20.04.34.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Aug 2025 04:34:05 -0700 (PDT)
Date: Wed, 20 Aug 2025 14:34:03 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
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
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, fange.zhang@oss.qualcomm.com,
        yongxing.mou@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, quic_lliu6@quicinc.com
Subject: Re: [PATCH v3 04/14] phy: qcom: qmp-usbc: Add USBC PHY type enum
Message-ID: <cueyo7huj2m2yt46sjk3atfktft6y5slhhtslwmi44r7h7lxbn@5zvwxtdmk34t>
References: <20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com>
 <20250820-add-displayport-support-for-qcs615-platform-v3-4-a43bd25ec39c@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250820-add-displayport-support-for-qcs615-platform-v3-4-a43bd25ec39c@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=feD0C0QF c=1 sm=1 tr=0 ts=68a5b2b0 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=LJgbN-Jd--P93uwsTkIA:9 a=CjuIK1q_8ugA:10
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-ORIG-GUID: Q-_ru615gSgJXi8RI1Wx327W0yRVyAwe
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIwMDAxMyBTYWx0ZWRfX46uOg+ohYluw
 R43JdqjYMDg423KpUSCslcyNwwumnOdxaXkysHJwkbZ3b/xVpPdf2ItWxRbwuiCu9HsU4bhYqwe
 Zeyjmkeyj98wugF0iP2XyJkZRrNuvYr+LYTBvx2XXqqEZ41Esn2TPpSFBAeQWPOxEAzSPy4EeQw
 hKQEa7Pecoe/qrUCV2qKeo6n5Xsy6OojpOjIqEr4JH2Okj5mFQwLkNjVAuoRSvo5L4Gkl7ZnrYH
 BZBTUYHv+eNF0BINwQTBPC0Q7Tu4lmxGkG1pd3E4PbZnwqeDoBRJC4ZJcQQt1x2Vpcz2/QLqpo8
 Har8dmMpqsDrcEgR5X3Mt7rV4P2/9PNnDrC3H9VAQQ70C2ICHE1dw2Kgksq68Vq2RQjtzDHfS/M
 Jf7LzaoMQ+9Dh6UKYHBOXJZKSXVe5g==
X-Proofpoint-GUID: Q-_ru615gSgJXi8RI1Wx327W0yRVyAwe
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-20_03,2025-08-20_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 adultscore=0 malwarescore=0 bulkscore=0
 lowpriorityscore=0 spamscore=0 impostorscore=0 suspectscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2508110000 definitions=main-2508200013

On Wed, Aug 20, 2025 at 05:34:46PM +0800, Xiangxu Yin wrote:
> Introduce qmp_phy_usbc_type enum and a 'type' field in qmp_phy_cfg to
> differentiate between USB-only PHYs and USB/DP switchable PHYs.
> 
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> index e484caec2be20121cfe287c507b17af28fb9f211..5afe090b546977a11265bbffa7c355feb8c72dfa 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-usbc.c
> @@ -284,6 +284,11 @@ static const struct qmp_phy_init_tbl qcm2290_usb3_pcs_tbl[] = {
>  	QMP_PHY_INIT_CFG(QPHY_V3_PCS_RX_SIGDET_LVL, 0x88),
>  };
>  
> +enum qmp_phy_usbc_type {
> +	QMP_PHY_USBC_USB3_ONLY,
> +	QMP_PHY_USBC_USB3_DP,

Drop, you can use presense of DP offsets in order to differentiate
between USB3 and USB3+DP.

> +};
> +
>  struct qmp_usbc_offsets {
>  	u16 serdes;
>  	u16 pcs;

-- 
With best wishes
Dmitry

