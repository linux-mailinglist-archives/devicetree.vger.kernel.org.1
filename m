Return-Path: <devicetree+bounces-225497-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 64B34BCE74B
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 22:16:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E4F993BE62C
	for <lists+devicetree@lfdr.de>; Fri, 10 Oct 2025 20:16:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 45900302151;
	Fri, 10 Oct 2025 20:16:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b="LRAZTdlN"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f202.google.com (mail-pg1-f202.google.com [209.85.215.202])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7C312750E1
	for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 20:16:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.202
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760127377; cv=none; b=I9UHS9MCMMwe5R4jfl/gYbIwTvaMMw4GT3DgbLMttwNubTQzQlhKMOJOucr6cXWZeKwe0AqGKITYLdUZ221WYFqjN6CLoKjzLfSMV5RnrYBl4/12OAG7MJ0o/IgTtgEj/pHwhe5lzRoy3S38+XhE/uC/2P2FzGgLXU7QgC78Q/o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760127377; c=relaxed/simple;
	bh=LeOlfv9Qe98aV9cT/VDmXbV2tpD8MIcC/9HBfX+lGZo=;
	h=Date:Mime-Version:Message-ID:Subject:From:To:Cc:Content-Type; b=EHBRD70+PlVE43SwWcX9oSwYf9v2u11PGlKYMhkix8MhvPRrFPpi3GgOJYVE16J3YLiYUl6p5H3QETlrchtiPNAgd8hzycVm0xgDTOmW3kmFNBEBGRA20f3IumKR95KIc1rljwsXu62NiVejNoqpq1h6aA4UpHulGcqsTshD0aI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com; spf=pass smtp.mailfrom=flex--royluo.bounces.google.com; dkim=pass (2048-bit key) header.d=google.com header.i=@google.com header.b=LRAZTdlN; arc=none smtp.client-ip=209.85.215.202
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=google.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=flex--royluo.bounces.google.com
Received: by mail-pg1-f202.google.com with SMTP id 41be03b00d2f7-b6097ca315bso7882546a12.3
        for <devicetree@vger.kernel.org>; Fri, 10 Oct 2025 13:16:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20230601; t=1760127375; x=1760732175; darn=vger.kernel.org;
        h=cc:to:from:subject:message-id:mime-version:date:from:to:cc:subject
         :date:message-id:reply-to;
        bh=estI8qEVcPVY31PTAjZ7lIjF6tdHShVWJ6+L1IGJmXg=;
        b=LRAZTdlNhXx28UvzwL8skIPyjcKEHZ/BXG9dnn/t8ZjbRlalalqHkDMj/k5/t70v8m
         DToGBzMy08gO1Mpx9Ch6xsTakf7Rv8T6aJvj/P8BWR2Lw9zVrWhywY9PS7QDzeE8LSgi
         JcLxxIcoqB+BE4u29s8sKRUPyjapmroq0E+ltJpc2bjJj5a1AdbMW5jPLP7pMDqEaodV
         4Oecs+RHLjEfI6y0GJGaly+GPkMmWagb9Vrc8z1AyQPbIi2TvzOqILfMstoFwz8PFrSN
         HVgtKXtWUYq9+PB80blAupPWvVo4+MGncTyUp3Vi1yBKNVgAtiqWD5atZFV4a/0sxw8D
         TlLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760127375; x=1760732175;
        h=cc:to:from:subject:message-id:mime-version:date:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=estI8qEVcPVY31PTAjZ7lIjF6tdHShVWJ6+L1IGJmXg=;
        b=j8s5GEEQ9rbdpUPhbTbP60FAxI9W0blviVkv9qKMx3pXsMKquRVxDrN8qD7ZX1OI4I
         7E5RhOODeFKbcsAtobVDlORCk3tlTAhT/NgfhlLaDVOxfHtQG2mhVvXK8pMW24YOatCJ
         6Mut00igKx8LPgpVRXBk3rmQyIxWQ9muZsamzPO6XCGBcric/ICSNA+HPExieV4kcbQv
         TBOp6DT2mvUwABoyq5+aD9hfA0jQXg/RfNZxBjWXhvWchqXyiImBElF20gXodDGzV9rk
         Epvlknu/FvxIdHeFL5qQbBdlgNDdCJ5jt3Iz289qPYL5hOu1jxiEGHCCMBb4Rff5TSMA
         bObw==
