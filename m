Return-Path: <devicetree+bounces-196368-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B95E3B052B4
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 09:22:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 012A45609D5
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 07:22:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2533E26FA6F;
	Tue, 15 Jul 2025 07:19:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="N+IexZZ+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DDA41C2DB2
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 07:19:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752563958; cv=none; b=MjOXeiP6Ppr3BULAcx8DwZqEBNPQPJe4skpZsQWaMF5tdFr1rW2Ftg4/VJSOPJ0VIMtQm33ZodezIBoqKYMgH2yMXgjK3t3NOiBtYitwhUzOvJ1GNXFoSWHqUUNIW5Z4Jark4JQ9rcS65Zc4lZFvsfrKY4BMQP8oXzfsWBFN6Xs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752563958; c=relaxed/simple;
	bh=7xd0aEtQAkfRhhfcCuzFJQNDslw5DAv7Mc2CrfAcRN0=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=W01+A/WkKD7mIWqEAxguYenuV5HsoK+lqWkcHPtU5E8OF2hyOWChajaPjUeQFXWfhYIlc9zw6vsasTuHgktl2t8xwSop9OQJaMl9EQVReVbZ4kWkyQ+tL3EATsbJqsfu2LP84HrH/9N1VGisev/ZzzmlxI1SDMECuQhz780v5SI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=N+IexZZ+; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-60780d74c8cso8421269a12.2
        for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 00:19:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1752563954; x=1753168754; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=rm5Emm3+mo6FT7qDpobA6G+QLjpbiKmx/DuT9aUyZyc=;
        b=N+IexZZ+4ZDdwqD7jT9PWyq4yxSo7i0qjS1RUrNObrH1yjQ8j0z1J6hqav/aVwYVWd
         bZhHsa484ndLqXHBySyq6xtAWps/kLEjLYg242MZIRxfg63AUww0pUucz9q3N9DOQ7L8
         RHcb8x9doqzERmxCamIz81p95SRka5RMt9zc1FQa9rZz4vowBCO0RjZlTbs6jg3LMuB1
         8vfPd1FAhhzRXNqbw5qLBRPKxFmmo8bfon9syTslDqM9+MvyDqUsoC51ravaWxmriISH
         tDxwszYTdsYUNHmMbQ+dICs/USKKvcbBBkb1oR2ZMeHcKRVzdYzbWcsex9lleVe6WcyT
         FWtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752563954; x=1753168754;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rm5Emm3+mo6FT7qDpobA6G+QLjpbiKmx/DuT9aUyZyc=;
        b=jvxNAFpaAzbEAEZuwJYCKnh+ylnoJkX9Pln+Werx889jDzu57qeei0Qa0C+CWKi5+m
         KxFuETpu5lgxuKKegFPR0BFjRqlWeBPnJIB5QrpTAz5ALoTSpfDZgljwPTGYJEvuiT5v
         uYl7qQmFtRWT7t2Mi4Y47F3nCxbrVHjGm4REA83bDt8+ZekNnL1bKZ0+zazQlcyGYDJM
         GOMXhtcyaIfjYBqJG1Ly5J+A1CK7wcMlva5IZn8c7Rhc7tyIxiXsA0FE0tG9pr7WrG4s
         0RZiim9cOJb4MpICzLVcPKz5gKhDdedZ5WOrk+SklCCl/ZhaTLLYCF4iYuWJBgdsuq5e
         qOfQ==
X-Forwarded-Encrypted: i=1; AJvYcCVtFGDaP/GjaiLoEeTGUPFCZKHteS11oJTTHwuLgSXPwM2sgZAc2bkSf3au8oZtowDhx5fa/xpql1kI@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1Qu1G1rDoc5+jYMN5utHZfEJyKjJQ5a8xuyixWjkkZa25LYVP
	EYsAV4dBIhqnp+k5n1i2YBwtCAkKcI/1fH5F7VXhM2w0rjmTM6i/2LKIv9eBauijc5w=
X-Gm-Gg: ASbGncsfdsv1GVkMSKSBkd1S5A2dFas4+xkjbBR6vl294cyoUNyQQFMRVOrUFh9UB9W
	R2XrRCj2DcIfs4+oU0cUe1ythgxIND8fJOnSsnJYXQ2i8yYHjWDKkpiWGaAjkM9xhHJFP2A06K4
	7ObypQoLa/P1mSjdSTFe4VKEb0OlvDhaTuRHXY/7MVJjdn82wTNueApnFsMe1qzQ32LSs//MC+r
	3FxdgTET40+QU4qB5mzaSQZ47b0F/z8+bft6/Z4f2kvErgKNDm5VPgP/BoVxYS2BZJgctNF6Zqb
	Cv6q0s8X540n4/AEhHkOIIdPMnoIBQrEyVdDtTbzIS9lfTKNEwMq1FQY0hsmixiaPK9cZ2g5BL+
	61JSmHDW6Pk0xJ34XEhfq4q8PlRIkGXvGFSIrSeYs9GoSQQp8fXkTAz8R
X-Google-Smtp-Source: AGHT+IFWv5NE2d8sdGkdncQkeDI14IZ6O0yr1kGNqs7F/kZQXvRGoaJHtyYP+E/Tt/FniiVadsE+bA==
X-Received: by 2002:a05:6402:280b:b0:60c:5853:5b7f with SMTP id 4fb4d7f45d1cf-611e84fdedcmr14210105a12.32.1752563953728;
        Tue, 15 Jul 2025 00:19:13 -0700 (PDT)
