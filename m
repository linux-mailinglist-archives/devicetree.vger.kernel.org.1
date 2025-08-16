Return-Path: <devicetree+bounces-205434-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 58801B29071
	for <lists+devicetree@lfdr.de>; Sat, 16 Aug 2025 21:57:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D01B91BC1EFC
	for <lists+devicetree@lfdr.de>; Sat, 16 Aug 2025 19:56:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D2BC22157B;
	Sat, 16 Aug 2025 19:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="R4HlaAu7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E40271C84C0
	for <devicetree@vger.kernel.org>; Sat, 16 Aug 2025 19:55:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755374133; cv=none; b=pWY4sjlHLW8duGZujplN4QJaQhdk5gKISO/NaKXuYH+YWnCCzPXTSSsmWnUkplPTZ7ZU+Bv0ZKFEY+c5qTzsgr26zyy1BL6RQrtQD0WBfHiMhYHj7CvRrX4+mUrpS2EdKiVpVh+TcBNWZSFKG5/9m1JWKlYH9gUOpor1zLMg9rg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755374133; c=relaxed/simple;
	bh=e3FZEhgwb++WMPNO8YC31DhvcI34fDLOhbAzSiHc9jE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=Hl3cJDLykd7kwx+vyOHU4aPm95vhzmsxQT5yl12mK2wN9N24D1s51TiB3G//FlHLQ7RzP1BAw1OiPhdjs9Y4c5u3HUZQtZu1aKZfOg/8UYvDoqx5Ukqa9UNI+HwN9pSsGT0SNcuO1rjFzc8DSKmintHjapIpJ7HXtZUyUiG8+Y4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=R4HlaAu7; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57G5dDXU001113
	for <devicetree@vger.kernel.org>; Sat, 16 Aug 2025 19:55:31 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to; s=qcppdkim1; bh=DcxZsjcJPbB2/vOoAnHCt2p2
	V782/z2KJdD+dGyjoAA=; b=R4HlaAu7MKhmT9Vjyk9Y5mb6c8nCw0co/MTACIKr
	xJ7tdsyC8Q5RgR3l34CKGC9hiR/Suii/YhG7fODAospZ3SuvbhFHNlKW4fCT44DE
	8ZNVkSdRAWLB2PT9dQu3QmsFwPtYVTnGyFeIL9qRteDCSmSA9x5DwiTVnCUhyjDQ
	PND+oBpOnkLbP3yg6wzlSp8UUbbN26nVJxSf8SXQYPkYiNtPQyKwjUNFPiKD34Bc
	DcX/X1QZ4ikPSZ2v3u7x7/wMt/E/anCOdXT1/Asudh1yJTizVsWG9Y8Ok1Jl8uq4
	YSIHfbI2fHvEGecf/sx0IbBmFhQF96CrZjA1NRE8SoAPeQ==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48jgxt97kf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 16 Aug 2025 19:55:31 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7e8706abd44so784082685a.3
        for <devicetree@vger.kernel.org>; Sat, 16 Aug 2025 12:55:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755374130; x=1755978930;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DcxZsjcJPbB2/vOoAnHCt2p2V782/z2KJdD+dGyjoAA=;
        b=RPLx9wz1PWc4Za7faTPIniUoYkOnjf7KdbzZWE9T+OEFyej2NVyDkVSxso6xGoS5ek
         Pt2Z9Yg6sHdcr/02QJCMzV+Rh3AqYzR0/k56xwNBdmoQNjfd7L+S4gC1+4w3E+uK+/5h
         Xtkr1q3yst5c7+fu7a8fYcMBDwyfHlagYRgZZ2s0ENTjNESanwT1IKSdZdDCjmdVOXIp
         bw+K3KS7r0bSb56n7cDGHtu7smvqXRbjSOhSS3VcPLeTMT5CfIkAhjnTNYj2v6/WWkSm
         oUnQ1F1L/f6QZraFWtxW4NSdibC+86OnlXvmKCaKo9hVPGwBCjETBPxIH5ELLjifP0dm
         C2yQ==
