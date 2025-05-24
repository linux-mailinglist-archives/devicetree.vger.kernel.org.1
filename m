Return-Path: <devicetree+bounces-180153-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 9073FAC2D65
	for <lists+devicetree@lfdr.de>; Sat, 24 May 2025 07:21:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 75CC97B39E8
	for <lists+devicetree@lfdr.de>; Sat, 24 May 2025 05:20:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6198E1C4A2D;
	Sat, 24 May 2025 05:21:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eSn4nZ+D"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f54.google.com (mail-ed1-f54.google.com [209.85.208.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AECC614286
	for <devicetree@vger.kernel.org>; Sat, 24 May 2025 05:21:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748064102; cv=none; b=FuwyvnvPtaJ6HKkjUmQynLzYiZij7zJPW73IHE2K+r2EfZMoIY8dPU5iCtV/CErmHLNYTD9h89PH/E7qLv6LD/76zkY3Ug/SieK2eTtRM12jo75yOd1+5MW3TOC+0Km8grlHYs7lOsCu5Xud0VO1ZDsF+aFLRUgMP5gY1DRrlxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748064102; c=relaxed/simple;
	bh=3aztcBEs5t+8vb2HvoZuOjO3OzbfcifNMPQfFU+/Q0g=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=Wck8QiRPXAngEGdt4T/VlYfqIvvqwIdAbzhjr0rJnt5VpjN4R7NmS/RJat2uGYtk5dD9wRNJ2WWXNOzTcpbVHc8t2WCJsF6KbGCP4AfalVLJok1bW1wHTw/47F2bcyvAH3/3ICPoL56HAtHIKn2zOVCSM3u4wLexcPPJ7xzsjR8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eSn4nZ+D; arc=none smtp.client-ip=209.85.208.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f54.google.com with SMTP id 4fb4d7f45d1cf-60236e3d093so664938a12.3
        for <devicetree@vger.kernel.org>; Fri, 23 May 2025 22:21:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1748064098; x=1748668898; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HVLgX7oZgKgmp7JBYszc+Lbf8YbgAmX++SIMz1uljwM=;
        b=eSn4nZ+D1wAIxz51qMcxVy7kmAiMCv0Wmdqdz5/vlhy392XzVhKsdAEg5+f/PDUXAt
         UAZGgh3UcC5+Fevb0V0gFSZ0FkVam3Ov9VTlbkqhYxGMVakq8g/MivUDWdJblU3+OKTw
         L7FEmu247ydu3wnXmcHOy4BRzGH/3u6RF/DrOmt05JCwDPaCO++xwRH964HXFH9mnfi5
         W/r8fZKwv/hbox+6lfBMjtZuM+rMXT7S11P9Kfm5dmK7DPLSaYUURee7hRLKFeY49pU/
         O4f3bbabLWJFD+jIlkBgFmzbpTxZ3zlGCodaeIv/Zh+5vo2c8Waw30FJo5qwOMh4C/e0
         egxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748064098; x=1748668898;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HVLgX7oZgKgmp7JBYszc+Lbf8YbgAmX++SIMz1uljwM=;
        b=f79XWRbsdW6FI+fGnutfiUu5rEm9zRGAmNJIGDhwngavQ9tK4m7ceWxq+1fkV0aVpV
         51rhgU8TOLTKice9cLS/5MCNRVRGXN5VTN3+RyZqpIPvUASLAnCmD8SU079tWyX+CHCy
         t6Ihlcaog4REQvJkvlaLPilY167MiO0Gf6Ma2GBBjD3aD1BoqY0FpMRlIFI4blRj2UBc
         6L5iNaRXqrYRwATrr4IIDg1AUr697BydIU9UAjMOdkMiUtGR2oYZhm9SCvN3d/VH1Gwz
         ZL+trMeZ8voY1K25iG8zVMKaeN9B/4G8ExGm7+10BlJvxcISYrp/nvPTcanhQr/E3abR
         VB9A==
X-Forwarded-Encrypted: i=1; AJvYcCWnviwXkjAw9kOxnYc5zzmGGL8QdlHMcLseS8SpWiQtx7VzCV8JMHUsPQErtF43K3bgB6qBN2kmV4xG@vger.kernel.org
X-Gm-Message-State: AOJu0YySg8UB0zsFIluOk/zOV1ho5X0q6H5OE/q7KGvifWRpNfDqgbPP
	k+UcDdW5G3/bS6Jr7MvrNB40EeiuC7olo4aY7d9fY+k0YcSItEExvPvd4V/30jTVLGQ=
