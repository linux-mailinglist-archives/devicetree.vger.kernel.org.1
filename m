Return-Path: <devicetree+bounces-170093-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B391A99BA3
	for <lists+devicetree@lfdr.de>; Thu, 24 Apr 2025 00:47:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1AC1A1B816FA
	for <lists+devicetree@lfdr.de>; Wed, 23 Apr 2025 22:48:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F769200132;
	Wed, 23 Apr 2025 22:47:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RFbqFKet"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40B5D1A5B95
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 22:47:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745448467; cv=none; b=FiEoS3mARCA8i6dWSbQb9ZAGHAIKy3QSCfGnbHkkrxDE8itls03edJmvp243BpRyaDwI4rUvUBvOJQEp33Kh5ezXWOEVofgjMq6EljpXhZ5N2Ckf1I3nXE+tmOaqtBl95uSjBTsd6Rtt8dsIKpmnAigOeHMl8OT8Oe8wBKerL3I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745448467; c=relaxed/simple;
	bh=DbFZ7/j/K1EGmGKXu/FDfvVNLm9h/iduss8FipNFjck=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=THoa+FgYGiaBIKPv9rtOm9n+GaHC7LKPabOED6R0SK4B60mP8O1ddfXK6xIj6OaMtkx/tvOb8B9VZfgYdLlDb8S/4lLPo4h6MT0CuD12oHvvboaWYQUwF1ycDGeLkWgVM27D+FEB6ecuJYvY8ThHTAclXRdeVnhAPyDEj09H6rE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RFbqFKet; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53NAlaeU016858
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 22:47:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	ihLjRZPlLIWGlyTXxQVjwKyUINfd4mtFX1kBkVK4xz0=; b=RFbqFKet4C7XAcmr
	uF5l93uiKoYOIpW8pKISLlNb/6aUfRkdhfZCwj81DjrkRecyxn0IKak+VzOAN1vI
	kw+YX+eCRVZB6kh2zBGWoloFdT/TuLhMVwH0gT6N68JStZEtSNL7tzVY3H1ZfiVY
	CHa4RdeututYol1HUcfFXrxVyeDNlKlJE5a9Sk0TSNKo3p+Yh9p8NxsaUBVo4WM/
	LxgE0HcFg+S4AavN2k5aoumEGjxtKb7wpUPAzlCACltegnXV/j+zLe+JLIzIhFYy
	5gx3+GvOkk4ZnWAcJnq+H4Mx64JafGwPvSVQ285T9vO8vlcFuqIO49KJVHqp+GHN
	dP9DSA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh03jsa-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 22:47:42 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c791987cf6so78687685a.0
        for <devicetree@vger.kernel.org>; Wed, 23 Apr 2025 15:47:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745448462; x=1746053262;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=ihLjRZPlLIWGlyTXxQVjwKyUINfd4mtFX1kBkVK4xz0=;
        b=QmErm9cYQ6Tq8n6rgCi66fog6JbGK2JS2ZFfD/KqLqQtI4Z+CX49KYlx77N3X199eW
         N77PvGLMpi+Z4oGRtQxVUOymmGTTwyYVGHlvY7KLU4yF3TYHERTom33XZs3ASp6G/cMr
         dJFJowoSHxxn/8SiL1PsWFVU4McQBAMg6gFUGsze8XQoCO9QWYoMe8ZVFDjqhrMm+V4B
         hgw4IVzKRfn/Oyz4eYG8JjhY7F6vfz6bJYL/gW237PBYXwZf7lF54IAmv8Rd1sfxHB5H
         V1OewN6AAZ0SMxn0PefIA9cqOHS7hBFl7Ig5F4vVgVzLWsAgezsjyNCWdggq9QTKnXA0
         qK8A==
X-Forwarded-Encrypted: i=1; AJvYcCV62w4a9ZEYmEHxYSwppNyw1JN7jE0ol3wt0rpiWxKx9FNVLBnMVU4F2QJKJaaelzg8S5sb31PPRaVk@vger.kernel.org
X-Gm-Message-State: AOJu0YwskHVEFNtEjWWcmgyg5QLseon/a2mo4OEMBJaS4HedWM/p66Ty
	cXJbvxtljf1iGvwI7h5C9RWYKK+z4IrFvvlokw5DDeeREUGHtHj8KhMLvglGRONy+h213e1JDMt
	ffZr65rRgKnstCPK92VqHpH2rNVCHkskHrauHgnipe07/INXffMk7awjIzIFY
X-Gm-Gg: ASbGnctyfq5sFLKae2HpbQ/6XK1oL02f+2cbP0qE2axKlYGkbiK5PiiqsgKC/QhZuTd
	TGt0LRuT0wg1Vm5sqCdYw6aviQ832myfc6FR4U9FOdoqb8rObPpZRVAMlyI7WVdD/9qjZN3cvNY
	VCsNp+yQak1dfvpLVDi8a75xl1gEZvA8O1jYngiWuTjo2g5sRk9s9+vGffiikJf+AP7gRaIk34f
	aqJl0WpfLwAlRwrZBzx8TNRF7c5lQzqapgOAlfcLhOF5mQnv92kFi2bVaSeGl8mECH9xbnBLqR6
	2DClXVY2Ezi81XHGd1SP2gYlGmm5hTPkLuMVTHVhRTnd8SKchCCAtx0OfhLCpnKyb7w0Jyd7lI0
	=
