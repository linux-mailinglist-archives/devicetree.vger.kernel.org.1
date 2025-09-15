Return-Path: <devicetree+bounces-217548-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F1B4B58288
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 18:49:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C7D6C2A2866
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 16:49:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 911C6285C91;
	Mon, 15 Sep 2025 16:48:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oxQU6Bdv"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0519521FF25
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 16:48:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757954925; cv=none; b=nF2A0z48FlRubV0zN1FoIyAdOYtqxn415MDvFcE1teVOv4ga7Sm6HKojl04ir84Pn+FQdCWa0cGL3uAIWqXaJ6DgSHG57PIThPJZU3xaAenHwhfvUXy1/AzKRd8k4stXByTBVfBhMOVUjM4xrf+ntyHXytGaZbWL1P2FMwnLYl4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757954925; c=relaxed/simple;
	bh=nwJS9qEspbxpq4mneOqDczMeT37Zd1vT1vWWj4f0Yq8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=CoXsZXWzDrsmZAAGxBRjOO83NDNT+kJBEDer+OpjL7esAUmrbVVH1WKBhA4gC5kKbO0Ez/2tvvCI8QTJf8uuc2VyqxCPLQpbLigpMcbx/x02AO//AWNJlFwHoZk5oMnHWMCUG8dfeeXiKMq/ZP26VYJZe3NeHE3S+MHwoQZFDjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oxQU6Bdv; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58FDx2PB018062
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 16:48:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=qtUff7GpnhMs59SKsoOJoYOq
	908txK1JBO9Lr8PYHXo=; b=oxQU6BdvwUMGx1j5+mNby8UAn33dYpCPFoKN635b
	BfxL7R8qHqaNv7mK+BjjmARUYpyrGtcNsK3jQ7qzOGRPM7Q+80LrGmnOIG6XPNsd
	z/vm8NYIVFHvOYDmQPaHfouDavEanDQXk7Jke2s1GE8Dw7jbNB0dj7CAxq5QLeWy
	iKCme+w5tJUV28LS13ifHne7uGnLzqSVHyLsMGPacquwAINQ+FkAw7eT9q+I9xE+
	9RxEHLAf7oxoai9dhRqM4kgw24ORMkhg9vohkGRmzSGaV719LCz0nOaJNBzU7HqR
	8vDZE/qEb6q2IJW/pXhvqYzmUDvYwBdzjvzyJn/NWWs/eQ==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4950u55qgc-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 16:48:43 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-776164a4484so51277376d6.1
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 09:48:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757954921; x=1758559721;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qtUff7GpnhMs59SKsoOJoYOq908txK1JBO9Lr8PYHXo=;
        b=U8VaRyVxImKWXZoo/2w0aAQThJ6l4ahOVz6IrcxOeMQXv7cnHLPTn10HlLpbWgPmXv
         cssQTvQCV7SI2KVcxpfY3FoHVIEmlVRypOq/KVELhDXgJTTaXJD28C1CtX0f87O3vaio
         nG6Fr5SjvhPx9aw58cJLgePKqdSg987a3oKgsSga9gUSoy2f863uwxvSK/mGPLIRcHgm
         EPqekLVmCCNBT00M5CQ+cxIWJHco45yuNSp9naYEfc664BKXiFSn9c9nurZ26URsu7NQ
         CNFi1E++ACA5qUmKQ7ezNZxEj9LuOU+oD5paOUpKdRD1Nza28fcuc+/pIR/eVwsM2pf7
         knEw==
X-Forwarded-Encrypted: i=1; AJvYcCX2M/+EgEZIqITa+9EoEDWVzdQSCAVzOhsstmo7sxDn/N7xl4MrKsmEE9vkgSjyBp8Ep2y1dYVOCJvu@vger.kernel.org
X-Gm-Message-State: AOJu0Ywzf04kLi/ozxKc/bax5ySvhyjPMAcjl/xLiVNebwBGwwf1fslH
	3kb8UpBdzoVcFZileYtjlW08ADMonTRLjo1oK0vVa5wY9YxyjQVT/uwlN61G4P1FOyknWYYKRIY
	VRYRW4wiBoNFc587Q2CYdfw5VkUIWR55H0Af1S8Kmui5CzypJ9kJOXoRBXa8XD96fK9KIIaPa
X-Gm-Gg: ASbGnctk5hE/qx1EjiajNZy2HdYahqNBQKPAMErTWYQX6NSUf2ZpDIG91m/YQZ/Pram
	SX8yZTBLzpK+U9vPUn9Lh0hDOi6jCYRAzDMPUVD93P7zYJhK9M7ZW3H7Mkz/etZJzRcZqow9f6P
	00TE1GGPTb6rSawAjHy0YUko485Q7luM8+fjb1NDU8VBjPv3t6u88ngZV8q0dNClJb/MWkoLRqM
	3/rjv6EmNRQMT0C30pVvzo4MqbiogZr7WaZ/ZGf8JBxtF7ysq98IBd0H2B8b4prygpL5O+Bm1z1
	1+w8NmSYTw+fv7Rib8rGlR7V2G+15wYWctKQyIVJj5H2T51xSMvM78Y3bgCv0+D2XBjOi0/TIKu
	KlaX3f4NTI0FfUW4l5MeWpx982LC06RyFDk68nez6QBNuggj5zJcF
