Return-Path: <devicetree+bounces-171143-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 40DA2A9D761
	for <lists+devicetree@lfdr.de>; Sat, 26 Apr 2025 05:31:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8D55F9C1EBD
	for <lists+devicetree@lfdr.de>; Sat, 26 Apr 2025 03:31:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2AF113D891;
	Sat, 26 Apr 2025 03:31:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bct77xIn"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28ECE1FDD
	for <devicetree@vger.kernel.org>; Sat, 26 Apr 2025 03:31:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745638305; cv=none; b=rtJHoMvFWaYII16WVIHEhnJnkBAvYknRMn54zPpVnQXrL3JLgj/BZVOhz8YXFOyQVcyNONgx5lfZlED65u0dwzkE5jIf+TqDM2zFWxoLS0dIFc/DoCQARvMHa3UwssttAaZjA9mD1z9GDSE6K9Zwp0wlBiIFUG7f35jwp4QHZ3c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745638305; c=relaxed/simple;
	bh=QT50qmt+/CHcDj6XAg4Ojk9eF1Dgm84EZHhfEFLqk7c=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=MmtOKV7Y5pnPbgT1lm8wcqVUXIxY712Z+/CVY2jjcs4yXG6S06Up/RHam9FQ1B4+RoJp3R5ugmMdVVOQI5r9lIwwpfpzYi2fko10sVBoG3yfXALxga0XedK2xWaa20+RUVmMQnEZZaylxVp21Kx6A5SdFUY6tH6hZMokRce5TfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bct77xIn; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53PGJudK011082
	for <devicetree@vger.kernel.org>; Sat, 26 Apr 2025 03:31:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=nb2+1xFk7BZuxdwzNv1w1PjS
	dGuUBpiFl52TtbVo8Lg=; b=bct77xInLU4F/Zg4JqSihOVKoczpiYloGZcTT9b7
	GNIKcMGKBkFPLIfubEngoYMtVx6tjfDkMFp/ptk0n7Yhgbs22m9tFYqxC5XdU80S
	u/wsvAZ2d0FI5rt6slKXUVpmXNLRxKQteHFZQAbaoZ5RJmiORV4/Sj4zJohztTPv
	DmxqVdWgFog10Y6Q1y/vnNiX2j4aoyvrW/RqHtPhEoVBfKeQlO35wLE65Wx6UuJa
	tT8b7cBVCobhbt8QgDayaFfA13c/ikFyzxRWMwacXpK6qYAhWCF25KXH/jNOX5oQ
	elc7CVBBW6uLyc4tmGtElF+959N7mtYyi8MLUJuslsMMnQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh0k0xw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 26 Apr 2025 03:31:43 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c5f3b94827so442993585a.0
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 20:31:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745638302; x=1746243102;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nb2+1xFk7BZuxdwzNv1w1PjSdGuUBpiFl52TtbVo8Lg=;
        b=DhiDve+GKEtFv7HyeYHK0okJFy9aOSqnw/AuddDGV9gKzV/U/ArdqFJmkq803aizjh
         cegX0Gzk+NREICpstKf8DYatDvDiw6w4OyP9wnqSOiOOwHpAddNlFGlui2ojj7rJESYN
         OifiSNKJSM5Dj+/TVNLXQc6Yq8NapcmrU591rVl6MgL0I18QxgUawQZwBomuUtFkK2wN
         mKMjq4Y1c2ieUhFnSRJ40sLEZNa/GcVfBIAaJ0qZAbhAGjXZWdyYlRwyUTv85mt/v5Fh
         vtMfYYUZaxBxkdmmJolTxtSeS5wDZDevNGWF0ChrpdRtv+ps5GMDadphOvU3xBETi4Cw
         tULA==
X-Forwarded-Encrypted: i=1; AJvYcCX8RQGHpql7Cd04mWp7ng6yEsdpFGTneoheQsTooCGYfE0mqfbVG0pqEVVixoRpwtLb6JXXrdEIlXCT@vger.kernel.org
X-Gm-Message-State: AOJu0YwhBYQN+71MPMN5NLqGH4QU2WxlYz+ZUDBVi/0iuQLlFT8ezU4c
	akexLvOs1pcOXr7GnTy7tEq8Ql/MiK0M7flvi5D3JzPhKV1GdP7iDjZuWrmbG/YZ4yRANRMD158
	WxCcN8jYQXo+LOTg/DGQB+BirS8RwAU7kl8jrbfPLD/CwrQn3qu/k37Md0gjK
