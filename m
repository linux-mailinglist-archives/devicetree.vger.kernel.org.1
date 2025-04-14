Return-Path: <devicetree+bounces-166680-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id A2FC5A88011
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 14:11:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1A4993A626D
	for <lists+devicetree@lfdr.de>; Mon, 14 Apr 2025 12:10:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6073829DB8C;
	Mon, 14 Apr 2025 12:10:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XfABm3X/"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C5E3E29CB5C
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 12:10:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744632655; cv=none; b=eQ/R5TPOivEPURXUmVHkUZUVeuJBEnsvCyYL7kCvoFY4ccMYtjsqoLoyP8z6wThTzQl3x02oJl72Ua6Pjh/9FYcU21DSychAPqv/LY6azxbXKey+16SZ8xjY+h06Y1sjBl23VeHDLkPnNZl00vGmr88bEHSaLn4+DJ6BZP+Y/EY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744632655; c=relaxed/simple;
	bh=JnD0sBoEeImvl2cCbbi1g/hjH/w3NmgRT5yO+46oCmY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=SCJfhjYSMgN3UlspPP26Buy/T7VLjk78yl85HA/UIztarN+EUPzsF9SFsFr1duNYeeoN6U1RPjWhQotvNCQgGMDc89ew0q8VFr36Z6LX/S5ybOKEEBOw3T/nAT4DjqboyyrADBoyiVrc7r5Mi6+zafbtdCoVeIiMYqh04C9QSsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XfABm3X/; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53E99mCl028974
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 12:10:50 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LhjlFQUlhvXRFIj8QME4OrFHPldJQ0RGKK6NFqxgiZQ=; b=XfABm3X/OuLk2gGp
	emGosT+eisOOPKJArRrvo9004eSPJqRS/so9cJwBJmjZTUgxQKF/padbRLRKRTkE
	wKnFRqkO4XWXSYPril58yvaJSIJFSmNwNYi2SYm5k9XoutrhSZUMPUZdaBHEY8AN
	fvXmcB+4/EmOA/awWBaiq6ANpfCX4s/uKvaFRbrxqxhOcpaXtWRx9y+jxEyeiXbV
	PGWlTx/9HtnAQP29QXrwFy5l7fqp5i6hGWGn0WtpBHTdx5ThaNE+kc086nl2tdus
	dMAZzekRkHAZugJcZOt+KGzUWQXRcXChpVITgP3+ZuMWP+qAQ6MOQXB+tgNq5cZx
	/tT6rg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45yfs14gyj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 12:10:50 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c793d573b2so786181285a.1
        for <devicetree@vger.kernel.org>; Mon, 14 Apr 2025 05:10:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744632650; x=1745237450;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LhjlFQUlhvXRFIj8QME4OrFHPldJQ0RGKK6NFqxgiZQ=;
        b=WjfOPnjiVMGJYVME289gLOQrkbUlO/5oJMjE7kZ4EHWcDaG3cr1v3suTcygwweSbwV
         coPlQz3IYaW4nyCaqqi1euem7JTI+fxiHx/Yhgg6K0bnUOcAJgdqMM+q9fgxXOcHF86B
         l3wvDKpnuOdM+IswEhc4MwX/VncNgnRBUOacR0BOp5fGErPDgzwZIzeZCZPLjS5po0tY
         LhRWus3zK+oUtaJNYBXz2sR19o+l9Oe+/8G4rkT3R2DCCAgu1JoIquWN4SnKtHF/JqRi
         tAx3PeVYznX50/qYUyBvdW+Tg90ipRo7BtIRt+CaEKSxa/kaU2C7dQEGBVCn4ZeqyFnc
         8nWA==
X-Forwarded-Encrypted: i=1; AJvYcCUpL4dEw7FxPVpwle7/Tah9YUIudIaEEfsZ2kDxSjKdocwPuOkPtMKsbjMMEyWNsTb/DdzXeqPL+fJK@vger.kernel.org
X-Gm-Message-State: AOJu0Yxf32Nsbvseemzztx0kQKCmdGUw4KaxD3gcxmbkrAxQYLGLu3ZK
	P+cS/OY9EW832EIc3njWD3ha2VK/p6YhUpBXBw8MiMOWPu+vewpamw2N7jkx+BUAfHgRiMsVY5N
	bwHMk1ftLE0RKi4Z+V52Az4PChyS6TzgqHONB4/OeOddIbdRbBq2V2jSngqvY
