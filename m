Return-Path: <devicetree+bounces-47439-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 58A2386D37F
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 20:43:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 8B01E1C2287F
	for <lists+devicetree@lfdr.de>; Thu, 29 Feb 2024 19:43:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9741413F459;
	Thu, 29 Feb 2024 19:42:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b="aucVFdWL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-il1-f178.google.com (mail-il1-f178.google.com [209.85.166.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 394BA13F438
	for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 19:42:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.166.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709235765; cv=none; b=PgQiHUJJxLDoiOhkIyjMHTyVrH3g+6KVA8kIuCTZbnu+8TqWlJexvWbRNQjEqWQFx5S96Ogq7dvRql0WduLQpThdce/U91L8Liyg+bp2NS8MdAwbukaZpFZ/dFP1cZka4dmGoc3CFSEjnAoVLK7uw7cVQUPQuWTGxnlffLW41dk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709235765; c=relaxed/simple;
	bh=mOBVHJ8yyzsN+2QTeI7ofL3PhOFi+3K77Ftt0ex0OhA=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=N5if3XxHqIKDm13TTS0q6GqO52O4KHOk+FQbVdX/iH5LQS2I60vZ0vSREKTZAj2wWD1Ufp7+psP6kMlH9b7/YNxBxdnkmL+AVzReLnbPaxNwwXSty38C+rqN15gB1iSytTXhWXfLyPltvSRu01VAqwQmig2RZHBBeMcNpeSCxfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=aucVFdWL; arc=none smtp.client-ip=209.85.166.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=chromium.org
Received: by mail-il1-f178.google.com with SMTP id e9e14a558f8ab-365c9d37995so3371695ab.0
        for <devicetree@vger.kernel.org>; Thu, 29 Feb 2024 11:42:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1709235762; x=1709840562; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=KdmQnb2fNMhFh9QHwFl1noeV2VqNw483nMl2dymZb8k=;
        b=aucVFdWLaFK6gD5wE8vCjGiNtgFfQ/wdBUVltXOeGZZP5RB2hxN2lzcjTb0SGx3imb
         n5MFbynQ4w4xt21K223PHDd/OsNJNhxSR3kOji85d3g9pQaR0sDEMH0TmKM6UyEhlogI
         CahxTVxU++Ze+FMUWO6xKBAGMfuV8Jz7rpyHM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1709235762; x=1709840562;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=KdmQnb2fNMhFh9QHwFl1noeV2VqNw483nMl2dymZb8k=;
        b=VCyt+XfdRZ27++/ijC2VnLgm68Lx3WPuJBUVOogvKNC/8//qZv5FHbwYHKnYXwdfyF
         zcC9FDWYRr1c8oJWzRMmhBVurxVfHEcuz2RqpoXuyHMllh4iHtJtrRD8tIh7fM+Pb/Nk
         KqBC+iIaqgJb27YDwSt3ml/xqpFuHoVOTsfwKzcoqYGY6ZGoMkuOykVsfYYKHsnaQEXp
         hYT/J8cwmatGru6x26PVonbYPGABX0DNJIcdrbBPfWF1YSRNNym4sT318LEXbU+kpEEg
         vAm+7RJCIi9zOoCUTCxfQa1ynJovdxyQnXsoLWwPPuyO7uheXLZEoBCrQhH6jfoK6kDv
         z75w==
X-Forwarded-Encrypted: i=1; AJvYcCUALvoza5C7RyUO6vJPSetwd9lzAFD3pmjmmwD33wK6OAJy1pOtcZd3FtD9OKwWekSfwJX1FBhIV2rBn/99PbRYtjzi/9k2KoTsOQ==
X-Gm-Message-State: AOJu0YwqmeLnRpuSkgA37+P3Jhy1iW8hCssUbB3Tn6/02g/6mflC0N+Q
	Rl58DsUldBRNEa8dcRUXXbzLXo1TvDOR7POyzkJPUNgTSY7PdyGWiiwq3pJQiA==
X-Google-Smtp-Source: AGHT+IFq8HTZpzDtKrD3CmV20Ym2lHtGVcr43P2WwUpMFpTWmAh7BLzqB4hWiofzybpN3yXuPwjHbQ==
X-Received: by 2002:a05:6e02:1a8c:b0:363:e7c8:2180 with SMTP id k12-20020a056e021a8c00b00363e7c82180mr35407ilv.12.1709235762414;
        Thu, 29 Feb 2024 11:42:42 -0800 (PST)
Received: from localhost (144.57.222.35.bc.googleusercontent.com. [35.222.57.144])
        by smtp.gmail.com with UTF8SMTPSA id k16-20020a023350000000b00474c8277395sm99591jak.47.2024.02.29.11.42.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Feb 2024 11:42:42 -0800 (PST)
Date: Thu, 29 Feb 2024 19:42:41 +0000
From: Matthias Kaehlcke <mka@chromium.org>
To: Javier Carrasco <javier.carrasco@wolfvision.net>
Cc: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Helen Koike <helen.koike@collabora.com>,
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
	Maxime Ripard <mripard@kernel.org>,
	Thomas Zimmermann <tzimmermann@suse.de>,
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>, Russell King <linux@armlinux.org.uk>,
	linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org,
	dri-devel@lists.freedesktop.org,
	linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH v6 4/9] drm: ci: arm64.config: update ONBOARD_USB_HUB to
 ONBOARD_USB_DEV
Message-ID: <ZeDeMc_hQzVo-CxQ@google.com>
References: <20240229-onboard_xvf3500-v6-0-a0aff2947040@wolfvision.net>
 <20240229-onboard_xvf3500-v6-4-a0aff2947040@wolfvision.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20240229-onboard_xvf3500-v6-4-a0aff2947040@wolfvision.net>

On Thu, Feb 29, 2024 at 09:34:47AM +0100, Javier Carrasco wrote:
> The onboard_usb_hub driver has been updated to support non-hub devices,
> which has led to some renaming.
> 
> Update to the new name (ONBOARD_USB_DEV) accordingly.
> 
> Acked-by: Helen Koike <helen.koike@collabora.com>
> Signed-off-by: Javier Carrasco <javier.carrasco@wolfvision.net>

Reviewed-by: Matthias Kaehlcke <mka@chromium.org>

