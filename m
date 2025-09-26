Return-Path: <devicetree+bounces-221707-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 426DFBA22F5
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 04:11:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F22876284E3
	for <lists+devicetree@lfdr.de>; Fri, 26 Sep 2025 02:11:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 95189247281;
	Fri, 26 Sep 2025 02:11:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Wdy2c4ks"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF05D2459F8
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 02:11:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758852703; cv=none; b=tjWWKYc/Zt3hGGGrn76UuezVsuqpLvykmltLlauf36Tbg2aLnEe8GVH1cbLv1T5m4F5RtxSldUcxyFKWqZBetB9OZEDvl0ssonxRaYFqlCcyVcPwvNOcF3RjK6o6Je5l+zoqmS+WMgsjbGxqrxOHcVhqnrA/o58cacOaq0+ylQ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758852703; c=relaxed/simple;
	bh=qRPfnk8uAvS4/pTgVMn8bZ97RZqORn5zyySh+PxXZDk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=cx1O11PdixmImDHfPRibLoguiwF6HeP0q+qv7b22vSA+UqGQUJWCC7KJ+kdcmjTvLxA8hfXHkCz/g7DVtJ/XO9iv6QKkTDdYdqRLjJQLh7NMPib093H/DEGnsmjuo0rYHKKuae58FqhSYI1wk4mPXO/hCgEkVqgdbS27YP3rAHU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Wdy2c4ks; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58PIPo9G011502
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 02:11:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=nqpPsyewLeJlxeLwYXFc1vjQ
	6maWho6qu4lCsuqNvnE=; b=Wdy2c4ksyEex5o7rMu/rYXeBWo4Nd/H5c4WuddXM
	FkYdU/kfIGFXPF8le+6hoOEbOBCJ6RJEqummon6FeVoKQ352/uzRuVNrUsv2MoOh
	VbTm4UCVn4YrrftblwqnrJmWxU3DAwtHcDixTtgOo6w+GOaODyH0YqdOcn28pnct
	3gPfDO8pbt99Y50f7reJd5UfbW1fmKhtGUqjnVixF+HS4fXFjtHaW3S4wbAQEFXF
	Q+90k7KYkEyveepB/61WjCIROr3lK6sffgGfmReLID0S3kuhnDI7r/SfLOtS8tCk
	m6SEv43NUMTrfH8RyAtrRBaT6YMVpA1DAtyPGCCT9U3YfA==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49db0q0ynq-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 26 Sep 2025 02:11:41 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4cf47c9bab2so58759061cf.0
        for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 19:11:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758852699; x=1759457499;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nqpPsyewLeJlxeLwYXFc1vjQ6maWho6qu4lCsuqNvnE=;
        b=oFdrxWQSl/U3kCNrB9p3I9+K6LSLGmZK8GAOdLX+PWSJdOlLNgN1hZveuNJH9sTGo5
         EgXRmy8oZsy4F00gYOunBrEeoBlWUasQRksGvFK73lkFZrThVuClP6hZEM+dAItwC95x
         E5zeVefI/5JvTZnAcVBR5EOPFXCTTfskYLYo17ybukM9qSeMVQs5t40x/dlwbab/0OYy
         kYee2+oUY+SVSTogQv/BNa3IkbWUQMfc8sIrvhwlwEK5QO2B5UKly4Mf0xIIUOLYLeb5
         xEicminnfpmayaMFDTaH8srR6BmSZQPCuNiI3V9Dpv3BMPXBUNQVTdra8syoZ+n08LRA
         5Iyg==
X-Forwarded-Encrypted: i=1; AJvYcCXU/a0D6B7Y37qjl7gasQNmEq8A/glRonIVJs1t5MGTsV25OhDhd/iWng5XgpdG4Sca4vuS78yGv+1w@vger.kernel.org
X-Gm-Message-State: AOJu0YwOTwG4A/LKANBMnFVesJEcKOSDlXLZ99nMhrIWOOY3228SMR0U
	sX2DXzgPj8Z9Braiu9dok8Ph/1hIErNhx+SRT6VG4i7qjjGE99RGLVC4d2R05MzN+ph/7qWj5z/
	EVBYzF1RM4RqSIo93Z50AG4HFCNjk5KiDbi3byWFmnrnSxwpaRwgtd4MAmxajRVm1o0bGM1hW
