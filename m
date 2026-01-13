Return-Path: <devicetree+bounces-254223-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0BCFED1620E
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 02:18:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A5AD03028F52
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 01:18:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A2BE260592;
	Tue, 13 Jan 2026 01:18:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aGPl4eRX";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="htjowIl4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1912C255F52
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 01:18:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768267119; cv=none; b=FXKwjoKxyMC1sTNUrgYXKfaFLyMb4TNGHJuszd4Y6ejpnerUhsHwthXLPyeCcXog00AZ5P+Mt5h9g1DulKj3LREbkk5ghlPfvQnsk079A5/AMIpSMLDn4aJxG4daOr7dU3C3hcp475D4p0d6w0ztZhg1lY1+k3JqY88/M0BmD7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768267119; c=relaxed/simple;
	bh=DcdBU8InJgMguQ2iTSiZxsVXaoWbbEYqvuCyyEOFkOw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=NYbuIUsPxRNS6w5zGdoMpaqb0+yJkl8gMG2Q+wHegkfEihxn27T0ofUMb48QXhkySRud3VBTkOxWWC6Yada+Ot+AiR5ghDQ4FMuLKaNTO5Luc1ORr4WrqS4keQEAQKSO48/Iaq0R6X2G+8y2yZZoc9GXiJk0yuMgMnn6HqREF7Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aGPl4eRX; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=htjowIl4; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60CN5AmB2965657
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 01:18:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wTkdGQ8kKP6sKFT1qADeBrtyvC4PpVNNcTkxvZ/+Y4k=; b=aGPl4eRXZXe11A6r
	UgI45mqq3dzacSv9kaXo90migfZsXmnytU+6nwHiX3xV05eFH29N149Jf6qFpse6
	MYULFic3ATw5ArZHf2+/x2sYF9f210JV6UsGcHAJNdOJgAoJ/mGYpEsaRimbILQ1
	Fj2kgqZFPwRxR2ixlhqC7RkC+w7btd9HQ62R9v2Itkue7JowqAu4AOdsFjYWCPAv
	QHiN87hxzISUuy03dm2ovZt4UOedQ3loSEtVc95h58n8ml44W7ZxWU/6+cbC2MKF
	3adhwbDsYLmbJbmw3exBj4hMavaZZkCpnqihk+r6Ei28QruSnwNXHPqslTz1CXrq
	HpowZg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bmy1hjhs8-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 01:18:36 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-8b2f0be2cf0so2168748185a.0
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 17:18:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768267115; x=1768871915; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=wTkdGQ8kKP6sKFT1qADeBrtyvC4PpVNNcTkxvZ/+Y4k=;
        b=htjowIl404LE6kxmYJqSDVsFz7w50gV6bLcgVujurhKWDQXXBIB/RxQNnLFREX8pEc
         U7N3Izn7PR7KnnzG6b416DDZWT194qV1pI7QRvP7zJkZyh+J6XgItn19HstxWdJQonTI
         DxRjbi8z7ZsCKZdXXPNjQdvcRssGkzh1Gqt4PMUnDFxnRUAX9O64Z99PFvugtBko/eiS
         UsDznJs0QOUhFdGAuw16Xr/q4WtfCF94t9O44u+LxyEGMdgapNgPfdfQPJMoO1JhC8rQ
         srRjP0xhAV39/K9s8KsdAPwCFeJLBU4rgGt51amwq75owAv9rh7Sil+KQoTTkYFJnESF
         4jHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768267115; x=1768871915;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:x-gm-gg
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=wTkdGQ8kKP6sKFT1qADeBrtyvC4PpVNNcTkxvZ/+Y4k=;
        b=fahRbUBMCO/2qLpnNCgrT8xeMKn2Z48EWmmmCQTWmk0Dk7Bned7di0U/a/xr1dXTIz
         7n3nsxmYIUiYO4hA1vBNaYeiVvHAhUqdyHSzJX2KI2kd8ZhlQSrwvbz+mcGWux7chNbU
         8Lo+MfmpzW6qY0zqJJ2lf8HtohXRfRnpnOPC6d6rtjcqeAIrFFUU55lfcpddlGz7Lve3
         dqjQds8lkaghwPaMY82yLvvlqG2wUnVYIR2Pxl2ouyLutnCQ7zQ4YTu/lhydxk5QGm9L
         Gz0vlxdXe8Y1MvsCA6eLMDudjTQSWFuvRJ8nhEFijhIHBoZ3Rg3S/PJGEEZVMn/uD+NK
         bO6w==
