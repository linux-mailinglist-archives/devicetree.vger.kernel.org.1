Return-Path: <devicetree+bounces-114175-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id B820F9AA046
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 12:46:40 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6F42B1F22B8B
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 10:46:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 233B119B3E2;
	Tue, 22 Oct 2024 10:46:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="QOLmngRv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C023157487
	for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 10:46:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729593987; cv=none; b=iJzNkTMTnRUvBZeONX3IpePHmyyZVAUWuYMPavNN740gr5pOmV/emk9R7v+JaaAvcNNk9eP+bepnogoNuNQFgwkEpBS7rmM03QIIvLqN+B7hmKbb6zhvrsYQQqs7PMJqtvgdYPWAXpyPKj1DnA6+XNMavyVYSz62jZpdNa4R5Vc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729593987; c=relaxed/simple;
	bh=7g7vQ5yuKO/HSCfrYWlV8Si3LPKtIuub+pj7PRO8uSE=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=bQsYwx6YQshpROSlNM+UkxtixAJrgcExy/+sURdV3pQDjvyRkzbCO2U1r+9N5eJ1qIrAvty1wnZvX4vLw5HliMOiITEWX52E4POx7YX88RMZGcRZPfiM+VotSLM3PcFcior/uc2nIFLX5x1CSGICluc9f+f3RmOYZklH4+0bzh8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=QOLmngRv; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-37d49ffaba6so3805300f8f.0
        for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 03:46:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729593983; x=1730198783; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=k0bUlmHe8yPfkbR2fBTcBcntzjqMjAxdwOYNlsKz7L0=;
        b=QOLmngRv6FEzdWdfPUh0x6wM4257WDLvfzh3DGKDUqxfAVDIsTUYGBCsa1WdWUV+QY
         qPZuhacjfRIAcrjyynyxCLjzvWq5M4bIA2ItQaV2BePUTyHhAXjx3VW512EvN/WeWmRT
         N9sa2ahg/tVM8CyQfWChkhZpErmEjxjpuB/k8Jh7x2fPAG2pm0UnMSp0jNxIElf6e4Xx
         EeFXhBCsuR/k4iOs2k5Q2DLMi2eHcMKoSWM9iMGdxw6WmJqZTYCetsflIy91Hub7kBzJ
         eUSmYS1iPw56KfctkMKPTvXEAMG3WvqotfmFi41JsU1CCEDY7VB+qe4GdZhW/cTeeCD/
         g1qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729593983; x=1730198783;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=k0bUlmHe8yPfkbR2fBTcBcntzjqMjAxdwOYNlsKz7L0=;
        b=FOdeElkTmQpHEuxivmiG+eb0d2Sb2heFbLxppXLg1U246flx4+QFv54JxEgzz43y+U
         vL6TNeKWbNcy1MtnbpY2jfiRarI5u4gvvKOFpobFZ3NUexrz1Kcpq0ptEHYYlYg/bZrj
         1xhWwR6IBRwlogac03/r/jA5M705YC2FVmqA3Fnmj2IlHx695kBtn8qXl/8Bifa/1qY+
         b4mImc6qndtFCPJOZ3wUuoh/q4vsV6qL9GfKB4LLwIUcjaPoa8YwJMYeDrlc8EoFi10j
         fa1R3RPm3g/buU7vmqZ2REnd0GqtGazcspn0YUTLkCLd3OsGaK0PCYxM8L/lUvK2svxO
         HkRQ==
X-Forwarded-Encrypted: i=1; AJvYcCUyqaXYRxvai6V8mj7eu9rod29s0FP/+3r4vSnFcnUC5eyWeXWrcqIHXb2q1Q9TJ75T7Ymm/eqYgj2A@vger.kernel.org
X-Gm-Message-State: AOJu0YwsuVg7kz02nWt8EOkQZ6xAlhkhXWVlA9Jq/NmEwVuLnuGsDhIv
	6RipRGbG5VKiI/DF6xN06kuldMtciM7FaEaUUW+9F7LtfuoB796TQWhrP8Yrf1U=
X-Google-Smtp-Source: AGHT+IHjkP7OfXudHtgygrbzeXxTqnMEgTwZ8qpiEgnwdIBqvFqKickEP/R/t/AUk9YOzmsGIskreA==
X-Received: by 2002:adf:f8cc:0:b0:37d:3939:ad98 with SMTP id ffacd0b85a97d-37ef0b61e68mr1781901f8f.3.1729593982722;
        Tue, 22 Oct 2024 03:46:22 -0700 (PDT)
Received: from [127.0.1.1] ([82.76.168.176])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37ee0a37e1asm6351943f8f.20.2024.10.22.03.46.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Oct 2024 03:46:22 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Subject: [PATCH v3 0/3] arm64: dts: qcom: x1e80100: Describe SDCs and
 enable support on QCP
