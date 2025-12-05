Return-Path: <devicetree+bounces-244529-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 0030CCA60D5
	for <lists+devicetree@lfdr.de>; Fri, 05 Dec 2025 04:54:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4061731AC39A
	for <lists+devicetree@lfdr.de>; Fri,  5 Dec 2025 03:54:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4909229D287;
	Fri,  5 Dec 2025 03:54:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="sT5SNHbL"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f202.google.com (mail-pg1-f202.google.com [209.85.215.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E00125392A
	for <devicetree@vger.kernel.org>; Fri,  5 Dec 2025 03:54:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764906860; cv=none; b=eG2itsVVyBKuYcmzYQeZUS9QlgN6WDpDeHT+4z6MVCU13QTcwB6kE2z0iFTBY3BA8hfSGGllqyrp1ai5k9/GzY6whDZvg6wTTbxkO0V1UeD2o7BrMHj9lZbY/EnPE5T29iNk1IiK43sB1edWxcuptERHqEEhLUVVro7HoEeDciA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764906860; c=relaxed/simple;
	bh=2tc2ueK5yCrImLff3UraB+poQHbzXwYCQ4YuwSh4gbU=;
	h=Date:Mime-Version:Message-ID:Subject:From:To:Cc:Content-Type; b=m5a/HeVqj4FdRcCBWPpy0Uht12cGqLJr9j0G+/UtJd0CuMVhsT3wAY7zWFb8r5VHsEh7Q94JjSiw9/PGpT9KLbD90OroecVfQmZWpQfucCy60JukTBEXur+QpS6djgRLFioyiE6IMahiniX+w7iOMjvi8jstKhNbXtlzii5Q4T4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--royluo.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=sT5SNHbL; arc=none smtp.client-ip=209.85.215.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--royluo.bounces.google.com
Received: by mail-pg1-f202.google.com with SMTP id 41be03b00d2f7-b6ce1b57b9cso1884262a12.1
        for <devicetree@vger.kernel.org>; Thu, 04 Dec 2025 19:54:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1764906857; x=1765511657; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=l7o0+wFB0fxZrZrqPCxWWUrX5bGrJiIWd93CpaGi7BI=;
        b=sT5SNHbLgYb7S3WTC+Pgm88yIHMJb4G9nH+6J6x3datrcGAixBxR3DB4lNq1sNyUoh
         Wu9W+jRB6kh4Mt+m1CQj54FSmVqjxq9fJ5NJAsy4lxWf75hr7kfspSnvZ4yH1cCtZxGP
         DPpjLvmmZi7rRiQlJ3jXl6qLwKi4DtjeLuTEfC1mUN7qO9u/2s4w7/LYf77nBpyfeEur
         dXQ5tLawja1PYsopjniNKHvyKNyzZMha3cxMDAXwD/R2QTpqLL8RD1UC3KO/d+9KM88Z
         K7VwX90hnlA6XmOCShjKXmz2/ulbUWpImKqT8npHnw6HAPBg0w9cH0BZbpjNhH58cKI1
         Xzqg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764906857; x=1765511657;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=l7o0+wFB0fxZrZrqPCxWWUrX5bGrJiIWd93CpaGi7BI=;
        b=hAtjmAOmKeQZQVPLZ4s25zH6jy8nMKMmX6IApQBENWUyfYoSs/uBu6Lrhodiyvk7Z0
         wI3iW6LYdGeucwzITc1HyAkZRGowgCWawyEAm6c70mi9IfYHHMv0gvMtDCufZ74Hhx9j
         H1GVOe1H8TrbY4ux6cWAlQF2tTSEXOd9xNEVakQragOaC8UggiB/xFxaUJQJYuWotLk8
         HLjDQ2Ua1SFTaEI7CHzQzyEKY1aZF3FzVjnoVWp/lBKJCwu9cXiNcwUMUwva2R74FG1r
         q2fUf9T02jSM2v29dn21QKAGaVYHbgXUESqhpm2CpsXiZu2HMTnyS3Mti5LUhNNPePwk
         VGgg==
X-Forwarded-Encrypted: i=1; AJvYcCXotW7s7IEoqUxROf0uexWRdfAjosPiVQ70zGonhFLN+S5osnKO3LkYuWYOTdO2EW6d3KtcMCvqHVp+@vger.kernel.org
X-Gm-Message-State: AOJu0YwcsaDJWGatkeE3+1Ayozdy1v0zbUwID47tZ6EDY1pN6iLia9Oi
	ch7JwR6vguaYlMxUn5Uytp50nXfBdpi3/Wvk27oByEJVe+HDZ/saFgNrbpSoJuORk5Krc0LRdoN
	ULaNkYg==
X-Google-Smtp-Source: AGHT+IH/A0OAPzxz4CmbNcZZUtF8cAw99r376uPh69pJveO0mGRkFLKzTyCIyHvM349SWS0rV0K4DyG164A=
X-Received: from dlii13.prod.google.com ([2002:a05:7022:418d:b0:11a:5223:14ab])
 (user=royluo job=prod-delivery.src-stubby-dispatcher) by 2002:a05:7022:4591:b0:119:e56b:91f2
 with SMTP id a92af1059eb24-11df0c3db04mr5952111c88.35.1764906857360; Thu, 04
 Dec 2025 19:54:17 -0800 (PST)
Date: Fri, 05 Dec 2025 03:54:10 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
X-B4-Tracking: v=1; b=H4sIAGJXMmkC/1WOQQ6CMBBFr0K6tqQzlAKuvIdxUcoUmog1RYmEc
 HcLwajLn8x7b2Y2UHA0sGMys0CjG5y/xVEeEmY6fWuJuyZuhgJzAKj4vZtqyZFEpgsjZWUki7f
 3QNa9Ns/5ErcNvuePLpD+0gIrBCkyTDMoclTAgQc/XZ/+1HrfXik1vl9lnRsePkzbT6NalXsex Z4fFRe8VqqSBFYYbX8Na38sfjH4YEXEGquktFohlOIPW5blDWlfJXMPAQAA
X-Change-Id: 20251119-phyb4-2e03a7c449c4
X-Developer-Key: i=royluo@google.com; a=ed25519; pk=nTq1n8WcJActRWe1s8jdcy+TzpTK4a+IYRCIWvQfq5k=
X-Developer-Signature: v=1; a=ed25519-sha256; t=1764906855; l=5157;
 i=royluo@google.com; s=20251120; h=from:subject:message-id;
 bh=2tc2ueK5yCrImLff3UraB+poQHbzXwYCQ4YuwSh4gbU=; b=YojkW60N+NQkCkHwVLnMl4R03inzTaOCjroXExlpWISnRrpm+AXiY7T2V3KtLHv4XXhd3XQTR
 /m+a8NOa9+IAkbxt94mvHmeS4IkHloJK5WV1R629yUFgzlVOfStluTQ
X-Mailer: b4 0.14.2
Message-ID: <20251205-phyb4-v8-0-c59ea80a4458@google.com>
Subject: [PATCH v8 0/2] Add Google Tensor SoC USB PHY support
From: Roy Luo <royluo@google.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Peter Griffin <peter.griffin@linaro.org>, 
	"=?utf-8?q?Andr=C3=A9_Draszik?=" <andre.draszik@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>, 
	Philipp Zabel <p.zabel@pengutronix.de>
Cc: Badhri Jagan Sridharan <badhri@google.com>, Doug Anderson <dianders@google.com>, 
	linux-phy@lists.infradead.org, devicetree@vger.kernel.org, 
	linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org, Joy Chakraborty <joychakr@google.com>, 
	Naveen Kumar <mnkumar@google.com>, Roy Luo <royluo@google.com>
Content-Type: text/plain; charset="utf-8"

This series introduces USB PHY support for the Google Tensor G5
SoC (codename: Laguna), a new generation of Google silicon first
launched with Pixel 10 devices.

The Tensor G5 represents a significant architectural overhaul compared
to previous Tensor generations (e.g., gs101), which were based on Samsung
Exynos IP. Although the G5 still utilizes Synopsys IP for the USB
components, the custom top-level integration introduces a completely new
design for clock, reset scheme, register interfaces and programming
sequence, necessitating new drivers and device tree bindings.

The USB subsystem on Tensor G5 integrates a Synopsys DWC3 USB 3.1
DRD-Single Port controller with hibernation support, and a custom PHY
block comprising Synopsys eUSB2 and USB 3.2/DP combo PHYs. The controller
support is sent as a separate patch series.

Co-developed-by: Joy Chakraborty <joychakr@google.com>
Signed-off-by: Joy Chakraborty <joychakr@google.com>
Co-developed-by: Naveen Kumar <mnkumar@google.com>
Signed-off-by: Naveen Kumar <mnkumar@google.com>
Signed-off-by: Roy Luo <royluo@google.com>
---
Changes in v8:
- Update the Kconfig dependency to depends on ARCH_GOOGLE || COMPILE_TEST
  Note that ARCH_GOOGLE does not exist yet but will eventually
  be there when the following patch lands
  https://lore.kernel.org/r/20251111112158.3.I35b9e835ac49ab408e5ca3e0983930a1f1395814@changeid/
- Mention SoC codename Laguna in Kconfig description.
- Sort the header alphabetically and sort the variables using the
  reverse christmas tree ordering.
- Add driver and binding files to the Tensor SoC MAINTAINER entry.
- Add detailed comment for phy_mutex
Link to v7: https://lore.kernel.org/r/20251121-phyb4-v7-0-df644fa62180@google.com

Changes in v7:
- Change the device tree binding example node name to usb-phy to follow
 the hyphen-separated naming convention and remove label.
Link to v6: https://lore.kernel.org/r/20251120-phyb4-v6-0-b6694e1f0caf@google.com

Changes in v6:
- Use "lga" as SoC name instead of "gs5" to align with Tensor G5 device
  tree https://lore.kernel.org/lkml/20251111192422.4180216-1-dianders@chromium.org 
- Add "usb2_core" to the reg property to define the MMIO space for
  the eUSB 2.0 PHY IP.
- Rename "usb3_top" reg as "usbdp_top" and update the description to
  reflect its nature as a top-level wrapper and align with internal
  documentation.
- Use syscon to access the "usb2_cfg" MMIO space.
- Remove minItems for clocks and resets, making all listed clocks and
  resets (including USB3) mandatory.
Link to v5: https://lore.kernel.org/linux-phy/20251029214032.3175261-1-royluo@google.com

Changes in v5:
- Add usb3 registers/clks/resets to binding as suggested by Krzysztof
  Kozlowski. This ensures completeness of the binding, though the
  driver has not yet ultilized the resources. The usb3 clks and resets
  are optional if usb2-only operation is desired, this is denoted by
  minItems and descriptions in the clocks and resets properties.
  Additionally, rename existing binding entries for consistency and to
  better differntiate between usb2 and usb3.
- Move the description of the phy select to phy-cells in binding as
  suggested by Krzysztof Kozlowski.
Link to v4: https://lore.kernel.org/linux-phy/20251017235159.2417576-1-royluo@google.com

Changes in v4:
- Separate controller and phy changes into two distinct patch series.
- Remove usb2only mode configuration and the corresponding usb_top_cfg
  reg (moved to controller)
- Add more descriptions to dp_top reg to indicate it's not DP specific.
- Add u2phy_apb clk/reset
Link to v3: https://lore.kernel.org/linux-usb/20251010201607.1190967-1-royluo@google.com

Changes in v3:
- Align binding file name with the compatible string
- Simplify the compatible property in binding to a single const value.
- Add descriptive comments and use item list in binding.
- Rename binding entries for clarity and brevity.
Link to v2: https://lore.kernel.org/linux-usb/20251008060000.3136021-1-royluo@google.com

Changes in v2:
- Reorder patches to present bindings first.
- Update dt binding compatible strings to be SoC-specific (google,gs5-*).
- Better describe the hardware in dt binding commit messages and
  descriptions.
- Adjust PHY driver commit subjects to use correct prefixes ("phy:").
- Move PHY driver from a subdirectory to drivers/phy/.
Link to v1: https://lore.kernel.org/linux-usb/20251006232125.1833979-1-royluo@google.com/

---
Roy Luo (2):
      dt-bindings: phy: google: Add Google Tensor G5 USB PHY
      phy: Add Google Tensor SoC USB PHY driver

 .../bindings/phy/google,lga-usb-phy.yaml           | 133 ++++++++++
 MAINTAINERS                                        |   2 +
 drivers/phy/Kconfig                                |  11 +
 drivers/phy/Makefile                               |   1 +
 drivers/phy/phy-google-usb.c                       | 295 +++++++++++++++++++++
 5 files changed, 442 insertions(+)
---
base-commit: 43dfc13ca972988e620a6edb72956981b75ab6b0
change-id: 20251119-phyb4-2e03a7c449c4

Best regards,
-- 
Roy Luo <royluo@google.com>


