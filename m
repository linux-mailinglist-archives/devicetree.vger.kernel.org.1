Return-Path: <devicetree+bounces-222675-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BAC18BABD83
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 09:35:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6380C1C7C28
	for <lists+devicetree@lfdr.de>; Tue, 30 Sep 2025 07:35:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B55792773E2;
	Tue, 30 Sep 2025 07:35:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XV68o9vi"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0E4C223DC6
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 07:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759217736; cv=none; b=QCFu9GJgghBsQbezoElIOU2Zvz65agz+o/oAaD0tjhbJbxkyn0qNSCGcWXdJHLVIJC7QVSAYv6FCfs7QBquHYFGWXLhX5JNFQ+uyhbQ65Pe7P9x5lkmGChJStFQJ8jTAouFTjuLfPksuw8uEWnHPm9ddW2yISBJTKvyvqKPEz6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759217736; c=relaxed/simple;
	bh=5EoJw6PFV4xOrubkZpNzdhg/JMazI6oX99HQhfIJuXo=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HNpLj6gudSwmNFXKaI1qXC4RCRuJ0ZNwW0hoco7QUIB/d4aOpfopR8c+kCbaY6NPuN1+FpTk1vGGyTB2DmlRzhxg9hfkt3f/s/V1em3P+rZx5R4QkKs3u3gTH+xnb9zpyfJyMq+PHz5ywWTS+AR39Qgkq7FevDQJA42/OQCkQuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XV68o9vi; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58U4HYsB020364
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 07:35:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=2X2Yx35Wxs1iuv5sfQul5ibo
	4eMVpvctIYM/Zv08Q+s=; b=XV68o9vi3pDub56NezK/ZmLzqWhfvRmH2dveyMgi
	U6wcY0a1+a+N+E2/4fNLx7fHd+KpVu3go51pQEDB+TRgeMtVhh5WQe6sDCpPx7Y0
	fTls75LDmi/ntOtz1XuLnibspcb4phJQPB/+Ujt+3dR2A8rJdVfaw4Cc/Rcm2pYF
	vcwq77WKXUY8OjFCSm617uZk7NrACzeMFSsPV9hsFwUaJU99v9+xwQRp8lYh0nNn
	TGFy+kZkFxcqJesX6GzAFWqS6q1NCoNWf8cNLJwg9pRGBNkLuXewry2liHlr/M/4
	nl46jB8hvaZCLAoIaA+eZIrgJrcm2t+3WMnYiewugdIlGg==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49e6x5r4qm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 07:35:33 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-82968fe9e8cso1295252885a.0
        for <devicetree@vger.kernel.org>; Tue, 30 Sep 2025 00:35:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759217732; x=1759822532;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2X2Yx35Wxs1iuv5sfQul5ibo4eMVpvctIYM/Zv08Q+s=;
        b=wFz2YqiN9mb+dpLSjOzV2OpHJIHtnFM6ZI/o0cV4CB4F3KfZUtxD2RmXMdOdrABkeE
         m/b2AG7UGGAVhm9nFuQpZm8dXy0ElYqLY6HUiswBV4Tpcu8myzGSO5qDCTAt/E2EPfMK
         C3fspnf2PIroRdGTFcJluV1XeMxsiAQpdDhVhLWBfMk/qcXCYVUPbr/DEK0xJeDhWv+Z
         3gMi68M4W5kBVZ7U+lINpjnaCPC4RxjWoK2FGeU43xEjT5t4yVPn194RwlBLM9jfw6qW
         1GCcuz1Hu0ZwZdpjJ/FYapr/ma07d8nJ4Px506/0jUuEICHgy8rS1qDy3+SSCErxHDGZ
         D1og==
X-Forwarded-Encrypted: i=1; AJvYcCUK6PRUyNel7a8UTN3NQFNCubb4vPgQSUnWYwu1l5OW+pKAxhVZO8wsbygEr8lovd1WfwOwrx+dTJP/@vger.kernel.org
X-Gm-Message-State: AOJu0YycjTDC6bnt+ZFGRCGm+yPQCxAVT9g6IwHfIQkG1mXmA9oGww7v
	y3fbFe/5tj5jb3OP7YoLCAPfQAH6+2kFJdICMZlcMuBaFeIrWjTR7SolpSJ5iES8I8kiMDYen7S
	7ZAGsdrJMGMHCATkS/sAaGj6HoVjdXsKYGKzkBVglRlpfYWZvsenF6jM/QeRyah5/TFBfmkyS3y
	U=
