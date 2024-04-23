Return-Path: <devicetree+bounces-61910-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 946598AE980
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 16:31:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9890CB235BE
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 14:31:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9D57C13BC12;
	Tue, 23 Apr 2024 14:31:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YnGPfWC+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f50.google.com (mail-ed1-f50.google.com [209.85.208.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9B6F13BAC7
	for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 14:31:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713882670; cv=none; b=nfsWKv3u7fk8VlvSjFteSa3tjcdC4RdzUYBIhIk4zjfca2iMhHweMPwcB+2XSfiVy0nSh/m/M42GQpF1VJVHVqDGNzIJWAhFvieyi6MuNno8ZfhRORrC2nlahSXaS7mcI4Hl9mzj8/3woyfo1N5mUwbe6fWS/9OWrXVyaZ7O+Rs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713882670; c=relaxed/simple;
	bh=+YH2zKNvfrQqZ4esdPy7vnvlXDgMvu54ag6LcGuFPeM=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=RDX1lkGNsWihdU3lHan84Gs9M9tacLQ9XoqBadw1u+b3jg/Z0gxQxy0E0d1ggGubHgEoHe/D8xW/AfzYCmsrw9GPLSmPWmZq5OUpIF9ttxKL/bz4jXbdPelcoggHs3wA9jxNW1KfjshN0kj4dfx/onSoGg/10ShgqrrNRiV96q4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YnGPfWC+; arc=none smtp.client-ip=209.85.208.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f50.google.com with SMTP id 4fb4d7f45d1cf-571ba432477so5641240a12.1
        for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 07:31:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713882667; x=1714487467; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=XN7XhWrqCld2WJI0opNRnIm5kxokt1XlrZPOr6Jx6ao=;
        b=YnGPfWC+2NdbGvd4mVAJkhLCmOljC/PanI2UqKNrEGphf6/XHH3u9OtJlD6zPb0Dbd
         B5Y9R1Sacn/HjpsvjXyGQGp6T55Piei4zm/d9Elnpfdn51kRsbSM8h8cmIN6yE9jSD65
         6JeTgAhUhWf+LXMhGnsNzTZkl2O1/Qxr4+M7lhvJJ3HinU/bPPPa7XfssMRkLB8MCRy7
         jsq9DgeIu4vAIGKnG9FXJZGc45ddk1jFUakrKWDbCJ7Dh/5UheXSYaGEHpe0hGtG0bXD
         ld2r35Sg+rZkRHESWVlOTr3e/qFWtjZ8NVbmWQxjyiomdzwswA9eTYkffFXe3F5V4n4+
         1K6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713882667; x=1714487467;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XN7XhWrqCld2WJI0opNRnIm5kxokt1XlrZPOr6Jx6ao=;
        b=ZAbK+Tzg8w9i67fUnl25v+xuqkByxYuxoAWeS9ToAopCjxtmWpEn02txq8j8ppoC0f
         yuiESn5NtjKagv71dfrtX8X67NF1v+95AhEg2uNBz5VhALy7CFsuxznHnw3jD9hFH7Rv
         oIeDb7Eli2bQlNv8u//wCgR5ISlkFmF/dYufiggTbIQ31ktJpfK3FvG4nI9ZMn7YtXhK
         U9jL2jIThGCUXmelL3WDTBk8KUVgmH5r+Du1CPEGbkgPpN3J6YQj4GtWfXLbmLpRwfHD
         mSppPGKIt6tUjmv4U4/oE5U5x3sFIuud66LFQk9Qa0clT6DA4LoZZBZ8uwwd8Qmuu7Z8
         rGrg==
X-Forwarded-Encrypted: i=1; AJvYcCWjMr8qT4p9fBXKujrpZLTSyihjScdrTmVQuaW0AFgybiFmHk6KyuqSn5jw1C0bM14UU0TUUlowz8U/dfFbsOEjk1dsFlhxHlMYKA==
X-Gm-Message-State: AOJu0YyfcH50oUc4lPGzWsNmrPvQgSF+mgNI0kyxNiNUK6i8zdr4AFHP
	EiHKwKi4IGMQfxCjF0r0d2qgRUORq6BNGi6cqLA4zlVb0z2n4hNBOt+F9Eh1aR0=
X-Google-Smtp-Source: AGHT+IFkVnrNX1IDHUGi9HUaySI3oc05M9oUsQt/QaI7SlEvCuUbmasv5YX0v5fmV1NffjKybeOPCQ==
X-Received: by 2002:a50:9ec1:0:b0:571:b9ac:ff2e with SMTP id a59-20020a509ec1000000b00571b9acff2emr8291625edf.26.1713882667324;
        Tue, 23 Apr 2024 07:31:07 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id fg7-20020a056402548700b005704957a968sm6708099edb.13.2024.04.23.07.31.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Apr 2024 07:31:07 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Subject: [PATCH 0/3] HSI0 support for Google Tensor gs101
Date: Tue, 23 Apr 2024 15:31:02 +0100
Message-Id: <20240423-hsi0-gs101-v1-0-2c3ddb50c720@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIACbGJ2YC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxMDEyNj3YziTAPd9GJDA0PdxERzcwtjM8OktMREJaCGgqLUtMwKsGHRsbW
 1APtqc6pcAAAA
To: Peter Griffin <peter.griffin@linaro.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>, 
 Krzysztof Kozlowski <krzk@kernel.org>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Chanwoo Choi <cw00.choi@samsung.com>
Cc: Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 linux-clk@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.12.4

This patch series enable thes HSI0 (high speed interface 0) for gs101. It
feeds the USB block and is a prerequisite to get USB working.

The parts added here have been verified to work OK without the
clk_ignore_unused kernel command line option.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
André Draszik (3):
      dt-bindings: clock: google,gs101-clock: add HSI0 clock management unit
      arm64: dts: exynos: gs101: enable cmu-hsi0 clock controller
      clk: samsung: clk-gs101: add cmu_hsi0

 .../bindings/clock/google,gs101-clock.yaml         |  29 +-
 arch/arm64/boot/dts/exynos/google/gs101.dtsi       |  14 +
 drivers/clk/samsung/clk-gs101.c                    | 468 +++++++++++++++++++++
 include/dt-bindings/clock/google,gs101.h           |  54 +++
 4 files changed, 563 insertions(+), 2 deletions(-)
---
base-commit: a59668a9397e7245b26e9be85d23f242ff757ae8
change-id: 20240423-hsi0-gs101-aa778361bfaa

Best regards,
-- 
André Draszik <andre.draszik@linaro.org>