X-Forwarded-Encrypted: i=1; AJvYcCWlfynRgCW51vxspfZNvDMVnlceEezc5RVUqWbDRcVMn0Oow52cJjh0LkFITSaqXbRFFSrTJCyWteQR@vger.kernel.org
X-Gm-Message-State: AOJu0Yz6r7rpVlJoWN+ev7bQ7JIY6nikvRlyWkMc5AJ9dw30suiU4rE6
	ByUNcjfu5CT5AFMyZXZ8KYMQjZzuAXZmKcwjoNqpaWJUv3ovpl0jOpqtZrkxrGQvi1wpcXsOHYP
	ijUQvQA==
X-Google-Smtp-Source: AGHT+IFJD5qJ8MoWXYq3MeKta2yygNl8qvdxme+xxEYvwMoAACneZQcghqeTL0yFWDPZvoSjrD0dclHeIIM=
X-Received: from pgjq5.prod.google.com ([2002:a63:e945:0:b0:b47:34d0:d386])
 (user=royluo job=prod-delivery.src-stubby-dispatcher) by 2002:a05:6a20:2595:b0:2fa:26fb:4a5c
 with SMTP id adf61e73a8af0-32da84edd1bmr17849128637.59.1760127374950; Fri, 10
 Oct 2025 13:16:14 -0700 (PDT)
Date: Fri, 10 Oct 2025 20:16:03 +0000
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0
X-Mailer: git-send-email 2.51.0.740.g6adb054d12-goog
Message-ID: <20251010201607.1190967-1-royluo@google.com>
Subject: [PATCH v3 0/4] Add Google Tensor SoC USB support
From: Roy Luo <royluo@google.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
	Krzysztof Kozlowski <krzk+dt@kernel.org>, Conor Dooley <conor+dt@kernel.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, Thinh Nguyen <Thinh.Nguyen@synopsys.com>, 
	Philipp Zabel <p.zabel@pengutronix.de>, Peter Griffin <peter.griffin@linaro.org>, 
	"=?UTF-8?q?Andr=C3=A9=20Draszik?=" <andre.draszik@linaro.org>, Tudor Ambarus <tudor.ambarus@linaro.org>
Cc: Joy Chakraborty <joychakr@google.com>, Naveen Kumar <mnkumar@google.com>, Roy Luo <royluo@google.com>, 
	Badhri Jagan Sridharan <badhri@google.com>, linux-phy@lists.infradead.org, 
	devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
	linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
	linux-samsung-soc@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"

This series introduces USB controller and PHY support for the Google
Tensor G5 SoC (codename: Laguna), a new generation of Google silicon
first launched with Pixel 10 devices.

The Tensor G5 represents a significant architectural overhaul compared
to previous Tensor generations (e.g., gs101), which were based on Samsung
Exynos IP. Although the G5 still utilizes Synopsys IP for the USB
components, the custom top-level integration introduces a completely new
design for clock, reset scheme, register interfaces and programming
sequence, necessitating new drivers and device tree bindings.

The USB subsystem on Tensor G5 integrates a Synopsys DWC3 USB 3.1
DRD-Single Port controller with hibernation support, and a custom PHY
block comprising Synopsys eUSB2 and USB 3.2/DP combo PHYs.

Co-developed-by: Joy Chakraborty <joychakr@google.com>
Signed-off-by: Joy Chakraborty <joychakr@google.com>
Co-developed-by: Naveen Kumar <mnkumar@google.com>
Signed-off-by: Naveen Kumar <mnkumar@google.com>
Signed-off-by: Roy Luo <royluo@google.com>
---
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
Roy Luo (4):
  dt-bindings: usb: dwc3: Add Google Tensor G5 DWC3
  usb: dwc3: Add Google Tensor SoC DWC3 glue driver
  dt-bindings: phy: google: Add Google Tensor G5 USB PHY
  phy: Add Google Tensor SoC USB PHY driver

 .../bindings/phy/google,gs5-usb-phy.yaml      |  88 +++
 .../bindings/usb/google,gs5-dwc3.yaml         | 141 +++++
 drivers/phy/Kconfig                           |  15 +
 drivers/phy/Makefile                          |   1 +
 drivers/phy/phy-google-usb.c                  | 286 +++++++++
 drivers/usb/dwc3/Kconfig                      |  10 +
 drivers/usb/dwc3/Makefile                     |   1 +
 drivers/usb/dwc3/dwc3-google.c                | 597 ++++++++++++++++++
 8 files changed, 1139 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/phy/google,gs5-usb-phy.yaml
 create mode 100644 Documentation/devicetree/bindings/usb/google,gs5-dwc3.yaml
 create mode 100644 drivers/phy/phy-google-usb.c
 create mode 100644 drivers/usb/dwc3/dwc3-google.c


base-commit: e5f0a698b34ed76002dc5cff3804a61c80233a7a
-- 
2.51.0.740.g6adb054d12-goog