X-Gm-Gg: ASbGnctlN04DzSj358nGCmw/ewhKQLT/dXdUd0lubgDyHiFi3F+kXOSVYNSrTrT5am6
	CrnOLyHd/jG9NjPBaO6JOskF5W0IPXHsxUibRcwMtcvrzw/qdu5iOxBd55oXvwUnAUC/NM6sixX
	cloAD/ed9XwEzJrH9ykeqgA9rzdni508cNcJjoWYv/Z736czAwvblHAZt3j+wOfZOWqFNxJEPbg
	q+NHGtkWFCmWjDnqvDav5Oxn0MO3/C2DjtyVdY98uanGbdXcJ1QFsoQ5MOl6k2Rszcy16UgCuxv
	pJN1qLMVj9uU336LEsScN3C52le/F3QKQ2/FZML9nH2+zIZ4fVflKOF24J00g+WQntvM919Hpok
	=
X-Received: by 2002:a05:620a:410f:b0:7c5:a951:3518 with SMTP id af79cd13be357-7c9619dee3dmr565508485a.39.1745638301787;
        Fri, 25 Apr 2025 20:31:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFPsDVbT5wRnNn3wZRbjqS3ukXEBA3GuxdZEx/4kBmATEj4JvK+jgHrnp1useeN5CfFa4sw5Q==
X-Received: by 2002:a05:620a:410f:b0:7c5:a951:3518 with SMTP id af79cd13be357-7c9619dee3dmr565505085a.39.1745638301308;
        Fri, 25 Apr 2025 20:31:41 -0700 (PDT)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-317d16a84a7sm10432701fa.80.2025.04.25.20.31.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 20:31:40 -0700 (PDT)
Date: Sat, 26 Apr 2025 06:31:38 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Kory Maincent <kory.maincent@bootlin.com>
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <quic_jesszhan@quicinc.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: Re: [PATCH RFC v2 3/5] drm/panel: ilitek-ili9881c: Add support for
 two-lane configuration
Message-ID: <ng2vjguqrfrxhw6vdzcrrlzegkepfvzwz24zj2fqddkt2df3mw@7biqwyndc2vz>
References: <20250424-feature_sfto340xc-v2-0-ff7da6192df2@bootlin.com>
 <20250424-feature_sfto340xc-v2-3-ff7da6192df2@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250424-feature_sfto340xc-v2-3-ff7da6192df2@bootlin.com>
X-Proofpoint-GUID: SEQUKQI-oCvpIDuTTORIfpyQXlR8UIyy
X-Proofpoint-ORIG-GUID: SEQUKQI-oCvpIDuTTORIfpyQXlR8UIyy
X-Authority-Analysis: v=2.4 cv=Fv0F/3rq c=1 sm=1 tr=0 ts=680c539f cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10 a=XR8D0OoHHMoA:10 a=P-IC7800AAAA:8 a=80Bd5mv2Iwua2QL-_kwA:9 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
 a=d3PnA9EDa4IxuAV0gXij:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI2MDAyNCBTYWx0ZWRfXzaBIGBo/aX6W YTpJiNh4+bYL6edeJenps7lLnNJ/oLyKPSjYunlTj3oSdou2q5vZNh/WtoIic5wl6KRBW40wOek 32QDLrDoxZuLF5YNTIB7Hhi6Hj/LZZbyw8bENXuSSLMMdqplx/A493VNfqfKknVZnUH6+byhy23
 GJBnZ0BGuKqrbu0HrCRX1UHV31ix9SooWZxQZec0AP0ZY5N+ffUFipSx2as+P/f7XxryaOGJmK3 I0wnu8CmRVguBUikjELNu+f5X3cx0SrU2qdvguF+dieCEZHhZBO/sxuc1VU9Pkh7rOsEOM1davG i20E+m3KXp/QKg9kFRDLLXpyJbrcPXiiCMBCc5RBUn6w6YEeJPMnGF67SFCvv9H+7T46bmTAMKD
 3j8qwECc3Mjjk/h+pycwO163xQokTIr4GN2ZyTYXHYOdz5Ka5ES/OiCV2jwzr1G4NXkG1b6L
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-26_01,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0 mlxscore=0
 malwarescore=0 mlxlogscore=999 priorityscore=1501 suspectscore=0
 adultscore=0 bulkscore=0 clxscore=1015 spamscore=0 lowpriorityscore=0
 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504260024

