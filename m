Return-Path: <devicetree+bounces-81204-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id AC31F91B99A
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 10:14:09 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6669A28325A
	for <lists+devicetree@lfdr.de>; Fri, 28 Jun 2024 08:14:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 02640146590;
	Fri, 28 Jun 2024 08:14:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="OZ7BZVkV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com [209.85.221.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94A7979F2
	for <devicetree@vger.kernel.org>; Fri, 28 Jun 2024 08:14:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719562447; cv=none; b=dqLFPGAFlEFeIefZlwlXR1/9ioCdkdrUExkt1/N2TQB+7lxSpsDlbBKj5B9ujmc9bMxyfZ9M5025MCem0Foida4ky7j8z/XDVUQDeWHki7SsPwrcfu/ttVzB8EdMrlujOw4mREATVATcKdheDExJdXkfYILFB5yJw0XJLr8MlaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719562447; c=relaxed/simple;
	bh=nqRVrVZ5iHTB+ps1/W7+ndXdI8MuJhemXqbN2y63NUc=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=HSGDJjuMqlwbzVQ7IDuUj8lgufhXhBV9F6R/T2gu1l4Qh2gOo0NyapxBZ+3KtiWM39BN8wc59++PJJ0J5zoa41Mvw3iPBUOi2623W6It09v8rmossX3LgTZHEthLMV2dYsT9O3OvXcp+/+krZKLNfaPS45MisdeedKAOpFHlIjY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=OZ7BZVkV; arc=none smtp.client-ip=209.85.221.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-wr1-f50.google.com with SMTP id ffacd0b85a97d-3627ef1fc07so240403f8f.3
        for <devicetree@vger.kernel.org>; Fri, 28 Jun 2024 01:14:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1719562445; x=1720167245; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=M+A2p+KZRH/8xvrbpyHuEUhzOc8IOFJevUwe6fDGuuE=;
        b=OZ7BZVkVWwOvMm/H/ywvPbjhfbJxOZNVB/vrrohsdOo+jUA66Rk1aht/Lke9Ml6HMh
         9Lh0U4EozX7mZwFplFdSM5E4S0C0wV+xgw9C8Iu7vvWtbrEeX2xeugxwTi8zVBeaF1Iz
         hh+nCyP3BbGEQ693Z7ghQBsMDN7n8iAi3zYs18BNQPPEYnKceFKJoMsqGMEDXP12p0FU
         wgvdccBGFcmCXtAauko4xYrttAWnYBQzmlwvQpmLZCvrhmnY3Rn1NeJs6l2/LY4Dp0CR
         nWftVEFeTOKDm/t3wV2KRkt+6B6gR0j+u4YKKkZrX9QdxHs62O5gonsa9q9Sw8YzKjvm
         jLgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1719562445; x=1720167245;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=M+A2p+KZRH/8xvrbpyHuEUhzOc8IOFJevUwe6fDGuuE=;
        b=UzY6nQJ2tsmGPgcL2gm9befwcYdmesVSrSwiWlGjPId3KnXAj0LlA9Ggrc2dqfvfEB
         kN/ghSmE1PWrCVGyIrJApbMTuq7PHLNobloggWcabJWkB7MJFZLb4pGVISPp+ASPvYUN
         bfdCId48AxpIemAIXlsCmPJBsqMwIuAHlDDNYrglGxIcs/XhASc7zodSN+XvH3F9JPxj
         4cEkmahvNfTVt47e8W85FjlwhYrJgEU/5ou9q6xvNCzcu7X7XXci5Kz78waDTms1BU5f
         S9qBnEX/4KIGwQIzAr10mo2Re5BaVv4c1hpNPTtijtRd7u+1Ql8KQ8ZhNHZkx8/hPk8A
         4gkQ==
X-Forwarded-Encrypted: i=1; AJvYcCVqzhGlgDGz889YvgBiXGSClMAVREJ7K4HmDgJ2a32sGw7z5WMvObrQXPpJ691aikSOTLIpXU6i1KFHNFd4Ma/kLHjWgCVHvB7N2Q==
X-Gm-Message-State: AOJu0YynKvMvpSt9MihmiiE2+oyyekPw1BAECmefwerWFL96KvkqG6ew
	2efgRLdfzfW0J9Rcs4n5Eg2FmJKrcWf7B3QADn7uSo+Eb/mdJEv3Htvi7I4J84c=
X-Google-Smtp-Source: AGHT+IGdgSQ/Loq0ddkVqf0l8lNw8JF9rgv9IPIxTPMHfTT2BIwjBV2OdOQ66kl/5H+IrO6I9TR51Q==
X-Received: by 2002:adf:fc0d:0:b0:355:143:b5f5 with SMTP id ffacd0b85a97d-366e96bf096mr9758192f8f.64.1719562444843;
        Fri, 28 Jun 2024 01:14:04 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:cb0e:590a:642a:e1f9])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3675a0fb92fsm1479113f8f.88.2024.06.28.01.14.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Jun 2024 01:14:04 -0700 (PDT)
From: Bartosz Golaszewski <brgl@bgdev.pl>
To: Linus Walleij <linus.walleij@linaro.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Frank Li <Frank.Li@nxp.com>
Cc: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	imx@lists.linux.dev
Subject: Re: [PATCH 1/1] dt-bindings: gpio: fsl,qoriq-gpio: add common property gpio-line-names
Date: Fri, 28 Jun 2024 10:14:03 +0200
Message-ID: <171956244055.25464.5584663942925200358.b4-ty@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240627202151.456812-1-Frank.Li@nxp.com>
References: <20240627202151.456812-1-Frank.Li@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


On Thu, 27 Jun 2024 16:21:51 -0400, Frank Li wrote:
> Add common gpio-line-names property for fsl,qoriq-gpio to fix below
> warning.
> 
> arch/arm64/boot/dts/freescale/fsl-ls1028a-kontron-kbox-a-230-ls.dtb: gpio@2300000: 'gpio-line-names' does not match any of the regexes: 'pinctrl-[0-9]+'
>         from schema $id: http://devicetree.org/schemas/gpio/fsl,qoriq-gpio.yaml
> 
> 
> [...]

Applied, thanks!

[1/1] dt-bindings: gpio: fsl,qoriq-gpio: add common property gpio-line-names
      commit: 3550b5db3af4d0ff7f2ad07367af6427534620f0

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

