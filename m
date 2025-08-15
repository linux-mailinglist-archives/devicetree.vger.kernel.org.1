Return-Path: <devicetree+bounces-205252-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 123DFB2885C
	for <lists+devicetree@lfdr.de>; Sat, 16 Aug 2025 00:31:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F2B8A1D014CC
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 22:31:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DF60188000;
	Fri, 15 Aug 2025 22:31:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aZ8Ww0UH"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DBDF42056
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 22:31:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755297081; cv=none; b=gdfsNK7YhS4o2w/F1YY9JJoe0VQGiFioV6KCXDBTFXY3NQGoYYVty7iCzlU74zBlKKkR5qxYAQrhWUQaftgFQT2SnGXQjIvGc1cEgS67Vbq7kRp4doku4lyfgWNU2YaPx3WQP5N2n84VlG//WgiPr+Bu++f902HET4WnTZy7fPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755297081; c=relaxed/simple;
	bh=nQkHdDW9KfDS3+GPCTkk9jnGBJIoRWBUyMce7zVrsKA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=JzAcVSJ1nkgIuTEJi9pqOGOESDaSQp//kd0bwSPMlXfUUL+9mdtPvJipROKBuqjPrzFrr8c2jpuBEZ2Q16J3EYhyykCCyjwpOOJ+xXBlnlMelAuglijIDqFI7I1War0bg/xrqNt83oFfsCpTUxzply5ymARdd4LBR1bfpiUGAG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aZ8Ww0UH; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57FELIhl032047
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 22:31:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	JNM2ahG1ABS4L192+NMT+YV+CWUqiXZwpX5AXo7uFao=; b=aZ8Ww0UHeoHWKCza
	rfzcK/SdIaB+coyxqBItNSKHt+BIYXKsNsZEti4KW0wk6GHqUutX6KM6rFtkh/P3
	A8/esj3yZdnhvC6G+WdxVLZNbnElAlrISeCFTk52PthIpn2FUS23nfkUTDXyTmPx
	9VWN9sybVjEC+9njFMieO6OZS/DOTkgFfRei+VgML9TmzMg1T429Atay0Xcbf15H
	PrO+N9hl9dGIJn/kIDfdwQsGxqVT64soYMs9pdwrLgeixjOYp0qRvvAgpQzAt9wk
	UGC827IJkANRcLmTt25Ccpzc5uMLDqSbDgudHCXmf3xSNSfWPYA6I3Z+lht60vsi
	OyxT5A==
