Return-Path: <devicetree+bounces-197830-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id D371EB0AF23
	for <lists+devicetree@lfdr.de>; Sat, 19 Jul 2025 11:43:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 70E1FAA18D2
	for <lists+devicetree@lfdr.de>; Sat, 19 Jul 2025 09:43:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A07A239E68;
	Sat, 19 Jul 2025 09:43:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="eIKe/XQW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 557212367B2
	for <devicetree@vger.kernel.org>; Sat, 19 Jul 2025 09:43:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752918221; cv=none; b=p1Kblnv3efrcdkuridwvAm9Yd18wXBCUFowTOzc5u3WpYvfu/geGEkVGiWDpM7znKo1y3we5VxmVld783Si+HXoYwI2+h1Ojg7UzSZBuScXSOSrHo5DnRCVq37q7/Y1xHgaLw14inFNgVeCvGCgymdpwYKfpqsqZx31OMxm6VgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752918221; c=relaxed/simple;
	bh=P+Mk/P5ye+p9KUFqL+K46gO8goqLtuTv3VJtLHalKhc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=DX2KT1061fqVhruqW0h/LwpnL7DWVxL+mWOVXF6mH5bOZ7UUMFA3kjAOxxX8tOoUr0x5C8RTNISx+7MGspVwPnTTVy8HkTFYKf3vzbfVYA8iM1nj0/WnTB4VGi2M7O5lUP2dnlpwpt4Gosx2FmB0JLG6X7WyeyTFZRyQ7lIEctI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=eIKe/XQW; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56J4MAwj028309
	for <devicetree@vger.kernel.org>; Sat, 19 Jul 2025 09:43:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	rhgfcFJFu0pycjGyM1cFEjZ0PRIhr6IT98FgwjCWEYk=; b=eIKe/XQW+VCrw6qy
	YDZuIu71jU6krVAEG2ro//VgSU2zD6oREy2R73F5f006S9h81k8XEGWAIURic6/s
	3C/z2ibBhsgp0kMODRuAAN+JBFcjgvxv/koBXdeEy39ebHbJAxNJqDY17Gwpojwq
	f/KI17OGkh0tUZ4fhv39qWLu7OlGVjfbVkD0m57Ao03Sn0UGqG6EhvTY1rU6Coce
	RoIwuwbAHtSCf3oPsN5jdsd1aMnjD/beax6buRrZfJimzhSvAS3+kcO7eCbWRKYN
	cXCct5kYpWcudSGRIiTgogUiLLa+1MOoQLpfnConsFxieo1+CKhVwXaferS3JKCf
	avz83w==
