Return-Path: <devicetree+bounces-173486-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1842BAA8871
	for <lists+devicetree@lfdr.de>; Sun,  4 May 2025 19:25:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 671173B44DA
	for <lists+devicetree@lfdr.de>; Sun,  4 May 2025 17:25:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 261951EB1AE;
	Sun,  4 May 2025 17:25:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="czlK2TyK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41DA41DED60
	for <devicetree@vger.kernel.org>; Sun,  4 May 2025 17:25:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746379535; cv=none; b=fQKlEfNSWtxeojX1QPSccgxvfOQ/Tv5u6QmEVuz0CnzYG+fdKkLW7zlH5w3YZNfHjD+qizxZPVZIkC9aIvc4szOTijqnSDhzgz2ZIBgyiVnSwMPQKW8mK6bjQgWQB+P6prLlzojBvlAd7XghTLTB8V3dYMnM13yTc7GC86jzKiU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746379535; c=relaxed/simple;
	bh=fl5zCCVpEE2Zmqz4fRFa18I28mrrarwfyrO9Th1s7Mc=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=B8PgZphjoyZAyynoAoz5SA5yLZ5dboFz0JHS495xkSqLOkQIcfGBbpoc9Dhlwso3jxW/pFEBuK5afnQTmtl5TNvB82MFsFXEY9T0bk+fLs7wpC9BzOGkdPzCvSdv1U1zdU9iFwZr6gGpk80DIHQ2JDqE99BwdlKEJgvu1tHDzR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=czlK2TyK; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-43d16a01deaso3934755e9.2
        for <devicetree@vger.kernel.org>; Sun, 04 May 2025 10:25:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1746379531; x=1746984331; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nIetZtVvpEUX157Voy4D+ZB3t8P1w/c+ExnDxR/4ciA=;
        b=czlK2TyKMbuZCT2cvCF8CPpvRAqbGYZWG1fhfNoY1LT/uKlbsYgdH2RU4W/uomJGxQ
         rkS7SE7Dlywc+XWYYB0gVx2IpZ6G4DhCdLJ//3hB9V64a2agCuHTkcxXh4pQ8QYHichO
         9AY19tsnaJazC2aroIg91CD7QD1O3yIX5xoiNa8ug8iKU0/1f13Ka7QJB5B13c/fYPYj
         wIqi5+1SRZ7uGRG4ejKwk3jH/lrHhzlMu72tNGwE+Uk4yVqMcQQZyfhRPr12Tt36AT1h
         v+dqmusfOX2RuLkpyMYDjh22SMYBIElqOnxMVNeT65aZeMT+PJbMlTlhF8KdJbc46/eo
         7VdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1746379531; x=1746984331;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nIetZtVvpEUX157Voy4D+ZB3t8P1w/c+ExnDxR/4ciA=;
        b=lTgI8CVuKeTm+OjTA+tkfRKhye3lpI+m2CP8N5cQQzabAomlmft8kcOk+7z6iQABzh
         uetRCBeOuq4lyPXf4dz6AEUCTu9ot+L4H/0lof3YAeze4DYZUJLxaJom7tCHemGbLF4O
         Svs0pY/sYOf5W4K5O9pNshX7HUQZEK/rZolgGh/l9hF2dmEAQ87i+YvQdK4mrWckdE48
         3fREAQhKXWukGtzJv7a8UzX2ElgrwVJlalYOBi6bD4E8Yx5d4yfU1z80Hrjp+BA3Sz9y
         M9RCM/ZTKiha94Z82TrIPNHVg+BqaUd9OyDdjBzol9wqGzqlvTGuhhUM2IKVFCBuf53t
         FgLA==
X-Gm-Message-State: AOJu0YzPLKWDGYKeDDOK00Y9mNCXUZLZHhS/iUk6pKidSkDOfRUioLEf
	F9Ox4yhGhK6RnIjdUiIL1PgAq/JQVkxyCGaL/0LCy9S9A3YQru6n3CKNuEBP+f0=
X-Gm-Gg: ASbGncsRdCnOIMaLzhgj3uIquRFKfriXyeigl9vbb0954rONXf3+bh+Ek9Fdu+wrGwr
	lSSoIzcMWbnQtqamQUB6nbf1vNookyHEQZuZtJ+0fUpJ/kgti8xICuvSaDiVOvIRApiY+WxEmew
	i4hJsusy37A7Q986zSoCGQYQEUvXiuWdvutzQMdAqJMmAVHUmqw/ye6OLuz+0/r5HOjzyoW476b
	NWmINuLlwTGR4KQkmcGDdEwwn8HR11uJHlytciJwIpG+SfJGeGDddof/i55i/QydBA8PKL9u9Wi
	JCJEwNvdZn3OGrEhdeMNhUpGhsO8IORRHC2T66irNh1KeCaFsgVeQI5YWXg=
X-Google-Smtp-Source: AGHT+IFYaZEBx5yqoumH/FiWwmOzxWN7aGOeGNL5Ypj10vpFzEjWkb0gKejuM1ERKGG9RC8IhnyXsA==
X-Received: by 2002:a05:6000:250e:b0:3a0:99a4:e53f with SMTP id ffacd0b85a97d-3a099adff15mr2242281f8f.8.1746379531418;
        Sun, 04 May 2025 10:25:31 -0700 (PDT)
Received: from [192.168.1.28] ([178.197.207.88])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3a099b0fe9dsm7896332f8f.71.2025.05.04.10.25.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 04 May 2025 10:25:30 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Alexey Charkov <alchark@gmail.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org
In-Reply-To: <20250503-wmt-soc-driver-v3-2-2daa9056fa10@gmail.com>
References: <20250503-wmt-soc-driver-v3-0-2daa9056fa10@gmail.com>
 <20250503-wmt-soc-driver-v3-2-2daa9056fa10@gmail.com>
Subject: Re: (subset) [PATCH v3 2/3] soc: Add VIA/WonderMedia SoC
 identification driver
Message-Id: <174637953030.102764.839474842803768682.b4-ty@linaro.org>
Date: Sun, 04 May 2025 19:25:30 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Sat, 03 May 2025 15:52:32 +0400, Alexey Charkov wrote:
> Add a small SOC bus driver to parse the chip ID and revision made
> available on VIA/WonderMedia SoCs via their system configuration
> controller's SCC_ID register.
> 
> This is intended to select appropriate sets of on-chip device quirks
> at runtime, as it has been found that even within the same SoC
> version there can be register-incompatible differences, such as
> with the SDMMC controller on WM8505 rev. A0-A1 vs. rev. A2.
> 
> [...]

Applied, thanks!

[2/3] soc: Add VIA/WonderMedia SoC identification driver
      https://git.kernel.org/krzk/linux-dt/c/6cd47734da4af93cefa1cb3d8370db57cb5616e8

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


