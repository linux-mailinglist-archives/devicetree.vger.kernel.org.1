Return-Path: <devicetree+bounces-260205-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8BSzHyS5eWl8ygEAu9opvQ
	(envelope-from <devicetree+bounces-260205-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 08:22:12 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C0659DB79
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 08:22:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id C101F3001F92
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 07:21:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7613D3161A8;
	Wed, 28 Jan 2026 07:21:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lpoajJSm";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="E+oVC5XN"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B11D2C326D
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 07:21:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769584902; cv=none; b=IpYrONjIzg+6Q1TI0fyGX4hYLCf6Nrv74vLsJr/w083wlICwKz6FoMhs/jwYafDzicxFMhNsxa4jONV81bqKL14j9Tj4lSAC/K00hhnA/UTIDI1QF/RS29LGlL7L/V70gSnOKdu9o5drGMOq6pB1Fi1Qa2BsDdOJYp93MtGXEg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769584902; c=relaxed/simple;
	bh=2QkJ0O/j3QhCkpBeOwUdXsahGbhnoWQBSYxm9U5xmCA=;
	h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
	 In-Reply-To:Content-Type; b=MeoTClkeF6DeE9NbsYvaJpPnnRnIKGGZ92Jfz6xDMIVh7hXMrgJrAuXU3zPcZaRKiOzSf7X/KDQNTmVwJ1JtP/a3FuL4Z8EGaEKEDI0vomRWawcSYmdh1Iv+mnR5PbkeQsGERzNm5jC3T5h/rcxHOT3OzgHeS6yvePldWXJX8AA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lpoajJSm; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=E+oVC5XN; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60S6jx132943113
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 07:21:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gP9XExijN/w7adWro8gAP8Dbsmo9LkOzd/iaz/cVEW4=; b=lpoajJSm6YISZj9A
	+3j1YDE/hn4IkHAcooYrebGKfRAHbc+Oh+i9CpDa5u9jcSNkDsWCfVyFqav7ZMVw
	qRV1u90jFjvKtlEcrJIXuh3yPGPVAofTjFUH3hHU8c6IRIgkMQ7/n42xRpiF7lfJ
	rp7Ca7uA5wb0/qU2FNagtMuMZfXzX/9knhgrLRpJ1gDMCeVf/RcgJmro8EYIgCzs
	lRoPV7RRCxzkjPzfu+D1fW90Graj+bPwnFGDpwZ+ROTovYx46xif5OrE5uYaPg6P
	7UUS5oJuwtHcEldBXTGdzDmfT2u/xr/UhSoHzBkyXYkjh5m7E7cySWmq8OCc3/6q
	sbi77w==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bydfk03en-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 07:21:38 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2a351686c17so58477195ad.0
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 23:21:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769584898; x=1770189698; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=gP9XExijN/w7adWro8gAP8Dbsmo9LkOzd/iaz/cVEW4=;
        b=E+oVC5XNzV6yqS7pjYsedLOBc72c4CdE8DRKWDay34Hzryl3be49OfAsbEFmXphZHp
         /5Hk66Vr5IdkN9fF1ubheJdPY6yg1hlj+9xXqZCdEarlu5LA3gzY5pP0jX7dnFCtpti3
         DkbBfRqeKIDLZQVzfjVaGfFihem3Rer5D4REFp+F9vK46Ov8ivkAqHleCWiEcKBHNHv5
         ILpdm++Q5ZGQer0Nxe1Sz2xS7/FaXjlQnrZRbu9Nv4asXaYJXLd4vGU/B7O0yS32qz9W
         BXEBJ/hvZQothEk8iZVKSa9xVPwqEQNsb08iZ4SLKR9rCsLTvCdDnroio6bFEgz4W7Lm
         8Jdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769584898; x=1770189698;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-gg:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gP9XExijN/w7adWro8gAP8Dbsmo9LkOzd/iaz/cVEW4=;
        b=Q3lksU5bUzjpzZvlL2LwGa/S8gv24Op+FC6SYPqbm8sZKQlYCVdFs2GWMKjFhQrM5W
         a2MLJJkzVMaYOn/+08M9EBjC/8vpXs5SHuU66RiulAmD5tYpM7IkmHtyR73t6IcgTGxj
         EkcqBwouDFEwUIROezDm5AFaZzqwT/Jo2YGoREgzhP1AGqLj3/0Mea0kUVLbicPhc5di
         c/FCQ0DkuBHOsFp7mj9wpMVCUru9drVhvMaF0AfTrd+1BCBr1rzAmSDnjjQZ5kbfvKmU
         RC6WcdF3X+w6pIvQW1vpsHVxe4S0whz3kLAAstl31vxTfGdB9YDXtDbt7dzW7NfuXP2r
         kPdA==
X-Forwarded-Encrypted: i=1; AJvYcCUqp5wlsfzV2XR+byTUeO6qvnVp5tPZax4W0wwOSucBPEsIfgi/05I40/Ej1fgdfCWOjqyS6JQrZUoc@vger.kernel.org
X-Gm-Message-State: AOJu0YzTx477pqYIoP2wASE8P/pT6FmoLv5RirA6deMMJ7QJImVjk7M0
	8LWDKyrhN7hzBbR+dX5aSe2EqtbrAmafuYo10MUyi+0iw8Tx6bw8Q+SHttnhs+lqXVt65XPvMjy
	nqy3X5snrjYNq5NzqRcs/NUestYqzVPZpcHp1AcVwlF+wvGjbZ8m1fgAjl8tp82vc
X-Gm-Gg: AZuq6aLDu5NrQiunx7fBOnR9nHCXd8nxhNKgR+8ISovC94cMgKorz7iiBCzqZDztDOM
	MSVEmkb8cRi1gPCxJjJhurssgWE4/i5Wvn4IsdZhxkq+xaJhJ9hfXnG/7hHXWZ00W+bJ65Ssjkb
	vG98ap9YF7hwU/tbYWnc1L+N0PgRf/bkMhddGxeAR+iANKlmPT4Xg7hHK3MJjJ/zdeN63FNPd1o
	iO0PRUk+LaWBNzQMtaoMVy9NnQiSLvU6GW0xt6lIykYy0VYtMBZn06B2kXwQtNasIXXdGPWccwz
	vYpElWBzpb4eR/TyEi9zXk3KbNoNAS5RwELlNXg+kTK5FWktpu5iB7mtZMjuhx5qLlxtO8195pU
	DefzLwDhKn7ogIPpaYPkHIM3WqGXWAmY7KpNaUw==
X-Received: by 2002:a17:902:d4cf:b0:2a8:7827:bb32 with SMTP id d9443c01a7336-2a87827bd1amr37619865ad.15.1769584897487;
        Tue, 27 Jan 2026 23:21:37 -0800 (PST)
X-Received: by 2002:a17:902:d4cf:b0:2a8:7827:bb32 with SMTP id d9443c01a7336-2a87827bd1amr37619705ad.15.1769584896920;
        Tue, 27 Jan 2026 23:21:36 -0800 (PST)
Received: from [10.217.217.147] ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b5dd160sm13244295ad.81.2026.01.27.23.21.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jan 2026 23:21:36 -0800 (PST)
Message-ID: <795eed3f-7796-47e1-b4de-23424ab7062b@oss.qualcomm.com>
Date: Wed, 28 Jan 2026 12:51:30 +0530
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH 3/8] clk: qcom: videocc-x1p42100: Add support for video
 clock controller
