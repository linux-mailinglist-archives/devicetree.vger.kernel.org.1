Return-Path: <devicetree+bounces-45686-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DAEA4862B80
	for <lists+devicetree@lfdr.de>; Sun, 25 Feb 2024 17:11:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 797961F218FC
	for <lists+devicetree@lfdr.de>; Sun, 25 Feb 2024 16:11:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 90B0E18637;
	Sun, 25 Feb 2024 16:10:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ZQtRTzY8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93D5817BBB
	for <devicetree@vger.kernel.org>; Sun, 25 Feb 2024 16:10:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708877458; cv=none; b=WK+0XPTJxGdpX2MMjliHEBoXGMjZfCyYf3Q9LHY8gSd20PriTRxcPHF9iIoNOWnFUPkicRBgkfnYwkqIZVhy9TDYpB4qOjzg2QvIl/OcoJZ4FdkKM1tAEYjtcBl6Fqf51th7LJ34L1qHYLV9fAlI31lF4wrAjkR/rrk7KTgBhzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708877458; c=relaxed/simple;
	bh=TyHcB0dGMLo+vpH3FsETA6ho9nRIZUIMh3EY+giPVOs=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=d4LGYYunQl6NQZiFRG1+MZLrL2KWOFAHbzYGyALFjKotqoCw+JdE0bXYztG6QFaETPlC7TbaOfCa6XSjxoYf2QMn4NZnX9GaDOLQk36Q1CxXEA3YgaXdbibr3TadFGs4epT4dWRXHh+YmrmKE81dfZ+yqogyeQGLrPt/G1Tqgew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ZQtRTzY8; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2d21a68dd3bso31896251fa.1
        for <devicetree@vger.kernel.org>; Sun, 25 Feb 2024 08:10:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708877455; x=1709482255; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rsMTaBWSoQvKTw8PXqopEDazdmQVOYa6vIXgCYwTsVc=;
        b=ZQtRTzY8mTsPIYr84YWqHqS7EMycDuvjInlvaU+EGjyhCE6DyovHA18snZgVndwILj
         CQsaeGQZp1aEXBZLl0iXWPnwjZOYpY3LfOLA1NHpJ1Mj5OsnyQFlV0N2sNQrOU68WUs+
         vuz7bQhoW8HSTZw1cIPvQyoMnjBc6MZSbjELPRLj9tjYFGm1yJ5h4eSPigMQKInb79Tb
         b0SJr78adGNaJvbtXa7lMIX8PbB5SlhuHTbhbtuJgrbJzfIwqkDz0k7RmCEl5q52Rfkd
         uVtw064IHTocOwh5STcAaDUW3b6JX9J53/zJSwHFTRQBE/owiM4u69RNQOw8vOOuQ4Uq
         vs2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708877455; x=1709482255;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rsMTaBWSoQvKTw8PXqopEDazdmQVOYa6vIXgCYwTsVc=;
        b=VzxGQC3O1/HplMFqfK5yhy/c/TsPN//LE5Uz5LVKA6b1qgElt0IlzyQauHwO/AaYnh
         9lnEO+UUqWmY7+UN5wz07bF0gtp3Nsr3SmH4SIdJJkVjeJ9TQCX3DeGzHnwRQO//e5kl
         58VxEltFEST49xfORisQkKBGdDNRofXGryM/GxfiW1olkqCq+kMpAFyaiEwYj2OrlyIQ
         mC0C8KbXRkrg+3ykybGjr0x18Wp3J+NRywUqUsLanVyT7fib0bt/TaH1qNKnxo66XvbR
         2YOkrpViLKLnnP2iZTlnTCWZXKyizcYTR/C3BrQdZqGNSH7Zs1kfKhhM3ICb/F28C0eD
         hh0A==
X-Forwarded-Encrypted: i=1; AJvYcCUD3wEc8nxs+TuoIulDpj9F7Z/Oodrf7xRMOGvF6oiz+42wCam/69MKmEcH1t6wVa8dIYEEeLyHZbt0UGbqU1TRhg7VwVPWoBb2GA==
X-Gm-Message-State: AOJu0Yx+jDVIXa9aqjNBO3tEf/u2wC7TjHLJyOpjO2iN6L1twdU+/6M7
	aP+2GfR+EBstncfWGrAyS0KGP6G6GoiKRJvk5nCyFyFG49ujKRK7yh3kLzRBCic=
X-Google-Smtp-Source: AGHT+IEwJ32mFqsaDiozmjM7M94ym1LusN0fZdXuSF4NZ0A15Cye/UItZ7bGtwk7w9CIqCAFilxLIg==
X-Received: by 2002:a2e:8515:0:b0:2d2:215e:157c with SMTP id j21-20020a2e8515000000b002d2215e157cmr2729011lji.7.1708877454974;
        Sun, 25 Feb 2024 08:10:54 -0800 (PST)
Received: from [127.0.1.1] ([178.197.222.116])
        by smtp.gmail.com with ESMTPSA id n21-20020a2e7215000000b002d2697570fcsm579184ljc.93.2024.02.25.08.10.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Feb 2024 08:10:54 -0800 (PST)
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
In-Reply-To: <20240224202053.25313-4-semen.protsenko@linaro.org>
References: <20240224202053.25313-1-semen.protsenko@linaro.org>
 <20240224202053.25313-4-semen.protsenko@linaro.org>
Subject: Re: (subset) [PATCH v3 03/15] clk: samsung: Pull struct
 exynos_cpuclk into clk-cpu.c
Message-Id: <170887745282.215710.3873782882089335493.b4-ty@linaro.org>
Date: Sun, 25 Feb 2024 17:10:52 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.4


On Sat, 24 Feb 2024 14:20:41 -0600, Sam Protsenko wrote:
> Reduce the scope of struct exynos_cpuclk, as it's only used in clk-cpu.c
> internally. All drivers using clk-pll.h already include clk.h as well,
> so this change doesn't break anything.
> 
> No functional change.
> 
> 
> [...]

Applied, thanks!

[03/15] clk: samsung: Pull struct exynos_cpuclk into clk-cpu.c
        https://git.kernel.org/krzk/linux/c/a36bda74ede4c33dfa95482b56058f13fb64a426

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