Date: Tue, 22 Oct 2024 13:46:07 +0300
Message-Id: <20241022-x1e80100-qcp-sdhc-v3-0-46c401e32cbf@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAG+CF2cC/23NwQqDMAyA4VeRnteR1Kp1p73H2KG0UQvDunYUh
 /juq8JgA2/5A/mysEjBUWSXYmGBkovOjznKU8HMoMeeuLO5mQAhEaDhM5KCPPGnmXi0g+FYmQZ
 rq20ra5bvpkCdm3fzds89uPjy4b2/SLhtv5o60BJy4LajTppWaCrx+nCjDv7sQ882LokfAuURI
 TKhakUNaCUqgj9iXdcPot7dx/YAAAA=
X-Change-ID: 20241007-x1e80100-qcp-sdhc-15c716dad946
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Johan Hovold <johan@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, linux-mmc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=1594; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=7g7vQ5yuKO/HSCfrYWlV8Si3LPKtIuub+pj7PRO8uSE=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBnF4J1i0qmBmvrG1iJVbTDyDMZ1/SA5/1XP1Mt7
 C/A5DcDHIeJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZxeCdQAKCRAbX0TJAJUV
 VuOOD/9PPJgG8sKRS74RVrlkrUmpPGm6aQU8gprzYfkYD0aBMiR+O33MmxZAI2OE0mXmIO+X+8l
 Rj3UpejB4hRCRPm9oIW6YbC6dLFN5u81iD6Au1R1lMwz69Z11u/vxQ7M6dYsU0Hc271D77iav49
 1i/wT6DR8Zv1HMBQAY1L7J1t5K6UErW22+MX6l62Llg7qxQKYNEyg4wV6/ckc64GiD4CQdXjBGY
 IacuXidIkC8nUOrdVCDePN2lJ+udfuHQ3DImo9CGwgG7j6f/5eaLN6K+hQ4jgWwwYDwKY26uGve
 iTCtWEMgu0NUpOFItPeD07A8dY30jT4UzwijQ8Sadls/5Gw2bl2bcJDgIVPkixKKXoA1QfNkffV
 0DOlhJReLP5NMk9U0lgCYyiFZ+EEvA2kmNKhffuyHBgpmWxSJHpVKiCIAYkzvC2XYk1uvUW+o7c
 kbw+vdKFDC3TuvjXTrVkE2WAxYDOcuLaO0NqF6yZjDIi8HCeGFpjhHtYPUIhnSW3+caS/uG4dpd
 24BssnnYETWycP4scLLfi+UVFmMzMEijRsaVfjcDH2F1KuZlyyZT68JP8Ngt/uEixZTDCBbsxc/
 pJN/RJ/TnNW2KeV45cXTkv6r5xnitPhrTGaeO7pn0spXPFXJ9Xi1oFrQcjs+GyfwyI4bXVPOteJ
 QHDvPLfwc3lIBxg==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

The X1E80100 has two SDHC controllers (called SDC2 and SDC4).
Describe both of them and enable the SDC2 on QCP. This brings
SD card support for the microSD port on QCP.

The SDC4 is described but there is no device outthere yet that makes
use of it, AFAIK.

Didn't include the SDC4 pins yet because there are some bindings
errors that need to be addressed, and since there is no HW that
actually uses it, we can describe them at a later stage.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
Changes in v3:
- Reordered the default and sleep pinconfs. Also the bias and
  drive-strength properties. As per Konrad's suggestion.
- Link to v2: https://lore.kernel.org/r/20241014-x1e80100-qcp-sdhc-v2-0-868e70a825e0@linaro.org

Changes in v2:
- rebased on next-20241011
- dropped the bindings schema update patch
- dropped the sdhci-caps-mask properties from both
  controllers as SDR104/SDR50 are actually supported
- Link to v1: https://lore.kernel.org/r/20241008-x1e80100-qcp-sdhc-v1-0-dfef4c92ae31@linaro.org

---
Abel Vesa (3):
      arm64: dts: qcom: x1e80100: Describe the SDHC controllers
      arm64: dts: qcom: x1e80100: Describe TLMM pins for SDC2
      arm64: dts: qcom: x1e80100-qcp: Enable SD card support

 arch/arm64/boot/dts/qcom/x1e80100-qcp.dts |  20 +++++
 arch/arm64/boot/dts/qcom/x1e80100.dtsi    | 142 ++++++++++++++++++++++++++++++
 2 files changed, 162 insertions(+)
---
base-commit: d61a00525464bfc5fe92c6ad713350988e492b88
change-id: 20241007-x1e80100-qcp-sdhc-15c716dad946

Best regards,
-- 
Abel Vesa <abel.vesa@linaro.org>


