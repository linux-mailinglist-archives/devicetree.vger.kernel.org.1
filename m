Return-Path: <devicetree+bounces-238118-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A6CCC576AF
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 13:29:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id B495D4EC1EC
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 12:24:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9BCD934FF66;
	Thu, 13 Nov 2025 12:23:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EjxO0CH9";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HkkRxDXu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B5AD34F486
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 12:23:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763036583; cv=none; b=XLLPAvEwH7C4zcq4D/aiomM1hFnR0/i8OTUinnAeFgHPO2rS89ULVR19VtC1iHyaMGWeh8YKNL9ohM1nsHiBSVW9GZAxFRytTgKYvg8t3Y4cugcDQLGwmDrBooUsYkVPwS1fHCh+ztFF3qyjOWPxYvy0jTi/vo/aTiF9fCcS81o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763036583; c=relaxed/simple;
	bh=qN/E6+YlVkEM+xSihEjX8Nat6/Mt4w97aH7S4tAGH1w=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=T37RarRrBcviXeqbc0Oqf+olZA4HW/LiB4AUXeJ7iHHHwMXxLEmGxufPiun3d6Rfim1iBRBMZys+VQhBkah0jw9GCa9wfo92FPacXFfnNnaippgD3YGFNvHO5Ei7JgUsF3P24OBnydXLX8zMeZNS88Kv0N0yaauoLBdS3/CFKDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EjxO0CH9; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HkkRxDXu; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AD9NfPl3120632
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 12:23:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=+GplvHX5yxJ933q0AmGSwv5z
	wUzQHMR7HZka/BgtTp8=; b=EjxO0CH97Q5YXz86h/exEubfja23O0cpfbonUSFO
	/EcgGBaDegu0X6DGJ0COHg4/Cv9Whk1CLhs50au+g/U68OYvdjxcYC7LRDJ10C7Y
	f/4gtfgZN7C92XuqmFmkUcBwU9m2tAFrbdOOV1rXoz4mAE44i7oGgN6ulNcyb7Mt
	q66lH2BpsdMtxD7wn1BvJKKjaKHlpW9IlRPOV/mfcG9X6d6ayeZNAUG/ZyFFnqiP
	UdsICNQuFKz/CIksK0/8U4hHosXzUZxZKMw3QchC3x+3QITrrMf08zLIsSgcQCtU
	MNNLvmSf631noRe0hvxaCyRjP+8cXcDnfCQpru0hatbOCQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ad5pust1f-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 12:23:00 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ed6ff3de05so22708401cf.3
        for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 04:23:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763036579; x=1763641379; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+GplvHX5yxJ933q0AmGSwv5zwUzQHMR7HZka/BgtTp8=;
        b=HkkRxDXueWE/5OCpmA/3Y5DxpYXF+tCV62GsqTO41fqKvyYF2JvtCNjdBLwyNbwa5p
         3SVnoim3yj07AU+D2wXUHX76lPzaPLJz7LQgHI2faPy4NfCh1/iF86sI+g1C0DWiIOT2
         9peZ3Ik3j+oz6kXeum+G6ID0PEvIIX8Pt2SSaePDLF+YE5wdgvE/TnpcvvNstrpj0biw
         tXt0ofGhsabFhx0rx6HB3rrnMNtbybpr7e8CMtqthf1OexxFKim9k5UHipwGeGHBlHv6
         /xaIbJbieejKCm73jFb/j4AOUl3v7N30yOr7TrWUOcixQrTyj491wOz2HcCSVBjQTgRz
         xBdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763036579; x=1763641379;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+GplvHX5yxJ933q0AmGSwv5zwUzQHMR7HZka/BgtTp8=;
        b=ivfNWgp8nVd+DV89pzWaA6DxT36LQqBq4BvCRen1qZOFc1mtFD53altcrTqmZycO+W
         u6Ofuf6qnZn9oJh39KeFi6R2jyn6L2aJulOfMAJLUEzANpHHjhCHT+A3NZUMtUIbzXWX
         jy6++91zncsctKlvJ3rA8N5T0deRwOfMPaMvDPIUM1zE1+ew4gkom4i9mp7VazM+UXTG
         EqEH1wOc0lx/8lHBeB6t9r/Ny1gccS8wB7efR3GocVSigArExak2adYtOQiqlGWssire
         E+OpyzQcyRXRKSkMJCUKCu6MCXONOiAzTXJm4gNpUSWNTp/grJM1ocVGhTO7DVHiejbM
         3W5A==
