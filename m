Return-Path: <devicetree+bounces-72281-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AEEE38FB42D
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 15:45:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4E7421F266FC
	for <lists+devicetree@lfdr.de>; Tue,  4 Jun 2024 13:45:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E60151482E8;
	Tue,  4 Jun 2024 13:44:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="wWPmGvzG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f51.google.com (mail-lf1-f51.google.com [209.85.167.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2469A1474A9
	for <devicetree@vger.kernel.org>; Tue,  4 Jun 2024 13:44:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717508648; cv=none; b=n/xP7SHsr/qeWAj2b86IqL73Yp1F8BTHvzaSG4I0KIes9jb9RbdcMJ//G3Mhm2WolALRsV3zWEiH34ccxkgtyE1PPwZACuHpDn8E60lrc0H6If3w4tWM0OftiO8qeuME3Br5UJQDICN3Ss0F9Ku+th+PGpR/+476ygmG9gGUxM4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717508648; c=relaxed/simple;
	bh=nHxn1H/5WqnyHeuUb2awiirtWLtLri1T4TqO2W+71nY=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=lUcTEnmGmzNW7czMZix1mUW/lGvsYbMKUZimRiRwQSP1t4Rpd+Ox/tjX+jJlVuxfg++jq970N9cVdUSfk2xTy049WQQG1Ox5EQ+2PLUO33dRYDbgxjR4+vbEoZTdXChccZd/LIHL9DPrWMnvlnmLc33riS8TTp4feU5l1dOnkrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=wWPmGvzG; arc=none smtp.client-ip=209.85.167.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f51.google.com with SMTP id 2adb3069b0e04-52b7e693b8aso4763801e87.1
        for <devicetree@vger.kernel.org>; Tue, 04 Jun 2024 06:44:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717508645; x=1718113445; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=TDyyivtsWKVto8Jf6XTYPyQtJ234vG34gbVNO+G82vg=;
        b=wWPmGvzG9WtWC1HK4FlnNtDJKtSJSASkIUl08mJ5qnMnNGOQPoLgBlaqOXkcsyd7KI
         5YoZuUzzkHMfcHjSR18NHzs37jwDMK9F0zp0TzFSpTW6G2x99LAKXfvTU+XlFrU+TwvD
         lPgsjWQM4SXrPrM4sC3aXxH2UUhcFQ68YdpMDYuWZWHBaLhYwvs91OM5vLfP53ye8JTJ
         Nntw3Xe5WZxr8izsRiKYIRvRng4w3sg/tWJ8DFCeRNZTX9HhUwLplHkRgTkvQDPVUcR2
         RW3EPj+y0taTProqiXL3NU3v+Im/MSGSVyMdlxCg5KxeHHWqhig4O3+oxcShO/7OBtCk
         3zvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717508645; x=1718113445;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TDyyivtsWKVto8Jf6XTYPyQtJ234vG34gbVNO+G82vg=;
        b=TdmND5FlRflwC0N4XL2VO6Da7hB+wgvGGCzkTJpekfmlmgGV3ICdQFGSwsGej3UeZx
         LQEqV4omkcaTPymWaLs6N8Yrzm7i6N00f65FqdfuhSied2WPNmKVFvLxXGfcrlnuCneT
         KSNRf13fmVuP0pCMKNmRGLKVuR2li4C27RYxsxrxUv8Td7TrTSXB29PhXWvO1L83mxvN
         NvpvIV4UqIBYBd2qL0wCMqDciAg9R4vbu/xuA+SuqOgjUwYIaRcdEIpklEMfBk+xL+4h
         VkWWnAWnf9Xo+sUQ1n1PjadQGknyB8OUB1+2URb3e/0YukeFQybkusLKNjkD7Xa7HzsZ
         F5zw==
X-Forwarded-Encrypted: i=1; AJvYcCVfk5EJmf3NTkX+lO61Fo1gO498dc4UPUaZJB7PbEXMtN+RWfV6Dzv4gTsv5BbJHDGiyR8M7bntpOkjRk8/cizT+yl1IgLFASuZ4A==
X-Gm-Message-State: AOJu0YyyLdAgqDg9QA2yODvQDnLNnmwVwn+bN+rAXpnuKj+oGo9kefSy
	6mS+PiF9l54j45aMqui0d4E83Pj1IsgU2mqaCFFL+69yFVGViIdQMPoNlyD7g8A=
X-Google-Smtp-Source: AGHT+IG6ht8A62Pw8rpZ+11aDKYrmTFdH9Ws+Mkt+G2M8qmauAinc4sUedcPWhjbBE/5JRI3fEDVTw==
X-Received: by 2002:a05:6512:1110:b0:51f:9a88:be2a with SMTP id 2adb3069b0e04-52ba229b339mr980152e87.23.1717508645253;
        Tue, 04 Jun 2024 06:44:05 -0700 (PDT)
Received: from eriador.lumag.spb.ru (dzdbxzyyyyyyyyyyyykxt-3.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::227])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52b84d3f149sm1489949e87.74.2024.06.04.06.44.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 04 Jun 2024 06:44:04 -0700 (PDT)
Date: Tue, 4 Jun 2024 16:44:03 +0300
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
Subject: Re: [PATCH v4 3/5] drm/mipi-dbi: Make bits per word configurable for
 pixel transfers
Message-ID: <ogplcvwjc7rkonyjoiz6kbxcydzlelokguguil2aghapgey6uv@ltfjdxyd5xaz>
References: <20240604-panel-mipi-dbi-rgb666-v4-0-d7c2bcb9b78d@tronnes.org>
 <20240604-panel-mipi-dbi-rgb666-v4-3-d7c2bcb9b78d@tronnes.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240604-panel-mipi-dbi-rgb666-v4-3-d7c2bcb9b78d@tronnes.org>

On Tue, Jun 04, 2024 at 03:20:30PM +0200, Noralf Trønnes via B4 Relay wrote:
> From: Noralf Trønnes <noralf@tronnes.org>
> 
> MIPI DCS write/set commands have 8 bit parameters except for the
> write_memory commands where it depends on the pixel format.
> drm_mipi_dbi does currently only support RGB565 which is 16-bit and it
> has to make sure that the pixels enters the SPI bus in big endian format
> since the MIPI DBI spec doesn't have support for little endian.
> 
> drm_mipi_dbi is optimized for DBI interface option 3 which means that the
> 16-bit bytes are swapped by the upper layer if the SPI bus does not
> support 16 bits per word, signified by the swap_bytes member.
> 
> In order to support both 16-bit and 24-bit pixel transfers we need a way
> to tell the DBI command layer the format of the buffer. Add a
> write_memory_bpw member that the upper layer can use to tell how many
> bits per word to use for the SPI transfer.
> 
> v4:
> - Expand the commit message (Dmitry)
> 
> Signed-off-by: Noralf Trønnes <noralf@tronnes.org>
> ---
>  drivers/gpu/drm/drm_mipi_dbi.c | 14 ++++++++++----
>  include/drm/drm_mipi_dbi.h     |  5 +++++
>  2 files changed, 15 insertions(+), 4 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


-- 
With best wishes
Dmitry

