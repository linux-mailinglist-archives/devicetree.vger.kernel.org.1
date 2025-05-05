Return-Path: <devicetree+bounces-173651-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 72315AA9348
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 14:36:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 28EA21899D0F
	for <lists+devicetree@lfdr.de>; Mon,  5 May 2025 12:36:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 01FFB250BED;
	Mon,  5 May 2025 12:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="oB+bGQbf"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CD1861FCFFC
	for <devicetree@vger.kernel.org>; Mon,  5 May 2025 12:35:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746448552; cv=none; b=LjK5tmnqmkgGU+YHtQSpncrQ0c2BVRU6I0aB95t6DfgBXSUaOEob7z9SU0NJwKv70j+ZhHiXEEI1YWMqGr0+u8heub31qafBquM/Agpne3bRPuYljIf4NayU4YcHdO+Uen1w/ZnoMe3VWrmQ/514KPmHK0fYDQOKz8tqXvumuFk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746448552; c=relaxed/simple;
	bh=Zzo8qT6W+ElQpK7CYPpA+bB37GELYvuIMWB8kWVYE/o=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=L15i1hXGIe20y5/Tjk3zgJuflZt3V2EInu/pcbIt1llClDG+KWxJADtm1e1BF1mEGA7Rft+3d8duwfBxor2RQo3/mMh5/cKbPcRuGotIvTLCL2fcMXsLzUFbS9kENGXnhdNiXg+SD9Tap7MP4tUe9Rt3YML4WnTN4IoKeLklc+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=oB+bGQbf; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 545BobX1007849
	for <devicetree@vger.kernel.org>; Mon, 5 May 2025 12:35:49 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=t3lkQBdOSxlK02o6RqfGSm1o
	lk235v8tbkgI5LntsXs=; b=oB+bGQbfO3KCHvTZCMoYbqKwKZPR7zwpgZMu5ttq
	0mw6i1yKfqGDQ3aE/StTTiHaFU7OI+ht3od9x0xz2heKNqSbRVEeO8hEnPM6CRV6
	4sW+k4p7P3MWCFYoRn9MSn3f+8vYWiTyqm7RhgJAS5UYK4xWADER0qRfLR6lHTE3
	3OLptjKcLw9zkonuG/tmrHhN27Z8nQ+FuQ6E/PA72Lw+04D57oXmvNxQrkB0t8BC
	Lj3jieZ6Y6IPg/aqGZyGchxGsP0ZfsmvxtP5PcMD06Iqb5rUyRMDoyUtp/zAWrYk
	ff9Z7Jt+dRDVhjOCeipyqgMrM41WXLDPJuWvMN0n/KAMbg==
