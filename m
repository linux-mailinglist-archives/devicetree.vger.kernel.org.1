Return-Path: <devicetree+bounces-70091-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DD9A88D261B
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 22:43:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 092831C25A2A
	for <lists+devicetree@lfdr.de>; Tue, 28 May 2024 20:43:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A8EA8179949;
	Tue, 28 May 2024 20:43:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="EbhlOrNy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f174.google.com (mail-lj1-f174.google.com [209.85.208.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0999D1791EB
	for <devicetree@vger.kernel.org>; Tue, 28 May 2024 20:43:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716929018; cv=none; b=ktK6uPWjkFM9PDGrC88h2vACGncaqCoIzwbnWz1gkY0gFxHg/TbuMaNK4xZxnQ1Y/a6tzx9QA1939WcIjvcnLzFxbZyq3bXbhvbPnpWpmBGgwIz9YMAx0oeqLDvmPaKJ42ViUkyxKRkmLyhjhT34MzusIFEKHNZjQlnwwAwD7bs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716929018; c=relaxed/simple;
	bh=KdOLoaqqPKKq6B+kbVp/zzlHPVbPXlpj0ygf6uQcA/g=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Ee3hM3T5g3E3mC1JF6nv+omjOnzHWgPCuSCEYlT5eZNauKv2oBkQY5T1W2kwwxuN8EI8vzN3Q4RyFDIFbCpRqt2rN4ub1/LJ8TIIGfWEhClX5c/wl3quzeRll6S5wVOIUh/hdDTzrmM78mjL0I7nNVxjLwNBuoPof3NkcYQkA+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=EbhlOrNy; arc=none smtp.client-ip=209.85.208.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f174.google.com with SMTP id 38308e7fff4ca-2e95a60dfcdso14509881fa.1
        for <devicetree@vger.kernel.org>; Tue, 28 May 2024 13:43:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716929015; x=1717533815; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=s+CsOJCVlsOTrjqdtpqHMF6zfHlzSSq4GbM8W7t/KeU=;
        b=EbhlOrNyNzLAm7kebFSFGtpuJvpeL+8sSM0oOKrWgclqHyjovsnRm0BmVmjcvVZyb1
         xpM4EHenoQ7F7QzzsLPI2PH2wV8YNA5mvq2U2Q/lUpRzCMGy7X/oZ7DfunQqQ2U0t+ro
         C6nPa5Id76sA4gtlANmQ9qqxeKrQigE1TEPAiXOOam7hBNS7IVBVPhTxMe1yimpsE98m
         laUiDRr9q0aRuBghtl/ZeNSU6g9hBbszyM3AkLBptEHm5tF9LL22IqfId4b2a3+uJHXb
         QKxfzyM46YVhyMGvFHKz5tcWPUbTWEaPWZZKNLBE2rHVCvYYI1sP5rR7ZjnpJx+6ZhCr
         QEEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716929015; x=1717533815;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=s+CsOJCVlsOTrjqdtpqHMF6zfHlzSSq4GbM8W7t/KeU=;
        b=qlJz/8GikPPori8G4FpNX2vDoVcv2AdohM5n6WEeoYORmTJTQxAMG8PB8YFF5XBEaH
         1hThEDOmXA+dIzM12FktbiZP9dr1WmgF1V9FLGk71LPWgF+aO93kxXIu3X6PY87yL2wM
         tQWv/vQAMZI9CWCjlvtktWFl68Z3kTy4hv7zhoh6Fh5P0v7zfOTezMHtEl0dG1t+BNjM
         YPO+04UBxe2b4RV1KQ2emhFyWnE53VT984DpCv9U3zj+3QLrH3McjZbFNvQRWcyXVxhN
         Jgrk3NrfYf2BIBSaMOYFGioNYTV3hRbxTj7qfFJ1NQmVKSC4gOhx/N4APR4a7d55dxzD
         hCPA==
X-Forwarded-Encrypted: i=1; AJvYcCWpOIkvVgxLsIx3SpovHLBw2zZNXpA3GyFuNAqSKcg2JYOBw4uymPfq2YMXD1wCyNlOpv8X02H+UeSEree+Ky+7L9BnkkwkhriUSQ==
X-Gm-Message-State: AOJu0Yy5TJtN7TC7wZ6Xu58OLbYhNXdnrYTmWJkF46ZUD3fUYiNzs33H
	CGKLUjzKexKJWPcL+6XM9fSerQgVzuK1N965XlsODMWKc50ZdzKOIa29jAh3Zls=
