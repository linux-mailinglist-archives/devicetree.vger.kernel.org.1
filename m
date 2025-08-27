Return-Path: <devicetree+bounces-209470-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 68AE7B37758
	for <lists+devicetree@lfdr.de>; Wed, 27 Aug 2025 03:46:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 55EF11B622C7
	for <lists+devicetree@lfdr.de>; Wed, 27 Aug 2025 01:46:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2842019924D;
	Wed, 27 Aug 2025 01:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kCN82tVp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A45F47E0E8
	for <devicetree@vger.kernel.org>; Wed, 27 Aug 2025 01:46:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756259183; cv=none; b=bcpqO3khRvOdVw3TaFjtt0khgLTA3klNy1sGMIrXhCK1gWtoPxjkPWL+uK+CMfvbM6K35t+JBUBxsKlaXlwT2X7qIjXT+NwrfysPQ/fWI3cfLgXwSTB2bjw1HX8M65aOiqmnZf4IC/PcsQagjC5qluPGiAASvsWfiHEXZPNLZMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756259183; c=relaxed/simple;
	bh=uHzyck+siLD+tOu/TdoRD1xQ1q3Iueco2prBlfJYitU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZF+0KlAXqBXv/l4MS87V+V7blr+jmqd30gOvkXMUvOSgzhZGZYOAjEYy/Xelluf/tPx2Axrqx3ess8tT2x84wthPRpepa8e4bfO0sZsjjcPcQJWR8GJ4LIUBQNCv4NAknIwAuv+EKeX+uYuhSF084jk/uznmPRDw3C4YjLttc8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kCN82tVp; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57QKwCqg018243
	for <devicetree@vger.kernel.org>; Wed, 27 Aug 2025 01:46:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=Oz3En/JYTYFCxC2EmpZCft1U
	VWMM+pon7GAYlfebkqQ=; b=kCN82tVpnjlVlG+5GA8hsW14OHO79lBv+sxnNDcK
	8hTYBY6cdapB8qYp5TbEjSPS8Y13xllvVGp5st+bYKxEMf3tFQT4EuYLbPwm/Eat
	RLTvV6HGesV/WEc76RCg/jl2IRDvCS4AkTUDxuvXQ5dSoWCtflXcQdVvnSfMAGMj
	jujoIx8y/+3JMMSmYXj6KGH8na3rTbK8poD4vtiYVeR8fSHtbyYccmezELC9086X
	Q9jcX0IO+8+oLfgbo6pnNK0aIN7taEiZ36xoKXKpuHW24XgKOMa8kdTKoZYWkKv3
	61Cpe+ACYsqKLu4KLTw0PMp1n8AmH9y1xuVvBd4wmGbu8Q==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48q615jvmk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 27 Aug 2025 01:46:20 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b109919a51so268418501cf.0
        for <devicetree@vger.kernel.org>; Tue, 26 Aug 2025 18:46:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756259180; x=1756863980;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Oz3En/JYTYFCxC2EmpZCft1UVWMM+pon7GAYlfebkqQ=;
        b=EyKXXd4GF04d54wK9veq7VvmVf5EEkUiUBhS7cyruPINAHU7+NbZ2+7qOwLZe8WIl5
         supD+h8P+NwIZrm92gvI2eCgE2kZlnqYGjj435PbngSD4FgeQd4WaAfwKwIljBFWCDpT
         pv6mcwgUBD37H3/0aOM+2kliKmlgYytKooVKMqlN5RXkvHZRQGptoxGSn86NqdlQhHnB
         ZZpguPtqUrnzCQTgDxZo/reyenyV5088c1a+zmTQ1pBO0F1eJD8uz9DHqr3G9oIKkT09
         LoaoqqqOAMws/rNYJjGArzLz48Ajaj0jiRQYaLTPwJX6MCDhkpZs5KKMPaGQoFh039Ry
         1Cjw==
X-Forwarded-Encrypted: i=1; AJvYcCVpp5UaNKCctY3SQKsYVCde4Zosc1dWVDqUmnPxBlytCNC2Lc8sPhoRxri/KXVsjpJ869rgMxcJ2FVF@vger.kernel.org
X-Gm-Message-State: AOJu0YzFUh9FwXzTJ0bGIBW/el1yHeTyK/ntFJ03048sV2OdR1XsW29Y
	9JS2ItBWMv+jOT6Ue9AXyTaoQsMhABc3lkHtgoH72+6BqJgRfr2PSdJQednZVznu0MGF2VkY5ih
	PgHlFpSghNI1YbBm9e5r6nFfgl8AHEV+A6Kq9ik+o5tCdRBhrSQxGJq4231cu4Nh5
