Return-Path: <devicetree+bounces-237906-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id B1DBDC55921
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 04:41:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8DD173AA39B
	for <lists+devicetree@lfdr.de>; Thu, 13 Nov 2025 03:39:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2B6592417C2;
	Thu, 13 Nov 2025 03:39:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="E2ibn0Ny";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HOmkQ8rQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64A7019C566
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 03:39:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763005150; cv=none; b=dZrlAf9w3eDWaT7M3uCHSKzIKOuz9CPUuOi3ObRe9G8nuwLisqQfAsWvdnYLfsXvS2WiAfVhrs7GLMeyBMA+y8hmAko7Fk7CFqq3eo54fRPV3DNzl3GKijhykjgEgKxzvW2JUM+tOHiUeQ0gBV82JwhGdXeclQJRQvOHSNSrjYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763005150; c=relaxed/simple;
	bh=6M1vecMqKiWdmjUo6/b6CpU1SEobhoEpqL15kBJf/kM=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=AsqDSO3RyjiZuJUuTuw9q4IkOPeyuSdYQQjWAck4lnEcVQ6E9dJsZ72krIK5PRaAqq5ojYmD4M+WBhigOB1NjYNd7JvFPblsTJnSjEQGNUa6KOshWEpw+fb1gnW/F2POeUY6UDrnRT51mLjA4RVTf9Lu44NnNEgT3IkXnMK6Y7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=E2ibn0Ny; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HOmkQ8rQ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AD11JPm2909814
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 03:39:01 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=V6gfFLOMNYMkWUfdwrHHvmuf
	2M4FWVMTiIkqm7l+1fA=; b=E2ibn0NyZbA3Ts+3iEG8rYsonyqGqBzb7Ro76wZb
	zZI6L5WNFI2zNwHFMTt1D3mIn9JJkfiezHMBwBbUCufUcQ52HHeuYSd1IGIbgy0/
	i15vALVjKL7pBHbSItp4nT4HPtQPzOTuiTWmS2Hahj0/nmRjhSWHhrTIs6FDus2Q
	zUTOp36uw5ratHgr1ZWk47v6meB2RtMc4I6Cr2gKtG160X3rO12oU16zHLyahNMu
	gut8iqAP7KRZaFGftoPYKn9K58Li8a5M9ARctTc6gEhu6JIYX4PR2UfxXw21WY1y
	WnAKCz9A95GPo7BfBo3BIX+rps6T1yMgr1Y9Bf3lr0zBzw==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4acygm9egq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 13 Nov 2025 03:39:01 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-8824f62b614so12972496d6.0
        for <devicetree@vger.kernel.org>; Wed, 12 Nov 2025 19:39:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763005141; x=1763609941; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=V6gfFLOMNYMkWUfdwrHHvmuf2M4FWVMTiIkqm7l+1fA=;
        b=HOmkQ8rQWodIG34Mmyo9sk6oA74Vkw5c1ZiaX7yQAXIjmPJoV5nOy9v7FBVu3AhM0d
         vxwWAjHotMHdOQTw4jJxI4ABtx672ua9ZG3cdYkQLZJmlBpeKXrP2d+iNv+pPr8K7dqk
         EV9E00oxXnstwNd+oqJI3DWty1ij3cw8VFIX1mWjBQpI/rXqfjT+faDyxxiK0bCbG9LC
         ABjPkOrvhvQWN06yviiogcPjVA49RGogv7T8C0idLkW31jsVsOqiSl0Ep0uSXROPWaTa
         rzYgXSxu5ibuRZWMjk2fzJ38WUsNFmqEKrAIVxnETwqYc6Aip77aQc1uaqqkAAsQQYMI
         prng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763005141; x=1763609941;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V6gfFLOMNYMkWUfdwrHHvmuf2M4FWVMTiIkqm7l+1fA=;
        b=YT2278A7WvMbiMwzX41t9GLgwYxaDfzepFqvGqy1y2uYoF5hykcL29aDoV22bWYw2W
         5UMg2bvlYZ4HviqgfuRWxRThjqdOOooKfY7WDN3/waZZ8q9+53AdXt1+xiEOuSfkObPQ
         lWcSP2m2OSoQev/X0zrrN4dvQS/xefgReUVVp7WGPQNHD2xHmVnVZskyDNRJp0+5m3gc
         KvDHbmWTnzuzJa64uQcgw0kZtgT/O3T/h+TdfTOtHtvsSPs+sVdWKfd4hbtyI50bulDd
         4bZntyJ2oKPdJrItX5KtyY/kC72w4PNapMPATLiMQgcXP1JKiJgCYVDPmG0ZVhFlnimh
         yiSg==
X-Forwarded-Encrypted: i=1; AJvYcCXRbNZc9ZesZy1pulH/v3Thvb+z4n9tTTkbxjD/uK1m9W9VUdFqSeS6JcWfvaoRuBD5Hdb0QP5uFXZO@vger.kernel.org
X-Gm-Message-State: AOJu0YwO+jayNAl6B8VTKvbtcXAcGK7hsTHmlU+OIlvSKn3p7DciOOWz
	XuMPtFQhrLAhYxe+j90URap3QMxQguIw/PyQ8KpDy9B69CztFl2sUMzwoI2FktYysc39NoCAc36
	J/lmjb/m58oUq0JzWmE7ddhJBis/Vi1GSM6JFLlrcGsznEaqviUuPKIqq6Oxs4+ll
