Return-Path: <devicetree+bounces-240085-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id EFA2DC6D2C3
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 08:37:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by tor.lore.kernel.org (Postfix) with ESMTPS id F3CF72D111
	for <lists+devicetree@lfdr.de>; Wed, 19 Nov 2025 07:37:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E3ED6322DA8;
	Wed, 19 Nov 2025 07:36:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CmA+dQ8C";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="CF0smnOo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D26E3191C3
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 07:36:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763537784; cv=none; b=YL7+1AUm1ulHETTYU3iTnGyHh3GBBcUSX1cy5jnwdt3N5y8t1fTPfQAlMMLuIKB4WLFritAn2Jm6uyTfOXanhKRHtL91Cv+ZZAkpmSYmcdq5IORySrQl6pR2YLDkxY8exnAP2SW2yDb0QMkgWpUV1OB0viU+4hnQLca7V3UMCk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763537784; c=relaxed/simple;
	bh=CeKza4z7f+gCmqjYhUrhMKPiHZJ6Ib1KoSXfggBRBl8=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=HhYPeRakdQLMbG5NUgeJUUoFAAe3SjD3HQDT4ifAnL2QW2veexynEhVrD7k92MqFWTgFVM6K2vyV+96iyV+eCalPqCA82mkReMGyjckg2q3KDpx8vfNoOH7i7VFud62m+4eb2xbobDDRTl4gy/f7BJjmHm2yru00EVervqsEBLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CmA+dQ8C; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=CF0smnOo; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5AJ61RWe826900
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 07:36:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=b2fJw1Fwo1X18bw+iFRPNcjg
	skw8RlhaPnqMy2U+zDk=; b=CmA+dQ8C28DdnSv9JWNVNc8+2UzqdTunaSWniQxQ
	h2Rdqug3UdbGHETbZQP9dkFAjzz3Xi5rej0aUU5/NadLklP3jccJgRGDKBuKTsQY
	Fl2HxA/zKo1x+Esxinr4hteVaYGM8uhwdkThJbl8xiybl6MOyW3H6WbPCNWeBuVr
	mTuVhFPAMO1JBGwZPB0jGih+mKR716g+kdoBaJHWgYQntJU47wlxE00cbaI9ZgJI
	WyOjK4aiEzVeMEJMbU+TjEB95j7vudDo22kEGVJz5ErP8j+bAOOksjjYpmCwhoWn
	otowhVUDkQUlnvcC4mbZVuf25zOFR0luo7BWigFSM3914A==
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4ah88w88ud-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 19 Nov 2025 07:36:22 +0000 (GMT)
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-8b26bc4984bso1055279885a.1
        for <devicetree@vger.kernel.org>; Tue, 18 Nov 2025 23:36:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1763537781; x=1764142581; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=b2fJw1Fwo1X18bw+iFRPNcjgskw8RlhaPnqMy2U+zDk=;
        b=CF0smnOo4JPcqR/wGakhGpkVeCdO/djsXlsXsOiwoBO0JfXHQwCIz6E0O7pLM3mICu
         D40qsb4YWoCHeT1s+ZKtxo8t3kPeZE58nxRIPe2jwEK/gXXcujGKTevskpzkPCa7GG0j
         2xWvq0ZQfUro/lvue1xR8jmk066xGT1OwPOT4TmqF5/6LTu8EzM6/IuClYX4EenGHVcL
         QpovUnjXgQlGf9FfVtMoSss9xuy0ppvTlNI1XylbH5teDeyk1gnMRaJcxZH1A4uNH58i
         9Jgj0IpqAKWOiT9WA9ZellzqKSUuYRY+7bE6F6GEXoM7cvpQfjICjT+gLhWBySFmDwKd
         MAvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1763537781; x=1764142581;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-gg:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=b2fJw1Fwo1X18bw+iFRPNcjgskw8RlhaPnqMy2U+zDk=;
        b=dy3LB9ZsOXTKw03yaaKqSlXdxnnbtHowu6DiQ+HvTOSEWB010zzUDZNIh5wd/CSoZH
         /GkzuGHTiq1DXlgnnz23931V0hFzREjejQd7gQ1TAptloWFg+jAhH/9B9BB74dJwLP51
         QO768b1r/BurLYaUS1Sbuwny+ZUkxXnz2gJjBosV4gXfcIviSFcvH0mgWVbFkIUheXUI
         g7YlFTdcHTRbqc+Leze3PMZjelIzvwM3iYFyYpOy0upgZt7a39SAG49u9HG7YbfOBj53
         ePbWEsfysamB0sqhkT/xS1T1kBZBJcnNZ9OltYuCpvOEOl/komujITWrf+XVPKLBL9hT
         SL0A==
