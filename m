Return-Path: <devicetree+bounces-179332-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id D6E99ABFADA
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 18:10:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 098A67BD0FB
	for <lists+devicetree@lfdr.de>; Wed, 21 May 2025 15:59:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7492821D599;
	Wed, 21 May 2025 15:51:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="Vz/X0YFA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36089215193
	for <devicetree@vger.kernel.org>; Wed, 21 May 2025 15:51:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747842692; cv=none; b=qCb5w4q+Q1pkF8pjTwO134eVCnSh+NTDYqTj2AAIzn75GG1d6drkBFCMY/Uvk4P2RPwSkjnwTQBNHan/IVq+e/kGBsQISVQDEYnl09ci2FJ6gt9CNDKgDsxo2JPJqQx33r3naXe2UyFzxUyJ5Mue7Nc5Z8Ajw2nLeM5NlGhPMf0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747842692; c=relaxed/simple;
	bh=eiAaBv74i/CT4/xN4zsTzuWn2wgfVrrhiK3KxXjzMyI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Ing5Y8F3jsrHBpT6D/58z1EzIuPRWhSJ4w0g2MRks/BsnA+ZfuFlYSZ1/CNIiVuybqc10Cc7FGnz7YYxwrSS7+IZyWYwVCAkuakEBeKcYe/J2DnpxSmuIaOj+58r8NAG13UiMcV2W+gQ1hw8iVo0WdaO/sVsP80DISp9GHozKOk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=Vz/X0YFA; arc=none smtp.client-ip=209.85.128.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-442ccf0e1b3so86526945e9.3
        for <devicetree@vger.kernel.org>; Wed, 21 May 2025 08:51:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1747842687; x=1748447487; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ALPXDBC4VOnQSYjOJhu8mMUA1ahkHYVduSlJiXRjoA0=;
        b=Vz/X0YFA38kM3Te963deqxknMXrC/VK3KEcq+vZAVDG9boXKvUqlLLMT/HzpAZ2NfT
         hjDUY6153XRPOeRiQfBV4o6xPxkN/M/bUft4X/j1pgSLhgiKkm2guZGiwwKR2hayq3vH
         7v3qujJorr+cmxoq6/s01+BBvJlxWre5buBsGJyuvXOTuUYPgotdX7kH5xqoSEJ+HXSI
         6/rCnqS05PpHCYHw2YZY1XVOF5thUd49clsgIMiIpVqno/wcHaVOzilFtVXwaeVH4uTC
         ekrM3Lxb+qHLTA3OWBEP3wYgmyLXeGkpuHMp8d/hL597kLX75zSRiDs7yZ9CrK0OZ5RA
         RzIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1747842687; x=1748447487;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ALPXDBC4VOnQSYjOJhu8mMUA1ahkHYVduSlJiXRjoA0=;
        b=uvJqJilUN6i5NAfrkSOdrlZV8qOvVTuyUt19BYI+E1WFFCJ0NZfyMcKCo7wXItY2Gs
         XRBQGkP3iCSlvpteyqwWlyUaIn85fQt1Ir2N8kvmGYVThNYQjt1t7h+zwtFWO/Qp/6zP
         c/gpjeCeM41fhZNz1VKPLya0sR2SnSy2R2b2uAUTzqApI3bWUbwLCCagJ+aBfMm7cWCB
         JzCvpCOjzkwRVO96AiY+X7luUR/6RMdUz9ctvYxiQK8YzcZw/ViNKgHjbThzA/ICakUX
         Z82F/rGglJ2MnYdL/HLnAEIkMT0ckeMqR52uYR1G6FI5xFswbLsXE3V69baWqOai88rH
         d1Sg==
X-Forwarded-Encrypted: i=1; AJvYcCV8MK4gi8kgbgWCuTLgpQnf7L9ZNpHQX5J0oq/OeqCjwJkhmyB4NPBm791trlAVP4GNzzm+eN82iLtZ@vger.kernel.org
X-Gm-Message-State: AOJu0YwjpR25gApRfG6auAuEWoRzUVCVmluAXPse1GNcZXAmsw+CRx6V
	VJ+a8CHyAXrmWNetOE0a4hmh7CklbwMcMmLcVIAGXEy/OGRmjqcEvXcKFUGuKb7niCs=
X-Gm-Gg: ASbGncsr4tInud+2gQe6g0Ltumssc2DJ4UXKFVP3CjWc6s7cabWQVtCpwR+EuVahQIV
	on+/lc1i3CGIwqqd1F2NTQNbexxov/pT6IaFVKKqdl3Zl9L8QeZUicPsxznPx8E75AAp/F1CaYu
	5Dop3r9Vy8a4UVjOsNanNRr0Jmd/l02z7fiEkqGuCLURO97TE8FyEUyz+dDyEuZfvo8nFRjxO8D
	RVfEbAlIkQOzqfjIzE4em63VEo+aRGG5FkP1WLJpdPqp7DfrYWXGNnZ7Lnl6vRQ4gbUSgj0fc/Z
	4BKvOVhxd8CVM7HZ0Mnsy0ZQ035eqSx0wkSV84lxLRnSw4JAcr55
X-Google-Smtp-Source: AGHT+IEqZ+pvs2qnbXKikjx3bqPhev0Cos2vwclP7j26sP/JdZ5sUoTbb2O4Vt1gGh0WRqouqxSmSw==
X-Received: by 2002:a05:600c:3b94:b0:43c:f63c:babb with SMTP id 5b1f17b1804b1-442fd60a517mr194344195e9.1.1747842687246;
        Wed, 21 May 2025 08:51:27 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:b545:3055:5b24:d6c3])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-447f38145eesm72488205e9.26.2025.05.21.08.51.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 May 2025 08:51:26 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	Stefan Agner <stefan@agner.ch>,
	Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Haibo Chen <haibo.chen@nxp.com>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	peng.fan@nxp.com,
	wahrenst@gmx.net,
	conor@kernel.org,
	Frank Li <Frank.Li@nxp.com>
Subject: Re: (subset) [PATCH v3 0/3] Add 'ngpios' and 'gpio-reserved-ranges' for vf610-gpio driver
Date: Wed, 21 May 2025 17:51:25 +0200
Message-ID: <174784268330.124259.6614015290533617892.b4-ty@linaro.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250520-gpio-dts-v3-0-04771c6cf325@nxp.com>
References: <20250520-gpio-dts-v3-0-04771c6cf325@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


On Tue, 20 May 2025 11:46:11 +0800, Haibo Chen wrote:
> Not all GPIO ports have 32 pads, so add 'ngpios' property to specify
> the number. This can save some memory when alloc bitmap for GPIO,
> besides GPIO tools like gpioinfo will show the correct information.
> 
> Some GPIO ports even more special, e.g. GPIO7 on imx94, it only support
> IO0~IO9 and IO16~IO27, so add 'gpio-reserved-ranges' property.
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: gpio: vf610: add ngpios and gpio-reserved-ranges
      https://git.kernel.org/brgl/linux/c/4e9d73034196ac8ab496bb47583197b36ba13327

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

