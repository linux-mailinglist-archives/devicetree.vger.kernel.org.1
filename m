Return-Path: <devicetree+bounces-222697-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5669CBAC0BB
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 10:28:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0B0093B080D
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 08:28:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C5C02F3C0F;
	Tue, 30 Sep 2025 08:28:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GKXn4H+9"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF7BD221F17
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 08:27:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759220881; cv=none; b=QIN4Bnjx0laSB/AI2tew9+AWrDFxq1/UkQ22juCCzSMiNSzbEwoMugXqJ9Jq7soxWoTGJ1IhPtV3G71o1VyNb5K3uPoqBm/pdvHknxFcsLRc0W01quZ6bPMKgn6IUoMs5YJpq6OXGcBD9BVM4jOz0l7DBVMFQCDZCNQKiGLDSJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759220881; c=relaxed/simple;
	bh=rPh3kRVZ4h/rrupdBcJxTF42eQ6u5qVrD5lU2D2cpQg=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=ANvLKOCCdL9qkCndE4qHtsr6SR3KjHC4n62sypHdzOrwfmUMvWIksNSUA9z75QDqiLhUlcMtVDl56Pp698Cu5d+UW6AmOUOUe1AskPySYE0W6Dz3FDNRJlvrClpXAdzGbOyUfE+s6LyZVUZ8VB9FkZQx5Raevhrg1LthmbF4tiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GKXn4H+9; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58U4HPRD000365
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 08:27:58 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:reply-to:subject:to; s=
	qcppdkim1; bh=te/ZoQVF9PRW/Vcak1agQLB+rzLOMt6hZjDiPBIvFPo=; b=GK
	Xn4H+96BGGnzBwd5vTeveqmwm2+ROJlE+usawWAKSsuwebQBlbNMkoDT5ysh/2l4
	j4KztS+NSFkvSI/GoyRcLqKba4lJme06Y1FICjT5MBx7/+CrgdoW3XwpYr7YSidn
	I1nUCog2rCBgFD1rZhjDpcPxcQD2IxHtkg2mzlCbWP9bOWLCXVCAOuXyWTqmjZaX
	DPprIu4mKijgTo3ND894o5PR3Tyf4tq0Vecl3JsrqWd4G76MwlswbzRViTdcWOJ1
	WTG4IvyGi6P7WZE25Hoxm8TqpJsgvKYuw9hR69Nv47O0kBo1PxgimsBuP7cCARq7
	nqi4JQnq21omtIlpzbEQ==
