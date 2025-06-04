Return-Path: <devicetree+bounces-182617-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id CB04EACD7F1
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 08:37:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C6E231788BB
	for <lists+devicetree@lfdr.de>; Wed,  4 Jun 2025 06:37:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 35FA41DFDAB;
	Wed,  4 Jun 2025 06:36:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="ftkxMIWk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FE071EBA1E
	for <devicetree@vger.kernel.org>; Wed,  4 Jun 2025 06:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749018995; cv=none; b=RVS2orTBlGnGtdWf44i1GFoHacI9W1AWIlkc0mUBnGfJ10dIBIOHAHTfytl4/9dAfcZZ794jA+QzGQSgF6kFquygIIw/PpzswPJXXv1BxEEOIjLAzZielf5WBT0YSFAf+2JKZ5rieqPc88cGW9cJFF+UO3hiKHaTK5pJWObMRmY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749018995; c=relaxed/simple;
	bh=D9K32ZU1XZ7DXPyePnHI+L2d3Xh8pDC7EJ8l3Ins/TM=;
	h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
	 To:Cc:Content-Type; b=q7ig8ou+VvXRqnraC/Jo9cYR6lUHSoM778rkwA+GeBQAjPSKYowXqzIPcsJSrh/4reqf4UJYp5L363eQfWIKXRVz13Kjrn1JTKjogB1W73a1HlnhFHDAm1DIGwYrt2rMIPatR8wagOV7w0ingDdjoKOzaB6VOKWdQ4zDUvKS0HQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=ftkxMIWk; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-553331c3dc7so6518002e87.3
        for <devicetree@vger.kernel.org>; Tue, 03 Jun 2025 23:36:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1749018991; x=1749623791; darn=vger.kernel.org;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=D9K32ZU1XZ7DXPyePnHI+L2d3Xh8pDC7EJ8l3Ins/TM=;
        b=ftkxMIWkR9ol6+d8ZlxXrg8ZC2y/J2lZNSGWdWkTHqBamQEUf007DZc64bD9OW1KPL
         +EncYm7YJKqr1Gi/437L5Hr1w1aupkn2bHynnPS4ysvwYJkLfYrqlK/TvCpSGvQuDBa2
         3P/LCplxl9f6pxZhXrJbUAKGENroG0JXwzBB793fPeum8gU1iLn8kUkYJoeBdVJrJXOZ
         HYbTMMmuWd+Qw4XiK9PhVp2Q243iKLNKx+dRwIJEnRbZ3l43+HUf2qiHQcEE++i3whHb
         6dB26KW2pmb4OeqUJAi8NjQKt/FatfLIOEDZMAAhnc6iIGdNtpBNEVtwXxo5dzb273PX
         0djA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1749018991; x=1749623791;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=D9K32ZU1XZ7DXPyePnHI+L2d3Xh8pDC7EJ8l3Ins/TM=;
        b=cPadbIieE4gROxcYTDf8POtjkgc7f8YlBuquhcpaW3mxtIsPeYAeqtZtf+6yV2ynVc
         GZsjzcABcdjcObtlSxUeRqEJap8o5kaIJjWG1rl1nqRuHvR7WxlEb/ujgmYVbqSb5Y3I
         GDzfz1T6lwKcgOceKZzYQvZMUpDVq0KHtDLqiQct+r3xQNg7kVoe/hONXuNhg502v37+
         QmexgfdIhHRZrIjqRQxwNJlc4GxWR8lPAanQL6s+Gdvrza++L8i45TJymkRtHLB13eqb
         oWsEzDVARBK3iPRn68j9Q9pcrIExOPg6pGv0shxzoTEctbpQqEtIpVEtZzJHYTvV5CDz
         1rpg==
X-Forwarded-Encrypted: i=1; AJvYcCUOYwomLmMRFXPlwLrJ1sgmPRlHXPr4Nap8sdd8foHvN3OKXtzgSsdmOPIgqK3LrVi6/NRG4Z0R+qyn@vger.kernel.org
X-Gm-Message-State: AOJu0YwXVy5xgGrteTzaSLmOo59ej4YSDAzfBQr/ceeCBLg9hn/PpGan
	KFIkSz7q3P8cCNb7zqsx3Tdgb56SuFaUqjWjjBpq686aoWxlIxjMbCSUqCkVogEDm3xT/XDZ+fM
	zDlvqzHHy9eeetRsyMxTL9a4OGZQvDmcfueTGC5krEg==
