Return-Path: <devicetree+bounces-72282-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E7FE8FB431
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 15:45:24 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AF85D1C20C0E
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 13:45:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 53AC01487DC;
	Tue,  4 Jun 2024 13:44:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="FF06eO62"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f178.google.com (mail-lj1-f178.google.com [209.85.208.178])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AC8201482E7
	for <devicetree@vger.kernel.org>; Tue,  4 Jun 2024 13:44:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.178
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717508670; cv=none; b=Rsbfon/jBCS95mw3tugD03Mla89QRvdq+3U0A2jE4K2Mg5nKmgP3NHEJ1DsZmthA5/MVccnCDEBqBc0s3cE0rDmnsowCbj4ASK7Yo4rqO83X7HISPpnLSZGC2bxfbEcY4kmIiOGcLDKbIeaYl0CnXkYLX3K5H6sojyY02+DNv0c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717508670; c=relaxed/simple;
	bh=5zVT4vxcZGmovE8NgKSvqMzhBWRiHUebArtJ20CNbUc=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=LeOXHMkHdbj31xclGqxAnT4fbqwRd5TUcb6/RFh28nyjDi4z4O6rxmQy7cxbvs9cO0Oh2s7MGkkapXoiIGrlCes2QZg4RxsRtPbjvOCZ3brKdXTPN46PPkRPfK3/vPKKeea2JYYAM3WHalsZ+iJQqOdT3G7sZ1W1/yvNknFXPys=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=FF06eO62; arc=none smtp.client-ip=209.85.208.178
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f178.google.com with SMTP id 38308e7fff4ca-2ea903cd11bso59864121fa.1
        for <devicetree@vger.kernel.org>; Tue, 04 Jun 2024 06:44:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717508667; x=1718113467; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=gXPZsC/Zt7fU/Whsjt7Ixqr0Q1zSlZNphtmL5xPMdKg=;
        b=FF06eO62cCKO73hhGtFujw0KMVIRyrze0HPsCHkRQ9bSYysdQ3DjqHx6Ljizji8nx8
         mGhnztnChEY58xJYTmBh1r/kheh2LfU2DDfIai8i5uN3uP7HPkCaKjK+ZAZXq4NBeZnW
         LdDEFpnuVSzJvxB8GBN/WMUDHz78Z0lGHkFPOvDXmRuS3LgUFUYVbO79P6IVSBdT+rx7
         0Wzs1JAY1QG2NRw7Eczg8ZH3CgyFQe3td+kOzkzQ2/KeBlpXjvVw/DvfKtN56VnPJG5E
         NCw+DT+AX0SawhW3bTTaDaZOrPj4oIj0fBjGSylYdenj8n7sCZYwnvfYC0Fp0MGZyrHU
         sECA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717508667; x=1718113467;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=gXPZsC/Zt7fU/Whsjt7Ixqr0Q1zSlZNphtmL5xPMdKg=;
        b=tgr8GxCXqywhO5hw35HnRuOevsCv9eL8T7i/xvE+5kZvhkbs5OZstai6v3oscOM+Kj
         /1D2bIZiQuz+tVZaUJ9rnxiPlK2YHNkHhF8Ixk8Y21XZVt2Am4htlD6cYWP80ctkCqI0
         ZBIn619B93+scGkHwv/LhT9myS+4fXm4MwhQ/ApyZigliGHWTldzkAHENq+CmyMDQK0M
         BYp6m3fT418jRXb01xLSbeN2MMledqP8+Sc4egrXRvuzVa4sWOd4W7YC4zL4N6jAS6x7
         H+AVnSn7dfTJ/Z+WtfERsHACu9SgSP+4PwDy1FbFhkSAJrKcQuWf1RDlf9rnIStDL5Nt
         Hqcg==