Received: from mail-qk1-f200.google.com (mail-qk1-f200.google.com [209.85.222.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46dbc5c361-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 05 May 2025 12:35:48 +0000 (GMT)
Received: by mail-qk1-f200.google.com with SMTP id af79cd13be357-7c5f3b94827so706844085a.0
        for <devicetree@vger.kernel.org>; Mon, 05 May 2025 05:35:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746448547; x=1747053347;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t3lkQBdOSxlK02o6RqfGSm1olk235v8tbkgI5LntsXs=;
        b=nMEwzCQMPZXP1/n3DKXYR73d3wWN6M2HBvpau9e3uZcOfLiov3nC94ouBbJ6Ym8O8N
         p3NZlntArjJKhU9/Gc+Xw+IM0LVsbRcS75auCRhugxzVKTiwfyuVFI3HmB3FPIbDkaLp
         asxmibtBmnXLeSLfyXmvItejZTbnJN0nMClLbUjNYfWeqpCjjnayBz/UXzNC9hmSzzsu
         sVe5YoWhn/2qz8WH6eyvK9bqdxqEd1Vi3UTfZxoZCzdKmKYHB7nhlhINaiWCOe9EfD8R
         vkmObvGFjpKLhWCD4py4RisMH/VJI68e+Az0MDWKRg4rg5njW69si1x9GbQH7RDy8zoc
         SsOA==
X-Forwarded-Encrypted: i=1; AJvYcCUHYQVmZOK/JB6i6gWpZIBVZnwozQ+8dgCmgIOnMJ6gPM4l6xDZ2iL1yBgnNagnxNsPXDYU70c6hs3H@vger.kernel.org
X-Gm-Message-State: AOJu0YxS5NfPcV1xRMF6Ks2iRUJ+5VTWv0fgabkeJPPofZMJriXYqzpU
	oxzzx76W+/TF5J+tVCHZQlyveLichmVr3omVa1DyTuViVDUVmL6wYrdbXHZg7F3nulyV2XqQ5RD
	Pxy1gP+E3z2WsUiuXBWKwHSjqt6TDpbDOE1lR2jHvTafQ4fRIE7vXHne/QaUA
X-Gm-Gg: ASbGnct/2OVS40gNG2JeiX4wbIzb4CO0XpAvp2+39HwO7keRnjQLYi2+4DElEdIGNna
	9H3pjQJGi8tX5XkdlFssLIU7UK44uWEcQLrb7S+JoBe/yy63KWWIwfdmID2Zv+mOlOwfN7KH0Eo
	Tqb7mM7xeesu/Z3TbkYtgGI4VseOc8xgDaZGPlWLR/FxJrGZ9lmoEOmSUIeGJN08XkaM7mZ4m4q
	NFpE33wQwiy3Gt2oDi+bKrsefLV7WGte+G+znhT2pWyM/6ROmQDJdDCxE4pdwKEwhkFPvqyhE9W
	qFlhmP2F9h9q5dwM2B4iVqopCH5P3TE5tu1rrmetpOSjXzZ68zZ0NahjmqF1RuX8DMz4lb9KIdI
	=
X-Received: by 2002:a05:620a:2a16:b0:7c5:4b6a:d862 with SMTP id af79cd13be357-7cad5b4d28cmr1471548885a.33.1746448547555;
        Mon, 05 May 2025 05:35:47 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFwtkRQRntUbGznMt8lXyW4K5q0xBaV6j0bk3J+OZSNHs09W25QCShb9JofbW226xRCv08R8g==
X-Received: by 2002:a05:620a:2a16:b0:7c5:4b6a:d862 with SMTP id af79cd13be357-7cad5b4d28cmr1471544285a.33.1746448547088;
        Mon, 05 May 2025 05:35:47 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54ea94ce656sm1694392e87.105.2025.05.05.05.35.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 May 2025 05:35:46 -0700 (PDT)
Date: Mon, 5 May 2025 15:35:44 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Abhinav Kumar <quic_abhinavk@quicinc.com>, Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>,
        Jonathan Marek <jonathan@marek.ca>,
        Kuogee Hsieh <quic_khsieh@quicinc.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        Rob Clark <robdclark@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Rob Clark <robdclark@chromium.org>, linux-clk@vger.kernel.org,
        Srinivas Kandagatla <srini@kernel.org>
Subject: Re: [PATCH v5 19/24] drm/msm/dsi: Add support for SM8750
Message-ID: <hobn3fq647z54q6uqrooapokipr4zoxfb3tztg46lwzcsof3jd@5bwn34r2v7ks>
References: <20250430-b4-sm8750-display-v5-0-8cab30c3e4df@linaro.org>
 <20250430-b4-sm8750-display-v5-19-8cab30c3e4df@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250430-b4-sm8750-display-v5-19-8cab30c3e4df@linaro.org>
X-Proofpoint-GUID: elIKgrvoxyu694yzTVFhTTVA489Z-NPL
X-Authority-Analysis: v=2.4 cv=O7Y5vA9W c=1 sm=1 tr=0 ts=6818b0a4 cx=c_pps
 a=hnmNkyzTK/kJ09Xio7VxxA==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=dt9VzEwgFbYA:10 a=e5mUnYsNAAAA:8 a=KKAkSRfTAAAA:8 a=vPhFULFQeS3k4onP6IoA:9
 a=CjuIK1q_8ugA:10 a=PEH46H7Ffwr30OY-TuGO:22 a=Vxmtnl_E_bksehYqCbjh:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: elIKgrvoxyu694yzTVFhTTVA489Z-NPL
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTA1MDEyMCBTYWx0ZWRfX56y+owTMbUtk
 ittj3gYlbYc+2ykPAo3W4VmglqpLcJ9FlmaYpLqGGSKKIj78yHMmxEMtVmBH1QThulo1P3gyXFB
 vblqBLaS9EOxcLdGThoe9zIH5MvYtbqy3TRZwpPfC85OU7n6THJoP/RtHnrDFYW43LNs8WJIysm
 oeaI3D68cd4lQzc9GIAEaS1/eLY/Ff2+FpW6kJCef7V/rf8A6elvz2fuQ8H3Zil3aZvQyWJRj8s
 afFIAfedUK+QNXnOYaUKB0ixL6AVMas2Jgns2ymevEs7QKlmBD5fBomOIpCBb+Hw0bopSh8XrXL
 WlgJYuYsgudt0ZUvAOc2t5M4bP0EeVtt2i+qCu3XLiuiZiX6/Y+60ZgPfpUa3Yb/Uid10LAHdeO
 c3geH1IYyY4wwmgbG8dhqWI1QtgXAIO1URFt6V8i5HE7Y6TXKEidGfkuqrXbeuHC2rIg/lvo
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-05_05,2025-05-05_01,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 suspectscore=0 malwarescore=0 mlxlogscore=999 mlxscore=0
 clxscore=1015 priorityscore=1501 adultscore=0 phishscore=0 bulkscore=0
 impostorscore=0 spamscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2505050120

On Wed, Apr 30, 2025 at 03:00:49PM +0200, Krzysztof Kozlowski wrote:
> Add support for DSI on Qualcomm SM8750 SoC with notable difference:
> 
> DSI PHY PLLs, the parents of pixel and byte clocks, cannot be used as
> parents before DSI PHY is configured, the PLLs are prepared and their
> initial rate is set.  Therefore assigned-clock-parents are not working
> here and driver is responsible for reparenting clocks with proper
> procedure: see dsi_clk_init_6g_v2_9().
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> 
> ---
> 
> Changes in v5:
> 1. Only reparent byte and pixel clocks while PLLs is prepared. Setting
>    rate works fine with earlier DISP CC patch for enabling their parents
>    during rate change.
> 
> Changes in v3:
> 1. Drop 'struct msm_dsi_config sm8750_dsi_cfg' and use sm8650 one.
> 
> SM8750 DSI PHY also needs Dmitry's patch:
> https://patchwork.freedesktop.org/patch/542000/?series=119177&rev=1
> (or some other way of correct early setting of the DSI PHY PLL rate)
> ---
>  drivers/gpu/drm/msm/dsi/dsi.h      |  2 +
>  drivers/gpu/drm/msm/dsi/dsi_cfg.c  | 14 +++++++
>  drivers/gpu/drm/msm/dsi/dsi_cfg.h  |  1 +
>  drivers/gpu/drm/msm/dsi/dsi_host.c | 81 ++++++++++++++++++++++++++++++++++++++
>  4 files changed, 98 insertions(+)
> 
> diff --git a/drivers/gpu/drm/msm/dsi/dsi.h b/drivers/gpu/drm/msm/dsi/dsi.h
> index 87496db203d6c7582eadcb74e94eb56a219df292..93c028a122f3a59b1632da76472e0a3e781c6ae8 100644
> --- a/drivers/gpu/drm/msm/dsi/dsi.h
> +++ b/drivers/gpu/drm/msm/dsi/dsi.h
> @@ -98,6 +98,7 @@ int msm_dsi_host_init(struct msm_dsi *msm_dsi);
>  int msm_dsi_runtime_suspend(struct device *dev);
>  int msm_dsi_runtime_resume(struct device *dev);
>  int dsi_link_clk_set_rate_6g(struct msm_dsi_host *msm_host);
> +int dsi_link_clk_set_rate_6g_v2_9(struct msm_dsi_host *msm_host);
>  int dsi_link_clk_set_rate_v2(struct msm_dsi_host *msm_host);
>  int dsi_link_clk_enable_6g(struct msm_dsi_host *msm_host);
>  int dsi_link_clk_enable_v2(struct msm_dsi_host *msm_host);
> @@ -115,6 +116,7 @@ int dsi_dma_base_get_6g(struct msm_dsi_host *msm_host, uint64_t *iova);
>  int dsi_dma_base_get_v2(struct msm_dsi_host *msm_host, uint64_t *iova);
>  int dsi_clk_init_v2(struct msm_dsi_host *msm_host);
>  int dsi_clk_init_6g_v2(struct msm_dsi_host *msm_host);
> +int dsi_clk_init_6g_v2_9(struct msm_dsi_host *msm_host);
>  int dsi_calc_clk_rate_v2(struct msm_dsi_host *msm_host, bool is_bonded_dsi);
>  int dsi_calc_clk_rate_6g(struct msm_dsi_host *msm_host, bool is_bonded_dsi);
>  void msm_dsi_host_snapshot(struct msm_disp_state *disp_state, struct mipi_dsi_host *host);
> diff --git a/drivers/gpu/drm/msm/dsi/dsi_cfg.c b/drivers/gpu/drm/msm/dsi/dsi_cfg.c
> index 7754dcec33d06e3d6eb8a9d55e53f24af073adb9..7f8a8de0897a579a525b466fd01bbcd95454c614 100644
> --- a/drivers/gpu/drm/msm/dsi/dsi_cfg.c
> +++ b/drivers/gpu/drm/msm/dsi/dsi_cfg.c
> @@ -257,6 +257,18 @@ static const struct msm_dsi_host_cfg_ops msm_dsi_6g_v2_host_ops = {
>  	.calc_clk_rate = dsi_calc_clk_rate_6g,
>  };
>  
> +static const struct msm_dsi_host_cfg_ops msm_dsi_6g_v2_9_host_ops = {
> +	.link_clk_set_rate = dsi_link_clk_set_rate_6g_v2_9,
> +	.link_clk_enable = dsi_link_clk_enable_6g,
> +	.link_clk_disable = dsi_link_clk_disable_6g,
> +	.clk_init_ver = dsi_clk_init_6g_v2_9,
> +	.tx_buf_alloc = dsi_tx_buf_alloc_6g,
> +	.tx_buf_get = dsi_tx_buf_get_6g,
> +	.tx_buf_put = dsi_tx_buf_put_6g,
> +	.dma_base_get = dsi_dma_base_get_6g,
> +	.calc_clk_rate = dsi_calc_clk_rate_6g,
> +};
> +
>  static const struct msm_dsi_cfg_handler dsi_cfg_handlers[] = {
>  	{MSM_DSI_VER_MAJOR_V2, MSM_DSI_V2_VER_MINOR_8064,
>  		&apq8064_dsi_cfg, &msm_dsi_v2_host_ops},
> @@ -300,6 +312,8 @@ static const struct msm_dsi_cfg_handler dsi_cfg_handlers[] = {
>  		&sm8550_dsi_cfg, &msm_dsi_6g_v2_host_ops},
>  	{MSM_DSI_VER_MAJOR_6G, MSM_DSI_6G_VER_MINOR_V2_8_0,
>  		&sm8650_dsi_cfg, &msm_dsi_6g_v2_host_ops},
> +	{MSM_DSI_VER_MAJOR_6G, MSM_DSI_6G_VER_MINOR_V2_9_0,
> +		&sm8650_dsi_cfg, &msm_dsi_6g_v2_9_host_ops},
>  };
>  
>  const struct msm_dsi_cfg_handler *msm_dsi_cfg_get(u32 major, u32 minor)
> diff --git a/drivers/gpu/drm/msm/dsi/dsi_cfg.h b/drivers/gpu/drm/msm/dsi/dsi_cfg.h
> index 120cb65164c1ba1deb9acb513e5f073bd560c496..859c279afbb0377d16f8406f3e6b083640aff5a1 100644
> --- a/drivers/gpu/drm/msm/dsi/dsi_cfg.h
> +++ b/drivers/gpu/drm/msm/dsi/dsi_cfg.h
> @@ -30,6 +30,7 @@
>  #define MSM_DSI_6G_VER_MINOR_V2_6_0	0x20060000
>  #define MSM_DSI_6G_VER_MINOR_V2_7_0	0x20070000
>  #define MSM_DSI_6G_VER_MINOR_V2_8_0	0x20080000
> +#define MSM_DSI_6G_VER_MINOR_V2_9_0	0x20090000
>  
>  #define MSM_DSI_V2_VER_MINOR_8064	0x0
>  
> diff --git a/drivers/gpu/drm/msm/dsi/dsi_host.c b/drivers/gpu/drm/msm/dsi/dsi_host.c
> index 4d75529c0e858160761f5eb55db65e5d7565c27b..694ed95897d49c477726a2b0bec1099e75a3ce21 100644
> --- a/drivers/gpu/drm/msm/dsi/dsi_host.c
> +++ b/drivers/gpu/drm/msm/dsi/dsi_host.c
> @@ -119,6 +119,15 @@ struct msm_dsi_host {
>  	struct clk *pixel_clk;
>  	struct clk *byte_intf_clk;
>  
> +	/*
> +	 * Clocks which needs to be properly parented between DISPCC and DSI PHY
> +	 * PLL:
> +	 */
> +	struct clk *byte_src_clk;
> +	struct clk *pixel_src_clk;
> +	struct clk *dsi_pll_byte_clk;
> +	struct clk *dsi_pll_pixel_clk;
> +
>  	unsigned long byte_clk_rate;
>  	unsigned long byte_intf_clk_rate;
>  	unsigned long pixel_clk_rate;
> @@ -269,6 +278,38 @@ int dsi_clk_init_6g_v2(struct msm_dsi_host *msm_host)
>  	return ret;
>  }
>  
> +int dsi_clk_init_6g_v2_9(struct msm_dsi_host *msm_host)
> +{
> +	struct device *dev = &msm_host->pdev->dev;
> +	int ret;
> +
> +	ret = dsi_clk_init_6g_v2(msm_host);
> +	if (ret)
> +		return ret;
> +
> +	msm_host->byte_src_clk = devm_clk_get(dev, "byte_src");
> +	if (IS_ERR(msm_host->byte_src_clk))
> +		return dev_err_probe(dev, PTR_ERR(msm_host->byte_src_clk),
> +				     "can't get byte_src clock\n");
> +
> +	msm_host->dsi_pll_byte_clk = devm_clk_get(dev, "dsi_pll_byte");
> +	if (IS_ERR(msm_host->dsi_pll_byte_clk))
> +		return dev_err_probe(dev, PTR_ERR(msm_host->dsi_pll_byte_clk),
> +				     "can't get dsi_pll_byte clock\n");
> +
> +	msm_host->pixel_src_clk = devm_clk_get(dev, "pixel_src");
> +	if (IS_ERR(msm_host->pixel_src_clk))
> +		return dev_err_probe(dev, PTR_ERR(msm_host->pixel_src_clk),
> +				     "can't get pixel_src clock\n");
> +
> +	msm_host->dsi_pll_pixel_clk = devm_clk_get(dev, "dsi_pll_pixel");
> +	if (IS_ERR(msm_host->dsi_pll_pixel_clk))
> +		return dev_err_probe(dev, PTR_ERR(msm_host->dsi_pll_pixel_clk),
> +				     "can't get dsi_pll_pixel clock\n");
> +
> +	return 0;
> +}
> +
>  static int dsi_clk_init(struct msm_dsi_host *msm_host)
>  {
>  	struct platform_device *pdev = msm_host->pdev;
> @@ -370,6 +411,46 @@ int dsi_link_clk_set_rate_6g(struct msm_dsi_host *msm_host)
>  	return 0;
>  }
>  
> +int dsi_link_clk_set_rate_6g_v2_9(struct msm_dsi_host *msm_host)
> +{
> +	struct device *dev = &msm_host->pdev->dev;
> +	int ret;
> +
> +	/*
> +	 * DSI PHY PLLs have to be enabled to allow reparenting to them and
> +	 * setting the rates of pixel/byte clocks.
> +	 */

According to the docs this should be handled by the
CLK_OPS_PARENT_ENABLE flag. Please correct me if I'm wrong.

> +	ret = clk_prepare_enable(msm_host->dsi_pll_byte_clk);
> +	if (ret) {
> +		dev_err(dev, "Failed to enable dsi_pll_byte: %d\n", ret);
> +		return ret;
> +	}
> +
> +	ret = clk_prepare_enable(msm_host->dsi_pll_pixel_clk);

And this.

> +	if (ret) {
> +		dev_err(dev, "Failed to enable dsi_pll_byte: %d\n", ret);
> +		goto out_disable_byte_clk;
> +	}
> +
> +	ret = clk_set_parent(msm_host->byte_src_clk, msm_host->dsi_pll_byte_clk);
> +	if (ret)
> +		dev_err(dev, "Failed to parent byte_src -> dsi_pll_byte: %d\n", ret);
> +
> +	ret = clk_set_parent(msm_host->pixel_src_clk, msm_host->dsi_pll_pixel_clk);
> +	if (ret)
> +		dev_err(dev, "Failed to parent pixel_src -> dsi_pll_pixel: %d\n", ret);
> +
> +	clk_disable_unprepare(msm_host->dsi_pll_pixel_clk);
> +	clk_disable_unprepare(msm_host->dsi_pll_byte_clk);
> +
> +	return dsi_link_clk_set_rate_6g(msm_host);
> +
> +out_disable_byte_clk:
> +	clk_disable_unprepare(msm_host->dsi_pll_byte_clk);
> +
> +	return ret;
> +}
> +
>  int dsi_link_clk_enable_6g(struct msm_dsi_host *msm_host)
>  {
>  	int ret;
> 
> -- 
> 2.45.2
> 

-- 
With best wishes
Dmitry

