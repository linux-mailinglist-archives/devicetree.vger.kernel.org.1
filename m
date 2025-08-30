Return-Path: <devicetree+bounces-210704-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B8831B3C9C2
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 11:20:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F41A91BA6122
	for <lists+devicetree@lfdr.de>; Sat, 30 Aug 2025 09:20:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD2832609FC;
	Sat, 30 Aug 2025 09:20:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LMbTC3cI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f48.google.com (mail-wr1-f48.google.com [209.85.221.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36E6225C81F
	for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 09:19:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756545601; cv=none; b=ZvEy5TOl6Z7Md/xmkP6B3Nx8o+bJSXLv+Q18HHD2uZaGLTd5+s/ZoEN/juMA0ZdxneJ60W8q4Xql7/LZwnGhx/TZWDfhVYHqPysoeLiBrvbtCUOdqkJXIqqd1hnpsCHC7fa9S+q3iuwVywnOWPURXrECK2ph73xfGk9EHe9aRV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756545601; c=relaxed/simple;
	bh=VzxXJTFvTQBP4rKxruA4BdTzmvcXZSeGRHXVEynJRIg=;
	h=From:To:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=rkXlON6qvzfppXAPXj0JcPG0FWD4SizHMs0mOm7lQ27uNFmhrLiGrp/naeAqfQYw2VtkmfGCUdD7WZvMkgEIM2nYfHATjE8BDdOijCxNo0v/sNyTEzE9Oeiq4owp/2vd5JpkQfxBElNTpOSUaqCshDmIjzOM9WyvX4ExLamDjR4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LMbTC3cI; arc=none smtp.client-ip=209.85.221.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f48.google.com with SMTP id ffacd0b85a97d-3c7b4f4be98so190120f8f.3
        for <devicetree@vger.kernel.org>; Sat, 30 Aug 2025 02:19:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756545597; x=1757150397; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0dFt3gYfNqGa3u3KzJ+AyiV/voGtt/ZhOXx5ybVFlJE=;
        b=LMbTC3cIxF70EaNIhq6JYXD7DYJrl2EcVypKWUDJVR9vYWra8iow+rFP6BuWtgHGiM
         T8auKQBDwr25YblakAsYg0FFZyyQbmMAllNz5wESprMzVfNX3phkPl9VnKda048IiDAP
         G8iRWUzNj+oX8CL6up37lJr8iGu36aFM4Bq5H/g/ww6u8J2g4oyeLmanxpuFrPSrB48b
         VCfO5q6YAeeO842CNwZG+5crb7/gA30LaXdhsZAC+RnARVOjy17F48jLyvyiho/6Nvwn
         JnaPhMcLiHQcfwgAYY1OgqjduGrORRDB0K0NekT423Aw4CqOJpPPwVV8Cuu9aPxpqtSw
         3dlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756545597; x=1757150397;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=0dFt3gYfNqGa3u3KzJ+AyiV/voGtt/ZhOXx5ybVFlJE=;
        b=WR7YUiRlaPemsmsuJClwb48HHslfsjqf+BG/k2JpxuSVkcm2vB/AbdIJH6o+Oyl7L6
         sbq/5L6J9Iozjs818GTDsMFYXf8P/97QsiB0SGlAtltPAnoSn7hMtOf66hTWqxUqC7qO
         YCYFQpYdFjb2AM3Wc/4Y/nkSOiKZIt3QGQmMDTmvXLCUfoNfIGPa9Q2JqguhOMV6UNA+
         zdxOIpjRgh9DtSHlaIzZJ8QxGppCQPxQqveQrKDXQ7CS7FkBy6tFPHP8YMgRphKBqyXw
         ziMTshMU0NPVhDBWsVeFIAaCRo3l5lCoe8YMY71fqr25I9sVx6nGY0iDG0ltzSsnyJ/Y
         NCgw==
X-Forwarded-Encrypted: i=1; AJvYcCWXMsKB0X20ThunqOCChxmHB5vyeJUyAjCSZKfV6I+fur3acF7jNWe6i4cqyhq4dPJoaoJiDFejqD3M@vger.kernel.org
X-Gm-Message-State: AOJu0Yxg2osdnwpsyMsldJiEQadqlvd8UZ+lwgeAoj0+AN0YnXy0W34X
	cxleFY/HDEMfYHUa9wLHNkWwpKYWpJcVmHsQJf+ufmFMltz3rbqeNKQJ8Ce6UQADwWo=
X-Gm-Gg: ASbGncugeUcL75E06oKSU6Hxf7fv4nZ+WpelF3vSx5kQ0352lNx8kmypjepR+eh55fp
	637ft0aSX0V26MXZ1auShFlcdTbKFt/gLFzMQSdIChZqCbnQo1Ml93mnIS1atZ3j3w0ZsmqPLM+
	4HljbuSO+UsXG4JhdScQlAEFdQR4hOfaGOV7UV5Rr1jywZQZUq9EKesh6QsMeqO58DtuhJbG63H
	XE8KA6/VnQkoH0wOvucbwO67OHFwuMWt/b/ntx/kPOAOHc1oH1Wdki3rHI/7aBip7WmI5uzS+1H
	tX/T+R20nfO+j/45O7YgXhvYpHKQlxcT5haUzjQj4UTXKEyV4kHXwfgYdFarQR9JCWsl5PC01Zf
	+2o41u/lsC5SMswvd5RPS+wesO2CXlSvDeJmSLPsFeiHRoT6nJg==
X-Google-Smtp-Source: AGHT+IGNPQduLpc/IjF1WNJ7fX3IBlI9xKKXL9Jw8b3Rr1V0XpqF83lKcev9HsYcQdmGh6fZ98hleg==
X-Received: by 2002:a05:6000:420f:b0:3cd:cb0f:7203 with SMTP id ffacd0b85a97d-3d0f6b3570dmr1860657f8f.0.1756545597544;
        Sat, 30 Aug 2025 02:19:57 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b8525a94bsm21186815e9.15.2025.08.30.02.19.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Aug 2025 02:19:56 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, linux-fsd@tesla.com, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20250822121423.228500-5-krzysztof.kozlowski@linaro.org>
References: <20250822121423.228500-5-krzysztof.kozlowski@linaro.org>
Subject: Re: (subset) [PATCH 1/4] arm64: dts: exynos5433: Add default GIC
 address cells
Message-Id: <175654559607.10738.12399335584590280087.b4-ty@linaro.org>
Date: Sat, 30 Aug 2025 11:19:56 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Fri, 22 Aug 2025 14:14:24 +0200, Krzysztof Kozlowski wrote:
> Add missing address-cells 0 to GIC interrupt node to silence W=1
> warning:
> 
>   exynos5433-tm2-common.dtsi:1000.2-41: Warning (interrupt_map): /soc@0/pcie@15700000:interrupt-map:
>     Missing property '#address-cells' in node /soc@0/interrupt-controller@11001000, using 0 as fallbac
> 
> Value '0' is correct because:
> 1. GIC interrupt controller does not have children,
> 2. interrupt-map property (in PCI node) consists of five components and
>    the fourth component "parent unit address", which size is defined by
>    '#address-cells' of the node pointed to by the interrupt-parent
>    component, is not used (=0).
> 
> [...]

Applied, thanks!

[1/4] arm64: dts: exynos5433: Add default GIC address cells
      https://git.kernel.org/krzk/linux/c/b3a62f6c3573e448e8b0697a622e7bba0ddf9945

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


