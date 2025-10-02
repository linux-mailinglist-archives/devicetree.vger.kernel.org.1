Return-Path: <devicetree+bounces-223208-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 0AEC2BB2305
	for <lists+devicetree@lfdr.de>; Thu, 02 Oct 2025 02:58:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id D8B2B7A5B2E
	for <lists+devicetree@lfdr.de>; Thu,  2 Oct 2025 00:56:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E221311CBA;
	Thu,  2 Oct 2025 00:58:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="m6nKV1hA"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27F2A1EA84
	for <devicetree@vger.kernel.org>; Thu,  2 Oct 2025 00:58:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759366689; cv=none; b=ljUyR9A/W/SxUW5bb6mr6WXZNhjZgJh2GPHtqMORAY2AGq8mDUEUUvlOfjpNggqJGXM2KPcyVvpEKJIn/XyfjTVm74TmkM6vy55LEedW+jHnTy+qXQtxVjneWkIwl1hCHpSK+YMTZ0wBP4NAA/NcPvZR/fFFs1S8JzPvMuxTutk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759366689; c=relaxed/simple;
	bh=9GLTLmwGqdXXPKoZ7WpbocaYojYCtAxWM+EOO+G2PFU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PuuNt7bE9Bit9bbJUbRcb+K2ZSVKlij2q/i5VYUvnJkLssFwOIZi8YH5KqxLAxFGiCE5MnRdCx6eCWIEci1XWoJSyaUDCorxD1RYFKau3pC3UD1D268GGROH6aKIBNi11kCyvtfIgdj91ySn7FhgN/DaNGYATvudqOAmbz/Crgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=m6nKV1hA; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 591IcGks031548
	for <devicetree@vger.kernel.org>; Thu, 2 Oct 2025 00:58:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=WRQA0Ldbq6oCOYaqBj8lZbHs
	x2KkWTck4TAuf9FIAqA=; b=m6nKV1hAoCyWGfwflOJQiPh5vG0P4usGhVpxva3h
	k3NSh70TmWve4FG00qa4kfMRrh6zkll+wUHWGbp0OQAO1vpfm74FQAqG0U8Z8pAh
	ZlxCpxWR3bbc5eAl1+ml4octXbXibRRSWBVkd9loSudBQAQHeb7kGaGseX3v44QQ
	P7TQr7FV5v7KZXSKSBls/hk4Ql86jym0ZYk9ONsRPCyc5t7vBmCZaiFwrLF6rNFU
	W6JUid5dLu7+Kwvs1o5WGHnGr7LGqEr9dcPZg8wsLLgxjX0ewYnQ5c/XNgnE+f8G
	2WY0hIHxghNHicY4HABW++VeYc350mvTP/g6pMTr3S5+fw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e6vr6aks-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 02 Oct 2025 00:58:07 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-84b9c23b8aeso111537785a.1
        for <devicetree@vger.kernel.org>; Wed, 01 Oct 2025 17:58:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759366686; x=1759971486;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WRQA0Ldbq6oCOYaqBj8lZbHsx2KkWTck4TAuf9FIAqA=;
        b=nMJ5EhDPcTtg4HzsvfmAxr5EuSuHyJURgAWzIgfiMyTj/jSoX+dvO7INYHGzuxWgS5
         Ogk5VurIaiG9XMKUti94XMP8oAk3pX3DiLndPVvDuByV+njbs4Yiy+/XqLXttvhww2yQ
         ND3z1tAGHo3NKZw3D2E48MUs5OrOO3U+dZHcPjiM/ocVFzsbqR5LwJ7z45tzOF8DovDA
         3NQ6nLFEnyFrxIuiqPoa+1aXnaETtzUKy7W+5+GlsKnczoVnijIFGYLhYNMKFH1mX7PN
         sOLTAUV7OakmNLUBvd9YEYfgJDJjDtL6zs7n7QRiVVeVxD6mulOtqbv4BSoP8055rsYW
         9P5w==