X-Gm-Gg: ASbGncsv2C6ZAS6FOmQNQydkoW/JQgKuhcTGa3FQ/W1r3le1E7Z+Jf9YrII5PZ0KDB1
	k5BE+eA1z1McoftNIwx8QICDtMsuMoKC5xBSZTOgoYYxBvFX4VMcf7nJob17u9Zl59JKJeSbF74
	a3wjyQKvNQqkrapx3HXaz4YsJKJprScPiAtXRZxbnBqlCxq1PbjnFNI2fSaKlqss0RKH4jqgVHS
	lrShDykq3niBJrn7JWvvAF9DjV6ODo03RRkTLI6/vGu4u/GOHu47XdWeQP0rqE6+x/B1zUmda0r
	iOrm/dG50n91nR1aAk/luEj1juQZibRrK5/Earso0JYxS71vZW/hYKlIpvKku1GL/xdD+iv9jqr
	MZUr4bjpQlmNY8s3KfLkiGcr4PPwR507ShFTsWeT/1vf0LHn6J1mQ
X-Received: by 2002:a05:622a:11c8:b0:4b2:8ac5:27c0 with SMTP id d75a77b69052e-4b2aab513cdmr197290141cf.75.1756259179966;
        Tue, 26 Aug 2025 18:46:19 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE1nVQaEjGAMalegWCB9er9TFUBVM0KcU+1uQdurKxeqheISmPpprI81hhufUBXLp81Ki2Q8Q==
X-Received: by 2002:a05:622a:11c8:b0:4b2:8ac5:27c0 with SMTP id d75a77b69052e-4b2aab513cdmr197289811cf.75.1756259179417;
        Tue, 26 Aug 2025 18:46:19 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-3365e5d1e5fsm26038931fa.52.2025.08.26.18.46.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Aug 2025 18:46:18 -0700 (PDT)
Date: Wed, 27 Aug 2025 04:46:16 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: setotau@yandex.ru
Cc: Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
Subject: Re: [PATCH v3 1/3] pinctrl: qcom: lpass-lpi: Introduce pin_offset
 callback
Message-ID: <o2vsj7rfovoo6adwx7nhhi5g6vwowquux72m7do75g6sw3fkwf@jw5hxi4v6e3o>
References: <20250825-sdm660-lpass-lpi-v3-0-65d4a4db298e@yandex.ru>
 <20250825-sdm660-lpass-lpi-v3-1-65d4a4db298e@yandex.ru>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250825-sdm660-lpass-lpi-v3-1-65d4a4db298e@yandex.ru>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODIzMDAzNCBTYWx0ZWRfXy92aorImLwCc
 R2jUqvQD0WiBc8LPLiPW5GGcCEQtP4vaEXXZnmwxyhSYlw/gL4Ie6mDo0rF6XH7L9W1odx6SWtS
 hNkMp97e3hqc1OjSYbjnH2acXWBjRLC+NWCxlc1kFfODj1saMQuDftXKxsrYRfDBdmX2Aq4RzY8
 FkKXzXwGvnpAonRigwZ5F3B8jJF/ntE84y/81NWKCwVczi2vJa/DnbwIQetE8vonLOs863fDPgq
 qhmNUQQAWSSes0IOizAH2ENvOz1/eunN11+MiEmib8cV0YvHB1ey6eKtUZSY82Q2k7ds05YkKLS
 Tn6We0rdlbW2BInlUkxWwft7ICWAnno4xH6T8IS2VLdWz8PyJ6jmalV7ejAkr6gvHMX2BOPLHIf
 IcwCQbCY
X-Proofpoint-GUID: y87YpK9ZiAEZBzHARKZx5PxxkJnmdz9S
X-Authority-Analysis: v=2.4 cv=K+AiHzWI c=1 sm=1 tr=0 ts=68ae636c cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=qC_FGOx9AAAA:8 a=vaJtXVxTAAAA:8 a=EUspDBNiAAAA:8
 a=Hv2uq9k-kH7IJJ9oAfsA:9 a=CjuIK1q_8ugA:10 a=kacYvNCVWA4VmyqE58fU:22
 a=fsdK_YakeE02zTmptMdW:22
X-Proofpoint-ORIG-GUID: y87YpK9ZiAEZBzHARKZx5PxxkJnmdz9S
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-26_02,2025-08-26_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 bulkscore=0 clxscore=1015 adultscore=0
 impostorscore=0 priorityscore=1501 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508230034

On Mon, Aug 25, 2025 at 03:32:28PM +0300, Nickolay Goppen via B4 Relay wrote:
> From: Nickolay Goppen <setotau@yandex.ru>
> 
> By default pin_offset is calculated by formula: LPI_TLMM_REG_OFFSET * pin_id.
> However not all platforms are using this pin_offset formula (e.g. SDM660 LPASS
> LPI uses a predefined array of offsets [1]), so add a callback to the default
> pin_offset function to add an ability for some platforms to use their own quirky
> pin_offset functions and add callbacks to pin_offset_default function for other
> platforms.
> 
> [1] https://git.codelinaro.org/clo/la/kernel/msm-4.4/-/blob/LA.UM.7.2.c27-07400-sdm660.0/drivers/pinctrl/qcom/pinctrl-lpi.c#L107
> 
> Signed-off-by: Nickolay Goppen <setotau@yandex.ru>
> ---
>  drivers/pinctrl/qcom/pinctrl-lpass-lpi.c | 18 ++++++++++++++++--
>  drivers/pinctrl/qcom/pinctrl-lpass-lpi.h |  7 +++++++
>  2 files changed, 23 insertions(+), 2 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

