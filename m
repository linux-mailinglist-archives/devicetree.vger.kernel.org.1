Return-Path: <devicetree+bounces-192966-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id ED42AAF8B1B
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 10:21:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 19DCD188C376
	for <lists+devicetree@lfdr.de>; Fri,  4 Jul 2025 08:19:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F1A1D328AF0;
	Fri,  4 Jul 2025 08:01:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="JsYe9ptU"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f47.google.com (mail-lf1-f47.google.com [209.85.167.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFBFA327A3C
	for <devicetree@vger.kernel.org>; Fri,  4 Jul 2025 08:01:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751616080; cv=none; b=ijES3nXzBDQxIULHWdXljUL7DK/p0gqCoKpcATtooIW0GX2+Lo93Ga5Ajswa000CPxFPIEdvDmmX6iviWPnk9oFirF8NBAw8Uij63k5+LZxu2Sa1MR9hiQRp51YZmqQr4IdvoIsEs+a/lLBNHDJ7OchtZN3GkmI74vhOO6zG0Qs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751616080; c=relaxed/simple;
	bh=W5hy85hwlDseVRTu07tUllVYOTsjRbqVRAcm6Mv7UyA=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=RRkX5W4blEJewX29vL0sh/anwRzsSc5Keb/nk++E2EX8T461FLo8QoyiJtr8jPrbaMdLXLyZwGlO2KO3qutRSLDvqy2nzWYs8eM2gWrxBJ5dF7ZkNo8fw/aGVZG8+vJPuKNxo3ONK26jNiQc2cvqBLXrkllyqCdHYI7vcHZG4Zw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=JsYe9ptU; arc=none smtp.client-ip=209.85.167.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f47.google.com with SMTP id 2adb3069b0e04-5551a770828so686696e87.1
        for <devicetree@vger.kernel.org>; Fri, 04 Jul 2025 01:01:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751616077; x=1752220877; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=W5hy85hwlDseVRTu07tUllVYOTsjRbqVRAcm6Mv7UyA=;
        b=JsYe9ptUbRq6ygTfZJ8qav+YgV6KfWWlDestKyxznjWfjFfBiF9FWut1LEiCmE4zNs
         bWCMcPoiFmzvQVT5uw8Gl0sLHU5avS7iCPu2qQheKSZFuQi0J3E+Cerssto2XrXAWaDN
         m0guWsEP08rtH53zQxzWaakfuUy5ZwGRAzdgNM5fMlmF0l/WyWGUdqqttagbWVXEb/7U
         TfaAzKbmhmSHZEJS6c2GKTIRfaGQ5pgggLhQtEctSEFSbALnaiWrSZswpNGvD34aDMaQ
         DG2IqwRes2t+rP9nyAT3DEcynYE82IjmRdLXErjKz6hJGAuLV8t9VXBEoIUncbYX3UjX
         Xtug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751616077; x=1752220877;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=W5hy85hwlDseVRTu07tUllVYOTsjRbqVRAcm6Mv7UyA=;
        b=rW1JzmoHr7j33BkKR0e+3nzTy9VhiQM40ZGpJcJMOgIwuozt3sxKwymQz3HwnsqJ+b
         Vhslku9YIx9HwXF6kG+E4O2YFM2+3tTFJkkM0ebFqoWgfkwcNo0WYRko4wEsxZKwrNvk
         0wnTR4kwStaoqhA4Lj+rgVJPgvYDkQ1gdpP+LENh9CvVzlzWOBbHT5+6OPGTs0rKYVyF
         XD1RKwg2P8FZz3ODzUQZw1fiTraXz5kY0hYf/hojTv0maeS2VCiYh8it7L7D7ElowlAZ
         fhVCSKzYTlcXX/n9KVQrxJHTvOUsG9n3L96hgVAHKjgzPeyBme6x4skiM4X3KqOfDQ3W
         OxDA==
X-Forwarded-Encrypted: i=1; AJvYcCX8ahnuJPY63ZbqgEVR67v4YmMAdShVzgS1QGTOjKZ32JUvDrurKZKyyzxZyYc3p3XTQSrlkcrbQWmx@vger.kernel.org
X-Gm-Message-State: AOJu0YxiKg2iDyt4xNABUuBhhRpGKOhtzvcy7M0KtX9Hh7OSQl4YRRcg
	8PTA2PKG5JyabDeSxFyzoHI/7TMb7OUS+NJmcFqLBtJwH7iZGzYQbd1RnoPwL43GmAHQwK7LUTG
	6CD5vr4ExfpQXLnBtW/wFI0n1VGb/fkcy1EnynliV0w==
X-Gm-Gg: ASbGncsBhMBEEyZKvi728kerscB/dnC+SllgK+L4qauc1Ye8Hoaq50heuxonfFnevor
	ttJIH8TXWF61hYWnBueLEqoYRqVY2vecpbj88PkLRNtM+UCkAUGV9P3r9fdRLkmn+os4rKIZz5Z
	jig+aEwUa4IeT3pPbdGZEKFyPBaEdmaydr1sWfznHBhPM=
X-Google-Smtp-Source: AGHT+IE/4XahMx0H5K8e3G6kGLPvEJmDNT+z5yGiSFu4fWzVouleMPU8+EMqNIa7ZAvHuQVSQceFfXnXHQe0peqw8UY=
X-Received: by 2002:a05:6512:b26:b0:553:36b7:7b14 with SMTP id
 2adb3069b0e04-556f1f62c4amr441161e87.37.1751616076829; Fri, 04 Jul 2025
 01:01:16 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250701201124.812882-1-paulk@sys-base.io> <20250701201124.812882-2-paulk@sys-base.io>
In-Reply-To: <20250701201124.812882-2-paulk@sys-base.io>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 4 Jul 2025 10:01:04 +0200
X-Gm-Features: Ac12FXztT7uc15QsZMvB3fPDcO72_tN7xc565ddgY25DgxMR-aqghVzmCalro_g
Message-ID: <CACRpkdanKtZBkH90yAOjm2+7+dcNri+j7wV5AFL7NHSXHi+bSQ@mail.gmail.com>
Subject: Re: [PATCH 1/5] pinctrl: sunxi: v3s: Fix wrong comment about UART2 pinmux
To: Paul Kocialkowski <paulk@sys-base.io>
Cc: linux-media@vger.kernel.org, devicetree@vger.kernel.org, 
	linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev, 
	linux-kernel@vger.kernel.org, linux-clk@vger.kernel.org, 
	dri-devel@lists.freedesktop.org, linux-gpio@vger.kernel.org, 
	Yong Deng <yong.deng@magewell.com>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>, 
	Jernej Skrabec <jernej.skrabec@gmail.com>, Samuel Holland <samuel@sholland.org>, 
	Michael Turquette <mturquette@baylibre.com>, Stephen Boyd <sboyd@kernel.org>, 
	Maxime Ripard <mripard@kernel.org>, Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Icenowy Zheng <icenowy@aosc.xyz>, Andre Przywara <andre.przywara@arm.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 1, 2025 at 10:13=E2=80=AFPM Paul Kocialkowski <paulk@sys-base.i=
o> wrote:

> The original comment doesn't match the pin attribution, probably due
> to a hasty copy/paste.
>
> Signed-off-by: Paul Kocialkowski <paulk@sys-base.io>

This patch 1/5 applied to the pin control tree.

Yours,
Linus Walleij

