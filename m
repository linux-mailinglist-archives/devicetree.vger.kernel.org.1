Return-Path: <devicetree+bounces-63613-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 67E268B5952
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 15:05:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1C93A1F22134
	for <lists+devicetree@lfdr.de>; Mon, 29 Apr 2024 13:05:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 952D373173;
	Mon, 29 Apr 2024 13:02:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KdITw+wm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C32646F061
	for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 13:02:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714395753; cv=none; b=jZYO3gQH2Mc/VEve49cVd89HX2dW9T0LPth6eF3gQyI2UsWkDLMVGtrfTSkB/JuPZ9bQSHA2GC1BNw7l0eHxl9up9mxvdONy067M+lLsUacVjhGJhfzStZH62cuBvzxIGFmRgLgDMplD0ryprDgQGI50bVjKsKi7rjbZjbfh/hY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714395753; c=relaxed/simple;
	bh=vZpR7m7Frapq/eUfEPgB6QGB4p1PqtXPlfS7j+Aqdqk=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=NNr6wuNzDqPIvn/IKjWBETj3VJnB1uFmXGBjy6e2MfwHpHKNfca++LbH1cMzstcgMp90hW3OEsIi0+C8DV6uM57uG/1YNJLr/W4ykO1k3jyuywbrAGDEFUz6YrvwiqQwqua4eZVB8zkfYqyL0UdYwZlSvpfeDcmCndiqxZzfi1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KdITw+wm; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-a58e2740cd7so340342066b.1
        for <devicetree@vger.kernel.org>; Mon, 29 Apr 2024 06:02:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1714395750; x=1715000550; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Ogo3L1JklJSYYhpVNqxf6VY7w+66Me1qoHniLda2rEU=;
        b=KdITw+wmF2FLuEFvaDJ5wPkkt7P2B/up+Dm3O5qjibIG345nNH/VWNMlf1okIC9QQw
         Sylsp84z/SCMO2cEy0f3y3FTBIFA5YXz/eLHwc6YvMu6BAES2ikv+xdTC/fwFpoqMrr6
         rpySdLE05pmpXZn7pQQvHOHHqhCrMepeQTkdwmKVQVwrme52BKEMmXX1dWeNt2ERWhyv
         OPue1ElUk80kVQwtPx/Voyc/K3woKwfbQiDv7DkWvgYUnWxn/S4ivFwsxQRyh/1xe29l
         QguQGhA2yZnAK62ueP0nLcVL0rtEz89SXr4+5oQJ6kLhEbF1eSi21vJC1IUQywG46BMO
         lY9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1714395750; x=1715000550;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ogo3L1JklJSYYhpVNqxf6VY7w+66Me1qoHniLda2rEU=;
        b=t1JJPP3VRMEZhuhDeIYe7yeX0e09yB37zM/qd3kfhHZGPn6gt0EDdseBpS3LvQdDqL
         Hd00leNSJpqDHgRfYRnDwIFDJ1PZNKZeJTGA1JHMsYLTx/BNxqLyiroGdp1HnQRy6BSa
         JAe63d4fmDt8oko46ylYtA3NHtcahbSK0CttWmY+60J/EZ9y+jrk/IrrVBU7wcINSOwi
         mQZYvrYrbP8EDaweZzXbCDQjFSvzZg71AUeE0JqnzllU5NnirlerER3LnyRUeFw1u5IF
         mZpwuvBfZYTMdeHVvMPlCkG67P9srv6qDBh8LowDtHYaYyFUMBxqL5GTqZ52w3KL2/4A
         SDZA==
