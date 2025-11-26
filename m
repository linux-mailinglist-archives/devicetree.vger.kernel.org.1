Return-Path: <devicetree+bounces-242178-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 34B3EC87947
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 01:23:15 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 15DAA4E12EA
	for <lists+devicetree@lfdr.de>; Wed, 26 Nov 2025 00:23:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1EBEB1AF0BB;
	Wed, 26 Nov 2025 00:23:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GqFMeO4h";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="EmXvqVve"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88E7816132F
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 00:23:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764116586; cv=none; b=G4L0i3Vz4a14llhMU4t0HVYmnfg3W466Ovt3Satm9lQOLMeL2klm4uwEejr38ekRJptDpAtTgwIEH9WjZiJWxt6By81BoAdU1G7Un+p04DohQQp+kVMOQ4JB6vDQ7OtlTSEpe6tu7uAaSjvXzULlQDZ6P2OqINhca4vm0vRvNqE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764116586; c=relaxed/simple;
	bh=kq+2rxOFGVKwexDoRItOWHbj8fKM1GWzgRSSTQlGc6M=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=GMGYHy8teJ+xbJJnWek7oBb7MY/R7voSLWr3TjIo7/BBQxn8eiezR09fv+9qYaWkVxESdkmypjgbF2GZ2N75fWk8/WlZfA53CUOCrncWliqwkSudcRTE7FkIn2hG7XO6i9XBukUh7tLnK1JBYXzqwASNZQID8GTcGSol8kIGnS8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GqFMeO4h; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=EmXvqVve; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5APKUQ4t3255831
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 00:23:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=o3BEQiEzssD2wKmrX0PXTYBj
	y7L7Q3N9642YJTqZ8aY=; b=GqFMeO4h8cX5fITdKXzsOUg79bN6JOCqfL3Yz2K0
	aSlBsFZmUdE+JXgcadw/Qb+MjGBJ+YEq864aofplo6aMPVg/uGLGjW08Gt4PoXO4
	aC8o5V13wQwKHYzqzFqevNGX9TAMnu0GDnpsKlaviwM0rihMlmC0bUFtlLvGZPg2
	n0gC6BiXQxod+iq1EACRJ2dsN03DB3b0zdN+9iwD/1gsv8jEl8dNVwMf8dkUmrLM
	wttiJjWH5TWRIWhuTuvrqWocyaZLmHn2+9s7hbU0aoWUy2miM/9musrqgF1Kby8s
	1QiRevJ8NTygSCV5mPOlKepnSjwcvN82zBLvhSL3/iSx9g==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4anb9c20u2-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 26 Nov 2025 00:23:03 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-8b244ef3ed4so1732384985a.0
        for <devicetree@vger.kernel.org>; Tue, 25 Nov 2025 16:23:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1764116582; x=1764721382; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=o3BEQiEzssD2wKmrX0PXTYBjy7L7Q3N9642YJTqZ8aY=;
        b=EmXvqVve5ZrjWh+HYYP/Mp08W8Jr+R0bJtns7uvB8mQz0DZbQ6shZTYGL4Fy5nep05
         I+0WcKS2f4cuVfcBz9K2jXCIbpmWxpo7qqGjDwDKe0teGkOecXv/Qf/veenFZSJxtSsC
         OeOhrD2ryuVJF4rb+jnFIIYj7EpaF1oH5pSc53Tur5WKWxtonI51aRw7M5i+IjEq2I70
         WnHOT2i3mVWX/cLOQWbZRd8LrqQoXHXYCmAZ8/6lJ16HnHACM3+IpJGEA1xs4GOvyM06
         MgG6R8Ov06qmUGoGk1s3emku1+Z4AK3lUSN272vYDGgv1BgdUEYMbiIgozfScPOz29ka
         Zv3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764116582; x=1764721382;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=o3BEQiEzssD2wKmrX0PXTYBjy7L7Q3N9642YJTqZ8aY=;
        b=eDJLcEKjuRMi52GeO8MoSPzGyoLHdyE3OXqkK8JYXlpGJN4nxqNJvZAEmOr7LM79QW
         fLw2Lg7jIX7lZRUQgIedUhcfgbenP78CMbTmAh0z1GBynzKclyoY8uMEwjr2VbidkeT+
         hrTlbkIOjKivyG9O+ERbDbPTuTngjfxGWna/y/75fbLlNz4P+vmNkE7KKEUzE7xUDrww
         m8/X/jJFNKLvvzuTlH+M+/GQZpvGP43tz2wR6b07UMMs5apoDfK/jBUuJO3I4DB6Qmfn
         Pltq+cf5tP8bnfUEkzxrE/B7/7uP+gh1VDgb/BcZIUzbO27M6p6PUiBMcR8lPSJSiRbY
         ta3g==
X-Forwarded-Encrypted: i=1; AJvYcCV2zr56L7JsZUKhl327q2qYPOAXqZ4OtX+g2w6eUrZhoSXKWcbg7ADoaTl7Mv3RPpzsuPl7s54lxdRB@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7xtX8t7AQFUMlZ8DEmJl3WHrrG9VuM3obRcfd4w6sJWZgtNsp
	3ZlKeHfFsKm+xznsrWuF0x4IuC+YI/uwqoio5cclVAw3XyQOubC7yAsXJbDbbjmXJ0zKJlVL5z5
	cBuvEsbBAd3KN0j55uglPYjR4z0wfBb4mux785E/F2u1eHoEDKE6/JIHafFMmy+d9SNblo4qg
