Return-Path: <devicetree+bounces-199022-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DB4E1B0F120
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 13:26:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0EE781737C0
	for <lists+devicetree@lfdr.de>; Wed, 23 Jul 2025 11:26:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D24BC2E0408;
	Wed, 23 Jul 2025 11:26:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nqbvgm4z"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 654B6288503
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 11:26:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753270012; cv=none; b=mwiNYhkfgblR/2v99ft+hT2NobsKQ3Cz9ieC/We5Kc2KjEmVeCu3ISy1g7Pz0NPybXLD5ixSJH44WNLj4yjU6f4EWPgJCZNXNj7Pp4gBRoDxm4e8JxyLgauvfu5mvW0lxn1I4oDyMrLNscNebTsa10klX2WRW9L9M4dCARUUi5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753270012; c=relaxed/simple;
	bh=DVfLmPAW/+LES4M6qfek/cSAyxf+7zdrYqLo2qRajDc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iQFPfYXlqaA/ykW6/d3+t8WZBSF9vPzlyGff5EB5MzaIwkErkSRvm795sSkRQo2EnBcg58TaFahNW9ch3uF7AVbj4Jskh3u5OnM2eWxsbJX5vZIUMtGWRbM0keMCfJBGf22Y/DwemiPm0PgX8arrgwtEbKaSml+wspb3RJ3EkCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nqbvgm4z; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56N9Nut9007922
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 11:26:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	qjEm6Yo2vInyDtUzOUPiHjkggFV+IfkNgBwObWNLpNA=; b=nqbvgm4zYdqaje1L
	dGb0gBUarxAyxSdWc5FcOT3gjjhsomAOcMoYEC2I826g+eQtidVcKfzNG4sgdK7V
	xMoXVQwPTy5tnPAhzcuulBDrLeMb9LlozghHM4BD7D1FOVJN1IfN49tgX/83z8hg
	7SAgn3wO4WLQNnYeEG/b4lb6MaJUKChAf/s8udJd/6nQIHW/wdM/o6JQrthrevcJ
	9Wadp6UUL6SJOtQc92j5DSv0v8YLV7UkpTZ22PsqI2C2GBFkvQwGrzDph3ukdYni
	aCspHXki0oRxkmrH7dQfanhfbXRuNBkb/koHoV/a1mXwKWL9VDJukwRWFQm9wH/7
	rBVaVw==
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 482d3htyqw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 11:26:49 +0000 (GMT)
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-706efc88653so36469446d6.0
        for <devicetree@vger.kernel.org>; Wed, 23 Jul 2025 04:26:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753270008; x=1753874808;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=qjEm6Yo2vInyDtUzOUPiHjkggFV+IfkNgBwObWNLpNA=;
        b=IavmrgbSaRnbnZhrmN+nKxJL7sqvosXH9GSYhjdsMNg29my+tqXVfdBFtCUFVEt/Zr
         k0SMzUMHeZ33SarrHYJmPflyoOJGD5cybsIIB03/PHqMe6r2y98Rq+UQptcIK2khvVO+
         8nStHFSrvAV7ugN2Xed57/WM/Nq2yJLQTuHnKjlQ6fqhkrRYy5rcYiLl0H+o7WXMHowk
         I7MaiqJjDjUKJ/K1vMyOekjjMEr1bKwflivUMFjJwTACDvaf/K7Q8x6Lt5gl0sEvS9oI
         8zOjp8hKfurUkZ1U6qJuRQmwgpUr+WxPiXKZI49HWCdHRsLVjJr6ZO3MKpW7NBSX7L0B
         WDxA==
X-Forwarded-Encrypted: i=1; AJvYcCX/YOdGDFRy3faFnKTxxZKMsDNvzbta99lWL3bR7GKnCG7J5CZNpUkcs6QMWc71oEfrnVdKPh9jUOUi@vger.kernel.org
X-Gm-Message-State: AOJu0YxI2ZAgkU89JnlP6TKnyL0YA/js3InyOybZAZqjoTxM8ENbEGAE
	fgVdjZqlQaLoNYg3+CcTun17JPicg885G4KwcBjQsHt/03PRxqlZBZ+HcqY1ceP0hAQVar1fLF2
	Gvb/bFx6dc5tb9DCB8OGAz2cThlXv+4iQbhMcTTdUQazyQtQmOivDTn4C0mdiPIpWUo36zVif
X-Gm-Gg: ASbGncu2WdSW4C96TH0Sb75k3DNHyFPx7dwdDMYNCUMh9SkPrzMr2VbfYkrwsc7Pitq
	2rsijrQSdwjn8xGjgMGyHBwTPc2B1JOSqSI0WYntG/tz6Ehs1BLjAIgRSm71g/fq29TvmLGniNw
	JDSXFEfqZC+50XPphd/LnMM6qtnxQfzra8EuyPX6mxwo58fGBHmoR1lizZ21YXwgTVtLLhZQ6T5
	902mZRt5g7TNbPWaQ/TRpazthoBcDtZ4BTkiclMAeaQVgJJCCHHg4AGNfI+A6O7Y6rnv2D5ai3V
	Uvw+jImImhJVQh/3HtGXbpx71Wi895KP4Zoin9JNK4NYBu9mUedbNobERIbNITSvudgHVW95+qz
	lu5+MuU3CLdb6PbRq9XEulRlGyBFBf9G8hy7wXQPn0z9k/KEWTjFx
