Return-Path: <devicetree+bounces-249446-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 751B9CDBD83
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 10:44:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 16DA83002518
	for <lists+devicetree@lfdr.de>; Wed, 24 Dec 2025 09:44:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 89DB232F741;
	Wed, 24 Dec 2025 09:44:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DCRQI818";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="jwTSVLzX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F3D6D2FF67F
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 09:44:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766569479; cv=none; b=FeoBTI7NhRejLmKLf7d26G+lnSyuMKFhyYKBehfMb7h16nxISv3j5qWIIzYtgMaaTaX3/fqD6V6IcESTY7n8h8qCMgymzmvzpbwtQdjgXawND8qn5HqRJyO+Vt0NWvSu1XvHWSlkJw9Ciu55IX0r22qQfaJ+WvUyiy0r9E++cG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766569479; c=relaxed/simple;
	bh=tlec59c7vzI12AdpQO5MvuW2XJ692+QIG1D25DoEfbU=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Lgbz3v5ecfrVGwz+ZeTiNnUKUR32+HKQqc5a25qHzyUjfEl1z0vM2R4k+8og1DY9e5F4tUn6wgWXjOiRJ9V88ME38c0/mkJVU8LWv+3mA5ZZNM14UAP+OVLkBTCVWxKey/D/1L8HOAHbr6WoUMAGFc5OazsE3XLt+/oNXCozGE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DCRQI818; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=jwTSVLzX; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BO6YJnp678258
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 09:44:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	j8bMJPL5URsN9kC02yIvSGN59PPsUlvnLYy8ovug86Y=; b=DCRQI818VJNfhxvy
	vcwkm144QAC59iKG/n+dX/NEbry4V3bERWVgC63J830y2+IxplKJu81zvnBHVDr+
	YYxhtg3kBdrboHCwaF+Y+tHK3Xt0I2PwdEh92WqpOYFYGxANzU3pp7MnexhOL9vB
	SeFLB5G2ArFIq0saOFNc9u62sZiisH0/kXKVrEHEcas05swDUkddohEtr2op6gHR
	Y9gYRKW04/BN6XURT2F+bDBQv9FdNKyU9ds4H0NdtAyOdSeGhhDW/K7/9J/tc5qo
	Mbn1zfc7sK5GIFF7U/jCnzwbFzxqQlbYEkvQuTyz8fxGqGUZhESpB3ziQe4ZvS6B
	buSDfQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7yvq27ys-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 09:44:37 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-8888a6cb328so148360106d6.0
        for <devicetree@vger.kernel.org>; Wed, 24 Dec 2025 01:44:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766569476; x=1767174276; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=j8bMJPL5URsN9kC02yIvSGN59PPsUlvnLYy8ovug86Y=;
        b=jwTSVLzXCtJalP3udR5mbXxnAjnorYa5Myv5f7+8Xdud/ohFVomOqmVIssbkANHNmV
         RC1pI9DTvhsLOjv8XjUU4q53i7mkVn2+i8YnJ1sMDaodqpa7AkxP8IL/0DwTsAG4tHAr
         opjxOXReumcVg0oe1525dHXIn0Cl8Zoih2Gmxsv3woflisSGSomKIukD0cyfIWDLNijc
         Isx2FiNcUk8oP2WZSdo00lVGCvtOLxv8Bz48zT8US8ptEaw2ZoKadG2duivaJXb43ElO
         mC74B/gSKzFAqGinl0g/tzsdq+aRtdf1aj36Ekli5omknfS8OBEoK/ZvIG+FkxQ3Har6
         kUHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766569476; x=1767174276;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=j8bMJPL5URsN9kC02yIvSGN59PPsUlvnLYy8ovug86Y=;
        b=w49MwngopAjM3rBY8ZINH+PaHujAoHE/4/4Dq2A5HmEhRFZFVjAspgCwR59luE0auG
         ssqqX19WYJ0AJw6zc3PTvOKwqW6lCNNanmlaJNPclwgJ94ZQT2UzJO2EHa2qh/ZXs+Cu
         4TI/Wt9YrVcdcTHfRJdYmlbJo2+lcTxODrcIE3nfUkctyO2v2S7K0jrph78S7C+h3cLQ
         41WgTlqLzGBcbpSRAemwxz7eW9G/dAiFqEuIGELyzz7myvtaVUeAaB5kGvBuz/ovjrpS
         5iPvoI2vjk/eNxXR2lhZTbcTCfOI6zup1UrHKHqNawOxJe8hIiMzqy/ihcmS318BnsXN
         943w==
X-Forwarded-Encrypted: i=1; AJvYcCVZ/tVAHDGj18EIunmZD4UFGwZXaTP66pM8CNJsNCfL/d8VnZKCjBERMtQjOAqYtbMxN2WuZrYkqM7A@vger.kernel.org
X-Gm-Message-State: AOJu0Yy4LxQCBGi9bx4PULkAHiOUKIvXIWV2ytSwtkoQYGSO+RJcYRiF
	BbJt9QvcGEjPPuvrTB+88v29mrhAacY7J6lu/VJwRUyP+B3ovh0INkhuRW21qBgsUaQpOksrsuQ
	VcF74Ch/JZ31po73C/6Mysj++2Vix3LMWo1od/Yfq60sE5MVkUV4Fex7z8FVEOW8Q
