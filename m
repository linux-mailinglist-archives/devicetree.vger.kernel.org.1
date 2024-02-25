Return-Path: <devicetree+bounces-45695-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id ECAE0862BA3
	for <lists+devicetree@lfdr.de>; Sun, 25 Feb 2024 17:13:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A216F1F213DB
	for <lists+devicetree@lfdr.de>; Sun, 25 Feb 2024 16:13:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EB7F21CD06;
	Sun, 25 Feb 2024 16:11:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LTf1wnzr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D6A91BDD0
	for <devicetree@vger.kernel.org>; Sun, 25 Feb 2024 16:11:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708877479; cv=none; b=AxNtde8TUNb4qjZy4L/fh6e1q0qPWrIs+Hg5E/1CUqvmPiW6DVG08YbntnwL/1EXcuoK0Ll109MMR0f/5aO0OmY+XyQY1u28AauMz5zolNbFQZk+imDcJRwokLTgAckokvVtUGQ4oUyzs1muGsWXBvkcT/iGEShU+o92NZxllcc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708877479; c=relaxed/simple;
	bh=+Rw9cHF3zvvHudVBxpfd85hAjXfCOlv2DWgdevEOxfg=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=hpmXvlSqAci73LRjmRdGrVh59vFMr7s9ZxooHnMlKZD0sgZLFAO1mIKDVVxrbM/XZNhDuYqO08T+MHPhTSYvRci9W+VQ5ndPpRSHFuMhvbx1iFQmW/vuNTnwySWUNyhfJe7pP0Vd6DLNz1rJ6RDoOUiLupc/HQ7wa6pFvJhZmG4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LTf1wnzr; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2d09cf00214so37503801fa.0
        for <devicetree@vger.kernel.org>; Sun, 25 Feb 2024 08:11:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708877474; x=1709482274; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=21UrOfJ5QkeVV5ZEwy7jUJphKXCc27WnFaTIldWYtUM=;
        b=LTf1wnzrq/0VsYabZgzYhfPbq49o74EpTRlgvJlcAUk5q+zY18C68HAysn7N+H4pxK
         EQUnQCdTyXDZ8UwUtvQtxQVMN3aROtTyV2CjzYQ0kZXHjtdc3iDkTZXiiCPnGJ25pbgs
         AJx9pITlYb4U7MR/EPH7/y2SOon9y3fC9/OPX4zKaL7604jQaskH3p8J7EUVjr/C1CL2
         LIoHoMMXa4fMV9X3iX7Pe0x/Wlf8rybK9oMKEBvv66bEbCaQeTfciA+raK9/3llfmuln
         xC06HoyQq87ZIIj6yA5qah4bDF4D4rcaYx9O4c3HLZEPZ6RAnnmEcie5RBgJy+hWBhVK
         bcpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708877474; x=1709482274;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=21UrOfJ5QkeVV5ZEwy7jUJphKXCc27WnFaTIldWYtUM=;
        b=sPbxHNvHq16ZEjWfNpSvOACvzn/BnnleH3BY6ez9OQPdqICh4zeHQPn1Is+Coyv4ki
         zF9myJfIhXoZCCjtAbuaq0RFSSsIDUuED+oEf1QifzTgCFQ8sF2sHqG/Ppr6NWRjIv8X
         Q0kR6bDwcujK1B+ghzTpmuuo3w6cCMDhQn1PsX4cfI75WgIhyDYO/QmdTodVBnSxnXFb
         e/iRSkbsdW9Xvn2YaCy4m9Ig7BylkQOl/Xc2nEQQ6qwHG8MEGeJ3jgDlTZ1EEjzsRnnJ
         m7k8KZkzLTWO3LXY40aKYgbvT1OkaOI14znnji5P3Y4zpmGI33/u+uRtSknr5hzraXgy
         I/EA==
X-Forwarded-Encrypted: i=1; AJvYcCUqTk3y5LHUVZDUxESnscBUnd/Ztl0T/vGHEa4N+VK9TldM1RQhSwbHNS/pxaPD11QpycyjBnuCm71WXj/FjhToujYoMgF20ftMYQ==
X-Gm-Message-State: AOJu0YwdXIzbkHRPdghQPN+zTPpryVPVWBBefGZREpbNU9lx/78TmfQn
	BkigfMUZkW/xCW8OH1oPmucUiFAWbGBbpa/JxuN6QeO6FsLkTRvbERCGPloloAI=
X-Google-Smtp-Source: AGHT+IEZ2nGwiR9Zs0FXNbvtOlq7ks4iteoQaOvCoZGxw0nEmtC/oNj0/clKB7TC/Yr6DpFDxLapGg==
X-Received: by 2002:a2e:990b:0:b0:2d2:7164:c6ba with SMTP id v11-20020a2e990b000000b002d27164c6bamr2529804lji.43.1708877474757;
        Sun, 25 Feb 2024 08:11:14 -0800 (PST)
Received: from [127.0.1.1] ([178.197.222.116])
        by smtp.gmail.com with ESMTPSA id n21-20020a2e7215000000b002d2697570fcsm579184ljc.93.2024.02.25.08.11.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Feb 2024 08:11:14 -0800 (PST)
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
In-Reply-To: <20240224202053.25313-13-semen.protsenko@linaro.org>
References: <20240224202053.25313-1-semen.protsenko@linaro.org>
 <20240224202053.25313-13-semen.protsenko@linaro.org>
Subject: Re: (subset) [PATCH v3 12/15] clk: samsung: Add CPU clock support
 for Exynos850
Message-Id: <170887747270.215710.14391018888369319254.b4-ty@linaro.org>
Date: Sun, 25 Feb 2024 17:11:12 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.4


On Sat, 24 Feb 2024 14:20:50 -0600, Sam Protsenko wrote:
> Implement CPU clock control for Exynos850 SoC. It follows the same
> procedure which is already implemented for other SoCs in clk-cpu.c:
> 
> 1. Set the correct rate for the alternate parent (if needed) before
>    switching to use it as the CPU clock
> 2. Switch to the alternate parent, so the CPU continues to get clocked
>    while the PLL is being re-configured
> 3. Adjust the dividers for the CPU related buses (ACLK, ATCLK, etc)
> 4. Re-configure the PLL for the new CPU clock rate. It's done
>    automatically, as the CPU clock rate change propagates to the PLL
>    clock, because the CPU clock has CLK_SET_RATE_PARENT flag set in
>    exynos_register_cpu_clock()
> 5. Once the PLL is locked, set it back as the CPU clock source
> 6. Set alternate parent clock rate back to max speed
> 
> [...]

Applied, thanks!

[12/15] clk: samsung: Add CPU clock support for Exynos850
        https://git.kernel.org/krzk/linux/c/61f4399c74d0677ee64e42f7b8d4ab01ee39de45

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