X-Gm-Gg: ASbGnctr8VXwldTMjUlXqcPmfOhE+9buEcNjIQl05CQnLrbqsQAUuT6hbSX1uerxh+4
	Wmv9JUcn4Zf1FASnFi+6qfMqrwJKQRGqudLfL+GqCsDRfeCpF+h3uwVN1TVCZsC7lamHdTngD0M
	wMJIAimICcUD/4P4B77zoxuITsvJIAt99979Uyfc9b08iN7CIBn4zgTIKFitIj+y8tr8n2dpsA1
	K4SfQwbFZsQV5pTWBVqbBVK2bY994fJhYXErnwPtF9eKowLREbirhFXeC4ddrNL3vb8zoOgm1ZI
	7lxm0Y3CXaueyiUR2I0onaQ4d2Sv8av492VM9w0yZmgrRgj6vjO4Goh0pFEjIyLK+720ERV7Wu2
	X7sVDinH6ze49nDU3m8bUEOI7QQCVhaWlrL05jJjAgXGFlYXNJWGrejaHOg==
X-Received: by 2002:a05:620a:4722:b0:812:48b9:2eb0 with SMTP id af79cd13be357-85ae033d114mr2694582485a.19.1759217731500;
        Tue, 30 Sep 2025 00:35:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE5it0sU1a3Hf3rCZ7ApNdx6pRtj+/sLIw0ENmfmR1C1w+XEeanIn24q/q3O0mgNmaszmj9Nw==
X-Received: by 2002:a05:620a:4722:b0:812:48b9:2eb0 with SMTP id af79cd13be357-85ae033d114mr2694577685a.19.1759217730944;
        Tue, 30 Sep 2025 00:35:30 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-36fb7bfb413sm30037381fa.56.2025.09.30.00.35.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Sep 2025 00:35:29 -0700 (PDT)
Date: Tue, 30 Sep 2025 10:35:28 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Cc: Rob Clark <robin.clark@oss.qualcomm.com>,
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
Subject: Re: [PATCH 11/17] drm/msm/a8xx: Add support for A8x GMU
Message-ID: <mbx2yihv4z3y5w6fptumw47rc3l33pbdduqnu66bgv2re64cjy@wgd2qq3uv64h>
References: <20250930-kaana-gpu-support-v1-0-73530b0700ed@oss.qualcomm.com>
 <20250930-kaana-gpu-support-v1-11-73530b0700ed@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250930-kaana-gpu-support-v1-11-73530b0700ed@oss.qualcomm.com>
X-Proofpoint-GUID: QOufCi98yJR6o6Azp9kx9SX4_Y4JOS1U
X-Proofpoint-ORIG-GUID: QOufCi98yJR6o6Azp9kx9SX4_Y4JOS1U
X-Authority-Analysis: v=2.4 cv=ZtPg6t7G c=1 sm=1 tr=0 ts=68db8845 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=yJojWOMRYYMA:10 a=e5mUnYsNAAAA:8 a=EUspDBNiAAAA:8 a=eCbh4tpp2Mh2J-hmdzcA:9
 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22 a=Vxmtnl_E_bksehYqCbjh:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTI3MDAxOCBTYWx0ZWRfX+ih92zBwG3rv
 4JN5Ywz/mwgobZQRYibLX7Y6TbNOiUQnK0o8pXSndDq3lbMtW1kLnpsfvAAcoxAGEBcaPksNSa6
 J5/mZgtqkQlJem1rQawyDeyBX5ocnRnczj3O/anhKd8Lb680eC/6vNdWIDkZec8XKOcryq41IdX
 xWnZUseZ8NmvZKW/9+NvkbYpzI0qyipnr5zkJpw8Eec27yZU4/A0D+WnAqplkGF7h4r3S0VQ4iU
 uVVfWOK71OlzaabhZk96JJHMkmPxEAx0eflnbKLv2/Y+nhK6DXhmTz2GgLeD95Ar4LrPvlIJbGC
 AZxZLppgf1HQ6tWRLOLZ098IYfcI+EskRNtCXaaoAXeXxA7aUUBIZtn1qFAxl+xnpAl8HioCSnP
 qaW/NA+4fX8EcW7wPvfKv9I8W+Nrxg==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-30_01,2025-09-29_04,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 priorityscore=1501 malwarescore=0 bulkscore=0
 suspectscore=0 clxscore=1015 lowpriorityscore=0 adultscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2509150000 definitions=main-2509270018

On Tue, Sep 30, 2025 at 11:18:16AM +0530, Akhil P Oommen wrote:
> A8x GMU configuration are very similar to A7x. Unfortunately, there are
> minor shuffling in the register offsets in the GMU CX register region.
> Apart from that, there is a new HFI message support to pass table like
> data. This patch adds support for  perf table using this new HFI
> message.
> 
> Apart from that, there is a minor rework in a6xx_gmu_rpmh_arc_votes_init()
> to simplify handling of MxG to MxA fallback along with the additional
> calculations for the new dependency vote.

