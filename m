Return-Path: <devicetree+bounces-216002-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 59101B5365A
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 16:52:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 6EBB6B621AA
	for <lists+devicetree@lfdr.de>; Thu, 11 Sep 2025 14:50:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 69A2B343D94;
	Thu, 11 Sep 2025 14:52:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="X1srIZVf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C475B33EAED
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 14:52:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757602330; cv=none; b=VAYqRbDkRRz7ugNTS5WcULt9pXiwfyUn3gCEvCYLB7ibGetQ8aSjB2NrCyPIvq7xOg/SsgfdT2+dQFzwCYXvBPF1MhskIpucOf/TSpHEPkmgKAq5T5wyuvJOntyVuPI/5OQAE+YBejd2qUkYNsRRsI0mlMEUBcbzEO6MGMa5zIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757602330; c=relaxed/simple;
	bh=XUnWDnhmJUT6GLGLfZ8dfUraPryJil2OqonDHT4V8FQ=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=vAWwLZg4Pne0AISJ9BCA29+eSOQKDxp6UUNIrA6sq8efQ24Q48UskvzipCDy/QkHpmWCeXuCApbixmTmxRgfYsZcevl655Q8yGPvNmD4KHeTF3xP6yyref3s2mgrMKP8sCfRvHNcc/hVBhl/vOwB2T7JZbJo/AU2YgSzmK/5r8Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=X1srIZVf; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58BAqXWH005396
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 14:52:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	WojJDvsX9kdVKAnNSnxIU1th8+eZ8pVWigC6PBhk65c=; b=X1srIZVfXz6frseC
	6UVh+E42QctEW94Jng3VYLFtPsGhJRQxZ1/kA5u7hea2LzIlpzCxsdkFGSKCkIiJ
	y0NnJuSwT8mize+yh3H1ofS7h6d6GEzgCEaJLsGUcMLuL1XsoL8jqL6y95WEjrlt
	2/v//VyQKQzTha71IUGgaqZOO/YJjsXBA2lNdT+/OAAmDK60OkqYjWz3yVapU/x9
	Ov9Xmp4RH+xrjoLwYITHfp34X2rRBQMZxL+dSDT22TI434vHkksmBkOrm/eNwLD6
	AI1ToTY1zy63cW5AI+dH5KAILpeOj7B0HJ6NK5kx+hTcwREQmiy+p1f7Lo8QJC6x
	NeRLwg==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 491vc2c7bg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 14:52:07 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-25bcad10907so1970175ad.1
        for <devicetree@vger.kernel.org>; Thu, 11 Sep 2025 07:52:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757602326; x=1758207126;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to:subject
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=WojJDvsX9kdVKAnNSnxIU1th8+eZ8pVWigC6PBhk65c=;
        b=NkWFnccyx9hBh7yivYWtQjJRZFDyiA/5xahqQ2vXrQiAkYvmZrS20xYguHQVHhszCc
         uWhLKaXtI/Qnhm8V6nAB5BEjJ1omqaG65/CqDrr9LjKoW59aT3AGmHVdViucnYfRZA1h
         0RpTC3vBrpYMvB4tP4OsSqv/8e43m7ck2/ZDz663s981XQMQDSGiTjrWkYDyt4+JXXmi
         woDia/rfzHoueNtWuc0OvMLBJ3NLp3w0StdMvP3uu1cROEFGDe/Pj1E2g4Q6H2KYTvGF
         9FHSkuAcj7WS8UmNjROXG3hEPI+eKQB8e7kp92wnv9UW9fGJmMeGVX45jMu0tuahd2UZ
         IMjg==
X-Forwarded-Encrypted: i=1; AJvYcCW0vPcGv5+7aoMM6Kb+tD0myTqhtFHfwLK8J4syzmer+ewP1u0pSTjLY/XFdhzWVsDEtUT3A0brxqIE@vger.kernel.org
X-Gm-Message-State: AOJu0YzIa4BfGqp154dB/7qaM8UxUf1NhoY7aUnjMlSCYNAgMRbngXap
	iCpGXqQAgIIQHVRQBEYbBnUbkgsAOsD8xnh3QSDWTB+Si8pexCbo2opvNinHvzYWABlRfBC93TN
	9P79dhdIk32QDVBUSMFcXJSset3JatrHsfZJ2++JcGmAVO9R42BX1jDDEM7Iw4aSF