X-Forwarded-Encrypted: i=1; AJvYcCXUe+ngzrr37iC+xPPxRLx0wZVm7iHg2kSL5C6Lc2TN11233vZHCO0b6VCtGQuW8daPsPS8hMFpXoqv@vger.kernel.org
X-Gm-Message-State: AOJu0YwwekIzUtb6x6eKrbp9mjp4aX4s2GUXkz4Cg3BDAmcAAfEl2REb
	rwWee1yA9+DZRpok/wFA+Osaf/PQe4gt2GClD+/qkIDj/6cQGCLsnc7jcXCCOEoVjbV77ScVCge
	r1ZPdEyoZmY0kGNQt+LQJp9tR1jyWTLO8pLtglusxPM/bP43jJfzL5dk7TrGcFMWY
X-Gm-Gg: ASbGncuRkqfdmTZYeV8c1CjZYMG6ogAgqAVgP0ZYMmnh2BxggKSnOm9snVdDjd4OAKr
	u0Lwyt6YmFMi4HrhZqadHzu/Zr2K1JddLr0WusFtVEDZpn2rE7d4ue5HqIfNOMlxeptLmfiu+NA
	vwfp10bTPzzG2P8xlXpCuFdQkrDy7FEvjVvagactqoKjuUZdabnDXJuukqkQClBKOOUFaBb3otM
	pURGlpRbSnaC36lU+XEAWke/sHjO4PPY1gnvHCN1IIwvTsjvkbsofOeVoHpcTt8WN/89JQAMS6c
	DU8F4nO8UH/UeMBHkQ9RyUhY6C30ArkHAtwuLCWMMGmfv/cbmfqo0/WrqcJ/mxInh8oY9m7uRy2
	2PVTC9S/b++f6v2hPYaq2fRv/QEGLYdM97U6idBfvFiLfMzU13ZMIBxLf5B1X/DwRyt70fJ0zzp
	OZtIYTgOoGdwlwJLvD2Sc0/ww=
X-Received: by 2002:a05:620a:1990:b0:8b2:730f:134b with SMTP id af79cd13be357-8b2c31af190mr2305951485a.50.1763537781427;
        Tue, 18 Nov 2025 23:36:21 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFUkKb4mpp8eMpxhGiHmlERrpybKBET9nRQckVHp59VNmMM7vOmHFeS0Znq6PQENMcfVRvoNw==
X-Received: by 2002:a05:620a:1990:b0:8b2:730f:134b with SMTP id af79cd13be357-8b2c31af190mr2305949585a.50.1763537781003;
        Tue, 18 Nov 2025 23:36:21 -0800 (PST)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-595803b8bc7sm4426694e87.46.2025.11.18.23.36.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 18 Nov 2025 23:36:20 -0800 (PST)
Date: Wed, 19 Nov 2025 09:36:18 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: david@ixit.cz
Cc: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        Casey Connolly <casey.connolly@linaro.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        phodina@protonmail.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        phone-devel@vger.kernel.org, dri-devel@lists.freedesktop.org
Subject: Re: [PATCH v3 3/8] drm/panel: sw43408: Introduce LH546WF1-ED01 panel
 compatible
