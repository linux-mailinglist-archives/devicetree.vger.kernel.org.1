Return-Path: <devicetree+bounces-131326-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B58829F2D95
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 10:59:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E3CCE161BED
	for <lists+devicetree@lfdr.de>; Mon, 16 Dec 2024 09:59:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C243202C3A;
	Mon, 16 Dec 2024 09:59:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XTqu6RKY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f171.google.com (mail-lj1-f171.google.com [209.85.208.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9F112202C20
	for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 09:59:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734343182; cv=none; b=Z7igVim0h9R5R6pB+5NAVWxQjyNTlgOuVvoVr5d4KD3Gj5bW6wCCsw+JsH7VpLL7F1x9+P488ezl0axrVLnOw+E4jDSfpun3atfBQgG7GpBswgE9wLyEVBU3Q1coyQYo5tJHVYZh7aG4B7sYUmrVreKYP8O5Ff7Y56lMk8cO734=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734343182; c=relaxed/simple;
	bh=z8jRuBMHsUzN+G5xqP4dbCkXuQmhUoW2hC8mSs+MrCw=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=knRYDoPpFGT8VemHWEbu+/5ar/mpxHeqLiFEGQbTR9FYrrXWwaY+57qyPT8SbqkRGM9nLROPQeoRNnS/pUVt044sSbAKqOJTnqj7QDQWA/iFN7G/bCoSKv1ciRWACtNLHMi5xEFlxZzBOT2mv5wLdJ5IVTHmdPwfi6v0foX8YKs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=XTqu6RKY; arc=none smtp.client-ip=209.85.208.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f171.google.com with SMTP id 38308e7fff4ca-2ffa49f623cso48945291fa.1
        for <devicetree@vger.kernel.org>; Mon, 16 Dec 2024 01:59:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1734343178; x=1734947978; darn=vger.kernel.org;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=FnJu3tNx6PFynXYk1/Woga2+QSGZXsPiestKM7hs3xI=;
        b=XTqu6RKYVY2X1K6mlsS71InFt1Q8xmG/nsZeEhD1cFJmRPrVcFxD62lOIxVXzwz1wo
         Hoatn68BLUBYjm2pALwsFU02OpqMl4REYdqJt/YbNUaZF512qJz88Y3LuYYF3gTjYQzM
         WDjGLXtCJLMkreQCs2Lqhd1Om91X125sTz4tltlIuTpzpHARs77b3w0O6OULpEhPJCyP
         2Ap/ipZxMGMh+xuazn1nx8tQkJTBWPb5viocTmxRk0DR/Apf3q3ATl9f0vUUhmI8pZ24
         k8xKkq4IRfATYwi7csHp26IkbnRvR0cuNfdR/JDTb1O+b8P5ewM4PbKWsuWz0vr5mjSX
         Eiog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734343178; x=1734947978;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FnJu3tNx6PFynXYk1/Woga2+QSGZXsPiestKM7hs3xI=;
        b=v2F6XETzH0HYq27WgiKIB1yoGDZwI9Jh+ftaQh1Xech7x3vcbpeN5WoakHHVMD12bZ
         gV/bK7bfxP19IDFEH0SZhHF05lr97JHh7HGJZ4FO8hVj03OBTiZoz7AQjne+1b71fncF
         ndQXGCHIqvhd6DGmb8UuC87u1KLY9y60JhCMDnfB7hCAiZZ0V7NXjLmhF/AbG0tDcUdO
         qzTLqbjU9kr4ScN/5jmogFo+PY/DD7ohu4iOsuIhfRvq9iugfwY7uxR6/SAO4LSSLe2h
         Ha83JBHethO1DF39XvwcAnzZ1EYIRg5YEdPKRpoLItkjcNClMfUy6YmGPX/uBHR+8ZGm
         cWJA==
X-Forwarded-Encrypted: i=1; AJvYcCU3Jh+PmocwmsvgXX6Mqvd3oD+BUBHtdukU384lJjWXugL1bKbKu3Ip+3Xicyp1EzsHr/uy7uR0XYLg@vger.kernel.org
X-Gm-Message-State: AOJu0YwjnHWvB/dLdUdkqN1hTNiq2Ju1ITn8iyLmE6Fham7xlFZ9ImBO
	+OkrsOTbsl/t4aALBOH8FgtUrUmP4GhyvaOoYJFQ6fWkECBkBX1rNp8KqTyeS5I=
X-Gm-Gg: ASbGncue0Hi22eaIlBfbKjXmQaQaU2tVNTvfjl5qZO/NreyZf4SWUfSVZTLhKkUVHC/
	sdENAxv5v0xZQmwWfT/UBxFYxJ0ZTUBt/ANBWecFE5HAocBMJQT9JhlscbhtYZ0YHNY0M+ENW3c
	sINT1h8Lxq/RkKbLgarsEy0Mtp/5QAw9+AeJnfQZ9x6N3UuGnkvSqA7B2LkJ9fjGC0REWb4/AAS
	R4ZdiaqeyWXvRvtl/XOpmzfgQx0cGfOHE5NUb2J1dv+cedtCazhQprFCTsk3FZDcAlGWAEvn7yZ
	G98N9qQZWABECV/bMgJUaRoUGRyKMjXyePJY
X-Google-Smtp-Source: AGHT+IGzuyIoz4RW4zE50l9A5GROziEsvDO7/q2gt1gPF1DlZnBaj2q1Sy1bt91ZKI974j+OroEhRg==
X-Received: by 2002:a2e:a9a8:0:b0:2ff:8e69:77ef with SMTP id 38308e7fff4ca-302544230e1mr44031131fa.1.1734343177585;
        Mon, 16 Dec 2024 01:59:37 -0800 (PST)
Received: from eriador.lumag.spb.ru (2001-14ba-a0c3-3a00--b8c.rev.dnainternet.fi. [2001:14ba:a0c3:3a00::b8c])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-303441a5a75sm8674571fa.99.2024.12.16.01.59.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 16 Dec 2024 01:59:36 -0800 (PST)
Date: Mon, 16 Dec 2024 11:59:33 +0200
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To: Andrej Picej <andrej.picej@norik.com>
Cc: andrzej.hajda@intel.com, neil.armstrong@linaro.org, rfoss@kernel.org, 
	Laurent.pinchart@ideasonboard.com, jonas@kwiboo.se, jernej.skrabec@gmail.com, airlied@gmail.com, 
	simona@ffwll.ch, maarten.lankhorst@linux.intel.com, mripard@kernel.org, 
	tzimmermann@suse.de, robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
	shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de, 
	festevam@gmail.com, marex@denx.de, dri-devel@lists.freedesktop.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, imx@lists.linux.dev, 
	linux-arm-kernel@lists.infradead.org, upstream@lists.phytec.de
Subject: Re: [PATCH v7 2/3] drm/bridge: ti-sn65dsi83: Add ti,lvds-vod-swing
 optional properties
Message-ID: <75aewnwpb6y73gqlrqmelzeia7bdar5ihm3ety5gfjaqalkuby@gwv4xjpomoit>
References: <20241216085410.1968634-1-andrej.picej@norik.com>
 <20241216085410.1968634-3-andrej.picej@norik.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20241216085410.1968634-3-andrej.picej@norik.com>

On Mon, Dec 16, 2024 at 09:54:09AM +0100, Andrej Picej wrote:
> Add a optional properties to change LVDS output voltage. This should not
> be static as this depends mainly on the connected display voltage
> requirement. We have three properties:
> - "ti,lvds-termination-ohms", which sets near end termination,
> - "ti,lvds-vod-swing-data-microvolt" and
> - "ti,lvds-vod-swing-clock-microvolt" which both set LVDS differential
> output voltage for data and clock lanes. They are defined as an array
> with min and max values. The appropriate bitfield will be set if
> selected constraints can be met.
> 
> If "ti,lvds-termination-ohms" is not defined the default of 200 Ohm near
> end termination will be used. Selecting only one:
> "ti,lvds-vod-swing-data-microvolt" or
> "ti,lvds-vod-swing-clock-microvolt" can be done, but the output voltage
> constraint for only data/clock lanes will be met. Setting both is
> recommended.
> 
> Signed-off-by: Andrej Picej <andrej.picej@norik.com>
> ---
> Changes in v7:
> - decrement refcount of the endpoint in all error cases,
> - add spaces to improve the readability of the long if statement conditions in
> sn65dsi83_select_lvds_vod_swing.
> Changes in v6:
> - rework termination resistor logic, default is now set by resistor value, not
> reg value,
> - move setting lvds_vod_swing_conf to default value of 0x1 inside if statement
> which checks if both properties are not set
> Changes in v5:
> - specify default values in sn65dsi83_parse_lvds_endpoint,
> - move sn65dsi83_parse_lvds_endpoint for channel B up, outside if,
> Changes in v4:
> - fix typo in commit message bitfiled -> bitfield
> - use arrays (lvds_vod_swing_conf and lvds_term_conf) in private data, instead
> of separate variables for channel A/B
> - add more checks on return value of "of_property_read_u32_array"
> Changes in v3:
> - use microvolts for default array values 1000 mV -> 1000000 uV.
> Changes in v2:
> - use datasheet tables to get the proper configuration
> - since major change was done change the authorship to myself
> ---
>  drivers/gpu/drm/bridge/ti-sn65dsi83.c | 145 +++++++++++++++++++++++++-
>  1 file changed, 142 insertions(+), 3 deletions(-)
> 

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

-- 
With best wishes
Dmitry

