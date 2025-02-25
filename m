Return-Path: <devicetree+bounces-151082-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D8DFA445CE
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 17:19:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 772313AAC29
	for <lists+devicetree@lfdr.de>; Tue, 25 Feb 2025 16:15:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 36878188736;
	Tue, 25 Feb 2025 16:15:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="o4EsVQ+K"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f45.google.com (mail-lf1-f45.google.com [209.85.167.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A858154C0B
	for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 16:15:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740500152; cv=none; b=DVFIbbWRQLcvCeZiXOMkbrFPaoNjq56/JVsqXjGn2fb92qZsVcxTc9ERPlk5erNRZYY9AL1sR3cB1UCrTZeXJXAp+LAA0YrHTXhAE9PpNTGOTcyI64RwhGt6ZEbAyM1UIrQ8lbryQz/MaIixpi/apFe4VBflR+urqStnsIWHARU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740500152; c=relaxed/simple;
	bh=qiRG4jZ6oRGcl3fPvlgBnVduisLVRerw1nnxQkq92fk=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=FpmW/i87ggwecemD8in9OMVTwPuvs8g6GYsKW8/e2QlP3y5FuzRMxzKakolwO6A7APUwUJ/cTPIFYwrwuWUcywdcSbDUaDIpxZXdtp/LqZoJs/iPu6+8G9v5+09NA2eoFgGLpdiFkDuRXA2P87XSP/SujXqQwFu6kuN6U6Zo+7o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=o4EsVQ+K; arc=none smtp.client-ip=209.85.167.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f45.google.com with SMTP id 2adb3069b0e04-5454f00fc8dso5416320e87.0
        for <devicetree@vger.kernel.org>; Tue, 25 Feb 2025 08:15:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1740500148; x=1741104948; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Z6QV46TQbbowuZaidKwQKybXS8KlFzTUfykk67zDNY8=;
        b=o4EsVQ+Kdx2rVS1vTH8ULPhnT73KzX0nbtevOuOL5pUrU6JZyH13vTINYrVaJ51jnv
         G7cU5gAcNYskSUJlHv6HJfGdhYn9urr9yJFqT0i47mxXy4zCylXbonpRcWuWHiczx7RJ
         lxUkLyfgopEKnCe980y4zlQuQSxuKHKlsrh5NyON2rYaeGxFBtObCeIrZp+NMa59VYPJ
         U2ml8EZeLKrnHA6nl0o6uRHhY3GHPz9S+3fVowNnDkVktgwVjiO04+aTzyrkyNMfpKvM
         nCCcvlylWiBMdgCzbIh1zjsWCyFDs4DfrZ8Ojr1Z6WCK5Cz33Tg5Ca1afTFhKjtrmis+
         70Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1740500148; x=1741104948;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Z6QV46TQbbowuZaidKwQKybXS8KlFzTUfykk67zDNY8=;
        b=XOg8bT7z8ei7v5hYHLSbWE0GmCslfJtN+bCLi6i5gZpNYLiQALZoV7nGldneV3Hdf+
         gBZmO3OKqYxHKpuvEpoOnST/1rm9dyKz/T35ag4TxLHW+aBVuKj467U3M6qRiJ/lsrpz
         ucqFHX98/Vu2aS096EjtAoOTTvJhS6r9nBr2QZRv4ecPMw1a8Fg/mjcYKsDXrlYYhtO0
         yCiM8rIj+BKNoVKRXSTsurLKAjxKnjXHwDlkKxev/EcGwKkqiaNzwwSpvN8rj2yIxyFm
         YhyZ/87kwc4XAN8/R0qgDO5UOCWPULxxIZp+BvYoHJKyfFnH+ULVCuL8aJ5ky5uV8Gni
         31cQ==
X-Gm-Message-State: AOJu0YzQNwlIk+cdA6oYfAA0BLbEinjQItzht/ZKFZuQxKv8REwexSG5
	Yh96owqyAt6FGPbgbf+3+RlR8+uCG8fCUJ5ybI5wFWzXERkezhR/DkY/n1+8eGI=
X-Gm-Gg: ASbGncsnCC25eiF85tDEJ+KvXDPcS1hMU7tdRaL3JOF25zVmGqelSh+yxJSANDC6s8t
	Tfv67L5eKJ5z+pw3Y9xn6zUyQVioCxhZ9HfOsVzHv+u/uS3gKltbO/ko58y9cXQZOfyNHhkPVgj
	TFCmueHfWVZTn6MGNd4P7hVD6byxLkusnbK19xB5LrAxs3ZRmfmLJJXKl7bg2R8W5AIPPGgjWUC
	rsh3scOx37iXn8TwjOCHeoBb1asf2KrO/FLEQnXlNIKMwIa2llcYhFxwrEJqMbtMPfOhDSzIVH9
	1545/3iWkPmkTmIHoicp7UTireF+Ck+t5jz7
X-Google-Smtp-Source: AGHT+IFn5GUKE31nP7tgT7niJ4SWR4mxLNvOZVrLeT7oIthbVOOg0Ui1M0Y4d9f4fXVVzIRrZZQBmw==
X-Received: by 2002:a05:6512:304c:b0:545:721:b7d1 with SMTP id 2adb3069b0e04-54838eefe80mr8602073e87.15.1740500148372;
        Tue, 25 Feb 2025 08:15:48 -0800 (PST)
Received: from [192.168.1.140] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-548514f512dsm212587e87.178.2025.02.25.08.15.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Feb 2025 08:15:48 -0800 (PST)
From: Linus Walleij <linus.walleij@linaro.org>
Subject: [PATCH v2 0/2] gpiolib: of: Handle threecell gpios
Date: Tue, 25 Feb 2025 17:15:45 +0100
Message-Id: <20250225-gpio-ranges-fourcell-v2-0-8da9998fa976@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIALHsvWcC/22NwQqDMBBEf0X23C1JRJv21P8oHmISdUGMbNrQI
 vn3RqG3Ht8M82aD6Jl8hFu1AftEkcJSQJ0qsJNZRo/kCoMSqhFKXnBcKSDvTcQhvNj6eUbdaK2
 NU/LqDJTpyn6g96F9dIUnis/An+MlyT39CfV/YZIosJdD7frWalG395kWw+EceIQu5/wFyb0vx
 LkAAAA=
X-Change-ID: 20250217-gpio-ranges-fourcell-85888ad219da
To: Yixun Lan <dlan@gentoo.org>, Bartosz Golaszewski <brgl@bgdev.pl>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-gpio@vger.kernel.org, 
 Linus Walleij <linus.walleij@linaro.org>, Alex Elder <elder@riscstar.com>
X-Mailer: b4 0.14.2

This adds some code in the gpiolib OF core to deal with
several gpio chip instances per OF node.

The change was prompted by the need of the Spacemit GPIO
controller.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
Changes in v2:
- Fix a speling error in first patch.
- Fix coding errors and documentation errors in second patch.
- Collected review tags.
- Drop RFT tag, this is for applying.
- Link to v1: https://lore.kernel.org/r/20250218-gpio-ranges-fourcell-v1-0-b1f3db6c8036@linaro.org

---
Linus Walleij (2):
      gpiolib: of: Use local variables
      gpiolib: of: Handle threecell GPIO chips

 drivers/gpio/gpiolib-of.c   | 126 ++++++++++++++++++++++++++++++++++++--------
 include/linux/gpio/driver.h |  24 ++++++++-
 2 files changed, 126 insertions(+), 24 deletions(-)
---
base-commit: 2014c95afecee3e76ca4a56956a936e23283f05b
change-id: 20250217-gpio-ranges-fourcell-85888ad219da

Best regards,
-- 
Linus Walleij <linus.walleij@linaro.org>


