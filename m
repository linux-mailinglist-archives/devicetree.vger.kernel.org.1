Return-Path: <devicetree+bounces-219948-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 448EAB8FD41
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 11:46:01 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EBC7F2A0166
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 09:46:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 284912882B4;
	Mon, 22 Sep 2025 09:45:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QSP6ajeF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 960FB1A08BC
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758534355; cv=none; b=eBITUGjKonEgwPxZLux80iEtqP+FWxa53EI6jIHPN/lFvdHSQJbE9MZiXbzDN5M4ruAEN1/PmH0yd05y7RjF+XCMEzqFlElsDgED7h+3kNf6iTfwaVrnqK2KPF5pS0+Dv5Vw9AJpqRITEmKXAX4vcxP++ynbmqlePm6na02wSYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758534355; c=relaxed/simple;
	bh=jR7Vg3/b9fUyQ+tl410ezllkEOW4qNcBuf+lcTr3wFw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Rgupq/8I7E858zpN/MBuDG3I/+may30N6rEkjLsDpoeRFnEZZq5PTM8F1vZASknEw/rU9G8bxJ9AuGwfzO9R6lFDiyMdaSaAxZbgzLMqUcEjKLwBExLtqD4KKrN73Zf6l5qOIH1hXx4JJbkk1ZtcPWm0gZSd4CvunqA6eJcYODo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QSP6ajeF; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58M90cAC023579
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 09:45:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=W0EkpJuNJzvM/UpMfzArfzg8
	rpKA+/ukTR6O+NEzO9M=; b=QSP6ajeF1p/OfoerwhXLINeYQgKv7w2MFtTvWBPH
	VGHxDfpuGAJ8mqotT+1GssKRPo0jOBfkPEK3Ra3PqauPm9iiFiAsVNrHgE5DLi5Y
	hqfWGGmq4hauxTgN/tjREy48YBE5hIUNFu93dHFSXGJiW3c6xxPg4dOnqgeok5DR
	YTWacIRA9Wdk/7QklFfSb2/TRsKfiZBj2iRE5lazQlaheV9YHzX6+zPVsakJTRsj
	cBHN+D4yirfglFJjTLzLz1tAr8V0ypuDfKquibikQc0zF3cpmSDM8kbNrhyBrCDR
	9pJEAnL4MkNO78sauWoVTObFvc7TPYCQy1Ak6r7qLdvlmg==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499kkhmb2p-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 09:45:52 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b5f818eea9so68554021cf.2
        for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 02:45:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758534351; x=1759139151;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W0EkpJuNJzvM/UpMfzArfzg8rpKA+/ukTR6O+NEzO9M=;
        b=tHXtUX2H8wzL/uNTi0BG/28U6fdA4XGvwPt/Pn27HxmZuRggAdfS8VWAaHRJJ+x2ZJ
         uYz704DmKGfgPtMaVdwtLe5kjA9BO0ZkTLl8xzjDblYUEC3lBuXRYCrNe+PugxG+FHkL
         LLNtXBKXIbUM7SZjkU0/t11R4KJViWQ3P9J87Je7ELQzkK4d5tjgEaR5HKKQKPXHu2CS
         Fhaf2a3cLiJMRQJuE+xyWAE/AxJV7PkX3S1EK08mlm75ufdSTwu8fnHj6/61JD2JACnL
         3N8ZaoewUQi8Kf4ss8zJ4J+HuakvTXRH269Ve1TvuriZu2wyZLKL2gY/C8JGEaTqwM9o
         tF4w==
X-Forwarded-Encrypted: i=1; AJvYcCWAQQ8Z5TUorYYqC3HZDDyukYpIE7g56yFKKHKM+1rnKC+psrARljY2B5IkuxWj/QszhLPaImOUwNQH@vger.kernel.org
X-Gm-Message-State: AOJu0Yyzo2AAdOzNUoJvWeHd7Nr5Ij2DwFFPsYKUMtF6AlmVza5JKfkZ
	wQbmyFelnfUj+nBgZXLzGLYqt5d1UBvxdSCPysxuLa9gIXyhQjrqGUv5NUlYXzag0jm2ycK1pnF
	C7Lu/ysgf3oU/zMeUNuFej6MG8NitZDd0kyyiH1ZM+mf39Xla+LMaRXJja4qDqDxJFoP9RNv8
