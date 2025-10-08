Return-Path: <devicetree+bounces-224631-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id AB18CBC6667
	for <lists+devicetree@lfdr.de>; Wed, 08 Oct 2025 21:02:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A605940789D
	for <lists+devicetree@lfdr.de>; Wed,  8 Oct 2025 18:59:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 908BF2C1595;
	Wed,  8 Oct 2025 18:59:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="aPKn5zfy"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C5EC2C11F4
	for <devicetree@vger.kernel.org>; Wed,  8 Oct 2025 18:59:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759949965; cv=none; b=gv7y1+dnFE7xsaAkq2tdfMOwG2rFeH7jITEuyAP1U+PUYdbusU60y9Bfuy8T/e+aGT4ubJ7Vd6sJwsNEZXs4HVZXVXjOfd0R3IGhNgaRK4FymL7D8fFRsZXOks8uXWKI5HUVu8MQc3NHTDKPyNYeg/398CX+b5CLcrBF/U4fL/8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759949965; c=relaxed/simple;
	bh=pkKqRsIwDhc+RUJiMdhK9GH1Pl3ZLZDY4dZbArFqFqs=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=L/n7j/qioeG6O8aeDwFObw93NTYgA2DPIdfR99ZblW0X162+fug9XDqF8/pFM0AJ9/8Tla5g7zcOaO9KGpeU4WbWvepRdcFNzYq236vg9cvjml66OM7EN1JYqT9Lk8F7i3eDVJF+koU6GSBqd32xm3KbyhDDDjH5KPvJL4rwWEY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=aPKn5zfy; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 598I5KsD004532
	for <devicetree@vger.kernel.org>; Wed, 8 Oct 2025 18:59:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=0UdkETRPI6ZWbVUbfsUgaXMe
	BnN/d50E+m0AcvlG3Bk=; b=aPKn5zfyCDXgHyxBiNSZBLkmEvt47oUi2RWDinGN
	uQyvvHaFX7LMl4N+6Xg7E0U3ZeVF21BWfHPP8/CZu+uu5h34dEKRoIbzQB8J0TiE
	DvOiVboPksV3SiAiPr6QtYJTignIEKkUErz5spHye4nfnnfOqKUBBAQoGQyTMiD3
	ZI4+mGUQUxc6mOcJVvXDWreZvdia3EDeMCn4p3gz5nnLqZMjoF+PwYiZKnDaCdDW
	hHwXINXjJlzCADrcoRbbyK468HCH703v1rkrq2SgJvhihFsk28r0YhAFs2+8Iok1
	tSkAzrPEffpnZnS+t63g3pd0//gAPGz7VU8cmZOD8FpGTA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49nv4kr9m6-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 18:59:21 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-7a758650abdso11037366d6.3
        for <devicetree@vger.kernel.org>; Wed, 08 Oct 2025 11:59:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759949960; x=1760554760;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=0UdkETRPI6ZWbVUbfsUgaXMeBnN/d50E+m0AcvlG3Bk=;
        b=KemR9SR/n4Y5hD+sIMwUOzWgnpl1oitASr0DTA6GCg1m6YFLPBuTZFzO6g2bh5P6xy
         RBVVfJugII5rcLUPhm1VI5LxPnteLBhEcSW3D36q61W79rgbtSZcpri61Db9qKghn4i4
         DgPbP4FsCn2W/bpCVG89CbMIdFvMqJAadR6bGZWrtz4Z7ADE8RNV4phjjPpLGYjz3brj
         x9b++NWIKsQOzf44nfzoOeTRtA3p9SpVuRzX3Dn0nhLK6rLBDffST5WGYlbrcIZDX9Ld
         B07arRg/pcOBJHtxkiJ+cU/B7SQa6OGTQJKAA8/ELJYCHrVNdrRjxuQdWNGGiitpG+AS
         c/7g==
X-Forwarded-Encrypted: i=1; AJvYcCXvAQyYtJp9V6eMC6SrHpX5pwn3Pl9uM9YEKf81TbGTNn58H//sAyivDCBrH88OAgeKaOiSIaPIAhdk@vger.kernel.org
X-Gm-Message-State: AOJu0Yz2uM7lEbm1NBFl6FwaDlq5yVxyQDv7wcVF3+2/oIE5pyaqq5vi
	XfjLX2vl/a6P2VdKGyMNz1StiAc+vkJG4mIkJCbb9tZTKiZgC+bfUUgivms6uvZrqYFVM4qrtsV
	N9b46P8rbLFjV9gUD5igwBGStu128gkC3qdmHYY5NQ9itLGIQ4CxQHwdHS4og7U0K
X-Gm-Gg: ASbGnct8r9e7VAT/x1FGjo4Zm4ZG0PiW3XcjZAZulhjIj1K7EQ8n2oUUZd9DkBl936b
	uCtwDFsbHlvT4v48HzBzCghXEsc6oF1qSeMD9TnmE6tQZS0XxC+LOoTJbwnGFOYM2603MHUQbAi
	c16h1Nfif6uhem+XlnjWjSP8wF64CCPc5GDOLIF+csY0yrCAxN6DdeiM5MLGd4TjyzyaK9WTwnD
	puqy3CnX2zCf2CpZBUOd2vBnslD+lAnKEj/6Kh8BPfkcSUsRm3aRu4SOO187btgSp0Nls3jBhwG
	fvRbtImYcnSBLeV9ByQRdkXs+eq9fOo5Hb+F6bPK5Xcdy9IZ0ts2OxXLFCra3bLve9sW8nY274n
	w7LUxjqUYIULD3JNW9fl7o0fWQP6UBQx7Bfk+L54hf4i4Yj6Blpz5BYonGQ==