X-Gm-Gg: ASbGncsxSof9r3QcT5zDzapSHtCDzZCXNFi5xLMFdur5Ma2wrr6ryBOKjHJGypfbyoT
	yjWFUcyZqLSHvqcRStadD3XM+b8VyhKjKd01KBXBikDmSlpvg+6i3seue9s31ikNcixtsY08o+X
	fr2h8nSBGWSdsZvt5KgI88VYI4LYjhAhMllSrzlVI+JEvLn2an4dBoaGrgCN0vX0uxzxred3977
	QDg2nIQh7JJfkh1EOdCZlkkd3Q1N+3+q6Zp5chFihCEhnm+RRTsbMMdL/wwpPyvxUFtS1RU4AT7
	h+OyTmv0Q+ub9lsNTwFXjJIMvoPmP/2AJrBPdxlSZCZCmslKctbsPDyxKU780bTg8dk6ssv+Eto
	w49ZaLQzkWgRv3RrvP+xKnLCdw5sA5hv2vnptaVov4txT3AJ7ovnGhjwBy9LtrFesTQFcJL1baH
	HNTbNpwYaDUWWZBtBGAlWn5rc=
X-Received: by 2002:a05:620a:7101:b0:8b2:64b1:692c with SMTP id af79cd13be357-8b33d1eff0emr2287483185a.29.1764116581917;
        Tue, 25 Nov 2025 16:23:01 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHGJsO67rFuFd4Ro7ZbE35nZtZftobbHH2OfIfbhStQdhA7bdtQMih3YOz2fnHDcgJaulJP4w==
X-Received: by 2002:a05:620a:7101:b0:8b2:64b1:692c with SMTP id af79cd13be357-8b33d1eff0emr2287481085a.29.1764116581476;
        Tue, 25 Nov 2025 16:23:01 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5969db89319sm5511169e87.36.2025.11.25.16.22.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Nov 2025 16:22:59 -0800 (PST)
Date: Wed, 26 Nov 2025 02:22:56 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Hongyang Zhao <hongyang.zhao@thundersoft.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Roger Shimizu <rosh@debian.org>
Subject: Re: [PATCH v7 2/2] arm64: dts: qcom: Add qcs6490-rubikpi3 board dts
Message-ID: <4r7zczamkq2udcmwrfh6nzn433ug2qnpm6hhir7b4ixg2muhjz@jbpo54eqmkx5>
References: <20251126-rubikpi-next-20251125-v7-0-e46095b80529@thundersoft.com>
 <20251126-rubikpi-next-20251125-v7-2-e46095b80529@thundersoft.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251126-rubikpi-next-20251125-v7-2-e46095b80529@thundersoft.com>
X-Proofpoint-GUID: jW_zSn08MceGCmBpfVBedNqcGj8IxJy6
X-Proofpoint-ORIG-GUID: jW_zSn08MceGCmBpfVBedNqcGj8IxJy6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTI2MDAwMSBTYWx0ZWRfXyb4/3Wa2UbuC
 4h4e1clA4jXoFnpNt66cyPW69h2xmNmmlzBbtDJaS54cpBH1zs6u97cXNbtQP9MPhTrE3Dayyep
 gwm1s56X6CVARAhMaFrQKUunt/8f/HqXmzcseMlf9nhPdyjFNt1/w6ENXS/Y82Dd0jBBVQ7iwNk
 ZOjP7uDjsNhPh2uhxXMqUSkAyW7tXn3LCmcjNAPJApBovNYz55SKw19RJIRSGZcEfFoCwrXsKLz
 MZ50NvCy7BOdeCUQzdj4A2wibyGM/sem9cwcgYJxySm70dimJqLX8rOXnL1+eieDq1vMPS7HX1J
 5WH7l0C/q/xyyXkzuXCGOxGCM4wEcHydDJLvKBkuIdMB2qWb4AhQBHUQuJnc3CskMGkoONo8uyO
 vZQnTWwSeMwpZiAoW5Gdojf6FLR7cQ==
X-Authority-Analysis: v=2.4 cv=VKbQXtPX c=1 sm=1 tr=0 ts=69264867 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=Wdb1h0LgAAAA:8 a=xNf9USuDAAAA:8 a=EUspDBNiAAAA:8 a=hFi1a12O9VuTv44D2lkA:9
 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22 a=j5gyrzqu0rbr1vhfHjzO:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-25_02,2025-11-25_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 priorityscore=1501 spamscore=0 bulkscore=0 adultscore=0
 malwarescore=0 suspectscore=0 phishscore=0 impostorscore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511260001

On Wed, Nov 26, 2025 at 12:07:03AM +0800, Hongyang Zhao wrote:
> Add DTS for Thundercomm qcs6490-rubikpi3 board which uses
> QCS6490 SoC.
> 
> Works:
> - Bluetooth (AP6256)
> - Wi-Fi (AP6256)
> - Ethernet (AX88179B connected to UPD720201)
> - Two USB Type-A 3.0 ports (UPD720201 connected to PCIe0)
> - USB Type-A 2.0 port
> - USB Type-C
> - M.2 M-Key 2280 PCIe 3.0
> - FAN
> - RTC
> - 40PIN: I2C x1, UART x1
> 
> Signed-off-by: Hongyang Zhao <hongyang.zhao@thundersoft.com>
> Reviewed-by: Roger Shimizu <rosh@debian.org>
> ---
>  arch/arm64/boot/dts/qcom/Makefile                  |    1 +
>  .../boot/dts/qcom/qcs6490-thundercomm-rubikpi3.dts | 1410 ++++++++++++++++++++
>  2 files changed, 1411 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

