Return-Path: <devicetree+bounces-148606-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EC3F6A3CBF5
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 23:02:32 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A192A176EC0
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 22:02:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9F4582580D2;
	Wed, 19 Feb 2025 22:02:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Fbm4edc/"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f182.google.com (mail-lj1-f182.google.com [209.85.208.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4E1E23C393
	for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 22:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740002545; cv=none; b=sT7d2A2HgFf30Nk8ArrpMN8iye9afJ3CERtm5RoQ1zDGsOiVFFWXhUHEh4gAuwJTjEtVxzuAqmMgEOmZSuPDHi6ImyFItPQxPGuTfwwUJuYdtWsCXxUI/ILfw+xThQw6AhwK9QwLEcPcz5SNVZpTy2pDWTtfU4gwha6I5dC/Kao=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740002545; c=relaxed/simple;
	bh=g3mRNuX2xpJTljzE4dMGM4jTNrlqKgJ1nYwtEHsNtYk=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=e8HceSHqAC7avTGOYL2wPOahPObZ2YxiTT4TODUtsAERblrAmvgP4pn3Y7vBAyKRXF+Qmkkh8OU+03f61NzMhzmKrMzPbWCDPL6wfiwElsoy7cEEeu/B18Fzf1ZGQOaYYv+fHa3Xhemb0se+nl9TsTZbV5zo53DnpWnSA3f3GqY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Fbm4edc/; arc=none smtp.client-ip=209.85.208.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f182.google.com with SMTP id 38308e7fff4ca-30795988ebeso2349211fa.3
        for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 14:02:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740002542; x=1740607342; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=oXHpN0DWqjhN0hLE65VSAtbnzicm1GUQhBz/HJwZ43M=;
        b=Fbm4edc/8iSQEmOEeBQippKsbgpcgZjsiJq/pur4Hfp82w4LaZeXOS/87Y5qrCRM1E
         6mXmHRTfpwd5y9UIlb+0sx2yA/qE5fUIjKnCQNOHfNnf5KXhDJrX/SWVFWnHzqdGoWeY
         sSvHd0Mqi0o0fStv3ZwEssjNzEvZfvD4VFw/72vjrDNcU4uExeevKLeEApZL9JdHb9Wo
         pfFwY7y1C1AUUejcl56FsPUbfOS117yqBaJsVk7k1swu/RF59rAqCuRaZzWz8BVDcTII
         YrA7kH03pTFd4CKd0i11+yQsN7CFqtYXg8QY4HyiEcFCT+csJTHeu2m9CjrJZHZguVCh
         tAaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740002542; x=1740607342;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oXHpN0DWqjhN0hLE65VSAtbnzicm1GUQhBz/HJwZ43M=;
        b=cuWSYYHsm7g6kwIAkVSJx1KH7DDEGxerrjGVf90vM3ZP1Gu7FNdn466dgXTFJE2/1j
         ynOBJwXIiOvt4HHYb07Ey4wDHEB+L/morBAXeRn202q4jcsgxu3fnVSTtNgi6i70kZOj
         Dg/s5D2gAfDV3uTHa2xPmBCesUtg0sZfd0EEXe3CYbsA1rPDBMm1iZ0IK8HoBwH4E3zE
         2BlKh7k2dLSAWsDpOPaErYbszQ4MY83dROo2eCSgBuJP1HhkETChj8Y2yaG+vR3rg4wT
         7sHBjDEHCTXDe56xxN49hvUddqG/xsxdMH5O6oG2sgJkw4f71Xk7QpTumO3RdK+Kfm/g
         l3dw==
X-Forwarded-Encrypted: i=1; AJvYcCUAyiObrY4yCV0MlrZzu+CPmT6LzUrVVGUxFEPL3c8P7HUo8UJk+5L3EU0HNYetSxl1gjbqd9mmpt6T@vger.kernel.org
X-Gm-Message-State: AOJu0Yy7EDFPMnEeLZiCQcGhuECcjkNygCB5CVGJvx+BvxDUp7cRyluR
	JKP9sVNMZ7A9QEb1e4hqhb8O99eugoBkQjXrI5ugMmQohpSsdEVBJ2/4bgxXCz0=