X-Received: by 2002:a05:622a:1b24:b0:4e3:970:661a with SMTP id d75a77b69052e-4e6ead91fe2mr67087821cf.75.1759949960525;
        Wed, 08 Oct 2025 11:59:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGaXzhWAKXAgn1FOnUImvO0Ih0s0vnFPkEOMy8MA4cgd7lRzHdrWt6cw5JjIrgIzgwo4fpdJg==
X-Received: by 2002:a05:622a:1b24:b0:4e3:970:661a with SMTP id d75a77b69052e-4e6ead91fe2mr67087441cf.75.1759949960070;
        Wed, 08 Oct 2025 11:59:20 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5907ac00be6sm263748e87.23.2025.10.08.11.59.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Oct 2025 11:59:19 -0700 (PDT)
Date: Wed, 8 Oct 2025 21:59:17 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: david@ixit.cz
Cc: Neil Armstrong <neil.armstrong@linaro.org>,
        Jessica Zhang <jessica.zhang@oss.qualcomm.com>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Casey Connolly <casey.connolly@linaro.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        phone-devel@vger.kernel.org
Subject: Re: [PATCH v2 5/7] drm/panel: Add Samsung S6E3FC2X01 DDIC with
 AMS641RW panel
Message-ID: <6yp5udhm2g42basxeyjnn3onfons2k2besxfqwemnqrafsai6q@tfr74bfz7s7t>
References: <20251008-s6e3fc2x01-v2-0-21eca1d5c289@ixit.cz>
 <20251008-s6e3fc2x01-v2-5-21eca1d5c289@ixit.cz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20251008-s6e3fc2x01-v2-5-21eca1d5c289@ixit.cz>
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDA4MDEyMSBTYWx0ZWRfX8mUOESGDJRgk
 hcZK0Ljb7G8+nNkv74Iz2XqWDTGcCi4oBpfx6ByJAukVfWq3FwJ7PRjk+ohAY1qOLb1KH1eSSDg
 g+r6P0NAD/3nruSqfcInv01x5zrQ8VTjflbN39xKDSi67ZRa0HshqJAMLPNIdn3KOSbTe1ef3Zd
 KZu4fMyKo1yQMdjuSpKFBj8d3kxiKfQNYwya71CtwxbhMQ8lTi8sdifjnYMXZk9xqDgvKcPGVW3
 j9jKY424srsNRdqxA6cliIe7Z0EOndY6u2fmf3Scbul71m/bTCvjD0XuzlZh6RzxempkTAtt9e/
 3g6iL4vBX/5yAIKVEXKOVCPpnN3kq7sMl4/d3sck1QAAURWBZ6Bp/GwZDrGYmMxV+9nOo3dNpG6
 ciDA4oyhCfZQ7Yyf+lkr7VeuvjQ87A==
X-Proofpoint-GUID: lhKAIb1REqSFr329ECmwhcnPYbC9eiMv
X-Proofpoint-ORIG-GUID: lhKAIb1REqSFr329ECmwhcnPYbC9eiMv
X-Authority-Analysis: v=2.4 cv=SJxPlevH c=1 sm=1 tr=0 ts=68e6b489 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=x6icFKpwvdMA:10 a=WFa1dZBpAAAA:8 a=bBqXziUQAAAA:8 a=SYGtE8pA4Zq6nJvkfUIA:9
 a=CjuIK1q_8ugA:10 a=1HOtulTD9v-eNWfpl4qZ:22 a=MZguhEFr_PtxzKXayD1K:22
 a=BjKv_IHbNJvPKzgot4uq:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-08_05,2025-10-06_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 suspectscore=0 impostorscore=0 spamscore=0 phishscore=0
 clxscore=1015 bulkscore=0 lowpriorityscore=0 priorityscore=1501 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510080121

On Wed, Oct 08, 2025 at 04:05:32PM +0200, David Heidelberg via B4 Relay wrote:
> From: David Heidelberg <david@ixit.cz>
> 
> Add panel driver used in the OnePlus 6T.
> 
> No datasheet, based mostly on EDK2 init sequence and the downstream driver.
> 
> Based on work of:
>   Casey Connolly <casey@connolly.tech>
>   Joel Selvaraj <foss@joelselvaraj.com>
>   Nia Espera <a5b6@riseup.net>
> 
> Signed-off-by: David Heidelberg <david@ixit.cz>
> ---
>  MAINTAINERS                                      |   1 +
>  drivers/gpu/drm/panel/Kconfig                    |  13 +
>  drivers/gpu/drm/panel/Makefile                   |   1 +
>  drivers/gpu/drm/panel/panel-samsung-s6e3fc2x01.c | 402 +++++++++++++++++++++++
>  4 files changed, 417 insertions(+)
> 
> +static const struct of_device_id s6e3fc2x01_of_match[] = {
> +	{ .compatible = "samsung,s6e3fc2x01-ams641rw", .data = &ams641rw_mode },

Again, why can't we use defined compatible here?

> +	{ /* sentinel */ }
> +};
> +MODULE_DEVICE_TABLE(of, s6e3fc2x01_of_match);
> +
> +static struct mipi_dsi_driver s6e3fc2x01_driver = {
> +	.probe = s6e3fc2x01_probe,
> +	.remove = s6e3fc2x01_remove,
> +	.driver = {
> +		.name = "panel-samsung-s6e3fc2x01",
> +		.of_match_table = s6e3fc2x01_of_match,
> +	},
> +};
> +module_mipi_dsi_driver(s6e3fc2x01_driver);
> +
> +MODULE_AUTHOR("David Heidelberg <david@ixit.cz>");
> +MODULE_DESCRIPTION("DRM driver for Samsung S6E3FC2X01 DDIC");
> +MODULE_LICENSE("GPL");
> 
> -- 
> 2.51.0
> 
> 

-- 
With best wishes
Dmitry

