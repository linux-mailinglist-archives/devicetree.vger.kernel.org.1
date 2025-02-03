Return-Path: <devicetree+bounces-142627-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A52CA25F52
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 16:56:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A3D1D164904
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 15:56:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A1D220A5C7;
	Mon,  3 Feb 2025 15:56:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="S1JxrfM0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A44F20A5C2
	for <devicetree@vger.kernel.org>; Mon,  3 Feb 2025 15:56:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738598213; cv=none; b=gpkNoC1Uaci4awUyfpIPiIepHd6JFEuh3zIeErFmfml6/XeFDRBlLvtvVbP82QvfAxYceupPyEJTxvcZeWfpjHbHGXiqlTkpynFTixc/rpMTfcGBR/RQkqBAjIvwJSakwLnNvY8TsNWRIoCq2jrQUhFXpYMiOXFfL3M6zj3p+Y0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738598213; c=relaxed/simple;
	bh=sXfqWlwbcujmw1i93Pe17OOd8xLt9XzHJjEUzliQeOg=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=ByFH67vzg5M3YmtkH7oltbO42g5diKm7I0SoDW2fLB1bIuLCbm2GrDVZJvTtFNVRoeLEJQJ9rgkVIU3CKL9E6bwxonxgU4zqIhXnhndEdvIJi9ThWelWgp2E/hpnQc0CYmdDYlu8h3r0cph+rwVcHsjHWZEdqKc2Cf5+ReOjq5Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=S1JxrfM0; arc=none smtp.client-ip=209.85.167.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-5401c68b89eso4190549e87.0
        for <devicetree@vger.kernel.org>; Mon, 03 Feb 2025 07:56:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738598209; x=1739203009; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=XuPn9eD2+NZOGE/JtJyvNpoPT7dTMzCQ+q+2GtUzeK0=;
        b=S1JxrfM0v0G8hrKeCjKTCMBHw03ur2dIvKYKxkMychNvFC3AKZY6y8iUX529AgukQm
         HDlkV9bogJPxbXyrHa6Vqy1/ZDENnhsxNalBC2hi8aQ3bSZpFwFSFWV52hZ4y+cS4bpN
         O+aPwggTSL4VD7D+Tg1C6ihRtZCUf8+s2oTCi6/JtMr8Uh6SaFjFLoq69FhE6JiiVjzV
         wrGKqXcrJXYXPzKagtwx+Lsk24/wdCJo3pxX4vAT6P3JWENzr2SEguvRZHrTw/hTnDnn
         SyaIES8YXGdGOh+PzEg+8Xbj2l2eGgRGNmrHoEiSDiVrDs+NbWs46NN7uEgFHXLpdhBL
         2hEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738598209; x=1739203009;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XuPn9eD2+NZOGE/JtJyvNpoPT7dTMzCQ+q+2GtUzeK0=;
        b=Z6laBk+YywErROlzRgn4MepoRs2wGQ63zMI4BfRYKz2ZmNWi6dJeGSX67mHpFyGZ0I
         MkEZK7b2+orNghyQCg0Mp1hybbMKZHuvWxonXjz30UmoBcFZCFm9gd3EaN2vQpPvQA7K
         uyAdfNBnQJAC2xVW3NZCcZQ+D9moGoJnT/YMO45y5rx4IZ5M3TWTVpoLRVXD933GDg5y
         C31y/42YadAvLdrkIqQZRhOB9wler9kWbZ4Q7duvdARZwpfZLpTMfgM6UYglkBvKjmE0
         NdiUHgwT693FC3GfnVfMAwmtxtOlfVQu6A+ipv2kfV+AxJXfa113fVX35u0CbRhRZe0B
         wnbQ==