X-Forwarded-Encrypted: i=1; AJvYcCXu/KrmuduawFhFQwZRsMNqTGQHPJDeq7hgRMQcb0GWgMx13HSz7yw3BlT9f0PaSQcJoyUtLyLYZ3X3@vger.kernel.org
X-Gm-Message-State: AOJu0YyG3UM2MZ2sGQvS+ZqO+7mP4JYOleE5jk5wUnpnLs5bSTQ7INTW
	ZedoR4h14PTjonaU9PbE6nw9nyGbMhGnyxYTyqBz+Ge/1eZD/NeMLGEmhtmOyAspAoEYP4bY/dU
	5kRNnCxAvKpPdMKKTSw1HbwH+jcnd8bTGGZ1axY49egyw4Ds64Id06CiyxcAEpcu6
X-Gm-Gg: ASbGncuZKNpFJ6FT4j23HYQLkoZDv3j2FgV8C6OjrYKWH3+4EmLPfdOqdBo+1ERHOCO
	7Nm6YVbo9MvZZTEgDygCseR9Fa3YQ9Jm9mS9mdhJEDIEfJDBSvwqOsgJUrzb11LWmtBtqMDDu9m
	NNWihK2WcURvL7bzmX2eF67E2NLBxMKnO+WCoKAlSMP/R7vCPwwIwJtJ4g2mWmOXzC8vJaCIx5g
	B7/up1on/ZBksAK27Xx7JFC6gRhtiuL2AInVA056900J3rcPoSaiVF4csWrWWoGmY15G6By3Wpf
	Vx0WUUdhEZWZbNRR15GACbGi7/QQqsfEKhoIAPW+KHDrWKDhU9QfxFtKCXhHqbrWvmCi9KPFxSj
	qRMzYt9K4ii0zkDqvtDXcuKU8mVL2qdKwtGgAu4zU1i/wIH19ePtu7KArHA==
X-Received: by 2002:a05:620a:1987:b0:826:ef9:3346 with SMTP id af79cd13be357-8737154541bmr742057685a.18.1759366685813;
        Wed, 01 Oct 2025 17:58:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGoX2gNtGM6G7KSu5OLUymOolA+kZGqBSRedhmredpkzbdydeAaEfMnslOBA8eEJiSCKXimyg==
X-Received: by 2002:a05:620a:1987:b0:826:ef9:3346 with SMTP id af79cd13be357-8737154541bmr742055285a.18.1759366685323;
        Wed, 01 Oct 2025 17:58:05 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-373ba4cdf47sm2721371fa.52.2025.10.01.17.58.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Oct 2025 17:58:03 -0700 (PDT)
Date: Thu, 2 Oct 2025 03:58:00 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Cc: krzk+dt@kernel.org, conor+dt@kernel.org, konrad.dybcio@oss.qualcomm.com,
        kishon@kernel.org, vkoul@kernel.org, gregkh@linuxfoundation.org,
        robh@kernel.org, linux-arm-msm@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 07/10] phy: qualcomm: qmp-combo: Update QMP PHY with
 Glymur settings
Message-ID: <ra3bq7guxunk2n7mbrjlefxvxu45clmwzp74vq7bqd2xvp2fv5@z5skxjxs4yxp>
References: <20251001220534.3166401-1-wesley.cheng@oss.qualcomm.com>
 <20251001220534.3166401-8-wesley.cheng@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251001220534.3166401-8-wesley.cheng@oss.qualcomm.com>
X-Proofpoint-GUID: 9OiJobjmRrth_AiuhcEEEdnHd6l63wrR
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAxNyBTYWx0ZWRfX5GEjaU6VjIsf
 WHI3Re3Dr1rPnMXL1XigNkjcZFMS6Z0xunnTIAS2rZItO7cdy4VdkfJsFKRvowCQ4li3h+z2SLW
 Roe+UkG94m/mErsMsnxLlM7ICu4FfilTtHaoQBIRH7GDtXAHKRz9g8GTpbfrlNf+6ufh0WrnmJL
 LHOLYQoGRJUQuHjn5eH6L56Blr3w6GkruHVu5T9nuQgGTPEGRf+327TJMUCn/dSeE2fRWUrxttC
 lTy/KyG3mwUMABai+/sY0paPlzWysJjcNWCarE/5xur/zv4rMg6CY8mwkl06lKzknE6JFvHpUhm
 9+sk1tWh4VA4mLG73FcnZtMD1Mb56TXrSQT1C+AW2OLh9ahAodhrJ+oHr1hgblthAVE8dCMpDmd
 wuhczJCH6KjxYFwVe6CYSi6yDXVC+Q==
