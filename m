Return-Path: <devicetree+bounces-142681-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id E300FA26182
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 18:32:08 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7B86A1882C48
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 17:32:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E5B6F20A5EA;
	Mon,  3 Feb 2025 17:32:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="UqhJau7g"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f53.google.com (mail-lf1-f53.google.com [209.85.167.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 239B53A8CB
	for <devicetree@vger.kernel.org>; Mon,  3 Feb 2025 17:32:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738603924; cv=none; b=Igc8Zzwvc+HB6uuwRrTyzc0TNy0E/27mSzCxjH3kFPnT9obNXqq/YzSJxVrnJOXJPKrXjdcwqopAPGTaQGqXaB+uW4MTs0NCcKEevMOaw36G98MmVelS3Ah2wHbNPdi8ahivYRyH3xYTC0WvNNM7ophHUoT5iwzh941ftCgy084=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738603924; c=relaxed/simple;
	bh=eW+9sLogoJNS3MlfDW1hQ4aHnNCiXDjjBW6j/M1G7ME=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=sHLCNIXRPeysmz7Ysgw0A/5BOipZkar/WDVBtpEn28Ig1m3N7OeyHM3LZdmtS7bqRWcqMeIphI0cIcFEwdORDr1bCGxXuOJFOKhL9DwkgNM75ZyfIx2I0DnPE5KudpcPaWTtK7TCPL0W8JjgTBO6MMU1Zu0G9zTH71vBhpyrE68=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=UqhJau7g; arc=none smtp.client-ip=209.85.167.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f53.google.com with SMTP id 2adb3069b0e04-54021daa6cbso4995746e87.0
        for <devicetree@vger.kernel.org>; Mon, 03 Feb 2025 09:32:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738603921; x=1739208721; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=GDUijl8uS2TQuu4uVYKfLNqBTHvBE5FjtYAu/OpsnPw=;
        b=UqhJau7gOnUjIjZazsyohPGQt+t+h6RIGpMe3lb/m6dnGxdl8D2H+C0pEeES0oX3nX
         hXmEtNu2r9AG6N5yGVCHvb5Zb9zUqc9AY/hkjqPhNn50xArEaF3T/hYYazQd73du3OjV
         GVOqKAAKBnK/GmSMxCWDy90c6b1OQRBTalYL1AwY5AKBN2ZxPgIF/o4MCq5GsGIYrlE3
         bEaO8wNonMqPu7C3UYUGrrKmML/nqEBr4kB1/jAcaLjro+yFPIE2AoGRSM0e8LViN4EP
         J4Vba3muXTdw5q6wAu9kKq0eO5lRB7au7M/g/Ap7mlSpsGFKJKc6JUUoAZ0c5pDayptA
         jJCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738603921; x=1739208721;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GDUijl8uS2TQuu4uVYKfLNqBTHvBE5FjtYAu/OpsnPw=;
        b=riHa4/9MpXsi4/10vx25+EQRXOFjbC7euVq3Gom4cyMxUxp65PtQHFUCM0bYVtYeGU
         NmD4kgMo+Bm8eyNeye30S0LeHaRZ+M+y6/LaZUk0YodkHjB+vWjU7lV3EzSBAEIiMA/P
         UnjKzPcq7s0PY1T65gAkrknZeh0i8IcoF+GwSbESWwFbGYtYsbmdBlYxciWgkiiKfP5a
         vvEAzdbFCVhQMoDPs3fY/B5ftnzgqx8rWQqW7s1T6XbBEofNJri6EG9nNA/D0bN8DQbS
         sx4/eAKGiJF7xPhBfqrBYWfCycmFt9b5gdZ9+CEfWE+zgfJno/uzv+thcSkbDp38Ncyv
         zEKw==
X-Forwarded-Encrypted: i=1; AJvYcCW4WYKmsXAmpSzx7Is8o4R14KHjH3R46SpKzK6P+MFw9diVjRpNNXUYiKoWgGLbwRwpxlLr6PW+d2va@vger.kernel.org
X-Gm-Message-State: AOJu0YyuRyPNr1b67FXXpPso2qPaGP8k9kf9kmo4P/UuNeKi7CTbWoNl
	WUNpzNV9OogqUiUS9ne2NjcVxzBs9YJbIy+T69OWfjCnQk4e8pkxaQRkJQVJUns=
X-Gm-Gg: ASbGncs0lnf+5H6azhmE/uzAZ5l3nz5cU/245jOQ4mU5fFIAameH20JF8/tA9yjq3x+
	QnYgZouQnlMlfffuIKTin9njqjTSRBXHHa6LZwUW9wvLfbmOJ/DvZhVubSM8BYPfiT82Kv/v55A
	3BxmYwuO95zBGGkFCn1qyWgMITuwk/InqSjMCzgsbJ9kwDX/rSq3+b5xSlyAkLZfk4YvlXFL4xk
	q/pym2nBUH1+B3GAUbtxNFsOHgzs1bWE74csm86ksA/wFg6LFP43I/zmdVO1yPZv3zUJ+cwKtNf
	/8UK73r5BVsTTrtepQd2gZUeIkdrEDqYoNqTxnGIman7XNIPC7mUM5cwcgRogioUOvbBc/8=
X-Google-Smtp-Source: AGHT+IEb+YyAW/StovyfhGvTrplF4uSDM9l+hAFGlMM+ryuL+SzWuAvhltLr7IYW4VtZW5P8EU0Sug==
X-Received: by 2002:ac2:5142:0:b0:542:91a5:1d5c with SMTP id 2adb3069b0e04-543e4bdff1fmr5990527e87.8.1738603921128;
        Mon, 03 Feb 2025 09:32:01 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-543ebebeb49sm1356174e87.225.2025.02.03.09.31.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Feb 2025 09:31:59 -0800 (PST)
Date: Mon, 3 Feb 2025 19:31:58 +0200
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
Subject: Re: [PATCH v5 3/4] drm/vc4: hdmi: Use drm_atomic_helper_reset_crtc()
Message-ID: <75boqmmyd5hqpdluidnd72b6ygaxsharxtlxv5jmkgtehnmyuu@3udsy5y6s4hc>
References: <20250203161607.223731-1-herve.codina@bootlin.com>
 <20250203161607.223731-4-herve.codina@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250203161607.223731-4-herve.codina@bootlin.com>

On Mon, Feb 03, 2025 at 05:16:05PM +0100, Herve Codina wrote:
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