X-Forwarded-Encrypted: i=1; AJvYcCV8M9m1qTg+Wy0RXCQhIUVmyavgtDBJWbxZW86SPVsGYrcC/AdnkdrYwbWKEgd7ioKbEBlhrHmIzOO9@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7vmdBiugPZUM1cH6LVkHkmW9zsA2eYvNS67Kku/mTV58GAECF
	dSL3hYSgGFLYgcTDA8RXvJj32o0+rDOZieYN5AUFjnPFBPXlPpR3D6omdMjfmJw=
X-Gm-Gg: ASbGnctxpTKlbA48DMX08pxxF2/JOYFnR+JpFGFGJ5QrlgOVMypRPXzOMMi5flY/0mg
	dMfAy5nRS5WczggO5vE9LeuZi+N7LkhaTDYKcuElKlGujo/H7bGmheY0dDsirlXgLdEtvQpeiVc
	QJ60VjcF8udv8UgdXRFSXjUQWlnpy3bS0RHx3/6cxxMfroYJeRnfhVQePZJDnI6ydZVj0jNizkt
	PUqUdy5eqUA9j+Gxblejgu5P9ICxvf1c5AlzZhAVy8T1pJbFS8Ea/eiqZTac04WfSKko67vGJ6L
	W0DltILHXlIlCd25CFHiUpIs++glp2DTyxnsNjL1OCQeZ3uH3P3abzR9xkCO26AgbBLVKoM=
X-Google-Smtp-Source: AGHT+IHSnoSCZLZHMn/lU1E0tDL4ALU9pDTSYGpNUSZmjEf9hrT7l0l/+rTZfGCvvt4GZkbgG33ukQ==
X-Received: by 2002:a05:6512:3e09:b0:543:9b0d:d388 with SMTP id 2adb3069b0e04-543f0f25369mr4615484e87.19.1738598209413;
        Mon, 03 Feb 2025 07:56:49 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-543ebeb797fsm1333435e87.189.2025.02.03.07.56.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Feb 2025 07:56:49 -0800 (PST)
Date: Mon, 3 Feb 2025 17:56:46 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Herve Codina <herve.codina@bootlin.com>
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>, 
	Andrzej Hajda <andrzej.hajda@intel.com>, Neil Armstrong <neil.armstrong@linaro.org>, 
	Robert Foss <rfoss@kernel.org>, Laurent Pinchart <Laurent.pinchart@ideasonboard.com>, 
	Jonas Karlman <jonas@kwiboo.se>, Jernej Skrabec <jernej.skrabec@gmail.com>, 
	David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Dave Stevenson <dave.stevenson@raspberrypi.com>, =?utf-8?B?TWHDrXJh?= Canal <mcanal@igalia.com>, 
	Raspberry Pi Kernel Maintenance <kernel-list@raspberrypi.com>, Marek Vasut <marex@denx.de>, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	Louis Chauvet <louis.chauvet@bootlin.com>, Luca Ceresoli <luca.ceresoli@bootlin.com>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Subject: Re: [PATCH v4 3/4] drm/vc4: hdmi: Use drm_atomic_helper_reset_crtc()
Message-ID: <lu2crev4ikpn2tu6mizmvi4oorb7tbat2uxmcci3qekqi4ohqq@vfps25gpnurk>
References: <20250203145824.155869-1-herve.codina@bootlin.com>
 <20250203145824.155869-4-herve.codina@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250203145824.155869-4-herve.codina@bootlin.com>

On Mon, Feb 03, 2025 at 03:58:22PM +0100, Herve Codina wrote:
> The current code uses a the reset_pipe() local function to reset the
> CRTC outputs.
> 
> drm_atomic_helper_reset_crtc() has been introduced recently and it
> performs exact same operations.
> 
> In order to avoid code duplication, use the new helper instead of the
> local function.
> 
> Signed-off-by: Herve Codina <herve.codina@bootlin.com>
> ---
>  drivers/gpu/drm/vc4/vc4_hdmi.c | 30 +-----------------------------
>  1 file changed, 1 insertion(+), 29 deletions(-)
> 

Acked-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