X-Gm-Gg: ASbGncuHncfvU4BT5edRSQuZd6w8SLHpEW7o90JT6y4UCidZ8O4s6PwY0zdOHoLF3zf
	FybI4PCUF6FASJbJXRhAfhwm0WKZrUjZENjbbexK7Ko4bzwI+c6j+clDbnvpA8fvcApmz7Z/UEk
	Vx/lzZTgd81VdKscTJrUFdZFUxcAoUfR/A/COOYoQT4VruilHOe34mfi+dhWTvPFzxnMt62bBC9
	6UfhqUsaM4zE+l9M4lXtZkQO9wl/ODxMDdDpV0lZXSToMqFHdav91n6T0ICOm7AEOky6CeSnOoe
	24sZWeUEr2I85Of+Ih5Icd71uxsfVZdc6yRjH07RyaHdZp+Wbr9TMC7USnvmW/9plZHx9yJIL1f
	YB2ObsaWOzPP5f5xDsFplNtozXVijxYKq2W12g/AuJYiRQzeWL/on
X-Received: by 2002:a05:622a:5a92:b0:4b6:2bdf:7cf0 with SMTP id d75a77b69052e-4da4782ddbbmr65302151cf.1.1758852699275;
        Thu, 25 Sep 2025 19:11:39 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IG7cctwlRZaW6riRpYXkIasnCymMXvXjJpXQG93mqJmgJ1Ap0mIAwpGxYF1bXCpUlxmfN4XAA==
X-Received: by 2002:a05:622a:5a92:b0:4b6:2bdf:7cf0 with SMTP id d75a77b69052e-4da4782ddbbmr65301991cf.1.1758852698781;
        Thu, 25 Sep 2025 19:11:38 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-58313905292sm1368701e87.41.2025.09.25.19.11.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Sep 2025 19:11:37 -0700 (PDT)
Date: Fri, 26 Sep 2025 05:11:34 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
        vkoul@kernel.org, gregkh@linuxfoundation.org, robh@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3 07/10] phy: qualcomm: qmp-combo: Update QMP PHY with
 Glymur settings
Message-ID: <exe3i3lgeor6bdokdqzu2nlenlbtjgv6c3swek3phirsinjnhp@tb5x5lkf2i26>
References: <20250925022850.4133013-1-wesley.cheng@oss.qualcomm.com>
 <20250925022850.4133013-8-wesley.cheng@oss.qualcomm.com>
 <oecyjwj7ouufjbiq2fpvlhhuaof5agm22fdsruf3ppayiu4kkm@wvi4no53x64y>
 <5e9e2824-923c-1328-dd7a-a8b496c44a70@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5e9e2824-923c-1328-dd7a-a8b496c44a70@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: TAWZZ2OyI5OiHFFRAr92R7TSIh5cn3nG
X-Proofpoint-GUID: TAWZZ2OyI5OiHFFRAr92R7TSIh5cn3nG
X-Authority-Analysis: v=2.4 cv=aZhsXBot c=1 sm=1 tr=0 ts=68d5f65d cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=97tA0vavRIenci2OwCMA:9 a=CjuIK1q_8ugA:10
 a=uxP6HrT_eTzRwkO_Te1X:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI1MDE3MSBTYWx0ZWRfX2Qnikufd8AeD
 Os7PoAWZztcyLn+V4zx1Lhd/zTiqKtbuP111OOXPE+QnP0McNL0B5XYwgStBgERHsNgQT34AH9d
 AdAByfZWfHrmJ3LA/cHyX+N4d6aTXK5IICRXtNrd5BXtRv9HM7u9dGuj9iQqwHW4BszcvTXj6cD
 +Y291WLgJO1fZDQpvh4rexQnoqyNjpErOxB/4yNUXWCX5kMy4aCPCbsDnYV+CN91UyEW1DKnq3C
 IGlnawyVFj76y7FLGhchXe4ZiHKkMJToSm5crwTC5D7ZR9rilVIUDJ9GG5cGSTwL3Fa5cm+YZkf
 d1URTeIkPG7JBCnTnHBLGTI5UGw4VB2krSZLgvmRPHBLM1lWJRy5H7hYMQG6j0DRG3vGWyaMuC6
 +RZlDBxVlVvup1lSL7zaYw29nLeIlw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-26_01,2025-09-25_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 suspectscore=0 malwarescore=0 adultscore=0
 clxscore=1015 impostorscore=0 bulkscore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509250171