Message-ID: <mhybllmkinoaa5z4de5wxrcu5oudg3xyxsnktfn57u7ryas74d@cph7cfasciyi>
References: <20251118-pixel-3-v3-0-317a2b400d8a@ixit.cz>
 <20251118-pixel-3-v3-3-317a2b400d8a@ixit.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251118-pixel-3-v3-3-317a2b400d8a@ixit.cz>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTE5MDA1OCBTYWx0ZWRfX9URxR50ixXxx
 rjOadON4e/U49FMxEAb5sl1Ydf9zmM/lSMhQQWKi1cencGuci/GU1xlQ+ZdsOTEa+LPnrc2Qek4
 q8wOR0sibm89P+TkpRoX7qlc6I5GPG7YTQqUR6y7I/DipAGYGGtyZKLTu1fVSk003IrvF1Ng//e
 DRTtfpfsZ5KXV0L3uVAi0LJm8MW+kzcbAZ4UWcC1ld+Tl3+K74UsiLfu9y1kgLBsoibrFWB0sfC
 1Q4x2sSK2i/fycfjPvDsCzZa1k8oMm3lkOwl8eVA9KNVO0PZW/speGXSRWEgK+YGd2dqwRRPTm8
 uBglPN6xiEnq6jLoUFB3zwVnqGnPnAicm9O+pt9X80ha7ILKV3E6zlBOc5/xpN4PEdvmjXYRi1V
 Y9qH5VFFjq/GCPKOxtlXfWyySCdfaQ==
X-Authority-Analysis: v=2.4 cv=YKqSCBGx c=1 sm=1 tr=0 ts=691d7376 cx=c_pps
 a=qKBjSQ1v91RyAK45QCPf5w==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=-kFX126oTHwKP8aA0KsA:9 a=CjuIK1q_8ugA:10 a=NFOGd7dJGGMPyQGDc5-O:22
X-Proofpoint-ORIG-GUID: aN0zcEviFG6NyZoGMb4sSr_Juz7Ec8u5
X-Proofpoint-GUID: aN0zcEviFG6NyZoGMb4sSr_Juz7Ec8u5
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-19_01,2025-11-18_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 bulkscore=0 adultscore=0 impostorscore=0 clxscore=1015
 lowpriorityscore=0 suspectscore=0 malwarescore=0 phishscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511190058

On Tue, Nov 18, 2025 at 12:30:38PM +0100, David Heidelberg via B4 Relay wrote:
> From: David Heidelberg <david@ixit.cz>
> 
> The supported panel is LH546WF1-ED01, add compatible and adjust the
> struct name to reflect that.
> 
> The standalone compatible lg,sw43408 will continue to work, even thou
> there are no users yet.

.. no users _left_ ?

> 
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>  drivers/gpu/drm/panel/panel-lg-sw43408.c | 6 ++++--
>  1 file changed, 4 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/panel/panel-lg-sw43408.c b/drivers/gpu/drm/panel/panel-lg-sw43408.c
> index 46a56ea92ad9f..bd55f6d8f2771 100644
> --- a/drivers/gpu/drm/panel/panel-lg-sw43408.c
> +++ b/drivers/gpu/drm/panel/panel-lg-sw43408.c
> @@ -149,7 +149,7 @@ static int sw43408_prepare(struct drm_panel *panel)
>  	return ret;
>  }
>  
> -static const struct drm_display_mode sw43408_mode = {
> +static const struct drm_display_mode lh546wf1_ed01_mode = {
>  	.clock = (1080 + 20 + 32 + 20) * (2160 + 20 + 4 + 20) * 60 / 1000,
>  
>  	.hdisplay = 1080,
> @@ -171,7 +171,7 @@ static const struct drm_display_mode sw43408_mode = {
>  static int sw43408_get_modes(struct drm_panel *panel,
>  			     struct drm_connector *connector)
>  {
> -	return drm_connector_helper_get_modes_fixed(connector, &sw43408_mode);
> +	return drm_connector_helper_get_modes_fixed(connector, &lh546wf1_ed01_mode);
>  }
>  
>  static int sw43408_backlight_update_status(struct backlight_device *bl)
> @@ -214,7 +214,9 @@ static const struct drm_panel_funcs sw43408_funcs = {
>  };
>  
>  static const struct of_device_id sw43408_of_match[] = {
> +	/* legacy */

Nit: I'd read this comment in a way that both entries are legacy. Would
it be possible to adjust this somehow (e.g. put legacy on the same line
or extend it, explaining that only lg,sw43408 is legacy).

>  	{ .compatible = "lg,sw43408", },
> +	{ .compatible = "lg,sw43408-lh546wf1-ed01", },

>  	{ /* sentinel */ }
>  };
>  MODULE_DEVICE_TABLE(of, sw43408_of_match);
> 
> -- 
> 2.51.0
> 
> 

-- 
With best wishes
Dmitry