X-Gm-Gg: AY/fxX5FU8xs7zTPbTkTxuLxl2tQB6q+YOWkQinMRjQaBzBu20FhlHl1Ty8XCccT1La
	pMKxGGfiJhS+0w11DlCKMmOlIf6hYy7djj4OyCFK6J/8H6ZLj5hMpnwpp0beihmnWL6goBecTVn
	aa4WrfXerXGOcr6I3gImcM0QrAkQWq/xS5xIEdLx54z17eLaWDEf6jYag4vjA+zmPSNes3QR+2Y
	YdMlgNF3Su0FrnNVlaVUuLw4Lp/CrKfPLYPP0yBPPAhMfMLuk2wxrqhpyoJkQAgxWjW7hNgV4Sc
	dwPwYCMxn0E+JouOOwZ4KMcq+3esjeO+hQ6PUnx93rXqlFt3UARNratenu0OAJw4ErczNUu3zlr
	PM8q3PaCb2qZXGgwbsbEMcg==
X-Received: by 2002:a05:622a:1aaa:b0:4e8:aa11:5869 with SMTP id d75a77b69052e-4f4abdd77c5mr248981521cf.70.1766569476167;
        Wed, 24 Dec 2025 01:44:36 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEkNB3ACPi/FO+hv3JoHsZTBX5MuwuJtcjQ11szAJg+HHnPlCeIsNXx5g1+5A2cYrPCZrtUkA==
X-Received: by 2002:a05:622a:1aaa:b0:4e8:aa11:5869 with SMTP id d75a77b69052e-4f4abdd77c5mr248981161cf.70.1766569475653;
        Wed, 24 Dec 2025 01:44:35 -0800 (PST)
Received: from oss.qualcomm.com ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4324eab257asm33694829f8f.38.2025.12.24.01.44.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Dec 2025 01:44:35 -0800 (PST)
Date: Wed, 24 Dec 2025 11:44:33 +0200
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
To: jerome.debretagne@gmail.com
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Johannes Berg <johannes@sipsolutions.net>,
        Lorenzo Bianconi <lorenzo@kernel.org>,
        Maximilian Luz <luzmaximilian@gmail.com>,
        Hans de Goede <hansg@kernel.org>,
        Ilpo =?utf-8?B?SsOkcnZpbmVu?= <ilpo.jarvinen@linux.intel.com>,
        Jeff Johnson <jjohnson@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-wireless@vger.kernel.org, platform-driver-x86@vger.kernel.org,
        ath12k@lists.infradead.org,
        Jeff Johnson <jeff.johnson@oss.qualcomm.com>,
        Dale Whinham <daleyo@gmail.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Subject: Re: [PATCH v6 4/4] arm64: dts: qcom: Add support for X1-based
 Surface Pro 11
Message-ID: <qptvyecgevfbknaepnyplv2543wojt2cgj26kdsaaytnt6r3rk@kko2bjurdbyp>
References: <20251220-surface-sp11-for-next-v6-0-81f7451edb77@gmail.com>
 <20251220-surface-sp11-for-next-v6-4-81f7451edb77@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20251220-surface-sp11-for-next-v6-4-81f7451edb77@gmail.com>
X-Proofpoint-ORIG-GUID: fwGIH5oyt2H6K6QNILWuscmMRk8HZmwX
X-Authority-Analysis: v=2.4 cv=abZsXBot c=1 sm=1 tr=0 ts=694bb605 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=8nJEP1OIZ-IA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=pGLkceISAAAA:8 a=EUspDBNiAAAA:8
 a=GlChVbD0Fj_pvowmbuwA:9 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: fwGIH5oyt2H6K6QNILWuscmMRk8HZmwX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjI0MDA4MiBTYWx0ZWRfXxkxOhNwIwXjH
 vfDTTQZSdCz7psKSgU0QEDPoBjeun2WPyPqj3P/FQ4VNcxLF5oYynVginkyMXaTbELHZDUBabiX
 qp53NwxLjjPLGQQN4WB53VgCjpO3Pw2bCQfRFXsCqgyIvGexHX+sUvF//G4e8UUMH7Uca403HF9
 TtHUqxNrwjKPNWNipIRHJyWEZrWSX7QAi0MSaCraiYmUN9iCWIO6KkBq4RdNzIIBRklFqDBvZFe
 qtxxzEHkB+EpTo+UwzJL/R1uIlLbwTv7m7x/KvPeXwUZ4X1K3qVdczsPSyHz0uLCFchQFBT30ZN
 0ah4Xic5jdjYnsoUA32rAhhKjlPrnXCSFvg1s2oEzdmLJyO3lexWRudPkN6iwCQnIQA64SMWlUT
 5VhZrAFfSBgO8cEcjGzTAiUuda4kynLAW7Pl2ACPmyAavPMgaJL/1DFdgewOFnezqnw1IDyFArM
 POESBpACwhQCGQfJveA==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-24_02,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 priorityscore=1501 lowpriorityscore=0 bulkscore=0 spamscore=0
 clxscore=1015 malwarescore=0 phishscore=0 suspectscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512240082

On 25-12-20 16:26:32, Jérôme de Bretagne via B4 Relay wrote:
> From: Dale Whinham <daleyo@gmail.com>
> 
> Add device trees for the Qualcomm X1E and X1P-based Microsoft Surface
> Pro 11 machines (codenamed 'Denali').
> 
> This device is very similar to the Surface Laptop 7 ('Romulus').
> 
> Use a similar strategy to x1-asus-zenbook-a14.dtsi so that we can create
> x1e and x1p-specific flavors of the device tree without too much code
> duplication.
> 
> Hardware support is similar to other X1 machines. The most notable
> missing features are:
> 
> - Touchscreen and pen
> - Cameras (and status LEDs)
> 
> Signed-off-by: Dale Whinham <daleyo@gmail.com>
> Signed-off-by: Jérôme de Bretagne <jerome.debretagne@gmail.com>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>

Reviewed-by: Abel Vesa <abel.vesa@oss.qualcomm.com>