On Thu, Sep 25, 2025 at 05:14:30PM -0700, Wesley Cheng wrote:
> 
> 
> On 9/24/2025 7:54 PM, Dmitry Baryshkov wrote:
> > On Wed, Sep 24, 2025 at 07:28:47PM -0700, Wesley Cheng wrote:
> > > For SuperSpeed USB to work properly, there is a set of HW settings that
> > > need to be programmed into the USB blocks within the QMP PHY.  Ensure that
> > > these settings follow the latest settings mentioned in the HW programming
> > > guide.  The QMP USB PHY on Glymur is a USB43 based PHY that will have some
> > > new ways to define certain registers, such as the replacement of TXA/RXA
> > > and TXB/RXB register sets.  This was replaced with the LALB register set.
> > > 
> > > There are also some PHY init updates to modify the PCS MISC register space.
> > > Without these, the QMP PHY PLL locking fails.
> > > 
> > > Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> > > ---
> > >   drivers/phy/qualcomm/phy-qcom-qmp-combo.c | 311 +++++++++++++++++++++-
> > >   drivers/phy/qualcomm/phy-qcom-qmp.h       |   4 +
> > >   2 files changed, 314 insertions(+), 1 deletion(-)
> > > 
> > > +
> > > +static const struct qmp_phy_init_tbl glymur_usb43dp_pcs_misc_tbl[] = {
> > > +	QMP_PHY_INIT_CFG(QPHY_V4_PCS_MISC_PCS_MISC_CONFIG1, 0x01),
> > 
> > Why is this V4 all of sudden?
> > 
> 
> Hi Dmitry,
> 
> Will fix..
> 
> > > +};
> > > +
> > > +static const struct qmp_phy_init_tbl glymur_usb43dp_pcs_tbl[] = {
> > > +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_LOCK_DETECT_CONFIG1, 0xc4),
> > > +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_LOCK_DETECT_CONFIG2, 0x89),
> > > +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_LOCK_DETECT_CONFIG3, 0x20),
> > > +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_LOCK_DETECT_CONFIG6, 0x13),
> > > +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_REFGEN_REQ_CONFIG1, 0x21),
> > > +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_RX_SIGDET_LVL, 0x55),
> > > +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_RCVR_DTCT_DLY_P1U2_L, 0xe7),
> > > +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_RCVR_DTCT_DLY_P1U2_H, 0x03),
> > > +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_TSYNC_RSYNC_TIME, 0xa4),
> > > +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_RX_CONFIG, 0x0a),
> > > +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_TSYNC_DLY_TIME, 0x04),
> > > +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_ALIGN_DETECT_CONFIG1, 0xd4),
> > > +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_ALIGN_DETECT_CONFIG2, 0x30),
> > > +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_PCS_TX_RX_CONFIG, 0x0c),
> > > +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_EQ_CONFIG1, 0x4b),
> > > +	QMP_PHY_INIT_CFG(QPHY_V8_USB43_PCS_EQ_CONFIG5, 0x10),
> > > +};
> > > +
> > > +static const struct qmp_phy_init_tbl glymur_usb43dp_pcs_usb_tbl[] = {
> > > +	QMP_PHY_INIT_CFG(QPHY_V8_PCS_USB_LFPS_DET_HIGH_COUNT_VAL, 0xf8),
> > > +	QMP_PHY_INIT_CFG(QPHY_V8_PCS_USB_RXEQTRAINING_DFE_TIME_S2, 0x07),
> > > +};
> > > +
> > > @@ -1667,6 +1899,12 @@ static struct qmp_regulator_data qmp_phy_vreg_l[] = {
> > >   	{ .name = "vdda-pll", .enable_load = 36000 },
> > >   };
> > > +static struct qmp_regulator_data qmp_phy_vreg_refgen[] = {
> > > +	{ .name = "vdda-phy", .enable_load = 21800 },
> > > +	{ .name = "vdda-pll", .enable_load = 36000 },
> > > +	{ .name = "refgen", .enable_load = 936 },
> > 
> > Is this a meaningful value?
> > 
> 
> I need to adjust this value.  I just want the load for the regulators to be
> in HPM, and after taking a look, looks like based on the rpmh regulator
> table, I need to be voting 35000.

Please provide a value from the platform data rather than just the HPM
boundary.

> 
> Thanks
> Wesley Cheng
> 
> > > +};
> > > +
> > >   static const u8 qmp_dp_v3_pre_emphasis_hbr3_hbr2[4][4] = {
> > >   	{ 0x00, 0x0c, 0x15, 0x1a },
> > >   	{ 0x02, 0x0e, 0x16, 0xff },
> > 

-- 
With best wishes
Dmitry

