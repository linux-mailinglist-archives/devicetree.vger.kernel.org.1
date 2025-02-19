Return-Path: <devicetree+bounces-148358-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 47806A3BC70
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 12:09:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DA7803B80F9
	for <lists+devicetree@lfdr.de>; Wed, 19 Feb 2025 11:09:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E86C91DED66;
	Wed, 19 Feb 2025 11:09:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="k2jIb/FO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D964F1DE89A
	for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 11:09:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739963343; cv=none; b=Em2fr1DlQhWGZzNQTFZDeoY0wgfIVC2iI+mROxNmRQuYr1lDY51KXOG46LrK6UZya2Cl5b3K3x8BhYKp3GYxGauVP0mSDPHmhOLyB0NqmWjKqgtXbt0B4pW9tkB49wEKKEK4bA6VJmJLOoiSo2L1VLTqKQ9hvMXSQirNVmLoNwM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739963343; c=relaxed/simple;
	bh=cvlaH9bP1Ejwnm0RINb1NYM/JFKbZqpkIyKiOdyhiaE=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=vBolC64Tdf8BCODr78ZB4hyxUSxHpoMUAO+cvVKZDb6IXKmhU3VwVYCEeGGht97RCWqqcBx++1QnHy4XQhcnnn/Uli4k3zaZVHhvui4MAnlbanun6TNUjxDeF5h88/MXE+xN8C7Y7fhy8trOwiUPUjqJ7e1nH8EdhQfZtcrTLsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=k2jIb/FO; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-ab7dd005cb0so95716866b.3
        for <devicetree@vger.kernel.org>; Wed, 19 Feb 2025 03:09:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1739963339; x=1740568139; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JIQn4T+Ol8k281C344dwvV9xtdIPcPz3ZnNCTAKTtPM=;
        b=k2jIb/FOxIqoqhZdXiANWaSgiy0MxHKOeyahb5pMBoQ8LaY6qSEd2kI+53R7jeEbW0
         qrWpfHM0nfpo6ftXVprBz/yN70CunrhPouJ86Q6KdZtEMs/kzp6uRSqBSNUCT2p6+meH
         hwgFxb9OQIanNez/irel+s3TYaapkWu49h1ZU40g0vR8EOXyhcFFLEI1P3q520w1+rJL
         kUZ8/3tURLFqs1YYm7B7+7qpG71BqXpihb9lhh/TV3H8Pnk4aXHacgYESSvHLr5WUywm
         P6RJdSCLep/mwWGiKLcmWEEX3fixuHFTugUWxG+e6uioHFvGq+cCjY08D/DlgKd5qtau
         h3Lw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739963339; x=1740568139;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JIQn4T+Ol8k281C344dwvV9xtdIPcPz3ZnNCTAKTtPM=;
        b=YBZRx71IdfBkipmU7NUnoJBexuTWbGZbTAIhRDj0frLYtgAfrlUvueP/EpjOsLReqD
         uZJd5JAEw85NNY72SW1EnIo9DrYUqgt/w2r3iNoUyMjsxs5RsRUL1oxMIfdS43TqFvYO
         CGeGH7rTM9l2Lo4dYXmccq04eigbwuvrLT8kesdmtrLi2Z5dqeaWJJfGeCuXs5cEroKs
         vixGmMIGvn4gD8EFDGRxnfFBS7znBFTFMm28S8pJZVswKCe+iGmeQDgqKNHfWxz56G/c
         zYJrOekFFfurI0y5zq3QYH+eoxXDmtVUWuVstETrR9HfgPoUweiHjc9RpNxGhfrv1vjV
         vc7Q==
X-Forwarded-Encrypted: i=1; AJvYcCWs5aEaK+I9D31ecUvSE6tB7SRerGY4QOoBJuITkQqRnUp/M0pUQZ8oc1LopkhRyHs+IkHgm74jgaaJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yx5tZXr0tDmegEXKaTLCI5VftYmHd6lS9lk34YekMcdymPC84If
	fOWbXifkB/NZErV2F5IJ74JGt72E8M8wQEfWvlPAH8rF0hwydBcJ/5Q73OqOuJw=
X-Gm-Gg: ASbGncsBsR9VPI1OLgLeiVZoXTCxNSKdz6aHEIoKme5pQSX5LoLE57FkMR0vfcrlu33
	hUAxKNPH+OZsJxNvw2FZB6OQHVRlO4YpJgrhTKQtORllroD+qgEUIQddwJoNqu7YWbhoHt9f6uZ
	HXRrOOmpuKZjqR1ONyyeMB4twmeuHLZ0af34LLj0vZpW4Bf8srTh0Rd5GkPBgwsH9R3/gk64Cd4
	2VAUV1ynqIjhidzVKR+Xl4uAxJktjYdqqffuF5sjI+QFsWsZfwu+y+aD6i3j/uLy3uwSwd7K5nz
	yKODnKRC0xw+zxWayRQ2zzgmLQ7be88=
X-Google-Smtp-Source: AGHT+IEe+1BQ8AYZk91y7yXjhMM+ta1+WK/nmzl8UeGC016o3r2DG8gtpQnMR/wNL+rcqmeldzltmA==
X-Received: by 2002:a17:907:7248:b0:ab7:bb4b:aa49 with SMTP id a640c23a62f3a-abb70ab878bmr651662466b.5.1739963339206;
        Wed, 19 Feb 2025 03:08:59 -0800 (PST)
Received: from [127.0.1.1] ([178.197.206.225])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abba4fc0c29sm475464466b.157.2025.02.19.03.08.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Feb 2025 03:08:57 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Linus Walleij <linus.walleij@linaro.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-gpio@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20250215113248.159386-1-ivo.ivanov.ivanov1@gmail.com>
References: <20250215113248.159386-1-ivo.ivanov.ivanov1@gmail.com>
Subject: Re: [PATCH v1 0/3] pinctrl: samsung: add exynos2200 SoC pinctrl
 configuration
Message-Id: <173996333675.137445.366892422452609954.b4-ty@linaro.org>
Date: Wed, 19 Feb 2025 12:08:56 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Sat, 15 Feb 2025 13:32:45 +0200, Ivaylo Ivanov wrote:
> Hey folks,
> 
> This patchset adds support for pinctrl of Exynos 2200, as well as
> documents the pinctrl and wakeup-eint compatibles for that SoC.
> 
> Best regards,
> Ivaylo
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: pinctrl: samsung: add exynos2200-wakeup-eint compatible
      https://git.kernel.org/pinctrl/samsung/c/aced1f7b82b1594189be98ba7c51d0a60a4a279e
[2/3] dt-bindings: pinctrl: samsung: add exynos2200 compatible
      https://git.kernel.org/pinctrl/samsung/c/bbdb937962f2261355e48965b631742d12629451
[3/3] pinctrl: samsung: add exynos2200 SoC pinctrl configuration
      https://git.kernel.org/pinctrl/samsung/c/574d0f2120b8e7e6a218d81267f4b543d586df11

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