I'm sorry, I've sent it too early. This looks like a description
of a not-that-related change which should be split to a separate commit.

> 
> Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
> ---
>  drivers/gpu/drm/msm/adreno/a6xx_gmu.c             | 161 +++++++++++++++++-----
>  drivers/gpu/drm/msm/adreno/a6xx_gmu.h             |   5 +-
>  drivers/gpu/drm/msm/adreno/a6xx_hfi.c             |  53 +++++++
>  drivers/gpu/drm/msm/adreno/a6xx_hfi.h             |  17 +++
>  drivers/gpu/drm/msm/adreno/adreno_gpu.h           |   7 +
>  drivers/gpu/drm/msm/registers/adreno/a6xx_gmu.xml |  48 +++++--
>  6 files changed, 242 insertions(+), 49 deletions(-)
> 
> @@ -592,12 +606,16 @@ static void a6xx_gmu_rpmh_init(struct a6xx_gmu *gmu)
>  	struct a6xx_gpu *a6xx_gpu = container_of(gmu, struct a6xx_gpu, gmu);
>  	struct adreno_gpu *adreno_gpu = &a6xx_gpu->base;
>  	struct platform_device *pdev = to_platform_device(gmu->dev);
> -	void __iomem *pdcptr = a6xx_gmu_get_mmio(pdev, "gmu_pdc", NULL);
>  	u32 seqmem0_drv0_reg = REG_A6XX_RSCC_SEQ_MEM_0_DRV0;
>  	void __iomem *seqptr = NULL;
>  	uint32_t pdc_address_offset;
> +	void __iomem *pdcptr;
>  	bool pdc_in_aop = false;
>  

A comment would be nice.