Received: from otso.local (212095005088.public.telering.at. [212.95.5.88])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-611c976fcfcsm6873715a12.66.2025.07.15.00.19.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Jul 2025 00:19:13 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Subject: [PATCH v3 00/11] Add clock drivers for Milos
Date: Tue, 15 Jul 2025 09:19:00 +0200
Message-Id: <20250715-sm7635-clocks-v3-0-18f9faac4984@fairphone.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOQAdmgC/13P0Q6CIBQG4FdxXEdDUFGveo/WBeExWQkGxGzOd
 w+11ublf87+b+dMyIFV4FCdTMhCUE4ZHQM7JEh2Qt8AqyZmRAnNSUEJdj0vWI7lw8i7w7yoqoa
 xspGMo9gZLLRqXL3zJeZOOW/se+VDukx/Ur6TQooJloKllAATJYFTK5QdOqPhKE2PFi3Qv8BJt
 hdoFCrIuOCSNBlv98K8HWjh+Yp/+u1KdBUOcNz3yteJhtHjr89iY/4AAyBdyyEBAAA=
X-Change-ID: 20250620-sm7635-clocks-7699d338dc37
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>, 
 Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752563952; l=3094;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=7xd0aEtQAkfRhhfcCuzFJQNDslw5DAv7Mc2CrfAcRN0=;
 b=KmiAwRrF46kq8Z+FNHZF8V3uDR/PJtSyyBbFB5IdRNtbQbIUP2wd9GkJXpI+T1AalV8GI5t2w
 R1B7ASszydUAs2ZkgTYNEhEtjExdyuNuaO/wJjC3p1oMr3TBNwAwyir
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Document and add the clock drivers for GCC, CAMCC, DISPCC, GPUCC and
VIDEOCC on the Milos SoC (e.g. SM7635).

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Changes in v3:
- Move dfs_rcgs to qcom_cc_driver_data (update common & gcc)
- Pick up tags
- Link to v2: https://lore.kernel.org/r/20250704-sm7635-clocks-v2-0-9e47a7c0d47f@fairphone.com

Changes in v2:
- Rebrand SM7635 to Milos as requested: https://lore.kernel.org/linux-arm-msm/aGMI1Zv6D+K+vWZL@hu-bjorande-lv.qualcomm.com/
- Use new qcom_cc_driver_data to configure e.g. always-on clks instead
  of in probe function, plus some other related bits from the probe
  function
- Add patch to support registering rcg dfs in qcom_cc_really_probe
- Link to v1: https://lore.kernel.org/r/20250625-sm7635-clocks-v1-0-ca3120e3a80e@fairphone.com

---
Luca Weiss (11):
      clk: qcom: common: Add support to register rcg dfs in qcom_cc_really_probe
      dt-bindings: clock: qcom: document the Milos Global Clock Controller
      clk: qcom: Add Global Clock controller (GCC) driver for Milos
      dt-bindings: clock: qcom: document the Milos Camera Clock Controller
      clk: qcom: Add Camera Clock controller (CAMCC) driver for Milos
      dt-bindings: clock: qcom: document the Milos Display Clock Controller
      clk: qcom: Add Display Clock controller (DISPCC) driver for Milos
      dt-bindings: clock: qcom: document the Milos GPU Clock Controller
      clk: qcom: Add Graphics Clock controller (GPUCC) driver for Milos
      dt-bindings: clock: qcom: document the Milos Video Clock Controller
      clk: qcom: Add Video Clock controller (VIDEOCC) driver for Milos

 .../bindings/clock/qcom,milos-camcc.yaml           |   51 +
 .../bindings/clock/qcom,milos-dispcc.yaml          |   63 +
 .../devicetree/bindings/clock/qcom,milos-gcc.yaml  |   62 +
 .../bindings/clock/qcom,milos-videocc.yaml         |   53 +
 .../bindings/clock/qcom,sm8450-gpucc.yaml          |    2 +
 drivers/clk/qcom/Kconfig                           |   47 +
 drivers/clk/qcom/Makefile                          |    5 +
 drivers/clk/qcom/camcc-milos.c                     | 2161 +++++++++++++
 drivers/clk/qcom/common.c                          |   10 +
 drivers/clk/qcom/common.h                          |    2 +
 drivers/clk/qcom/dispcc-milos.c                    |  974 ++++++
 drivers/clk/qcom/gcc-milos.c                       | 3225 ++++++++++++++++++++
 drivers/clk/qcom/gpucc-milos.c                     |  562 ++++
 drivers/clk/qcom/videocc-milos.c                   |  403 +++
 include/dt-bindings/clock/qcom,milos-camcc.h       |  131 +
 include/dt-bindings/clock/qcom,milos-dispcc.h      |   61 +
 include/dt-bindings/clock/qcom,milos-gcc.h         |  210 ++
 include/dt-bindings/clock/qcom,milos-gpucc.h       |   56 +
 include/dt-bindings/clock/qcom,milos-videocc.h     |   36 +
 19 files changed, 8114 insertions(+)
---
base-commit: b803ad80123e6efccfeeffa7cd37f98f642e37f4
change-id: 20250620-sm7635-clocks-7699d338dc37

Best regards,
-- 
Luca Weiss <luca.weiss@fairphone.com>