X-Gm-Gg: ASbGncuKZS4KK2UtXqsmvE+4Hi5Ju8+N6qt4c9o56uwS3LuK1MvzW9V/F+3LO9qnD6b
	k/qPRt2zk/jN7fKZoXW6TYTHln8NNuuuVW+PTTFnoUFtb4P2ayWuogJ9zcHnZztq7J9hLAm3RKP
	L7HSQ1cHYcQOMO87Le2nb5ST/DUH4UA8YdvV8xDXYRF2peSIi60a7KDTep71X0frup9EkZ3U6Ri
	E0K2Zyx1TasnyhaK5eZrO4Ud5hH3xg2yY9JhERUvVvm/pN0/t1OwNohpLhg32kyDDfxhYY3Bvvd
	Wg5vZ+odAOMQpi4zyAxqrlDgy6JAG37k5RBL4wTAZRdp4INnp6uj0lBiWNVocIVhLqu0nrpOXO0
	lwlSb9haO5/Bo9gqYxCRUW/iXvtPF+Q==
X-Received: by 2002:a17:902:ce83:b0:24c:b36d:637 with SMTP id d9443c01a7336-2516ed66eb6mr141725455ad.1.1757602325777;
        Thu, 11 Sep 2025 07:52:05 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGT+PRAiEdvkLjcRfWqdV9jt0LLP+pDcy5hdt4QkW8ZMuAA0nniD4jnVIYnBcIAtmyR2ZAHuQ==
X-Received: by 2002:a17:902:ce83:b0:24c:b36d:637 with SMTP id d9443c01a7336-2516ed66eb6mr141725245ad.1.1757602325286;
        Thu, 11 Sep 2025 07:52:05 -0700 (PDT)
Received: from [10.133.33.174] (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-25c3ae28408sm21345695ad.109.2025.09.11.07.51.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 11 Sep 2025 07:52:05 -0700 (PDT)
Message-ID: <33137dc3-254e-4a7e-9531-8d682692fe29@oss.qualcomm.com>
Date: Thu, 11 Sep 2025 22:51:56 +0800
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v4 00/13] (no cover subject)
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I
 <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov
 <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        fange.zhang@oss.qualcomm.com, yongxing.mou@oss.qualcomm.com,
        li.liu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
References: <20250911-add-displayport-support-for-qcs615-platform-v4-0-177348170c2d@oss.qualcomm.com>
From: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
In-Reply-To: <20250911-add-displayport-support-for-qcs615-platform-v4-0-177348170c2d@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=FN4bx/os c=1 sm=1 tr=0 ts=68c2e217 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8
 a=COk6AnOGAAAA:8 a=BiXlWXQ3g7YhofqwlSUA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: cdsHMnA73G9MxdjzSxkwNi6zOGC-luU6
X-Proofpoint-GUID: cdsHMnA73G9MxdjzSxkwNi6zOGC-luU6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA4MDA5NCBTYWx0ZWRfX+Rrg19sB9ci+
 d4im2cyu6VEHPQd5Kou/ExPqYXzEXNzzHQTNGOpfwm2jhKIZ6jcYMgPbF/CZ7JBiyJmnHxKtol0
 yHdu9ElsmXwxU/XZEs4n7XBLWygYfCel36cc7TCncL/ppQQV6txeEcfD1/fVR1bTBWzpeEGmm+x
 PgZXRYoCG8u9YqJBdRAEKcT6VZTj885m44jA4FZgf9eTh84l7eD8MGuuWu01k+iREAPLNRD15U0
 rsGnyeb0U0Av3WJUn/NHd3uQsp/KymiWuVQ8BeXI/zPvLaJ1tq58d6f9kJ3TCAlH7eEGvcrZH6A
 AiqDT9NoKtnI45vux4KOxjEnLaKNIKdbQc0XVaqfzttQwJr9KVtuCqPBOFAVX3jBdvhaRhxrQyx
 lgtGGLI1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-11_01,2025-09-11_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 clxscore=1015 phishscore=0 adultscore=0
 bulkscore=0 impostorscore=0 malwarescore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509080094

Sorry for miss subject and will resend later.


