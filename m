Return-Path: <devicetree+bounces-167951-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D567EA90EAE
	for <lists+devicetree@lfdr.de>; Thu, 17 Apr 2025 00:37:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E18021906BD2
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 22:37:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8C76F23F299;
	Wed, 16 Apr 2025 22:36:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="PREP7BRI"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4350E23E332
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 22:36:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744843005; cv=none; b=WJodq8x6isPsK7mQf3cL0o2e44hQZ1mprLS4A4i3KzZcsDBEYOgiHu0jb0Vvsf2iP1U2ozNWpRQ9sGbweR6vabE1V1nSdEJG7e9z7lHFs2+xHmw15hRBh9TiomgD9CdGLeURTe1TsKKFT2mPHN3y5HwsVpPoXcTb2ItqxZpaA10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744843005; c=relaxed/simple;
	bh=Wuf+YO5j7Xs74X62PNrvu/N2fyVlnH3EUykZEmoOJnU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Y0ZBmghWZeAbrXo7u8L7w5J7sbwamEUWSjFBCvxF26z4btL7fHNlqPzVP6CMaAneQIL3TPzwYFT5k2jjCGa0LQBD85pBbRxLetxmz/qASHAF7nI6gylsiZ1gfgWkhAfx8YmVH85TphvFcBNnEgcxa/oQy5i4HCM+V557XIU99fQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=PREP7BRI; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53GMBG6r021313
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 22:36:41 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=pg3dPe7RJgCdG38kaPZfjRgD
	KXTAgDAiJeAKXzRN8OE=; b=PREP7BRIWMaCKFvQDDtXfxWa4KvgWjna3lnp5U3U
	j5sl77WF2j/UDLAAMXJMrYzPvsg3jWL0xZoNc+M9oKMmMJGoAh0Fqqak1AaNMRtj
	4bDbVfHO03DnVxQ/zCSDgP0plKwNOXy2grWzYyQyOuzoqvQM7OOWHFloVDivcTnG
	6nArIJbitT/IVaS87cPBUsCB/Kj6rmmuiTEY8JoGg7y+NjZ95Wuc4VvfsGawdCEK
	P9CEnVoRpioi7BLK1f+N8UzOAV+Tp0qMv0ftlCIzs3UIXC/epntp0TKARN8ttn2t
	+UVp2K0txggRNEj/3aoubKtbTALmWXdK70EW3JZYGUwygg==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45ygj9cwh9-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 22:36:41 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-6e8f99a9524so5227066d6.1
        for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 15:36:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744843000; x=1745447800;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=pg3dPe7RJgCdG38kaPZfjRgDKXTAgDAiJeAKXzRN8OE=;
        b=aFdbQBIwPs1EbvThMxur7soBdZRMUWhATJgE7tyUTVHLahT04fqtp4o211FRj4Ht1b
         934KZ5Le9uDcMZPB905IQp0X+ZCdMTlxdu/z2ouLDHkrtZ6VEdMHZtqzQWmq1BKYe2Sv
         p1JoYCNGTXY78WrlPw8e9A/fZQpdpYkZ33+5NGL/LYGZGMnR56NmjX549JujlfUCnl12
         XuMueuP9D0o7SAlzcl/ad/HK/mpwfSSoR0qaenK+FpP5eZvXbVjXDCta+NuGxdZAZS+g
         aglIKWyeYRN+zIRwuK6FyX8FbejsCj4wpvjp51cYPlxcRYwtp/kTEBdg1nzRUa2pZdY9
         af6w==
X-Forwarded-Encrypted: i=1; AJvYcCUjb40rok+8va+6uvN1z5bKQ5AzGER8HDZn5pomWXf9y2qGd0gTgkkJM6da96nqv/MRJcvtk+ZDvHUd@vger.kernel.org
X-Gm-Message-State: AOJu0YzsWcC2pFJW0H2IKert/YE7+d+MiWAqwxCB3ZwZDZSeNQImD9Ui
	i1nIv7ovzGhIjD1Btv3qrK0LIF/wxPnhuGfWr9l8FfQqu1rJCl8odh5Ac5VvNGqxzmJfIHGAeRL
	4+36RrrTpVvPdo5mLVjOfyiHDAN8ySRx+xBcv4DXblNcBtvXdbM0HHZe56IrM
