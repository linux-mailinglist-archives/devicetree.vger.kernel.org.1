Return-Path: <devicetree+bounces-182939-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 6145BACE942
	for <lists+devicetree@lfdr.de>; Thu,  5 Jun 2025 07:25:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1D207174028
	for <lists+devicetree@lfdr.de>; Thu,  5 Jun 2025 05:25:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7DB611DD0D4;
	Thu,  5 Jun 2025 05:25:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RTox0Obq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D35E51ACEDF
	for <devicetree@vger.kernel.org>; Thu,  5 Jun 2025 05:25:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749101102; cv=none; b=lBzGlFnt5BNpwTKF7/ht2JAHxwFVOjPOEYE0QNv4Ai5CvQ6V0EyMKZ8gp5bVac7tvDYABS1rpe3yj4Sl/mGEUbDMS5DUXa/4s11pxt3z75reBY51T9BKe0v1Kv8eF/s/gZSxUA2ukVHeE2GFbUtQf0lFd5Tpx8MmriuyslZShTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749101102; c=relaxed/simple;
	bh=M/t0pCLO2KZxMM+bBZlvb/oVz3LhELFVIIlfB6eoU1g=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=QlbfZfzMDD/hfSvY/m4JuKElx+1zSBCvmgnN6j5I1oHw6rrE0/U1++PcUoEl3YXX5C42KWRTVrjYtwCUJTMNUYgfNggp4OdzWNwUe6bFIqBU/l6NnHGQaBHYtNWFgUtAyBrjIatCstihXnEciecwQpgx292Tzu94layOH1E9Psw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RTox0Obq; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 554GBG91000728
	for <devicetree@vger.kernel.org>; Thu, 5 Jun 2025 05:24:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=1a9JgcopP9bJ5yF1Me7vfccR
	Le+8BXkEbBw51pVceW8=; b=RTox0ObqdSLNR5F8asiRpPLHATO4WAFotd9IbWWM
	/Lcf2ZR2kFLHkaKRMdSv2q4ftBQC/CjKMEuuv0HoB4nudfoFyp1Kf+sPRaVvor4O
	2lwZer5akc+gE7QGMyK2fsmh/IySUhT8GaU9GOfyx5/bUgM189yuu+pD/IT3FXl4
	3R0/SQD1nCAptg5c2MgX+7ssKO5eZCgmASLqFVS0VyXpXiVRoHGSUlqZvB5w7Gp+
	i7alpuLT9V0xPdSY5KS8vdAFMtpSJbzfPOkStceSW2aNv/Xz2/H94/Nb2AJSmRPz
	n6Ju7powBABYrI/9whDi5XTkm9ndIeOc6lwlXR0pumhPzg==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 471g8q8718-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 05 Jun 2025 05:24:53 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b2f103f6074so378814a12.3
        for <devicetree@vger.kernel.org>; Wed, 04 Jun 2025 22:24:53 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749101092; x=1749705892;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=1a9JgcopP9bJ5yF1Me7vfccRLe+8BXkEbBw51pVceW8=;
        b=iZKzBWcP7MI9iiXzrAguNKDhucNrH1g+0iyG/uaqMma4YXR2yp9BtaqTU2KEwTrepD
         Nz2gfGvE7SFo0xdkxRcExO1jDOprTIbbDry1REIbVl47Z+sWIXJ06+0hnYHmo/2aCbN0
         3ZZ0dSehaTUsslUcH2uu/91AYIZhIX+Y9Hu4dUoDMda8ObnBmZPkcactP31J06WdPQp6
         Q4eF46rDoEdLVJUP97Gtl6ySX71Bt8oUEQST44eKET4JYfSU31v99a0iOOBP+uMCiA/R
         hR3XXaxnJkVO+T+s696TtTKAsS2KoyDnlsUjjvwfswBK5VwfyvIWCbsQku6E+wBNeTXJ
         YokA==
