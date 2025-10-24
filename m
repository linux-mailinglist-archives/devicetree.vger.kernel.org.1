Return-Path: <devicetree+bounces-230849-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 92F58C066F3
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 15:16:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3078B1B88217
	for <lists+devicetree@lfdr.de>; Fri, 24 Oct 2025 13:16:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B322131A06A;
	Fri, 24 Oct 2025 13:16:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ibzR3Eme"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26145309EF0
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 13:16:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761311778; cv=none; b=lnf8Zz+9XACQNlYDeKxlDyc8nwsQSL+D0SEes61ufaU2JDxDYdq4fMNEuU4SOyPPq6zkniSQsUNC0GZIjAgkBg0xu+sVxfyV5K53fI3B36zBmO9DC8cPzSrtThG9UCSuXHF+X75if+1t2Pd0Z7V59YK6999pFmoWICezdmZ1OYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761311778; c=relaxed/simple;
	bh=usp6dZLOp3hKB8N3oryowQCR6R9XAKaemSQvv23X7Ws=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=HxmDg8Z15sYcWz5RPWPkG+0OEhoTTTXmFqmdRiS4ZVQ18dwuJZ57w0F4FKcbvBHpssFZh/4OlI9/8AFHxcfGPzUkRS0lpMtlWUd7oev9+9moGQudl/T6zpIyYn9nj3Xsh+i/BIQwMTioopE8eJOlnMqBanN8dC02EuifqzIb3G4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ibzR3Eme; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59OCDJ2R017659
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 13:16:16 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:reply-to:subject:to; s=
	qcppdkim1; bh=byOciELpl5Z6xs5F1BjoX7m6FGuSIderWS7y2wVyB/I=; b=ib
	zR3Emew2haVfNCIxDbAhctoCb8qYx040joStYMcC9bNoRWVP0qbUQ/jo5f4b33yy
	6fRO29Gtc39bZhSx7IzyCsNpfACWGt2QDB98AMIWpuK1ufR1Rk7tLqRfoIlpIuwr
	6J0OcbtD2wvRmcb1VKee+8kEBp9XxKbyTJG/SUdxA1n9NWMImykuJvj5nRsT9YlX
	Y5EjzNdKGN0z8/K7ADOIDY01kUtlLIpfktdBFnODp8FmBUw2b0lTUa+uQ8+ItcBQ
	PpEIYphQjND7VEW3py2CMDdG84F0eVsxNT9mF/1ack+2iI5EBwoBqkIW6ehcE8e+
	PlX4GYmJGassNEiT0THQ==
