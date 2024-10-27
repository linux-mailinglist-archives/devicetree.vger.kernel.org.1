Return-Path: <devicetree+bounces-116174-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 392749B2014
	for <lists+devicetree@lfdr.de>; Sun, 27 Oct 2024 21:01:06 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 131C01C20AE5
	for <lists+devicetree@lfdr.de>; Sun, 27 Oct 2024 20:01:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CC64188012;
	Sun, 27 Oct 2024 20:00:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="i+Y6MUER"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D5AD17DFEB
	for <devicetree@vger.kernel.org>; Sun, 27 Oct 2024 20:00:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730059213; cv=none; b=DEViYTRSBJ9NFAayIJpxdfkFH/EFMTDGQrOtB6YgaNlAcfgpMRCerEJc6dGvhWq3P9e1DYwic5pWuKGMfzbPXoysEcLuaGYQ/pl3pQIu1Cwp6TPSSEJ7G6Dx8RmKs7qcR1kNVWl4wL3JDK1B8HI+tt9lu6x29X/0PWntagUMzs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730059213; c=relaxed/simple;
	bh=Oisesr/Ba1yy4663sg86B9QqB9EYXZllcsyos0tWm8s=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=NGymYnVa4/DNASo4EQd99zRHfA/q5XiGMjRp9yr0r4qczJ0y0wggsx3NDw6npPbtJf7bz9Owg5B9bPbGhg9qjU91VStNmsawVd2uIhB3igsD31A9iLAk/8+EfYGUdebwLzwJnz1/cf3Q61a5cmZTpUxGgrYnFIYvOxcDrSJwKsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=i+Y6MUER; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4315549c4d5so4256705e9.0
        for <devicetree@vger.kernel.org>; Sun, 27 Oct 2024 13:00:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1730059209; x=1730664009; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=l85KdlkTAz5xadASW0LnnSxWZp9LJjbJpdAW1AcAw8M=;
        b=i+Y6MUERvoKaHDf2nAdJyDki1yjMp3kg5eDpEF2M3M0qkZ34qokdRbtDyE71GEbcWq
         NOehclVtChkClWNt4Ekj6zP07pbeVYdoDBiScEcsmSGrFNB/LfwQDeR643r7sHgUSVlg
         coxJGXCDQLrIzqYTQy2LNMeXr1BFgfVCcMrE3p2J9OqvySnvVVcOc0pMti4Wxj4a7kbi
         PKV8ZA8IdJajO1vt9khKZ1cJF0cHFQMdrjNVq/bbpNpyG2IC9Kw+rSgnZIOe+p4Fsiuw
         jcPXPt4LKLClEgE0KREDK3kBmxbSjTk9JgOAIeVMfJwuzGVmw0gRWRT7wdfLzwQXqzNV
         99hw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730059209; x=1730664009;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l85KdlkTAz5xadASW0LnnSxWZp9LJjbJpdAW1AcAw8M=;
        b=vCr2X+6kvJNgnbd/EBLGS1J4YLl/PyIPX/5lmFZtFYw/Fl1Ipg1JvaCBQkbht5kxk1
         nyR0iEZBnElkgEEAo5n86RGr4AZBSrnLriizgTPzuU2YrLFyFGf1rP9bPm9VWWP/yg05
         5I91UEtsV5twoygT+akJRPLe1BiYlgpFISDw1c5SiYFYz6hpukxFf1jUsLi2m5XKrYBk
         dVZNZK7uYqgXAfKZ82wgpXCj5zLPldiBXpEmbF81pDyXUju5qoINwHEDBtDU5kWtAH5F
         xfQ/tRD30Y8HL9ze6pxMHK9uQ+937/00B1HrWc9ADkyfMPUw8ShgIL3GPiQ2TRMriOON
         w+PA==
X-Gm-Message-State: AOJu0Yyv/Sa8smCAT/ZlP7FEbnD6xj+0V4G1hm71KlihBTf1kb1I/QwB
	O6NdRdpQrN1kemnhi2clXxSxZVWLrnGt+TGOXKE1WaUzV4He0v1ndcH249UuSUc=
X-Google-Smtp-Source: AGHT+IEmbj/P9TPMmqqzemyzz2y/YY9lE9cW6lfA7r2y8ypUokN9JN2GK7tIgbwhXjQBFs+E/KDZDg==
X-Received: by 2002:adf:c081:0:b0:37e:dad9:8ebc with SMTP id ffacd0b85a97d-380611c3f49mr1617106f8f.2.1730059209345;
        Sun, 27 Oct 2024 13:00:09 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.211.167])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38058b6f838sm7506639f8f.83.2024.10.27.13.00.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Oct 2024 13:00:07 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Lorenzo Pieralisi <lpieralisi@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Linus Walleij <linus.walleij@linaro.org>, 
 Tomasz Figa <tomasz.figa@gmail.com>, Will Deacon <will@kernel.org>, 
 Mark Rutland <mark.rutland@arm.com>, 
 Markuss Broks <markuss.broks@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzk@kernel.org>, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-gpio@vger.kernel.org, 
 Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>, 
 Maksym Holovach <nergzd@nergzd723.xyz>
In-Reply-To: <20241026-exynos9810-v3-10-b89de9441ea8@gmail.com>
References: <20241026-exynos9810-v3-0-b89de9441ea8@gmail.com>
 <20241026-exynos9810-v3-10-b89de9441ea8@gmail.com>
Subject: Re: (subset) [PATCH v3 10/10] arm64: dts: exynos: Add initial
 support for Samsung Galaxy S9 (SM-G960F)
Message-Id: <173005920628.11546.8542073762216918711.b4-ty@linaro.org>
Date: Sun, 27 Oct 2024 21:00:06 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Sat, 26 Oct 2024 23:32:41 +0300, Markuss Broks wrote:
> Samsung Galaxy S9 (SM-G960F), codenamed starlte, is a mobile phone
> released in 2017. It has 4GB of RAM, 64GB of UFS storage, Exynos9810
> SoC and 1440x2960 Super AMOLED display.
> 
> This initial device tree enables the framebuffer pre-initialised
> by bootloader and physical buttons of the device, with more support
> to come in the future.
> 
> [...]

Applied, thanks!

[10/10] arm64: dts: exynos: Add initial support for Samsung Galaxy S9 (SM-G960F)
        https://git.kernel.org/krzk/linux/c/229cf465b9f68db9af3f10b31d6a81b49a14f0e5

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


