Return-Path: <devicetree+bounces-125961-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BBFEA9DFC6F
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 09:53:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 82429281CB1
	for <lists+devicetree@lfdr.de>; Mon,  2 Dec 2024 08:53:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E25AC1F9F4B;
	Mon,  2 Dec 2024 08:53:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="uR5R1lug"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C7611F9AB9
	for <devicetree@vger.kernel.org>; Mon,  2 Dec 2024 08:53:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733129630; cv=none; b=FwImLLDyrRwTNqbq5IgvlZGboJasoAfFdtpdd8azRA22I4lpfRHKkWT7recDmmGSO+nDuyYH01XJiLncILkVrGeYaahLuhdCUolOKhc3xFXyY9YeMdOSbi8xleC6n5hxoeba9SAIZGnQ3xq8oofprMdBa/NccBuZQWehRNwpj+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733129630; c=relaxed/simple;
	bh=2i2om8Xr6XlWbPtkB4mQmhNxO61vqI/tBU/YM1EQwgQ=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=pttlvuam5P6kPW6ezZAfNQvN+xiK5RXB0VcEoECNFqKeV7NTdvsuUT8kmdq1dfQOjNKEYeVGiuBZyQysy0R83zD/XceDBoqYiOzLJAcgCoDtHigMwy+P4aDywuVBfitUwncYssAyUD9d/jOWLJbsRfBbC9fBNm8fs4GBWm6LqvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=uR5R1lug; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-434a29ecbceso4758115e9.0
        for <devicetree@vger.kernel.org>; Mon, 02 Dec 2024 00:53:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1733129627; x=1733734427; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=czYJoJVZrGDrcGrSH7xTDrifbpWsag5ZixMFLdzGQBA=;
        b=uR5R1lugf4rnAetL4C7xgydh8dmg13f3lRiOos0vHxHH2RPJIPup8/nHekMZaZGyYf
         tfdfQ6ZgaHFRsjilB9My9hncQiK+Qi+ijJi/k/nX2b8Kqt+Hsc0l1DtH/xOinPK+4h2D
         8IZrTY8xDwfO5slWmDTEvMQM4ZL6lZ4zMA2t4mUJQgt/eswes46xwQuOHgiextU/1i0E
         U1+DyTVcLnLLCH7/S/tRGyL+siGS8r/pLK/UVwHuo1k0qDG/l9rCHwRmf/51TSke1VDM
         +3IpVX6buE4cM2suayguCqi5PoUSF8TYU49gJEkhGOu2sgVIIwzmjFXtCnwbuz/4pzjd
         Svuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1733129627; x=1733734427;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=czYJoJVZrGDrcGrSH7xTDrifbpWsag5ZixMFLdzGQBA=;
        b=H/ln097by3oRLNmU5yh6/Jjb/FWWwV8CXzi/XT0ANc/MJ9fH/tfUjHezecXpoSV7ZL
         Ae1qraSPzyARkv22l5294afxPKIPdb9W1iI1wbUaCABx/MVogrqJc7noDUw1t1i+g9Fn
         3RyKfNtOWdVJtwYzNNxNIyDjHmormZnUkWY6pW+nT2w8ECS0gffV/5B5VLmK8JlLCqgu
         AIjhgnS4YT3fg9bmeftWLO+Km/rsitJLsaW6fevx6tSPmjCfRqAXKleOlOem5RRuUNJz
         caAmrCfpI4IfMoVQj278nybgQv+nbY4n4X+DJKdNBbrYDgsViEooCTLh7fx+G+ACdqy5
         i8zg==
X-Forwarded-Encrypted: i=1; AJvYcCXlkO+iAmUBuSOT3uawSB5+9BcZtUDiW36i1wa8nbHIfb51nE10DNXZCQe9+hYqqW4yPbPzWuWwwLSV@vger.kernel.org
X-Gm-Message-State: AOJu0YwMLBNve6AKz1qS7tKON/6dggqitBvRPhjdZyYaGcLKLUsU6zJn
	hoAMoZN6dIbUMc+ATJqyEJVrWC4RhaR2LwBAKJW3QvG/33yTY5I8whm4PD0a8MU=
X-Gm-Gg: ASbGncs5JsyhjOjJx0xTzkyQieu1NnZtfJ+rW+TDRNTFRKaCIaSec7s230Za/N9J50J
	86OxQsJyz1iejeRtHmZFBgxtJvXxJ3bo8VCbQj1z1OPGElLemxB1rcJE4oU/Ww4mHdLQkca1mNy
	9FuQjYLjFzJCah9yN8ilfh9WTrk+4M0zbiErh06edcyEGPCKXW7WfK15e3glwM6Bpos6pUYzAcc
	9s4nV/hy9YVr1HxrF/X4wHXWQAJ+4AE+JxH0VrwQj3y70XDI2y48SVeSqN3rahY
X-Google-Smtp-Source: AGHT+IEt2Iy6Cb3ngoq5i5atsn6oO0wODGDw8HmWj/LmUre8JQUIZCkcZBPIKWQx3wB5DyufHzMuJQ==
X-Received: by 2002:a05:600c:35c6:b0:431:4e33:98ae with SMTP id 5b1f17b1804b1-434a9de6738mr75550165e9.5.1733129627445;
        Mon, 02 Dec 2024 00:53:47 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.23])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-434a972c33csm140920385e9.1.2024.12.02.00.53.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 Dec 2024 00:53:46 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, 
 Andi Shyti <andi.shyti@kernel.org>, Mark Brown <broonie@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@linaro.org>, 
 Thomas Gleixner <tglx@linutronix.de>, 
 Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
Cc: linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20241023091734.538682-5-ivo.ivanov.ivanov1@gmail.com>
References: <20241023091734.538682-1-ivo.ivanov.ivanov1@gmail.com>
 <20241023091734.538682-5-ivo.ivanov.ivanov1@gmail.com>
Subject: Re: (subset) [PATCH v2 4/5] arm64: dts: exynos8895: Add serial_0/1
 nodes
Message-Id: <173312962604.23906.10353059101648062689.b4-ty@linaro.org>
Date: Mon, 02 Dec 2024 09:53:46 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Wed, 23 Oct 2024 12:17:33 +0300, Ivaylo Ivanov wrote:
> Add nodes for serial_0 (UART_DBG) and serial_1 (UART_BT), which
> allows using them.
> 
> 

Applied, thanks!

[4/5] arm64: dts: exynos8895: Add serial_0/1 nodes
      https://git.kernel.org/krzk/linux/c/aa33006c53c9c56ecbcbbb9b5415e27000eb86d4

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