To: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd
 <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley
 <conor+dt@kernel.org>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20260128-purwa-videocc-camcc-v1-0-b23de57df5ba@oss.qualcomm.com>
 <20260128-purwa-videocc-camcc-v1-3-b23de57df5ba@oss.qualcomm.com>
Content-Language: en-US
From: Taniya Das <taniya.das@oss.qualcomm.com>
In-Reply-To: <20260128-purwa-videocc-camcc-v1-3-b23de57df5ba@oss.qualcomm.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI4MDA1NyBTYWx0ZWRfX0JQCDabSP96y
 H/k72UesYYlwAANhdEraIHNwBD2AQlElps/OW+Zi/uyebX7dZ7IlC3C14y2lz7XsAthWckMj3uJ
 1U4Xq7sH0lNZTR5XhjSJn0KJrCDcTIU2C4UN+4a/lQ7NRMMAPEfaXHI+ZUPaSXXZU13F87t/jEb
 IA07dXpo9o6Z7hvQyAvX/GYOMeS+3lmArs2Rlp0mP9+x1A6usmSlja8PFJv0yk/HSStNzLP6/Jd
 Koh9/TSnu/VWduB/9QPWWup0nnu+RsfG+5n0mswWd+uERviJcUdeya4EyK3swxkEM7CBkiJWQ/y
 7LQXf5JbNcW2e51DOdubGbu2DUmOv6+uXmNoOqri77F8LwAY/uyqClcyisu9tEZDw6X4lfTTakN
 /Eqc1WY+dC0tjte6FLMAswYonoZm41vNaVZwu1/r524vzVUNpnja+fbvk/x5noj7RANaOh15clh
 qYuH4iVsJvSEfVN529g==
