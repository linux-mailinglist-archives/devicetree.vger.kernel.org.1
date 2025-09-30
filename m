Return-Path: <devicetree+bounces-222674-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 4F98EBABD14
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 09:26:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 059463C5FFF
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 07:26:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A0C0299AA9;
	Tue, 30 Sep 2025 07:26:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ak/DaJwB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0704277CA8
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 07:26:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759217170; cv=none; b=fKetvrHz8L/eqAZkvtK5lzMi55HhoqdzONEuFd0R3ZqQftjEXVlkishJwFtRxxaR1o4X0e3hR650W/ijeYBbGbvaosVFouE+grbkz/1bttobuMQg29jPa+aizy0CKXoVbb7dHRGJ/PMCvgD2r2638Rbdl/89Ye44sF85hzZ+SNI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759217170; c=relaxed/simple;
	bh=UrXXb74599R8BZwIXkzJxHVqUA8YfSKR3ekHC6kpqv4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Ty8yE6eHUhOve8YsrKgjtFO+wXeMvSVJdUPG2CSqosPCi3XsKatlNsZ4nvq27tDK+m4aukybA0GM9Hs55CugtDAJCXFb5GrPnxIYVSC4lpXlerglad6+kyHhfrthIAKC6ei3bMqfR7pwPKHvMLCIotq4Iayg8dBVhu4/qgCKYTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ak/DaJwB; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58U4HejR024597
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 07:26:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:reply-to:subject:to; s=
	qcppdkim1; bh=NJKkBSbx/8tqEG8xyEV6jB7VZnVlHiCHJaTcMaV3vdw=; b=Ak
	/DaJwBmKTwW3xCru1IZ19Bx3qchaFKy4WY9jpPbNbKcGYQGlfHSvI1ZU9YSbT3wT
	jKnXCp3NLSNDeM+BZ8pwNUCAspsTnZ013ZmAumkXntu9a9E4uP/YeCo3GMkMoVcX
	3ujKXRjRN145HCmZjr//WUOyVhVhw3zS9iUCVt12OgRpA0KdnL2zzYuu1X/YMzUU
	OZ8SNVNBNZA/Zu2+fPQC+v8XVuoDRRKh1//bL4vbEP+ZI/rNXFJt59TRICLQ3l+c
	j63z0V475fTu89lVoQYzJnJp1gwlC7MlRVNpsTk+PlYXsH2rvYb3FVgadwqeDuS+
	vyKEUcBKULsUZ5PPUA+w==
