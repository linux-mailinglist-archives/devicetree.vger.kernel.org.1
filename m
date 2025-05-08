Return-Path: <devicetree+bounces-174864-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 82DEBAAF1E6
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 06:03:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7365B1BC2FA3
	for <lists+devicetree@lfdr.de>; Thu,  8 May 2025 04:03:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B5E2F1F561D;
	Thu,  8 May 2025 04:03:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="lIr0Em04"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DA0719BBA
	for <devicetree@vger.kernel.org>; Thu,  8 May 2025 04:03:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746677005; cv=none; b=issVnVi5sq0uvyW4yK1u8++zSWlTUDX516K4Lo/lNtopRrkYOfD5IYWHVa2i96gRB7RKTAWDF+KRb61SCQ8QFXm9U1PS3At+v7KteB7CqlMLG3xDT5Mcf2b1hOLLhTpD+1gfh/iAugeqyl7Ug39EowOuOnbSVgUs2a/QVqTkHXw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746677005; c=relaxed/simple;
	bh=FdXcjbEbad1MvTLMck9BvVGpVGwxPcY9ao+oUboDcco=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=up14gkKcvB/fAMT2HcADfjL5H1fwPL4BuPT4bJmUHK1PaD4Hq28Pqqz20/iUp4ngYq2+dPuvfzepPWqvMmwQpdx2/3PcqHVp2yqFaHqMS2XztRjs2rR1nTX4X8YUxQk/EXQ30vCVMkG1Ge/OibO9rtckekuNOi3dHIF3El2mgRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=lIr0Em04; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5481CEf1006239
	for <devicetree@vger.kernel.org>; Thu, 8 May 2025 04:03:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=WFGwx5PZ+G/9BxcVBebd00iL
	tXeXpkwlaZ/P+6/sls8=; b=lIr0Em04WtZl73eIUNkTUGI0JaqxYlvgs/JLqJlF
	OJhiYw3N9NXkePvJM+V/qosXsoViXifU83bw3AIlcsfYzv5h/XR6V+aA7ckOnLPJ
	qjcHtdVMCZsAsHltv5hCpRvjIxk1Yv1gzW9ILZQFAEAKq1QsnZjzrkt7xEIaLDOR
	5tGH9wJ7jz+Dpb/dKf4PhG1HRWcaQJDlCdxvWZLaHEb17IEB8I294Ub8XbDcJ61t
	6Cp/7TkAlYnHUxjg30Rnv3OCFnKGgHKHrQLSbZEagbeooCm3GylYAawzhQmMH0rv
	Iikx67Uy8lFxRjAJf1kWRMw9YvzAD95kbXTTKfGs53omiw==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46gcyhs2f6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 08 May 2025 04:03:22 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-7c790dc38b4so124824185a.0
        for <devicetree@vger.kernel.org>; Wed, 07 May 2025 21:03:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746677001; x=1747281801;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=WFGwx5PZ+G/9BxcVBebd00iLtXeXpkwlaZ/P+6/sls8=;
        b=b7YtgCI+9WzQ61hOOSLBAj+8LlRNDl1XmCzwzxJ8K13jKucSKVm9f0QSCgcOmkqKwE
         7/gZKDuskYhXLAI+ZgvVeBHJcQPggcRkRwWC5PBSr/igu9RPpAw8XDFGv1pM/FYSHYvw
         UeqUNczYDy6QBMWd3HOu2q9/17kjaAoQxK/fOsQHfG+3PN3x68ZasTY4y24Af0gTgJjf
         r7H6L8AURNovXtd7N+1N9TA9ffSpccCK7GvugIPxgelTGTXDLF0hLZp9Zg3/7w88WDCR
         h3VNjoRgYoeDol6XGWgqhtyKeJWr0LsfNe1IxbzTRcoA9uz0G1bzK3EA102eLq3arj+b
         siFw==
X-Forwarded-Encrypted: i=1; AJvYcCXzsrHZEAMXo/VJHCmaDkE/IauKaQWJuUETWxYYTAL2CS/yZ77d30JAUYUy4C7VjHcVM9DScIu+H1++@vger.kernel.org
X-Gm-Message-State: AOJu0Yymnykv+F8yImSxh+tcL1XgKeHXYauKNkQ/OzKWcW2yvuMszBnU
	ytwfl3JwrxIWTPsDN8ZlORL3/AxsVPiqrKNq6l/ADvA4Q7rgtq3BUaWjpC91aWv8LZrIpHOuSv5
	dh4KkP/8pG6iN7OYCZr5vpgv52KrTJ0vyFP0bl7KJpjzhOn22z5bw8KHc/V0p
X-Gm-Gg: ASbGncsbXtDpsd8Hjl8DfeADw5P1EivAO27N5NLa9vpmAzF+Ap4/lueJ07hzHtVTgti
	Luy//YJv8NgKydnXL4UtnUakoRRSOXoJ8R1uJwuQpMLoUUdrpMuenPponiQMCm+anLZ2Rn4/V+j
	SSlmLFHUwqFFYbFItDR82Cee3u3Kjy4vklKqvxwSFnbbSjZUDeTWVU/3Vx3JEeKXfz8AhgeSL8r
	2b4S5tM/JRAmZ0sHK3aUkfv9uloBUr4EjVQYOJHdB80E5/S+UO0YhpyNszQpW1vZpRrP3jws7+R
	4wNVgjjujS73wSZBZ/ZmnGjPi3JYTAoL0wmFkajtFavc9UAmZz53TPEaSdsuNndyutYihNRS1Is
	=
