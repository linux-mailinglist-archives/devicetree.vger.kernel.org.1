Return-Path: <devicetree+bounces-220079-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B091B91C11
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 16:39:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4DC38425D48
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 14:39:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D412C27F19F;
	Mon, 22 Sep 2025 14:39:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="upE/o04j"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f41.google.com (mail-lf1-f41.google.com [209.85.167.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B80927B352
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 14:39:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758551972; cv=none; b=QkD21FbOSRi0LZLi5QGn9qhyLmusWHCHHiJryQyQzUr9DRtihIiOaGYdXEBpeIs1Xtt1X9CiUx/39a+1nu23e15DDGE8Zhxg2JEXlDzSI2B0W8Tpsz7ejzz/U7gS10VJeoLqdyGXSxDuycPzJYGj0DMHdEZ7i59OZyluudTbR3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758551972; c=relaxed/simple;
	bh=SY5ndTouHYO85TYMtS3rItkA6PmFt4sAaFql6bGHo+U=;
	h=From:In-Reply-To:MIME-Version:References:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=YDW07zZskMR5la6LNCUr/KdYT1aOe0RZtra1HY7USOa0zfBhO0CurXHFIB1LU++XNp+LrCqdGDluxKm1OztgM+hCZw5oCr/4+MUkx7Uuv0v37DU1aaWfl/LJ4epxYzuomVFAW7zXFD67JsljhR1JrwU8vlAVHz/amYH1q26KF38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=upE/o04j; arc=none smtp.client-ip=209.85.167.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f41.google.com with SMTP id 2adb3069b0e04-57b7c83cc78so1850021e87.1
        for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 07:39:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1758551969; x=1759156769; darn=vger.kernel.org;
        h=cc:to:subject:message-id:date:references:mime-version:in-reply-to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=VuMIE2ms3QVxnv90ClTm3T6Kclf/LBg+/ECjxaxeKT8=;
        b=upE/o04jt1TTSO9bOez0ZjGh6VcyyLwJHfGO991SCMEej8W9xIOBOQ79LVHHKLO8Yy
         woZcDeJ0PRUdJtTcvAk0ZefWPw+qz3QfdctJheWtymbnP526f4yq2ax3vf6b2qxPEanv
         9m7Hhv5hvQ/jE+FdAYtuFzNVeNqYk+wnoP/GCFUf0K/lBPdhM4DwKqRaafZccW6bWClY
         za/vY+RTieRBSmrUIvfXrJI3MCgjJ7OX/imNrzztIAL4GuODwem/UwyzcGa+WGeYTfWt
         G8eWDDBK+EbX8hZ/l7/HB+UdboW6qWGowzsswkBoKgf8tv48zhTDrzwb20bSFbrkz7ro
         +bVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758551969; x=1759156769;
        h=cc:to:subject:message-id:date:references:mime-version:in-reply-to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VuMIE2ms3QVxnv90ClTm3T6Kclf/LBg+/ECjxaxeKT8=;
        b=lt+LoO8U/U6Q84WF/q6KMqgvtAGIyzMS300WQ/qNnHaOuqTAUgpR5N0G2JOT1zbwvx
         7eMwdR/aNTlvETu5YyGQrYORAaKA/DmNXECgMHUfplIpgZ5J1xJLyf1btaYBzsEj8s4o
         z0pkAM17zURP11SktrYUx78pyESdifik2IJiAAea6tWqE/poMNi0nes/3BxPYP/qRWXG
         N1y9pBCR5AYRzedihjO/eq0GCI6XV8YWMQq97Ten53ZaL2MdCASRmCQ7e+msB3wzDSxY
         7tW0mV2jQEv8iWnKET4KRL4KmaMCyi8LVBRMDtoAqkJm8OAwgMBSVCO/4WYH8d4ki2jq
         H64w==
X-Forwarded-Encrypted: i=1; AJvYcCV3CDm1nIQO9+FguMksUiB6Rb+6FmDZrBH+KIrCNTM2HJe4v5W6QFiTwnozOrOUGp3YK5K3nBdF8Z9E@vger.kernel.org
X-Gm-Message-State: AOJu0YxplIJcBlU3ofafMWQNK7pVPO2t+PQu2XajX1Z8yi4pGE8uSWO5
	d2+zNxcoLrwGCPKbLskLuE1l0o3iWKvWuavCsor6JHjxBFaJaNXRZpxeuo8xLBy2J6srcJtxcuw
	ZcT5BHgNgk7ypS4oUX5eGGBu+Ueq4uhHxN7GsowkBrA==
X-Gm-Gg: ASbGncuvppWPc69RiRhJjtenVCkypZBXxMXWZbe7skuiZ6853s2enoJmVcSP+YpQCHf
	z+v/Wi1h7SDtapkkknYAjjM9gwr8IQ86qlU8cFaaNSa6V8v0q+JpdNFGQsFMZD01wk02OsOb9zS
	sGbZoq3rTG3mxX5MYHtAi4BWN/uHcrzR/xIriIl7pj5y/S8j6j135ssJPJijjCvgRTy28eD6P32
	LRZZLioMydZg/n1VmYN/qjYtNY00yAcQuXtuw==
X-Google-Smtp-Source: AGHT+IFetXs4JLYGng9hUFS318r2+WbXRwnBXKx7i5GJo2mWOtosdjS52NY45eVVFh4iHreFPdQli6jjBbS48ijUnps=
X-Received: by 2002:a05:6512:39c2:b0:577:1168:5e86 with SMTP id
 2adb3069b0e04-578958698d4mr5576291e87.14.1758551969238; Mon, 22 Sep 2025
 07:39:29 -0700 (PDT)
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 22 Sep 2025 07:39:27 -0700
Received: from 969154062570 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 22 Sep 2025 07:39:27 -0700
From: Bartosz Golaszewski <brgl@bgdev.pl>
In-Reply-To: <20250922142427.3310221-8-ioana.ciornei@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250922142427.3310221-1-ioana.ciornei@nxp.com> <20250922142427.3310221-8-ioana.ciornei@nxp.com>
Date: Mon, 22 Sep 2025 07:39:27 -0700
X-Gm-Features: AS18NWCEsotQxP7f2iDqTw9Qc1FBx3uXQqI8WXRMpxdCrqI2ocsPHGGN08v5SlU
Message-ID: <CAMRc=MenTm-HVzpi3H3uiMUDD58Y0GSXvo0Ng464PSQTdye2tQ@mail.gmail.com>
Subject: Re: [PATCH v5 07/12] gpio: regmap: add the .fixed_direction_output
 configuration parameter
To: Ioana Ciornei <ioana.ciornei@nxp.com>
Cc: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
	Conor Dooley <conor+dt@kernel.org>, Linus Walleij <linus.walleij@linaro.org>, 
	Bartosz Golaszewski <brgl@bgdev.pl>, Shawn Guo <shawnguo@kernel.org>, Michael Walle <mwalle@kernel.org>, 
	Lee Jones <lee@kernel.org>, devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, 
	linux-kernel@vger.kernel.org, Frank Li <Frank.Li@nxp.com>
Content-Type: text/plain; charset="UTF-8"

On Mon, 22 Sep 2025 16:24:22 +0200, Ioana Ciornei <ioana.ciornei@nxp.com> said:
> There are GPIO controllers such as the one present in the LX2160ARDB
> QIXIS FPGA which have fixed-direction input and output GPIO lines mixed
> together in a single register. This cannot be modeled using the
> gpio-regmap as-is since there is no way to present the true direction of
> a GPIO line.
>
> In order to make this use case possible, add a new configuration
> parameter - fixed_direction_output - into the gpio_regmap_config
> structure. This will enable user drivers to provide a bitmap that
> represents the fixed direction of the GPIO lines.
>
> Signed-off-by: Ioana Ciornei <ioana.ciornei@nxp.com>
> ---
> Changes in v2:
> - Add the fixed_direction_output bitmap to the gpio_regmap_config
> Changes in v3:
> - Make a deep copy of the new bitmap.
> - Remove the offset check against the ngpio.
> - Added documentation for the new config field.
> Changes in v4:
> - Replace devres bitmap allocation with bitmap_alloc() and
>   bitmap_free().
> Changes in v5:
> - Rebased on top of latest linux-next, change the extra goto statement.
>

Acked-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