X-Gm-Gg: ASbGncslrVKmMwQhG2HhzFiPx1RIZSkwIymV9Gd09R3rz+/y4vES/VIZ7kIbHnLuuwc
	pWIYZMokvuJ5clMi3BlesjrmNvU8Q50yAy06Jnb99b/yVsclNrX9kZlDmyJ70pT6ZKWXRFZ8qO6
	NGSk4YPCwC4MF74kx+O1F5gQGPto9+MxMYCVynqqaZ/zpxdcRySHQDXHpjKpnb0HzdaJ7wmrc65
	yU=
X-Google-Smtp-Source: AGHT+IGNn5KBz1XRTjIkzj6b6e6ObvNtG1QhrXiTlXPwZa2NH6Gn7Xw0y4y87hgGMzhfMTB1WYM8NYUps+Cmt6+hJMs=
X-Received: by 2002:a05:6512:1192:b0:553:2ed2:15b5 with SMTP id
 2adb3069b0e04-55356df2fe7mr504394e87.57.1749018991176; Tue, 03 Jun 2025
 23:36:31 -0700 (PDT)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
References: <CGME20250529222403eucas1p1923fe09240be34e3bbadf16822574d75@eucas1p1.samsung.com>
 <20250530-apr_14_for_sending-v3-0-83d5744d997c@samsung.com>
 <20250530-apr_14_for_sending-v3-1-83d5744d997c@samsung.com>
 <CAMRc=Me9cWfe2mL=Q6JQbAFjpd55MOBZuAWC793Us0criiQr4Q@mail.gmail.com>
 <4519844e-b1c0-40a7-b856-a6e4a80c6334@samsung.com> <20250603-cuddly-certain-mussel-4fbe96@kuoka>
 <CAMRc=MfXashaEscE1vF_P6cs9iOCBerfNFiB4yC+TX76fZ87nA@mail.gmail.com> <05aa1fad-acf6-4cea-9a20-e54a2a4669b7@samsung.com>
In-Reply-To: <05aa1fad-acf6-4cea-9a20-e54a2a4669b7@samsung.com>
From: Bartosz Golaszewski <brgl@bgdev.pl>
Date: Wed, 4 Jun 2025 08:36:20 +0200
X-Gm-Features: AX0GCFusZW-oAOcE0lriS1jLbCdqE2F5QAmjvVg87YP8T3XsEwEGxH56sPN1Z7A
Message-ID: <CAMRc=McDb13ZOM5v5gYBAT40Z6eNd8am6gy=FysWU72cG1172w@mail.gmail.com>
Subject: Re: [PATCH v3 1/8] dt-bindings: power: Add T-HEAD TH1520 GPU power sequencer
To: Michal Wilczynski <m.wilczynski@samsung.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, Ulf Hansson <ulf.hansson@linaro.org>, 
	Drew Fustini <drew@pdp7.com>, Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>, 
	Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Frank Binns <frank.binns@imgtec.com>, 
	Matt Coster <matt.coster@imgtec.com>, 
	Maarten Lankhorst <maarten.lankhorst@linux.intel.com>, Maxime Ripard <mripard@kernel.org>, 
	Thomas Zimmermann <tzimmermann@suse.de>, David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>, 
	Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>, 
	Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
	Marek Szyprowski <m.szyprowski@samsung.com>, linux-riscv@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-pm@vger.kernel.org, dri-devel@lists.freedesktop.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Jun 3, 2025 at 8:24=E2=80=AFPM Michal Wilczynski
<m.wilczynski@samsung.com> wrote:
> >
> > Agreed. And as far as implementation goes, you can have the same
> > driver be a PM domain AND pwrseq provider. It just has to bind to the
> > device node that represents an actual component, not a made-up
> > "convenience" node.
>
> Sure - this can be done using existing AON node.
>
> To keep the pwrseq code organized in drivers/power/sequencing/, a
> similar approach to our th1520-pd driver interfacing with the AON
> firmware library (drivers/firmware/thead,th1520-aon.c) could work.
>
> The idea would be to treat code like pwrseq-thead-aon.c (changed from a
> current pwrseq-thead-gpu.c) as a library. It would export its necessary
> functions (e.g., for specific sequence init/deinit steps) using
> EXPORT_SYMBOL_GPL. The main AON driver would then call these to provide
> the pwrseq functionality.
>
> This will introduce a compile-time dependency, as expected.
>
> An alternative would be to keep the driver in drivers/power/sequencing/
> as a platform driver and start it up using, for example, an auxiliary
> bus. This is similar to what the JH7110 clock driver
> (drivers/clk/starfive/clk-starfive-jh7110-sys.c) is doing with a reset
> driver. This could offer a cleaner separation of roles if that's
> preferred.
>
> Please let me know which way would be preferred.

I forgot the auxiliary bus is a thing. Yeah, definitely use that, it's
more elegant than a library function IMO.

Bart