X-Gm-Gg: ASbGncsBsKu//47j56cHI5nxDtROqn8OWRQ+K9b5WZOCzZy2mVamj5EO+iPa1f45Y/I
	dXJk19CugyqZDD1APTFeNwIXpmNtYVPS9mwadNLi7VNW4zLYCpdWH0biRQd9I20AIgilJwgnB4L
	TWF+nyYlE+RDDveJhRMxPIBLxB2WlRI9lVEPddsv190svcBi0KgkymszIHMHu4bUpGNv97rYqT3
	PeMjleBjtRwOqnBk3IhHyrPfeTXRd+pAdQObD3kwNcgF8VcEagoP/UdAINsCPN8whonAnJVGR1h
	4oszgGI9j3gvlHR0ev4hc7L5T7BVTDy0IhZP5n4Q2ryCZLEX7aL6asCm1cTiM7R4MBriddza7E1
	bQ1IB/NY87/S/4DG9bZxwFahwj9bJb2C64b8VO6ugPPefZAAiftg6
X-Received: by 2002:a05:622a:228f:b0:4b5:f5ef:5fe8 with SMTP id d75a77b69052e-4c07104b016mr131682451cf.32.1758534351189;
        Mon, 22 Sep 2025 02:45:51 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFVWjR+4vgOsePjn/CB9WZu/Pei26UIPflbd0gu92L/o+rhj5rmsKA6/RW+80WDu80POfqZfA==
X-Received: by 2002:a05:622a:228f:b0:4b5:f5ef:5fe8 with SMTP id d75a77b69052e-4c07104b016mr131682201cf.32.1758534350531;
        Mon, 22 Sep 2025 02:45:50 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-578a5f44771sm3214997e87.20.2025.09.22.02.45.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Sep 2025 02:45:49 -0700 (PDT)
Date: Mon, 22 Sep 2025 12:45:47 +0300
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
Subject: Re: [PATCH v5 12/14] phy: qcom: qmp-usbc: Add QCS615 USB/DP PHY
 config and DP mode support
Message-ID: <2ewxoe76rrii4w3n5b6wl32vmatcp2boj75o65cuq5nx4f2a55@7cn6m7oxzu6c>
References: <20250919-add-displayport-support-for-qcs615-platform-v5-0-eae6681f4002@oss.qualcomm.com>
 <20250919-add-displayport-support-for-qcs615-platform-v5-12-eae6681f4002@oss.qualcomm.com>
 <bfpgktxgo2hb6dpzy3i7jdr6w4de5boorx4n6qeapct2vre4sn@4z2mnppridn5>
 <14cdf3a4-714c-4136-8c1d-99392e7911f5@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <14cdf3a4-714c-4136-8c1d-99392e7911f5@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: LKaxnnvcs7sqhU9HXZCf27GQiNqP6rUh
X-Proofpoint-GUID: LKaxnnvcs7sqhU9HXZCf27GQiNqP6rUh
X-Authority-Analysis: v=2.4 cv=JMo7s9Kb c=1 sm=1 tr=0 ts=68d11ad0 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=DpVyi1o0YMp1h5EDp2YA:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAyMiBTYWx0ZWRfXwzIAybQlPzA+
 eYACeThOCL3588ZxpSn+TbKbmaawQB9t/uv3JFG7HoT+XSXs8ViK0P414EtZTmq4GJ1wcgiHhyl
 SHwS5MtPChp2dIfe5EhurMwW5vFKGblNiT2btrN3Em/UqzJWNUPatnd6n1DtoKk0BdPkByiAsPz
 WgqTxqMzoZj5Od6Lq3CIkEetgh90Bk3ZggjGS8EAeAm9O4uJ9tQbQxXoJd+W6rlEw+cY5KtdVQp
 AVYn+KHv57KyJ6BXcySXn4jimy35wvwmemwleZTc2GbopFtI8WX3GRVPW/Bt4ihi8H9GgLKnSF3
 vLjQJEcJyM6pO/TWmtLSoRf3qJo7jxPkWFFvov8en1gJ4eudRaRM9t3Duc7KasOa4S69qcLA8q5
 ZixBcq0k
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-22_01,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0
 clxscore=1015 adultscore=0 spamscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509200022