X-Gm-Gg: ASbGncvI4U/s1UPgsvYwd/XeBJ8sFLVBc9IT3zVPnOCgpfDJFECVYIGCToEAmjy6RCu
	vf2couwtPhHO+aLTAV5+edwsyjLC8q7AL58fmm4/tL3r2Ss9UhPKiWueKKNn6Bitob9AvKZeUHb
	aOlAb9TYY1CY7Pm63AZoghnoHVBgxNCeQvh6aaKwJ3QuSZ/eKrJmGX4iyl6YpPgjqbYYDqOM3KR
	XERRxFX4YkhAglDnL/ViHAqCEW2Gx3MbnciF9JzDUacwnHOeoU9R5wJv8w2uEGTnNaaKLms+Lg5
	ysAndNGUmfgtNtedqnIu1+9SFwIpwSvliy98FLs/3ivaQj+YxtR4GybYNPWfuvan0EGMUGBE6ns
	=
X-Received: by 2002:a05:6214:4012:b0:6ea:d033:2846 with SMTP id 6a1803df08f44-6f2b2f656fbmr58883016d6.25.1744843000289;
        Wed, 16 Apr 2025 15:36:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IECqbAAlxVDt6QZrVPtHvTpaXap+i/XG5/D0OeVcHNnv99ZRLCW4yN0DZTGEpl0r3rZcMOpJg==
X-Received: by 2002:a05:6214:4012:b0:6ea:d033:2846 with SMTP id 6a1803df08f44-6f2b2f656fbmr58882646d6.25.1744843000019;
        Wed, 16 Apr 2025 15:36:40 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54d3d510b66sm1789872e87.203.2025.04.16.15.36.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Apr 2025 15:36:39 -0700 (PDT)
Date: Thu, 17 Apr 2025 01:36:37 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Loic Poulain <loic.poulain@oss.qualcomm.com>
Cc: bryan.odonoghue@linaro.org, rfoss@kernel.org, konradybcio@kernel.org,
        andersson@kernel.org, krzk+dt@kernel.org, robh@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 3/6] media: qcom: camss: csiphy-3ph: Add CSIPHY 2ph DPHY
 v2.0.1 init sequence
Message-ID: <z5bemevabirdh5qhj6fajdihcucnoa5gxjkjv6s4aztruffn6u@w5rvy3sxeln3>
References: <20250416120908.206873-1-loic.poulain@oss.qualcomm.com>
 <20250416120908.206873-3-loic.poulain@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250416120908.206873-3-loic.poulain@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: 0QlFYx2ts3tJ0xs39vVl-ltOxWKwqVGj
X-Authority-Analysis: v=2.4 cv=PruTbxM3 c=1 sm=1 tr=0 ts=680030f9 cx=c_pps a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=EUspDBNiAAAA:8 a=qmk_QMiZca7AS3gWk0IA:9 a=CjuIK1q_8ugA:10 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-GUID: 0QlFYx2ts3tJ0xs39vVl-ltOxWKwqVGj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-16_09,2025-04-15_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 suspectscore=0 bulkscore=0
 priorityscore=1501 malwarescore=0 adultscore=0 lowpriorityscore=0
 impostorscore=0 clxscore=1015 spamscore=0 mlxscore=0 mlxlogscore=999
 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504160181

On Wed, Apr 16, 2025 at 02:09:05PM +0200, Loic Poulain wrote:
> This is the CSI PHY version found in QCS2290/QCM2290 SoCs.
> The table is extracted from downstream camera driver.
> 
> Signed-off-by: Loic Poulain <loic.poulain@oss.qualcomm.com>
> ---
>  .../qcom/camss/camss-csiphy-3ph-1-0.c         | 89 +++++++++++++++++++
>  drivers/media/platform/qcom/camss/camss.h     |  1 +
>  2 files changed, 90 insertions(+)
> 
> diff --git a/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c b/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
> index f732a76de93e..0e314ff9292f 100644
> --- a/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
> +++ b/drivers/media/platform/qcom/camss/camss-csiphy-3ph-1-0.c
> @@ -319,6 +319,90 @@ csiphy_lane_regs lane_regs_sm8250[] = {
>  	{0x0884, 0x01, 0x00, CSIPHY_DEFAULT_PARAMS},
>  };
>  
> +/* GEN2 2.0.1 2PH DPHY mode */
> +static const struct
> +csiphy_lane_regs lane_regs_qcm2290[] = {
> +	{0x0030, 0x02, 0x00, CSIPHY_DEFAULT_PARAMS},
> +	{0x002C, 0x01, 0x00, CSIPHY_DEFAULT_PARAMS},

lowercase hex, please.

> +	{0x0034, 0x01, 0x00, CSIPHY_DEFAULT_PARAMS},

-- 
With best wishes
Dmitry

