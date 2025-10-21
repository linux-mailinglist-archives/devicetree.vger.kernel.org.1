Return-Path: <devicetree+bounces-229234-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 75185BF524C
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 10:04:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id AA424462C69
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 08:03:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4FC762EA16A;
	Tue, 21 Oct 2025 08:03:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ffwll.ch header.i=@ffwll.ch header.b="FM7/+tP+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F1D32BE658
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 08:03:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761033824; cv=none; b=ryeBnrCe0j94eMZtz8xEvsij1GCo6eXEMn+oC7m8v0ffIySf9f3+0w1nivsUv0Sn90i7wiHMsoZv8HDwg2NhvLv4DdFAJ2YiJqEgkzBDoHpePqdRD6AJDxeG/XWjvgUl+4qGZtiLjBGROhkMdEGSpdkUao0ha021EU5OnngeAYs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761033824; c=relaxed/simple;
	bh=6Mv7HAoZABWuGvs2JyOm9HSzUH3AHVBCynCtVRwyJAE=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=PCvq3Y+27tr5E/5NfCl56HrCOUcmD6iLiETxR4TdXUVJrMdeqTGVBF3vNmZKX8BE0/ehN/WlUKCbZeNQZrA80TahrFAiQWFGCocw4pt3fsEIyVFI+D80JugM8M2A7LynBDw/jyGtcFGCgGqcmgu496rxp/dtLJcywNyDPoTdxp0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ffwll.ch; spf=none smtp.mailfrom=ffwll.ch; dkim=pass (1024-bit key) header.d=ffwll.ch header.i=@ffwll.ch header.b=FM7/+tP+; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ffwll.ch
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=ffwll.ch
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-b403bb7843eso978457766b.3
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 01:03:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1761033820; x=1761638620; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date:from:to:cc
         :subject:date:message-id:reply-to;
        bh=1eZOCk0G+WIeYYVlPWpiKCZVOUjneoPQzsl6dTiB4tA=;
        b=FM7/+tP+EKbj+UA6g5fOHhfJreNzSMKP+JpMgOF/U8IigPesS5v5MNxSr8D3y+6g5w
         5tdueylmRsGBZoY21maiZU/f9Ne79UfV10jgyKgQf+n7N7aZ70nUsyGQCYQaJc1G+pB4
         PhnwE76FSFbhl7JJCkVlCL/CEBkGPf+DNktxA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761033820; x=1761638620;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=1eZOCk0G+WIeYYVlPWpiKCZVOUjneoPQzsl6dTiB4tA=;
        b=g7m72ZKqmjO5WufVUAXjC4pWt4rLcN++4JZoaf3RZthHY/btwXcGaC0tfGQ+gotQW6
         yXGBckl6uVl8+lnq/C2vFKNQSJ8v62KnSlJeY00uk2OKLoRFnpngdJQ2Fqv3ISvLtSus
         dbY+KjbRJPWx94+7DDTs7L1zGOC18bttz6as5n2KDH8g74dgddjRcW1u3occlWFnyLcG
         UktoOWixBtEhDa581DXz8dwt14ppV6QgcgkeRZnZTJkUUH2WE1Vd8Fv/IxK8FOpFM/ij
         8gb70Gzsne5kqsgJ5tPrgQAjfGWkYLbIHNEmlaDFevQguPrhpr+VCg74SARcnvG+A6Lf
         ibyg==
X-Forwarded-Encrypted: i=1; AJvYcCVU1Ubh3MvzBJUXVoTl+EG6VThwIrB6hftZdhKNkZz8zvDtWanPVW+Bv03RqY8qIqJoFRG7ETGWhtbq@vger.kernel.org
X-Gm-Message-State: AOJu0Yw0rJdrg+dCVD6zVNXxfDr6+y0viEE3EgYnG/fIVDAhyjOQEMuU
	4Y5hm469aE0xbzpXFLZAEZn8mGWIwIdU+5lkAdkYtSFrkRq8ALFpCEu+ZLRiyHGH6iA=
X-Gm-Gg: ASbGnct6BgXl8nN++WcOHiXS+PUpkn8CNcOMmeIknENHTd3mkj4Maodrpk6uHo32vTN
	E6r6azW645mJtBeplfxi5g/bRpLwobtFQOSrjWbIs5okmGqUwfGvQn0E1YpHEh++++O6dICmGTC
	F1LGngmNFLtsmdP09lk1/37D8Smz3/93lPXz55bcjsEm4o6yqbux1l8RCTXnL56WFnDvdCZ2hIX
	zRbOLgb24DUaZi3tUrpJjok25esGrQM3Untk90BWC/YgHOWNo7ITvbQ40sUbSNas9ME5TdeH+AE
	f8yRvs8JNRCM+H7gv8XtZjT+Tem2eIa9I34JFg9TdHQCEf/+wCmJZmmle/R5yH47GYPjdojasmH
	VXEYCTEFVs8og/PkC+oMiS4Eb5Nm+1m7l8sTUNefzGHHix+hP/HENyHcVfdFS/2YAznFNAKP/r7
	HD4wPSGQu13yU=
