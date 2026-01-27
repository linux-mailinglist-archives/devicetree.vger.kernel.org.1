Return-Path: <devicetree+bounces-260119-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YAMEJWEheWm7vgEAu9opvQ
	(envelope-from <devicetree+bounces-260119-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 21:34:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 04B249A5FD
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 21:34:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id D2AEE3001BFE
	for <lists+devicetree@lfdr.de>; Tue, 27 Jan 2026 20:34:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31FF436EAA5;
	Tue, 27 Jan 2026 20:34:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="UudBGvq9";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="ZwThI1hw"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7B521243376
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 20:34:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769546079; cv=none; b=Fd7JGKvq6kdaKIwFZp8GiV6wNfTwxa5Tn5wu75zJCtLmyszb2VxyYACBPcekdS4sfaa6Fy6RrvreCSBZpvegsuPgbZ7JnGmCDa8P4SojfinHk84MKrsWNHVP14Ov9b5mQsQRSGDGczeUyu5dgRp3kWnms6TO4QCwPkb2Fiw0SR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769546079; c=relaxed/simple;
	bh=6+ryrk2sOHsrrR6dzdlUojweXI/Wmse5brKS8Yn6kj4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=gtHcvZz77d9KxO1qv9Src/GeD8MZN8TBS9n80VmYSvVwnPy9z37Axi33CCxmzA4PQzAV8QS7M7N2hkQZU1MQCiib4I8KSI6mc+FjV6VzDEekgq2R/szoBEb95gAjms24EJfusANuvWEgvdoDVSPzt1VstFKmXMNFUBP0LpIYMIY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=UudBGvq9; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=ZwThI1hw; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60RJ0ou42436643
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 20:34:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=UBW4/O8y41IiXvNQNSJZRU7z
	a95y2QvJwR9+W+NL1uI=; b=UudBGvq9T2geyT8U02x2HD1Gcdh00M+1zBsi61ls
	eKOX9gKovpBvfhS6lNo4fV8evD0MiLGnz7Du0UGR95M991t9EgnOchJGGYUaIQpv
	4oAEdjr0DoPXsNpDyq5aQy4zE9UOKsFwGyl5k2dBX8Xl55eIV+2YMySYhesfXcpi
	EzwKKQOyEPa1afK5O5GalwZPYiSI9TEOg0O3i6d/+RMq3pNTxE7D91zsW0AOW1ks
	UgwmnkS75cdj9ZD7cJDAb7XAnk2g8zpdB1OWpEmBC5tOepwGheRwL4DVfoEs2Cyk
	/WYfvZmEd5+7fHzf591btouapnqMFt4fG1XrreSEDw8azg==
Received: from mail-vs1-f70.google.com (mail-vs1-f70.google.com [209.85.217.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4by355r9mt-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 20:34:36 +0000 (GMT)
Received: by mail-vs1-f70.google.com with SMTP id ada2fe7eead31-5f55092e3c9so4910761137.1
        for <devicetree@vger.kernel.org>; Tue, 27 Jan 2026 12:34:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769546076; x=1770150876; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=UBW4/O8y41IiXvNQNSJZRU7za95y2QvJwR9+W+NL1uI=;
        b=ZwThI1hwkLsWSOnN0LV7RUtNH1/vtQZTxf+9+5dGxMtglRyiRkkia43VQxK3z/sApJ
         U5TG3vmoIoPnRy0gkm0wiv0YfMkpk6Dw9bIizbjF4RaG7U97CWYwK9x9G0RGMUl9JViU
         klzyDqsGF5qpXelOpLuy7ndv5V1uimkVQRXPn9W36xd5P+oLEGODi6XmVC/cJO1TCQHN
         Mcg7fI7sfFvczfW+1VWXp909VDSm8TxflmSG10J6y+WwnfDYEgVcDrC+XXyGic9pfhTZ
         UJHkKosa+yACpZHwKu/gxkSMbsGLNueBnWDwEvrjwdFp17LizEBN2p5M4541ZJJKNy1/
         L0fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769546076; x=1770150876;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UBW4/O8y41IiXvNQNSJZRU7za95y2QvJwR9+W+NL1uI=;
        b=ABD0pp0gyPw70/qAFtJkU+S/tHDm9nyVOrY8gcXNfulGDBE1t+15U5EY+jHY0yaP3S
         U6HkAbWKJ7bvbkzFxo6T1DVbPh1YrIVzVDQF7ta50gVkqfsgAzt6P4jxMgkmOF35Hpa2
         OzMI0R6e/aOCaJfGjAoVzMLS5DeXSJ/GauMbu2lTKxrvVbF6Scdj03o8TbVohlOhmf9c
         wKnuIlQTNqJSiOSI6BjJbfy7wXNk5K3n+mla6vr0cYiujGRDHe7ez/KdfUx19IApAM2+
         WtvU1oER5zv8VEqHIAyzxEgMS9Obtjn0/5uYEu62i5412Hu9vbCMckNJoASEbnD4Q8Bt
         jwnw==
X-Forwarded-Encrypted: i=1; AJvYcCWBT3S0hAOpDHG66Ajj0cBWR970PT3Le2qQJDeMF8r3ItbpfmeevPO3k8U7EzUK0g6L1i5qTuKe7fP2@vger.kernel.org
X-Gm-Message-State: AOJu0YyAzqrfhB7iT/zYHwXZPVWxXUhRQyv5zzmLh2WdtNV663RByz6P
	Fp3fCS2qrVHzwwuN7lc6nLnSS5cco6Dc5xpaDZjE2BIKThwR1zU9lusn7PkKy7RWY0F0Yw4sUmm
	1ep1sd5eGVlwC3hCHz10IKDeYhUWWBTTRmk90QAODIq+6dZzNkSLxvlrCsCAErDsv
X-Gm-Gg: AZuq6aLXXjJ0+5d2Pfz/+zx6ReGPyF5QIEi7S/eShKBJ9TC7L2ll066OYrIxHwj0vKW
	6Gww54FJaf94/OGo4slUtqucOaXFNFEnCGZai8JcdQRGTwuTWhVA9lYQOFkxvIpYMd9KGhNuaqd
	1nSRKb1JqTRvCcR81z5fULMUMWZZ9zTd1jKeFTQV2RDzfYJQw7ooEXywyYu1v5MQD00y8/KEWiL
	dHn42BGvVLiep6+G0kynpEn99KDai+3oPbFnA9IrsUIic9EOXzoDApXxeUp0Z8kucvn5C51NVxJ
	ezQnhiMKcjQROudNayalLzv4gS/PE4t0ay2HBeSLjf5LvtP/6/zL5yyuWdnZAh2BPrtMwp5wf+v
	/L9RS2TPkSuaSTXTj8Xahagy+YH14r+GuxyzPHbBKcVAg9T2XPxU4nTqwJKY3dNICpaKtWqEfIZ
	R7iQT5cV496FQdYzCrRHqdiEo=
X-Received: by 2002:a05:6102:3054:b0:5f5:7721:569c with SMTP id ada2fe7eead31-5f7235eeda4mr1075937137.4.1769546075564;
        Tue, 27 Jan 2026 12:34:35 -0800 (PST)
X-Received: by 2002:a05:6102:3054:b0:5f5:7721:569c with SMTP id ada2fe7eead31-5f7235eeda4mr1075919137.4.1769546074969;
        Tue, 27 Jan 2026 12:34:34 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59e074b2c09sm140097e87.65.2026.01.27.12.34.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jan 2026 12:34:34 -0800 (PST)
Date: Tue, 27 Jan 2026 22:34:32 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Jagadeesh Kona <quic_jkona@quicinc.com>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Ajit Pandey <ajit.pandey@oss.qualcomm.com>,
        Imran Shaik <imran.shaik@oss.qualcomm.com>,
        Taniya Das <taniya.das@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/8] dt-bindings: clock: qcom: Add X1P42100 video clock
 controller
Message-ID: <fxzm4767ged6hikpblsnh3xzec4qm7dzyfnds7m2ljedhj6n46@zkm7zxz3oo73>
References: <20260128-purwa-videocc-camcc-v1-0-b23de57df5ba@oss.qualcomm.com>
 <20260128-purwa-videocc-camcc-v1-1-b23de57df5ba@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20260128-purwa-videocc-camcc-v1-1-b23de57df5ba@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=YNWSCBGx c=1 sm=1 tr=0 ts=6979215c cx=c_pps
 a=N1BjEkVkxJi3uNfLdpvX3g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=lIQNSvCfeu_oATqTbLoA:9 a=CjuIK1q_8ugA:10
 a=crWF4MFLhNY0qMRaF8an:22
X-Proofpoint-ORIG-GUID: ETd2rdDF27I95yUNqOLNy59CYAdzVyPr
X-Proofpoint-GUID: ETd2rdDF27I95yUNqOLNy59CYAdzVyPr
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI3MDE2NyBTYWx0ZWRfX0KxjvxEhh0vu
 ddkdW819Kz3+Bxtor6w6NWlLGNuF6qen6b4mIkK4N1oF9cJpcfWn9qy9wnc4GygxqqAItxrLtmB
 8KlvANJQuuk9Rin61ifgtFP8oooRb8rX4S5nSlslYM/ZhKUazWbeQvFvcMV5dbwUy9sFmzZcuXe
 8VJrDB0CM+W0zFTCN3PtPTTOJVS4fQia4KVrEDSZNtu3wfOgbr/mht+tsaXlvTcLS2eRihcZbod
 D7VgWV0j3ieWa5tKPxwNX8c1S71AflYE5j6LunLKZXMH/gzRuOraGQZj5Fwn/ka0Hmhw9z4b1+6
 zjZxqTP7WV14V7XeoVn6gwiwAHl75hB62AReplLB614NQ/MBgYM/4W0IpjpUvPJAG1cP6X8712d
 S5qprveVy5J7EDx9WxwDpModQnamYp+hSo1pv2MuvbmSo95IYeT8p5ebJGpUelT429O/ActfQIs
 OvImoVCCFvnyrMCbClQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-27_04,2026-01-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 phishscore=0 suspectscore=0 lowpriorityscore=0 adultscore=0
 priorityscore=1501 spamscore=0 impostorscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601270167
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_RHS_NOT_FQDN(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-260119-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[17];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dmitry.baryshkov@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 04B249A5FD
X-Rspamd-Action: no action

On Wed, Jan 28, 2026 at 12:56:32AM +0530, Jagadeesh Kona wrote:
> X1P42100 video clock controller has most clocks same as SM8650,
> but it also has few additional clocks and resets. Add device
> tree bindings for the video clock controller on Qualcomm
> X1P42100 platform by defining these additional clocks and resets
> on top of SM8650.
> 
> Signed-off-by: Jagadeesh Kona <jagadeesh.kona@oss.qualcomm.com>
> ---
>  .../bindings/clock/qcom,sm8450-videocc.yaml         |  2 ++
>  include/dt-bindings/clock/qcom,x1p42100-videocc.h   | 21 +++++++++++++++++++++
>  2 files changed, 23 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml b/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml
> index e6beebd6a36ee1ce213a816f60df8a76fa5c44d6..e8bf3fcad3fabc4f3b7e8e692c6c634d1aed9605 100644
> --- a/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml
> +++ b/Documentation/devicetree/bindings/clock/qcom,sm8450-videocc.yaml
> @@ -30,6 +30,7 @@ properties:
>        - qcom,sm8650-videocc
>        - qcom,sm8750-videocc
>        - qcom,x1e80100-videocc
> +      - qcom,x1p42100-videocc
>  
>    clocks:
>      items:
> @@ -67,6 +68,7 @@ allOf:
>                - qcom,sm8450-videocc
>                - qcom,sm8550-videocc
>                - qcom,sm8750-videocc
> +              - qcom,x1p42100-videocc
>      then:
>        required:
>          - required-opps
> diff --git a/include/dt-bindings/clock/qcom,x1p42100-videocc.h b/include/dt-bindings/clock/qcom,x1p42100-videocc.h
> new file mode 100644
> index 0000000000000000000000000000000000000000..eb6c9b7264f8cbced7cfa0001903238ffa168431
> --- /dev/null
> +++ b/include/dt-bindings/clock/qcom,x1p42100-videocc.h
> @@ -0,0 +1,21 @@
> +/* SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause) */
> +/*
> + * Copyright (c) Qualcomm Technologies, Inc. and/or its subsidiaries.
> + */
> +
> +#ifndef _DT_BINDINGS_CLK_QCOM_VIDEO_CC_X1P42100_H
> +#define _DT_BINDINGS_CLK_QCOM_VIDEO_CC_X1P42100_H
> +
> +#include "qcom,sm8650-videocc.h"
> +
> +/* X1P42100 introduces below new clocks and resets compared to SM8650 */

And then someone introduces new clocks or resets into SM8650 bindings
and this gets busted. Please extend the existing header.

> +
> +/* VIDEO_CC clocks */
> +#define VIDEO_CC_MVS0_BSE_CLK					17
> +#define VIDEO_CC_MVS0_BSE_CLK_SRC				18
> +#define VIDEO_CC_MVS0_BSE_DIV4_DIV_CLK_SRC			19
> +
> +/* VIDEO_CC resets */
> +#define VIDEO_CC_MVS0_BSE_BCR					8
> +
> +#endif
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

