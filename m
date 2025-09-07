Return-Path: <devicetree+bounces-213947-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id BF854B47A04
	for <lists+devicetree@lfdr.de>; Sun,  7 Sep 2025 11:14:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 8264C7AA973
	for <lists+devicetree@lfdr.de>; Sun,  7 Sep 2025 09:12:59 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 51F362222B7;
	Sun,  7 Sep 2025 09:14:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lVJ+pxA8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f41.google.com (mail-wm1-f41.google.com [209.85.128.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81BAB221558
	for <devicetree@vger.kernel.org>; Sun,  7 Sep 2025 09:14:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757236451; cv=none; b=jgCnrokuH0by5I97Ww3mq8Vae9ZrY79DKR8bJNp4MogXxZEzYWsosgV/riD5z8gZL/a/NVmcRPmMXYJFeno6i8iubUCsZWe2QoFZLWAQwOdOJOp1UQQF6MOpnkZjOcSkj2TiyfiUfXcyaqJnjjNkiGvu2YJEws+U4EFMWabnmCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757236451; c=relaxed/simple;
	bh=nTtz/T80B1LFaBzGfFaobq1k9YIb/4LmaRP6eS9C8A8=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=CdpyrzWB1QFqXk7EcerOzEDHTHNEHPlrqJ0px7Ay+UKywe5eXyltzD42SMi/6tkJYmAxe+e6qLh3Z4LrYslpO31q9d8dJ6l9X6/dfi5nDw3j8OXybLVTLMrxlLxrYktS+LDmMqoWYY1g0xpD9PNRHBSGQPuztiwR4sgo+f9Se4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lVJ+pxA8; arc=none smtp.client-ip=209.85.128.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f41.google.com with SMTP id 5b1f17b1804b1-45ddfe0b66dso1583475e9.3
        for <devicetree@vger.kernel.org>; Sun, 07 Sep 2025 02:14:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1757236448; x=1757841248; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JCLQAsYpR6U6YXx5WXyyNz/et5qkwEIQ90qwDmcTRHU=;
        b=lVJ+pxA8WdsapeRIjC97ax0YT6KggfLwHY9NlqpaSJbTiyPfFs2m/jbADXLXjiDza/
         iNQD25YkPwErRPW0iQJxrSaHY24CBMNxhMzYeocADPNS/Qjk/P7ifWLB2U2KDALEMyUc
         zzq0e7b5pdPgByPMjE/fqcp/sAjpqRv0BrO3uzJWjSdzCES1V38iCPGC/+6t5ZNLtE0z
         tSw6cP8rEOmAlg5k2173Mn7jHJEAVCqjHQEp6UJKjcBn7fp4gkMreE2D2ThMR9lGGRVW
         ro8IMP9Akul404Zo06eyOgBea8vYFrwAY4Zw2ZN0pPQ7KNmEBUrKcWrZCJuqeT3AU0d7
         HgTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757236448; x=1757841248;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JCLQAsYpR6U6YXx5WXyyNz/et5qkwEIQ90qwDmcTRHU=;
        b=TbAlTBtZ6Ft3qt22VrM1v1TwpVmKb/4KgHnvdPKfdoGelJNQO4/OaUYDvNmlYsme+q
         p46iBFJhgFh8Rdef6W5qLgmRpdpxRhCW/BFg73S8nn7AfAHRLa2rcxyuiGnpwOKK+gBU
         5Flr2+bfgIe82xRkah6k1B+hKcL9o0l8k0er2taGAy759Eyn487fvP+Rk8MeaU9MvMvC
         ZLp6wbckDRWNYVbV5/RJ7w77xS8batdrx2e6Kwo3juYhOt35/A7nRjIq/jRvpdSj6JKH
         v+JDtsb/qjz8k7hzP3yQiCdyU0XzX2FT0eNOj2IAQmGJ9CV2dEA78SphZAPIvhVQKP+r
         +qoQ==
X-Forwarded-Encrypted: i=1; AJvYcCUsEXqGNWqNj9rH+GJA25lwjRZBaR2cXhS4TNv6eksB1eDxDENVl3V7WvKZDAcBbNGmkMGtHKY8I1Ly@vger.kernel.org
X-Gm-Message-State: AOJu0Yxxtd6+P3g/3wZK74woc/gq7jgZPuKTamBuJQJQxF8yYTVLDKAz
	NQDjHESpF6ys7L7Tr/b2Jfdfp6tm0SJ/IX7kssups+karq5nAbb55C18v56ZwsgU9C8=
X-Gm-Gg: ASbGncu2F4gDPA0IB+NNI6GgBLTo53BXhNjcECvkdKdYEnnTqTOBhc6YwGJemPPfE3M
	uMOnJ/6FtNw7NwXViX0PeTRragWx/E4LkbhemYTVk2WZEBYPLCqWQ11AmCRPnkBHA2pjSqXN3qA
	JsImb9cNTiZnuWrvuQ0Le0ZXKZB0Mn0WnP9Xp7CXTHAXtsy474tlWNI118PmrBZ/fSk7LAyn+wY
	Nfz4ZLqcbjy4wk0EE3xi+TiemlfaAdTCVI8zbgXaM+L+NYyhv7wTnMpdKc9oY7ptRmak6dB7wpf
	zrdCrgQ0DUiuvv7ncjLWfRuCIOAxwiwBzU1Cpyhp/r1w3Qa3f5Fb3QB5mX5PJt6Y3psERVAvOa0
	rY/IWtTsZvE73etJ7XMJt+6YTWKfjHxymkmzjY0k=
X-Google-Smtp-Source: AGHT+IG78HXO5H3PNHPON4QM2B7kxOdyJOW/vdjAFNFZeNRnZqCYRuJ044SQo+Ov8yokKCplK6e9pw==
X-Received: by 2002:a05:600c:6388:b0:45c:b565:11f4 with SMTP id 5b1f17b1804b1-45ddde84ff1mr18221295e9.1.1757236447894;
        Sun, 07 Sep 2025 02:14:07 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e21e4c0e6fsm10918962f8f.17.2025.09.07.02.14.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Sep 2025 02:14:07 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Krzysztof Kozlowski <krzk@kernel.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Igor Belwon <igor.belwon@mentallysanemainliners.org>, 
 Andi Shyti <andi.shyti@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Denzeel Oliva <wachiturroxd150@gmail.com>
Cc: linux-samsung-soc@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org
In-Reply-To: <20250904-perics-usi-v3-4-3ea109705cb6@gmail.com>
References: <20250904-perics-usi-v3-0-3ea109705cb6@gmail.com>
 <20250904-perics-usi-v3-4-3ea109705cb6@gmail.com>
Subject: Re: (subset) [PATCH v3 4/4] arm64: dts: exynos990: Enable PERIC0
 and PERIC1 clock controllers
Message-Id: <175723644648.30719.8043699953915235210.b4-ty@linaro.org>
Date: Sun, 07 Sep 2025 11:14:06 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.14.2


On Thu, 04 Sep 2025 14:07:14 +0000, Denzeel Oliva wrote:
> Add clock controller nodes for PERIC0 and PERIC1 blocks for USI nodes.
> 
> 

Applied, thanks!

[4/4] arm64: dts: exynos990: Enable PERIC0 and PERIC1 clock controllers
      https://git.kernel.org/krzk/linux/c/44b0a8e433aaad8aac51593a052f043aeb9a18d1

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