Received: from mail-qk1-f197.google.com (mail-qk1-f197.google.com [209.85.222.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48048rred7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 19 Jul 2025 09:43:37 +0000 (GMT)
Received: by mail-qk1-f197.google.com with SMTP id af79cd13be357-7e269587d8eso495833585a.3
        for <devicetree@vger.kernel.org>; Sat, 19 Jul 2025 02:43:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752918217; x=1753523017;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=rhgfcFJFu0pycjGyM1cFEjZ0PRIhr6IT98FgwjCWEYk=;
        b=VWZEvnN6fXtvle4UO4S0x+fCuyWmKZMw0hsd/p1Fo21bmB9OYSHKOR+BBDGHgqhCDh
         XQUDFctr5pxMdad4YHIz8h1aEZCaVcOfiWawMHgpkm8SbuzCEHb/xpqklqpKrH6dTXHk
         FOaNV3Aj/7ZsVNQAZREw7x4HFqy46coAOawymROdtzu7SFsAkj9sbP0NQdL7Yy8ib49N
         CwfyyD52sGlSJbMUSEz9kaCUOVdnuYJdFVigkHsTNfe+5owc9qRIlsG1jlkaP6f+jDvf
         US2poIt/poH9WT4BySH/pa/fD6LcboWbPXTWYdO+f9yDdpNzVRlZYfAM8j/WeXsOB8RP
         8aCw==
X-Forwarded-Encrypted: i=1; AJvYcCUzrS+exUxu6iuOsfYPz6HvBjkEH0hH2Das32tjAuzdSdjZzHmSeMmJI2uCbcwTGSU2/4y1qBkzZBzZ@vger.kernel.org
X-Gm-Message-State: AOJu0YwUWvfFWpfkDK0uoHuFovhFa86zLNcsW+Qkczm7eRw9vXGvzI1f
	hWu4zt+O3FfsxahgXkscgKy9HooeL27Kj6QTHPcbDZZRfqECZPhxT3rRiuucvPN+oUaClxIrGZK
	FJGzjHfEykxdyYVSYDfPPKOqNNIOGtcEwdUF1aPqSwK5vdPaKmXvSTFRZEVQ4cTmQ
X-Gm-Gg: ASbGncuTdKKZVkoDciQCg1yGqqe/EjbEZsyge8TqHu1QAhlFH1X05+Aoh2NpnGeoI98
	V/0oofLBpB4YeXO8Pl8y9RxIRPuW8DdE09JF62sEuBZYS1LlAyB4eCExxNejO0q1rtfF7MTLJhI
	kcihcsp6E8vZNvAHfmXxQEzMJubBIOdtf12X07GVYbm5GKsPtl1oXppxWcHCNkOkk6qmTrBzpwc
	ieRUDsfhMCs6NGBEgRS5aEvU+4lnMjNqcbu5iAN6vE5ddyWE5oxyopo4bc8nkJat4FvDg+HReMK
	DCSmytOayKeNKI6iOba+ml0HWghn+l/1d4KoIHryU9gKQ7jd95az/m9oZr4Cm8M3T5DjRGkyam2
	9b28CAnja9R2ZjcVOdNBepBiJHYOWNaxART9niVDWWIHoi4i2NUMf
X-Received: by 2002:a05:620a:8509:b0:7e3:35e3:3412 with SMTP id af79cd13be357-7e34d9ac2e5mr834616285a.34.1752918217030;
        Sat, 19 Jul 2025 02:43:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEO4TN2m1HCMk2uK61roXdJAndfjxoSfPKSTjVyKPnhMXeMW5zR1fepHcMLF91nfBnN6lMC7g==
X-Received: by 2002:a05:620a:8509:b0:7e3:35e3:3412 with SMTP id af79cd13be357-7e34d9ac2e5mr834614885a.34.1752918216533;
        Sat, 19 Jul 2025 02:43:36 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55a31d7c7basm652746e87.94.2025.07.19.02.43.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Jul 2025 02:43:35 -0700 (PDT)
Date: Sat, 19 Jul 2025 12:43:33 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Xiangxu Yin <xiangxu.yin@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Bartosz Golaszewski <brgl@bgdev.pl>, quic_lliu6@quicinc.com,
        quic_fangez@quicinc.com, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-gpio@vger.kernel.org,
        quic_xiangxuy@quicinc.com
Subject: Re: [PATCH 7/8] drm/msm/dp: Retry Link Training 2 with lower pattern
Message-ID: <w66xyhu5w7ajpkennvj24cad4j6izvapsp3reyla7iui2jdgkx@d43b6z3qw5tj>
References: <20241129-add-displayport-support-for-qcs615-platform-v1-0-09a4338d93ef@quicinc.com>
 <20241129-add-displayport-support-for-qcs615-platform-v1-7-09a4338d93ef@quicinc.com>
 <CAA8EJpoN1qBHyZrQJT_=e_26+tcaKRnSrhtxrK6zBP4BwpL=Hg@mail.gmail.com>
 <b4345b9e-62c6-470d-b1b0-4758cef7f175@quicinc.com>
 <xlmgdysjah3ueypdrdu5b6botvidb2wn4rfm4qpeysclscmuwy@vpfv2ymprblj>
 <b4e1ea54-ff3c-408e-8716-f48001ec9113@oss.qualcomm.com>
 <d427de7d-76ac-4e5b-b79a-3b7638a8e7fc@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <d427de7d-76ac-4e5b-b79a-3b7638a8e7fc@oss.qualcomm.com>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE5MDA5NiBTYWx0ZWRfX9RMjuk81mhpx
 BuAWeLjhUh6zj6jyvl2MESk2aeVy/2jrKWDtFPMwRuYuh65HCNQ/5o3MH73uupG8BDi51yjJnaS
 JW86WZUxy9/4vwDtpfQkEjYlriKi5zCRaTb7irDiVJGqsfjROYonioe6Y9bXXMbf+RJ9KFGFKHA
 a3+Vxwj4QXgK4lmPVmIMyC7UwvQ92oM8+Hh7S1kMdFhakyj3psSbvOK72P/o7SgxXXo8M4Ec2P8
 9JypWYHFgg5T0KECi5PqiMh+GehsAPqDH1xCo6sxuTXrVcTxJRx0SHrXWTc696QiTBItmqQWswd
 1vLcbYTpuacFM0YzqKLhK88gRqaw4qNo0xlT/P1tzhWPkVu8Y4jMNgKP22yan3fH5IY2YGDuB4q
 58j7NWaYfCSP+mEloWDZKCVMrz9vfKUq84dvK1Mxy3krQLBw3f4+aLIiSlhAl+wK0q19HNhL
X-Proofpoint-ORIG-GUID: 9FVCxNiPvi55AfZ-iMRuN2b-8eYwyOmu
X-Proofpoint-GUID: 9FVCxNiPvi55AfZ-iMRuN2b-8eYwyOmu
X-Authority-Analysis: v=2.4 cv=OPUn3TaB c=1 sm=1 tr=0 ts=687b68c9 cx=c_pps
 a=50t2pK5VMbmlHzFWWp8p/g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=Wb1JkmetP80A:10 a=COk6AnOGAAAA:8 a=YZjHnbvoZT85EzRjquwA:9 a=3ZKOabzyN94A:10
 a=QEXdDO2ut3YA:10 a=IoWCM6iH3mJn3m4BftBB:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-19_01,2025-07-17_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 clxscore=1015 mlxlogscore=999 lowpriorityscore=0 suspectscore=0
 spamscore=0 mlxscore=0 bulkscore=0 priorityscore=1501 phishscore=0
 malwarescore=0 impostorscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507190096

On Wed, Jul 09, 2025 at 05:16:02PM +0800, Xiangxu Yin wrote:
> 
> 
> On 5/28/2025 4:49 AM, Konrad Dybcio wrote:
> > On 12/3/24 3:07 PM, Dmitry Baryshkov wrote:
> >> On Tue, Dec 03, 2024 at 04:13:22PM +0800, Xiangxu Yin wrote:
> >>>
> >>>
> >>> On 11/29/2024 9:53 PM, Dmitry Baryshkov wrote:
> >>>> On Fri, 29 Nov 2024 at 09:59, Xiangxu Yin <quic_xiangxuy@quicinc.com> wrote:
> >>>>>
> >>>>> Add a mechanism to retry Link Training 2 by lowering the pattern level
> >>>>> when the link training #2 first attempt fails. This approach enhances
> >>>>> compatibility, particularly addressing issues caused by certain hub
> >>>>> configurations.
> >>>>
> >>>> Please reference corresponding part of the standard, describing this lowering.
> >>>>
> >>> Per DisplayPort 1.4a specification Section 3.5.1.2 and Table 3-10, while the standard doesn't explicitly define a TPS downgrade mechanism, it does specify:
> >>
> >> Anything in DP 2.1?
> >>
> In the DP 2.1 spec, mainly on section '3.6.7.2 8b/10b DP Link Layer LTTPR Link Training Mandates', defined 'LTTPR shall support TPS4'.
> The other parts seems similar to the 1.4 spec.
> >>> - All devices shall support TPS1 and TPS2
> >>> - HDR2-capable devices shall support TPS3
> >>> - HDR3-capable devices shall support TPS4
> >>> While these capabilities are explicitly defined DPCD for sink devices, source device capabilities are less strictly defined, with the minimum requirement being support for TPS1 and TPS2.
> >>> In QCS615 DP phy is only supporting to HBR2, we observed a critical interoperability scenario with a DP->HDMI bridge. When link training at TPS4 consistently failed, downgrading to the next lower training pattern successfully established the link and display output successfully.
> >>
> >> Any other driver doing such TPS lowering? Or maybe we should be
> >> selecting TPS3 for HBR2-only devices?
> > 
> This logic is porting from qualcomm downstream, 

Hopefully a downstream has some sensible commit message which describes
the issue and the configuration to reproduce it?

> For other device, only found in some older Tx chips like i915（intel_dp_training_pattern) used the maximum hardware-supported patterns, but not lowering.
> 
> According to the description in DPCD table 2-232 003h, From the DP spec perspective, it appears that all supported cases should preferably adopt TPS4, as it is more robust.

If other drivers don't perform this kind of lowering, I'd prefer if we
don't perform it too.

> 'DPRXs should support TPS4 and set this bit, regardless of whether the DPRX supports HBR3 because TPS4 is more conducive to robust link establishment than TPS2 and TPS3.
> 0 = TPS4 is not supported.
> 1 = TPS4 is supported (shall be supported for downstream devices with DPCD r1.4, except for eDPRXs).'
> 
> Although maximum capability of QCS615 is HBR2, but the actual pattern supports TPS4. 
> From pure design perspective, it would be cleaner to drop this lowering in next patch. 
> > Bump, this patch looks interesting and I'd like to see it revisited if
> > it's correct
> > 
> > Konrad
> 
> 

-- 
With best wishes
Dmitry