On Thu, Apr 24, 2025 at 05:07:41PM +0200, Kory Maincent wrote:
> Enable support for two-lane configuration which is done by setting the
> LANSEL_SW_EN and LANSEL_SW bits in the Pad Control register.
> 
> Use the data-lanes device tree parameter to configure the number of lanes.
> The default configuration remains set to four lanes.
> 
> Signed-off-by: Kory Maincent <kory.maincent@bootlin.com>
> ---
> 
> Change in v2:
> - Read the data-lanes parameter from the port endpoint and use
>   drm_of_get_data_lanes_count instead of of_property_read_u32.
> ---
>  drivers/gpu/drm/panel/panel-ilitek-ili9881c.c | 33 +++++++++++++++++++++++++--
>  1 file changed, 31 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/gpu/drm/panel/panel-ilitek-ili9881c.c b/drivers/gpu/drm/panel/panel-ilitek-ili9881c.c
> index 28cd7560e5db1d5734b10babdb4e4e553c6e07d0..2e38dea28336f445cb6a074dbbec006f0659287a 100644
> --- a/drivers/gpu/drm/panel/panel-ilitek-ili9881c.c
> +++ b/drivers/gpu/drm/panel/panel-ilitek-ili9881c.c
> @@ -16,6 +16,7 @@
>  
>  #include <drm/drm_mipi_dsi.h>
>  #include <drm/drm_modes.h>
> +#include <drm/drm_of.h>
>  #include <drm/drm_panel.h>
>  
>  #include <video/mipi_display.h>
> @@ -1263,6 +1264,21 @@ static int ili9881c_send_cmd_data(struct ili9881c *ctx, u8 cmd, u8 data)
>  	return 0;
>  }
>  
> +static int ili9881c_set_lanes_cfg(struct ili9881c *ctx)
> +{
> +	int ret;
> +
> +	if (ctx->dsi->lanes != 2)
> +		/* Nothing to do */
> +		return 0;
> +
> +	ret = ili9881c_switch_page(ctx, 1);
> +	if (ret)
> +		return ret;
> +
> +	return ili9881c_send_cmd_data(ctx, 0xB7, 0x3);
> +}
> +
>  static int ili9881c_prepare(struct drm_panel *panel)
>  {
>  	struct ili9881c *ctx = panel_to_ili9881c(panel);
> @@ -1295,6 +1311,10 @@ static int ili9881c_prepare(struct drm_panel *panel)
>  			return ret;
>  	}
>  
> +	ret = ili9881c_set_lanes_cfg(ctx);
> +	if (ret)
> +		return ret;
> +
>  	ret = ili9881c_switch_page(ctx, 0);
>  	if (ret)
>  		return ret;
> @@ -1503,8 +1523,9 @@ static const struct drm_panel_funcs ili9881c_funcs = {
>  
>  static int ili9881c_dsi_probe(struct mipi_dsi_device *dsi)
>  {
> +	struct device_node *endpoint;
>  	struct ili9881c *ctx;
> -	int ret;
> +	int ret, lanes;
>  
>  	ctx = devm_kzalloc(&dsi->dev, sizeof(*ctx), GFP_KERNEL);
>  	if (!ctx)
> @@ -1545,11 +1566,19 @@ static int ili9881c_dsi_probe(struct mipi_dsi_device *dsi)
>  	if (ret)
>  		return ret;
>  
> +	endpoint = of_graph_get_endpoint_by_regs(dsi->dev.of_node, -1, -1);
> +	lanes = drm_of_get_data_lanes_count(endpoint, 2, 4);
> +	of_node_put(endpoint);

I think you can use drm_of_get_data_lanes_count_ep() here.

> +	if (lanes == -EINVAL)
> +		lanes = 4;
> +	else if (lanes < 0)
> +		return lanes;
> +
>  	drm_panel_add(&ctx->panel);
>  
>  	dsi->mode_flags = ctx->desc->mode_flags;
>  	dsi->format = MIPI_DSI_FMT_RGB888;
> -	dsi->lanes = 4;
> +	dsi->lanes = lanes;
>  
>  	return mipi_dsi_attach(dsi);
>  }
> 
> -- 
> 2.34.1
> 

-- 
With best wishes
Dmitry