X-Authority-Analysis: v=2.4 cv=XfWEDY55 c=1 sm=1 tr=0 ts=6979b903 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=HuBNfymTJni3uwX-M4YA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: qSuGFwd4dTa5VC4Flq1KYFEUTVYzzwI-
X-Proofpoint-ORIG-GUID: qSuGFwd4dTa5VC4Flq1KYFEUTVYzzwI-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-28_01,2026-01-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 impostorscore=0 phishscore=0 priorityscore=1501
 suspectscore=0 adultscore=0 bulkscore=0 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601280057
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[16];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260205-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,qualcomm.com:email,qualcomm.com:dkim];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[taniya.das@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 7C0659DB79
X-Rspamd-Action: no action



On 1/28/2026 12:56 AM, Jagadeesh Kona wrote:
> Add support for the video clock controller for video clients to be
> able to request for videocc clocks on X1P42100 platform.
> 
> Signed-off-by: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
> ---
>  drivers/clk/qcom/Kconfig            |  10 +
>  drivers/clk/qcom/Makefile           |   1 +
>  drivers/clk/qcom/videocc-x1p42100.c | 585 ++++++++++++++++++++++++++++++++++++
>  3 files changed, 596 insertions(+)
> 
> diff --git a/drivers/clk/qcom/Kconfig b/drivers/clk/qcom/Kconfig
> index a8a86ea6bb7445e396048a5bba23fce8d719281f..b1b1ed70871c1b348985d6f5149152e57637d904 100644
> --- a/drivers/clk/qcom/Kconfig
> +++ b/drivers/clk/qcom/Kconfig
> @@ -155,6 +155,16 @@ config CLK_X1P42100_GPUCC
>  	  Say Y if you want to support graphics controller devices and
>  	  functionality such as 3D graphics.
>  
> +config CLK_X1P42100_VIDEOCC
> +	tristate "X1P42100 Video Clock Controller"
> +	depends on ARM64 || COMPILE_TEST
> +	select CLK_X1E80100_GCC
> +	help
> +	  Support for the video clock controller on Qualcomm Technologies, Inc.
> +	  X1P42100 devices.
> +	  Say Y if you want to support video devices and functionality such as
> +	  video encode/decode.
> +
>  config CLK_QCM2290_GPUCC
>  	tristate "QCM2290 Graphics Clock Controller"
>  	depends on ARM64 || COMPILE_TEST
> diff --git a/drivers/clk/qcom/Makefile b/drivers/clk/qcom/Makefile
> index 6b0ad8832b55f1914079f15323b8cdd1608ad4c0..b746e5046774259cebe3da8dad1f226561268a8b 100644
> --- a/drivers/clk/qcom/Makefile
> +++ b/drivers/clk/qcom/Makefile
> @@ -36,6 +36,7 @@ obj-$(CONFIG_CLK_X1E80100_GCC) += gcc-x1e80100.o
>  obj-$(CONFIG_CLK_X1E80100_GPUCC) += gpucc-x1e80100.o
>  obj-$(CONFIG_CLK_X1E80100_TCSRCC) += tcsrcc-x1e80100.o
>  obj-$(CONFIG_CLK_X1P42100_GPUCC) += gpucc-x1p42100.o
> +obj-$(CONFIG_CLK_X1P42100_VIDEOCC) += videocc-x1p42100.o
>  obj-$(CONFIG_CLK_QCM2290_GPUCC) += gpucc-qcm2290.o
>  obj-$(CONFIG_IPQ_APSS_PLL) += apss-ipq-pll.o
>  obj-$(CONFIG_IPQ_APSS_5424) += apss-ipq5424.o
> diff --git a/drivers/clk/qcom/videocc-x1p42100.c b/drivers/clk/qcom/videocc-x1p42100.c
> new file mode 100644
> index 0000000000000000000000000000000000000000..2bb40ac6fcc57e817ce8f0b6727a571c7c072ffa
> --- /dev/null
> +++ b/drivers/clk/qcom/videocc-x1p42100.c
> @@ -0,0 +1,585 @@
> +// SPDX-License-Identifier: GPL-2.0-only
> +/*
> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> + */
> +
> +#include <linux/clk-provider.h>
> +#include <linux/mod_devicetable.h>
> +#include <linux/module.h>
> +#include <linux/platform_device.h>
> +#include <linux/regmap.h>
> +
> +#include <dt-bindings/clock/qcom,x1p42100-videocc.h>
> +
> +#include "clk-alpha-pll.h"
> +#include "clk-branch.h"
> +#include "clk-rcg.h"
> +#include "clk-regmap.h"
> +#include "clk-regmap-divider.h"
> +#include "common.h"
> +#include "gdsc.h"
> +#include "reset.h"
> +
> +enum {
> +	DT_BI_TCXO,
> +};
> +
> +enum {
> +	P_BI_TCXO,
> +	P_VIDEO_CC_PLL0_OUT_MAIN,
> +	P_VIDEO_CC_PLL1_OUT_MAIN,
> +};
> +
> +static const struct pll_vco lucid_ole_vco[] = {
> +	{ 249600000, 2300000000, 0 },
> +};
> +
> +/* 420.0 MHz Configuration */
> +static const struct alpha_pll_config video_cc_pll0_config = {
> +	.l = 0x15,
> +	.alpha = 0xe000,
> +	.config_ctl_val = 0x20485699,
> +	.config_ctl_hi_val = 0x00182261,
> +	.config_ctl_hi1_val = 0x82aa299c,
> +	.test_ctl_val = 0x00000000,
> +	.test_ctl_hi_val = 0x00000003,
> +	.test_ctl_hi1_val = 0x00009000,
> +	.test_ctl_hi2_val = 0x00000034,
> +	.user_ctl_val = 0x00000000,
> +	.user_ctl_hi_val = 0x00000005,
> +};
> +
> +static struct clk_alpha_pll video_cc_pll0 = {
> +	.offset = 0x0,
> +	.config = &video_cc_pll0_config,
> +	.vco_table = lucid_ole_vco,
> +	.num_vco = ARRAY_SIZE(lucid_ole_vco),
> +	.regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_LUCID_OLE],
> +	.clkr = {
> +		.hw.init = &(const struct clk_init_data) {
> +			.name = "video_cc_pll0",
> +			.parent_data = &(const struct clk_parent_data) {
> +				.index = DT_BI_TCXO,
> +			},
> +			.num_parents = 1,
> +			.ops = &clk_alpha_pll_lucid_evo_ops,
> +		},
> +	},
> +};
> +
> +/* 1050.0 MHz Configuration */
> +static const struct alpha_pll_config video_cc_pll1_config = {
> +	.l = 0x36,
> +	.alpha = 0xb000,
> +	.config_ctl_val = 0x20485699,
> +	.config_ctl_hi_val = 0x00182261,
> +	.config_ctl_hi1_val = 0x82aa299c,
> +	.test_ctl_val = 0x00000000,
> +	.test_ctl_hi_val = 0x00000003,
> +	.test_ctl_hi1_val = 0x00009000,
> +	.test_ctl_hi2_val = 0x00000034,
> +	.user_ctl_val = 0x00000000,
> +	.user_ctl_hi_val = 0x00000005,
> +};
> +
> +static struct clk_alpha_pll video_cc_pll1 = {
> +	.offset = 0x1000,
> +	.config = &video_cc_pll1_config,
> +	.vco_table = lucid_ole_vco,
> +	.num_vco = ARRAY_SIZE(lucid_ole_vco),
> +	.regs = clk_alpha_pll_regs[CLK_ALPHA_PLL_TYPE_LUCID_OLE],
> +	.clkr = {
> +		.hw.init = &(const struct clk_init_data) {
> +			.name = "video_cc_pll1",
> +			.parent_data = &(const struct clk_parent_data) {
> +				.index = DT_BI_TCXO,
> +			},
> +			.num_parents = 1,
> +			.ops = &clk_alpha_pll_lucid_evo_ops,
> +		},
> +	},
> +};
> +
> +static const struct parent_map video_cc_parent_map_0[] = {
> +	{ P_BI_TCXO, 0 },
> +};
> +
> +static const struct clk_parent_data video_cc_parent_data_0[] = {
> +	{ .index = DT_BI_TCXO },
> +};
> +
> +static const struct parent_map video_cc_parent_map_1[] = {
> +	{ P_BI_TCXO, 0 },
> +	{ P_VIDEO_CC_PLL0_OUT_MAIN, 1 },
> +};
> +
> +static const struct clk_parent_data video_cc_parent_data_1[] = {
> +	{ .index = DT_BI_TCXO },
> +	{ .hw = &video_cc_pll0.clkr.hw },
> +};
> +
> +static const struct parent_map video_cc_parent_map_2[] = {
> +	{ P_BI_TCXO, 0 },
> +	{ P_VIDEO_CC_PLL1_OUT_MAIN, 1 },
> +};
> +
> +static const struct clk_parent_data video_cc_parent_data_2[] = {
> +	{ .index = DT_BI_TCXO },
> +	{ .hw = &video_cc_pll1.clkr.hw },
> +};
> +
> +static const struct freq_tbl ftbl_video_cc_mvs0_bse_clk_src[] = {
> +	F(420000000, P_VIDEO_CC_PLL0_OUT_MAIN, 1, 0, 0),
> +	F(600000000, P_VIDEO_CC_PLL0_OUT_MAIN, 1, 0, 0),
> +	F(670000000, P_VIDEO_CC_PLL0_OUT_MAIN, 1, 0, 0),
> +	F(848000000, P_VIDEO_CC_PLL0_OUT_MAIN, 1, 0, 0),
> +	F(920000000, P_VIDEO_CC_PLL0_OUT_MAIN, 1, 0, 0),
> +	{ }
> +};
> +
> +static struct clk_rcg2 video_cc_mvs0_bse_clk_src = {
> +	.cmd_rcgr = 0x8154,
> +	.mnd_width = 0,
> +	.hid_width = 5,
> +	.parent_map = video_cc_parent_map_1,
> +	.freq_tbl = ftbl_video_cc_mvs0_bse_clk_src,
> +	.hw_clk_ctrl = true,
> +	.clkr.hw.init = &(const struct clk_init_data) {
> +		.name = "video_cc_mvs0_bse_clk_src",
> +		.parent_data = video_cc_parent_data_1,
> +		.num_parents = ARRAY_SIZE(video_cc_parent_data_1),
> +		.flags = CLK_SET_RATE_PARENT,
> +		.ops = &clk_rcg2_shared_ops,
> +	},
> +};
> +
> +static const struct freq_tbl ftbl_video_cc_mvs0_clk_src[] = {
> +	F(210000000, P_VIDEO_CC_PLL0_OUT_MAIN, 2, 0, 0),
> +	F(300000000, P_VIDEO_CC_PLL0_OUT_MAIN, 2, 0, 0),
> +	F(335000000, P_VIDEO_CC_PLL0_OUT_MAIN, 2, 0, 0),
> +	F(424000000, P_VIDEO_CC_PLL0_OUT_MAIN, 2, 0, 0),
> +	F(460000000, P_VIDEO_CC_PLL0_OUT_MAIN, 2, 0, 0),
> +	{ }
> +};
> +
> +static struct clk_rcg2 video_cc_mvs0_clk_src = {
> +	.cmd_rcgr = 0x8000,
> +	.mnd_width = 0,
> +	.hid_width = 5,
> +	.parent_map = video_cc_parent_map_1,
> +	.freq_tbl = ftbl_video_cc_mvs0_clk_src,
> +	.hw_clk_ctrl = true,
> +	.clkr.hw.init = &(const struct clk_init_data) {
> +		.name = "video_cc_mvs0_clk_src",
> +		.parent_data = video_cc_parent_data_1,
> +		.num_parents = ARRAY_SIZE(video_cc_parent_data_1),
> +		.flags = CLK_SET_RATE_PARENT,
> +		.ops = &clk_rcg2_shared_ops,
> +	},
> +};
> +
> +static const struct freq_tbl ftbl_video_cc_mvs1_clk_src[] = {
> +	F(1050000000, P_VIDEO_CC_PLL1_OUT_MAIN, 1, 0, 0),
> +	F(1350000000, P_VIDEO_CC_PLL1_OUT_MAIN, 1, 0, 0),
> +	F(1650000000, P_VIDEO_CC_PLL1_OUT_MAIN, 1, 0, 0),
> +	{ }
> +};
> +
> +static struct clk_rcg2 video_cc_mvs1_clk_src = {
> +	.cmd_rcgr = 0x8018,
> +	.mnd_width = 0,
> +	.hid_width = 5,
> +	.parent_map = video_cc_parent_map_2,
> +	.freq_tbl = ftbl_video_cc_mvs1_clk_src,
> +	.hw_clk_ctrl = true,
> +	.clkr.hw.init = &(const struct clk_init_data) {
> +		.name = "video_cc_mvs1_clk_src",
> +		.parent_data = video_cc_parent_data_2,
> +		.num_parents = ARRAY_SIZE(video_cc_parent_data_2),
> +		.flags = CLK_SET_RATE_PARENT,
> +		.ops = &clk_rcg2_shared_ops,
> +	},
> +};
> +
> +static const struct freq_tbl ftbl_video_cc_xo_clk_src[] = {
> +	F(19200000, P_BI_TCXO, 1, 0, 0),
> +	{ }
> +};
> +
> +static struct clk_rcg2 video_cc_xo_clk_src = {
> +	.cmd_rcgr = 0x810c,
> +	.mnd_width = 0,
> +	.hid_width = 5,
> +	.parent_map = video_cc_parent_map_0,
> +	.freq_tbl = ftbl_video_cc_xo_clk_src,
> +	.clkr.hw.init = &(const struct clk_init_data) {
> +		.name = "video_cc_xo_clk_src",
> +		.parent_data = video_cc_parent_data_0,
> +		.num_parents = ARRAY_SIZE(video_cc_parent_data_0),
> +		.flags = CLK_SET_RATE_PARENT,
> +		.ops = &clk_rcg2_shared_ops,
> +	},
> +};
> +
> +static struct clk_regmap_div video_cc_mvs0_bse_div4_div_clk_src = {
> +	.reg = 0x817c,
> +	.shift = 0,
> +	.width = 4,
> +	.clkr.hw.init = &(const struct clk_init_data) {
> +		.name = "video_cc_mvs0_bse_div4_div_clk_src",
> +		.parent_hws = (const struct clk_hw*[]) {
> +			&video_cc_mvs0_bse_clk_src.clkr.hw,
> +		},
> +		.num_parents = 1,
> +		.flags = CLK_SET_RATE_PARENT,
> +		.ops = &clk_regmap_div_ro_ops,
> +	},
> +};
> +
> +static struct clk_regmap_div video_cc_mvs1_div_clk_src = {
> +	.reg = 0x80ec,
> +	.shift = 0,
> +	.width = 4,
> +	.clkr.hw.init = &(const struct clk_init_data) {
> +		.name = "video_cc_mvs1_div_clk_src",
> +		.parent_hws = (const struct clk_hw*[]) {
> +			&video_cc_mvs1_clk_src.clkr.hw,
> +		},
> +		.num_parents = 1,
> +		.flags = CLK_SET_RATE_PARENT,
> +		.ops = &clk_regmap_div_ro_ops,
> +	},
> +};
> +
> +static struct clk_regmap_div video_cc_mvs1c_div2_div_clk_src = {
> +	.reg = 0x809c,
> +	.shift = 0,
> +	.width = 4,
> +	.clkr.hw.init = &(const struct clk_init_data) {
> +		.name = "video_cc_mvs1c_div2_div_clk_src",
> +		.parent_hws = (const struct clk_hw*[]) {
> +			&video_cc_mvs1_clk_src.clkr.hw,
> +		},
> +		.num_parents = 1,
> +		.flags = CLK_SET_RATE_PARENT,
> +		.ops = &clk_regmap_div_ro_ops,
> +	},
> +};
> +
> +static struct clk_branch video_cc_mvs0_bse_clk = {
> +	.halt_reg = 0x8170,
> +	.halt_check = BRANCH_HALT,
> +	.clkr = {
> +		.enable_reg = 0x8170,
> +		.enable_mask = BIT(0),
> +		.hw.init = &(const struct clk_init_data) {
> +			.name = "video_cc_mvs0_bse_clk",
> +			.parent_hws = (const struct clk_hw*[]) {
> +				&video_cc_mvs0_bse_div4_div_clk_src.clkr.hw,
> +			},
> +			.num_parents = 1,
> +			.flags = CLK_SET_RATE_PARENT,
> +			.ops = &clk_branch2_ops,
> +		},
> +	},
> +};
> +
> +static struct clk_branch video_cc_mvs0_clk = {
> +	.halt_reg = 0x80b8,
> +	.halt_check = BRANCH_HALT_VOTED,
> +	.hwcg_reg = 0x80b8,
> +	.hwcg_bit = 1,
> +	.clkr = {
> +		.enable_reg = 0x80b8,
> +		.enable_mask = BIT(0),
> +		.hw.init = &(const struct clk_init_data) {
> +			.name = "video_cc_mvs0_clk",
> +			.parent_hws = (const struct clk_hw*[]) {
> +				&video_cc_mvs0_clk_src.clkr.hw,
> +			},
> +			.num_parents = 1,
> +			.flags = CLK_SET_RATE_PARENT,
> +			.ops = &clk_branch2_ops,
> +		},
> +	},
> +};
> +
> +static struct clk_branch video_cc_mvs0_shift_clk = {
> +	.halt_reg = 0x8128,
> +	.halt_check = BRANCH_HALT_VOTED,
> +	.clkr = {
> +		.enable_reg = 0x8128,
> +		.enable_mask = BIT(0),
> +		.hw.init = &(const struct clk_init_data) {
> +			.name = "video_cc_mvs0_shift_clk",
> +			.parent_hws = (const struct clk_hw*[]) {
> +				&video_cc_xo_clk_src.clkr.hw,
> +			},
> +			.num_parents = 1,
> +			.flags = CLK_SET_RATE_PARENT,
> +			.ops = &clk_branch2_ops,
> +		},
> +	},
> +};
> +
> +static struct clk_branch video_cc_mvs0c_clk = {
> +	.halt_reg = 0x8064,
> +	.halt_check = BRANCH_HALT,
> +	.clkr = {
> +		.enable_reg = 0x8064,
> +		.enable_mask = BIT(0),
> +		.hw.init = &(const struct clk_init_data) {
> +			.name = "video_cc_mvs0c_clk",
> +			.parent_hws = (const struct clk_hw*[]) {
> +				&video_cc_mvs0_clk_src.clkr.hw,
> +			},
> +			.num_parents = 1,
> +			.flags = CLK_SET_RATE_PARENT,
> +			.ops = &clk_branch2_ops,
> +		},
> +	},
> +};
> +
> +static struct clk_branch video_cc_mvs0c_shift_clk = {
> +	.halt_reg = 0x812c,
> +	.halt_check = BRANCH_HALT_VOTED,
> +	.clkr = {
> +		.enable_reg = 0x812c,
> +		.enable_mask = BIT(0),
> +		.hw.init = &(const struct clk_init_data) {
> +			.name = "video_cc_mvs0c_shift_clk",
> +			.parent_hws = (const struct clk_hw*[]) {
> +				&video_cc_xo_clk_src.clkr.hw,
> +			},
> +			.num_parents = 1,
> +			.flags = CLK_SET_RATE_PARENT,
> +			.ops = &clk_branch2_ops,
> +		},
> +	},
> +};
> +
> +static struct clk_branch video_cc_mvs1_clk = {
> +	.halt_reg = 0x80e0,
> +	.halt_check = BRANCH_HALT_VOTED,
> +	.hwcg_reg = 0x80e0,
> +	.hwcg_bit = 1,
> +	.clkr = {
> +		.enable_reg = 0x80e0,
> +		.enable_mask = BIT(0),
> +		.hw.init = &(const struct clk_init_data) {
> +			.name = "video_cc_mvs1_clk",
> +			.parent_hws = (const struct clk_hw*[]) {
> +				&video_cc_mvs1_div_clk_src.clkr.hw,
> +			},
> +			.num_parents = 1,
> +			.flags = CLK_SET_RATE_PARENT,
> +			.ops = &clk_branch2_ops,
> +		},
> +	},
> +};
> +
> +static struct clk_branch video_cc_mvs1_shift_clk = {
> +	.halt_reg = 0x8130,
> +	.halt_check = BRANCH_HALT_VOTED,
> +	.clkr = {
> +		.enable_reg = 0x8130,
> +		.enable_mask = BIT(0),
> +		.hw.init = &(const struct clk_init_data) {
> +			.name = "video_cc_mvs1_shift_clk",
> +			.parent_hws = (const struct clk_hw*[]) {
> +				&video_cc_xo_clk_src.clkr.hw,
> +			},
> +			.num_parents = 1,
> +			.flags = CLK_SET_RATE_PARENT,
> +			.ops = &clk_branch2_ops,
> +		},
> +	},
> +};
> +
> +static struct clk_branch video_cc_mvs1c_clk = {
> +	.halt_reg = 0x8090,
> +	.halt_check = BRANCH_HALT,
> +	.clkr = {
> +		.enable_reg = 0x8090,
> +		.enable_mask = BIT(0),
> +		.hw.init = &(const struct clk_init_data) {
> +			.name = "video_cc_mvs1c_clk",
> +			.parent_hws = (const struct clk_hw*[]) {
> +				&video_cc_mvs1c_div2_div_clk_src.clkr.hw,
> +			},
> +			.num_parents = 1,
> +			.flags = CLK_SET_RATE_PARENT,
> +			.ops = &clk_branch2_ops,
> +		},
> +	},
> +};
> +
> +static struct clk_branch video_cc_mvs1c_shift_clk = {
> +	.halt_reg = 0x8134,
> +	.halt_check = BRANCH_HALT_VOTED,
> +	.clkr = {
> +		.enable_reg = 0x8134,
> +		.enable_mask = BIT(0),
> +		.hw.init = &(const struct clk_init_data) {
> +			.name = "video_cc_mvs1c_shift_clk",
> +			.parent_hws = (const struct clk_hw*[]) {
> +				&video_cc_xo_clk_src.clkr.hw,
> +			},
> +			.num_parents = 1,
> +			.flags = CLK_SET_RATE_PARENT,
> +			.ops = &clk_branch2_ops,
> +		},
> +	},
> +};
> +
> +static struct gdsc video_cc_mvs0c_gdsc = {
> +	.gdscr = 0x804c,
> +	.en_rest_wait_val = 0x2,
> +	.en_few_wait_val = 0x2,
> +	.clk_dis_wait_val = 0x6,
> +	.pd = {
> +		.name = "video_cc_mvs0c_gdsc",
> +	},
> +	.pwrsts = PWRSTS_OFF_ON,
> +	.flags = POLL_CFG_GDSCR | RETAIN_FF_ENABLE,
> +};
> +
> +static struct gdsc video_cc_mvs0_gdsc = {
> +	.gdscr = 0x80a4,
> +	.en_rest_wait_val = 0x2,
> +	.en_few_wait_val = 0x2,
> +	.clk_dis_wait_val = 0x6,
> +	.pd = {
> +		.name = "video_cc_mvs0_gdsc",
> +	},
> +	.pwrsts = PWRSTS_OFF_ON,
> +	.parent = &video_cc_mvs0c_gdsc.pd,
> +	.flags = HW_CTRL_TRIGGER | POLL_CFG_GDSCR | RETAIN_FF_ENABLE,
> +};
> +
> +static struct gdsc video_cc_mvs1c_gdsc = {
> +	.gdscr = 0x8078,
> +	.en_rest_wait_val = 0x2,
> +	.en_few_wait_val = 0x2,
> +	.clk_dis_wait_val = 0xf,
> +	.pd = {
> +		.name = "video_cc_mvs1c_gdsc",
> +	},
> +	.pwrsts = PWRSTS_OFF_ON,
> +	.flags = POLL_CFG_GDSCR | RETAIN_FF_ENABLE,
> +};
> +
> +static struct gdsc video_cc_mvs1_gdsc = {
> +	.gdscr = 0x80cc,
> +	.en_rest_wait_val = 0x2,
> +	.en_few_wait_val = 0x2,
> +	.clk_dis_wait_val = 0xf,
> +	.pd = {
> +		.name = "video_cc_mvs1_gdsc",
> +	},
> +	.pwrsts = PWRSTS_OFF_ON,
> +	.parent = &video_cc_mvs1c_gdsc.pd,
> +	.flags = HW_CTRL_TRIGGER | POLL_CFG_GDSCR | RETAIN_FF_ENABLE,
> +};
> +
> +static struct clk_regmap *video_cc_x1p42100_clocks[] = {
> +	[VIDEO_CC_MVS0_BSE_CLK] = &video_cc_mvs0_bse_clk.clkr,
> +	[VIDEO_CC_MVS0_BSE_CLK_SRC] = &video_cc_mvs0_bse_clk_src.clkr,
> +	[VIDEO_CC_MVS0_BSE_DIV4_DIV_CLK_SRC] = &video_cc_mvs0_bse_div4_div_clk_src.clkr,
> +	[VIDEO_CC_MVS0_CLK] = &video_cc_mvs0_clk.clkr,
> +	[VIDEO_CC_MVS0_CLK_SRC] = &video_cc_mvs0_clk_src.clkr,
> +	[VIDEO_CC_MVS0_SHIFT_CLK] = &video_cc_mvs0_shift_clk.clkr,
> +	[VIDEO_CC_MVS0C_CLK] = &video_cc_mvs0c_clk.clkr,
> +	[VIDEO_CC_MVS0C_SHIFT_CLK] = &video_cc_mvs0c_shift_clk.clkr,
> +	[VIDEO_CC_MVS1_CLK] = &video_cc_mvs1_clk.clkr,
> +	[VIDEO_CC_MVS1_CLK_SRC] = &video_cc_mvs1_clk_src.clkr,
> +	[VIDEO_CC_MVS1_DIV_CLK_SRC] = &video_cc_mvs1_div_clk_src.clkr,
> +	[VIDEO_CC_MVS1_SHIFT_CLK] = &video_cc_mvs1_shift_clk.clkr,
> +	[VIDEO_CC_MVS1C_CLK] = &video_cc_mvs1c_clk.clkr,
> +	[VIDEO_CC_MVS1C_DIV2_DIV_CLK_SRC] = &video_cc_mvs1c_div2_div_clk_src.clkr,
> +	[VIDEO_CC_MVS1C_SHIFT_CLK] = &video_cc_mvs1c_shift_clk.clkr,
> +	[VIDEO_CC_PLL0] = &video_cc_pll0.clkr,
> +	[VIDEO_CC_PLL1] = &video_cc_pll1.clkr,
> +	[VIDEO_CC_XO_CLK_SRC] = &video_cc_xo_clk_src.clkr,
> +};
> +
> +static struct gdsc *video_cc_x1p42100_gdscs[] = {
> +	[VIDEO_CC_MVS0_GDSC] = &video_cc_mvs0_gdsc,
> +	[VIDEO_CC_MVS0C_GDSC] = &video_cc_mvs0c_gdsc,
> +	[VIDEO_CC_MVS1_GDSC] = &video_cc_mvs1_gdsc,
> +	[VIDEO_CC_MVS1C_GDSC] = &video_cc_mvs1c_gdsc,
> +};
> +
> +static const struct qcom_reset_map video_cc_x1p42100_resets[] = {
> +	[CVP_VIDEO_CC_INTERFACE_BCR] = { 0x80f0 },
> +	[CVP_VIDEO_CC_MVS0_BCR] = { 0x80a0 },
> +	[CVP_VIDEO_CC_MVS0C_BCR] = { 0x8048 },
> +	[CVP_VIDEO_CC_MVS1_BCR] = { 0x80c8 },
> +	[CVP_VIDEO_CC_MVS1C_BCR] = { 0x8074 },
> +	[VIDEO_CC_MVS0_BSE_BCR] = { 0x816c },
> +	[VIDEO_CC_MVS0C_CLK_ARES] = { 0x8064, 2 },
> +	[VIDEO_CC_MVS1C_CLK_ARES] = { 0x8090, 2 },
> +	[VIDEO_CC_XO_CLK_ARES] = { 0x8124, 2 },
> +};
> +
> +static struct clk_alpha_pll *video_cc_x1p42100_plls[] = {
> +	&video_cc_pll0,
> +	&video_cc_pll1,
> +};
> +
> +static u32 video_cc_x1p42100_critical_cbcrs[] = {
> +	0x80f4, /* VIDEO_CC_AHB_CLK */
> +	0x8150, /* VIDEO_CC_SLEEP_CLK */
> +	0x8124, /* VIDEO_CC_XO_CLK */
> +};
> +
> +static const struct regmap_config video_cc_x1p42100_regmap_config = {
> +	.reg_bits = 32,
> +	.reg_stride = 4,
> +	.val_bits = 32,
> +	.max_register = 0x9f54,
> +	.fast_io = true,
> +};
> +
> +static struct qcom_cc_driver_data video_cc_x1p42100_driver_data = {
> +	.alpha_plls = video_cc_x1p42100_plls,
> +	.num_alpha_plls = ARRAY_SIZE(video_cc_x1p42100_plls),
> +	.clk_cbcrs = video_cc_x1p42100_critical_cbcrs,
> +	.num_clk_cbcrs = ARRAY_SIZE(video_cc_x1p42100_critical_cbcrs),
> +};
> +
> +static const struct qcom_cc_desc video_cc_x1p42100_desc = {
> +	.config = &video_cc_x1p42100_regmap_config,
> +	.clks = video_cc_x1p42100_clocks,
> +	.num_clks = ARRAY_SIZE(video_cc_x1p42100_clocks),
> +	.resets = video_cc_x1p42100_resets,
> +	.num_resets = ARRAY_SIZE(video_cc_x1p42100_resets),
> +	.gdscs = video_cc_x1p42100_gdscs,
> +	.num_gdscs = ARRAY_SIZE(video_cc_x1p42100_gdscs),
> +	.use_rpm = true,
> +	.driver_data = &video_cc_x1p42100_driver_data,
> +};
> +
> +static const struct of_device_id video_cc_x1p42100_match_table[] = {
> +	{ .compatible = "qcom,x1p42100-videocc" },
> +	{ }
> +};
> +MODULE_DEVICE_TABLE(of, video_cc_x1p42100_match_table);
> +
> +static int video_cc_x1p42100_probe(struct platform_device *pdev)
> +{
> +	return qcom_cc_probe(pdev, &video_cc_x1p42100_desc);
> +}
> +
> +static struct platform_driver video_cc_x1p42100_driver = {
> +	.probe = video_cc_x1p42100_probe,
> +	.driver = {
> +		.name = "videocc-x1p42100",
> +		.of_match_table = video_cc_x1p42100_match_table,
> +	},
> +};
> +
> +module_platform_driver(video_cc_x1p42100_driver);
> +
> +MODULE_DESCRIPTION("QTI VIDEOCC X1P42100 Driver");
> +MODULE_LICENSE("GPL");
> 

Reviewed-by: Taniya Das <taniya.das@oss.qualcomm.com>

-- 
Thanks,
Taniya Das