X-Gm-Gg: ASbGnctUs7FQy+7ZZ9/n+KbycHh0ot2gd3EKbdlN3VLE3UZt+uCBQbn5vzqyaJ1c9pC
	n6GuY3T1hYZ2LsM7LUGX2kStFCgDhr60glJIRwBN1teHlJcvBZ/0sxmb1aNE3MWrx2YlCgjmxvF
	MM0R6s4gMNxtLSqBE6BrF4bfZioLXUx68cmoX+gHNaE/DFvDZnvQMav/3LXy0vlUITXSD79So8l
	2BVXat3kMhWHQ/MRy89iU6I+mc5NerYDD1PfdV3jpvM3zZ882blYOVMYawg4Jz9evUIxdyvnk8/
	U76tnujxKdVsK4TyYk43wh28icR75Xwn8NBIITk3mOOWtIUvHMeF0lMx9NOBcizMmfIyohEbnP5
	/Nmw9VeBAAudUvX8lmQDCWiF2QtS/fbCLF90=
X-Google-Smtp-Source: AGHT+IFwfRfCw7b+i30fDVsYjamnwABVc4tlq1MkutzLjfaI4FhpNhFaGTjcBmSVXr0eujU+xxYGNA==
X-Received: by 2002:a17:907:9688:b0:ad5:7499:2644 with SMTP id a640c23a62f3a-ad85b2a4f94mr135383166b.54.1748064097988;
        Fri, 23 May 2025 22:21:37 -0700 (PDT)
Received: from puffmais.c.googlers.com (68.57.204.35.bc.googleusercontent.com. [35.204.57.68])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ad5572f6402sm1106778066b.178.2025.05.23.22.21.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 May 2025 22:21:37 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Subject: [PATCH v2 0/4] gs101 max77759 enablement (DT)
Date: Sat, 24 May 2025 06:21:27 +0100
Message-Id: <20250524-b4-max77759-mfd-dts-v2-0-b479542eb97d@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAFdXMWgC/32NQQ6CMBBFr0Jm7ZhSpBRX3sOwoHQKkwg1LSEY0
 rtbOYDL95L//gGRAlOEe3FAoI0j+yWDvBQwTP0yErLNDFLIWlRCobnh3O9N09Qtzs6iXSM6o7V
 RgzJWCcjLdyDH+1l9dpknjqsPn/NkK3/2f28rUWDrSBtBRpeyerx46YO/+jBCl1L6AjRlJpK3A
 AAA
X-Change-ID: 20250306-b4-max77759-mfd-dts-fb88b6c6bd60
To: Catalin Marinas <catalin.marinas@arm.com>, 
 Will Deacon <will@kernel.org>, Peter Griffin <peter.griffin@linaro.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Alim Akhtar <alim.akhtar@samsung.com>
Cc: Will McVicker <willmcvicker@google.com>, kernel-team@android.com, 
 linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org, 
 linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.14.2

Hi,

This series enables the recently merged Maxim max77759 driver and
updates the DT for the Google Pixel 6 / Pro (oriole / raven) boards
accordingly.

This gives us some extra GPIOs, and enables NVMEM which is used to
communicate the requested boot mode to the bootloader when doing a cold
reset.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
Changes in v2:
- rebase against next-20250516
- add dm-verity-device-corrupted to reboot-mode (nvmem & syscon)
- update commit messages slightly
- Link to v1: https://lore.kernel.org/r/20250306-b4-max77759-mfd-dts-v1-0-9fe8b0eb8123@linaro.org

---
André Draszik (4):
      arm64: defconfig: enable Maxim max77759 driver
      arm64: dts: exynos: gs101-pixel-common: add Maxim MAX77759 PMIC
      arm64: dts: exynos: gs101-pixel-common: add nvmem-reboot-mode
      arm64: dts: exynos: gs101: add dm-verity-device-corrupted syscon-reboot-mode

 .../boot/dts/exynos/google/gs101-pixel-common.dtsi | 76 ++++++++++++++++++++++
 arch/arm64/boot/dts/exynos/google/gs101.dtsi       |  1 +
 arch/arm64/configs/defconfig                       |  1 +
 3 files changed, 78 insertions(+)
---
base-commit: 8566fc3b96539e3235909d6bdda198e1282beaed
change-id: 20250306-b4-max77759-mfd-dts-fb88b6c6bd60

Best regards,
-- 
André Draszik <andre.draszik@linaro.org>