X-Received: by 2002:a05:6214:2a4e:b0:77d:3048:3b49 with SMTP id 6a1803df08f44-77d304847a4mr68275306d6.49.1757954920883;
        Mon, 15 Sep 2025 09:48:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGH4oGx3bjTjrUfiUqVTWgspf5spSr1LkxnKsfsL8JVKYAo4+vRpO9aEEz/N7l6s7tfRKv4AQ==
X-Received: by 2002:a05:6214:2a4e:b0:77d:3048:3b49 with SMTP id 6a1803df08f44-77d304847a4mr68274746d6.49.1757954920255;
        Mon, 15 Sep 2025 09:48:40 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-56e63c63c92sm3761483e87.92.2025.09.15.09.48.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 09:48:39 -0700 (PDT)
Date: Mon, 15 Sep 2025 19:48:37 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Stephan Gerhold <stephan.gerhold@linaro.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Vincent Knecht <vincent.knecht@mailoo.org>,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 1/3] arm64: dts: qcom: msm8916: Add missing MDSS reset
Message-ID: <7slssvb2ksmmttzuptxgitc6tljswydd3watiwnjbila7aumex@525iupy4eecs>
References: <20250915-msm8916-resets-v1-0-a5c705df0c45@linaro.org>
 <20250915-msm8916-resets-v1-1-a5c705df0c45@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250915-msm8916-resets-v1-1-a5c705df0c45@linaro.org>
X-Proofpoint-GUID: q2ZGLn0eD6IUja632tT_FZzZGU3BTVCM
X-Proofpoint-ORIG-GUID: q2ZGLn0eD6IUja632tT_FZzZGU3BTVCM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTEzMDAzMSBTYWx0ZWRfXyV9n43D3wMqc
 T83TjLwlt/WFFj8Iyt7OTFAlQNtO5Q5mVLT9jRR2CsbkWywRgBGjgKihwHV9jZY51+NBMCQ8l2c
 7BY7Tv+/1NjSimFYaJDLtXNm7fIiXnI6DUST1Ec9QTgdV43o6FkVbpSHLQSbxz6xCQfqMcaAHkl
 P0QE8IvsdoRph7GqymI6PVf/NXtG+QAiuoe9FDQpBreAz91/SoxYt6RQww5/IWx5KwDxalqDQqY
 dtBd7tTqzGs9v9bRXVjmgU8gEU3hGK2I0lHcH9s6cz+9/NnjcefjxuLtR5765x90REMA915PqCg
 C+cpGVUisCz6OW7Fu759qXJB0sy2DZsbPepSgl1BBipuq2MCCMLB/UMVGTEV/J5wm2aTHSNjP2E
 mKNNYHbQ
X-Authority-Analysis: v=2.4 cv=JvzxrN4C c=1 sm=1 tr=0 ts=68c8436b cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=DXmGxE4PG6Zmd65NNY8A:9 a=CjuIK1q_8ugA:10 a=OIgjcC2v60KrkQgK7BGD:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-15_06,2025-09-12_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 suspectscore=0 clxscore=1015 impostorscore=0
 spamscore=0 adultscore=0 malwarescore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509130031

On Mon, Sep 15, 2025 at 03:28:30PM +0200, Stephan Gerhold wrote:
> On most MSM8916 devices (aside from the DragonBoard 410c), the bootloader
> already initializes the display to show the boot splash screen. In this
> situation, MDSS is already configured and left running when starting Linux.
> To avoid side effects from the bootloader configuration, the MDSS reset can
> be specified in the device tree to start again with a clean hardware state.
> 
> The reset for MDSS is currently missing in msm8916.dtsi, which causes
> errors when the MDSS driver tries to re-initialize the registers:
> 
>  dsi_err_worker: status=6
>  dsi_err_worker: status=6
>  dsi_err_worker: status=6
>  ...
> 
> It turns out that we have always indirectly worked around this by building
> the MDSS driver as a module. Before v6.17, the power domain was temporarily
> turned off until the module was loaded, long enough to clear the register
> contents. In v6.17, power domains are not turned off during boot until
> sync_state() happens, so this is no longer working. Even before v6.17 this
> resulted in broken behavior, but notably only when the MDSS driver was
> built-in instead of a module.
> 
> Cc: stable@vger.kernel.org
> Fixes: 305410ffd1b2 ("arm64: dts: msm8916: Add display support")
> Signed-off-by: Stephan Gerhold <stephan.gerhold@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/msm8916.dtsi | 2 ++
>  1 file changed, 2 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