> +	if (adreno_is_a8xx(adreno_gpu))
> +		return;
> +
> +	pdcptr = a6xx_gmu_get_mmio(pdev, "gmu_pdc", NULL);
>  	if (IS_ERR(pdcptr))
>  		goto err;
>  
> @@ -1489,13 +1523,14 @@ static unsigned int a6xx_gmu_get_arc_level(struct device *dev,
>  }
>  
>  static int a6xx_gmu_rpmh_arc_votes_init(struct device *dev, u32 *votes,
> -		unsigned long *freqs, int freqs_count, const char *id)
> +		unsigned long *freqs, int freqs_count,
> +		const char *pri_id, const char *sec_id)
>  {
>  	int i, j;
>  	const u16 *pri, *sec;
>  	size_t pri_count, sec_count;
>  
> -	pri = cmd_db_read_aux_data(id, &pri_count);
> +	pri = cmd_db_read_aux_data(pri_id, &pri_count);

separate commit

>  	if (IS_ERR(pri))
>  		return PTR_ERR(pri);
>  	/*
> @@ -1506,13 +1541,7 @@ static int a6xx_gmu_rpmh_arc_votes_init(struct device *dev, u32 *votes,
>  	if (!pri_count)
>  		return -EINVAL;
>  
> -	/*
> -	 * Some targets have a separate gfx mxc rail. So try to read that first and then fall back
> -	 * to regular mx rail if it is missing
> -	 */
> -	sec = cmd_db_read_aux_data("gmxc.lvl", &sec_count);
> -	if (IS_ERR(sec) && sec != ERR_PTR(-EPROBE_DEFER))
> -		sec = cmd_db_read_aux_data("mx.lvl", &sec_count);
> +	sec = cmd_db_read_aux_data(sec_id, &sec_count);
>  	if (IS_ERR(sec))
>  		return PTR_ERR(sec);
>  
> @@ -1566,6 +1595,57 @@ static int a6xx_gmu_rpmh_arc_votes_init(struct device *dev, u32 *votes,
>  	return 0;
>  }
>  
> +static int a6xx_gmu_rpmh_dep_votes_init(struct device *dev, u32 *votes,
> +		unsigned long *freqs, int freqs_count)

Definitely a separate commit

> +{
> +	const u16 *mx;
> +	size_t count;
> +
> +	mx = cmd_db_read_aux_data("mx.lvl", &count);
> +	if (IS_ERR(mx))
> +		return PTR_ERR(mx);
> +	/*
> +	 * The data comes back as an array of unsigned shorts so adjust the
> +	 * count accordingly
> +	 */
> +	count >>= 1;
> +	if (!count)
> +		return -EINVAL;
> +
> +	/* Fix the vote for zero frequency */
> +	votes[0] = 0xFFFFFFFF;

lowercase

> +
> +	/* Construct a vote for rest of the corners */
> +	for (int i = 1; i < freqs_count; i++) {
> +		u8 j, index = 0;
> +		unsigned int level = a6xx_gmu_get_arc_level(dev, freqs[i]);
> +
> +		/* Get the primary index that matches the arc level */
> +		for (j = 0; j < count; j++) {
> +			if (mx[j] >= level) {
> +				index = j;
> +				break;
> +			}
> +		}
> +
> +		if (j == count) {
> +			DRM_DEV_ERROR(dev,
> +				      "Mx Level %u not found in the RPMh list\n",
> +				      level);
> +			DRM_DEV_ERROR(dev, "Available levels:\n");
> +			for (j = 0; j < count; j++)
> +				DRM_DEV_ERROR(dev, "  %u\n", mx[j]);
> +
> +			return -EINVAL;
> +		}
> +
> +		/* Construct the vote */
> +		votes[i] = (0x3fff << 14) | (index << 8) | (0xff);
> +	}
> +
> +	return 0;
> +}
> +
>  /*
>   * The GMU votes with the RPMh for itself and on behalf of the GPU but we need
>   * to construct the list of votes on the CPU and send it over. Query the RPMh
> @@ -1580,15 +1660,27 @@ static int a6xx_gmu_rpmh_votes_init(struct a6xx_gmu *gmu)
>  	struct adreno_gpu *adreno_gpu = &a6xx_gpu->base;
>  	const struct a6xx_info *info = adreno_gpu->info->a6xx;
>  	struct msm_gpu *gpu = &adreno_gpu->base;
> +	const char *sec_id;
> +	const u16 *gmxc;
>  	int ret;
>  
> +	gmxc = cmd_db_read_aux_data("gmxc.lvl", NULL);
> +	if (gmxc == ERR_PTR(-EPROBE_DEFER))
> +		return -EPROBE_DEFER;
> +
> +	/* If GMxC is present, prefer that as secondary rail for GX votes */
> +	sec_id = IS_ERR_OR_NULL(gmxc) ? "mx.lvl" : "gmxc.lvl";

Can it be NULL?

> +
>  	/* Build the GX votes */
>  	ret = a6xx_gmu_rpmh_arc_votes_init(&gpu->pdev->dev, gmu->gx_arc_votes,
> -		gmu->gpu_freqs, gmu->nr_gpu_freqs, "gfx.lvl");
> +		gmu->gpu_freqs, gmu->nr_gpu_freqs, "gfx.lvl", sec_id);
>  
>  	/* Build the CX votes */
>  	ret |= a6xx_gmu_rpmh_arc_votes_init(gmu->dev, gmu->cx_arc_votes,
> -		gmu->gmu_freqs, gmu->nr_gmu_freqs, "cx.lvl");
> +		gmu->gmu_freqs, gmu->nr_gmu_freqs, "cx.lvl", "mx.lvl");
> +
> +	ret |= a6xx_gmu_rpmh_dep_votes_init(gmu->dev, gmu->dep_arc_votes,
> +		gmu->gpu_freqs, gmu->nr_gpu_freqs);
>  
>  	/* Build the interconnect votes */
>  	if (info->bcms && gmu->nr_gpu_bws > 1)
> @@ -2043,14 +2135,14 @@ int a6xx_gmu_init(struct a6xx_gpu *a6xx_gpu, struct device_node *node)
>  	 * are otherwise unused by a660.
>  	 */
>  	gmu->dummy.size = SZ_4K;
> -	if (adreno_is_a660_family(adreno_gpu) ||
> -	    adreno_is_a7xx(adreno_gpu)) {
> +	if (adreno_is_a660_family(adreno_gpu) || adreno_is_a7xx(adreno_gpu) ||
> +			adreno_is_a8xx(adreno_gpu)) {
>  		ret = a6xx_gmu_memory_alloc(gmu, &gmu->debug, SZ_4K * 7,
>  					    0x60400000, "debug");
>  		if (ret)
>  			goto err_memory;
>  
> -		gmu->dummy.size = SZ_8K;
> +		gmu->dummy.size = SZ_16K;
>  	}
>  
>  	/* Allocate memory for the GMU dummy page */
> @@ -2060,8 +2152,8 @@ int a6xx_gmu_init(struct a6xx_gpu *a6xx_gpu, struct device_node *node)
>  		goto err_memory;
>  
>  	/* Note that a650 family also includes a660 family: */
> -	if (adreno_is_a650_family(adreno_gpu) ||
> -	    adreno_is_a7xx(adreno_gpu)) {
> +	if (adreno_is_a650_family(adreno_gpu) || adreno_is_a7xx(adreno_gpu) ||
> +			adreno_is_a8xx(adreno_gpu)) {

Please adjust your editor settings. It would be much easier to read if
it was:

	if (adreno_is_a650_family(adreno_gpu) ||
	    adreno_is_a7xx(adreno_gpu) ||
	    adreno_is_a8xx(adreno_gpu)) {

(Adjust it here and in other places)

>  		ret = a6xx_gmu_memory_alloc(gmu, &gmu->icache,
>  			SZ_16M - SZ_16K, 0x04000, "icache");
>  		if (ret)

[...]

> @@ -255,11 +256,63 @@ static int a6xx_hfi_send_perf_table_v1(struct a6xx_gmu *gmu)
>  		NULL, 0);
>  }
>  
> +static int a8xx_hfi_send_perf_table(struct a6xx_gmu *gmu)
> +{
> +	unsigned int num_gx_votes = 3, num_cx_votes = 2;
> +	struct a6xx_hfi_table_entry *entry;
> +	struct a6xx_hfi_table *tbl;
> +	int ret, i;
> +	u32 size;

Separate commit.

> +
> +	size = sizeof(*tbl) +  (2 * sizeof(tbl->entry[0])) +
> +		(gmu->nr_gpu_freqs * num_gx_votes * sizeof(gmu->gx_arc_votes[0])) +
> +		(gmu->nr_gmu_freqs * num_cx_votes * sizeof(gmu->cx_arc_votes[0]));
> +	tbl = devm_kzalloc(gmu->dev, size, GFP_KERNEL);
> +	tbl->type = HFI_TABLE_GPU_PERF;
> +
> +	/* First fill GX votes */
> +	entry = &tbl->entry[0];
> +	entry->count = gmu->nr_gpu_freqs;
> +	entry->stride = num_gx_votes;
> +
> +	for (i = 0; i < gmu->nr_gpu_freqs; i++) {
> +		unsigned int base = i * entry->stride;
> +
> +		entry->data[base+0] = gmu->gx_arc_votes[i];
> +		entry->data[base+1] = gmu->dep_arc_votes[i];
> +		entry->data[base+2] = gmu->gpu_freqs[i] / 1000;
> +	}
> +
> +	/* Then fill CX votes */
> +	entry = (struct a6xx_hfi_table_entry *)
> +		&tbl->entry[0].data[gmu->nr_gpu_freqs * num_gx_votes];
> +
> +	entry->count = gmu->nr_gmu_freqs;
> +	entry->stride = num_cx_votes;
> +
> +	for (i = 0; i < gmu->nr_gmu_freqs; i++) {
> +		unsigned int base = i * entry->stride;
> +
> +		entry->data[base] = gmu->cx_arc_votes[i];
> +		entry->data[base+1] = gmu->gmu_freqs[i] / 1000;
> +	}
> +
> +	ret = a6xx_hfi_send_msg(gmu, HFI_H2F_MSG_TABLE, tbl, size, NULL, 0);
> +
> +	devm_kfree(gmu->dev, tbl);
> +	return ret;
> +}
> +
>  static int a6xx_hfi_send_perf_table(struct a6xx_gmu *gmu)
>  {
> +	struct a6xx_gpu *a6xx_gpu = container_of(gmu, struct a6xx_gpu, gmu);
> +	struct adreno_gpu *adreno_gpu = &a6xx_gpu->base;
>  	struct a6xx_hfi_msg_perf_table msg = { 0 };
>  	int i;
>  
> +	if (adreno_is_a8xx(adreno_gpu))
> +		return a8xx_hfi_send_perf_table(gmu);
> +
>  	msg.num_gpu_levels = gmu->nr_gpu_freqs;
>  	msg.num_gmu_levels = gmu->nr_gmu_freqs;
>  
> diff --git a/drivers/gpu/drm/msm/adreno/a6xx_hfi.h b/drivers/gpu/drm/msm/adreno/a6xx_hfi.h
> index 653ef720e2da4d2b0793c0b76e994b6f6dc524c7..e12866110cb8ea0c075b3ae5e4cae679405c4bd1 100644
> --- a/drivers/gpu/drm/msm/adreno/a6xx_hfi.h
> +++ b/drivers/gpu/drm/msm/adreno/a6xx_hfi.h
> @@ -185,6 +185,23 @@ struct a6xx_hfi_msg_core_fw_start {
>  	u32 handle;
>  };
>  
> +#define HFI_H2F_MSG_TABLE 15
> +
> +struct a6xx_hfi_table_entry {
> +	u32 count;
> +	u32 stride;
> +	u32 data[];
> +};
> +
> +struct a6xx_hfi_table {
> +	u32 header;
> +	u32 version;
> +#define HFI_TABLE_BW_VOTE 0
> +#define HFI_TABLE_GPU_PERF 1
> +	u32 type;
> +	struct a6xx_hfi_table_entry entry[];
> +};
> +
>  #define HFI_H2F_MSG_GX_BW_PERF_VOTE 30
>  
>  struct a6xx_hfi_gx_bw_perf_vote_cmd {
> diff --git a/drivers/gpu/drm/msm/adreno/adreno_gpu.h b/drivers/gpu/drm/msm/adreno/adreno_gpu.h
> index b27974d97c7512ecae326eb2d22238330d6c52f0..9831401c3bc865b803c2f9759d5e2ffcd79d19f8 100644
> --- a/drivers/gpu/drm/msm/adreno/adreno_gpu.h
> +++ b/drivers/gpu/drm/msm/adreno/adreno_gpu.h
> @@ -50,6 +50,8 @@ enum adreno_family {
>  	ADRENO_7XX_GEN1,  /* a730 family */
>  	ADRENO_7XX_GEN2,  /* a740 family */
>  	ADRENO_7XX_GEN3,  /* a750 family */
> +	ADRENO_8XX_GEN1,  /* a830 family */
> +	ADRENO_8XX_GEN2,  /* a840 family */
>  };
>  
>  #define ADRENO_QUIRK_TWO_PASS_USE_WFI		BIT(0)
> @@ -555,6 +557,11 @@ static inline int adreno_is_a7xx(struct adreno_gpu *gpu)
>  	       adreno_is_a740_family(gpu);
>  }
>  
> +static inline int adreno_is_a8xx(struct adreno_gpu *gpu)
> +{
> +	return gpu->info->family >= ADRENO_8XX_GEN1;
> +}

This and the register mask updates can go to a separate commit.

> +
>  /* Put vm_start above 32b to catch issues with not setting xyz_BASE_HI */
>  #define ADRENO_VM_START 0x100000000ULL
>  u64 adreno_private_vm_size(struct msm_gpu *gpu);
> diff --git a/drivers/gpu/drm/msm/registers/adreno/a6xx_gmu.xml b/drivers/gpu/drm/msm/registers/adreno/a6xx_gmu.xml
> index 09b8a0b9c0de7615f7e7e6364c198405a498121a..5dce7934056dd6472c368309b4894f0ed4a4d960 100644
> --- a/drivers/gpu/drm/msm/registers/adreno/a6xx_gmu.xml
> +++ b/drivers/gpu/drm/msm/registers/adreno/a6xx_gmu.xml
> @@ -66,10 +66,15 @@ xsi:schemaLocation="https://gitlab.freedesktop.org/freedreno/ rules-fd.xsd">
>  	<reg32 offset="0x1f81c" name="GMU_CM3_FW_INIT_RESULT"/>
>  	<reg32 offset="0x1f82d" name="GMU_CM3_CFG"/>
>  	<reg32 offset="0x1f840" name="GMU_CX_GMU_POWER_COUNTER_ENABLE"/>
> +	<reg32 offset="0x1fc10" name="GMU_CX_GMU_POWER_COUNTER_ENABLE" variants="A8XX"/>
>  	<reg32 offset="0x1f841" name="GMU_CX_GMU_POWER_COUNTER_SELECT_0"/>
>  	<reg32 offset="0x1f842" name="GMU_CX_GMU_POWER_COUNTER_SELECT_1"/>
> +	<reg32 offset="0x1fc40" name="GMU_CX_GMU_POWER_COUNTER_SELECT_XOCLK_0" variants="A8XX-"/>
> +	<reg32 offset="0x1fc41" name="GMU_CX_GMU_POWER_COUNTER_SELECT_XOCLK_1" variants="A8XX-"/>
>  	<reg32 offset="0x1f844" name="GMU_CX_GMU_POWER_COUNTER_XOCLK_0_L"/>
> +	<reg32 offset="0x1fca0" name="GMU_CX_GMU_POWER_COUNTER_XOCLK_0_L" variants="A8XX-"/>
>  	<reg32 offset="0x1f845" name="GMU_CX_GMU_POWER_COUNTER_XOCLK_0_H"/>
> +	<reg32 offset="0x1fca1" name="GMU_CX_GMU_POWER_COUNTER_XOCLK_0_H" variants="A8XX-"/>
>  	<reg32 offset="0x1f846" name="GMU_CX_GMU_POWER_COUNTER_XOCLK_1_L"/>
>  	<reg32 offset="0x1f847" name="GMU_CX_GMU_POWER_COUNTER_XOCLK_1_H"/>
>  	<reg32 offset="0x1f848" name="GMU_CX_GMU_POWER_COUNTER_XOCLK_2_L"/>
> @@ -89,7 +94,7 @@ xsi:schemaLocation="https://gitlab.freedesktop.org/freedreno/ rules-fd.xsd">
>  	</reg32>
>  	<reg32 offset="0x1f8c1" name="GMU_PWR_COL_INTER_FRAME_HYST"/>
>  	<reg32 offset="0x1f8c2" name="GMU_PWR_COL_SPTPRAC_HYST"/>
> -	<reg32 offset="0x1f8d0" name="GMU_SPTPRAC_PWR_CLK_STATUS">
> +	<reg32 offset="0x1f8d0" name="GMU_SPTPRAC_PWR_CLK_STATUS" variants="A6XX">
>  		<bitfield name="SPTPRAC_GDSC_POWERING_OFF" pos="0" type="boolean"/>
>  		<bitfield name="SPTPRAC_GDSC_POWERING_ON" pos="1" type="boolean"/>
>  		<bitfield name="SPTPRAC_GDSC_POWER_OFF" pos="2" type="boolean"/>
> @@ -99,7 +104,11 @@ xsi:schemaLocation="https://gitlab.freedesktop.org/freedreno/ rules-fd.xsd">
>  		<bitfield name="GX_HM_GDSC_POWER_OFF" pos="6" type="boolean"/>
>  		<bitfield name="GX_HM_CLK_OFF" pos="7" type="boolean"/>
>  	</reg32>
> -	<reg32 offset="0x1f8d0" name="GMU_SPTPRAC_PWR_CLK_STATUS" variants="A7XX-">
> +	<reg32 offset="0x1f8d0" name="GMU_SPTPRAC_PWR_CLK_STATUS" variants="A7XX">
> +		<bitfield name="GX_HM_GDSC_POWER_OFF" pos="0" type="boolean"/>
> +		<bitfield name="GX_HM_CLK_OFF" pos="1" type="boolean"/>
> +	</reg32>
> +	<reg32 offset="0x1f7e8" name="GMU_PWR_CLK_STATUS" variants="A8XX-">
>  		<bitfield name="GX_HM_GDSC_POWER_OFF" pos="0" type="boolean"/>
>  		<bitfield name="GX_HM_CLK_OFF" pos="1" type="boolean"/>
>  	</reg32>
> @@ -120,9 +129,12 @@ xsi:schemaLocation="https://gitlab.freedesktop.org/freedreno/ rules-fd.xsd">
>  		<bitfield name="GFX_MIN_VOTE_ENABLE" pos="15" type="boolean"/>
>  	</reg32>
>  	<reg32 offset="0x1f8e9" name="GMU_RPMH_HYST_CTRL"/>
> -	<reg32 offset="0x1f8ec" name="GPU_GMU_CX_GMU_RPMH_POWER_STATE"/>
> -	<reg32 offset="0x1f8f0" name="GPU_GMU_CX_GMU_CX_FAL_INTF"/>
> -	<reg32 offset="0x1f8f1" name="GPU_GMU_CX_GMU_CX_FALNEXT_INTF"/>
> +	<reg32 offset="0x1f8ec" name="GPU_GMU_CX_GMU_RPMH_POWER_STATE" variants="A6XX"/>
> +	<reg32 offset="0x1f7e9" name="GPU_GMU_CX_GMU_RPMH_POWER_STATE" variants="A8XX-"/>
> +	<reg32 offset="0x1f8f0" name="GPU_GMU_CX_GMU_CX_FAL_INTF" variants="A6XX"/>
> +	<reg32 offset="0x1f7ec" name="GPU_GMU_CX_GMU_CX_FAL_INTF" variants="A8XX-"/>
> +	<reg32 offset="0x1f8f1" name="GPU_GMU_CX_GMU_CX_FALNEXT_INTF" variants="A6XX"/>
> +	<reg32 offset="0x1f7ed" name="GPU_GMU_CX_GMU_CX_FALNEXT_INTF" variants="A8XX-"/>
>  	<reg32 offset="0x1f900" name="GPU_GMU_CX_GMU_PWR_COL_CP_MSG"/>
>  	<reg32 offset="0x1f901" name="GPU_GMU_CX_GMU_PWR_COL_CP_RESP"/>
>  	<reg32 offset="0x1f9f0" name="GMU_BOOT_KMD_LM_HANDSHAKE"/>
> @@ -130,8 +142,10 @@ xsi:schemaLocation="https://gitlab.freedesktop.org/freedreno/ rules-fd.xsd">
>  	<reg32 offset="0x1f958" name="GMU_LLM_GLM_SLEEP_STATUS"/>
>  	<reg32 offset="0x1f888" name="GMU_ALWAYS_ON_COUNTER_L"/>
>  	<reg32 offset="0x1f889" name="GMU_ALWAYS_ON_COUNTER_H"/>
> -	<reg32 offset="0x1f8c3" name="GMU_GMU_PWR_COL_KEEPALIVE"/>
> -	<reg32 offset="0x1f8c4" name="GMU_PWR_COL_PREEMPT_KEEPALIVE"/>
> +	<reg32 offset="0x1f8c3" name="GMU_GMU_PWR_COL_KEEPALIVE" variants="A6XX-A7XX"/>
> +	<reg32 offset="0x1f7e4" name="GMU_GMU_PWR_COL_KEEPALIVE" variants="A8XX-"/>
> +	<reg32 offset="0x1f8c4" name="GMU_PWR_COL_PREEMPT_KEEPALIVE" variants="A6XX-A7XX"/>
> +	<reg32 offset="0x1f7e5" name="GMU_PWR_COL_PREEMPT_KEEPALIVE" variants="A8XX-"/>
>  	<reg32 offset="0x1f980" name="GMU_HFI_CTRL_STATUS"/>
>  	<reg32 offset="0x1f981" name="GMU_HFI_VERSION_INFO"/>
>  	<reg32 offset="0x1f982" name="GMU_HFI_SFR_ADDR"/>
> @@ -164,6 +178,14 @@ xsi:schemaLocation="https://gitlab.freedesktop.org/freedreno/ rules-fd.xsd">
>  	<reg32 offset="0x1f9cd" name="GMU_GENERAL_8" variants="A7XX"/>
>  	<reg32 offset="0x1f9ce" name="GMU_GENERAL_9" variants="A7XX"/>
>  	<reg32 offset="0x1f9cf" name="GMU_GENERAL_10" variants="A7XX"/>
> +	<reg32 offset="0x1f9c0" name="GMU_GENERAL_0" variants="A8XX"/>
> +	<reg32 offset="0x1f9c1" name="GMU_GENERAL_1" variants="A8XX"/>
> +	<reg32 offset="0x1f9c6" name="GMU_GENERAL_6" variants="A8XX"/>
> +	<reg32 offset="0x1f9c7" name="GMU_GENERAL_7" variants="A8XX"/>
> +	<reg32 offset="0x1f9c8" name="GMU_GENERAL_8" variants="A8XX"/>
> +	<reg32 offset="0x1f9c9" name="GMU_GENERAL_9" variants="A8XX"/>
> +	<reg32 offset="0x1f9ca" name="GMU_GENERAL_10" variants="A8XX"/>
> +	<reg32 offset="0x1f9cb" name="GMU_GENERAL_11" variants="A8XX"/>
>  	<reg32 offset="0x1f95d" name="GMU_ISENSE_CTRL"/>
>  	<reg32 offset="0x23120" name="GPU_CS_ENABLE_REG"/>
>  	<reg32 offset="0x1f95d" name="GPU_GMU_CX_GMU_ISENSE_CTRL"/>
> @@ -233,12 +255,12 @@ xsi:schemaLocation="https://gitlab.freedesktop.org/freedreno/ rules-fd.xsd">
>  	<reg32 offset="0x03ee" name="RSCC_TCS1_DRV0_STATUS"/>
>  	<reg32 offset="0x0496" name="RSCC_TCS2_DRV0_STATUS"/>
>  	<reg32 offset="0x053e" name="RSCC_TCS3_DRV0_STATUS"/>
> -	<reg32 offset="0x05e6" name="RSCC_TCS4_DRV0_STATUS" variants="A7XX"/>
> -	<reg32 offset="0x068e" name="RSCC_TCS5_DRV0_STATUS" variants="A7XX"/>
> -	<reg32 offset="0x0736" name="RSCC_TCS6_DRV0_STATUS" variants="A7XX"/>
> -	<reg32 offset="0x07de" name="RSCC_TCS7_DRV0_STATUS" variants="A7XX"/>
> -	<reg32 offset="0x0886" name="RSCC_TCS8_DRV0_STATUS" variants="A7XX"/>
> -	<reg32 offset="0x092e" name="RSCC_TCS9_DRV0_STATUS" variants="A7XX"/>
> +	<reg32 offset="0x05e6" name="RSCC_TCS4_DRV0_STATUS" variants="A7XX-"/>
> +	<reg32 offset="0x068e" name="RSCC_TCS5_DRV0_STATUS" variants="A7XX-"/>
> +	<reg32 offset="0x0736" name="RSCC_TCS6_DRV0_STATUS" variants="A7XX-"/>
> +	<reg32 offset="0x07de" name="RSCC_TCS7_DRV0_STATUS" variants="A7XX-"/>
> +	<reg32 offset="0x0886" name="RSCC_TCS8_DRV0_STATUS" variants="A7XX-"/>
> +	<reg32 offset="0x092e" name="RSCC_TCS9_DRV0_STATUS" variants="A7XX-"/>
>  </domain>
>  
>  </database>
> 
> -- 
> 2.51.0
> 

-- 
With best wishes
Dmitry

