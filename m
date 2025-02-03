Return-Path: <devicetree+bounces-142680-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C20C3A2617B
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 18:31:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 49BB41654F0
	for <lists+devicetree@lfdr.de>; Mon,  3 Feb 2025 17:31:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A26020897C;
	Mon,  3 Feb 2025 17:31:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="t24P9316"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f50.google.com (mail-lf1-f50.google.com [209.85.167.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 703FD3A8CB
	for <devicetree@vger.kernel.org>; Mon,  3 Feb 2025 17:31:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738603895; cv=none; b=R/97MlYvjriXKcpVbWiJcCywt2EBhmoAmJPj2g57zBC/hVwQvmc0TdDKhVMD35IQRJu1Cgz0P4t4+2GKP1gHMwe/RG80xE21yT2gRlIP84blU4iALPCT9G5klk9cIDzhsMAQqLmCe8LBY9jRZCik8yNcA9leOdxORtycm3E+Zpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738603895; c=relaxed/simple;
	bh=YDhUgtlTAwS0RUw95kPd9JoxS0ZWO9dvD7Jku166Tt4=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=hkshwikwbh9ru1PyxmtI5B4TbEPwvLkeDInz1cq31bsIp+yyrDhcD8jhu+xwrlzCRnGtRzMYFD2kiSxhLMlxeYYgWYe0kxwu3IHGOJou8YAwMlHPcaX7PyITyTDj5+/I4moAcTmxZZIiB9hWKnqIs1QoAAd9JjgUmCbvGnw4meU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=t24P9316; arc=none smtp.client-ip=209.85.167.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f50.google.com with SMTP id 2adb3069b0e04-54024ecc33dso4842900e87.0
        for <devicetree@vger.kernel.org>; Mon, 03 Feb 2025 09:31:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1738603891; x=1739208691; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=6J5C2NglTFNy0YpzDKyoh02/sMog3Gz9jf3ZxrSeYfw=;
        b=t24P931678LDgB+s2sBHZpIsNlMNDP0oCo2SCHo46E5E79nI4B4V39HDZNVPslfErR
         jNZGNXhJmVbW/lYv9BnmB/haYl/swEXYaTjaZyvr2CQEODZD6/4Z3vuRxkdKfGlfdGIS
         vtebGYVoJuU0gFeY7VlIRT3hLxDrlSExCo5hNcwM1RrNrikigRUSaXc39RH7pHFkheyL
         2v94bgdpHH53Cu0ZGRzHnXUwB7F0CCdYaj6AnLbLNlLSgMRC/q+YP9boN+QAc80zayAy
         b0G9nLn99/HxtEnlBkk7Bh6iEpCuIRfM0CRTjyK/RveuwOtJz4GY1w9uXXQOn6ULJc3V
         VotQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738603891; x=1739208691;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6J5C2NglTFNy0YpzDKyoh02/sMog3Gz9jf3ZxrSeYfw=;
        b=UScnlBAWEBV4CkN8HmXVyIPNVQ3hSY8JkYEG5ZovoN/cINca0R3psFIBmO1yU2P5vC
         trFegIlKCFE5dGz19LxgCqpfxX2fKDiuqWSxT5VB5U8QTLyo7HZc8K4oQTQAkJs+OcPQ
         R+4C9dj8+pTtYJqfecJQI3oCa4pvpSm8jXuXivSbpoJaCcSKC/Tn1UHgn/FvsMUBl5Ep
         LzstEb61mZQydm7zquuX5kVSWhorK2OnAH75YAz3USsRNW9oniJVyf0+P3SinJx4YFil
         +4M7St8ehmNXSF0M3mKewhvdTVZq+TbeLD6WL0H/VPCHWxfcPwdCS1OgImPfID8fcfhD
         t/Pg==
X-Forwarded-Encrypted: i=1; AJvYcCVSNFlptN88AOxDZ2Uzo+pYEmZ6D3uA4PK130Il3541qnQfJNo8z2Lv1vRatWMZNbQwgeINkyNd0wgz@vger.kernel.org
X-Gm-Message-State: AOJu0YwSDDZXTVxHBElyWMLiFp7u3QXpfV5QOag1TZ8WvW3pjDrBKG0O
	ITz2rGfsz12n0sPrtNFm1qUI3uFRwWFrIodQeOt659/sPLtwbJKdesSc2I+1+rE=
X-Gm-Gg: ASbGnct7CJjTWAMpkQ0RqOJS8U0XciW0Kwc4FANM13W/LLPIzx1ic6T7w6GB1OqJ1mU
	qMB7gtvUCP8vGNXW9Rho0e6gNdJOLUi2XPTIkRWgCQByzR8ZEmZ2l07eZaOorjiQksDI3EJjY4a
	+FMwseH4HM6d4XzpY3wqfYR4O5TqQsdaom5WNaz9LmvpjYwhzUt0aYRZnER63uOQw+lH5Ilrx67
	mmcj/eJ7mkBzcMtYl5XjSXoPRg4WGjde42rCwgRq0wuv76k2lEJB16aKcgiZ8+LS+TU0FmIwrkQ
	vTx30VwmPnb+P9sGPqLoICzEil6fkRpQ64LzNHMcu9FcdL0Vo2fb1stBQEdulY3h8TEzQ8E=
X-Google-Smtp-Source: AGHT+IFkNKZpMLqmFDZoDeQKhVlcO9/NhY+aFDQECzKLKClwYk71/Jrbal9oPP0TJgwbGI19n1UGFg==
X-Received: by 2002:a05:6512:3183:b0:542:8cb0:88a8 with SMTP id 2adb3069b0e04-543e4c3fffamr7547584e87.52.1738603891401;
        Mon, 03 Feb 2025 09:31:31 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-543ebeb06bbsm1347935e87.146.2025.02.03.09.31.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Feb 2025 09:31:30 -0800 (PST)
Date: Mon, 3 Feb 2025 19:31:28 +0200
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
Subject: Re: [PATCH v5 2/4] drm/atomic-helper: Introduce
 drm_atomic_helper_reset_crtc()
Message-ID: <tk7ygprxgujdok4eo4iipmqs2bnsecxngltz2mk7kyqwl3ufpl@23rygh6g5iam>
References: <20250203161607.223731-1-herve.codina@bootlin.com>
 <20250203161607.223731-3-herve.codina@bootlin.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20250203161607.223731-3-herve.codina@bootlin.com>

On Mon, Feb 03, 2025 at 05:16:04PM +0100, Herve Codina wrote:
> drm_atomic_helper_reset_crtc() allows to reset the CRTC active outputs.
> 
> This resets all active components available between the CRTC and
> connectors.
> 
> Signed-off-by: Herve Codina <herve.codina@bootlin.com>
> ---
>  drivers/gpu/drm/drm_atomic_helper.c | 41 +++++++++++++++++++++++++++++
>  include/drm/drm_atomic_helper.h     |  2 ++
>  2 files changed, 43 insertions(+)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

