Return-Path: <devicetree+bounces-167534-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1B6D1A8AB2E
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 00:16:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6EDDF3BD887
	for <lists+devicetree@lfdr.de>; Tue, 15 Apr 2025 22:15:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1D4A22820C9;
	Tue, 15 Apr 2025 22:15:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="xgJo06PG"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f180.google.com (mail-lj1-f180.google.com [209.85.208.180])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BBBE257AF5
	for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 22:15:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.180
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744755345; cv=none; b=eJK3Pnen+bj/hVvzkg4gFriRGserA+T1PWNnpJhEYOkkW1pTSrDoa6DFgptI1DIpFCOjkHv05UumqW/aXKXuqcNWWdYl1+AR9q54XwnT335jRWr5mHhUIX8da2/is+w4CFFXYZ2EhaREe403Y1WCROUU1JzuAcFEtm/gRyYh+1E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744755345; c=relaxed/simple;
	bh=3IDLTt/ybfWS/Yh/QoGmWJI4cRQW9Qqw72xuwSQQoz4=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=Z//ZEDlOJueX9yBxKyqXcyoeyWAfi4N4baR6KHK+k5ea3p0AaZ5fzUI/pfwFJo2L/er3gsF9guO7JIOWAFVjHOeYYwtJ8xXCIHc5adq38oAycbTIaSlajs9T2CD8boBquBLC7v3lVqYXBEwVMt9HsF7pWoSuknSTYBdcW6+lBhk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=xgJo06PG; arc=none smtp.client-ip=209.85.208.180
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f180.google.com with SMTP id 38308e7fff4ca-310447fe59aso52983941fa.0
        for <devicetree@vger.kernel.org>; Tue, 15 Apr 2025 15:15:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744755341; x=1745360141; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3IDLTt/ybfWS/Yh/QoGmWJI4cRQW9Qqw72xuwSQQoz4=;
        b=xgJo06PGDjE/C/mqIWjOtCx+0tQ4IRb+or3O9QwH22qaijmjDXXgIC+KJLlZRXFUTV
         lIRVucqzW0Cdj4mB8TpzbuWFH7NFlOuf8czjP9eTEUKRIqdfYOItvy8N02+wlzXiw+f3
         Lzqpx+0Sz6A6GfVcnWcAK3hlAWh5IQNnA9sFbkCqTkqpi2y/eBs9p3lLjlwf9d7dsFKm
         TH5v2wnS3qbIlHqTAE5c8JEOySBTjuzL0TqfzJ0DJ4gX4PIrs6EROu0+X59Ewl0tr2CY
         WMwnFWHcNGhgAvfl0MLUvqriC80GW8TRApplSAHMMoux5wSMY2X6Q/4or2NOXe3nsP92
         J3vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744755341; x=1745360141;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3IDLTt/ybfWS/Yh/QoGmWJI4cRQW9Qqw72xuwSQQoz4=;
        b=dgCTWZIEAEdtp2BeaVlP9Br69MvrdKlMZqSnnbtewlA/bZF1ntKwUJLWVDgCugPzx/
         4Of/YBLAAUw7LOKbhmAlm9xXHYCr6gDL0aoF7PQ/n5xBRNwjNKe/0HUMbMXXzyb3Vn5q
         b4vO0oSUjZub37PRQGDIsOTVrMbqRoHwSyIUCxonojDnXwGIegP9Vm+Xwpvhk1dHbOJ+
         l+sSdHktilJknZM7MVrnNYL9zsFjdgTYGlK7u4boo/HWcmMcSs74y5zY3f4VYG/wiGfR
         NBJFwLFnpP3hARzat/jzwtwvdJLcemXCGlMUg5ajZCw48G9/IDJeU+db6A1eKQGVFzdc
         F20w==
X-Forwarded-Encrypted: i=1; AJvYcCWr+GyiI/yyrtB7zR4ug4LDi353SP6PY2fGCrmzIy/oS1C0BruROs4Eu00uV7m4ft9R5c7FZZNslmv3@vger.kernel.org
X-Gm-Message-State: AOJu0YxlO9edVs2qs/5AkME6S5jdePo9quJOBxoAgs/cV6c3z+FwXDeB
	AREeUeFPcQfQICRriaSw98SMl87/HpPoD7I5/+igwTOe9BjAo6Hhmxi2ATCi9RGLijLeTgkqy45
	1GuysR5b3RirbYkShWIaxajYiaLxu51FzJQ3MOA==
X-Gm-Gg: ASbGncsg6Ugrt4IL0ThdcxtRCTkqrfS3vao4SqRPF0ZhXjcavor7/hFx9et3n3xvp9V
	AwxF7x6sK2rVqB0cMOrUVIluhoub8q51DSeu7LIHlWWalHbUdM4a5CcEeZZXmzVLpsfxIPWEu20
	H+xMEI0/cBLccrVX0k3PrFhQ==
X-Google-Smtp-Source: AGHT+IGz291D+ba2B23NSZhprn8muxlxhfCK8P3qwCVwnjg64DejVDMET1qWa0V8mNtq0S/w6O4IvzOXyFabUdyweWA=
X-Received: by 2002:a2e:bcce:0:b0:30b:bce7:80da with SMTP id
 38308e7fff4ca-3107c2a5e07mr1935241fa.9.1744755341129; Tue, 15 Apr 2025
 15:15:41 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <20250409-mdb-max7360-support-v6-0-7a2535876e39@bootlin.com> <20250409-mdb-max7360-support-v6-8-7a2535876e39@bootlin.com>
In-Reply-To: <20250409-mdb-max7360-support-v6-8-7a2535876e39@bootlin.com>
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 16 Apr 2025 00:15:30 +0200
X-Gm-Features: ATxdqUHsUTdiuzHDBft1cRFTLonjrdMquqGFbjXe9OBWsOq1Lj_ycSHfvYfu6WU
Message-ID: <CACRpkdbN15ZTeeN2Gj24RC8cB=s8ZqeyOtz9fkPSS1fTgwRKhA@mail.gmail.com>
Subject: Re: [PATCH v6 08/12] gpio: regmap: Allow to provide init_valid_mask callback
To: Mathieu Dubois-Briand <mathieu.dubois-briand@bootlin.com>
Cc: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Kamel Bouhara <kamel.bouhara@bootlin.com>, Bartosz Golaszewski <brgl@bgdev.pl>, 
	Dmitry Torokhov <dmitry.torokhov@gmail.com>, =?UTF-8?Q?Uwe_Kleine=2DK=C3=B6nig?= <ukleinek@kernel.org>, 
	Michael Walle <mwalle@kernel.org>, Mark Brown <broonie@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, "Rafael J. Wysocki" <rafael@kernel.org>, 
	Danilo Krummrich <dakr@kernel.org>, devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-gpio@vger.kernel.org, linux-input@vger.kernel.org, 
	linux-pwm@vger.kernel.org, andriy.shevchenko@intel.com, 
	=?UTF-8?Q?Gr=C3=A9gory_Clement?= <gregory.clement@bootlin.com>, 
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Apr 9, 2025 at 4:56=E2=80=AFPM Mathieu Dubois-Briand
<mathieu.dubois-briand@bootlin.com> wrote:

> Allows to populate the gpio_regmap_config structure with
> init_valid_mask() callback to set on the final gpio_chip structure.
>
> Signed-off-by: Mathieu Dubois-Briand <mathieu.dubois-briand@bootlin.com>
> Reviewed-by: Michael Walle <mwalle@kernel.org>

Makes perfect sense!
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij

