Return-Path: <devicetree+bounces-154556-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B0BEA50AFE
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 20:08:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A80DD167774
	for <lists+devicetree@lfdr.de>; Wed,  5 Mar 2025 19:08:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B6A3125290F;
	Wed,  5 Mar 2025 19:05:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="RQVgtHsZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE3C8250C07
	for <devicetree@vger.kernel.org>; Wed,  5 Mar 2025 19:05:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741201558; cv=none; b=pELmvsRCg1PUbT9DZc9FAJeiI9vy+cyIb2i81q0kDhMMYigVLIqqUWK71gU79pFSbVLAIEKwKvYcApKWPoVpRMbi0wxStggeyEiPLdazXSlnL5somGgR/7YRiV72kixa7ch1oyfKrnMAwh6x6WdnuGI3PtTJBRzxet3ow6NcVgU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741201558; c=relaxed/simple;
	bh=k657FxCWzDpdSCjqG1OpdeS9FGRaWIIzPSLgP8iEB8U=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=nZZdPkOCC7M4tV4OklJK0D58TooybnWTMkxLf6X6A8/5LxbktPdsNeh9Ei8yQO2oUaJICSj0MeUpSUy6TvqhAz1k88TaQ1zHIHRXecq766gRUluetCG7o69o141T0LCsqwOYAwCPP8n2Ld4FQuxrYuOq15UbH8vK0wpfuY3zGMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=RQVgtHsZ; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-43bc2f816daso4558215e9.0
        for <devicetree@vger.kernel.org>; Wed, 05 Mar 2025 11:05:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1741201555; x=1741806355; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SXwlkhSlbVtwXogPWWcb08IskVMbUMqFwrxRMdg6+Ow=;
        b=RQVgtHsZDjG8c4C/5yd7aPX+D5oNCtBX3uN7//eE6rIs4/3W6U+inhwcriB7y+x9X3
         pHfw56hvP1FHgzRLyHBJ6VaxEL31PheSI34E3wVkg8qfU7xDpbg1kbNCPHi6ZZbMgsCK
         nlfz7S4D7FJSp856HeiKI5S8lF3yAWRxIQKhvKhP1Uhi+0sQXSKRgWptRlRUzXd6z6t0
         sUJyI8PKtF8g4kDdG2Bfl8EYzeN2sOzFpkHH0DUzc/9HlU9fxYb4fv2DolHvkmdkKX9V
         Bzsl4Efqh24PCYORYaMM6KP2HtM9bmgMLxYwjc/JeYQTvOnMaMzSsyGwaI8j0bpjaEjg
         bwsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1741201555; x=1741806355;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SXwlkhSlbVtwXogPWWcb08IskVMbUMqFwrxRMdg6+Ow=;
        b=CeSeczZ6hWgh0ja1yLQHnhPJguXt9P6sorql6Aa5pB75d3Piw7nOPgMPjnNptm5n/P
         q6hCfpcspHqPXqTNIZFYNzKdznb+OtBkEFrpB0EHaF6Us4Fry8a3jRoyqPI/l2LJFpWr
         itRYjUutianm0PV4VugUWphqPDz6C9fwm26NbAl5wi4OpwMQm6c7QCNBdVVCZycg13aD
         hT/VNhL7VjduFdq4qHiFNe2kB613EzN2qRTq3sgE42bJyaXa74Yl9Sf6cPPb+yb+C/9y
         yBOBh+F6R8eRSfxeI8g9nSypO/MDv0GN3KVqugvoEKXw2T3PgTVPmcrAT3Sybs9hsTBg
         LVfQ==
X-Forwarded-Encrypted: i=1; AJvYcCU6r3fAK78GLKpVLCJ9Di9kDMzOi5eUYG8OC0+eaiZZdByt8H5y/mHqSOACBV1t4n94Bms9JbQm99Nt@vger.kernel.org
X-Gm-Message-State: AOJu0YyleIJ3jWntzwNMYmpyH+Tpj4Qucgh0Sucm4IpNIavz9yaqLvW2
	3bXT5kPmUjVsflc9kH/QHP7KW8FZLe0gs3R4mpBO2HRyg9JDGE6nv5YdgOe+BMY=
X-Gm-Gg: ASbGncsLkSVq0IIJ/MFfWU9d7NN6GWGGMhBbxUoggzAeDv9pM12UuIojh7U0FjFOsT+
	32DQlULNTDjJjUgki1i0F3taLBAAZSxUKMwrM/wXlNxkr06tGrN2FJb4JC8hf/XnKp4K3uAAHPW
	ECwIxJ9/vsy/7fU/TSw42pOR5M5j0fVCjgwtDKYANFbaD8/QyoldN2q2ksPvcL0mvrHFE4cjZU/
	bno9AdRuSQRH4qmE9VVPPnmOFyNHnS3hBApqVvcQVXvkBZ7CmKLueWE81lt1/xYZLxGPKXiVwvq
	F7suDW2ScpA52NJNkAiOahUkn0H85l7ROWvXA9pOUrYgBbVw+WTFrYpeTWWn
X-Google-Smtp-Source: AGHT+IE3IjJeSMhwhYFQVkJODS8A0V92GzgNUXihhvb00RZvzc5AMKy+de2oOq6U0u17cQDNCmp+YA==
X-Received: by 2002:a5d:5391:0:b0:391:2886:d9bd with SMTP id ffacd0b85a97d-3912886dbaamr319116f8f.3.1741201553557;
        Wed, 05 Mar 2025 11:05:53 -0800 (PST)
Received: from [127.0.1.1] ([178.197.206.225])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-390e47965e8sm21491662f8f.1.2025.03.05.11.05.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Mar 2025 11:05:53 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Kees Cook <kees@kernel.org>, Tony Luck <tony.luck@intel.com>, 
 "Guilherme G. Piccoli" <gpiccoli@igalia.com>, 
 Kaustabh Chakraborty <kauschluss@disroot.org>
Cc: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org
In-Reply-To: <20250301-exynos7870-v4-1-2925537f9b2a@disroot.org>
References: <20250301-exynos7870-v4-0-2925537f9b2a@disroot.org>
 <20250301-exynos7870-v4-1-2925537f9b2a@disroot.org>
Subject: Re: (subset) [PATCH v4 1/7] dt-bindings: soc: samsung: exynos-pmu:
 add exynos7870-pmu compatible
Message-Id: <174120155027.74217.562001377328469243.b4-ty@linaro.org>
Date: Wed, 05 Mar 2025 20:05:50 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Sat, 01 Mar 2025 01:16:49 +0530, Kaustabh Chakraborty wrote:
> Document the compatible string for the Exynos7870 PMU. It's compatible
> with the Exynos7 PMU design. It handles syscon reboot, syscon reboot mode,
> as well as other system control registers (i.e registers for the USB PHY).
> 
> 

Applied, thanks!

[1/7] dt-bindings: soc: samsung: exynos-pmu: add exynos7870-pmu compatible
      https://git.kernel.org/krzk/linux/c/bf869ecfb8d3d0fef07ed2752df93c977cc257b6

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