X-Forwarded-Encrypted: i=1; AJvYcCWrmct9A2rtWDKnhSu2Ca6QcUA000+PzSkiimJo3YWmJO2lrcdyO3zGMik3b+bKVwKy3sloT2vxPiOI@vger.kernel.org
X-Gm-Message-State: AOJu0YxLvgVFiwc7OXEHfzcD9pcxVqTBnQEXAt/fw1oB3kbNzEgOddIc
	lfZgoDksV4l91t/Piu+xw01cHES+LquymH5vyc8ghMqH0ldo49XMcQmVOykW/OUxQ04a9dlYi0Z
	D4RFGzMuOSIhdYzQGmLYchbhfbFt5LLGokGHRp4kl0Dn53Yg8S5ibXMUKisgW/s82
X-Gm-Gg: ASbGncsJ3QmJ5jkZ6Z1U0vIhlsAxQZtQ3RdkyoGIYA6+zRCI+JrjwYT0AZDwITPHSu8
	JeIRW2rWECh8+sC2TOW8XCDXemZCZMJMwbJo8ogtOYD76pq0BMj+dmJycp4aOtGXk98IZyloAAq
	D0JHnVwyFVy47flSyauVVWBa9v8uL39r8X48Eqf1IeI8cuy15zfYJGkab+ga3ZhHkGlQb+qFOUr
	NLoTWyBCgro4kaxsewpBZ1SqvEHcn4GG8mtzz9FmYHW+RcHUcIq6GhVVEdP+RGsH91t8AGgBUSk
	jbVxdm+MiMIaJQM0lyM0cKpUffVSf9usYwgfMFjjaAOAh8jMTQ+jAOpgIMHjCH0xhDZ30Nq+WhI
	nnYkIpgNrdFPQYTyuoRqX7rqr6OjcdCT69Di2fhLPlSW4FLh6P3FkztUQhCN4zpDQrbcvodj9ED
	KWfC1irZfcAsen
X-Received: by 2002:a05:622a:24a:b0:4ec:f5cd:8721 with SMTP id d75a77b69052e-4eddba97f18mr79916691cf.0.1763036579301;
        Thu, 13 Nov 2025 04:22:59 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFYSlJ7Mqnq9Dyf5Mj+nWkiUVIb7DVf2qG0ZIWMq78bytd3X9FzuruWsSqOGP5mq4NeoWsUsw==
X-Received: by 2002:a05:622a:24a:b0:4ec:f5cd:8721 with SMTP id d75a77b69052e-4eddba97f18mr79916231cf.0.1763036578763;
        Thu, 13 Nov 2025 04:22:58 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-595803b4d70sm363916e87.39.2025.11.13.04.22.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Nov 2025 04:22:57 -0800 (PST)
Date: Thu, 13 Nov 2025 14:22:55 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Cc: Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Rob Clark <robin.clark@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Sean Paul <sean@poorly.run>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Jessica Zhang <jesszhan0024@gmail.com>,
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
        Thomas Zimmermann <tzimmermann@suse.de>,
        Connor Abbott <cwabbott0@gmail.com>, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org, linux-arm-kernel@lists.infradead.org,
        iommu@lists.linux.dev, devicetree@vger.kernel.org
Subject: Re: [PATCH v2 05/21] drm/msm/adreno: Move adreno_gpu_func to
 catalogue
