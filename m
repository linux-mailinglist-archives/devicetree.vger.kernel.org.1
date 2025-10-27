Return-Path: <devicetree+bounces-231499-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id D4D1CC0DAE3
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 13:51:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 1BF07500E02
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 12:41:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C76CC301482;
	Mon, 27 Oct 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kvhJ+CqQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BAE64315F
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 12:39:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761568793; cv=none; b=ZFCLrFmKYlIpDM6Ci3IsrjhuIgfJT4AVBgNk6AHFCup0ddmae7pXAsSfqSeBMoR1sl0D5EOZZJ8mO2tIWrV6pJXgDHvBArrzA6DQmaCRvjIcleI28MpP4n8qOyTdh+wdmKFKyzRE2JdTBghWyi0r7g4/+QnZcJRaSJpMZ5HtFYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761568793; c=relaxed/simple;
	bh=lII6u1153jXK7yIvSiss2MRwBO0uCHE+B1I41RCrf44=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=XxObezWKUNHHLRLi6y8Wu8bXRPspqCwtQZnB9vhmCucQlpf4hSHGndcWE6TcEjU58YX4A2+PPoZ01/SSdBzFTFxjm55y+WyT92+G/J19q7W69nzXRdZOKqepBADuMV7AegLW3uhZG2n/AaLn00il/SeE9NwJxad82LeMi/I/wMc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kvhJ+CqQ; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 59R8TNV01094034
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 12:39:51 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=/rsr7uUBm8i8kH7yFAmBlcni
	G9FofbwGslfcQG/PTJ4=; b=kvhJ+CqQOQkjPo2cVAGfDsuL4HWLYOBffmy/ZTgH
	Popr2gHEwj4bIx+0dYTh3nhDAn17krh++oEtWs8VQsk9oYQ2HNgJtgRdwd5j1Sgx
	6qJmwJynIz4z4Xj9dkazjaJmK1pEwMKfD3d2KxAippn78mA18EW+ZNyB+koL0Tg6
	WwHLnn0zwUpBaltFe5uENtOWBoYPVsBZp/Laf/+v1N+DunkUPbsJpgY3YJWb3zlE
	TFL0d/zeKdgvuNcruDqa8BbVIQmVFx7NP/Orb9h51nfAf1jj3GUFuSSpLoxD9Jo9
	8SDcaCpND7fmYiOH4kaL01O2KLjz6qGqkJhvWXVkRWxf4g==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a0nnb4muq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 12:39:51 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8a3f828c9bdso236574985a.0
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 05:39:51 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761568790; x=1762173590;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/rsr7uUBm8i8kH7yFAmBlcniG9FofbwGslfcQG/PTJ4=;
        b=HAmNpE9EsERqWZWscnEUbDwSDFi0BFJii+tVkc1Eu4xBA6x+Q/eDP92UpaHtL7Cciu
         E7vUnIsBqUbr+E+PuJTKWDuM5n4AYdV7ATJPpU2EjoWL5KBe5VXT6adGoV7aIIX6JsPU
         3xqWyUmoi2oTYPpPaB/QFH2Uqugqj0lvJFlYBNI+/DLT1r0Tiks7WPFyB0qoZhX6zpB+
         VEZ+oHPJnCZNZ5PM1i7kZUxuB1ScHHgFQVeciEdJSWJe22RMZOLnbBxNelPe+0WCMDYe
         Hd9PBfS7A0Fv8303o5JZ+gyNxyIi/NimPnyiOks0m/xeAt2oPbBebhgPuDBk+UmMzOIm
         HZ0A==
X-Forwarded-Encrypted: i=1; AJvYcCVfbatJ0q9NHNjDoHbaBTgVcP0vyPNT9LeXaDV/GHeP8BeBAKQvp4pB5IOrcyCZpv7oqTcdNlRqSlb7@vger.kernel.org
X-Gm-Message-State: AOJu0YxXAGxCrOOlq7cWWfIvE1vFhjdF6VSXbBNy7SbdNGwZgUMNHo94
	RvRBi9bmbIgrSX2YsInB6XsPV0yKQdZybgFSjRxoYAD7tHmgMhfL/BdR7pMyZYqrG321zh2/+1b
	TaCyFxCMITxj+XNlj8Jgm07KdeJX281NzhqeSaPcL1FwSeCXifLRnmDG83Bk9NAp3
