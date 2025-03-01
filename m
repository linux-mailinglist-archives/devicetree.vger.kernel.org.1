Return-Path: <devicetree+bounces-152964-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 10CD4A4AB90
	for <lists+devicetree@lfdr.de>; Sat,  1 Mar 2025 15:13:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BDA3A3ADDDD
	for <lists+devicetree@lfdr.de>; Sat,  1 Mar 2025 14:13:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D41251DFD8D;
	Sat,  1 Mar 2025 14:13:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="qW5sj1wN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 065581DFE18
	for <devicetree@vger.kernel.org>; Sat,  1 Mar 2025 14:13:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740838412; cv=none; b=k6ADQBNg9peV9i8s5oegWHUHBfqHQedR9kP1zTG5w+mLzoygzMxVmfkou5gc/dkEU1l2BYL4EI+qHVPhHtA4NKR51x+1f1+80vWlkwZv1BV3RZhhNxRGmXv9CIrkTT+ORyDa+ftFF+CTO8qVJ/xmBhyWtvKeY/60YVK3f2h6Qzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740838412; c=relaxed/simple;
	bh=3OnlkhqkOzm83q2muEV8j1QVdQCjg4YiqkJ/xDPT168=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=uorsveJMh37l9GSh6tVcoMRWVUT6rXasvWxkfcZVaK4wXRqyRHKYm7k91XBDVjAX/t5gGjMoSjswvkvzqmK3UqF75Wfrfl1dEQ7y9+vKcMAvea4n22QJeAjpjSQGOs3LeEoEHzA9qKER+z2jC5OqpaypHMB8ULkSNBiyXs8XfMY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=qW5sj1wN; arc=none smtp.client-ip=209.85.218.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f43.google.com with SMTP id a640c23a62f3a-abf5f2e4482so5463166b.0
        for <devicetree@vger.kernel.org>; Sat, 01 Mar 2025 06:13:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740838409; x=1741443209; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=BnbdHsHTQ86fPzgXCuKmjr1fO3E1oZYk9t9Lff4ycVM=;
        b=qW5sj1wNqR1fQD3JbyyY0DzqLPpOoyjHNyqJEzFiwafE2kGVFQwequKWKRIci7/Zr8
         Xq+H5hOyW39pMKT945DaA6B/vndn7teU/9vso1YqM0LMel1/Rv4VyaEqztA/cgoGc1n5
         uwGvjdJIIXcAWiSoeurByXkZfTDQTu5sVbM9gu6c76tCwePNr40DD7wFtTpBWBPYv0Mo
         /K1hWvd7jxX3zewOTJBRkYUJCxh4k9bUlfOqNsLtD9q31f7eO2JW18Lf9MGr5mSBecJU
         LIfHhR8FXuKzvDPDd29x5U0EWWrXmS2QjB2goMtOWJCaLlxskL5N02LJAy/6gXR4kB6W
         XEFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740838409; x=1741443209;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=BnbdHsHTQ86fPzgXCuKmjr1fO3E1oZYk9t9Lff4ycVM=;
        b=WX3yciqEC+Adx2HXhWgEaUAc1J+8tEDHXSp7L4L1NfI0qsmIlBSRrl+UgOdO3OXo75
         jEki6QfFxSvDfdNG15NQDoX/cqBlVo4M8pmBXarOb48PyW9eOnn1beTGldbL+2Uy7i9X
         RJRb8C4HunCz42WFGkvN2t73GI9RE2XQ2qOplnGKEvQOpexPhpdX7cr64SEYl5KUXpX6
         oIn6rsWtcontfdB//tX9pJ8u/3zk/HetrIL3io1ZZYMe7gg9tO8wWObq9NnV/iRPgQfW
         YhgFnTa89guNJ2E5higAoXO654o608SIPwkWIhLm+k7iOmoM8tieRzXHr41GzIDu6AET
         TJ2w==
X-Forwarded-Encrypted: i=1; AJvYcCW9WuwjnZiuR9iT/oau7FlqrlYBC3LHTU7iL+jkDbGdTSSuY5+6q5krpYAycMemV21JW/Fp5/5oN9YA@vger.kernel.org
X-Gm-Message-State: AOJu0YwPuZyTAovdQ07t2UMCyL7yVr+4zE/OpcxcAWPpvp4k3SLh/yyf
	+HldAF2h5tDN7hIH567RakL3w4wbotiuztYABqTot0upFYlsizn5sMkEI9w/UtU=
X-Gm-Gg: ASbGncslKyGE2EkSMM70AcaYVV1ZFYpdErd/U8/5u3GHsKB4ospZbmniHzi9IvxNswb
	8MjJq7K9fiiEFaNFRBiYSIvqfUf8hWpZ+T4njrUxmiuMo9Cksdbirp91DAs0XBMpcfcRuW46rBs
	yo+dt7au+bWRP6Pm67l++Wfwj4pyV+RObJEo8xNyVGN3CqBWNC6VHbr0iCjsCbIa9OPNkm/iOD7
	aSWpGUs0BHHLMqvK2HbF1yKerR0EpsOjrE+vrziVWIQ1Fsl9nQ+3IG1V2bq1ofQh7E2+xJY7qKE
	otYAq3SHXPY0X8ny1TtoOMiW5e3PIJP7YW3gZ5CRqKsG+y036Yv1/GY7Kfvs
X-Google-Smtp-Source: AGHT+IFbAre7Y2ts6f+9wyz3jeSARqJEVou9IA7TgraYYXlc+RIXaNzzDk7QN2b0NMZOmmxJ3LBOAg==
X-Received: by 2002:a17:907:3203:b0:ab6:6176:9dff with SMTP id a640c23a62f3a-abf25b120f2mr310555266b.0.1740838409375;
        Sat, 01 Mar 2025 06:13:29 -0800 (PST)
Received: from [127.0.1.1] ([178.197.206.225])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-abf0c0b9cbfsm485532366b.14.2025.03.01.06.13.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 01 Mar 2025 06:13:27 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
Cc: linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
In-Reply-To: <20250223115601.723886-3-ivo.ivanov.ivanov1@gmail.com>
References: <20250223115601.723886-1-ivo.ivanov.ivanov1@gmail.com>
 <20250223115601.723886-3-ivo.ivanov.ivanov1@gmail.com>
Subject: Re: (subset) [PATCH v2 2/3] clk: samsung: clk-pll: add support for
 pll_4311
Message-Id: <174083840636.17657.13627418806102780540.b4-ty@linaro.org>
Date: Sat, 01 Mar 2025 15:13:26 +0100
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Sun, 23 Feb 2025 13:55:59 +0200, Ivaylo Ivanov wrote:
> pll4311 (also known in the vendor kernel as frd_4311_rpll) is a PLL used
> in the Exynos2200 SoC. It's an integer/fractional PLL with mid frequency
> FVCO (650 to 3500Mhz).
> 
> The PLL is functionally similar enough to pll531x, so the same code can
> handle both.
> 
> [...]

Applied, thanks!

[2/3] clk: samsung: clk-pll: add support for pll_4311
      https://git.kernel.org/krzk/linux/c/f33807c30664d2b134ba17f2ae0740acbe91986a

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


