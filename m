Return-Path: <devicetree+bounces-45687-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 565A3862B84
	for <lists+devicetree@lfdr.de>; Sun, 25 Feb 2024 17:11:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 51D26B215C7
	for <lists+devicetree@lfdr.de>; Sun, 25 Feb 2024 16:11:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0BF1175B1;
	Sun, 25 Feb 2024 16:11:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="gsg9e3bc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A78DF18645
	for <devicetree@vger.kernel.org>; Sun, 25 Feb 2024 16:10:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708877460; cv=none; b=pVD217lHh2hQ6/DL9T2VrvfFFP0m0HCrlEd0t3wnydxtiIcACrrM3W7Z7HoLUMEYKJMLyv5cgVFoeznhMnvttDJpy8sbu4J+frLnSKIG71i/QF0cuWcIlVLzLtZCXdkvhfQy322P9ObLkqF+8/KKXrTVH+6LgsPCyRw4unYTWwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708877460; c=relaxed/simple;
	bh=xSH+YB7t+3pdc8pXNR8f/jgF75lBsNqAWWrei3EbdTc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=gtWhOr+jdKyGZVb8Qk3INwQ3ZO11lXICkKbXANSQ+ND3zFv2M69lm1tWt/58m8ru1u6XgTxzZLJJc9G+BcRbEw0C380ltQIcr+2/GKDOUff7dTF9DSKCCppEcWDJJE82Fh5WNrcbiPtIfSOwOcENhHX4UX2u7OHNyREtN+jtL5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=gsg9e3bc; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2d269b2ff48so24558951fa.3
        for <devicetree@vger.kernel.org>; Sun, 25 Feb 2024 08:10:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1708877457; x=1709482257; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Gwy9vyyCnZwGdt6lVtjOy3+PH4iIn9f2qsNf+7CIDLM=;
        b=gsg9e3bcBeM3GErg6f2g1mX4Lj5uGlZZGvoXEeiCsS5dzMIrJpw5LWXWgZudFqkoW2
         4HiNUUSMzoIqwp6K+azdbTCm7/ksLRJjPaH3SI07z5+0lS/AWaxblL6iff4q/id7bZ5u
         OcyQXVGq8+x+WH/SJtk5Qmtl4zL2qmYtpycQ0ZmZiFjKb8pe4tbqm3YUhM56pTBo0FFj
         JiRmmLV1yKeODPap1TdkTGaq3mhkfUZwqz+QoKQKxoQyfaTEnoGRcm3NTx/rEcAfrDYy
         zMcZWUSF9Z3262VRFAT/cHbZ7fEgP96aLWqLPBWvq2u3euS0QKAgpHM0iprLEl8amrjc
         L2uA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1708877457; x=1709482257;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Gwy9vyyCnZwGdt6lVtjOy3+PH4iIn9f2qsNf+7CIDLM=;
        b=sZUPybU614IycAmyxdzxHBZCGYFq7F9Nf8jotwB5/YLiIr2KZxS94fnhYubjPF13rN
         WVZauqmASOyO/jEQ6OJmukkMOrRG4j3XbTYwaCKFXDswBKScF4d0KpNnlAoBHvL18zNY
         xftc9Xkivdrht/QBNlbmQi/k8wTdXXOyINfG7vWTs6pHP8UT8C5kj+sTi0jLQkFrMjlk
         S+OR+9TqZeBTRQ50JJwtfNYxlPIY+htoRXk6SnSHfY8204xrHU+hyuHKedp4LKE7IN5L
         7iYBpAcmNQRdpeGmKQjPYlifITQafHxo9LK2oka4LCTbR40jJOSPBjJUmdA0Xs8IENty
         2u2g==
X-Forwarded-Encrypted: i=1; AJvYcCXOKWdKPmdFPnE0oHvsm/LGDKWBgDK00+AXoEe6rjLU58N7X5ufz7esRIY5RWC/Ao3pCqTCLABhrA4ZSmMMNo4GJF1U3Rh/8mus+g==
X-Gm-Message-State: AOJu0YxEgmX/TKxkEAyV6hNzBJOA4wjrD0CcQrCWF8PxLeVEitQFkNov
	LBcTnkWSmIMNOw64OPLb9P+eG++25MTb/zEpi2UThYkN0VKwb4jZJfybjDZCKCQ=
X-Google-Smtp-Source: AGHT+IG8/ptAobua30//y2+R96EYFI741EQSKAHAi8ZfiArwF+v21fcfv5qDmbPTyXrvQSKw8DPEzw==
X-Received: by 2002:a2e:868e:0:b0:2d2:79c8:838e with SMTP id l14-20020a2e868e000000b002d279c8838emr2549906lji.40.1708877457033;
        Sun, 25 Feb 2024 08:10:57 -0800 (PST)
Received: from [127.0.1.1] ([178.197.222.116])
        by smtp.gmail.com with ESMTPSA id n21-20020a2e7215000000b002d2697570fcsm579184ljc.93.2024.02.25.08.10.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Feb 2024 08:10:56 -0800 (PST)
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
In-Reply-To: <20240224202053.25313-5-semen.protsenko@linaro.org>
References: <20240224202053.25313-1-semen.protsenko@linaro.org>
 <20240224202053.25313-5-semen.protsenko@linaro.org>
Subject: Re: (subset) [PATCH v3 04/15] clk: samsung: Reduce params count in
 exynos_register_cpu_clock()
Message-Id: <170887745504.215710.7797838794747602399.b4-ty@linaro.org>
Date: Sun, 25 Feb 2024 17:10:55 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.4


On Sat, 24 Feb 2024 14:20:42 -0600, Sam Protsenko wrote:
> Pass CPU clock data structure to exynos_register_cpu_clock() instead of
> passing its fields separately there. That simplifies the signature of
> exynos_register_cpu_clock() and makes it easier to add more fields to
> struct samsung_cpu_clock later. This style follows the example of
> samsung_clk_register_pll().
> 
> No functional change.
> 
> [...]

Applied, thanks!

[04/15] clk: samsung: Reduce params count in exynos_register_cpu_clock()
        https://git.kernel.org/krzk/linux/c/84d42803e4f163b1b6cb4ae05d91af693a1985c2

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