On 9/11/2025 10:46 PM, Xiangxu Yin wrote:
> This series aims to extend the USB-C PHY to support DP mode and enable
> DisplayPort on the Qualcomm QCS615 platform.
>
> The devicetree modification for DisplayPort on QCS615 will be provided
> in a future patch.
>
> Signed-off-by: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
> ---
> Changes in v4:
>
> - Drop patch v3[01/14 & 13/14], will sutbmit new patchsets based mst dt binding series.
> - Update maintainer of qcom,qcs615-qmp-usb3dp-phy.yaml to myself.
> - Add missing aux and pipe clocks. [Dmitry]
> - Drop second TCSR phandle; register offsets are described directly. [Dmitry]
> - Add USBC PHY series related init_load_uA configs. [Dmitry]
> - Drop v3[04/14] qmp_phy_usbc_type define and use dp_serdes offsets to confirm DP capability [Dmitry]
> - Reorganize sub-patches as suggested.
> - Link to v3: https://lore.kernel.org/all/20250820-add-displayport-support-for-qcs615-platform-v3-0-a43bd25ec39c@oss.qualcomm.com/
>
> Changes in v3:
>
> - Renamed qcom,qcs615-qmp-dp-phy.yaml in v2 to qcom,qcs615-qmp-dp-phy.yaml in v3 for QCS615 USB3+DP PHY.
> - Updated patch v3[02/14] to revise binding title, description, and property order. [Krzysztof]
> - Updated commit messages in patch v3[01/14] and [13/14] to reflect the DTSI rename and clarify compatibility. [Krzysztof]
> - Added USB3+DP mode implementation in patches v3 [003–012], organized in logical chunks. [Dmitry]
> - Dropped patch v2[03/13] to maintain full backward compatibility with USBC.
> - Link to v2: https://lore.kernel.org/all/20250722-add-displayport-support-for-qcs615-platform-v2-0-42b4037171f8@oss.qualcomm.com/
>
> Changes in v2:
>
> - Add new binding qcom,qcs615-qmp-dp-phy.yaml for QCS615 standalone DP
> - Split DP PHY driver into patches 4-11 by logical chunks [Dmitry]
> - Update DP PHY configuration flow to align with QMP Combo PHY implementation [Dmitry]
> - Update all hex values to lowercase [Dmitry]
> - Remove redundant comments in DP PHY driver [Krzysztof]
> - Remove invalid USBC type define [Dmitry]
> - Move lane_map， max_dp_lanes， max_dp_link_rate parsing logic to dp_link [Dmitry]
> - Add TCSR-based mutex logic for DP and USB PHY coexistence [Dmitry]
> - Drop patches 6–8 and remove related binding properties as rejected upstream
> - Link to v1: https://lore.kernel.org/all/20241129-add-displayport-support-for-qcs615-platform-v1-0-09a4338d93ef@quicinc.com/
>
> ---
> Xiangxu Yin (13):
>       dt-bindings: phy: Add QMP USB3+DP PHY for QCS615
>       phy: qcom: qmp-usbc: Rename USB-specific ops to prepare for DP support
>       phy: qcom: qmp-usbc: Add DP-related fields for USB/DP switchable PHY
>       phy: qcom: qmp-usbc: Add QCS615 DP PHY configuration and init data
>       phy: qcom: qmp-usbc: Add regulator init_load support
>       phy: qcom: qmp-usbc: Move reset config into PHY cfg
>       phy: qcom: qmp-usbc: Add DP PHY configuration support for QCS615
>       phy: qcom: qmp-usbc: Add USB/DP switchable PHY clk register
>       phy: qcom: qmp-usbc: Add TCSR parsing and PHY mode setting
>       phy: qcom: qmp-usbc: Add DP PHY ops for USB/DP switchable Type-C PHYs
>       phy: qcom: qmp-usbc: Add USB/DP mutex handling
>       drm/msm/dp: move link-specific parsing from dp_panel to dp_link
>       drm/msm/dp: Add support for lane mapping configuration
>
>  .../bindings/phy/qcom,qcs615-qmp-usb3dp-phy.yaml   |  111 ++
>  drivers/gpu/drm/msm/dp/dp_ctrl.c                   |   10 +-
>  drivers/gpu/drm/msm/dp/dp_link.c                   |   71 ++
>  drivers/gpu/drm/msm/dp/dp_link.h                   |    5 +
>  drivers/gpu/drm/msm/dp/dp_panel.c                  |   78 +-
>  drivers/gpu/drm/msm/dp/dp_panel.h                  |    3 -
>  drivers/phy/qualcomm/phy-qcom-qmp-dp-phy-v2.h      |   21 +
>  drivers/phy/qualcomm/phy-qcom-qmp-usbc.c           | 1089 +++++++++++++++++---
>  8 files changed, 1192 insertions(+), 196 deletions(-)
> ---
> base-commit: 8f21d9da46702c4d6951ba60ca8a05f42870fe8f
> change-id: 20250911-add-displayport-support-for-qcs615-platform-2f072e2ba239
>
> Best regards,