X-Forwarded-Encrypted: i=1; AJvYcCUU+4SvzFi3SyCDNCiKf6Ox3STdPaADNGOzC6rKp9ykg+hbn2cbgK8R0Y2kebQpuGqjsf2RcjNly8Ik@vger.kernel.org
X-Gm-Message-State: AOJu0YzFOVy7UnaMmIjWHkWj92TFDGXwiXTjxUMGOECgAUXw7KmrLZrr
	x1mUrrcr9TOGgM0kYb4Od4qRjnm4TlqZbO1xgyS5z+bYuDVlofRONzcXhmRInPF2oE3GOYDxzru
	9SVwWfWxExZg6N+B/MKVS3iGRo08FSj2l7rDm/C2O/g8cmNci+CTLW2JqiSKiMHfZ
X-Gm-Gg: ASbGnctvSqaX928lfUCwSNhkq6uPxEZcnfkeFAdpAdjLNGGt+sgdAfzah+7io/n76ya
	GIHkjALwsadIYZLgeIzchcjOmYVGQNcLK7sj0gR2a0erEjuGw9GN+LRayL6SMW+18nFAS39P8Bt
	ip9g4Q/f4RqtglJRXHxLTHRAdkefGM0lKzPlL5q4tnPAmiOtWPaiCKn+LXoAfszsxWsD15gdBME
	6P0NxMWBjh4FIccwL9a71j8eqNCd6XRMQbwh1PlLUQyeG1a0Ue8Y8J5xkk3s4O2Ti251SsPKJPu
	ZgDDgeys0jAA6wr290J3nZrMv1dlScGzBEdm49mnupxfbs9uufKHsaYyC9Q=
X-Received: by 2002:a05:6a21:3287:b0:1f5:9098:e42e with SMTP id adf61e73a8af0-21d22a6cab8mr8581884637.7.1749101092407;
        Wed, 04 Jun 2025 22:24:52 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IELuWY/1bcdQXTlNAC0FeBkJQ7D653GZ5CNEp7sdXfBrnquNDS8cgkO69w0uf0qsyvNLiEZIg==
X-Received: by 2002:a05:6a21:3287:b0:1f5:9098:e42e with SMTP id adf61e73a8af0-21d22a6cab8mr8581844637.7.1749101091990;
        Wed, 04 Jun 2025 22:24:51 -0700 (PDT)
Received: from hu-qianyu-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-747afe96781sm12040801b3a.29.2025.06.04.22.24.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Jun 2025 22:24:51 -0700 (PDT)
Date: Wed, 4 Jun 2025 22:24:49 -0700
From: Qiang Yu <qiang.yu@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>
Cc: Wenbin Yao <quic_wenbyao@quicinc.com>, catalin.marinas@arm.com,
        will@kernel.org, linux-arm-kernel@lists.infradead.org,
        konradybcio@kernel.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        vkoul@kernel.org, kishon@kernel.org, sfr@canb.auug.org.au,
        linux-phy@lists.infradead.org, krishna.chundru@oss.qualcomm.com,
        quic_vbadigan@quicinc.com, quic_mrana@quicinc.com,
        quic_cang@quicinc.com
Subject: Re: [PATCH v4 1/5] arm64: Kconfig: enable PCI Power Control Slot
 driver for QCOM
Message-ID: <aEEqIWSU5P9Xp9J/@hu-qianyu-lv.qualcomm.com>
References: <20250604080237.494014-1-quic_wenbyao@quicinc.com>
 <20250604080237.494014-2-quic_wenbyao@quicinc.com>
 <46r6cdcugwvyuvkjqbi3tq4f7ddkrgy4jut5fwqjsfwbsfoke4@upmtzhcmc7ni>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <46r6cdcugwvyuvkjqbi3tq4f7ddkrgy4jut5fwqjsfwbsfoke4@upmtzhcmc7ni>
