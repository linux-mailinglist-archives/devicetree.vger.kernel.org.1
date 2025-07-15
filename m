Return-Path: <devicetree+bounces-196515-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id CDF13B05995
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 14:06:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1553D1AA3C6C
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 12:06:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7AA872DC33D;
	Tue, 15 Jul 2025 12:06:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oQoi5OSE"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 175DB2D9EE4
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 12:06:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752581162; cv=none; b=LIZvYpb6/CHUMPsBxWCA7GCddN83M6cYNmsFJmTzFg0Lm9IKHrkv3StStfQt2rNpAsm2MUU2xVEpTqRmcsG+eBRh0Ss1QjukFL5erjAloJ9X9KdoSKeNunxABouVO+9dYb0YJoovf6Oj6a8DDeTqE2KOGg87IHOlgcD0hxtCmAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752581162; c=relaxed/simple;
	bh=fZ+5plG/Rq6z7X1Q+uu3njJximpFjuZ5NS36v5rDKGE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lrzrEsqpA96qNx57/j3h89Iu6uIsPe30yPIbAxpPApqP42Wglcw2SFlCgJenPGIctOdzfzJ5Qt/n1vp9Q7bE8B32eovcGpr8kJBHg6jGSOdrNXLOfSWDfuYApUkRTnpGON6jdRCzVAJnm6IziXYD7esbQutAqBwhWXu/s1ot9hM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oQoi5OSE; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56F8kZs7027472
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 12:06:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=whgpErroktFXqC6PFq2WcPTx
	Y5NFQM6yRWXrcNe/B5E=; b=oQoi5OSEalOMhOlaVsCQwivDCxIQJkwdw2Gjk36d
	KOoK/PSWH19kWIRgR6wfPCM2d0JymbeYro1VX9x92LvyDpRE3DF1SmtAmAceD+Oi
	zu2OG52GP8B7uh7a7ZCc/ZSEfQPSO18KyCErrQsMv1y/LlXTzYrBp3oFbKt9bclj
	3sdLK0ezqdYtrn1iKYc5rjpr4JzHTvfWeO/5QLqKEJdOKScjpyheIyNgkzOf6sON
	Uuoc4w8OYOGRkDBTcmmTFjb9LXp2TPxZY0wPwtkN4U5VuS2dKdgBjYbhTOuBUaHc
	mn+ycF5PDfrV9hDh5sdBx6QVpeOzJdMVKLJvsMIMSlJVyw==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47wkrugpmx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 12:06:00 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7e1b7fe85b1so437107785a.3
        for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 05:06:00 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752581159; x=1753185959;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=whgpErroktFXqC6PFq2WcPTxY5NFQM6yRWXrcNe/B5E=;
        b=KWXEFc/ICc1O1XGYzjElYMFWILWqfq8qlqSNSp5BqQer4za3et1jxcihJw0hHT/pUl
         N1VyF/PeZsuxNc0Uxx9tBU95+CCdnoLBnZpfta+5KG57vaQ01EuMS/4cIvDqcNicBG1p
         OaoXQefpx/ij2kKlgcfq0ejVr9oMpOEaVCIfmakRyv4pKnhSau6SBnMUwTNzTCzB3H5U
         obymcBVSk5emTf4vkbz4mcrI3NleZErtssnkIoAqeE3SWJShXF8wvUyO21rtKKbra82M
         IfROXmifqg70nkLsnRu6STINkw2pdVIWOAblbc9ONSeXkFqp2CcEtQDtxweeoADtkpsV
         /QMg==
X-Forwarded-Encrypted: i=1; AJvYcCXD+MsKdZ2vJ0CY03ZJ3t0PtmWblF1IKq92/kEMI+7qDY7amd/FccQ/Q8OtFJzm0e76jo2x2xM8H9IY@vger.kernel.org
X-Gm-Message-State: AOJu0Ywhp78xQc+o6NK0dzd+WswiF+R4ebrE/TG/QT/zsRqc+dPUfADc
	tKgG1jY8zgsCaCM7Wi7qcW9/sUuvM/LEJe16pGjVLFtX73YmdVnXRwE5b0BFNlpwX13WWIG6v02
	tvqrC54GwhpPjVppmTetn3mHI8GlCG+gZlzlxSXWa8vRSCeUmt5gHRpdyVGnGpHpN
X-Gm-Gg: ASbGnctZKIBUiaGZnl4YtNDQRve9vzOTiNGmRcDuB9NEKO7FfXmgw7VpJpntpkAOz7J
	7gq7ub0ntjcsZdPBKWoAtypx4NPbx8wAiDW/DKmD5/ztcVJjG9O2Tb5OmqvB593NCJxdrt1KBRF
	uCwYU2x0oPOXg2MqT+V/caBb6XbTcNadpGh67kz2nc4PDJGo/kDICEPC/Lgpl3wU3zgBQPclKSb
	DcakjP9REN3aBTqvHDlOayeaKCILlz9xCyeuJ5h/v7APss2jHRx1fLOvDbV1kSrHq/AfXvjxQNv
	IZ6oNZTWRmizlspSrNojjCF5GEaTvh1D19yfaNBtY0Wp2xcTOPdT69m58aSolfj1iSVoOksfdbt
	kwQKkgzdeOeN+ehGVQtA4HKFON6ucPn1S78hjA1kcOLE9txap8ncy