X-Forwarded-Encrypted: i=1; AJvYcCXIdvS0RMOr8imquWrCo5onbYlwuuCdMKhRUnyrFgGiAbgnqum1GRKI28ITw6bo37DVaEOkRNQuqYL0@vger.kernel.org
X-Gm-Message-State: AOJu0YwKJE3gh2MUHGmEK9TeLmJdCbRe7XkEx20UHpXAbSpyqZ5qAkNN
	vhUMnZU+jXQGyRVGSAcR2ReILRiAYqBMEp6Hw6DYWUnTQyM8DV0tgqij1pyqW8Z5EK6vOd8ZjgT
	aiUYO+mYvv4l7geRxqkNaPGdubGpat5fSUNjO6tvgZThHwgsIKIDowGW26GKNi1M+
X-Gm-Gg: AY/fxX50wKww63wL/a5kVCjsgcXWDdlajqydT4t+q7E0/bB+BDciwSp7KidfD2/H20S
	oo2TAOoanVG8aRknvttKSY7oEK8eN5R0S4rZQ3mbe1IQtZ4sKeqxwejK29XQY1Hb2WI/Q3W5SOr
	UFH0tZVyZdFujnS0oAojsRG3HKkHqJ/i8bzU/I9EkrukPGSFlkv+AP2zqeA+bx51cPjryt5tfXx
	6AG12JYcF635CmrDLnG0XTlrW1qWWdp5G0S2OtQ+IEJbN0JCKefK8zN3dNVs574MtaoePd0M9Dr
	ZPOmT62X0CLz30oNd9ZRE8bikCtrbNSGqcdNuhq53NSdCDI9tYzsYWp1oP/fh5FMgFvhf1AX2E9
	SHbv4o3VD6tVhQIFSW953rEzHqZEyrxoXZJRCISadTGnwP3Tcck5cGSCM6nPXYqKvDXH9hojTDy
	kxusTNPxrWcuDUEYsE2bzx/a0=
X-Received: by 2002:a05:620a:290c:b0:8b2:a0cd:90ef with SMTP id af79cd13be357-8c389407515mr2700221285a.70.1768267115378;
        Mon, 12 Jan 2026 17:18:35 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFLZI1hd4woXlXq+FYN7ag5gwJwSjpT2Ga+pQiFR32NkRsBGaCGTDamRbr7UbZnimayaujyqQ==
X-Received: by 2002:a05:620a:290c:b0:8b2:a0cd:90ef with SMTP id af79cd13be357-8c389407515mr2700218085a.70.1768267114909;
        Mon, 12 Jan 2026 17:18:34 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59b65cea275sm5094320e87.1.2026.01.12.17.18.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 17:18:34 -0800 (PST)
Date: Tue, 13 Jan 2026 03:18:32 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: barnabas.czeman@mainlining.org
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Gabriel Gonzales <semfault@disroot.org>, Kees Cook <kees@kernel.org>,
        Tony Luck <tony.luck@intel.com>,
        "Guilherme G. Piccoli" <gpiccoli@igalia.com>,
        Biswapriyo Nath <nathbappai@gmail.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-hardening@vger.kernel.org, phone-devel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, linux@mainlining.org
Subject: Re: [PATCH 6/6] arm64: dts: qcom: Add Redmi Note 8T
Message-ID: <2da7ufltv6xfek62j7r33lrgppd2zm6oahhhiwz57w3ckcs3fn@xcclze4oalo4>
References: <20260112-xiaomi-willow-v1-0-8e4476897638@mainlining.org>
 <20260112-xiaomi-willow-v1-6-8e4476897638@mainlining.org>
 <3d2qboek2kzsnsjmn7rqi6xkfotfchc7vdmyeprivu27l3rw2b@i5lbwsvxfwdb>
 <aa8d5d6f9301d94b56af4580210ffc88@mainlining.org>
 <nrudictx64m24ydh265c4ma7txfdmmncjqfl4xq6zxvk75lkzq@wu6vnehc3dqu>
 <abd31188336b3322b9322f1e6791320e@mainlining.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <abd31188336b3322b9322f1e6791320e@mainlining.org>