X-Received: by 2002:a05:6214:2623:b0:704:9b5d:ef4b with SMTP id 6a1803df08f44-70700644a0cmr37371876d6.26.1753270008096;
        Wed, 23 Jul 2025 04:26:48 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFC9uMg2OkvtHo4eZpZkc4XSkLC06Egfy/kS8G4tkWNRgwyZcA3jTH31NhXhbsVPCWqL9XHfw==
X-Received: by 2002:a05:6214:2623:b0:704:9b5d:ef4b with SMTP id 6a1803df08f44-70700644a0cmr37371506d6.26.1753270007671;
        Wed, 23 Jul 2025 04:26:47 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55a4be6fc33sm487064e87.209.2025.07.23.04.26.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Jul 2025 04:26:46 -0700 (PDT)
Date: Wed, 23 Jul 2025 14:26:45 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Yijie Yang <yijie.yang@oss.qualcomm.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 3/4] arm64: dts: qcom: Add HAMOA-IOT-SOM platform
Message-ID: <miiod6ft7iavg64q4f3uwcnztamgvt46gcguean5atsqi5d5us@xrwlzznsgx2z>
References: <20250716-hamoa_initial-v1-0-f6f5d0f9a163@oss.qualcomm.com>
 <20250716-hamoa_initial-v1-3-f6f5d0f9a163@oss.qualcomm.com>
 <0f9eebfe-21f8-48b8-9b49-a35126aa6dd1@kernel.org>
 <67ca3b6f-3cd3-430e-886a-0443f6d630dc@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <67ca3b6f-3cd3-430e-886a-0443f6d630dc@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=G8UcE8k5 c=1 sm=1 tr=0 ts=6880c6f9 cx=c_pps
 a=wEM5vcRIz55oU/E2lInRtA==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=KIACOVvSgbhCfpt34z0A:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=OIgjcC2v60KrkQgK7BGD:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIzMDA5NyBTYWx0ZWRfX349ZcCvC26OM
 XYrF9d8AJdhr/62Fdu/spfe3cVPrlv7eQOEy/zRfehlxgfQflnUO+68/75FDGNbvpBycAcBenWD
 GEncrnchrGmQVB6HSQsmnQxKJEUQ4mKRmz4qyMbtCF4eWKt7Y6js8/Cy/Wn8dYEdiHAALzBqVrC
 sNlsRzMwibvRyAvEzQd5S42zLEGOMPsLVal2rQRgmiyHaQcyQrSJU3f7y+D36I1ONHNKJ338bQq
 Nsz0A8+Do0LWR0OeLD8X29nuZMLi8Lp77p7a0V9cMEAagM3grbXWrOjEnbek0+sxfrtkoVFFgRs
 rs0Ng4W3bo4tMZGg4yVNbgZJbFueGBoo/WaDnWONs/cajDfnWGqiTIqnYCsbqvZq4XMJ6FCQNWt
 WQQ5NKv1AKbBM6kXCKkBh+VtfSv4We5eGK17rRsOjiC5AbLK8scY7qv5Pen+Y5zZwW32wwQU
X-Proofpoint-GUID: abbexPv37k6v3HsQJfYWIm5CsIG0Deuw
X-Proofpoint-ORIG-GUID: abbexPv37k6v3HsQJfYWIm5CsIG0Deuw
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-23_02,2025-07-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 mlxscore=0 suspectscore=0 priorityscore=1501 clxscore=1015
 bulkscore=0 impostorscore=0 phishscore=0 spamscore=0 lowpriorityscore=0
 mlxlogscore=999 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507230097

On Wed, Jul 23, 2025 at 02:44:14PM +0800, Yijie Yang wrote:
> 
> 
> On 2025-07-23 14:28, Krzysztof Kozlowski wrote:
> > On 16/07/2025 11:08, Yijie Yang wrote:
> > > The HAMOA-IOT-SOM is a compact computing module that integrates a System
> > > on Chip (SoC) — specifically the x1e80100 — along with essential
> > > components optimized for IoT applications. It is designed to be mounted on
> > > carrier boards, enabling the development of complete embedded systems.
> > > 
> > > This change enables and overlays the following components:
> > > - Regulators on the SOM
> > > - Reserved memory regions
> > > - PCIe6a and its PHY
> > > - PCIe4 and its PHY
> > > - USB0 through USB6 and their PHYs
> > > - ADSP, CDSP
> > > - WLAN, Bluetooth (M.2 interface)
> > > 
> > > Written with contributions from Yingying Tang (added PCIe4 and its PHY to
> > > enable WLAN).
> > > 
> > > Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
> > > ---
> > 
> > As pointed out by "arm64: dts: qcom: hamoa-iot-evk: Enable display
> > support" this is incomplete. Adding new SoM or board is one commit. Not
> > two. Don't split board DTS, which is already prepared/ready, into
> > multiple fake commits. This is not a release early approach. This is
> > opposite!
> 
> The inclusion of display support was not intended in the initial patch, and
> it was not ready at the time this series was submitted. Since the display
> patch set was not submitted by me, its timing could not be controlled. If
> preferred, the display-related changes can be merged into this patch in the
> next revision to maintain consistency.

This is neither merged nor accepted. Please squash display (and any
other possible forthcoming changes) into this patchset before reposting

-- 
With best wishes
Dmitry