X-Proofpoint-GUID: qIUusacAFe0HX9lO0IwAUw-DgB3KsCQV
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjA1MDA0NSBTYWx0ZWRfX2a04RuMHpEjT
 grsAGEpGpxIU+qR2LZXwc16AHe4qwsA39Nz/XMjhkGBPi2e03CjjZD1SEH92JSYYVDxcCsTKfV9
 baBvcNRW7DOu85eDeikd2d2QzKw34xfGNM2qSBL3I6xkqryb8eR1OTFT34au8QSjJqZgIHkowhd
 8aH5iZtkShnEcVqrVLCj+kec0mr2OxVViozoyUeSmXAmSrJ8hmfWzuLDj3MHE0HxEALqajSB27t
 x+gVeT0cs47DZMmz9Y3amZtaOl3oX6s+fV2oRrV9iCkgLZ08tR//gBQBNkzndoWzgZsfHSohyDp
 SZGS3cN32iqe+W72HIYSiOdC6OMzRzviA9NihsB37fYM/QoZMLBF1Sf11C1v/a8ooLVx7XoFHSU
 ko64u0iLnkHJtaT+C+QrXn67Ha8p/Imm8h+6qQBRg7bZDgKim76TmaXry+ZtR9pw0y5Y7ckm
X-Proofpoint-ORIG-GUID: qIUusacAFe0HX9lO0IwAUw-DgB3KsCQV
X-Authority-Analysis: v=2.4 cv=PrmTbxM3 c=1 sm=1 tr=0 ts=68412a25 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=kj9zAlcOel0A:10 a=6IFa9wvqVegA:10 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=yafonziSkLk5LdqN7hYA:9 a=CjuIK1q_8ugA:10 a=3WC7DwWrALyhR5TkjVHa:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-06-05_01,2025-06-03_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 priorityscore=1501 mlxlogscore=999 mlxscore=0 lowpriorityscore=0
 impostorscore=0 malwarescore=0 spamscore=0 clxscore=1011 adultscore=0
 suspectscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506050045

On Wed, Jun 04, 2025 at 03:30:22PM -0500, Bjorn Andersson wrote:
> On Wed, Jun 04, 2025 at 04:02:33PM +0800, Wenbin Yao wrote:
> > From: Qiang Yu <qiang.yu@oss.qualcomm.com>
> > 
> > Enable the pwrctrl driver, which is utilized to manage the power supplies
> > of the devices connected to the PCI slots. This ensures that the voltage
> > rails of the standard PCI slots on some platforms eg. X1E80100-QCP can be
> > correctly turned on/off if they are described under PCIe port device tree
> > node.
> > 
> > Signed-off-by: Qiang Yu <qiang.yu@oss.qualcomm.com>
> > Signed-off-by: Wenbin Yao <quic_wenbyao@quicinc.com>
> > ---
> >  arch/arm64/Kconfig.platforms | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/arch/arm64/Kconfig.platforms b/arch/arm64/Kconfig.platforms
> > index a541bb029..0ffd65e36 100644
> > --- a/arch/arm64/Kconfig.platforms
> > +++ b/arch/arm64/Kconfig.platforms
> > @@ -270,6 +270,7 @@ config ARCH_QCOM
> >  	select GPIOLIB
> >  	select PINCTRL
> >  	select HAVE_PWRCTRL if PCI
> > +	select PCI_PWRCTRL_SLOT if PCI
> 
> PWRCTL isn't a fundamental feature of ARCH_QCOM, so why do we select it
> here?
> 
We were asked to select it in the same way as PCI_PWRCTL_PWRSEQ, following
an approach like:

select PCI_PWRCTL_SLOT if ARCH_QCOM in Kconfig and nothing in defconfig.

But to be honest, we didn't figure out a more appropriate way. Unlike
PCI_PWRCTL_PWRSEQ, which is selected by ath11k/ath12k, PCI_PWRCTL_SLOT
doesn't have a specific endpoint device driver to select it. Would it be
appropriate to add "select PCI_PWRCTL_SLOT if HAVE_PWRCTL" in the Kconfig
for portdrv? Do you have any recommendations?

> Regards,
> Bjorn
> 
> >  	help
> >  	  This enables support for the ARMv8 based Qualcomm chipsets.
> >  
> > -- 
> > 2.34.1
> > 

