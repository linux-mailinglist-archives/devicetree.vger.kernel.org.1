Return-Path: <devicetree+bounces-222845-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C165FBAE559
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 20:43:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3B9471945002
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 18:44:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3022D279918;
	Tue, 30 Sep 2025 18:43:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bfTmvrZJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C0CA267F58
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 18:43:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759257826; cv=none; b=pul4CmWr0O6GHF+dV6QKuDQ8em8ovASWEHr/Sj33B8H96HlV5apB6ptbGAnJERD/SrnAPyTo2/dIZJ1K+tdvXW0Qct8LPHCY3AtR9jJRtjPwlxkr6cBriJn7aVNohaOvjXMdfajHPiJAIIgdr74NduQoyGWFBdSC0haV6ooFOw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759257826; c=relaxed/simple;
	bh=FjCaxSo0gdGhvu7zeLMnYLhnP7QBFHb9v99tTue3MwY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gYwkijIsTsQzlq3xvQtDBEhnHLT4ZYAdiVIVht0b6FjJKxTZ7CuG/wDkJk7pp+uh/fQZWLYfxsKDfjLPK3BDPQD14TTCZxNXLsbMS3Hv4wzRz8/9rOmJxMjNluY2gmZvVhsK1OmMKuMAWTH6UsQb++B+/D79JyCCwW0jnDdEW6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bfTmvrZJ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58UCCL6U020980
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 18:43:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=yGmiFBtk8zoxCM+T4HUw6+ZD
	+jra215LvynAxpP5vgk=; b=bfTmvrZJra+/oQZi7uhdBmbERNSFcTLqisqpazM1
	wiudlbDafBQKYQ6pepOJctTKpmrQZLScq2Ie2N7USskXBRMWD61lwlErIgXOMJN1
	qmq79ohKTxUDoPGobDLWT5bGi+/L34X/W9bxBGDsNwKUp93UaBDrvGqMjJxwddVv
	twZAAp/AyQzDTi9fCjHWxV2d2jpJzcZmPHSum5dzsj1p5zNaGphdjbtvdj3uGbsl
	syJVbQRAxIaMzySx/jd27fn8v+vpXiG3HM7OTe6rWRUwrdTQbojn/tGpr7OocZTK
	QsbqQ25r2ltFmYQHFm4C318tKfN+YNZeJSWJg4psEJRt3A==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e6x5t89u-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 18:43:42 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-854bec86266so1982425185a.1
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 11:43:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759257822; x=1759862622;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yGmiFBtk8zoxCM+T4HUw6+ZD+jra215LvynAxpP5vgk=;
        b=DW/gZUmm8eSDQSlnyONJ31pR8+x0A5hBqYK0zG2HJb8s2GtsOc+2GeALUs8hBFpOKN
         hhYpQNpbIF0r6txiWIPeuCPZWk9dkHNbKRpysC1ldLyRXXjuVJ/pcUZQd6D2LfpEyByt
         Sa8haS2VZm2xePj/W/Gf34yBXqEjNkXheguQbGfIu4BUAmb6mkMS+wh8h0ozmzk2W8+C
         Hh5YlYroPg9ftuqkcAQyJ2mQhCUGB9rrg10BXmsZ73L3r8gt6pB5yPnjVlQaw8js381B
         M1It8/jJ3fckUz41ls/LjEnyVJqlVDQ5N0esTs8aznmTwvb9AcB8ZnnvMKTDwkK725AK
         NW0A==
X-Forwarded-Encrypted: i=1; AJvYcCWWtQ456z2m2sNOslL0wH+c3TvtPHrQAgOmTuFlHBkAnHXzxtngouXUPA6xKSgkIx2gXpNJ9DEA8g7T@vger.kernel.org
X-Gm-Message-State: AOJu0YzC3WwWAK0XkkfPu+cwnyYh++5hPkQYUkMOlbV5F/13qPuKW+qN
	P65OV1blIojG/gE04l2Q+4GcOuimv9+3RAnWCjwX8lllW4uZrAjWwexndTiE5Ez26VIRhdMkRxP
	15pTY87jYZldzJxcFveFUiyZ9QzEDue3btQ/IYd6uRLtuC51OclsltfhwThjn1XDc
X-Gm-Gg: ASbGncvaRJznD9+ExBDZLZGL506yKtCvmOnt395ffx8/q80UoLp6hfs0o5aEs13MdXU
	G5tn8oLTkkcm33U2ce9YdOMmwluEdO6+6JiG+LjkIHqpFRne/A7RjfF9IlhmmGm0EADmm6JKy6Y
	+lclQITQsi886E+xieaYfcxrcyCi9wUz3RuqET7WZgvrV8GAWRtkA8N7bF6O0C3883/hYdDJxDG
	t1YYR87Sz57wnnN3vAS0o/LJYredK5BaMlB//6i97GzNcIEcjRhVHLItX1DleoYwy783r8dkRdu
	mS3tzJG7Xj7gkSxYQjyZzF8PY2obll5eZaaVSFLuisArNSGPUmzlHVMg8f/hvxFZRW84sgxZ8eo
	7A61Cjoo2GOUG4WsfY2XkLWGiUdqIjSNRltrHjK+hk28Hy/dMfevq2rDIyQ==