X-Received: by 2002:a05:620a:8002:b0:7c7:b570:e2b1 with SMTP id af79cd13be357-7ccf995e1a1mr366749085a.7.1746677001622;
        Wed, 07 May 2025 21:03:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFCvb8VK0sMuvhaF34y+RLN/zFk90fkQ04v2q+mJ14cJV9oLuze4zWQomR2mbFMyLbVM3zhmg==
X-Received: by 2002:a05:620a:8002:b0:7c7:b570:e2b1 with SMTP id af79cd13be357-7ccf995e1a1mr366745985a.7.1746677001155;
        Wed, 07 May 2025 21:03:21 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-32028b38ef2sm23996481fa.23.2025.05.07.21.03.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 May 2025 21:03:20 -0700 (PDT)
Date: Thu, 8 May 2025 07:03:17 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: "Rob Herring (Arm)" <robh@kernel.org>
Cc: Rob Clark <robdclark@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: display/msm: hdmi: Fix constraints on
 additional 'port' properties
Message-ID: <fvrvrcqilnhma774kkojytlgwglsvgaxgukm2fc3gennaii4jz@dufjv3obqc7b>
References: <20250507215912.2748964-1-robh@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250507215912.2748964-1-robh@kernel.org>
X-Proofpoint-ORIG-GUID: rmXsTEH61hYiV4yZag_GohG5FyAuy0yh
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA4MDAzMiBTYWx0ZWRfX9qthdeCBrcl9
 I6VLq5wpzRGgzEx5WqAizGM1GXxjwFOUbWZShH5ET7zmAVR44wvP/8xx7RkBAigXzBAyMRyttDG
 AZq9JWT6t0hbvM2sLOb2k5BkRQY3q4joXkoc7Z2Ph7oF6IVbA/m09+pxQqpaKFOtUzzPC0FK+Bx
 o3fH4FczxAcC3EF0z91yZXuqHhZD02l1bI1VAh/1gL1UEzu77ljPHuZrdYeJTJu8wStydj5UJqk
 cR5ryXefujs68qgMcfFgsAE3QrOhwwVHCjEzjLWS/CmsoRG3nl7NSe5kjaZkMOhqlQEjfcpLSkt
 NO/zvVOPUFsJayygT0WvgISwYFbhCW8v0rm2vzM2r3SemwMwcsBhVFnHFtIhjjR8eGgPSolrQmD
 nSrYBThlTWwUvanyjSnkL/mBNhBsa3Ko+nCubePhf/zIUj8ANi8KuCFnG8CIqt49JICLVbw1
X-Authority-Analysis: v=2.4 cv=SsSQ6OO0 c=1 sm=1 tr=0 ts=681c2d0a cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=LCLtBpLZ_J7SsqHOqrgA:9
 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-GUID: rmXsTEH61hYiV4yZag_GohG5FyAuy0yh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-08_01,2025-05-07_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 mlxlogscore=999 spamscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 mlxscore=0 suspectscore=0 adultscore=0
 clxscore=1015 phishscore=0 malwarescore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2504070000 definitions=main-2505080032

On Wed, May 07, 2025 at 04:59:12PM -0500, Rob Herring (Arm) wrote:
> The MSM HDMI port nodes are missing any restrictions on additional
> properties. The $ref should be to "/properties/port" rather than
> "/$defs/port-base" as there are not additional properties in the nodes
> to define.
> 
> Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
> ---
>  Documentation/devicetree/bindings/display/msm/hdmi.yaml | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)


Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

I've verified, it applies on top of msm-next and produces no errors. I
don't see a meaningful error in the bot's message (Rob, is there a
chance to fix the bot?).

> 
> diff --git a/Documentation/devicetree/bindings/display/msm/hdmi.yaml b/Documentation/devicetree/bindings/display/msm/hdmi.yaml
> index d4a2033afea8..099274d35680 100644
> --- a/Documentation/devicetree/bindings/display/msm/hdmi.yaml
> +++ b/Documentation/devicetree/bindings/display/msm/hdmi.yaml
> @@ -89,12 +89,12 @@ properties:
>      $ref: /schemas/graph.yaml#/properties/ports
>      properties:
>        port@0:
> -        $ref: /schemas/graph.yaml#/$defs/port-base
> +        $ref: /schemas/graph.yaml#/properties/port
>          description: |
>            Input endpoints of the controller.
>  
>        port@1:
> -        $ref: /schemas/graph.yaml#/$defs/port-base
> +        $ref: /schemas/graph.yaml#/properties/port
>          description: |
>            Output endpoints of the controller.
>  
> -- 
> 2.47.2
> 

-- 
With best wishes
Dmitry

