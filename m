Return-Path: <devicetree+bounces-221067-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 749BFB9D065
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 03:32:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3011A3819F7
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 01:32:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 935352DEA70;
	Thu, 25 Sep 2025 01:32:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eslxo5rj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F30291E98EF
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 01:32:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758763923; cv=none; b=pUTDQzuoS1LbWdmHuWRf4zFYVro+sDzIXapDET7dPNXP7Fmu2eFQVBFGFfwhfRmPeE0wbSfFJDkV4tIEkcWwEF+FHubL4AmcczAG1xFN5jJYgDcc74s7zW/j150O2wk4JPLsYxHedKWOlKKwPBEZLeKh+myOU/FNdA2Xo31d3EE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758763923; c=relaxed/simple;
	bh=B2W8QlDRPUbYId4RKLCk+SpL4pdjrDWi1n1TRnKMnVQ=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=mhlBdUjxq/FzCVL5hN9DuJaYLd1/gIWKiCOXlLx6hKcKz1ybMel5ZEl8+fkotlYZIMIem6xRLzKV61nWp6wRQj8fEgP/PgZ+ZkDtS2FdSRjF6fjOpi19F32hjh2AL+YlnsLgMmKEDc0yN3mMC7e0ZFoRhlO7A5ELhLu4z0z2YAg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eslxo5rj; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58ODIX41029565
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 01:32:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=HMxLUM5IWdCMDI4XHlO17eGF
	SLCDgAm/nD6cVTEGZY0=; b=eslxo5rjDla+eOEEdGfqGRTwnttf8tUIBzdpR+nn
	A4DgL5fH2+zyho6V8Zhxi/B6F39cN617tkrQ3766A6SBI0epMBeSQ1+vRbVfr2BJ
	qzIzQmIU9LyLkBwptGhUBKBxkqXIBhtc3GJAJegPIcV4/CpXI8GgRh5M115n+Ivj
	VX8YG6ukLb4r2VuY2q4If0/7/60HHLfnlYKhWfT9pBxU+C7SISEKsAsriI7Bxfje
	y1gkt67cdyVRD2TQ/0AJNVRCZWlGMY6wLkJjnU6McRw9mGTyj+U5Gt5SNS+K//bs
	l+05RwE0xGPbDZSVZBEc3LZwPHS3ZvDHs0nYuBKc6QWUXQ==