X-Received: by 2002:a05:620a:2617:b0:7db:52b9:2060 with SMTP id af79cd13be357-7de06bbb9acmr3084722385a.36.1752581158906;
        Tue, 15 Jul 2025 05:05:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHIm9VPHvsWFqJ0lg2fwfKKO9Xor4P4bNsy7V94yiewt2Z36zolTE2cwObNp3IrftJTJDg+rw==
X-Received: by 2002:a05:620a:2617:b0:7db:52b9:2060 with SMTP id af79cd13be357-7de06bbb9acmr3084715885a.36.1752581158361;
        Tue, 15 Jul 2025 05:05:58 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32fab8e4b7asm18929411fa.75.2025.07.15.05.05.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Jul 2025 05:05:57 -0700 (PDT)
Date: Tue, 15 Jul 2025 15:05:55 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Chaoyi Chen <kernel@airkyi.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>, Sandy Huang <hjc@rock-chips.com>,
        Andy Yan <andy.yan@rock-chips.com>,
        Yubing Zhang <yubing.zhang@rock-chips.com>,
        Frank Wang <frank.wang@rock-chips.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Amit Sunil Dhamne <amitsd@google.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Chaoyi Chen <chaoyi.chen@rock-chips.com>,
        Dragan Simic <dsimic@manjaro.org>, Johan Jonker <jbx6244@gmail.com>,
        Diederik de Haas <didi.debian@cknow.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH 3/5] phy: rockchip: phy-rockchip-typec: Add support for
 Type-C TCPM
Message-ID: <eqb5m22om6bx2ypjtnlwdjmgfyycpmgrlvro34xwlwjj4j2jeq@mrarg36wetp6>
References: <20250715112456.101-1-kernel@airkyi.com>
 <20250715112456.101-4-kernel@airkyi.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250715112456.101-4-kernel@airkyi.com>
X-Proofpoint-GUID: EjFjlpGU2tLYJ5bYJ7CxjrQj_omi1ohw
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE1MDExMCBTYWx0ZWRfXxAbTwgXrTJYP
 UZIg0Yw/WyOCwnm5t+DeuPvGaT7YD/31pIKeBBoA1u175LmRyj1urTE5xn8vo7rB04DO98Ew+HD
 iFkDCOX9YStTGqsyXJCpecDbkFPpwUZJfO5tQeflAk9ASHaLXoczPD+kTNT/K9eqQlnFqqxCCig
 EUgZvxazRwmJ3gShz5O7MiJ8hQKAoHBXdSE81H/Ji6R4IsKin730o5q0k8Wwe3CiWrq83EKZzj7
 +vtD3P7m1yeItVPREDFQ3abdYzXE7pYxh2uhdQB0dfvSsegB8T5MIVOndxr9tqmdQ2PWuJ23dPr
 YvJwQNWzJAeSdJTd2ImAQq3xFkAXYKnZUniXo72JEqh6MO64AibkdijmMwLABhuAtPi8GQnPfhT
 QcoftB1hCU9+VFEluYUx7s0c1oWtssvjChn9elaF+cLdv8t6Tq27wetpU+fUIp+TTypWFCWd
X-Authority-Analysis: v=2.4 cv=WqUrMcfv c=1 sm=1 tr=0 ts=68764428 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=Wb1JkmetP80A:10 a=s8YR1HE3AAAA:8 a=8-VJQ8zMMZwrctniyC0A:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22 a=jGH_LyMDp9YhSvY-UuyI:22
X-Proofpoint-ORIG-GUID: EjFjlpGU2tLYJ5bYJ7CxjrQj_omi1ohw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-15_03,2025-07-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 mlxscore=0 mlxlogscore=725 bulkscore=0
 adultscore=0 priorityscore=1501 impostorscore=0 clxscore=1015
 lowpriorityscore=0 malwarescore=0 spamscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507150110

On Tue, Jul 15, 2025 at 07:24:54PM +0800, Chaoyi Chen wrote:
> From: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> 
> This patch add support for Type-C Port Controller Manager.
> The extcon device should still be supported.
> 
> Signed-off-by: Chaoyi Chen <chaoyi.chen@rock-chips.com>
> ---
>  drivers/phy/rockchip/phy-rockchip-typec.c | 335 ++++++++++++++++++++--
>  1 file changed, 319 insertions(+), 16 deletions(-)

Please keep TCPM implementation under drivers/usb/typec/tcpm/ . Create
an aux device and write an aux driver for the TCPM part.

-- 
With best wishes
Dmitry