X-Gm-Gg: ASbGncv9C0A01WAmN9J/MYtYHo4Gho7SRLRC+D6de3k9Sea5eKm97asYCDNFJg6xht6
	iHD4fwtXTwxC2jIJEO9bWSp4An606U8YNeaj4oaNuUXtvlCvs7spDsbi2gs/LjBi/RVHTL0uYvM
	jDurlx6mTfwN3sNgLhYukZr/7vKRtbqXgoAg89vXvtVeHXkJAAL3aGracwZkvJ8kr1uOoGdpIp/
	KL8UwvceVlpJltUlG+ehyiN5utpAvKTaEcVvlYTxJdZhD3Hz2hf6TG06kqtMUgI9XqHuCLfUZfV
	JD4xaOa+ExQHAL1INTKAI5rvmAr65LklnhXUPafIrjxCxk2lqlpFmUCwyi1LPZWVG38IxMw=
X-Google-Smtp-Source: AGHT+IH3qwpCZJIIRtXoLdJAC5M4Yj195wVlXHneaiHgEATwNAfneT8LPoyDLjdolhf1GGkQ1/U9CQ==
X-Received: by 2002:a2e:a302:0:b0:304:d8e7:7ea1 with SMTP id 38308e7fff4ca-30927ad5151mr58261401fa.23.1740002541724;
        Wed, 19 Feb 2025 14:02:21 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--7a1.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::7a1])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-30a2b50c78esm13466611fa.74.2025.02.19.14.02.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Feb 2025 14:02:20 -0800 (PST)
Date: Thu, 20 Feb 2025 00:02:17 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Jessica Zhang <quic_jesszhan@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, 
	Marijn Suijten <marijn.suijten@somainline.org>, Rob Herring <robh@kernel.org>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Simona Vetter <simona@ffwll.ch>, 
	David Airlie <airlied@gmail.com>, Abhinav Kumar <quic_abhinavk@quicinc.com>, 
	dri-devel@lists.freedesktop.org, Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
	Neil Armstrong <neil.armstrong@linaro.org>, Kuogee Hsieh <quic_khsieh@quicinc.com>, 
	freedreno@lists.freedesktop.org, Jonathan Marek <jonathan@marek.ca>, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Srini Kandagatla <srinivas.kandagatla@linaro.org>, 
	Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Krishna Manikandan <quic_mkrishn@quicinc.com>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>
Subject: Re: [PATCH v2 00/16] drm/msm: Add support for SM8750
Message-ID: <h6rm4zlj2xoqp6ze34cwu6y5xxx423l7lrdrbkezp7ct5pwms2@jmrlxr6hyhb7>
References: <20250217-b4-sm8750-display-v2-0-d201dcdda6a4@linaro.org>
 <eedf08c5-d781-45c8-a5f7-b0369e3efac9@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <eedf08c5-d781-45c8-a5f7-b0369e3efac9@quicinc.com>

On Wed, Feb 19, 2025 at 01:17:35PM -0800, Jessica Zhang wrote:
> 
> 
> On 2/17/2025 8:41 AM, Krzysztof Kozlowski wrote:
> > Hi,
> > 
> > Dependency / Rabased on top of:
> > https://lore.kernel.org/all/20241214-dpu-drop-features-v1-0-988f0662cb7e@linaro.org/
> > 
> > Changes in v2:
> > - Implement LM crossbar, 10-bit alpha and active layer changes:
> >    New patch: drm/msm/dpu: Implement new v12.0 DPU differences
> > - New patch: drm/msm/dpu: Add missing "fetch" name to set_active_pipes()
> > - Add CDM
> > - Split some DPU patch pieces into separate patches:
> >    drm/msm/dpu: Drop useless comments
> >    drm/msm/dpu: Add LM_7, DSC_[67], PP_[67] and MERGE_3D_5
> >    drm/msm/dpu: Add handling of LM_6 and LM_7 bits in pending flush mask
> > - Split DSI and DSI PHY patches
> > - Mention CLK_OPS_PARENT_ENABLE in DSI commit
> > - Mention DSI PHY PLL work:
> >    https://patchwork.freedesktop.org/patch/542000/?series=119177&rev=1
> > - DPU: Drop SSPP_VIG4 comments
> > - DPU: Add CDM
> > - Link to v1: https://lore.kernel.org/r/20250109-b4-sm8750-display-v1-0-b3f15faf4c97@linaro.org
> > 
> > Description:
> > =============
> > I got modetest writeback working, but DSI panel on MTP8750 still shows
> > darkness.
> 
> Hey Dmitry,
> 
> Just wanted to emphasize this note on Krzysztof's cover letter.
> 
> Can we hold off on picking up the DSI parts of this series until the DSI
> panel comes up for MTP8750?
> 

Ack, I will try to remember it.

-- 
With best wishes
Dmitry

