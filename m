Return-Path: <devicetree+bounces-229243-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E94C5BF52F7
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 10:10:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E3B8B4044B0
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 08:08:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E666E2EA75D;
	Tue, 21 Oct 2025 08:07:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ffwll.ch header.i=@ffwll.ch header.b="LIvyTk8p"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f42.google.com (mail-ej1-f42.google.com [209.85.218.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BF90C19C542
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 08:07:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761034071; cv=none; b=aeRKTYsJyTjzIq3ChDEA32lVtG40zS6SGd7MbmjrYOasynKSe5M12QKl7gcMPvCIVpJ4wGZ447OfIwQcxzU0mg8zAbqzBUZyLOi3IwRY2T4otGc4q2wnjh3DfVazbdpY/q+l6JtjyfAcryOELq7pY3D1VbM2t6+17Ddpf27+U2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761034071; c=relaxed/simple;
	bh=KX8ZO3Auv88cdBaxObOo+VwnKCNwmQ3G5RcSBR8MIUQ=;
	h=Date:From:To:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ZseZMGX76mUUEMOUzS8K4xto2N/+0nUMSkTo65mCecDq7p+n3ENXZyG2tdp/RfotTGhmqy1CTuiyLro/TKcPvL1X3AAiurEC57gZEMn9AkxGf8H+uK79crQIOzIAm9uWWoWwIR/eWIBYv2E6OhjmGVp806MklAmRHi0dy5GOdT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ffwll.ch; spf=none smtp.mailfrom=ffwll.ch; dkim=pass (1024-bit key) header.d=ffwll.ch header.i=@ffwll.ch header.b=LIvyTk8p; arc=none smtp.client-ip=209.85.218.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=ffwll.ch
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=ffwll.ch
Received: by mail-ej1-f42.google.com with SMTP id a640c23a62f3a-b6d262c8528so16857866b.2
        for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 01:07:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ffwll.ch; s=google; t=1761034068; x=1761638868; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:to:from:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=llmJhZD012rxZY/wm+1U/bowfeca4YxBvqXnIKJ9gBs=;
        b=LIvyTk8pgvAoxNEbGY16ZAKw5nPNVjj6WRfMIR6EAdOPJWvgg9VtYJuc14ZtO5w+az
         PN9JLE5SrEDe39y2HPx12zt45xDT0la3aUaeaenQ6ABlWt9DepMABd0ffIh+3tG1D0g5
         hN/Uyqmx0zOcyqpuvXxK7nikO5jKnNZv6/iO8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761034068; x=1761638868;
        h=in-reply-to:content-disposition:mime-version:references
         :mail-followup-to:message-id:subject:to:from:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=llmJhZD012rxZY/wm+1U/bowfeca4YxBvqXnIKJ9gBs=;
        b=BoZ1fmoNdInw3HvRYk1R52WXV6owy5DdOlk3z0ZCLzdQ2bqOsx44ASAdRr4BCtbhLH
         cWVwqhIu8mn+7pkGYDFg68VidVtgiKugpkyTiKiILbGSPPahSbRtbmKoOSYxa8QJyG0y
         403jsGcxaUtX10qaoMES6YGfnUKSymUbEB0DdQ4QdFBuNrbIgbfx38wVipjU4TFsAv1z
         myD6xFVvjuE6h/0afNm2emN8LvbPDTyC7kCZ822vwuq9FXMQCrcJZCiZ5BtAO/VRdLHG
         YNaBkaeQW4TwVk9cOptyP0+kPc/tJ3Sc4px1y4ecXdSnJXGl4S1A+cZl/QnbuuDGMalG
         biPA==
X-Forwarded-Encrypted: i=1; AJvYcCUACDDJes93o5I1zpvRP1PEvZFa7akuB2S+CYUPU7OutVq+twIvi81/KOWlWoC5sIoqOmFXA/rA7wrO@vger.kernel.org
X-Gm-Message-State: AOJu0YwBkJFqu/2NHt7o3HQphRyOopUTqdYkNTxe8V4I7SPlqtqIxR53
	CRWTdgzzLlQcBnFhnkz2rVkHy/h7CpeIV5Hy982xPMKwbr/29qQm9cPn5eHdhWCbrTI=
X-Gm-Gg: ASbGncs4kbt6CZ6YwQBJfwOQbqxB6E4nXi3DEHeilRcc8gHMM4n2h0jdAh5Sxre/G7N
	v/jZHs621qH3e0F+rT0fRjFCO46x2ZDP14Fo5EBqrVcgnZuOcBlcYBkL5jCZ5v7fi+3QKMERSIr
	nRUZZ97VJ5WsdpOYa8AtaIx4qhOHHtY9qtP3Mjdf/qVo2GanrS9i1g3Ug5hrRDYkjbcc89CM5xX
	Qy3Ehs5ZB8SPXixb69sltZttzF7CzzFC+CCjt6V+tH3u47WqYGfv3YPhmS+UhlzU7/OMqI0qcjk
	Cm0G5FTKJXb93WN3YpO0Db964+wQPkH1jhaa6aOKguEv/7g9QV49b5eTRab0eQnxuQdukC9t+Iy
	6iY6pgM2uFG03cb/yC6sGYscGoFiuNU8F0bWXTu+g05smSZL6oRSSTolQ2zCWY2mxvl07vpRN+W
	wek11/HNsedILkq3a5kQL6Ig==
X-Google-Smtp-Source: AGHT+IEGcQ2tB+9FLkcsMzH3Z3OqGyaRZtqOqXHeWD/7JycNzUq8R6JyQRoeUwJtVWAc3tO+BkBXoA==
X-Received: by 2002:a17:907:2d23:b0:b5c:74fb:b618 with SMTP id a640c23a62f3a-b6472c61933mr1959457166b.12.1761034067061;
        Tue, 21 Oct 2025 01:07:47 -0700 (PDT)
Received: from phenom.ffwll.local ([2a02:168:57f4:0:5485:d4b2:c087:b497])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63c48ab65d6sm8600484a12.14.2025.10.21.01.07.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Oct 2025 01:07:46 -0700 (PDT)
Date: Tue, 21 Oct 2025 10:07:44 +0200
From: Simona Vetter <simona.vetter@ffwll.ch>
To: Shengjiu Wang <shengjiu.wang@nxp.com>, andrzej.hajda@intel.com,
	neil.armstrong@linaro.org, rfoss@kernel.org,
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
Message-ID: <aPc_UBy5-e6HIW9I@phenom.ffwll.local>
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
 <aPc-Wad85lQWbqfa@phenom.ffwll.local>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aPc-Wad85lQWbqfa@phenom.ffwll.local>
X-Operating-System: Linux phenom 6.12.38+deb13-amd64 

On Tue, Oct 21, 2025 at 10:03:37AM +0200, Simona Vetter wrote:
> On Tue, Sep 23, 2025 at 01:29:56PM +0800, Shengjiu Wang wrote:
> > The IEC958 subframe format SNDRV_PCM_FMTBIT_IEC958_SUBFRAME_LE are used
> > in HDMI and DisplayPort to describe the audio stream, but hardware device
> > may need to reorder the IEC958 bits for internal transmission, so need
> > these standard bits definitions for IEC958 subframe format.
> > 
> > Signed-off-by: Shengjiu Wang <shengjiu.wang@nxp.com>
> > Reviewed-by: Takashi Iwai <tiwai@suse.de>
> > Tested-by: Alexander Stein <alexander.stein@ew.tq-group.com>
> 
> Would be good to get a formal ack from alsa maintainers before merging
> through drm, just to be sure.

Sorry wasn't fully awake yet, I meant that it should be recorded in the
commit. dim has a check for this stuff now and it fired for your patch.
-Sima

> 
> Thanks, Sima
> 
> > ---
> >  include/sound/asoundef.h | 9 +++++++++
> >  1 file changed, 9 insertions(+)
> > 
> > diff --git a/include/sound/asoundef.h b/include/sound/asoundef.h
> > index 09b2c3dffb30..c4a929d4fd51 100644
> > --- a/include/sound/asoundef.h
> > +++ b/include/sound/asoundef.h
> > @@ -12,6 +12,15 @@
> >   *        Digital audio interface					    *
> >   *                                                                          *
> >   ****************************************************************************/
> > +/* IEC958 subframe format */
> > +#define IEC958_SUBFRAME_PREAMBLE_MASK	(0xfU)
> > +#define IEC958_SUBFRAME_AUXILIARY_MASK	(0xfU << 4)
> > +#define IEC958_SUBFRAME_SAMPLE_24_MASK	(0xffffffU << 4)
> > +#define IEC958_SUBFRAME_SAMPLE_20_MASK	(0xfffffU << 8)
> > +#define IEC958_SUBFRAME_VALIDITY	(0x1U << 28)
> > +#define IEC958_SUBFRAME_USER_DATA	(0x1U << 29)
> > +#define IEC958_SUBFRAME_CHANNEL_STATUS	(0x1U << 30)
> > +#define IEC958_SUBFRAME_PARITY		(0x1U << 31)
> >  
> >  /* AES/IEC958 channel status bits */
> >  #define IEC958_AES0_PROFESSIONAL	(1<<0)	/* 0 = consumer, 1 = professional */
> > -- 
> > 2.34.1
> > 
> 
> -- 
> Simona Vetter
> Software Engineer
> http://blog.ffwll.ch

-- 
Simona Vetter
Software Engineer
http://blog.ffwll.ch