X-Received: by 2002:a05:622a:2c9:b0:4b6:38f8:4edf with SMTP id d75a77b69052e-4e41ca1b2d1mr8342991cf.29.1759257821811;
        Tue, 30 Sep 2025 11:43:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEVoTpyYZEYD5BDhL/ibzffyH63whEH/5BJy4dUuRPx4WpG/DtAm/AZa0wD/E68tizX2uBZjA==
X-Received: by 2002:a05:622a:2c9:b0:4b6:38f8:4edf with SMTP id d75a77b69052e-4e41ca1b2d1mr8342591cf.29.1759257821234;
        Tue, 30 Sep 2025 11:43:41 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5831665791esm5232132e87.82.2025.09.30.11.43.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 11:43:39 -0700 (PDT)
Date: Tue, 30 Sep 2025 21:43:37 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Neil Armstrong <neil.armstrong@linaro.org>
Cc: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Romain Gantois <romain.gantois@bootlin.com>, Li Jun <jun.li@nxp.com>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Luca Weiss <luca.weiss@fairphone.com>,
        Abel Vesa <abel.vesa@linaro.org>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, imx@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: usb: switch: split out ports definition
Message-ID: <vwlshz5li23xlthn5delxwxdsdci5nc22iey3xih4qf5uhbory@clskdsy64xpx>
References: <20250930-topic-sm8x50-fix-qmp-usb43dp-usb-switch-v1-1-060568de9538@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250930-topic-sm8x50-fix-qmp-usb43dp-usb-switch-v1-1-060568de9538@linaro.org>
X-Proofpoint-GUID: qaHqcVS_a8Pm1TbzauYjbgmym1cN10Fk
X-Proofpoint-ORIG-GUID: qaHqcVS_a8Pm1TbzauYjbgmym1cN10Fk
X-Authority-Analysis: v=2.4 cv=ZtPg6t7G c=1 sm=1 tr=0 ts=68dc24de cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=OOCT3r6X_P3o6Jl0E7UA:9
 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAxOCBTYWx0ZWRfX+Lz0DeB7cnWa
 BKhEaPkmLNl0QNj0h1ONockWBsVKFXJZuzFjeQSZ3oBCVWzPEW7GaQHgo8T9FSx+r17XxwmRtig
 Xmnysut475BfzMh5LpEAQLjBqQyDIXolekuOiSXDMD8Q2izcN7TD3x6VsQtC/sBDvUsTlwmBtPq
 CCmnuU41l3dU6S/srQPXsdOjJfivkJCuIxCmobthfFBG3lKvWQDPy/ryi50a6P/fz+7cu5xWDdv
 pMBv61czcFCJZAgKDQDXAAMTD/D8R9GCFOQYxdSvzzFBPObEr8SdzYkMoR1Y4HHi48TXpOnLqyI
 H6ZQ2If+/sImWO0Z4pS1GbuE286fY2tOrRDzbV6ygLBQFhDRzoqI3Lwk8Bk4Pl9QSuLBnftsyoE
 RBtxXxAth9+4m0scienQkLpAZjjtng==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-30_03,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 priorityscore=1501 malwarescore=0 bulkscore=0
 suspectscore=0 clxscore=1015 lowpriorityscore=0 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270018

On Tue, Sep 30, 2025 at 07:17:21PM +0200, Neil Armstrong wrote:
> The ports definition currently defined in the usb-switch.yaml
> fits standards devices which are either recipient of altmode
> muxing and orientation switching events or an element of the
> USB Super Speed data lanes.
> 
> This doesn't necessarely fit combo PHYs like the Qualcomm
> USB3/DP Combo which has a different ports representation.
> 
> Move the ports definition to a separate usb-switch-ports.yaml
> and reference it next to the usb-switch.yaml, except for
> the Qualcomm USB3/DP Combo PHY bindings.

Isn't it easier to make QMP PHY use $ref for port nodes instead of allOf
and keep ports definitions inside the usb-switch schema?

> 
> Reported-by: Rob Herring <robh@kernel.org>
> Closes: https://lore.kernel.org/all/175462129176.394940.16810637795278334342.robh@kernel.org/
> Fixes: 3bad7fe22796 ("dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp: Reference usb-switch.yaml to allow mode-switch")
> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> ---
>  .../bindings/phy/fsl,imx8mq-usb-phy.yaml           |  4 +-
>  .../bindings/phy/samsung,usb3-drd-phy.yaml         |  4 +-
>  .../devicetree/bindings/usb/fcs,fsa4480.yaml       |  1 +
>  .../devicetree/bindings/usb/gpio-sbu-mux.yaml      |  1 +
>  .../devicetree/bindings/usb/nxp,ptn36502.yaml      |  1 +
>  .../devicetree/bindings/usb/onnn,nb7vpq904m.yaml   |  1 +
>  .../devicetree/bindings/usb/parade,ps8830.yaml     |  1 +
>  .../bindings/usb/qcom,wcd939x-usbss.yaml           |  1 +
>  .../devicetree/bindings/usb/ti,tusb1046.yaml       |  1 +
>  .../devicetree/bindings/usb/usb-switch-ports.yaml  | 68 ++++++++++++++++++++++
>  .../devicetree/bindings/usb/usb-switch.yaml        | 52 -----------------
>  11 files changed, 81 insertions(+), 54 deletions(-)
> 

-- 
With best wishes
Dmitry