X-Proofpoint-GUID: dceWYadGpHg-vgCPOe0d_NQDLDRTd4qv
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTEzMDAwOSBTYWx0ZWRfX8n43YWgAPRd9
 f4OhXJLeC8/unwYLJk8bXyaeAoKuNli0rVkLxwtFHKpaSk+mpG/MCB9wjL2usnFsqlARqcGL1GP
 gE03XEUHV2aTmSx6gLI2EjyPo2wqwXyN6MPDcnqYUoShZo7D/BoeYap3DCCUUlHOlp39pEk4y6c
 Kmy5NnvklJI6iiSgFMYL+YLA3GycjZU4F4FD5Oiz9YSMXnyjY5HmydJ06dbBT6V3a3Y/JdXnOUX
 21S24/DxwuaxshZGn2FOSMx/gPEGGXHz1N08YHkjD2/wQ8I1HLeGVgH9RxaPji9hWTV8th4+juH
 oaKWTrjGfIOwqoC+oj08wWw/GUopSWprr/+UC+zTFwgbhJ55+IdJaLsJr3t3kfHuOqzVHo9/ZGo
 m7qAW7uc2GOp8cxbZSn5v/QYssph+bLeE58y0Kz+V8C1KiwckX08Jpz7ZWJqNq00zlhwbpjGWNF
 6OWjLcpcxhsn2yht+iA==
X-Proofpoint-ORIG-GUID: dceWYadGpHg-vgCPOe0d_NQDLDRTd4qv
X-Authority-Analysis: v=2.4 cv=EovfbCcA c=1 sm=1 tr=0 ts=69659d6c cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=OuZLqq7tAAAA:8 a=LpNgXrTXAAAA:8 a=EUspDBNiAAAA:8 a=GsNEW2zrF1RCk_DmH1QA:9
 a=3ZKOabzyN94A:10 a=wPNLvfGTeEIA:10 a=PEH46H7Ffwr30OY-TuGO:22
 a=AKGiAy9iJ-JzxKVHQNES:22 a=LqOpv0_-CX5VL_7kjZO3:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-12_07,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 adultscore=0 lowpriorityscore=0
 impostorscore=0 clxscore=1015 suspectscore=0 malwarescore=0 phishscore=0
 spamscore=0 classifier=typeunknown authscore=0 authtc= authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2601130009

On Tue, Jan 13, 2026 at 01:49:58AM +0100, barnabas.czeman@mainlining.org wrote:
> On 2026-01-13 01:22, Dmitry Baryshkov wrote:
> > On Tue, Jan 13, 2026 at 12:41:43AM +0100, barnabas.czeman@mainlining.org
> > wrote:
> > > On 2026-01-12 23:15, Dmitry Baryshkov wrote:
> > > > On Mon, Jan 12, 2026 at 09:13:29PM +0100, Barnabás Czémán wrote:
> > > > > Redmi Note 8T (willow) is very similar to Redmi Note 8 (ginkgo)
> > > > > the only difference is willow have NFC.
> > > > > Make a common base from ginkgo devicetree for both device.
> > > > >
> > > > > Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
> > > > > ---
> > > > >  arch/arm64/boot/dts/qcom/Makefile                  |   1 +
> > > > >  .../boot/dts/qcom/sm6125-xiaomi-ginkgo-common.dtsi | 302
> > > > > +++++++++++++++++++++
> > > > >  arch/arm64/boot/dts/qcom/sm6125-xiaomi-ginkgo.dts  | 296
> > > > > +-------------------
> > > > >  arch/arm64/boot/dts/qcom/sm6125-xiaomi-willow.dts  |  13 +
> > > > >  4 files changed, 318 insertions(+), 294 deletions(-)
> > > > >
> > > > > diff --git a/arch/arm64/boot/dts/qcom/sm6125-xiaomi-ginkgo.dts
> > > > > b/arch/arm64/boot/dts/qcom/sm6125-xiaomi-ginkgo.dts
> > > > > index 163ecdc7fd6c..70be19357d11 100644
> > > > > --- a/arch/arm64/boot/dts/qcom/sm6125-xiaomi-ginkgo.dts
> > > > > +++ b/arch/arm64/boot/dts/qcom/sm6125-xiaomi-ginkgo.dts
> > > > > @@ -1,304 +1,12 @@
> > > > >  // SPDX-License-Identifier: BSD-3-Clause
> > > > >  /*
> > > > > - * Copyright (c) 2025, Gabriel Gonzales <semfault@disroot.org>
> > > > > + * Copyright (c) 2026, Barnabas Czeman
> > > >
> > > > Hmm?
> > > Original file was renamed to sm6125-xiaomi-ginkgo-common.dtsi this
> > > is a new
> > > file just the file name is same.
> > 
> > Following Konrad's advice:
> > 
> > Would the following addition to .gitconfig help?
> No, only until i am not creating the sm6125-xiaomi-ginkgo.dts and adding it
> to the stage.
> > 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>


-- 
With best wishes
Dmitry