Received: from mail-oi1-f200.google.com (mail-oi1-f200.google.com [209.85.167.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49fppr3rc1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 08:27:58 +0000 (GMT)
Received: by mail-oi1-f200.google.com with SMTP id 5614622812f47-43f697f0315so880251b6e.1
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 01:27:58 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759220877; x=1759825677;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :reply-to:in-reply-to:references:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=te/ZoQVF9PRW/Vcak1agQLB+rzLOMt6hZjDiPBIvFPo=;
        b=A8AodLiZnvOuhW6/GJQFZn443NYGhHt4ImRpHVC0vwjrYlXZaAkgcrYsBTc+xiwqjP
         QyQOBhQ7XBUdBSzeCcywtugez4IPYWh3JiTlYzt9CWOJ8ZWG4yltrm+v+u57wKQ/lTJI
         gxGoUq5q1jHVjA+nA8PN8zAG7cVM/6yI1hT5yHqKe/LlMSlwTwFlncBdBsANzVXy9uHZ
         0UzkuEIQOora80O+9zLJWUG/SiHFgv7oNGA2FwV1k1zMH/UNmlaqDSIomgiTp7Y5AfAL
         2Ejxx6pvuYwPEc37Tk2SXQWcYbtvnc8u3Ti18MnbxjF1QE6vAosBKJXF/LhOpB9rZ+VB
         svaA==
X-Forwarded-Encrypted: i=1; AJvYcCWcGkzehMJv3EqhJoVWF0uAkudgwLe3cX02N0g7+qComv4UoLPJIA2v52xYN93OsVSIsVQQyZl5I142@vger.kernel.org
X-Gm-Message-State: AOJu0YzOXsm/U2KGu/wxUx+EgTjiXYGRS1+n2Tu3pyyTJy9pBFV++h0x
	of1mue1gPxSSTer54w5fIC82JrXoaQCM+UZ+qQqFbKTGQu8ePUWBMVMUefbVFb25IHecOAdGaAn
	/CTAIv/OMBGReDITv7v8tk2AZGXXP85C3if2HWgYX4B6jlzXSIE8VrsACHbgN52rtUo7NN/cdOn
	85U43xGvW0AmG2oQZ4STOoEF9u9oB7i7yhnWPLyL4=
X-Gm-Gg: ASbGncsxph3jeHfVa6men4IBRur8CyT/P1X+g/X6+OiOcB/T/t/X6+/wLmZfGCDjQcC
	orgB3H4JEqWU910h6HCmC9eVseEwi4AAVdlhAPZ7XnBqrdIIalpRUk0gkgGtbUc+ej2vfKkP1Mf
	R9qWB7Xun3Hh2ZAH4aTn4S8s/8+Yf9Q0WMMN4rFZn+pK+hHAtqGKDCMK4=
X-Received: by 2002:a05:6808:4fde:b0:43d:25a2:e28c with SMTP id 5614622812f47-43f4cf464f3mr7573993b6e.49.1759220877241;
        Tue, 30 Sep 2025 01:27:57 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH814E7mWrVlAtwKKyT7opGmi1FUZDDSJRR4sEXqt85rC60tExf6mnWRjS+3W0gCgMI5Vtl3QqcYmH2Ktkkf/U=
X-Received: by 2002:a05:6808:4fde:b0:43d:25a2:e28c with SMTP id
 5614622812f47-43f4cf464f3mr7573965b6e.49.1759220876731; Tue, 30 Sep 2025
 01:27:56 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250930-kaana-gpu-support-v1-0-73530b0700ed@oss.qualcomm.com> <20250930-kaana-gpu-support-v1-13-73530b0700ed@oss.qualcomm.com>
In-Reply-To: <20250930-kaana-gpu-support-v1-13-73530b0700ed@oss.qualcomm.com>
Reply-To: rob.clark@oss.qualcomm.com
From: Rob Clark <rob.clark@oss.qualcomm.com>
Date: Tue, 30 Sep 2025 01:27:45 -0700
X-Gm-Features: AS18NWCqmbEpRBm5ANsrhcq-Z8jcjiekBnhyIkewW9_rwgY5GXXogY_b-bdPSxU
Message-ID: <CACSVV01UygpiUj0m_Ppd_LSxvW0MFunz+Lfhg20XHR7vyOBx7w@mail.gmail.com>
Subject: Re: [PATCH 13/17] drm/msm/adreno: Support AQE engine
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Cc: Bjorn Andersson <andersson@kernel.org>,
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
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI5MDA4MiBTYWx0ZWRfX/74m/s3ngArB
 HRv2dFzvR+o0mZiwpPw2fZsmppzeJQG3M7bphy2loI0SM7YK8SJKfpA5Lvs8w+cW11DmYVtMCx7
 5mDFvVMI75XMxOfzT8+TgYug9vqlK/G3/dMsuYDkFZWZ50170qrZ9Qm4HAXCZKyCntZgwBR+jG+
 bMIJ0DLZ6wo+jrdL4S7HugNCY+9chV+//Ubq0lGxZ3XX7D5kgJdHtdZLZOg/0iqLq66h7K1dlay
 x0kZApllnF3mrkCxc20OL8dYDsez2UAmWvvyXNHPifPvH8m9g4JJYquM2vfrwGnckXkdD54TV2X
 2xcD5jK3dn3HxfPlF1txODyUS12RL/3aQfp261V8dzVn6xfH270ax2Fhv61o5m5h9FkJi9snaGo
 KMl6XC8egQ2vVCP7DdUatp5ti9q4UQ==
X-Proofpoint-ORIG-GUID: LA3Efe82EZxmpaWLygrOUB1sFJukHrIT
X-Authority-Analysis: v=2.4 cv=GLoF0+NK c=1 sm=1 tr=0 ts=68db948e cx=c_pps
 a=AKZTfHrQPB8q3CcvmcIuDA==:117 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10
 a=EUspDBNiAAAA:8 a=fhJ7XYdx2Z3gjWMZPJIA:9 a=QEXdDO2ut3YA:10
 a=pF_qn-MSjDawc0seGVz6:22
X-Proofpoint-GUID: LA3Efe82EZxmpaWLygrOUB1sFJukHrIT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-30_01,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 adultscore=0 suspectscore=0
 impostorscore=0 spamscore=0 bulkscore=0 clxscore=1015 phishscore=0
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2509150000
 definitions=main-2509290082

On Mon, Sep 29, 2025 at 10:51=E2=80=AFPM Akhil P Oommen
<akhilpo@oss.qualcomm.com> wrote:
>
> AQE (Applicaton Qrisc Engine) is a dedicated core inside CP which aides
> in Raytracing related workloads. Add support for loading the AQE firmware
> and initialize the necessary registers.
>
> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> ---
>  drivers/gpu/drm/msm/adreno/a6xx_gpu.c   | 24 ++++++++++++++++++++++++
>  drivers/gpu/drm/msm/adreno/a6xx_gpu.h   |  2 ++
>  drivers/gpu/drm/msm/adreno/a8xx_gpu.c   |  3 +++
>  drivers/gpu/drm/msm/adreno/adreno_gpu.h |  1 +
>  4 files changed, 30 insertions(+)
>
> diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c b/drivers/gpu/drm/msm/=
adreno/a6xx_gpu.c
> index 4aeeaceb1fb30a9d68ac636c14249e3853ef73ac..07ac5be9d0bccf4d2345eb76b=
08851a94187e861 100644
> --- a/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
> +++ b/drivers/gpu/drm/msm/adreno/a6xx_gpu.c
> @@ -1093,6 +1093,30 @@ static int a6xx_ucode_load(struct msm_gpu *gpu)
>                 }
>         }
>
> +       if (!a6xx_gpu->aqe_bo && adreno_gpu->fw[ADRENO_FW_AQE]) {
> +               a6xx_gpu->aqe_bo =3D adreno_fw_create_bo(gpu,
> +                       adreno_gpu->fw[ADRENO_FW_AQE], &a6xx_gpu->aqe_iov=
a);
> +
> +               if (IS_ERR(a6xx_gpu->aqe_bo)) {
> +                       int ret =3D PTR_ERR(a6xx_gpu->aqe_bo);
> +
> +                       a6xx_gpu->aqe_bo =3D NULL;
> +                       DRM_DEV_ERROR(&gpu->pdev->dev,
> +                               "Could not allocate AQE ucode: %d\n", ret=
);
> +
> +                       return ret;
> +               }
> +
> +               msm_gem_object_set_name(a6xx_gpu->aqe_bo, "aqefw");
> +               if (!a6xx_ucode_check_version(a6xx_gpu, a6xx_gpu->aqe_bo)=
) {

a6xx_ucode_check_version() doesn't do anything for aqe fw (but also
a6xx_ucode_check_version() should probably bail early for a8xx at this
point?)

OTOH if over time we keep growing the version checks, we might need to
re-think how a6xx_ucode_check_version() works.  But that is not a now
problem.

BR,
-R

> +                       msm_gem_unpin_iova(a6xx_gpu->aqe_bo, gpu->vm);
> +                       drm_gem_object_put(a6xx_gpu->aqe_bo);
> +
> +                       a6xx_gpu->aqe_bo =3D NULL;
> +                       return -EPERM;
> +               }
> +       }
> +
>         /*
>          * Expanded APRIV and targets that support WHERE_AM_I both need a
>          * privileged buffer to store the RPTR shadow
> diff --git a/drivers/gpu/drm/msm/adreno/a6xx_gpu.h b/drivers/gpu/drm/msm/=
adreno/a6xx_gpu.h
> index 18300b12bf2a8bcd5601797df0fcc7afa8943863..a6ef8381abe5dd3eb202a645b=
b87a3bc352df047 100644
> --- a/drivers/gpu/drm/msm/adreno/a6xx_gpu.h
> +++ b/drivers/gpu/drm/msm/adreno/a6xx_gpu.h
> @@ -58,6 +58,8 @@ struct a6xx_gpu {
>
>         struct drm_gem_object *sqe_bo;
>         uint64_t sqe_iova;
> +       struct drm_gem_object *aqe_bo;
> +       uint64_t aqe_iova;
>
>         struct msm_ringbuffer *cur_ring;
>         struct msm_ringbuffer *next_ring;
> diff --git a/drivers/gpu/drm/msm/adreno/a8xx_gpu.c b/drivers/gpu/drm/msm/=
adreno/a8xx_gpu.c
> index 6a64b1f96d730a46301545c52a83d62dddc6c2ff..9a09ce37687aba2f720637ec3=
845a25d72d2fff7 100644
> --- a/drivers/gpu/drm/msm/adreno/a8xx_gpu.c
> +++ b/drivers/gpu/drm/msm/adreno/a8xx_gpu.c
> @@ -599,6 +599,9 @@ static int hw_init(struct msm_gpu *gpu)
>                 goto out;
>
>         gpu_write64(gpu, REG_A8XX_CP_SQE_INSTR_BASE, a6xx_gpu->sqe_iova);
> +       if (a6xx_gpu->aqe_iova)
> +               gpu_write64(gpu, REG_A8XX_CP_AQE_INSTR_BASE_0, a6xx_gpu->=
aqe_iova);
> +
>         /* Set the ringbuffer address */
>         gpu_write64(gpu, REG_A6XX_CP_RB_BASE, gpu->rb[0]->iova);
>         gpu_write(gpu, REG_A6XX_CP_RB_CNTL, MSM_GPU_RB_CNTL_DEFAULT);
> diff --git a/drivers/gpu/drm/msm/adreno/adreno_gpu.h b/drivers/gpu/drm/ms=
m/adreno/adreno_gpu.h
> index 6a2157f31122ba0c2f2a7005c98e3e4f1ada6acc..3de3a2cda7a1b9e6d4c32075a=
faadc6604e74b15 100644
> --- a/drivers/gpu/drm/msm/adreno/adreno_gpu.h
> +++ b/drivers/gpu/drm/msm/adreno/adreno_gpu.h
> @@ -27,6 +27,7 @@ enum {
>         ADRENO_FW_PFP =3D 1,
>         ADRENO_FW_GMU =3D 1, /* a6xx */
>         ADRENO_FW_GPMU =3D 2,
> +       ADRENO_FW_AQE =3D 3,
>         ADRENO_FW_MAX,
>  };
>
>
> --
> 2.51.0
>