X-Forwarded-Encrypted: i=1; AJvYcCWW1nHmUh5zSqBaWA8j/8FVakLRAqDLvmv5ALKGBJlH63MAKlbw92pUoqQ93F41+zuAlMrsp43wJPcy8dOXjLuLysBpw2PVX0PlsA==
X-Gm-Message-State: AOJu0YxrpSSMkGSFNlUQAAz2UiFN0K9TsG7HMny06R1s/CbHcwdhqYJL
	07Erb6EO6F4uulvoWcBvAmi/ouG5Gp8rC0g0R4L8kfELM0Ykq278Gu2pX21BC8M=
X-Google-Smtp-Source: AGHT+IGHhf12WYBtN3Oqqbi5rMXCmEiK5wGhireFLP3cm7o9zO82fZWwtzHKExEGBj0AxAdjElja8Q==
X-Received: by 2002:a17:906:4815:b0:a51:abd8:8621 with SMTP id w21-20020a170906481500b00a51abd88621mr6553751ejq.19.1714395750052;
        Mon, 29 Apr 2024 06:02:30 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id dk21-20020a170907941500b00a55aee4bf74sm9976074ejc.79.2024.04.29.06.02.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Apr 2024 06:02:29 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Subject: [PATCH v3 0/3] HSI2 support for Google Tensor gs101
Date: Mon, 29 Apr 2024 14:02:16 +0100
Message-Id: <20240429-hsi0-gs101-v3-0-f233be0a2455@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAFiaL2YC/23MQQqDMBCF4avIrJuSTNRIV71H6WI0UQeKKUkJL
 eLdm7iq0OV78P0rRBfYRbhUKwSXOLJf8tCnCoaZlskJtnkDSqxljVrMkaWYopJKEBnT6Vb1IxF
 k8Axu5Pceu93znjm+fPjs7aTK+zeTlJACB21t38jBoLw+eKHgzz5MUDoJf217sFisaoylrm+10
 we7bdsX8bKcUOEAAAA=
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

This patch series enables the HSI2 (high speed interfaces) for gs101:

- HSI2 feeds PCIe and UFS

The parts added here have been verified to work OK without the
clk_ignore_unused kernel command line option.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
Changes in v3:
- Drop HSI0-related changes as already applied
- s/ufs_embd/ufs and s/mmc_card/mmc (Tudor, Krzysztof)
- collect tags
- drop my own R-b tag, due to SoB
- Link to v2: https://lore.kernel.org/r/20240426-hsi0-gs101-v2-0-2157da8b63e3@linaro.org

Changes in v2:
- My v1 just contained HSI0, but due due to changing similar areas in the
  code, I've also added Peter's HSI2 clock patches from
  https://lore.kernel.org/all/20240423205006.1785138-1-peter.griffin@linaro.org
  to this series so as to preempt any merge conflicts. Namely:
  * hsi2 bindings
  * hsi2 DT
  * hsi2 cmu clock driver
- drop patch 'dt-bindings: clock: google,gs101-clock: add HSI0 clock
  management unit' as already applied
- cometic updates to patch 4: 'clk: samsung: gs101: add support for
  cmu_hsi0' (macro name, a whitespace, subject line)
- Link to v1: https://lore.kernel.org/r/20240423-hsi0-gs101-v1-0-2c3ddb50c720@linaro.org

---
Peter Griffin (3):
      dt-bindings: clock: google,gs101-clock: add HSI2 clock management unit
      arm64: dts: exynos: gs101: enable cmu-hsi2 clock controller
      clk: samsung: gs101: add support for cmu_hsi2

 .../bindings/clock/google,gs101-clock.yaml         |  26 ++
 arch/arm64/boot/dts/exynos/google/gs101.dtsi       |  12 +
 drivers/clk/samsung/clk-gs101.c                    | 507 +++++++++++++++++++++
 include/dt-bindings/clock/google,gs101.h           |  62 +++
 4 files changed, 607 insertions(+)
---
base-commit: b0a2c79c6f3590b74742cbbc76687014d47972d8
change-id: 20240423-hsi0-gs101-aa778361bfaa

Best regards,
-- 
André Draszik <andre.draszik@linaro.org>