On Mon, Sep 22, 2025 at 02:58:17PM +0800, Xiangxu Yin wrote:
> 
> On 9/20/2025 2:41 AM, Dmitry Baryshkov wrote:
> > On Fri, Sep 19, 2025 at 10:24:29PM +0800, Xiangxu Yin wrote:
> >> Add QCS615-specific configuration for USB/DP PHY, including DP init
> >> routines, voltage swing tables, and platform data. Add compatible
> >> "qcs615-qmp-usb3-dp-phy".
> >>
> >> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> >> ---
> >>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c | 395 +++++++++++++++++++++++++++++++
> >>  1 file changed, 395 insertions(+)
> >>
> >> +
> >> +	writel(0x3f, qmp->dp_tx + QSERDES_V2_TX_TRANSCEIVER_BIAS_EN);
> >> +	writel(0x10, qmp->dp_tx + QSERDES_V2_TX_HIGHZ_DRVR_EN);
> >> +	writel(0x0a, qmp->dp_tx + QSERDES_V2_TX_TX_POL_INV);
> >> +	writel(0x3f, qmp->dp_tx2 + QSERDES_V2_TX_TRANSCEIVER_BIAS_EN);
> >> +	writel(0x10, qmp->dp_tx2 + QSERDES_V2_TX_HIGHZ_DRVR_EN);
> >> +	writel(0x0a, qmp->dp_tx2 + QSERDES_V2_TX_TX_POL_INV);
> > Are you sure that these don't need to be adjusted based on
> > qmp->orientation or selected lanes count?
> >
> > In fact... I don't see orientation handling for DP at all. Don't we need
> > it?
> 
> 
> Thanks for the review.
> 
> I agree with your reasoning and compared talos 14nm HPG with hana/kona
> 7nm PHY HPG; the 7nm COMBO PHY series has orientation/lane-count dependent
> configs, but the 14nm PHY series does not. On QCS615 (talos), the TX_*
> registers you pointed to are programmed with constant values regardless
> of orientation or lane count. This has been confirmed from both the HPG
> and the downstream reference driver.

Thanks for the confirmation.

> 
> For orientation, from reference the only difference is DP_PHY_MODE, which
> is set by qmp_usbc_configure_dp_mode(). The DP PHY does have an
> SW_PORTSELECT-related register, but due to talos lane mapping from the
> DP controller to the PHY not being the standard <0 1 2 3> sequence, it
> cannot reliably handle orientation flip. Also, QCS615 is a fixed-
> orientation platform (not DP-over-TypeC), so there is no validated hardware
> path for orientation flip on this platform.

Wait... I thought that the the non-standard lane order is handled by the
DP driver, then we should be able to handle the orientation inside PHY
driver as usual.

Anyway, please add a FIXME comment into the source file and a note to
the commit message that SW_PORTSELECT should be handled, but it's not a
part of this patch for the stated reasons.

> 
> 
> >
> >> +
> >> +	writel(0x18, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
> >> +	writel(0x19, qmp->dp_dp_phy + QSERDES_DP_PHY_CFG);
> >> +
> >> +	if (readl_poll_timeout(qmp->dp_dp_phy + QSERDES_V2_DP_PHY_STATUS,
> >> +			       status,
> >> +			       ((status & BIT(1)) > 0),
> >> +			       500,
> >> +			       10000)){
> >> +		dev_err(qmp->dev, "PHY_READY not ready\n");
> >> +		return -ETIMEDOUT;
> >> +	}
> >> +
> >> +	return 0;
> >> +}
> >> +

-- 
With best wishes
Dmitry

