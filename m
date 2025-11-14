Return-Path: <devicetree+bounces-238430-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [IPv6:2a01:60a::1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id A8833C5B20D
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 04:29:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 03B30346A64
	for <lists+devicetree@lfdr.de>; Fri, 14 Nov 2025 03:29:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CB09253939;
	Fri, 14 Nov 2025 03:29:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="axPgykiz";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="hbcLr7yg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 134BF222587
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 03:29:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763090943; cv=none; b=gjEJjr/MQKRKmMduS7UqVQ5NW5nYOAJwqB7qRifiBZoGdbSH9hVKZNw/lwKnNQRpn5fzW4wkoHe2NnNJrdCE/g/rJFPerQcmET37R6qRhhPu08IG0ysVUCvQBHrUx4nnR+fA0kJ8A1kj1cTuHarOdswYvxlKZSUO6hIrX6s4gbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763090943; c=relaxed/simple;
	bh=fndrMVIgWBFCr+Uy7wqtAY2KxbgmCTdMGUgMpsV7XHI=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Df6C7PN7nbn/FNMxUGEerus6PZYAbC+dS0Rl5mkU0ZBVHPYRy9ayqeGNy3irSj3ySBfLEZ2YTPo49jdos1P7zZm0B6cZlzYe6+5YA9jwnAMwgUXoFAPijO2XwaiEvQulGaP4AZU4/0QAAnrdOZYEnpf5zcUJtMC/JW23kFOp9rA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=axPgykiz; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=hbcLr7yg; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ADMarnq1685314
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 03:29:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=RLRw/8dVIKPFbjXbsiu9Ydm6
	Vif2q5juqWK5v1uJ/mc=; b=axPgykizL1fKSlToHCbkuIH2SXqajaUjnIrpDbwA
	d3pJUNB0H2yHEtXm//G16z6EHmb0G99bBb2e4x7jOXFr+oZ3kRQdFKYGXv75O0ft
	wl97bF1s4AmGf/uY46hjGHDWbuxDKQxk49F9O1nJeZltjQMf32gvDYu5xkRX2NDa
	xn3CoJ0d2XljhoPJcBPTnuZxMmlvl6Z5+IhGiQj66M2vwyzJh7hlhViFo7cUq7KW
	HvxdJXNoY+o0oVKPASBXG5pkirUlmXwEGoO2MlGn8b/8kBqaAnWGT6kYasin/PLA
	95QTN9tzUK07K6KZKy9QEQrz+meAQGZuSlK7uuw7hUbrkQ==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4adr9g0nc4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 14 Nov 2025 03:29:00 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-88050bdc2abso52269406d6.2
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 19:29:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763090940; x=1763695740; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=RLRw/8dVIKPFbjXbsiu9Ydm6Vif2q5juqWK5v1uJ/mc=;
        b=hbcLr7ygQb9yPkNdH3uHO7hVT3FT/OOMZYc2IbnKlc3qhyfPdo5DSirBh5hnfHjhXW
         kRZuOznEuLoImWbj+KwmqQ3o9Sv+/DMZOtfRA6pzoyPdWmw6uyyhP0GHXoknzGPo/crk
         ir/5QPLUxx69tVoPeTM172wtUAE323Rr7GAwt4I9o0CT/sAsw/5xBgN9suCJvewnhMQp
         tfGtA8kW+ouF5dq8HkqDr4ZN0zOkGF+tuEIYT6a6+R3al+ZSozHP7g3JIVmQ4m+wboA9
         352H6tj68x2QIRly6RwXyKs+5mI0x9bVuXKy4nb1W0MdjZaz17m22TYEnWhPk5wTLnWY
         DzYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763090940; x=1763695740;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RLRw/8dVIKPFbjXbsiu9Ydm6Vif2q5juqWK5v1uJ/mc=;
        b=A+6tCC5M2WSek+FJwT6gTqPZ+5bJid636mWXThrZtGPbuzts1Pm67sY+M2vF/cShdt
         By0iBOW8nBWhaKXGLWSWeQXh0wEsJwlV0Gyqx+r6ocXpCeM2HJDXk2SSK4ekU4octZBT
         bT2WsI4aViWbADM8AcdcoQjcGqQQszpaHpcXwDoHLUsU6/Y/YnbS/Ep/mBlYGusnYfzS
         Ck4Cye9qM38ot61BpHNiyRUObmAFQG7wwA3164t1+uPFFxCGStzfKkELBFyy8BPYI9FG
         sbbLLev938HxD1nggvBd8MFkxsJeNSXnGlRojx7DGE4c2bg2KVTm8g/GRsR/vd01SGil
         85pw==
X-Forwarded-Encrypted: i=1; AJvYcCUQlEP8aOXDASeZ4pK5ElZgpoRSvAHC4BMmGUAa7SNdpsxPyWn+/GQ+kbTrP0lz2xyk771p2m6bBPM+@vger.kernel.org
X-Gm-Message-State: AOJu0YwXkt2KsKQEjw4tsp1X8Wi5zPShpUl9mkZuj56MzXPpJGit7C5c
	CSKsYXPexnZW+kDDzgi9fazfz3HVeZYx1fc1Y1XMEO+19grDow2FyPMCi3y8X6rJlfR3bf9x/Qd
	pxDYqdrZ+3h7CEHJGHGDDgHu+tWEWW9W36mDqhdWyz9RGAvvYrhHkAFIrGBHggj1w
X-Gm-Gg: ASbGncsXnxbDdX5e/cz+o542q6wMIQCQdZvws90Sfp0NAJk6zvxNkb5BFKqvczKHaU4
	X9ePCyT+5e9aYWTMAuDDSyvZvcUHyXKGHAYweDgxlFzcvU81D2Qj+IW9zBj8Ity1gIpLG/CyJeY
	yPD1gQuYxWYGsLSvVoY93A9xGO0WXXqJgJ/lU8xMQ5oB/NvFyEPxCQPfnPs7LijqjAWx7mk2jl2
	BleVhij1dORh7GG9st41rK/9f6wka2IlSE3dz0gCBSnqe5LovmKdRqpE2ZA35wDUjMT96y/rB5p
	H0GFRAeXNmk6kcnW1T7pG/KWW1Ja9ykfJuQGI4GgIicDX6qIZyDoHSj6RBtBKfrHqKSMSoAbj8m
	z/Qr9NlyylkETOmC/XziyWF51S3201n1MeAQxchO3YFgViwn+Ev0sAWWo6Bb49cDX2Tjzj0+2RH
	mFbxv1HqODmQ3b
X-Received: by 2002:ad4:5dcc:0:b0:87c:2b29:2613 with SMTP id 6a1803df08f44-8829269b835mr22681486d6.50.1763090940311;
        Thu, 13 Nov 2025 19:29:00 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHNbTj5yJlqQBe/C642aRvl0/0QTbIg5WXKWttsGxdjFjPxIg4lzdhHzGLzAeGCFncoain0ZQ==
X-Received: by 2002:ad4:5dcc:0:b0:87c:2b29:2613 with SMTP id 6a1803df08f44-8829269b835mr22681226d6.50.1763090939800;
        Thu, 13 Nov 2025 19:28:59 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37b9cef80aasm7121811fa.54.2025.11.13.19.28.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Nov 2025 19:28:57 -0800 (PST)
Date: Fri, 14 Nov 2025 05:28:56 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abel.vesa@linaro.org>
Subject: Re: [PATCH v3] arm64: dts: qcom: hamoa-iot-evk: Add backlight
 support for eDP panel
Message-ID: <iwttmudtkcyzdgudxdwqlf7pcahbzsosvdmrkn7qngf3hp3mm3@bcrpmotsojqs>
References: <20251112-hamoa_dvt_backlight-v3-1-f35b44af7fc4@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251112-hamoa_dvt_backlight-v3-1-f35b44af7fc4@oss.qualcomm.com>
X-Proofpoint-GUID: L54AXtJmfAJ8s64h1IkDBg4er6wb9LOr
X-Proofpoint-ORIG-GUID: L54AXtJmfAJ8s64h1IkDBg4er6wb9LOr
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE0MDAyNSBTYWx0ZWRfX3zrHErb1zmNR
 hxLN+iEFNvaJZO42o2h9CAJRQcsRkhWA4MgCj4ebDAFEVJwr+4hnC1ad4g9dtp/GhicyAitf+fc
 7vxLGM7zzV6REFwRgpRxsELpD2djosoco3xNpHd7GnfgARgRpjJ90NsxOH4/tEaZloMg8j/YPOi
 u5hSjLuIMv9sKlSAcVJkQwAv0btFrQ8pJFMRzUGxaoqoIaFLyAvvJ2aLfhrM2MQzmyxEy86pK4r
 ugBpdzdRLb7n8ymM4YnJy5gsaf73UnNsORYmlNgn29MS5KdOWEu54L5RESCvWstESInrLlvRbjL
 OE/p7/mySXliqOEca8DEi4jftW5qYP2nVuPHm5zjfdmh5pnBtBHg+HeKGoH6S8y1vVZ86CVI/BU
 3wKXoGazW9rqqRn9LZrgSd+gRTDLuA==
X-Authority-Analysis: v=2.4 cv=IM8PywvG c=1 sm=1 tr=0 ts=6916a1fd cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8 a=flHQAINMbhvZ96ts1A0A:9
 a=CjuIK1q_8ugA:10 a=1HOtulTD9v-eNWfpl4qZ:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-13_07,2025-11-13_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 clxscore=1015 malwarescore=0 suspectscore=0 lowpriorityscore=0
 adultscore=0 impostorscore=0 phishscore=0 priorityscore=1501 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511140025

On Wed, Nov 12, 2025 at 12:21:23PM +0800, Yongxing Mou wrote:
> The backlight on the Hamoa IoT EVK is controlled through a PWM signal.
> Aligned with other x1e80100-based platforms: the PWM signal is controlled
> by PMK8550, and the backlight enable signal is handled by PMC8380.
> 
> Describe the backlight device and connect it to the eDP panel to allow
> for brightness control.
> 
> Reviewed-by: Abel Vesa <abel.vesa@linaro.org>
> Signed-off-by: Yongxing Mou <yongxing.mou@oss.qualcomm.com>
> ---
> Changes in v3:
> - Optimize the description of the commit message. [Konrad]
> - Drop empty line. [Abel]
> - Link to v2: https://lore.kernel.org/r/20251106-hamoa_dvt_backlight-v2-1-9f844c8f8110@oss.qualcomm.com
> 
> Changes in v2:
> - Add hamoa-iot-evk to the commit subject. [Konrad]
> - Correct the property order in the vreg_edp_bl node. [Konrad]
> - Link to v1: https://lore.kernel.org/r/20251028-hamoa_dvt_backlight-v1-1-97ecb8d0ad01@oss.qualcomm.com
> ---
>  arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts | 54 ++++++++++++++++++++++++++++++
>  1 file changed, 54 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

