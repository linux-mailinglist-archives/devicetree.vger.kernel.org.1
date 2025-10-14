Return-Path: <devicetree+bounces-226768-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id EBC89BDB1DD
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 21:50:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 740533A16EA
	for <lists+devicetree@lfdr.de>; Tue, 14 Oct 2025 19:50:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1189A2FDC54;
	Tue, 14 Oct 2025 19:50:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="WFhYfeFz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 749992EFDA2
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 19:50:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760471427; cv=none; b=UdTnJ4C/UsQy+Z49mYLMJRryz2lrHhe5QF26EFuHZIgBwmi4NousMwSFsBUQT9x4yXBhdEj03mOel9F+cv9az4P3/yXX278Swr7CvyXRi8cmRnC/Z5zkuoJgrVWUW0pyyD1J35zMctyBLkGVnqt4mySHVddjoKIXYdP/RB6C0Cc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760471427; c=relaxed/simple;
	bh=kvdd2VQ7EmZ8FVKXUCYA/Pag/CRKLVkhbOU8rp/HZa8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=U/aE7fQx/Rk9EGXqwIXYiMaJtEWbl99sMY+KnGm2X16G/8BnKWY+d1gn2aMQ+8VvyZBeZDZSCWWEAOv47La1Vmy7KaO+jfQ5mmcjPO3QyYH+ABLzBFZ12gpbSGOnO3+iKAMpxyOkYPTY2GqfpR8bACt09Snj8xL3oSEUTdpow34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=WFhYfeFz; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59EFLq78001502
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 19:50:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=hoXaxxAh8HM/NnL2U+whNfVg
	Ynbh9JZ3GGYiHNKdMQw=; b=WFhYfeFzTO9webJ7RVqkMZsclTvhFb+CfHvDOT/R
	GATWvzYy0L23twFn/CAaFdL8QwkfRZ77CZIoeiYSX6d3rTn2zn4naA/mWoLCb7N8
	z2RX3Dw/WocYxrfhlwbERqirPMwpAXQ8XyIMVQZ8Ic/e+eDDOn/T2b9sUqbTsZnI
	XHSroKWxZF7KHU3ijsYrOdRHrM2iICLGpUlxPhQg3KiREcQJaRIKpelWOrP4q7+Q
	NzfjAhgIb76nPJBp0XADW2qgTJe1XMVSJHP3+LE3+k53yKOuNf6xztMfHTOeKRVw
	fNc+nd75ZRMTWLdUoLtTSOYUfw6wWz0G/O0nuARhTEXW3A==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfa89tcb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 19:50:24 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-883feb13e83so3286808185a.1
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 12:50:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760471423; x=1761076223;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hoXaxxAh8HM/NnL2U+whNfVgYnbh9JZ3GGYiHNKdMQw=;
        b=Ae/CiyliJ5mHmI6yoHuulzFpNm6XExXa9sUg2Sm1RICj6jwLcS+WZIYv1u1A7s+fCo
         TIrAn/0mn4oZxVBFs8fr2Q7S+zZUXbwzYFkmb1sPVUNxNGZ3cmoD1znWzokItDV5yMdr
         jIVMcwu/2DiLaYbO0iSwTs6JWldJlHexnC+DjxunAGKlhma202JSgVfiRUdhFjVJ/lSE
         LoR2/3DgDHH3CrNCB6KhD6i9DbKaQwExx1AQ6w/kdWwIeae8cbkaibUTAoBabn3foi6a
         GOv32i0rPVCk5Hl7eQDb6VhlVft5rzIyblCuvlgxfT5bksShHeKGGgGB9e6nTfCpIoD/
         W5bw==
X-Forwarded-Encrypted: i=1; AJvYcCXTml8qlSN1jjQ2aOEityF+9IggY4XToweSazfH7Pa243g7LwGzc0jHL2+gCjMS3Lo7+zWGy6UII0sJ@vger.kernel.org
X-Gm-Message-State: AOJu0YxYgYeDpSPOKHC5pt7Ab4fvLbG0+ZdH7tnWl0c0nrJGiY5QX2gw
	y0JMt6G4hDw5g91ZqmA+dAiw/doscL34wyZ1K6ERXngQvHUn/92cNv8qO4UNUvGXpXzpVBpL7nY
	KY9XLIqEnF/LBm55AO/vGiNxbAYH4iU4tjy3CMv7BlsNdJaNEgS2S9DhXm63P9b8P