X-Received: by 2002:a05:620a:4728:b0:7c5:6410:3a6 with SMTP id af79cd13be357-7c956ed7543mr92880085a.27.1745448462224;
        Wed, 23 Apr 2025 15:47:42 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGInwM3Ub2jQ1lwD3hZid86OUOjGIyjsbPxDcJGVMhOF+7PpJenxAlmHg66u64h4q9mPPY9dQ==
X-Received: by 2002:a05:620a:4728:b0:7c5:6410:3a6 with SMTP id af79cd13be357-7c956ed7543mr92875085a.27.1745448461829;
        Wed, 23 Apr 2025 15:47:41 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54e7cb3be1asm26736e87.93.2025.04.23.15.47.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Apr 2025 15:47:40 -0700 (PDT)
Date: Thu, 24 Apr 2025 01:47:38 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: =?utf-8?B?QmFybmFiw6FzIEN6w6ltw6Fu?= <barnabas.czeman@mainlining.org>
Cc: Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Stephan Gerhold <stephan@gerhold.net>,
        Otto =?utf-8?Q?Pfl=C3=BCger?= <otto.pflueger@abscue.de>,
        Linus Walleij <linus.walleij@linaro.org>, Lee Jones <lee@kernel.org>,
        Joerg Roedel <joro@8bytes.org>, Will Deacon <will@kernel.org>,
        Robin Murphy <robin.murphy@arm.com>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Adam Skladowski <a_skl39@protonmail.com>,
        Sireesh Kodali <sireeshkodali@protonmail.com>,
        Srinivas Kandagatla <srini@kernel.org>, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org,
        iommu@lists.linux.dev, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, phone-devel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, linux@mainlining.org,
        Daniil Titov <daniilt971@gmail.com>
Subject: Re: [PATCH v5 2/5] clk: qcom: gcc: Add support for Global Clock
 controller found on MSM8937
Message-ID: <h46amkfanqmu2v2bbsx3f4iqdwxzcgmu7ibngffn4wfavbdp2q@ho6sy346vjxp>
References: <20250421-msm8937-v5-0-bf9879ef14d9@mainlining.org>
 <20250421-msm8937-v5-2-bf9879ef14d9@mainlining.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20250421-msm8937-v5-2-bf9879ef14d9@mainlining.org>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDIzMDE1MSBTYWx0ZWRfX8aT1t3Z2MF6x BvpdTnD10+o3YYY4Pjxou6Pxkx/kIx3WMeiLT80vdVCyyiFFjL9VZZ64rR0A7Gl8tcAD+PrwfW6 cLIuf6iy1eHfEAwtF8OD+bJW5DRAEMU9AWNGBd6mISj5lgBxk7jHxdl2gOwqlJUeCfLNwI+F3WI
 rSVJ+88K+Df3VsaR8wU4E6A7tK0Rzl+FNfhZAOBJY6wKa9NWCUe7pTpliu0fsjy4EajxoXZy8j8 HPixstY0bN/QaKC+hh1TEbdDAHABbG7LvA66N9iERlkHq6q2+WgVwXOGJC0jNXAq0Il9daW1RwN wZFRl/6ZTd+LHoe5JSXN9tocPOxEbivDc/OUN0qm9uVYIOQVXHhqqHPG/VBd+zX34//dNI0f2NU
 xtZOTUEW2AwRYOwclV1ThdQ8XnhUvWfg9dmc6/7ClpRd3/c6/H3xQrJ1tmDfOc0htZLVz3aQ
X-Proofpoint-GUID: Y7h_2x45Y__NOBmo1dY047Isg7c-kCFU
X-Authority-Analysis: v=2.4 cv=ZuTtK87G c=1 sm=1 tr=0 ts=68096e0e cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=8nJEP1OIZ-IA:10 a=XR8D0OoHHMoA:10 a=pGLkceISAAAA:8 a=OuZLqq7tAAAA:8 a=EUspDBNiAAAA:8 a=XF3jJdBvCvMoejL92xsA:9 a=3ZKOabzyN94A:10
 a=wPNLvfGTeEIA:10 a=bTQJ7kPSJx9SKPbeHEYW:22 a=AKGiAy9iJ-JzxKVHQNES:22
X-Proofpoint-ORIG-GUID: Y7h_2x45Y__NOBmo1dY047Isg7c-kCFU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.680,FMLib:17.12.80.40
 definitions=2025-04-23_12,2025-04-22_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 phishscore=0 clxscore=1015
 impostorscore=0 bulkscore=0 mlxscore=0 adultscore=0 lowpriorityscore=0
 mlxlogscore=942 priorityscore=1501 malwarescore=0 suspectscore=0
 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504230151

On Mon, Apr 21, 2025 at 10:18:24PM +0200, Barnabás Czémán wrote:
> From: Daniil Titov <daniilt971@gmail.com>
> 
> Modify existing MSM8917 driver to support MSM8937 SoC. Override frequencies
> which are different in this chip. Register all the clocks to the framework
> for the clients to be able to request for them. Add new variant of GDSC for
> new chip.
> 
> Signed-off-by: Daniil Titov <daniilt971@gmail.com>
> Signed-off-by: Barnabás Czémán <barnabas.czeman@mainlining.org>
> ---
>  drivers/clk/qcom/Kconfig       |   6 +-
>  drivers/clk/qcom/gcc-msm8917.c | 617 ++++++++++++++++++++++++++++++++++++++++-
>  2 files changed, 616 insertions(+), 7 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>

-- 
With best wishes
Dmitry