Received: from mail-vs1-f69.google.com (mail-vs1-f69.google.com [209.85.217.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48ffhk05vf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 22:31:19 +0000 (GMT)
Received: by mail-vs1-f69.google.com with SMTP id ada2fe7eead31-50f8ba4cfa9so2227258137.2
        for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 15:31:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755297078; x=1755901878;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JNM2ahG1ABS4L192+NMT+YV+CWUqiXZwpX5AXo7uFao=;
        b=eVE9YZwxuVF6I8FdtUwugCqYUK/bUxNX6r1t3BN1+cS4Wn0Wa4o95GNM/2b2gpgIl9
         b/yWgw2UGtYyrCPTtUwVS1Xld6ogmSsQOPTJPFkrpLdsAbUV0V2+KBPGEdm/Iko3pT14
         NcKGthUaudgPqa5mfTt5T6yylaro/4DmOpd+haMoXaMvDvg1nPdWc4zm9QZuMPnogoNP
         dzfNntRXAvDYNStGLphgw053bjTFkBWRFUudD1GPQQhFjY4hFUW1T7Bkg4pxjAJCR5e2
         HlG++51pHoVd0lw4e+dKFREEKyhD/+iOPwpFpCaSr+jU4GBqPdDxsESr1neODEaKRF1K
         Crvg==
X-Forwarded-Encrypted: i=1; AJvYcCWxdl8QhEc6m57Rbeam/+iPlL9zHlui9lp3YCdFOQN/VY+nFm5gahCAoAfU7mzw2f1rTt1r0PZ6oorT@vger.kernel.org
X-Gm-Message-State: AOJu0YyTvhZ6MFWICWxIn6YKxrXcQVd2U8smF5MRiHyutXuFFlehKwKw
	6QnOw8YlUpadCydFtmSnWTiMYqHcb0qNX1b5GxHBMFeoE6n2fRyyBxl+bQUhQHvKxr7xHzNrqEC
	6W8xJUTKrFf1TQDRUtliVXtxIlDzl3QkLFbz0k57523ycqRGEXdg+90ndgtLX+17h
X-Gm-Gg: ASbGncsqVkXLa4vyJgv5PdAKYMt4E7J/8UC1jVs0TkupDH5UMVi6ehZEQRWNRAaQDux
	zcbU4p4y5jGtAC8obPK1QTypRWi4Sr3Fvdrt8a0c+xbVoo1ITKo/uo8vJRXYCTAiX13k3rFmmH6
	cDeebhkZHNN7LPtlkS4VmWCjGbMcF8ugSqWN7ATI6qZyol9y2/6hHzzY5wdPdS7Yq1N4Ws29XFb
	f0YW5ORwUzuSbPyFXIO0aMfz6MDzKmvrzZJZhHeg1wOHPg6cxgqh2QtrTP2hd3pdvMdQl8hC9Sl
	HceIEroUfGHEf8pJ31zWNdyGCj0tX19C0mCasZnzEWl0CtlW84kZxJEYLigjU38GOOSMUIjcEdj
	xaqJ97SLC8fkrifz2ZH71uYmyqxvDE4YcDYyOfUwBt9d/fKmNHQIC
X-Received: by 2002:a05:6102:5114:b0:4e7:7146:a9e with SMTP id ada2fe7eead31-5126ab2ee2fmr1537416137.6.1755295403724;
        Fri, 15 Aug 2025 15:03:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHPgdle96VSE3B52v51lbV5p87cOgzaz0zms6MwnH/nHTPEsUDfOL5fTX136xoJjksYefpN9g==
X-Received: by 2002:a05:6102:5114:b0:4e7:7146:a9e with SMTP id ada2fe7eead31-5126ab2ee2fmr1537378137.6.1755295403274;
        Fri, 15 Aug 2025 15:03:23 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cef367728sm507900e87.56.2025.08.15.15.03.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Aug 2025 15:03:22 -0700 (PDT)
Date: Sat, 16 Aug 2025 01:03:20 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Eric =?utf-8?Q?Gon=C3=A7alves?= <ghatto404@gmail.com>
Cc: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v1 2/2] arm64: dts: qcom: add initial support for Samsung
 Galaxy S20 FE
Message-ID: <xmxo5uogkexiwq5zh2eza53pnl5jrqidd7an7bftjtq4wpaup5@mlekuufdbg5v>
References: <20250815151426.32023-1-ghatto404@gmail.com>
 <20250815151426.32023-3-ghatto404@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250815151426.32023-3-ghatto404@gmail.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODExMDA3NCBTYWx0ZWRfXzbxGTRb40dTK
 41ND9Xd+OaxQwfdJJnPvZt5E4526OQhC+2laOPvMKJ7Q+hMIQaSuB2bJF2alYvJ7NIcvgzTsERg
 WXMDmxJQ1gGbX720JDBqqbSV5y0I/yyA9WiaBMH6zmfQ6bTRLl3LydF9yCRlP+x07oYKK4nL+wB
 5mCeqedA0WiZVUvSj4Sq4hXMfEhjveh3lA1OouLnmmerkJ+melJDv5HCRJ+pKnTG2QsvcgQejE2
 BTSP8xEAFozVjXanhNijSnuY9UCZnl9SJf8d3M+4rj2e9hWSqFY/CA2Ar+VIWqZTRh54cXCRhXx
 yrAUq7Y7Mnmtqx3FVUUsqnqTUYIZuERNzTBbURWcb5wJU0deVI1yx4GbFn8o+HneipuuZWMUguN
 V4aRil8c
X-Proofpoint-GUID: jiTXuG-SKFsaMhfDBc6KJo7kFfbgbgM4
X-Authority-Analysis: v=2.4 cv=TJFFS0la c=1 sm=1 tr=0 ts=689fb537 cx=c_pps
 a=5HAIKLe1ejAbszaTRHs9Ug==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=2OwXVqhp2XgA:10 a=pGLkceISAAAA:8 a=72Elj11P4sURrl_B_tIA:9 a=3ZKOabzyN94A:10
 a=wPNLvfGTeEIA:10 a=gYDTvv6II1OnSo0itH1n:22
X-Proofpoint-ORIG-GUID: jiTXuG-SKFsaMhfDBc6KJo7kFfbgbgM4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-15_08,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 adultscore=0 impostorscore=0 malwarescore=0
 phishscore=0 clxscore=1015 spamscore=0 bulkscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508110074

On Fri, Aug 15, 2025 at 03:14:26PM +0000, Eric Gonçalves wrote:
> Add new device support for the Samsung Galaxy S20 FE 4G/5G
>  (SM-G980/SM-G981B) phone
> 
> What works:
> - SimpleFB
> - Pstore/ramoops

While the patch is correct, are there any obstacles in enabling more
devices on the phone? I'd say, buttons, remoteprocs, PCI and USB
peripherals should be low hanging fruits. If you can read pmic_array
from debugfs/qcom_socinfo, then you should be able to identify PMICs and
add corresponding regulators too.

> Signed-off-by: Eric Gonçalves <ghatto404@gmail.com>
> ---
>  arch/arm64/boot/dts/qcom/Makefile             |  1 +
>  .../boot/dts/qcom/sm8250-samsung-r8q.dts      | 47 +++++++++++++++++++
>  2 files changed, 48 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/qcom/sm8250-samsung-r8q.dts

-- 
With best wishes
Dmitry