X-Forwarded-Encrypted: i=1; AJvYcCW+AEgrMe2+dXyLs7wZUIFo/3Dtj1JfxBEFePiyLrIyimYDJGMOIq/OHlFCj4NhGo5BJBix3kbMKxfx@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0hR23I+CZ8IOJ61dakhXxB/EslZFk8td+QwsWLwHtYv0BAvFq
	50k+ZUqYZkbCYhcyByhy3k0+Xcfv29n0zhn6LIsr0UE7TCdJ3LCp7Bd1uFx+IRRk0iui6lyR/V4
	m2DczQPMCIUYPmFAjhTOXZhJ5gDo36/G5tyQW0aHUE/QN01LAtLIRt/3HIhNZdlch
X-Gm-Gg: ASbGncvzcxk0qLXScAEXXfX2czlF/Ez7C+rFh8KjPT3AO9jf3CVmrb5vzUB6MS4n/GI
	DlT5wuoq1hW2VUA4XMdG+7WzgtX4PAoCORC1pOHYm0GqFvYfFeYmILrG5Sju44LjmXNU5ku9KcZ
	zpaqrNuROZNbRsEKxgStlyzjr+Wu+o8arrCCB7PnUO6z8JfcWdTWuoFKBL3L08mx5/Jmas/JyR/
	w2n617fzj2y4g1UgAF6gc1rtpElkqYC9tONa509kYCCnDsQlAGWS77A0hL+nku7IEUJsMKEuyNh
	EdVeOksewyDpm+cjIfZmj9C2n+iT4WxTkdGMBoCbxNUdQk69+iKj+6+gSsc0JeZ1EuHvWWgFCRg
	3cGB4FEbj79bgJl9XVJIpk4yqurykz5wSX3kqMP0duB9A5L8lxT0I
X-Received: by 2002:a05:6214:1948:b0:70b:43c2:3890 with SMTP id 6a1803df08f44-70ba7cb06b0mr82348956d6.49.1755374129743;
        Sat, 16 Aug 2025 12:55:29 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IF/qz/f4sYiNsg+ywR1haD9LivBgWwvWG7o13H8HrW9MqL/DBKpsEOaCvZlDPs4BCrfaUVuMw==
X-Received: by 2002:a05:6214:1948:b0:70b:43c2:3890 with SMTP id 6a1803df08f44-70ba7cb06b0mr82348806d6.49.1755374129306;
        Sat, 16 Aug 2025 12:55:29 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-55cef3516c7sm987953e87.19.2025.08.16.12.55.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 16 Aug 2025 12:55:28 -0700 (PDT)
Date: Sat, 16 Aug 2025 22:55:25 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
To: Nishanth Menon <nm@ti.com>
Cc: Conor Dooley <conor+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Rob Herring <robh@kernel.org>, David Airlie <airlied@gmail.com>,
        Maxime Ripard <mripard@kernel.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org,
        Robert Nelson <robertcnelson@gmail.com>,
        Jason Kridner <jkridner@beagleboard.org>, afd@ti.com,
        tomi.valkeinen@ideasonboard.com, devarsht@ti.com
Subject: Re: [PATCH V3 3/4] drm/bridge: it66121: Use vid/pid to detect the
 type of chip
Message-ID: <ffdyawzggxva47wl3a7iukqiikls5aoovnfdjyuouqhr7vucsx@ilk5hrpszjnd>
References: <20250815034105.1276548-1-nm@ti.com>
 <20250815034105.1276548-4-nm@ti.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250815034105.1276548-4-nm@ti.com>
X-Proofpoint-ORIG-GUID: tIXIbcwj7XF9m68llVt8YLlA-KGIPlgD
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODE2MDAyMCBTYWx0ZWRfX7RnzhmCO+gTz
 joeH6HI/sIB1cp/de1lusttfAKfkJesX9OjxXl6Z7TFN1S8xUpgT9OSTyRIvYeuZ4hAh44TIHC/
 BKx3Jh8Ho6KeANjmhCrbXqFqB9oh0N7/R/VCiDAdW9CGh7b9Pz9Se9Oj+4cjWpjVCGHj6ngzrsY
 cyDgJWd1zzE8b4EkA94RGTCqHK9GkfnKwWqUX980jJMbndeYeLqCNkiabSaiA65ViewsLpLSWpE
 8KR/3ggxdPLj3IkyEKKYP1rIKWx1LPk1TSpSG6R0x7fF33ztyM8W9XwKWXgLiAqnDJwYm8P7atY
 hrotH1mvwSfhOMLiZCyOiCswTLLxpiqZctdJ9l/8Yd/SiqHyE47hsGzdlIkY8hSkTuNJeb2QWiY
 dbUjPAiW