X-Gm-Gg: ASbGncvh0kGf9w1cMXr8S3Cq/0M4n2Ln3uS15Ya2PSqULS7gXvZ/TinTsvHwhaBwAcW
	eoIMJIK43F8PPseFFJOZFpQUJGmXmGGz+bUfJ8eWEBKkxM79x158UeLALQ4BPdW0xXcRtPVhgIb
	XIDeJZBEUax4gtayylvCwg4luQmdho1+xz7jONWL3u9/Vtm4Uq9b2ba8/+aFRqZ3MsMtsaKy2U5
	s+LHQsAs1FARrTg2ilqCJCaPusrLgSvvOXL8716j8aSA2pna0mjyyha+q2vTvJbjHIWYcCgEyWp
	oEeV8HAWbcdg5AIt386X+3ICJso6DUAhPPyoaDfdwNPXHPAIakJEwk2sCESIFaIbyYZc9NEp9F5
	f3EPl5QD3wLDajVczuJyrumWXoK8lE2AwF/gIq10vlq4iONQl1oIITef3T+sJAGeO11ryxUfCRx
	nqUWGhNzrkEttn
X-Received: by 2002:a05:622a:5a98:b0:4ec:f3ba:ceda with SMTP id d75a77b69052e-4ecf3bb1e3fmr44759691cf.65.1761568146653;
        Mon, 27 Oct 2025 05:29:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEbAPmmSvzR7IiPpq3HlUcctfPxA/tqwPBS9g1DPUfBmIKxr6HJf+bYxHzHjkN1JS0U1LBubg==
X-Received: by 2002:a05:622a:5a98:b0:4ec:f3ba:ceda with SMTP id d75a77b69052e-4ecf3bb1e3fmr44758051cf.65.1761568144757;
        Mon, 27 Oct 2025 05:29:04 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-378ee0a56ccsm19486411fa.22.2025.10.27.05.29.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Oct 2025 05:29:02 -0700 (PDT)
Date: Mon, 27 Oct 2025 14:29:01 +0200
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
Message-ID: <7dxq62ltoeerb4g2fgchb2hd7eomvlexfgyvamxsuuirblavtn@4bg3dy2bukdq>
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
X-Proofpoint-GUID: J5lsZaxoZRcXdB9spy6SdkztYM2lMPOb
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDI3MDExNyBTYWx0ZWRfX8cq5kZ5C0G/h
 OaRtkhYZX6nnP7FIxmR5tkhhGmUDMdZmmYPwN3P8CJwdj6ImbOzki1HhGWz2gOvSjIt343pUZxp
 iqPQGPFJpCsFXa+WZo7STCeU1crbxaiuZxA67OXWYa0Q0FsBa6TZVf0vPEbcdYXh1xPuw17Li+T
 YiCRfGnpousBXMlQJdtwZ1Fg13pH++8vDJ0FiUtdtkxV9uYQ8Sdf+SeXNwNUPgDI870O4ozAP/s
 ceYj/ZOZtvr8PhD9Beival8J2D3MdNy7npk9VSJdVMkIO2So0wndlCFj+L8QBnMoa55GwZvkeVK
 nPN4h/kO/kqZA/TslrxIqe2aQdMg1vQckxv3s3uHRALq+/NiNsq/LUncGl9DianlwBahIG3XJiy
 cW8jATJHzsA7mxa2DCeG+ca2Oo8inA==
X-Authority-Analysis: v=2.4 cv=AJoZt3K7 c=1 sm=1 tr=0 ts=68ff6817 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8
 a=rYq5acLp8HI6pBODZ1gA:9 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: J5lsZaxoZRcXdB9spy6SdkztYM2lMPOb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-27_05,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 impostorscore=0 lowpriorityscore=0 bulkscore=0 spamscore=0
 phishscore=0 suspectscore=0 clxscore=1015 priorityscore=1501 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510020000 definitions=main-2510270117

On Tue, Oct 14, 2025 at 03:38:32PM +0300, Abel Vesa wrote:
> Describe the Universal Bandwidth Compression (UBWC) configuration
> for the new Glymur platform.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  drivers/soc/qcom/ubwc_config.c | 12 ++++++++++++
>  1 file changed, 12 insertions(+)
> 

Bjorn, do you indent to pick up this patch on your own or would you ack
merging it through the drm/msm tree?

-- 
With best wishes
Dmitry

