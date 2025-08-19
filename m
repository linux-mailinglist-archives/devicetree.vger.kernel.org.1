Return-Path: <devicetree+bounces-206322-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 87805B2C0D7
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 13:46:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 1619816BB90
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 11:46:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D337632C32F;
	Tue, 19 Aug 2025 11:45:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="lv9lj/cX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09AEC326D6A
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 11:45:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755603956; cv=none; b=imL7GPefdeonafYa3OwPBk1p0iG3kuV2Kc0gWBvUI1fDTMQIixJlsH/rKb1GQ5PZhUR1ChF4JLe62c8iNfOBzVSaoSNDiZ49bjmsIJr5otK2bOeqbdefrJ2x+9DT9fekhV795bik/bUEc+ZpxgdbixEfnI5/C2Q0p0ZQNhL0uYg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755603956; c=relaxed/simple;
	bh=atHOVDZrHoC4KUAzLF3V2ExuFabINMR3JpSKKqoKhGM=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=n/bdK2EPF2g/SsLkt3vS/5jJW+Pm6YKRHod+kUOlTm9BZBkSIvBidQboLtxDL1KNIJC+50Q5LFtJ3s3d0C2gKmKU7FvESNHhMmT/XIUXAdTjdUpzgIEkk7i6rT7j/io2FRyCU9VjqQFZ0txqwpHLP6xgSUIhTlLCLfKJ/HHgtDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=lv9lj/cX; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-45a1b05ac1eso25859025e9.1
        for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 04:45:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755603953; x=1756208753; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9mI1h+BmNbILdGpeniKvEeoyTFz8pMoc//wK6fMdn9Q=;
        b=lv9lj/cX2UXwsb1R9a98hQn+oJ1MDC6y0tX8Ws3JMNdkTzaDJi3Hj8e8Lzk/KL5Jr1
         LEZMITgWLiGdxcKqWWUMy6XgkmDFabymAggbcEuOlmgxR/IL8pSIHKrjRQZM51mJa0qX
         bfWN77WiHAWVctXeQbBov1X6Q/9VkYTPxZt+Ldne96kVPSevhw1TXlmJU0wSb0eC+KGJ
         KSzVKGitGeO9zfnp+67ee9OmaJSwHuxfjKR7wpCsnco3xNqOkDJEDW42igYYIScXQwgD
         JeFW6ucAe2OI0POn+nvUVVJ/OClejf7g0cZ/OR/d0HBuRbQfkrkWh7vM61UcXQeFjzLq
         15fQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755603953; x=1756208753;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9mI1h+BmNbILdGpeniKvEeoyTFz8pMoc//wK6fMdn9Q=;
        b=LALhp3EqF2PSr5iaEzggVcugaZf5LeWbMUNmp/FptquF8t6tLRCuUW/6xUpDeW33kj
         qsDF4drssIgzSPNNUS5zRZtcSDciU6LtC+NRQIZL5VD5Db3oLL2hiQAxJTjDO85trIn8
         gTOB9B+bBQLojuJm5NY1DMA6WAZKQTRLdkgeWfxQZrCZAo3cHJPLc57XFCdAstYc04AH
         LQpHoTK+kQvwqCLPuf7rcvyYwK0ZMNynwjGSf4f+sF+n/GLt3SlyRmrfWGvCmRFfmcL2
         7WWR7gs9F67QS3CkNaX/J1ZHnfblPnY0cuMq9QvaI9je9P266iTugo8JmR9t0WbrxUHo
         Xhrw==
X-Forwarded-Encrypted: i=1; AJvYcCWLckkUpyPkgxJDO9hTlRvbcbxnD+AscREFHkn7siQl1MYySzHzBNnho27ALuxRJjTM8P0BiL19+t1y@vger.kernel.org
X-Gm-Message-State: AOJu0YyuOiecAHiHiW7sTQ3fkCCD4DpEFWyrZLPne2Rfzp927Q5AEen2
	NElyw3uz6JHZGOJkTqalhcPPWgzMCnbxbe14KdQr+S2zhJ4z0dlH3smt8ehvs4WP4gA=
