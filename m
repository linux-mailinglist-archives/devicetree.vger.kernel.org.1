Return-Path: <devicetree+bounces-34324-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CA2FA839636
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 18:21:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7AA9928D762
	for <lists+devicetree@lfdr.de>; Tue, 23 Jan 2024 17:21:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 112317FBCE;
	Tue, 23 Jan 2024 17:21:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="E3K7qBiv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 767777FBC4
	for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 17:21:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706030464; cv=none; b=bYPB3JfeVP+kST9w80v/nTy8eSmDd66eIlVrKI4Wgttw83XkAvj/eKrZDBy1gfv8nmLwpRruhD2y/bYJv7EsD9AvS5VC+Ora2gEkqRSuDo6kIlgKnu5xnRjS5gtWpLD/I4bENZqBff+gKiMef6gcYFOFA7qKgeosI9r8CpxbC70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706030464; c=relaxed/simple;
	bh=pHYOkrk7p0+vmd6Q8AhuzGmsx8q6iJdxMRVdgXKdwN0=;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:
	 Content-Type:Content-Disposition:In-Reply-To; b=iFmEv0YWgQzlVJZYG06TaVA/U9WdcdFglMNOKHQX7ZyUdIVLXeaev0RJTHgo8y2SrrKLP4fnhkMB/o0DRWXfMOtRuWvN7MObEB50Mcugmj9o0uiNKED8yOPI81/iyHHya32IvKQW3qZe0iwY/XKb+AB0W0UdKa7wv5OZ75s4xgY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=E3K7qBiv; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-40e913e3f03so57863915e9.3
        for <devicetree@vger.kernel.org>; Tue, 23 Jan 2024 09:21:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1706030461; x=1706635261; darn=vger.kernel.org;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date:from:to
         :cc:subject:date:message-id:reply-to;
        bh=pHYOkrk7p0+vmd6Q8AhuzGmsx8q6iJdxMRVdgXKdwN0=;
        b=E3K7qBiv4x+ObdT03x/hX9OlNz1PUqpyA9vv7mRAIlNcbH+f06CUVwI8miGZ2AaiYB
         H6xJjyGoHu/fO3qVt5b2OaaL2XXRKKC06whiPQ/wj+4QyeIHXLzLj6q9Lul487ZBTgHu
         /lzX1lJWTP4XwXZEq8Q9J92tVRnly3WG/5sGR7yWGVjLrli+MFANVZgdlaCXHsLfgCYE
         O9WQVE3cFpjKQTSPVfN2aAHV+xgAwA5RM6ZppSwXToY02mwet9XhTB4uCdqOXxFTvB3G
         2K8IAVCbvjLwyUza/QdovKTjlBtosCxPCSENqwR1wTJGQ1cPUv4Vd1l6R0kJA286xh0Q
         anKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706030461; x=1706635261;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=pHYOkrk7p0+vmd6Q8AhuzGmsx8q6iJdxMRVdgXKdwN0=;
        b=YqpVMUxbx/Cr+teza6+R4TuPerVqZfgb7ANvb1MgVSSe/46TKTjpaWDoVpGGMgnRkd
         4DpJAtFX7nD6l+Q9XUQqqQqhotd7qkUXRtuLu+qvPm+puxxrnRH3OJHI73WLULzYWKLq
         3CccX5nBcoPKCSRwnmId59se+9GwGCvD/fi/t6PRcgFuux9/m2ypkLWlkwQGPHd+4i6y
         BbsHWWbkoGe531RXw85cP+RsMkUOvGsV0O7/EODfnPBMT1JDCAF1lAG35gvl+l4ODEbF
         y4KfM8gywGMkEFAzMrKjOS6K4Zx7MVLgm864+WPVaGTZxG+a+GjMh/Np6P38GA2OBCBF
         vQ4A==
X-Gm-Message-State: AOJu0Yyc46RXPoHwsjplBimMIjNMCT4RaJ9+0DAhnlN1aNqOAxJK6G8j
	6hBuzz7d4J+3FOSYfgfoSE6lD0ywwrG1Laa5RfWiNu3zBt9M6745Qq4iYiBvwAQ=
X-Google-Smtp-Source: AGHT+IFYxEMGAchUt1W+s236kq5ZJsRP++aWZYwhc00KUVO1+MAAo2pe7nmIdLdtu4Jj4EfweoOMzQ==
X-Received: by 2002:a05:600c:18a5:b0:40e:9512:5056 with SMTP id x37-20020a05600c18a500b0040e95125056mr368796wmp.61.1706030460793;
        Tue, 23 Jan 2024 09:21:00 -0800 (PST)
Received: from aspen.lan (aztw-34-b2-v4wan-166919-cust780.vm26.cable.virginm.net. [82.37.195.13])
        by smtp.gmail.com with ESMTPSA id m35-20020a05600c3b2300b0040e541ddcb1sm43283295wms.33.2024.01.23.09.20.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Jan 2024 09:21:00 -0800 (PST)
Date: Tue, 23 Jan 2024 17:20:58 +0000
From: Daniel Thompson <daniel.thompson@linaro.org>
To: Duje =?utf-8?Q?Mihanovi=C4=87?= <duje.mihanovic@skole.hr>
Cc: Lee Jones <lee@kernel.org>, Jingoo Han <jingoohan1@gmail.com>,
	Pavel Machek <pavel@ucw.cz>, Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>, Helge Deller <deller@gmx.de>,
	Linus Walleij <linus.walleij@linaro.org>,
	Karel Balej <balejk@matfyz.cz>,
	~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
	dri-devel@lists.freedesktop.org, linux-leds@vger.kernel.org,
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
	linux-fbdev@vger.kernel.org,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH v4 2/3] dt-bindings: backlight: add Kinetic KTD2801
 binding
Message-ID: <20240123172058.GB263554@aspen.lan>
References: <20240122-ktd2801-v4-0-33c986a3eb68@skole.hr>
 <20240122-ktd2801-v4-2-33c986a3eb68@skole.hr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20240122-ktd2801-v4-2-33c986a3eb68@skole.hr>

On Mon, Jan 22, 2024 at 08:50:58PM +0100, Duje Mihanović wrote:
> KTD2801 is a LED backlight driver IC found in samsung,coreprimevelte.
> The brightness can be set using PWM or the ExpressWire protocol. Add
> a DT binding for the KTD2801.
>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Duje Mihanović <duje.mihanovic@skole.hr>

Reviewed-by: Daniel Thompson <daniel.thompson@linaro.org>


Daniel.