X-Google-Smtp-Source: AGHT+IEbmSLB+yRFZ86qxeD7wG4TxM9uG6ayZpPpFTz88clAHcJph5RIG47VQ/I34aUFg3RPcxflIg==
X-Received: by 2002:a17:906:fe41:b0:b04:aadd:b8d7 with SMTP id a640c23a62f3a-b6471d48347mr1967108166b.13.1761033819926;
        Tue, 21 Oct 2025 01:03:39 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:5485:d4b2:c087:b497])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b65e8581780sm992513566b.31.2025.10.21.01.03.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Oct 2025 01:03:39 -0700 (PDT)
Date: Tue, 21 Oct 2025 10:03:37 +0200
From: Simona Vetter <simona.vetter@ffwll.ch>
To: Shengjiu Wang <shengjiu.wang@nxp.com>
Cc: andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org,
	Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se,
	jernej.skrabec@gmail.com, maarten.lankhorst@linux.intel.com,
	mripard@kernel.org, tzimmermann@suse.de, airlied@gmail.com,
	simona@ffwll.ch, lumag@kernel.org, dianders@chromium.org,
	cristian.ciocaltea@collabora.com, luca.ceresoli@bootlin.com,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	victor.liu@nxp.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
	kernel@pengutronix.de, festevam@gmail.com, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, p.zabel@pengutronix.de,
	devicetree@vger.kernel.org, l.stach@pengutronix.de,
	shengjiu.wang@gmail.com, perex@perex.cz, tiwai@suse.com,
	linux-sound@vger.kernel.org
Subject: Re: [PATCH v7 2/7] ALSA: Add definitions for the bits in IEC958
 subframe
Message-ID: <aPc-Wad85lQWbqfa@phenom.ffwll.local>
Mail-Followup-To: Shengjiu Wang <shengjiu.wang@nxp.com>,
	andrzej.hajda@intel.com, neil.armstrong@linaro.org,
	rfoss@kernel.org, Laurent.pinchart@ideasonboard.com,
	jonas@kwiboo.se, jernej.skrabec@gmail.com,
	maarten.lankhorst@linux.intel.com, mripard@kernel.org,
	tzimmermann@suse.de, airlied@gmail.com, simona@ffwll.ch,
	lumag@kernel.org, dianders@chromium.org,
	cristian.ciocaltea@collabora.com, luca.ceresoli@bootlin.com,
	dri-devel@lists.freedesktop.org, linux-kernel@vger.kernel.org,
	victor.liu@nxp.com, shawnguo@kernel.org, s.hauer@pengutronix.de,
	kernel@pengutronix.de, festevam@gmail.com, imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org, robh@kernel.org,
	krzk+dt@kernel.org, conor+dt@kernel.org, p.zabel@pengutronix.de,
	devicetree@vger.kernel.org, l.stach@pengutronix.de,
	shengjiu.wang@gmail.com, perex@perex.cz, tiwai@suse.com,
	linux-sound@vger.kernel.org
References: <20250923053001.2678596-1-shengjiu.wang@nxp.com>
 <20250923053001.2678596-3-shengjiu.wang@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250923053001.2678596-3-shengjiu.wang@nxp.com>
X-Operating-System: Linux phenom 6.12.38+deb13-amd64 

On Tue, Sep 23, 2025 at 01:29:56PM +0800, Shengjiu Wang wrote:
> The IEC958 subframe format SNDRV_PCM_FMTBIT_IEC958_SUBFRAME_LE are used
> in HDMI and DisplayPort to describe the audio stream, but hardware device
> may need to reorder the IEC958 bits for internal transmission, so need
> these standard bits definitions for IEC958 subframe format.
> 
> Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
> Reviewed-by: Takashi Iwai <tiwai@suse.de>
> Tested-by: Alexander Stein <alexander.stein@ew.tq-group.com>

Would be good to get a formal ack from alsa maintainers before merging
through drm, just to be sure.

Thanks, Sima

> ---
>  include/sound/asoundef.h | 9 +++++++++
>  1 file changed, 9 insertions(+)
> 
> diff --git a/include/sound/asoundef.h b/include/sound/asoundef.h
> index 09b2c3dffb30..c4a929d4fd51 100644
> --- a/include/sound/asoundef.h
> +++ b/include/sound/asoundef.h
> @@ -12,6 +12,15 @@
>   *        Digital audio interface					    *
>   *                                                                          *
>   ****************************************************************************/
> +/* IEC958 subframe format */
> +#define IEC958_SUBFRAME_PREAMBLE_MASK	(0xfU)
> +#define IEC958_SUBFRAME_AUXILIARY_MASK	(0xfU << 4)
> +#define IEC958_SUBFRAME_SAMPLE_24_MASK	(0xffffffU << 4)
> +#define IEC958_SUBFRAME_SAMPLE_20_MASK	(0xfffffU << 8)
> +#define IEC958_SUBFRAME_VALIDITY	(0x1U << 28)
> +#define IEC958_SUBFRAME_USER_DATA	(0x1U << 29)
> +#define IEC958_SUBFRAME_CHANNEL_STATUS	(0x1U << 30)
> +#define IEC958_SUBFRAME_PARITY		(0x1U << 31)
>  
>  /* AES/IEC958 channel status bits */
>  #define IEC958_AES0_PROFESSIONAL	(1<<0)	/* 0 = consumer, 1 = professional */
> -- 
> 2.34.1
> 

-- 
Simona Vetter
Software Engineer
http://blog.ffwll.ch

