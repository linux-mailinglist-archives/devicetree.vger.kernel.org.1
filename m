Return-Path: <devicetree+bounces-61979-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 331DF8AF4FD
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 19:07:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D848B1F25365
	for <lists+devicetree@lfdr.de>; Tue, 23 Apr 2024 17:07:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D33D13E027;
	Tue, 23 Apr 2024 17:06:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="jMy2Iyyg"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D62113DDAF
	for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 17:06:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713891988; cv=none; b=jPyhiDlTL/cN74u7lp3zmjge/SPfy/nyS0ojGMS3n3uU63pSHU7iGI5+torDReFpJuq55FuPTyWttIcCVsIjjvJMSnBZDn7GR+7bEIKYJpeIlN9el9Hzo1VeOdfJfwRxl6+b0uoQCehfzr+2G2Wvy/gauaHHUFmoW5+4UqZ3+zY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713891988; c=relaxed/simple;
	bh=/U4RNSE6GOJLkC+Bia6Ykc/PsiWjQWzhLb3Hjhc3LHs=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=ddTA3UrfC/XRTxQQCkCxBRh+ZfA2BffOCCUliatgqX+N5gmDY7bn21Kv9Ur0wmvCW+DqIDDKqdTRp1j2nigLWox9/qpRB8udzqeguOmx5nXkB55HmP39NdQjzHkr24EjX8L7SetUNfb2msEIIBRa5WEXgZD6BnK4AJkOZXm7geU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=jMy2Iyyg; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-572256b1636so607598a12.0
        for <devicetree@vger.kernel.org>; Tue, 23 Apr 2024 10:06:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1713891985; x=1714496785; darn=vger.kernel.org;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BF47HR8rwGnW7a+NGpGna006XTjqIwQDe3zUQkmwlF4=;
        b=jMy2IyygF5agQNhRph/Sx/r9T5qSs1u09SZ9xcmcQ0IS0GwJ+WZ0ZoLOsBLs5P4F0g
         XO6wWlhtShByR3Z3r6kpFPTaPrfMlMqlrDFl7BR9QKkUIz+9WwncK2LnFaLCHMnU3hwO
         Yf1GW5ET9flbKR57O1roGJ4ILCiKWJesd32V4hAbfEntrP4CivznTVujZSRTOfhdbo/C
         MOVgML1i2kT8WSN7as8bhqqu+f/bgKOqEjfuMTB8OGD/EeorrDh4DTULyB5Xcom9uCyl
         ZZDwnYallW5sbEG0DBGUKOnfaZYi81sySTQOyXXMbzamNg9Pdmlmnn6+iCjGJfl1LzQ6
         aplQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1713891985; x=1714496785;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BF47HR8rwGnW7a+NGpGna006XTjqIwQDe3zUQkmwlF4=;
        b=SO8hPJ+Qlp0LsTn8SABseaDdJuXFHDOMk0y0iIDBbPh9nn42ObOSdzkXna4GgcsYwB
         XfX70dguuQlo47zM9K7Tw9ls0Ltthcvh5GRRcL76JMznPkaaRhU11m9rpWgvL1q72+Ft
         ZAQRdJGjSW0+8FBmMCH0SzQIZy7gzRdwUiTgY5Zw73h7Ru4WIQSUaYxZfeOFZuf/rCIq
         KONkiBIC/Wqhye1bi3LKtVM0K0RUJMxNJXX9Rxu9T+6/Uyb+A+pzCY+t3tVoDsZDhCUM
         by6q90NmL5T8sgxDJPKXZ/3VtzTaKmfp6aLO66Sr6hyf6hdYs9tIW3jZJYjJcU18Sj20
         AKWw==
X-Forwarded-Encrypted: i=1; AJvYcCXnOWQBbXZ/7lUPOHt11sJT3rdfQ2YsPHVb1uP0aDnO5i7J1OAZogj9sZUCCHTeVhk35oMER41tFkqGCES+3myyAUA8zIR9QbGRzA==
X-Gm-Message-State: AOJu0YzSprcR8B7M2fH1OAg/I4GzQPNx96T3j3HKNmLidaFOfTg3huwk
	Zoko+WqjYa7rTlelegXczfwEpAqMp1/TcnRCiYLdVtYaN7VXUZUNbxVNW/ZVZnM=
