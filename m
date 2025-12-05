Return-Path: <devicetree+bounces-244838-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3D12CCA949C
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 21:44:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id E9B0830FC2AD
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 20:43:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 39F9F230D35;
	Fri,  5 Dec 2025 20:43:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="BdUEQcMu";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="KWZPvqTQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 79C1F2D94A9
	for <devicetree@vger.kernel.org>; Fri,  5 Dec 2025 20:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764967436; cv=none; b=DpWqyHvT/st8Fls7ce7nW1pybTJNSAiLG1aIa0qadfEIhvTKWas1lgPb7AZXduRuQo+et9ddxTUcMn+3d/GZbmnrmkd6uTC+cd5wWMMLx23qg1AtRPa4xOmhpf4oWaHJqseLLMeNTwagGGAXFs7QQ+434q3a2+fSk511vL+hDuU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764967436; c=relaxed/simple;
	bh=VoOi2K/cbszaXepLwMnREeww0innWvq5K1RAyARBa6k=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=bHd9YlR0Ys66LDQ9YwSpVBmjrA1qkJO861G8SDzylFqDCv1ufmyI2YYzjEIXudjl5hES0kKmaAxzj+6I48Wu3y3eVvYvy0/mXD2LJQZml6Nd+iZMr7P0LI/RWxDvIR8LeNJXtoIFaXaVQDHW/6YrBcyOAFYJGxJjM3n8mdeDDpc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=BdUEQcMu; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=KWZPvqTQ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B5FBNJG1077689
	for <devicetree@vger.kernel.org>; Fri, 5 Dec 2025 20:43:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=RpuXHuMZZPOjbjLtNGN2MsTj
	gbgJfqNWp+KGHQhwVvI=; b=BdUEQcMuQUymcYihVrq6KkL2pzmmgBpGRZ4DnZ6k
	sG0Znndy0ZxXPy49foj8D1QBr4YW3ve7btKGjoiCsaTNUIkXQtSOAS5nl7GaAeTF
	c3QjDqZu0pLwTxmms0X7OPlB97pLcsprhE7xizLk7UAlQkRVEqGRhSeNJDfSqj8j
	ETfltmmc+ahM4sk2uAGPBzJoT9OByTsmCLd/CvT/EiWt3KY2E2I83F2yS4Z2xtT1
	lPlf3MoXmLaGw81KIcrDrSCYlOpLR4vUUFkuS7AgH+VJgbWsr8TugKfTkAIQfIko
	kciH+Jl4TH5NPJP8A+sK2qOzHYiZgExv8axpCCivy8mSPA==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aupa8tyy8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 20:43:53 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-8b6963d163eso116260985a.3
        for <devicetree@vger.kernel.org>; Fri, 05 Dec 2025 12:43:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764967433; x=1765572233; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=RpuXHuMZZPOjbjLtNGN2MsTjgbgJfqNWp+KGHQhwVvI=;
        b=KWZPvqTQeFS2BXp378h40YkEtXUp74yoojTrqygvMm2kCFAzVA0jCaASyqyUChAzuj
         13TNpEZMY376pJfR3bXIoA5zq+pbXyVFoVzfuwul4Y9LdOGH+puVAH1/cXWV8OCgJ6sD
         HuR0Q+UMOdkLqvHtLpioHH1gJgRqNU8iHvmRqBF3c4H/PeQ7TXChg6ajk1aqyrbGQDPm
         QZkDoxMJ0xVVnTKNC88oi6pRNlzXIjE2N6ytWmr2wsadcE86qCShNgkounz6DiOw50R8
         pREEaAkHxdwBdOgvid88SuO2U5/4VnGfOVOothkGfGEGS7B5zmVGyWzGbYDo0tPLUYNX
         80Bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764967433; x=1765572233;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RpuXHuMZZPOjbjLtNGN2MsTjgbgJfqNWp+KGHQhwVvI=;
        b=OLQBUP9A5I/XV/wvV426qLzGjdOBmU7SOQO0VrPqiZjYtXjXxQT+t5NOnPeum3sjBO
         y/pcJ9vsTmKUm1jRntKNRBRICWgxwAINKQ3SbGWpG3CmGP5Xy0FuhK5oR/rk1M9i4DmB
         tBoVsQrj/IoH1ciqPbeQmnAotPOCGYe3WnziLyadbwWjM4VK0MGcSGQI/axgpFRpqVAl
         yxADEErd4TVyBEc6sowYu5HjxyOslOwUqmv4OSQR3bOV0+yH3D1TjlNDK0+uQXrVizdM
         Uh/c2X8vrnh3osg4nmFnCfqEXTPeUXGgP5ZQLmyWZSWn/a/dAxDEsbBFYtMKCuDwNwrl
         5iag==
X-Forwarded-Encrypted: i=1; AJvYcCUKVZ4MpMczCVNBuqqOGRpsCTS1RAlTcqXoiFq+vJoKLSzfk7QzjQm4tOIYWF54iOIOX89z7SpCFzlr@vger.kernel.org
X-Gm-Message-State: AOJu0YzcPVO0XnX0St59tEzmxf6yx2nOoNz8tksilcwkOJYijjCeRuty
	2dBbqiw82QXBh1NMmeKmdJaeRrgV/JbD7mMIvFIDyJQb6wL7wimdzdmuhCtP8v7mshkM3zChoq5
	KsLheOFxyVVE3PZK5CTqjIPsDlbmzmFRujNT3B+LPAfQryZonJqaDDRnE+IHqVqBZ
