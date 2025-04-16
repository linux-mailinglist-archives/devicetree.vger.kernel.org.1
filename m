Return-Path: <devicetree+bounces-167622-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EADD1A8B261
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 09:38:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 23B1019013B1
	for <lists+devicetree@lfdr.de>; Wed, 16 Apr 2025 07:38:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98B1B22F3B1;
	Wed, 16 Apr 2025 07:38:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VKqSGHPf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EB9322D4DC
	for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 07:38:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744789088; cv=none; b=Dw9nxdNZ5mZ29ZXLPpL6D789+REQqlQAg06r8OMhK4p5VvhPzVAI5gEG1h1lWntXQBN1O8AF849XvbL3HJw1kU5WqgAtkiQRrNOaDpFoK3b3oTx3fmAdmLTQ9aN7/IasnVKUnoHHnPdtK6bOMdH4ZCg1UzKgNGV3hRtjegjgoqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744789088; c=relaxed/simple;
	bh=bT+cQpwTABxthE21Og42/Nfhu15qsdTLYAV48srb3+4=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=ufI5x/19f5asOabb1TTENixte3VYf1IXFx/FFx0l8/PLq7nVAUd4/4slo7VZOX7x98a2/zF+4h1a3Hy71vd2VzhldWf97MWSgH1yHeKuX0pTAcAeZFfrQlUwrqX65kuhHceHfIdCRCwchBJOqvVMukrNOfBD+YEXH8qGD4ioBVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VKqSGHPf; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-ac30d4ee128so93777466b.0
        for <devicetree@vger.kernel.org>; Wed, 16 Apr 2025 00:38:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1744789083; x=1745393883; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MESsicyyhatyINufDMJoZ4SnaUsTOFcTcz3ZiENjCc4=;
        b=VKqSGHPfXxjt4B+uZnv4OO54qAeihZZpBYJ0vqfrVFpszdI/L67L1H9AUejBLOF/K8
         WVYsZuw2jZiGzSu/xFvHVF79O3wOz9KpoImiobyelyBoVmw0nZfYUihHlAdn5sCJ1K5Y
         bfGc30S2MYYPVIwwmiolZHNFwaoMg0/EclofvKQWjxQxzbbyMx+8d6Ko79QJVLoLYGNE
         QdP7yDgRio25keJX6QIqUAr/i0yhThS8v9/njS3Uv+pofHDZUvStlIt26/eG6V6BxxZj
         wxE6Qu7agSjdcFJWMS3QL8qDBfdd7Xc9BGSbOsxS2LBClQYdq4VA0w9q98k52C9HCfLJ
         vDSQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744789083; x=1745393883;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MESsicyyhatyINufDMJoZ4SnaUsTOFcTcz3ZiENjCc4=;
        b=bXrZGsCKoJHRi9YkPZpSD7QemIPOZyU5WEgfcZjOoAbdj44KDFwgNlZ82Eux5zPQpu
         uUaZgvPVOPoNhyuNJUmnZGEmpj7TgMO0I3fBWfTWbTDzTlX8bI2Wrf3QW1UhJi+QSZg/
         kLDYnffAXagfHwj9WK3F3spFuidIWgeaxQHwGUQaWE/Qa/QM+4INyafMhLsAJc7eSjZE
         clpCSggKjIbXoibXzMCjpIORBdvv0ygVTUbreHZcswYoNnJrU9mWlnxYQAYWGuYTk8ur
         XzVyBcMYm9s+ibGh8py4Fb0Z2ar//e0UPRTY+zgwGKzIog0AUkuVwHxw/Ale7DgX+sFt
         i7wA==
X-Forwarded-Encrypted: i=1; AJvYcCXEBjdtVdcTkm5gywWQqTyFq9q/VAH0CqWIPJvswTOfxrDepkUxJAlwBu4bxoLbB7ZxQHfE3ANSdTZV@vger.kernel.org
X-Gm-Message-State: AOJu0YwkKbcQrHZDQGarJMIwkK3/E8lyAQKALDvyk8xQvJ44rZ4j8Qcy
	TY6eAfgGE8axt4nGf3IJjt+oeVbbNPmLsnBN6jh/GZY1Bg0TM5g5QXAlgJHjQ6M=
X-Gm-Gg: ASbGncvfYPDJ1ZZb3r2kJmDtHN12jBVSi5WBcb4ogZ9mfqujiAd9rBezpAnTlIZnPZU
	PqsqjaCkNocodKu4zWFuzwYgLCgHo631VlEXoTi9sFJJbZPcCBriBG4eYKHNyMSvgvp95jEmRq7
	gWpQyeNmKEu8OYmVWlWFStMNLklgylV6gH9xAnpkk22UaEIZ/isnBOHNj4q7MVqbmVfVhf1IKfK
	sRh36+bs5kDdGhR+smqTLZUnBwyuqQa8xY/WClG7YGb5uWVX56wVUrPq6F4mBxqiM1j330W2xhE
	EMDzKrcd2KXYI3wlHbgY9Px0N2T7W6JnhDTRBSJhsRhpB0yncJJ5A+JEbglNtiGjudl/xG8El/9
	dBbbY/LLRJXVewZQ=
X-Google-Smtp-Source: AGHT+IGfmvUt/FSzOcqD2du/hnhTnAGiq086+HJ2TFi6ewXNvWJS6ClhkVHTH7jbIEYkihEMx3raLg==
X-Received: by 2002:a17:907:1c18:b0:ac1:e2eb:8877 with SMTP id a640c23a62f3a-acb42b52478mr17700466b.11.1744789083533;
        Wed, 16 Apr 2025 00:38:03 -0700 (PDT)
Received: from [192.168.1.26] (46.150.74.144.lvv.nat.volia.net. [46.150.74.144])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-acb3cd63f12sm75397066b.32.2025.04.16.00.38.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Apr 2025 00:38:02 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Sam Protsenko <semen.protsenko@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
Cc: linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
In-Reply-To: <20250209132043.3906127-1-ivo.ivanov.ivanov1@gmail.com>
References: <20250209132043.3906127-1-ivo.ivanov.ivanov1@gmail.com>
Subject: Re: [PATCH v1] arm64: dts: exynos: update all samsung,mode
 constants
Message-Id: <174478908177.19245.11349422916489425295.b4-ty@linaro.org>
Date: Wed, 16 Apr 2025 09:38:01 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Sun, 09 Feb 2025 15:20:43 +0200, Ivaylo Ivanov wrote:
> Update all samsung,mode property values to account for renaming USI_V2
> constants to USI_MODE in the bindings.
> 
> 

Applied, thanks!

[1/1] arm64: dts: exynos: update all samsung,mode constants
      https://git.kernel.org/krzk/linux/c/4855244996578ac25495a708b426c3f27632a068

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