X-Google-Smtp-Source: AGHT+IGsJUTYp6jPj3zCnglMqmn8IdnSJ9732oBBXj4sEuFPOsBM8m9lsAHScdfHBSn55C1oqSfAww==
X-Received: by 2002:a17:906:259a:b0:a46:65fd:969d with SMTP id m26-20020a170906259a00b00a4665fd969dmr8177311ejb.71.1713891984836;
        Tue, 23 Apr 2024 10:06:24 -0700 (PDT)
Received: from puffmais.c.googlers.com (8.239.204.35.bc.googleusercontent.com. [35.204.239.8])
        by smtp.gmail.com with ESMTPSA id t22-20020a1709063e5600b00a5209dc79c1sm7351624eji.146.2024.04.23.10.06.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Apr 2024 10:06:24 -0700 (PDT)
From: =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
Subject: [PATCH 0/7] USB31DRD phy support for Google Tensor gs101 (HS & SS)
Date: Tue, 23 Apr 2024 18:06:02 +0100
Message-Id: <20240423-usb-phy-gs101-v1-0-ebdcb3ac174d@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAHrqJ2YC/x3MMQqAMAxA0atIZgNNLQheRRy0pm2WKg2KIt7d4
 viG/x9QLsIKQ/NA4VNUtlxBbQM+zTkyyloN1lhnnO3w0AX3dGNUMoTzEjqm3q7kHdRmLxzk+n/
 j9L4fADc1WF8AAAA=
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Peter Griffin <peter.griffin@linaro.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Alim Akhtar <alim.akhtar@samsung.com>, 
 Sam Protsenko <semen.protsenko@linaro.org>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, 
 Tudor Ambarus <tudor.ambarus@linaro.org>, 
 Will McVicker <willmcvicker@google.com>, Roy Luo <royluo@google.com>, 
 kernel-team@android.com, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>, 
 =?utf-8?q?Andr=C3=A9_Draszik?= <andre.draszik@linaro.org>
X-Mailer: b4 0.12.4

This patch series add support for the Exynos USB 3.1 DRD combo phy, as found
in Exynos 9 SoCs like Google GS101. It supports USB SS, HS and DisplayPort,
but DisplayPort is out of scope for this series.

In terms of UTMI+, this is very similar to the existing Exynos850
support in this driver. The difference is that it supports both UTMI+
(HS) and PIPE3 (SS). Firstly, there are some preparatory patches to simplify
addition, while the bulk of the changes is around the SS part.

Signed-off-by: André Draszik <andre.draszik@linaro.org>
---
André Draszik (7):
      dt-bindings: phy: samsung,usb3-drd-phy: add gs101 compatible
      phy: exynos5-usbdrd: use exynos_get_pmu_regmap_by_phandle() for PMU regs
      phy: exynos5-usbdrd: support isolating HS and SS ports independently
      phy: exynos5-usbdrd: set ref clk freq in exynos850_usbdrd_utmi_init()
      phy: exynos5-usbdrd: uniform order of register bit macros
      phy: exynos5-usbdrd: convert to clk_bulk for phy (register) access
      phy: exynos5-usbdrd: support Exynos USBDRD 3.1 combo phy (HS & SS)

 .../bindings/phy/samsung,usb3-drd-phy.yaml         |  78 ++-
 drivers/phy/samsung/Kconfig                        |   1 -
 drivers/phy/samsung/phy-exynos5-usbdrd.c           | 753 +++++++++++++++++++--
 include/linux/soc/samsung/exynos-regs-pmu.h        |   4 +
 4 files changed, 757 insertions(+), 79 deletions(-)
---
base-commit: a59668a9397e7245b26e9be85d23f242ff757ae8
change-id: 20240423-usb-phy-gs101-abf3e172d1c4

Best regards,
-- 
André Draszik <andre.draszik@linaro.org>