X-Gm-Gg: ASbGnctynZPr4YdK4pHBRF7w87Ea3hLd8QJWEFUjDPE18MVj6UFICrdBkvWjLJTccFa
	useNMAD6UIVvnXMwPhnauAK5RkN65PAUp/opSewrcGO62rnqvwRIeidVGnirml5v4oXuKDGAKpZ
	SnHwASbgn9Hb3gaUirkEMrZP7JvNv5kjnwGh8Ety8v1bsSvOiaPlUfl1t9NidWQHa1tF372qGRY
	/p7FsdVWqK9qcYH4UDySaHOAWS5t7K/ZeWNcXcS5fGoA7Bh9jbpWddKd15umWVhcsReA1d+60PG
	TIUxPQk7V6Bm9EaJxHPH13wjxY2QMxjDo8bRXZfiEGpjYO84XEqS7X5aPkwRwsO/5W4Iu1m77OW
	p0dKWHhn3GD9qusYm44re6DHFyiLQi2BmBajgFqCVbUwxscbRVhKEK9SGQKZ7Gv52qL20We/tNm
	qVOQ==
X-Google-Smtp-Source: AGHT+IEnwmvW6IIY3fHtQYIYoD1wKmz1nhv91N571YRo5fDdb1O2yoXT6VRpNYHi8x8OdTISvstKRw==
X-Received: by 2002:a05:600c:3ba5:b0:456:2698:d4d9 with SMTP id 5b1f17b1804b1-45b45374caamr14002615e9.3.1755603953268;
        Tue, 19 Aug 2025 04:45:53 -0700 (PDT)
Received: from ta2.c.googlers.com (245.92.187.35.bc.googleusercontent.com. [35.187.92.245])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3c077788df7sm3430817f8f.48.2025.08.19.04.45.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Aug 2025 04:45:52 -0700 (PDT)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
Subject: [PATCH 0/3] exynos-acpm: add DVFS protocol and clock driver
Date: Tue, 19 Aug 2025 11:45:35 +0000
Message-Id: <20250819-acpm-clk-v1-0-6bbd97474671@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAN9jpGgC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI1MDC0NL3cTkglzd5JxsXSOLFKNEc4tUA2MDcyWg8oKi1LTMCrBR0bG1tQD
 TV39kWgAAAA==
X-Change-ID: 20250819-acpm-clk-28d2a78e0307
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Krzysztof Kozlowski <krzk@kernel.org>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>
Cc: linux-kernel@vger.kernel.org, linux-samsung-soc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-clk@vger.kernel.org, willmcvicker@google.com, kernel-team@android.com, 
 Tudor Ambarus <tudor.ambarus@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755603952; l=1667;
 i=tudor.ambarus@linaro.org; s=20241212; h=from:subject:message-id;
 bh=atHOVDZrHoC4KUAzLF3V2ExuFabINMR3JpSKKqoKhGM=;
 b=h6Bb36OJtt4jZDYOdwe5maGI2bcHWggh27JZXK/hNIDehiPXcAddUEhsj/76QM7GPPUeu3kqb
 jydYZwKtvyDBk4+2SmWwopkALIvvL42OrRHIifDVPAm8txJvXd+GSM0
X-Developer-Key: i=tudor.ambarus@linaro.org; a=ed25519;
 pk=uQzE0NXo3dIjeowMTOPCpIiPHEz12IA/MbyzrZVh9WI=

The APM firmware exposes clocks that are variable and index based.
These clocks don't provide an entire range of values between the limits
but only discrete points within the range. The firmware also manages
the voltage scaling appropriately with the clock scaling.

Add support for the ACPM DVFS protocol. It translates clock frequency
requests to messages that can be interpreted by the APM firmware.
Add an ACPM clock driver to model the clocks exposed by the APM firmware.

All patches can go through the samsung tree.

Thanks,
ta

Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
Tudor Ambarus (3):
      dt-bindings: firmware: google,gs101-acpm-ipc: add clocks node
      firmware: exynos-acpm: add DVFS protocol
      clk: samsung: add Exynos ACPM clock driver

 .../bindings/firmware/google,gs101-acpm-ipc.yaml   |  28 +++
 drivers/clk/samsung/Kconfig                        |  10 ++
 drivers/clk/samsung/Makefile                       |   1 +
 drivers/clk/samsung/clk-acpm.c                     | 192 +++++++++++++++++++++
 drivers/firmware/samsung/Makefile                  |   4 +-
 drivers/firmware/samsung/exynos-acpm-dvfs.c        |  85 +++++++++
 drivers/firmware/samsung/exynos-acpm-dvfs.h        |  21 +++
 drivers/firmware/samsung/exynos-acpm.c             |   5 +
 include/dt-bindings/clock/google,gs101.h           |  15 ++
 .../linux/firmware/samsung/exynos-acpm-protocol.h  |  10 ++
 10 files changed, 370 insertions(+), 1 deletion(-)
---
base-commit: c17b750b3ad9f45f2b6f7e6f7f4679844244f0b9
change-id: 20250819-acpm-clk-28d2a78e0307

Best regards,
-- 
Tudor Ambarus <tudor.ambarus@linaro.org>