X-Authority-Analysis: v=2.4 cv=IeiKmGqa c=1 sm=1 tr=0 ts=68ddce1f cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=JfrnYn6hAAAA:8 a=EUspDBNiAAAA:8 a=bgMNcTsuivlx1WpOe6cA:9
 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22 a=1CNFftbPRP8L7MoqJWF3:22
X-Proofpoint-ORIG-GUID: 9OiJobjmRrth_AiuhcEEEdnHd6l63wrR
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-01_07,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 clxscore=1015 priorityscore=1501 bulkscore=0
 suspectscore=0 spamscore=0 adultscore=0 impostorscore=0 phishscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509270017

On Wed, Oct 01, 2025 at 03:05:31PM -0700, Wesley Cheng wrote:
> For SuperSpeed USB to work properly, there is a set of HW settings that
> need to be programmed into the USB blocks within the QMP PHY.  Ensure that
> these settings follow the latest settings mentioned in the HW programming
> guide.  The QMP USB PHY on Glymur is a USB43 based PHY that will have some
> new ways to define certain registers, such as the replacement of TXA/RXA
> and TXB/RXB register sets.  This was replaced with the LALB register set.
> 
> There are also some PHY init updates to modify the PCS MISC register space.
> Without these, the QMP PHY PLL locking fails.
> 
> Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
> ---
>  drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 312 ++++++++-
>  .../phy/qualcomm/phy-qcom-qmp-pcs-aon-v8.h    |  17 +
>  .../phy/qualcomm/phy-qcom-qmp-pcs-misc-v8.h   |  12 +
>  .../qualcomm/phy-qcom-qmp-qserdes-lalb-v8.h   | 639 ++++++++++++++++++
>  .../phy/qualcomm/phy-qcom-qmp-usb43-pcs-v8.h  |  33 +
>  .../phy-qcom-qmp-usb43-qserdes-com-v8.h       | 224 ++++++
>  drivers/phy/qualcomm/phy-qcom-qmp.h           |   4 +
>  7 files changed, 1240 insertions(+), 1 deletion(-)
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v8.h
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-misc-v8.h
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-lalb-v8.h
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-usb43-pcs-v8.h
>  create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-usb43-qserdes-com-v8.h
> 
> diff --git a/drivers/phy/qualcomm/phy-qcom-qmp.h b/drivers/phy/qualcomm/phy-qcom-qmp.h
> index da2a7ad2cdcc..7211c71fe68c 100644
> --- a/drivers/phy/qualcomm/phy-qcom-qmp.h
> +++ b/drivers/phy/qualcomm/phy-qcom-qmp.h
> @@ -32,7 +32,9 @@
>  #include "phy-qcom-qmp-qserdes-txrx-v7.h"
>  
>  #include "phy-qcom-qmp-qserdes-com-v8.h"
> +#include "phy-qcom-qmp-usb43-qserdes-com-v8.h"
>  #include "phy-qcom-qmp-qserdes-txrx-v8.h"
> +#include "phy-qcom-qmp-qserdes-lalb-v8.h"
>  
>  #include "phy-qcom-qmp-qserdes-pll.h"
>  
> @@ -60,6 +62,8 @@
>  
>  #include "phy-qcom-qmp-pcs-v8_50.h"
>  
> +#include "phy-qcom-qmp-usb43-pcs-v8.h"

Let's not include USB-specific header into the generic header.

With that fixed:


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>



> +
>  /* QPHY_SW_RESET bit */
>  #define SW_RESET				BIT(0)
>  /* QPHY_POWER_DOWN_CONTROL */
> 
> -- 
> linux-phy mailing list
> linux-phy@lists.infradead.org
> https://lists.infradead.org/mailman/listinfo/linux-phy

-- 
With best wishes
Dmitry