X-Gm-Gg: ASbGncv+UaH+ThlrIWKlpPMm2Azpr2LezluczfXgkNbWwyUKyF28mRtcRueHfPL9Fvp
	0mrfJ5t3ANN+GtEqJNyqJJ7WvCvWuos8wMzheaW2KV+EpjPSyfHWWODgxxOpgXIDGV8wuGF8Msh
	9NzJIx+hhraeRklDQEZTvi6zV4zFxh5lHVtO4rjhU3qGZ4OeGqmWc06O/vrR4KtJKgCjNgx3x90
	AW0/zBai+QYJixJNnZNhEQc9D7kysoTo/1PPVE5NJzzGshIPbOqduR21nHbhjQ3BJmcSprZzOrk
	6ZmaxYWULAo3B/VNKUJ7SmwehcTXurBVqxPYrqPnnRoikC+pqgQf1tnt+D3XynixXJHEcXN4a0R
	3HNyufRxy8vINKjDIKDBbLHqiQYk2b2voxiyHl5ADV4XQkzdWUUjOPHRe0RTgTffiDMJgT9gF6k
	D1pLHNq1NjkdSn
X-Received: by 2002:ad4:5ca6:0:b0:880:541c:8243 with SMTP id 6a1803df08f44-882718ce64cmr59684716d6.1.1763005140612;
        Wed, 12 Nov 2025 19:39:00 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFLs3C0c93KWlGhuQL2zqwisxhLVaS3eXXtyZ+U1XHiyIF0ajQExCpK2eFHj8X6rYEd79M4mA==
X-Received: by 2002:ad4:5ca6:0:b0:880:541c:8243 with SMTP id 6a1803df08f44-882718ce64cmr59684426d6.1.1763005140130;
        Wed, 12 Nov 2025 19:39:00 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-595804057b0sm118302e87.85.2025.11.12.19.38.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 Nov 2025 19:38:58 -0800 (PST)
Date: Thu, 13 Nov 2025 05:38:54 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Cc: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
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
Message-ID: <os7rpbynyoeolwvbrocx3yrrxzhextx3srywal2i54jj6dw3mw@n6fbt3pzjvj6>
References: <20251110-kaana-gpu-support-v2-0-bef18acd5e94@oss.qualcomm.com>
 <20251110-kaana-gpu-support-v2-5-bef18acd5e94@oss.qualcomm.com>
 <28d62905-c191-4c3a-995e-a4146ffce619@oss.qualcomm.com>
 <12e6f588-e422-4803-ae14-56e5297e564d@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <12e6f588-e422-4803-ae14-56e5297e564d@oss.qualcomm.com>
X-Proofpoint-GUID: b6HQNN6Va5x0UQvQs_uodxYhIPzWiXj2
X-Authority-Analysis: v=2.4 cv=E/fAZKdl c=1 sm=1 tr=0 ts=691552d5 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=CJ44idKeuHZi8Vt8iyEA:9 a=CjuIK1q_8ugA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-ORIG-GUID: b6HQNN6Va5x0UQvQs_uodxYhIPzWiXj2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTEzMDAyMiBTYWx0ZWRfX4o5uf5NQe0nN
 1SQPWw/wPlfVPb1Pxn1EZtcrn0lonhq7S4/uEVm2LygpbAufdmJXJZnLgzYK7lnTQ0HTXzG6nPf
 v7TGKSjlDQEKecH+Xo8YHCBa/KmYoEeFMF+PQWG1O72ROGNS7pEMQ1lwnDXICD4Yig8vQtBtJKm
 ttLEkYwPEVwNAXeeS5Fh+rOy8zd7H+81lZiWsWsRapVSqebUTeFudIl82uwePCdNj6TopSUlnJB
 ThahlQ+3vNlS29aDJL3JjcH/aqucUuCXu7qgFBS57YJoQh9dKUDmmc3DbhVkRFj+W0NUbwhjWDX
 84MqyNzgrwwVPf2AXabGNdjhFthVEs5z8qDTV19MamkMvuv51/0I3O2aWaADZlELFEhFgNMW6Y2
 Ox3eOdN8fPJxDXdNS7JN/ghBc+DaXw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-12_06,2025-11-12_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 spamscore=0 phishscore=0 suspectscore=0
 bulkscore=0 impostorscore=0 malwarescore=0 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511130022

On Thu, Nov 13, 2025 at 03:32:51AM +0530, Akhil P Oommen wrote:
> On 11/12/2025 3:52 PM, Konrad Dybcio wrote:
> > On 11/10/25 5:37 PM, Akhil P Oommen wrote:
> >> In A6x family (which is a pretty big one), there are separate
> >> adreno_func definitions for each sub-generations. To streamline the
> >> identification of the correct struct for a gpu, move it to the
> >> catalogue and move the gpu_init routine to struct adreno_gpu_funcs.
> >>
> >> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> >> ---
> > 
> > [...]
> > 
> > 
> >> diff --git a/drivers/gpu/drm/msm/adreno/a6xx_catalog.c b/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
> >> index 44df6410bce1..9007a0e82a59 100644
> >> --- a/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
> >> +++ b/drivers/gpu/drm/msm/adreno/a6xx_catalog.c
> >> @@ -683,7 +683,7 @@ static const struct adreno_info a6xx_gpus[] = {
> > 
> > Somewhere among this diff, a619_holi needs to have gmu_wrapper funcs
> 
> Could you point me to the holi's devicetree? Currently I see only a610
> (sm6115) and a702 (qcm2290) uses gmu_wrapper.

I don't think upstream was ported to SM4350. SM6375 should need the same
hook, but I don't know why Konrad didn't enable GPU on that platform.

> 
> In the driver, adreno_is_a619_holi() checks for both 619 rev id and the
> gmu_wrapper.
> 
> -Akhil
> 
> > instead
> > 
> > Konrad

-- 
With best wishes
Dmitry