Received: from mail-qt1-f197.google.com (mail-qt1-f197.google.com [209.85.160.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499n1fp66n-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 01:32:00 +0000 (GMT)
Received: by mail-qt1-f197.google.com with SMTP id d75a77b69052e-4d6a41b5b66so11283291cf.1
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 18:32:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758763919; x=1759368719;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HMxLUM5IWdCMDI4XHlO17eGFSLCDgAm/nD6cVTEGZY0=;
        b=emKEwi/Xn1Q/S0rI+4O48RHzhCuleumtMtWjRdFYC9+4ZiWnIPyKSc4q8aalgcRIXU
         bkwlm08EHQ84AnGrt4syjzOAdohNKWqAV4TtGs+R9ewBPQsu6yWnybZRkNvsStgIuuOp
         ifGPnfwEZfW47tIHHcwY65kD27TIJ8Ng5T9/YEpfibZazOsaWuWkQiUxlkRkxeZRfCgu
         G/IhLC42UCsWwm77LK3hAmo24Ryq+lzDpjbTtZVsiD+WXp5vrT0fUZbeaVMv/hofe8In
         Xv1DA2RbEsd8bnb1BG/2jPeZPltjLGcv4mKDGw2+aU3Ji3uI/NwcDs0sLdaKw6wMGv1j
         TWnA==
X-Forwarded-Encrypted: i=1; AJvYcCXYXf9JYQJ+Z80HKHubcH7CtyCrIc1fYhFFMqOiEFLuPIEzqf8qwfJGmhorosZgDdlYoowIgCqdlGVK@vger.kernel.org
X-Gm-Message-State: AOJu0YzHZ8/nRRvwkzt4U9zDFyg7tu9EmoS2z3jdZKquOfTub9ysqIXU
	tWstMZtxDRYwnnfkf5ecru7sHQb3Ol4p5CIy3JkkfBIUjklDNQ1OXmbOpvs+4SJTTZC8mzXKril
	s9QYR2bfmQyqesmsJfsTebZ5m0viUP/5pcRf1gNBuz6iHyUS48K2ZNXbXN3iLuqX3
X-Gm-Gg: ASbGncu6BaNGVhkuDx6/2fQZohzVXtGO8+k7LzhkKIbF9Hhkt5dKcJidCLPpKtBL6MH
	6qnZvoeJnw78iMS4lxrgZ3xmINKx6qnoATfR8MVz0qI6b2lSKVdpaysTWfDvO5m1x9ksT1dn0xu
	jtOWTQsDKt2LXivpgF4XFeXGsww6eSS3hpRAZBbKq2DSRYUy7Ty3YUZftNFUkddSmIDStzwZELS
	P+X2V1HZrIFSrF4n2VWW0MS5p7etY4FyAhCbMLEiJUl3cLRCi+GOJx5j0mvVmRr2lwJX5mLEOTh
	dCg52QzIB4feSKIcy6MYx/LzCy3qiTu9czMqPRw1itcqvobkyLH7BvVJlu22VRlkhuMdM3qSNBZ
	lT8FulkQ/boj/EeRzpRvpQn1LFVbYgHDNhCTZ5Nx6vOW9Ui+ZAVVg
X-Received: by 2002:a05:622a:347:b0:4d7:9039:2e8b with SMTP id d75a77b69052e-4da4c77c44amr22446101cf.72.1758763918655;
        Wed, 24 Sep 2025 18:31:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGLXkB79ZdwIIrxHpR8mHmz6lONhQNuhy+mvf3W6YwEGNNidGZE2ggTMtevzJ98w35Q6vuNCg==
X-Received: by 2002:a05:622a:347:b0:4d7:9039:2e8b with SMTP id d75a77b69052e-4da4c77c44amr22445871cf.72.1758763918237;
        Wed, 24 Sep 2025 18:31:58 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-583171e50d3sm196333e87.139.2025.09.24.18.31.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 18:31:56 -0700 (PDT)
Date: Thu, 25 Sep 2025 04:31:54 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
        vkoul@kernel.org, gregkh@linuxfoundation.org, robh@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 08/10] phy: qualcomm: qmp-usb: Add support for Glymur
 USB UNI PHY
Message-ID: <fo4jg2eewahc7iahfk3kdzztpcami2wic2kocgp6m2c5nzb3ma@idfpo4frh3eb>
References: <20250925005228.4035927-1-wesley.cheng@oss.qualcomm.com>
 <20250925005228.4035927-9-wesley.cheng@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250925005228.4035927-9-wesley.cheng@oss.qualcomm.com>
X-Proofpoint-ORIG-GUID: whxNoxjm5JB5WwhOcePFfyzD8HnZeAcM
X-Proofpoint-GUID: whxNoxjm5JB5WwhOcePFfyzD8HnZeAcM
X-Authority-Analysis: v=2.4 cv=No/Rc9dJ c=1 sm=1 tr=0 ts=68d49b90 cx=c_pps
 a=EVbN6Ke/fEF3bsl7X48z0g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=NGXOFnXZFdVYdcUjdRcA:9 a=CjuIK1q_8ugA:10
 a=a_PwQJl-kcHnX1M80qC6:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAzNyBTYWx0ZWRfX77K6yXd9fkRm
 GU9MLLzRG2+d+8jcMXXAzkSiOdHxMYNYXsAx5113Ypla1cAg0UmpoKGL3vFvPqP2OgyYVgZsDVE
 vPenwM6yHS0RSgDsyX+ZlvQYiAQGPV+ypkC3s9fcwJ+c+i5f/FP21JVDdL1nihSxMJIbebi6cXg
 oPhup5pmLp6/gw/BZtmWtSlBtFuCQ4eqQA9rBA+z0K0ukHgq88pMK6MaFQI/EW+HMjnPio/UOyd
 pmnMYcJH9BqwQAQUV6alqLbIrWczlTlNqnu62mJa08zwTjK1KV7300NcqnS4xgqdTzx55c23JC/
 VT1Fc/bMepLhdZLFStM1+cXu71VVBBs2FajCecsoiY3lx6Arz+ItSWDKeGgN+nfEv8YqSORiezS
 M9Z2zkQt
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 suspectscore=0 adultscore=0 malwarescore=0
 phishscore=0 bulkscore=0 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200037

On Wed, Sep 24, 2025 at 05:52:26PM -0700, Wesley Cheng wrote:
> Glymur contains a USB multiport controller which supports a QMP UNI PHY.
> These ports do not have typeC capability, so it needs to be differentiated
> in this manner.  Update the QMP PHY sequence required to bring up the UNI
> PHY for Glymur.  The UNI PHY follows mostly the same register field
> definitions as previous SoCs.
> 
> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-usb.c | 163 ++++++++++++++++++++++++
>  1 file changed, 163 insertions(+)
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> index ed646a7e705b..50e31610ce20 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp-usb.c
> @@ -28,6 +28,7 @@
>  #include "phy-qcom-qmp-pcs-usb-v5.h"
>  #include "phy-qcom-qmp-pcs-usb-v6.h"
>  #include "phy-qcom-qmp-pcs-usb-v7.h"
> +#include "phy-qcom-qmp-pcs-usb-v8.h"
>  
>  #define PHY_INIT_COMPLETE_TIMEOUT		10000
>  
> @@ -1240,6 +1241,139 @@ static const struct qmp_phy_init_tbl x1e80100_usb3_uniphy_pcs_usb_tbl[] = {
>  	QMP_PHY_INIT_CFG(QPHY_V7_PCS_USB3_RCVR_DTCT_DLY_U3_H, 0x00),
>  };
>  
> +static const struct qmp_phy_init_tbl glymur_usb3_uniphy_serdes_tbl[] = {

Please, keep the file sorted.

> +	QMP_PHY_INIT_CFG(QSERDES_V8_COM_SSC_STEP_SIZE1_MODE1, 0xc0),

-- 
With best wishes
Dmitry