X-Google-Smtp-Source: AGHT+IEELxtRw01V0LSl1K8Y2/DYMfj51mt2ELV8DbnZI9JfaFo5hQZT9kn1UGbExnF8QONYnaKDaQ==
X-Received: by 2002:ac2:52b4:0:b0:51f:601f:cbae with SMTP id 2adb3069b0e04-52966e9a44dmr8266092e87.56.1716929015036;
        Tue, 28 May 2024 13:43:35 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-5297066b885sm1095493e87.127.2024.05.28.13.43.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 May 2024 13:43:34 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Subject: [PATCH 00/10] dt-bindings: clock: qcom,gcc: handle the controllers
 without power domains
Date: Tue, 28 May 2024 23:43:18 +0300
Message-Id: <20240528-qcom-gdscs-v1-0-03cf1b102a4f@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOZBVmYC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDIxMDUyML3cLk/Fzd9JTi5GLdJNNUs+TEtJTEJMsUJaCGgqLUtMwKsGHRsbW
 1APWqsyNcAAAA
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>, 
 Robert Marko <robimarko@gmail.com>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2208;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=KdOLoaqqPKKq6B+kbVp/zzlHPVbPXlpj0ygf6uQcA/g=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmVkH0W8HCtV9FkP0Fi5jHzl6dxsTXhxkBImCsS
 aBIyGEyz42JATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZlZB9AAKCRCLPIo+Aiko
 1Yk0B/4wRvE52sN2pOvvOSYjNFMz4MlTqAh8kJsoYWyP+Wn0qe6qheHvtmhVV4qilV5a16iAE/d
 Onu9bkxcdaOROBgOgZ3VyagFbGEE+8zHXHTSBNaXcaeGOjsk2/6mSVy+m4ZRvLq6er1p0zEax2Z
 fTJ7vP01NGZZNKqWK5KhwSifUtKEs0Y5fljV1t4eWJFlTdxKyJwhDzahSc8G+bzQQU8HPA9DeIn
 dkLySM/gEkcNKwKSRuyxNcWHL8h7RPJxr8+yNoZNyOOiXz4rz0EyJ04kCYdegzOSrxjf2NDDos0
 hwlQ23DBMqV8Sn9eIPSJg3DRa2IcdYx1p4nsTUfKPe1T1t9X
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

On some of the Qualcomm platforms the Global Clock Controller doesn't
provide power domains to the platform. However the existing
qcom,gcc.yaml common schema requires the '#power-domain-cells' property.
This results either in a platforms having incorrect property or in DT
validation errors. Fix this by splitting the qcom,gcc-nopd.yaml schema,
which doesn't define the offensive property and use it for such
platforms.

Also, while we are at it, fix GCC node name for two platforms and
enforce node name in the DT schema.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
Dmitry Baryshkov (10):
      dt-bindings: clock: qcom: split the non-PD schema for GCC
      dt-bindings: clock: qcom,gcc-apq8064: use non-power-domain version of GCC schema
      dt-bindings: clock: qcom,gcc-msm8660: use non-power-domain version of GCC schema
      dt-bindings: clock: qcom,gcc-ipq6018: use non-power-domain version of GCC schema
      dt-bindings: clock: qcom,gcc-nopd.yaml: force node name
      ARM: dts: qcom: apq8064: drop #power-domain-cells property of GCC
      ARM: dts: qcom: msm8660: drop #power-domain-cells property of GCC
      ARM: dts: qcom: msm8960: drop #power-domain-cells property of GCC
      arm64: dts: qcom: ipq6018: fix GCC node name
      arm64: dts: qcom: ipq8074: fix GCC node name

 .../bindings/clock/qcom,gcc-apq8064.yaml           |  2 +-
 .../bindings/clock/qcom,gcc-ipq6018.yaml           |  2 +-
 .../bindings/clock/qcom,gcc-msm8660.yaml           |  2 +-
 .../devicetree/bindings/clock/qcom,gcc-nopd.yaml   | 43 ++++++++++++++++++++++
 .../devicetree/bindings/clock/qcom,gcc.yaml        | 19 ++--------
 arch/arm/boot/dts/qcom/qcom-apq8064.dtsi           |  1 -
 arch/arm/boot/dts/qcom/qcom-msm8660.dtsi           |  1 -
 arch/arm/boot/dts/qcom/qcom-msm8960.dtsi           |  1 -
 arch/arm64/boot/dts/qcom/ipq6018.dtsi              |  2 +-
 arch/arm64/boot/dts/qcom/ipq8074.dtsi              |  2 +-
 10 files changed, 51 insertions(+), 24 deletions(-)
---
base-commit: ee3122766a21b81f4014bf7888dee5b9c5af15fa
change-id: 20240528-qcom-gdscs-b5e6cafdab9d

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