X-Gm-Gg: ASbGnctSq6P1gjR/QoI8aaTRIEwUXKB8hX8+t9MQ9VluRJ95FehlQIQmoRItlPA8OB9
	D9VM6bSTGKUNGFuUlInCBelffC38DXBkA3DsoieqqrRjQXYf8W9xML08kUDYQypVtttSuhC6d4U
	Xk3BVLwdTU2kDWTFjDWZ0MwwLhwytuPZGToobZc1QJ3LT7o0FmWkgTDfPMPTZSIA88GT3Ol+kdN
	mO8Gz0zT9l4mJC0jlG8CuMXplfD48KkpnFoH7A2UTuvY9VQDRXWCtSzh4WXzveJypkrSQxqTtkS
	y05pFvHqp63IIjKws2+0GNWuuory4pFWpw8WIZ8W2+GTaR23RDppjHYDABaKy6w+Q3+Hg0YXLi9
	85deLerHYA8hJysRfWt7uRVIEH4Kjg9H3qHXFtxphI/ZlvZefEm/Lri3716/SFMS9/7h+Z86+Qb
	4aYHCR5TCdoIxQZnDJ6hhj2r4=
X-Received: by 2002:a05:620a:d82:b0:8b2:e561:78c9 with SMTP id af79cd13be357-8b6a256c707mr57340685a.43.1764967432706;
        Fri, 05 Dec 2025 12:43:52 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEdTGluYNok96o5CsAwUvPHomwuPCq9QOVmGcR/+77WdmlXegYB8Y0vUBjdTRA7zwLVUec88w==
X-Received: by 2002:a05:620a:d82:b0:8b2:e561:78c9 with SMTP id af79cd13be357-8b6a256c707mr57337385a.43.1764967432317;
        Fri, 05 Dec 2025 12:43:52 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-37e6fe6be0dsm16521461fa.10.2025.12.05.12.43.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Dec 2025 12:43:51 -0800 (PST)
Date: Fri, 5 Dec 2025 22:43:48 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: longnoserob@gmail.com
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, phone-devel@vger.kernel.org,
        linux-kernel@vger.kernel.org, david@ixit.cz
Subject: Re: [PATCH v3 1/3] arm64: dts: qcom: sdm845-xiaomi-beryllium: Enable
 SLPI
Message-ID: <2xwvgzrt2wvftesjo2j7xy7btdtukkx5ypffo3m37bstsrnelz@5zhlz2nheczc>
References: <20251205-slpi-v3-0-a1320a074345@gmail.com>
 <20251205-slpi-v3-1-a1320a074345@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251205-slpi-v3-1-a1320a074345@gmail.com>
X-Authority-Analysis: v=2.4 cv=ZqDg6t7G c=1 sm=1 tr=0 ts=69334409 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8 a=2lFIOzg0C1QhAyL8J1gA:9 a=CjuIK1q_8ugA:10
 a=IoWCM6iH3mJn3m4BftBB:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA1MDE1NCBTYWx0ZWRfX9SxmYEIm8sAS
 827fmKpZ4y+JgjDzr8nUolzlRJSUENwi5331+7qdXCjJvf/4uhYCZDqPY1qp81CUQ4U7EXKz4DA
 T/fJUIx4SDXmIH4TvJU465cGL/T941WrX7OJu+w0usP3RUJLTTazn4Cdx0NMSRR7FPnz6ewcohy
 XMUocz3+sgJEZi90i8Q1MPxcuOl2eF7uQMl6FU2Is/pIsVolRV6YoZQiZtM+pT+KnLT7km3Dx1P
 ujgSL9OmiXoW7crcgy53WFa5ml19zUvskAni86Y5Mfpod6rl2vUPBl0/nSbGeAkhkakWnR2xdWU
 hv5QeAiH9ft7s3X6E2Snu/zWgyxv9PZZY2nwTW27kGX14llsSNGLmx5WRHi2DmqJJib32qNdcnm
 GDVsEQnWCKy2ZX1ob4nI+A1FMqglsQ==
X-Proofpoint-ORIG-GUID: NCKdUFEj5o4IpjRSZFKxkwm46SIEcVp1
X-Proofpoint-GUID: NCKdUFEj5o4IpjRSZFKxkwm46SIEcVp1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-05_07,2025-12-04_04,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 priorityscore=1501 clxscore=1015 phishscore=0 spamscore=0
 bulkscore=0 impostorscore=0 adultscore=0 malwarescore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512050154

On Fri, Dec 05, 2025 at 10:58:59PM +0900, Robert Eckelmann via B4 Relay wrote:
> From: Robert Eckelmann <longnoserob@gmail.com>
> 
> Enable the SLPI dsp on the Xiaomi Pocophone F1 with Qualcom SDM845 SoC.
> 
> Signed-off-by: Robert Eckelmann <longnoserob@gmail.com>
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>  arch/arm64/boot/dts/qcom/sdm845-xiaomi-beryllium-common.dtsi | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