X-Gm-Gg: ASbGncue2r6qTk4xWduHvmegN2MeAJonlYki/NFLh6F+M7OG/Gk6nlSqLLgXGfpCVcj
	AIpoyMBikcz1e/b4PzUEV3qJWegWpBJOLTCkALNklVG+oueBQTnH8siMooDGEhYM4Y1M02IvyHC
	xi7EwnOoPiXaqcKia1Vz/qnZ4cu8TZ+qHsIDMP9L3GeG9LNn6ExoP5vuYdvifH+asxR9FN0vEog
	LjCohcC+sK0q1zoNvIj1RU4UGXQYTWt2zwetlgdqtHO+uAHM8pTadMBznLMrH5oRjOqjERmTs/f
	WanT11FPJXHOmH6z7JzHhnqBR6OGR4glAeByrNH0mPyQhwGwc4Zs/zEhC/ex3L+GOZy14bxF+Xc
	=
X-Received: by 2002:a05:620a:4149:b0:7c5:3d60:7f8f with SMTP id af79cd13be357-7c7af0ce3a2mr1928959385a.18.1744632649439;
        Mon, 14 Apr 2025 05:10:49 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHaLBdIyfhBQhk/0g1K0EM7l5vA3Q1TfvTfhsPais5k0VcBc/Me5iZMtJE0nH6iSwNLTDi+Xg==
X-Received: by 2002:a05:620a:4149:b0:7c5:3d60:7f8f with SMTP id af79cd13be357-7c7af0ce3a2mr1928952885a.18.1744632648805;
        Mon, 14 Apr 2025 05:10:48 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54d3d236bd5sm1086286e87.60.2025.04.14.05.10.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 14 Apr 2025 05:10:47 -0700 (PDT)
Date: Mon, 14 Apr 2025 15:10:46 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Vikash Garodia <quic_vgarodia@quicinc.com>
Cc: neil.armstrong@linaro.org, Dikshita Agarwal <quic_dikshita@quicinc.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>, linux-kernel@vger.kernel.org,
        linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Subject: Re: [PATCH RFC v5 0/8] media: qcom: iris: re-organize catalog & add
 support for SM8650
Message-ID: <mz6kfak6rvbftlwhipl7p7l5qfy4v5upogd3egufetinbkjdbu@aswxrgrpfkt4>
References: <20250410-topic-sm8x50-upstream-iris-catalog-v5-0-44a431574c25@linaro.org>
 <2740b178-34cc-4b95-a8da-7e6862cabc92@linaro.org>
 <96953447-cff5-98d4-053e-8cc31778849c@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <96953447-cff5-98d4-053e-8cc31778849c@quicinc.com>
X-Authority-Analysis: v=2.4 cv=P9I6hjAu c=1 sm=1 tr=0 ts=67fcfb4a cx=c_pps a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10 a=XR8D0OoHHMoA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=9rtxevoWMaYGukRxRyIA:9 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10
 a=PEH46H7Ffwr30OY-TuGO:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: QXbqxgLVIu9MdDzs6ok6aDnkMiJ6QR1_
X-Proofpoint-ORIG-GUID: QXbqxgLVIu9MdDzs6ok6aDnkMiJ6QR1_
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-14_04,2025-04-10_01,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 lowpriorityscore=0
 clxscore=1015 bulkscore=0 impostorscore=0 phishscore=0 suspectscore=0
 mlxscore=0 spamscore=0 malwarescore=0 adultscore=0 priorityscore=1501
 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2502280000
 definitions=main-2504140089

On Mon, Apr 14, 2025 at 04:24:40PM +0530, Vikash Garodia wrote:
> Hi Neil,
> 
> On 4/14/2025 1:05 PM, Neil Armstrong wrote:
> > Hi Vikash, Dikshita,
> > 
> > On 10/04/2025 18:29, Neil Armstrong wrote:
> >> Re-organize the platform support core into a gen1 catalog C file
> >> declaring common platform structure and include platform headers
> >> containing platform specific entries and iris_platform_data
> >> structure.
> >>
> >> The goal is to share most of the structure while having
> >> clear and separate per-SoC catalog files.
> >>
> >> The organization is based on the curent drm/msm dpu1 catalog
> >> entries.
> > 
> > Any feedback on this patchset ?
> Myself and Dikshita went through the approach you are bringing here, let me
> update some context here:
> - sm8550, sm8650, sm8775p, qcs8300 are all irisv3, while qcs8300 is the scaled
> down variant i.e have 2 PIPE vs others having 4. Similarly there are other
> irisv3 having 1 pipe as well.
> - With above variations, firmware and instance caps would change for the variant
> SOCs.
> - Above these, few(less) bindings/connections specific delta would be there,
> like there is reset delta in sm8550 and sm8650.
> 
> Given above, xxx_gen1.c and xxx_gen2.c can have all binding specific tables and
> SOC platform data, i.e sm8650_data (for sm8650). On top of this, individual SOC
> specific .c file can have any delta, from xxx_gen1/2.c) like reset table or
> preset register table, etc and export these delta structs in xxx_gen1.c or
> xxx_gen2.c.
> 
> Going with above approach, sm8650.c would have only one reset table for now.
> Later if any delta is identified, the same can be added in it. All other common
> structs, can reside in xxx_gen2.c for now.