X-Forwarded-Encrypted: i=1; AJvYcCWGG15L60XRbqFp/XxhiNWTy6llNkvBPue2cFytrO1cNczRD8k98KaOS9iyYUmipGLORnzthidP8ebahgnudiYTtDBrCAr9KwTwsw==
X-Gm-Message-State: AOJu0YzVr+9tidzGui1NI1LLR1dF787dWZejhO+8VmLnf9vJtV4LrLaX
	09QCGuLFYTFVSjZpRRirrjdjPTyFR10I7dhAZrzXy9F7WOpRd31oEqPL4dk/wYQ=
X-Google-Smtp-Source: AGHT+IFjdDAasq2jJous5ofmbY6kDP9p2KSr9f2oZG4CUsK3cc1cYhrCYj1n8+p3q7ghwpMRb0/X+Q==
X-Received: by 2002:ac2:4822:0:b0:51a:d08d:bab4 with SMTP id 2adb3069b0e04-52b896bea15mr9359093e87.55.1717508666890;
        Tue, 04 Jun 2024 06:44:26 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52b9ae898d1sm568437e87.246.2024.06.04.06.44.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Jun 2024 06:44:26 -0700 (PDT)
Date: Tue, 4 Jun 2024 16:44:24 +0300
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: noralf@tronnes.org
Cc: Neil Armstrong <neil.armstrong@linaro.org>, 
	Jessica Zhang <quic_jesszhan@quicinc.com>, Sam Ravnborg <sam@ravnborg.org>, 
	David Airlie <airlied@gmail.com>, Daniel Vetter <daniel@ffwll.ch>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, 
	David Lechner <david@lechnology.com>, dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Kamlesh Gurudasani <kamlesh.gurudasani@gmail.com>, 
	Tommaso Merciai <tommaso.merciai@amarulasolutions.com>
Subject: Re: [PATCH v4 4/5] drm/mipi-dbi: Add support for DRM_FORMAT_RGB888
Message-ID: <ngney3w6vrnnfcpbq64d5pffc7zjw6hobu7fhmsqoke2zuq5tm@kdwfe3rwqjwq>
References: <20240604-panel-mipi-dbi-rgb666-v4-0-d7c2bcb9b78d@tronnes.org>
 <20240604-panel-mipi-dbi-rgb666-v4-4-d7c2bcb9b78d@tronnes.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240604-panel-mipi-dbi-rgb666-v4-4-d7c2bcb9b78d@tronnes.org>

On Tue, Jun 04, 2024 at 03:20:31PM +0200, Noralf Tr�nnes via B4 Relay wrote:
> From: Noralf Tr�nnes <noralf@tronnes.org>
> 
> DRM_FORMAT_RGB888 is 24 bits per pixel and it would be natural to send it
> on the SPI bus using a 24 bits per word transfer. The problem with this
> is that not all SPI controllers support 24 bpw.
> 
> Since DRM_FORMAT_RGB888 is stored in memory as little endian and the SPI
> bus is big endian we use 8 bpw to always get the same pixel format on the
> bus: b8g8r8.
> 
> The MIPI DCS specification lists the standard commands that can be sent
> over the MIPI DBI interface. The set_address_mode (36h) command has one
> bit in the parameter that controls RGB/BGR order. This means that the
> controller can be configured to receive the pixel as BGR.
> 
> RGB888 is rarely supported on these controllers but RGB666 is very common.
> All datasheets I have seen do at least support the pixel format option
> where each color is sent as one byte and the 6 MSB's are used.
> 
> All this put together means that we can send each pixel as b8g8r8 and an
> RGB666 capable controller sees this as b6x2g6x2r6x2.
> 
> v4:
> - s/emulation_format/pixel_format/ (Dmitry)
> 
> Signed-off-by: Noralf Tr�nnes <noralf@tronnes.org>
> ---
>  drivers/gpu/drm/drm_mipi_dbi.c | 29 +++++++++++++++++++++++++----
>  include/drm/drm_mipi_dbi.h     |  5 +++++
>  2 files changed, 30 insertions(+), 4 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

