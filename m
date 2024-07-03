Return-Path: <devicetree+bounces-82727-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 61CAE9257B3
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2024 12:02:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id F076CB24B25
	for <lists+devicetree@lfdr.de>; Wed,  3 Jul 2024 10:02:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3A0CE13B5AD;
	Wed,  3 Jul 2024 10:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b="hLK23n0o"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f46.google.com (mail-lf1-f46.google.com [209.85.167.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7AAC13D8B5
	for <devicetree@vger.kernel.org>; Wed,  3 Jul 2024 10:02:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720000943; cv=none; b=m+nzCMO1NXQ6wa5rhiCSUjhtMy9oBZbFc42VnSQkGlsaCmfUg5CojN1msXK8Getj35qSWK3/PEZoLL5yZDUfidXap/62qjmYwUdAxNJgCQX3JX1VM8peYp2SfPrn6+82h8aGwkDz33V4H54e476azw6kzi5amn+9mXZriJnOBDw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720000943; c=relaxed/simple;
	bh=2BueQlBHNUIUsB9Kn2OPvhoSOi/prFH4uiBvlAu1/5A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=DyxRXv2WpOhrWGA6/SMkEQ1bAqIVayRTAALyUxbYKciIDj00H2OselLM0uVebHbO7FaUrH6AermbaoKMdSei2HgTMe1raMCk15pwqweB9p4LsRfmXjeDkLhhrPTdKRbAmYap310KJwgckiCVVtew/arItfadg2B+A0cOhAnVGdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl; spf=none smtp.mailfrom=bgdev.pl; dkim=pass (2048-bit key) header.d=bgdev-pl.20230601.gappssmtp.com header.i=@bgdev-pl.20230601.gappssmtp.com header.b=hLK23n0o; arc=none smtp.client-ip=209.85.167.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=bgdev.pl
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=bgdev.pl
Received: by mail-lf1-f46.google.com with SMTP id 2adb3069b0e04-52cdf9f934fso5417942e87.1
        for <devicetree@vger.kernel.org>; Wed, 03 Jul 2024 03:02:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20230601.gappssmtp.com; s=20230601; t=1720000940; x=1720605740; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=oKXjwCiaLg72R2gJ/FT04OGaQAr4J9i9LzgGVlBH+qc=;
        b=hLK23n0onEk1CF3XTzyjr0MjReLqzOfhQzV04LBBRM74og0zmEdpLDvZuk+U4/w5XZ
         Y0UJpyuN0+3YeAukNLedAYHHZ532ImpNIXN1GK8wxUsUK7n8J39tct1yl22o1HFFHmgM
         /OUZ3j6ymoH+FMuNPjhS+zn86aGGHhILS2XzPR/HRLdIrkvdvSj1QhPCw+4WzRhqmS4x
         uTooZFRIaym0Lat8YRHhsBpLdpsWXjPlCyAvJEEJ3K4Yryr5Jljt5vy7DnDADsFgaGPD
         BhhKn2YE/Suq/bIbTzWt+W8axArnpgKlJXMCzESbPBXe5809qYTuoQtUhGZuMWilut1E
         8+qw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1720000940; x=1720605740;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oKXjwCiaLg72R2gJ/FT04OGaQAr4J9i9LzgGVlBH+qc=;
        b=Us/bTqpf1hqpeUeqTNfNeaU5ERv1rKKJIPdQvSmBbeCbhZHB090n6isX3ajgUsTU9k
         nN3nB87FizoIPCayIKdYM6HFN4I1IsEFRw+jEy9tQP20u1bxvI09Z7NtLYTMgSNOK4rY
         p/V6CPL8t8N26zK9zjdzXaRAJj/tWwiT2oh+/td6puw653cJejU8hIMGPC60ABWPbmPb
         PfkzIBLlF6ZXQ5oMWNUukJ5sWo+DtFZUosVtvJWyEwxDngR8Z/yWgzpMNXBXuv6Vwf+m
         BkOWMVpQFLwHuFmHjXuKIgww6IpabY3DMe4p93yYzhDAwIdw3QzEF9AwJp5/Au/FUH+E
         y+Jw==
X-Forwarded-Encrypted: i=1; AJvYcCXdrml4L+ohXD/H4q1oi1E6gPFt+XSqh9hJNIBPG9BQThqVY8u/KnyGKXCj/XSe+Za2Cjugp7DKrhsIpw9r7Glbt3/BMRXjmJbvYQ==
X-Gm-Message-State: AOJu0YwPPEg31MmHUCONTzqoJrcF1oY1RNnFpDFx8pl9pW0fe26OYiTK
	0knhv30wm9f3g+/3BP2/LUcI6PL3ROs5R1L3hYs6TMF5C3DV4i6lO8SA15IlP2M=
X-Google-Smtp-Source: AGHT+IHzaRxDw+0xOP288QMyiqj94os0mlDtdORAYbbCky+tos45ZKFz/8bNjlRpBD4147ufyiEMjg==
X-Received: by 2002:a05:6512:b92:b0:52e:7de3:64fa with SMTP id 2adb3069b0e04-52e826feba4mr7443996e87.46.1720000939825;
        Wed, 03 Jul 2024 03:02:19 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:dc:7e00:c37f:195e:538f:bf06])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3675a0d8df0sm15560651f8f.29.2024.07.03.03.02.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Jul 2024 03:02:19 -0700 (PDT)
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
Subject: Re: [PATCH 1/1] dt-bindings: gpio: fsl,qoriq-gpio: Add compatible string fsl,ls1046a-gpio
Date: Wed,  3 Jul 2024 12:02:17 +0200
Message-ID: <172000093537.12215.11059064969197754180.b4-ty@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20240702201724.96681-1-Frank.Li@nxp.com>
References: <20240702201724.96681-1-Frank.Li@nxp.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit

From: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>


On Tue, 02 Jul 2024 16:17:24 -0400, Frank Li wrote:
> Add compatible string for chip ls1046 to fix below warning.
> arch/arm64/boot/dts/freescale/fsl-ls1046a-frwy.dtb: /soc/gpio@2300000: failed to match any schema with compatible: ['fsl,ls1046a-gpio', 'fsl,qoriq-gpio']
> 
> 

Applied, thanks!

[1/1] dt-bindings: gpio: fsl,qoriq-gpio: Add compatible string fsl,ls1046a-gpio
      commit: f2e395629747e718a67b567cb84b49d14792b312

Best regards,
-- 
Bartosz Golaszewski <bartosz.golaszewski@linaro.org>