X-Gm-Gg: ASbGncvQwvoT5UIteMOiOZunKBUaUNvyEI+8tat3L2wxPOJNkrw0AbKn8+C7fsQfdZ7
	8CUm46wRI9rRvXP2HfFpow41FbLxDiIJm1nW0/PW2TW8IoCexauqIRJ7RG7XIUOZPI8ExXzofq0
	2ZKQlGfWq13y6Wmke8dowS4u7Ln8f3+sPtdZTy8jcaXovrLco414ugFed+zcOwsL+8sJGIJ5Pq5
	022fjrrX1/zcxz+xJfhEBIoKocMDb99Vpuz3nT1LYKnfS28jr3MB2ORXOTugmjuxHi6pEw8nT0u
	7V/ncBQ63ia4b+tNuBmkxpc5TTQMWPBqdq+bpZdHMvfrv656ugQnl3339JbgMjCXfMWylmJcytV
	0W0SeGDDrhnnfOnVpQ72tapoYfflEhCz4D4Dn7pDePrv9SAy2Gm0C
X-Received: by 2002:a05:622a:148f:b0:4e7:1eb9:6075 with SMTP id d75a77b69052e-4e71eb9639fmr134514281cf.24.1760471423454;
        Tue, 14 Oct 2025 12:50:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF5E8/aPEwYwGIvty7HBIiP6izQb7EW36jmKnfvDtGc+uFowF5L0vJTo44+JikizgOXq93qFA==
X-Received: by 2002:a05:622a:148f:b0:4e7:1eb9:6075 with SMTP id d75a77b69052e-4e71eb9639fmr134513931cf.24.1760471422969;
        Tue, 14 Oct 2025 12:50:22 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-590881e4e09sm5522722e87.23.2025.10.14.12.50.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 12:50:22 -0700 (PDT)
Date: Tue, 14 Oct 2025 22:50:20 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Abel Vesa <abel.vesa@linaro.org>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 7/7] soc: qcom: ubwc: Add configuration Glymur platform
Message-ID: <f4yvyh4yg4mjuukxdee3pdxcslucj2k2icqc4d6qfzzmctlffn@gxtzhgapvnv7>
References: <20251014-glymur-display-v2-0-ff935e2f88c5@linaro.org>
 <20251014-glymur-display-v2-7-ff935e2f88c5@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251014-glymur-display-v2-7-ff935e2f88c5@linaro.org>
X-Proofpoint-GUID: QIrzDU7MQOhhLCM9dTrIP9JcQpsCSXii
X-Proofpoint-ORIG-GUID: QIrzDU7MQOhhLCM9dTrIP9JcQpsCSXii
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxNyBTYWx0ZWRfX1iDPOMOJ+3Mw
 kZjqMfYMHcjtEY2Sp9mSgZcVh2qELK4OFXLYYtW1vCLB4L7TQ+p5WtpO7myAq23sO5wS8Z2AF4a
 C3Gn0k20531a19APVgzmtCFbRGvXKJzddYX8za9wfNUVcJNfM5jPcchyAOJpW3X7HZMULLsK1Nu
 yeHopoYPGhN5OlXmavFF0Fuq4ohVdaeR0WAjyTCqXo4vl9sxNFrczuoLgI4VybSudaF5AuWU8oA
 7mBLDxQZYDZN5dsiTA8YLrzvxWWHfPMtdeXhosb6oFcgXynZy6BFvMSiKWfdPGsC9trIiGLJSxD
 mK/gWYQ/LL7keA753+eDx/32Tjvvx7cdveE/kCCI3aGJARJv/4dFQpRNjkWJOlevwT55IfG4Lpi
 v6OmBakvG7vFVM5so9jshEqY7W7lhA==
X-Authority-Analysis: v=2.4 cv=JLw2csKb c=1 sm=1 tr=0 ts=68eea980 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=rYq5acLp8HI6pBODZ1gA:9 a=CjuIK1q_8ugA:10 a=IoWCM6iH3mJn3m4BftBB:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-14_04,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 adultscore=0 bulkscore=0 priorityscore=1501
 impostorscore=0 suspectscore=0 malwarescore=0 spamscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510110017

On Tue, Oct 14, 2025 at 03:38:32PM +0300, Abel Vesa wrote:
> Describe the Universal Bandwidth Compression (UBWC) configuration
> for the new Glymur platform.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  drivers/soc/qcom/ubwc_config.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