Received: from mail-oa1-f70.google.com (mail-oa1-f70.google.com [209.85.160.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e59n0d8v-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 07:26:07 +0000 (GMT)
Received: by mail-oa1-f70.google.com with SMTP id 586e51a60fabf-33450d89acaso9456566fac.1
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 00:26:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759217167; x=1759821967;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NJKkBSbx/8tqEG8xyEV6jB7VZnVlHiCHJaTcMaV3vdw=;
        b=ZeoeFBK/8lxmyGG2AYDmVcyVJWDcp/tneAPPcZKw9AeqqWvCM+VMEnA++OLYydwNb1
         05WUJ1Qk86+kKfcYEBXuIg9CtQXqn1jZOeonn+9JxlGDaT7w/pnO0cNaQ8iQqJOjUven
         iuuSrl3MLUklDULneYTHRw9unYgiPGWMy0KNH7W2b06JoYhfAjei9M+TgduvMtCBr5gw
         qC+PUSsL65eUfw7dFcjEiWavd8EYIQbOdE2Z7RVmIljaxT2JiZQKs+0IqN8VEZM9rjf1
         ju+2I0Z8JRuQV41LkrZ8PudeJntOoZUxIgFUKr0X5vu6rg1HdhbDuxwC5gYaheUDF8zC
         8ssw==
X-Forwarded-Encrypted: i=1; AJvYcCVizOtgXxwkuTbmuSI/mn9LumbxGCujNGBQCo9pF2QAySPY2F7hn6pCyGbfNcNEhE6twvGA52oJb6Gx@vger.kernel.org
X-Gm-Message-State: AOJu0YwGD3NYt4fCqa3rBPmO/B467aaYjVda4Trwygv6n80C1bxxgB6y
	jXdkeLiPtByt0R3CwDTykscf+gbyrggFn9auEN6v1rh3qZn3krkBm+Z+Cw1UUYl74xstSElFs5q
	c8JdHWiSgrMc5GdY9X3xO9ZhM2GrD5/8z/zAXHJbQ1WhbE3W+g+oVwDOxUZeGAw2C/22r6DINYB
	lfsm9IE2BsGF/F0AONA8QL6nJWY3r81iyrZA34EPE=
X-Gm-Gg: ASbGncuYzPi6wW38An5ON70kfEBBUplfKiGGohrB8JpocMNLGJthkOiYP7ZQPBAtnJt
	OizZGhZ/OhqhgOlEPZ74WeUgLnqPyT7JL/RoC1eISMVxKwNMoM54LWUcYffMscFgVuT56f26za6
	iQH+sP4aNLDkXSIP0Baf9saqVgwAquTJqX5mxJ6fkriuRA0QOfFS91OWw=
X-Received: by 2002:a05:6870:e08f:b0:31a:70c0:d498 with SMTP id 586e51a60fabf-38cadf744d7mr1709952fac.2.1759217166927;
        Tue, 30 Sep 2025 00:26:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGpcV7QCeOoB82oAsfyshYDoFlRPDZXQ5WvKfJlIGOQR9mFN5O4/G07y/zEQHyHa3AJYBNUcaNtfqPGXVCGfxk=
X-Received: by 2002:a05:6870:e08f:b0:31a:70c0:d498 with SMTP id
 586e51a60fabf-38cadf744d7mr1709930fac.2.1759217166525; Tue, 30 Sep 2025
 00:26:06 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250930-kaana-gpu-support-v1-0-73530b0700ed@oss.qualcomm.com>
 <20250930-kaana-gpu-support-v1-3-73530b0700ed@oss.qualcomm.com> <xsgnpvswvkyuxiviv4uyb6pxbpi646fut6dy54kpyfisqrxycz@tyfox3zdi26e>
In-Reply-To: <xsgnpvswvkyuxiviv4uyb6pxbpi646fut6dy54kpyfisqrxycz@tyfox3zdi26e>
Reply-To: rob.clark@oss.qualcomm.com
From: Rob Clark <rob.clark@oss.qualcomm.com>
Date: Tue, 30 Sep 2025 00:25:55 -0700
X-Gm-Features: AS18NWACYkWNYimh8t14gY4Dmrp_AbVsBXT_pDvjcLAcFBgJJlOrGd5Fr1oHJ8o
Message-ID: <CACSVV011=_szCPbdm6YA8aJjm76r_BZP9QFeOzcAGCvqUUTebg@mail.gmail.com>
Subject: Re: [PATCH 03/17] drm/msm/adreno: Common-ize PIPE definitions
To: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Cc: Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Sean Paul <sean@poorly.run>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Jonathan Marek <jonathan@marek.ca>,
        Jordan Crouse <jordan@cosmicpenguin.net>,
        Will Deacon <will@kernel.org>, Robin Murphy <robin.murphy@arm.com>,
        Joerg Roedel <joro@8bytes.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
        iommu@lists.linux.dev, devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-GUID: kqDV2YxEqmxdPi9I6k8eZaE1fvqUXpon
X-Authority-Analysis: v=2.4 cv=O4g0fR9W c=1 sm=1 tr=0 ts=68db860f cx=c_pps
 a=nSjmGuzVYOmhOUYzIAhsAg==:117 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10
 a=EUspDBNiAAAA:8 a=2l_kmpBevnkUXydlazsA:9 a=QEXdDO2ut3YA:10
 a=1zu1i0D7hVQfj8NKfPKu:22
X-Proofpoint-ORIG-GUID: kqDV2YxEqmxdPi9I6k8eZaE1fvqUXpon
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAwMSBTYWx0ZWRfX0BZ5VakCN8n2
 RyWs+GrMaY/VqfCDXoL3E3G0qn0QyrwQnh/2AJdka49tL+2oR6IvU5yeyDWA86YVDv5dXzu9b7p
 4XuPjtfPOKiXGyIpTh1uA58oowUa4D2qv8l3qp7Bi5zCoNpSRsvSI2yX3fv4oeEi7ruQmHRA9Sl
 ns/lczPSaB76ARALRSHE0kBET9Gdtk5kEBq5F5sih4nKl/iiRMygEgvAme5tyWg+FnLkbjcKMdi
 Kq5VGfft3k3jqn/DAGEgC4HQs8Abb0xwO0oQhNywOv4a4YTGgA4qTc7kFmwt9MnB87Tgnt/0kNx
 jGnakTI5pX6slhmjzhHfP7DVLr+3bVwWYcX6nvzmknHMrNj4ehJbnZTnLJ5oEsSORvlpzs/ER8r
 28ex45WcLkhePNr1v3R1kFEoq/KpTw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-30_01,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 phishscore=0 clxscore=1015 priorityscore=1501 lowpriorityscore=0
 spamscore=0 impostorscore=0 bulkscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270001

On Tue, Sep 30, 2025 at 12:05=E2=80=AFAM Dmitry Baryshkov
<dmitry.baryshkov@oss.qualcomm.com> wrote:
>
> On Tue, Sep 30, 2025 at 11:18:08AM +0530, Akhil P Oommen wrote:
> > PIPE enum definitions are backward compatible. So move its definition
> > to adreno_common.xml.
>
> What do you mean here by 'backward compatible'. Are they going to be
> used on a6xx? a5xx? If not, then why do we need to move them?

Newer gen's introduce pipe enums which do not exist on older gens, but
the numeric values do not conflict.  Ie. each gen is a superset of the
previous.

BR,
-R

> >
> > Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> > ---
> >  drivers/gpu/drm/msm/adreno/a6xx_gpu_state.h        |  10 +-
> >  .../gpu/drm/msm/adreno/adreno_gen7_0_0_snapshot.h  | 412 +++++++++----=
-----
> >  .../gpu/drm/msm/adreno/adreno_gen7_2_0_snapshot.h  | 324 +++++++------=
--
> >  .../gpu/drm/msm/adreno/adreno_gen7_9_0_snapshot.h  | 462 ++++++++++---=
--------
> >  drivers/gpu/drm/msm/registers/adreno/a6xx.xml      |   4 +-
> >  .../gpu/drm/msm/registers/adreno/a7xx_enums.xml    |   7 -
> >  .../gpu/drm/msm/registers/adreno/adreno_common.xml |  11 +
> >  7 files changed, 617 insertions(+), 613 deletions(-)
> >
>
> --
> With best wishes
> Dmitry