Received: from mail-oi1-f197.google.com (mail-oi1-f197.google.com [209.85.167.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49yp6k3brv-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 13:16:16 +0000 (GMT)
Received: by mail-oi1-f197.google.com with SMTP id 5614622812f47-443a07c146eso2825638b6e.2
        for <devicetree@vger.kernel.org>; Fri, 24 Oct 2025 06:16:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761311775; x=1761916575;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=byOciELpl5Z6xs5F1BjoX7m6FGuSIderWS7y2wVyB/I=;
        b=LnsubTdbBs7w93s4BKqDVARjtDPFi9BJbOfXzv0Me6+ZLabVFv2hvHy3t76kcYaqd6
         PXLpvfAEcV59kxKemgbDJBR5WrXa2YwTe4E8ZNgPIFh+LKJJvi/Yd0u+WdM3SLv/T5VQ
         AlYWHBv25+9O+C3EsjISW1lsJqIyA4Y6TptxLGYRvuusHRWR/5V/qUmzz+vSKUgRsDpn
         8L4WnjLBlLDgfC/+Z8ogx+3T7N6hFQqjnHiXalN2fGdwWeiQapMIWAuUfd0DjzHf9nT6
         YE27O3LvTcIXBxX9nkWHjx9tTibtBgJ+AQ9JyrPoo5uKhLNly64tNjdXsBgmIsCE1Alp
         odQg==
X-Forwarded-Encrypted: i=1; AJvYcCW0CWUZ4a9SiCq4uWtyb/ktEKNDT3KB/QDeT4QT0e3zZkxQRXmm4utDGBupPWFYXkSMW2XSB+OzGg/H@vger.kernel.org
X-Gm-Message-State: AOJu0YyNu9t22jz2EAfKo4TObcCFx671vIGXG/c/aUqRCPA4WYfhHKmv
	oIs2KVXmiamGbFjYA8QdhU1Kwn8rddto7RnWP734epqLdFBkYsNfOKaPh2Di3cPG7ckGQ9Iq4q0
	LA+E2Ev9UQV+6bYPi6fTLpF00xz5lwmycXgG+ZMOXO3VgHsv1eYOI6jVyaJ+ni3qjrUNfyzGybM
	mgIQb7CTuq6pxhITeb4+wGSIkcvGuup+loE7KtCIw=
X-Gm-Gg: ASbGncvLkJUtxB26rkMcZ1IMZBjqgM2RnLmdVuCBAArXzYPAcWbgtojDJtjU0bbfOVu
	us1J702aXK8KbixIhIJu8vVfg6Xnrn4YBasOKoALU+LbZZKAhfQ52bZBKbU1c+QdRGUiruhQMtp
	mKI8R+aNxWnkNdFKtfGlYmgDqQDvn+p9Q9GsstLbRe2R1NoeeN8aEkVxobtWKABFgP+3PLMdylX
	VOTy60rR6JxzEE=
X-Received: by 2002:a05:6808:1a10:b0:438:2907:2eb2 with SMTP id 5614622812f47-443a2f1bd6amr12854280b6e.27.1761311775049;
        Fri, 24 Oct 2025 06:16:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH2CISebn1N5xd4PZByUVLyDXrr/11eYjZ+6T+XeX31Sqh8BXVvKthtYMmCCNr6jM2tfm7vhWAcoEANgO9/pjY=
X-Received: by 2002:a05:6808:1a10:b0:438:2907:2eb2 with SMTP id
 5614622812f47-443a2f1bd6amr12854248b6e.27.1761311774411; Fri, 24 Oct 2025
 06:16:14 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20251017-qcs615-spin-2-v1-0-0baa44f80905@oss.qualcomm.com>
 <20251017-qcs615-spin-2-v1-1-0baa44f80905@oss.qualcomm.com>
 <44ff81bf-8970-475c-a4f5-c03220bc8c3f@oss.qualcomm.com> <97aeb6a1-fda2-440f-b14b-2f3dbc2d7e8e@oss.qualcomm.com>
 <5e64c246-a424-42c9-b102-e1a2af579936@oss.qualcomm.com>
In-Reply-To: <5e64c246-a424-42c9-b102-e1a2af579936@oss.qualcomm.com>
Reply-To: rob.clark@oss.qualcomm.com
From: Rob Clark <rob.clark@oss.qualcomm.com>
Date: Fri, 24 Oct 2025 06:16:03 -0700
X-Gm-Features: AWmQ_bn61rL8UkwSaP9vHSdM_zlnxFNoNmPvQunQe3sK6AVw6dJjnNBmKMTrbrw
Message-ID: <CACSVV00vwbNtH47S_BVet7uP7u9t4RY=xTBn_r3u4sS91Y7Muw@mail.gmail.com>
Subject: Re: [PATCH 1/6] drm/msm/a6xx: Add support for Adreno 612
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Akhil P Oommen <akhilpo@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Jie Zhang <quic_jiezh@quicinc.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDIzMDEzMSBTYWx0ZWRfXwSnl6EWvfG7j
 VzOhHzDvvl0Rxq/5CH4s19RD+a8AAbA4Z6XyGRSpfSqw+J6p8rENppjkvpvy3fC4hnudJhoydAn
 UcbQ/pgajwolo/U/Kxeya7OIpC74aw1OEIrL000Zt63d0TqRW2DAmIwyIoOXKoYltT7fXxuDKX4
 DStqQGojEBknqYUEpwWQRcNVUgyDK7UAYfBSLxi+K9HEtxZOExEpVjrT2ZdxYuuz0+B/+20a/Bj
 IdmV5HcyvadEdd4dHvsrbTwECEybzhW/WsjgeDRZBuQWJVemCPjOrGxraz9VE2TwU2UJ+KxqJUY
 KvHEfOZHMsFN/a+OKdG8w2tB/t7qYJAqEtGv6ozrKgHvci3UYpZt+6q4JoEq41fvDud7EkmXyY7
 9yQ6kJ6rJVEo2Qvu7ciQwm4qkmLoHg==
X-Proofpoint-GUID: _LkX6SU6LVu_bakSMmcSXqMbeCEwSZCQ
X-Authority-Analysis: v=2.4 cv=bL8b4f+Z c=1 sm=1 tr=0 ts=68fb7c20 cx=c_pps
 a=WJcna6AvsNCxL/DJwPP1KA==:117 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=gM72ra8ASCPjNpuaUpAA:9 a=QEXdDO2ut3YA:10 a=_Y9Zt4tPzoBS9L09Snn2:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: _LkX6SU6LVu_bakSMmcSXqMbeCEwSZCQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-24_02,2025-10-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 adultscore=0 priorityscore=1501 clxscore=1015 malwarescore=0
 spamscore=0 bulkscore=0 phishscore=0 lowpriorityscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510230131

On Fri, Oct 24, 2025 at 12:55=E2=80=AFAM Konrad Dybcio
<konrad.dybcio@oss.qualcomm.com> wrote:
>
> On 10/24/25 12:57 AM, Akhil P Oommen wrote:
> > On 10/22/2025 8:43 PM, Konrad Dybcio wrote:
> >> On 10/17/25 7:08 PM, Akhil P Oommen wrote:
> >>> From: Jie Zhang <quic_jiezh@quicinc.com>
> >>>
> >>> Add support for Adreno 612 GPU found in SM6150/QCS615 chipsets.
> >>> A612 falls under ADRENO_6XX_GEN1 family and is a cut down version
> >>> of A615 GPU.
> >>>
> >>> A612 has a new IP called Reduced Graphics Management Unit or RGMU
> >>> which is a small state machine which helps to toggle GX GDSC
> >>> (connected to CX rail) to implement IFPC feature. It doesn't support
> >>> any other features of a full fledged GMU like clock control, resource
> >>> voting to rpmh etc. So we need linux clock driver support like other
> >>> gmu-wrapper implementations to control gpu core clock and gpu GX gdsc=
.
> >>> This patch skips RGMU core initialization and act more like a
> >>> gmu-wrapper case.
> >>>
> >>> Co-developed-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> >>> Signed-off-by: Jie Zhang <quic_jiezh@quicinc.com>
> >>> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> >>> ---
> >>
> >> [...]
> >>
> >>> @@ -350,12 +350,18 @@ static const struct a6xx_gmu_oob_bits a6xx_gmu_=
oob_bits[] =3D {
> >>>  /* Trigger a OOB (out of band) request to the GMU */
> >>>  int a6xx_gmu_set_oob(struct a6xx_gmu *gmu, enum a6xx_gmu_oob_state s=
tate)
> >>>  {
> >>> +   struct a6xx_gpu *a6xx_gpu =3D container_of(gmu, struct a6xx_gpu, =
gmu);
> >>> +   struct adreno_gpu *adreno_gpu =3D &a6xx_gpu->base;
> >>>     int ret;
> >>>     u32 val;
> >>>     int request, ack;
> >>>
> >>>     WARN_ON_ONCE(!mutex_is_locked(&gmu->lock));
> >>>
> >>> +   /* Skip OOB calls since RGMU is not enabled */
> >>
> >> "RGMU doesn't handle OOB calls"
> >
> > Technically RGMU can handle OOB calls. But we are not initializing rgmu=
.
>
> Oh, I glossed over that..
>
> IIRC the reason we delayed 612 support in the past was to make sure
> that the RGMU FW is consumed, so that runtime requirements don't
> suddenly change one day.
>
> If you have no interest/way in getting it wholly supported right now,
> can you at least make sure that the driver requests the firmware and
> exits if it's absent?

adreno_load_gpu() calls adreno_load_fw() first thing, and will bail if
gmu fw is missing.  (zap fw is a bit more awkward since that could
come from dt or device table.)

BR,
-R