X-Proofpoint-GUID: tIXIbcwj7XF9m68llVt8YLlA-KGIPlgD
X-Authority-Analysis: v=2.4 cv=V7B90fni c=1 sm=1 tr=0 ts=68a0e233 cx=c_pps
 a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=kj9zAlcOel0A:10
 a=2OwXVqhp2XgA:10 a=VwQbUJbxAAAA:8 a=sozttTNsAAAA:8 a=Eu1ZELVgde1a8Dhk3PoA:9
 a=CjuIK1q_8ugA:10 a=bTQJ7kPSJx9SKPbeHEYW:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-16_06,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 malwarescore=0 adultscore=0 clxscore=1015
 suspectscore=0 impostorscore=0 bulkscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2508160020

On Thu, Aug 14, 2025 at 10:41:04PM -0500, Nishanth Menon wrote:
> The driver knows exactly which version of the chip is present since
> the vid/pid is used to enforce a compatibility. Given that some
> devices like IT66121 has potentially been replaced with IT66122 mid
> production for many platforms, it makes no sense to use the vid/pid as
> an enforcement for compatibility. Instead, let us detect the ID of the
> actual chip in use by matching the corresponding vid/pid.
> 
> This also allows for some future compatibility to be checked only
> against a restricted set of vid/pid.
> 
> While at this, fix up a bit of formatting errors reported by
> checkpatch warning, and since the ctx info just requires the id, drop
> storing the entire chip_info pointer.

Separate commit, please. Don't mix unrelated changes into a single
patch. "While at it" usually means that it should be a separate patch.

> 
> Signed-off-by: Nishanth Menon <nm@ti.com>
> ---
> Changes in V3:
> * Converted the patch to lookup ID based on vid/pid match rather than
>   enforcing vid/pid match per compatible.
> * Squashed a formating fix for pre-existing checkpatch --strict warning
> 
> V2: https://lore.kernel.org/all/20250813204106.580141-3-nm@ti.com/
> 
>  drivers/gpu/drm/bridge/ite-it66121.c | 53 ++++++++++++++--------------
>  1 file changed, 27 insertions(+), 26 deletions(-)
> 
> @@ -1606,28 +1613,22 @@ static void it66121_remove(struct i2c_client *client)
>  	mutex_destroy(&ctx->lock);
>  }
>  
> -static const struct it66121_chip_info it66121_chip_info = {
> -	.id = ID_IT66121,
> -	.vid = 0x4954,
> -	.pid = 0x0612,
> -};
> -
> -static const struct it66121_chip_info it6610_chip_info = {
> -	.id = ID_IT6610,
> -	.vid = 0xca00,
> -	.pid = 0x0611,
> +static const struct it66121_chip_info it66xx_chip_info[] = {
> +	{.id = ID_IT66121, .vid = 0x4954, .pid = 0x0612 },
> +	{.id = ID_IT6610, .vid = 0xca00, .pid = 0x0611 },
> +	{ }
>  };
>  
>  static const struct of_device_id it66121_dt_match[] = {
> -	{ .compatible = "ite,it66121", &it66121_chip_info },
> -	{ .compatible = "ite,it6610", &it6610_chip_info },
> +	{ .compatible = "ite,it66121", &it66xx_chip_info },
> +	{ .compatible = "ite,it6610", &it66xx_chip_info },

Other than dropping the match data completely, please keep arrays
sorted.

>  	{ }
>  };
>  MODULE_DEVICE_TABLE(of, it66121_dt_match);
>  
>  static const struct i2c_device_id it66121_id[] = {
> -	{ "it66121", (kernel_ulong_t) &it66121_chip_info },
> -	{ "it6610", (kernel_ulong_t) &it6610_chip_info },
> +	{ "it66121", (kernel_ulong_t)&it66xx_chip_info },
> +	{ "it6610", (kernel_ulong_t)&it66xx_chip_info },
>  	{ }
>  };
>  MODULE_DEVICE_TABLE(i2c, it66121_id);
> -- 
> 2.47.0
> 

-- 
With best wishes
Dmitry