SGTM.

> 
> Regards,
> Vikash
> > 
> > Thanks,
> > Neil
> > 
> >>
> >> Add support for the IRIS accelerator for the SM8650
> >> platform, which uses the iris33 hardware.
> >>
> >> The vpu33 requires a different reset & poweroff sequence
> >> in order to properly get out of runtime suspend.
> >>
> >> Follow-up of [1]:
> >> https://lore.kernel.org/all/20250409-topic-sm8x50-iris-v10-v4-0-40e411594285@linaro.org/
> >>
> >> Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>
> >> ---
> >> Changes in v4:
> >> - Reorganized into catalog, rebased sm8650 support on top
> >> - Link to v4:
> >> https://lore.kernel.org/all/20250409-topic-sm8x50-iris-v10-v4-0-40e411594285@linaro.org
> >>
> >> Changes in v4:
> >> - collected tags
> >> - un-split power_off in vpu3x
> >> - removed useless function defines
> >> - added back vpu3x disappeared rename commit
> >> - Link to v3:
> >> https://lore.kernel.org/r/20250407-topic-sm8x50-iris-v10-v3-0-63569f6d04aa@linaro.org
> >>
> >> Changes in v3:
> >> - Collected review tags
> >> - Removed bulky reset_controller ops
> >> - Removed iris_vpu_power_off_controller split
> >> - Link to v2:
> >> https://lore.kernel.org/r/20250305-topic-sm8x50-iris-v10-v2-0-bd65a3fc099e@linaro.org
> >>
> >> Changes in v2:
> >> - Collected bindings review
> >> - Reworked rest handling by adding a secondary optional table to be used by
> >> controller poweroff
> >> - Reworked power_off_controller to be reused and extended by vpu33 support
> >> - Removed useless and unneeded vpu33 init
> >> - Moved vpu33 into vpu3x files to reuse code from vpu3
> >> - Moved sm8650 data table into sm8550
> >> - Link to v1:
> >> https://lore.kernel.org/r/20250225-topic-sm8x50-iris-v10-v1-0-128ef05d9665@linaro.org
> >>
> >> ---
> >> Neil Armstrong (8):
> >>        media: qcom: iris: move sm8250 to gen1 catalog
> >>        media: qcom: iris: move sm8550 to gen2 catalog
> >>        dt-bindings: media: qcom,sm8550-iris: document SM8650 IRIS accelerator
> >>        media: platform: qcom/iris: add power_off_controller to vpu_ops
> >>        media: platform: qcom/iris: introduce optional controller_rst_tbl
> >>        media: platform: qcom/iris: rename iris_vpu3 to iris_vpu3x
> >>        media: platform: qcom/iris: add support for vpu33
> >>        media: platform: qcom/iris: add sm8650 support
> >>
> >>   .../bindings/media/qcom,sm8550-iris.yaml           |  33 ++-
> >>   drivers/media/platform/qcom/iris/Makefile          |   6 +-
> >>   .../media/platform/qcom/iris/iris_catalog_gen1.c   |  83 +++++++
> >>   ...{iris_platform_sm8550.c => iris_catalog_gen2.c} |  85 +------
> >>   ...ris_platform_sm8250.c => iris_catalog_sm8250.h} |  80 +-----
> >>   .../media/platform/qcom/iris/iris_catalog_sm8550.h |  91 +++++++
> >>   .../media/platform/qcom/iris/iris_catalog_sm8650.h |  68 +++++
> >>   drivers/media/platform/qcom/iris/iris_core.h       |   1 +
> >>   .../platform/qcom/iris/iris_platform_common.h      |   3 +
> >>   drivers/media/platform/qcom/iris/iris_probe.c      |  43 +++-
> >>   drivers/media/platform/qcom/iris/iris_vpu2.c       |   1 +
> >>   drivers/media/platform/qcom/iris/iris_vpu3.c       | 122 ---------
> >>   drivers/media/platform/qcom/iris/iris_vpu3x.c      | 275 +++++++++++++++++++++
> >>   drivers/media/platform/qcom/iris/iris_vpu_common.c |   4 +-
> >>   drivers/media/platform/qcom/iris/iris_vpu_common.h |   3 +
> >>   15 files changed, 598 insertions(+), 300 deletions(-)
> >> ---
> >> base-commit: 2bdde620f7f2bff2ff1cb7dc166859eaa0c78a7c
> >> change-id: 20250410-topic-sm8x50-upstream-iris-catalog-3e2e4a033d6f
> >>
> >> Best regards,
> > 

-- 
With best wishes
Dmitry

