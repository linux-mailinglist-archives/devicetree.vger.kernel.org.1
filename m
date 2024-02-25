Return-Path: <devicetree+bounces-45691-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9E0DC862B93
	for <lists+devicetree@lfdr.de>; Sun, 25 Feb 2024 17:13:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CFCDF1C20E01
	for <lists+devicetree@lfdr.de>; Sun, 25 Feb 2024 16:12:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9CFA11BDE1;
	Sun, 25 Feb 2024 16:11:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="i9YbAza+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D8F121BDC3
	for <devicetree@vger.kernel.org>; Sun, 25 Feb 2024 16:11:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708877469; cv=none; b=TMEdF2mYVNB7JEmtkqvpFLuAwPVJm+yDWP5B2v4aRPP+d4kof+M0u7IcTtnnTIRPKtiFWjX/18CVwQGoGEu2T1Jx+qZRsXDjfvT5iK9S4IBGF59XNn5XODq5CA8ycwAikh7Nk1NWMd0qJFTB1uvBGUThdIBgSbK2d7eDWsFLNvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708877469; c=relaxed/simple;
	bh=OImZzxRqWq0Hy8uoUc99i+uWNHocpXLxx05b2lbOmTU=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=ja4LPvx+PpodIfLwnTexvO5ZhHV8b+ypP58a2hngrly64m+0fPrwbPHn/G/FTSkvLwUiCCghi1WaI6cTN4bN2TBXcBiazqgWN6qteHDjnbo9FsUOSHukY7Ugx6a9APf/fW7wO92T7t0bd8FkWaqGrYetxspsHBz9nYHUq+OT39o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=i9YbAza+; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2d23a22233fso21394701fa.2
        for <devicetree@vger.kernel.org>; Sun, 25 Feb 2024 08:11:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708877466; x=1709482266; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=VsW7anGeVardtQxgCdo5zUJ2yaqlHTpbcfofD71oKhA=;
        b=i9YbAza+B9aCz5NifqtillHHqF91M4BPTiYkBRn45hY1zTPWBOyU6y5RBobWe4SBnX
         4mDjrfKbToeTBtXO+PyD7YYxRmdFOmPKPReAjsev+i7grNmSdIk/vVMJRKhDK6I5UINV
         LLcAKbLfDtUKp26sqUjvbIlrOEg+a+wc//QfwJcOLyeCVDesQsIHOYgyVsMSHmUluYVl
         8ArkHd54ksLEHlBYmqvSOYPCaHsh4UiH3cvzo3tZo4AyNlHKFl0d/4xJf7oGyWzQmx2t
         NhX95DE1h+io3RIii72161kAWoGDN/9qU+QaBBdTCD4Z6LXQnZUpIyHn3h7ZmWL+D/Lv
         LUOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708877466; x=1709482266;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VsW7anGeVardtQxgCdo5zUJ2yaqlHTpbcfofD71oKhA=;
        b=R12pZbzA0JmOqsSgd9jNlfPMHrVVD1jHfkTjJCooFA9oKioOfQuKUg9o01GgDLI5WA
         nGx7LYjj8Mj3OVz1ePWAx3Vst3Smps/lKgY7PKEaa8D3YB+Rp7PSoBEC9KJND8U0XIP8
         3fTZcnGBVUQTdpc1k+nuPpFDHMDT1ewd8t8d3f9s4JJy33AMUdfDPoU5wq1eKcKt30Cm
         imowhsCs9TmeUqAidr+vHAW8Ck43SJnYoyTo2CZ6/l4FzthdvL5BI6SbM5Kw9sCIwaB6
         bUEsBt053lILaHkkEktCkpgudBms9OIiLoeMAv7n7jwj9p5ouP+vrT9P8ns4UecTJgGC
         UNEg==
X-Forwarded-Encrypted: i=1; AJvYcCUwm2ise6GxOAGHe+dvfE68OKmLT73XILY1ChV8uFZPCTSJEIWD0HeZ4gY2q+bgiExt1X9WuQ/dhkwb3qDsfsoNV5RxenCjwfi7TQ==
X-Gm-Message-State: AOJu0YyuTQ8khnuld2BTITW/dVAtYemwogHrXx+UIKCFf8ujmZUn9Fo/
	aqDbGwTvpV5H3RgVkB37lC/68PdKxcdGISeWOCzmTDjinkXz3TsvRwtOtD/J7zM=
X-Google-Smtp-Source: AGHT+IEW8O2yVnz/fwk+kMGucyrdKIQTzJkHrhcvzL/XtHdX6aAOYUcy5nGAgVP81BMsmp0W7O26sw==
X-Received: by 2002:a05:651c:124b:b0:2d2:5126:5a51 with SMTP id h11-20020a05651c124b00b002d251265a51mr2426405ljh.19.1708877466334;
        Sun, 25 Feb 2024 08:11:06 -0800 (PST)
Received: from [127.0.1.1] ([178.197.222.116])
        by smtp.gmail.com with ESMTPSA id n21-20020a2e7215000000b002d2697570fcsm579184ljc.93.2024.02.25.08.11.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Feb 2024 08:11:05 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, 
 Sam Protsenko <semen.protsenko@linaro.org>
Cc: Alim Akhtar <alim.akhtar@samsung.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Tomasz Figa <tomasz.figa@gmail.com>, 
 linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20240224202053.25313-9-semen.protsenko@linaro.org>
References: <20240224202053.25313-1-semen.protsenko@linaro.org>
 <20240224202053.25313-9-semen.protsenko@linaro.org>
Subject: Re: (subset) [PATCH v3 08/15] clk: samsung: Pass register layout
 type explicitly to CLK_CPU()
Message-Id: <170887746389.215710.4982831598538068214.b4-ty@linaro.org>
Date: Sun, 25 Feb 2024 17:11:03 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.4


On Sat, 24 Feb 2024 14:20:46 -0600, Sam Protsenko wrote:
> Use a dedicated enum field to explicitly specify which register layout
> should be used for the CPU clock, instead of passing it as a bit flag.
> This way it would be possible to keep the chip-specific data in some
> array, where each chip structure could be accessed by its corresponding
> layout index. It prepares clk-cpu.c for adding new chips support, which
> might have different data for different CPU clusters.
> 
> [...]

Applied, thanks!

[08/15] clk: samsung: Pass register layout type explicitly to CLK_CPU()
        https://git.kernel.org/krzk/linux/c/6d7d203ca6914e84166a00d0f0bdfda6cbce76a7

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


