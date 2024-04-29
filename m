Return-Path: <devicetree+bounces-63708-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id C5FE58B601A
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 19:30:39 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id E91B11C21F30
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 17:30:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DADE7127E17;
	Mon, 29 Apr 2024 17:30:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="LyfmSKZr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C82F127B57
	for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 17:30:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714411811; cv=none; b=Z1J6W0HEmUjlU98XeZmMV+qfgGn88jf0JxQX4I8fc4uBumi+3HV8JCJGJCNsm3ezPm1I5oJvU9X2M6sjxWlLd+aPoYMFnt6p7wkirGnduxng0kUJ8d53wNDdanwtb78AVF70ZhFP28qJLcFi2mm3Ey7GZly8Mz55+heVNTQ4ODo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714411811; c=relaxed/simple;
	bh=cRkiJUAPzdyGSuRp9yfhNiMROQ+tPMAI9gPTeFbgk3A=;
	h=From:To:Cc:In-Reply-To:References:Subject:Message-Id:Date:
	 MIME-Version:Content-Type; b=kYLHBD3BbGnXLObyzRTovDY8+nHLFT9/KRotUVuBErxyIabJ3T5kZbYXJzWuPAePcphTOYetk0i6Kbz3ueYerL3mlbDbU20nf2I7FGwEcvDp+rRGIjkqXsBCab9hYk5DVZ8oagN9rebcEXjUFUWMZhaOTDJqJO8L6Mu5CkLzD/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=LyfmSKZr; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-57225322312so6389897a12.1
        for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 10:30:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714411809; x=1715016609; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=lKhKqy5/7Ei/RZU9HCv/MdOytLVhH+m1/UF0NQoH4no=;
        b=LyfmSKZrguyPWiMWiEJeS7vRhuXQCRkaOUH/ixA8lUONKjsQOlApj/nZ0VFEa3UwkP
         hDqPqT/ykZRACgQFUr4K1xvePKew/dDCkRzIaVnYoSzSjXPnYszXvUQK6w15pmHMc9jz
         UTpSbBFld4Ux0XPR4MBkJiK/9AyV+JZKtib7+LWaLV+LQTdCGJuzTzMrXm2VSRfyBDdJ
         c1OtYOy1isY9t9Et7WM+pY82uX0FXVMMl9sAMlrXvrLHe0Jx8v7XubFojSG6LdOqj4ZU
         LZb7+Px3a+Mo+qplSk56c2g+iXhNmJS+3Al5rNMPcF/1ssE+H8iDJrqqM/Mngy0XH3l8
         0LRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714411809; x=1715016609;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lKhKqy5/7Ei/RZU9HCv/MdOytLVhH+m1/UF0NQoH4no=;
        b=L1K3LSgJ2VpoQcrs8DLExrgHXpWU41jL6GHWAfA8Uk/uwqBfSwjEOEM1ikYf5UQ/jf
         Av01SK+ECbttBkvIsC7pILzYyr6lMEmZdiVGoIbGYv8Mt25vw1V8VqDZXOBKKQeeGlqh
         UGG57F99ZxElQ6r8/u8JebxWkYi3kkfWUrYSXOro9DzjlN3dtPkXvdbjThPYJ7s1l6Lb
         5PTUrcxggq6pA+tQnVKNL6tnF9TR7CeDpNojpbeqffp+rX6yAO1d+5j86tDFoncWlJJO
         17NiNyc5tW+Ty17pqe4Zs9myCnfRxLNQPaIqt7ndnuc84YlPIYQpBWa8l5CaMSOWXXKu
         TloQ==
X-Gm-Message-State: AOJu0Yx1511DNTasGaYrWlYHV0vaisFwGmy1TOyH+HbTWnn8AD3VzlQZ
	R+BjlQjBLdP8rQi+RfL5wL3cQEGLxL0uOWlFXvAC3vH2si/4EQMH1wWEwlHBcqo=
X-Google-Smtp-Source: AGHT+IFMCwYKqThp3mwiSf+4+XCuztnSTcv7W1qMoW81GVcGEYxjbTiZBj/6VWTRdTIMLOWAQTjavg==
X-Received: by 2002:a17:907:1b16:b0:a58:725b:a021 with SMTP id mp22-20020a1709071b1600b00a58725ba021mr9532292ejc.15.1714411808790;
        Mon, 29 Apr 2024 10:30:08 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.223.16])
        by smtp.gmail.com with ESMTPSA id x10-20020a170906298a00b00a58ed644d6dsm2770173eje.127.2024.04.29.10.30.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Apr 2024 10:30:08 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: robh@kernel.org, krzk+dt@kernel.org, conor+dt@kernel.org, 
 alim.akhtar@samsung.com, Peter Griffin <peter.griffin@linaro.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org, 
 tudor.ambarus@linaro.org, andre.draszik@linaro.org, saravanak@google.com, 
 willmcvicker@google.com, kernel-team@android.com
In-Reply-To: <20240429111537.2369227-2-peter.griffin@linaro.org>
References: <20240429111537.2369227-1-peter.griffin@linaro.org>
 <20240429111537.2369227-2-peter.griffin@linaro.org>
Subject: Re: (subset) [PATCH v4 1/4] dt-bindings: soc: google:
 exynos-sysreg: add dedicated hsi2 sysreg compatible
Message-Id: <171441180684.306855.6625584588248689841.b4-ty@linaro.org>
Date: Mon, 29 Apr 2024 19:30:06 +0200
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.13.0


On Mon, 29 Apr 2024 12:15:34 +0100, Peter Griffin wrote:
> Update dt schema to include the gs101 hsi2 sysreg compatible.
> 
> 

Applied, thanks!

[1/4] dt-bindings: soc: google: exynos-sysreg: add dedicated hsi2 sysreg compatible
      https://git.kernel.org/krzk/linux/c/6d1434a7d95939d21cf300f73040e3e6a02e84f8

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