Message-ID: <kwf62e5l5n4pwfmetvhicupj7r6ow46dnlkkluyhl7s5wuazpw@q7vbdi7d6ul3>
References: <20251110-kaana-gpu-support-v2-0-bef18acd5e94@oss.qualcomm.com>
 <20251110-kaana-gpu-support-v2-5-bef18acd5e94@oss.qualcomm.com>
 <28d62905-c191-4c3a-995e-a4146ffce619@oss.qualcomm.com>
 <12e6f588-e422-4803-ae14-56e5297e564d@oss.qualcomm.com>
 <os7rpbynyoeolwvbrocx3yrrxzhextx3srywal2i54jj6dw3mw@n6fbt3pzjvj6>
 <d87bea02-1a89-4854-b760-617c3655b287@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <d87bea02-1a89-4854-b760-617c3655b287@oss.qualcomm.com>
X-Authority-Analysis: v=2.4 cv=E6/AZKdl c=1 sm=1 tr=0 ts=6915cda4 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=LPoitUEaq9Ymm4AzyX8A:9 a=CjuIK1q_8ugA:10
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEzMDA5MyBTYWx0ZWRfXzwliwtmVQpP6
 eduzBGwDZeYRpxhRyBrq7PA8GBoHvZ+i24p3fVRVMtjGOwR2AWThIzcRjXFu9WX4ffYusDXCBBL
 dK3o/6KDSfwFicJNUrhkwcDiRS/U3OqOgSGaPHqUcUfpFFjdJ+c/LnXjVtUZdvD0qAoLJijP/3l
 mdBHBJ+Sfx8zmot+FVKcnth/F7v5z9lq13jCkkFQV7l+c4D8xmvlYMQ5gL9Or7rvTr98mEkjYWs
 9EspF6H1IqTOzDaI/VScNTnubRVM9OOUMFHjkpgY2JywhYif/KQDwl0uyVWADhp+Yxai7vtSi/b
 BJaP7B0C10trJ0xFjMjW01HB7nZBH7EinKZkWhnOXf1G9D/wHHgqedccrTRmOBS0eynHpVE7Zhx
 u/3YETKInOgfarsPTGfvmp86V0wE+Q==
X-Proofpoint-GUID: Qsegxp5DraCpO5PIcoZdBlkKAUfjmUyF
X-Proofpoint-ORIG-GUID: Qsegxp5DraCpO5PIcoZdBlkKAUfjmUyF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-13_02,2025-11-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 adultscore=0 malwarescore=0 spamscore=0
 clxscore=1015 phishscore=0 bulkscore=0 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511130093

On Thu, Nov 13, 2025 at 10:27:09AM +0100, Konrad Dybcio wrote:
> On 11/13/25 4:38 AM, Dmitry Baryshkov wrote:
> > On Thu, Nov 13, 2025 at 03:32:51AM +0530, Akhil P Oommen wrote:
> >> On 11/12/2025 3:52 PM, Konrad Dybcio wrote:
> >>> On 11/10/25 5:37 PM, Akhil P Oommen wrote:
> >>>> In A6x family (which is a pretty big one), there are separate
> >>>> adreno_func definitions for each sub-generations. To streamline the
> >>>> identification of the correct struct for a gpu, move it to the
> >>>> catalogue and move the gpu_init routine to struct adreno_gpu_funcs.
> >>>>
> >>>> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> >>>> ---
> >>>
> >>> [...]
> >>>
> >>>
> >>>> diff --git a/drivers/gpu/drm/msm/adreno/a6xx_catalog.c b/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
> >>>> index 44df6410bce1..9007a0e82a59 100644
> >>>> --- a/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
> >>>> +++ b/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
> >>>> @@ -683,7 +683,7 @@ static const struct adreno_info a6xx_gpus[] = {
> >>>
> >>> Somewhere among this diff, a619_holi needs to have gmu_wrapper funcs
> >>
> >> Could you point me to the holi's devicetree? Currently I see only a610
> >> (sm6115) and a702 (qcm2290) uses gmu_wrapper.
> > 
> > I don't think upstream was ported to SM4350. SM6375 should need the same
> > hook, but I don't know why Konrad didn't enable GPU on that platform.
> 
> I'll try to fire up -next and confirm it hasn't bitrotten.

Maybe then a patch to enable it too?

-- 
With best wishes
Dmitry

