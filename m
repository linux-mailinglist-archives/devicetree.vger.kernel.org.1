Return-Path: <devicetree+bounces-250521-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 58605CE9B8E
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 14:02:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 519CB300A36B
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 13:02:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3DBC81E832A;
	Tue, 30 Dec 2025 13:02:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RokiQGXH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com [209.85.214.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AC0386331
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 13:02:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767099767; cv=none; b=aHWbDdlXSnkkMwijZnWEYtii351jjI/v4uGIquAFY8n32nUtkDHAoLvXMxLYnqasgvuwlD+TR6Uh4vSdSUWPjJqpH73k2HTPoMD42vlqKbYG0CKaCdPvgAcBLNJM3Lgu8edUW4IlJYvwLj00t0XGyCE9vA7K9fI5ZcfsaHhIdZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767099767; c=relaxed/simple;
	bh=A7goDVPjemqReeWrRKyztksAde3x+G38T3+5x8JQNso=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=PePsk3rMXTpCnfQNf4HEY1RgBPVasg0IdlVJpOqFMHmhqfF3Cvo3Wyb9HqjXD2nTsWyGyU6CmkL8dlPvFKP0tA0f4KWoSu630ImP7HkT85ZC9dHow+NIKXgPYRuQAwuLFZUekTaYASLuWRmHrps+5DvG72QlR2mN5/K8Y6Zd2Ew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RokiQGXH; arc=none smtp.client-ip=209.85.214.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f194.google.com with SMTP id d9443c01a7336-2a0c09bb78cso72158175ad.0
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 05:02:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1767099765; x=1767704565; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HLKlhz6rGp/D6ymagIgWVmkqiubCdQXpns7oixNkLis=;
        b=RokiQGXHbghga+tYVUYvASWssvI0wV+TjKxfwJXTodwTE2OFhyNdUGS12tONSZBuqs
         lsxjANKFd0IPEkm4ffp/Fl4wLC9KI8k9GGlh+VSiDrq84AqI/BVh7gutrn++hIzh/gQ0
         cZzoCMyR4Sohg0/QloulDD5ig8bXCL18wu7E5fxiD045NMvk13MQdAJOaJ3A1WxNhVL9
         9jZb9qQY6FdOEJCzFTzVAGA39BBtW1pNPWEJURfH9uRlXzfPHGkmfc7wKtgikeAF/i94
         WV/JsYGS6erlaMB7rOVOcjC5n0MWgaiy+FN6I+HNC5Ozma3OmuvEXhUaBSnrJKWp5Byj
         FVlg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767099765; x=1767704565;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HLKlhz6rGp/D6ymagIgWVmkqiubCdQXpns7oixNkLis=;
        b=fRF0vTp0jw5dHv1g90l91Ijc6Uy2Z5nanX03W5DjIrAHRzA6HwvhlmGfV+gcVcaTgM
         e4kXmXwFqnHC8VjJvYdSZpn4CRbwnBvZmMlPesa8SiVqkg976FozmtCjIR8EcekKkXmK
         F/NYyHZnzOwttZRbKFa23931FXYV8ecIKrt7wv1VPDRdTWfASrnNZkrZvYIK76c/nEDH
         eqEJ2txlWLuykOd3gXrcwxBaFQMWbt7vkbegMiNj9WOrcjuO9164jbmo0u88ucftS60E
         5uEC5DwjeajWXSxQuy6jcO0sRxXkun5NvCFjK+AeVlQ/eUbxr+x6JGhBao5L90MLvh7Z
         ZVng==
X-Forwarded-Encrypted: i=1; AJvYcCX46WRNjcimQKU9u7RXmmiDkLbUzzYbaIFzbdxF4QHJD6GeDy9iCcbTWEjv26OAIzoe2pmQ+bU8WWN3@vger.kernel.org
X-Gm-Message-State: AOJu0YwgWN3enOX2++ci03Lzxeo+JUzTQX2nMMbLEeVwC1uCW+iU7Od2
	a8Ld0tOTiJ1E5WfTQTXUHDtkA2IAdhu90RcTvPGji7ZmPP36M4oq1OTE
X-Gm-Gg: AY/fxX5XWOUeTusoQgh4ljpifDD0jx2pPdzfvE8AGTrNOkMgwcA9IRh8shn995v18iE
	r2hwSC5q3nxK7ijYIRzi87xOcyVd/8rVWijsEJRVJY7XRyK9OvqSjFEZg4+K9DdXwMCEzBNJiL8
	GSgSuuJSv87mzSQVF6FcImJRHZNEJnm6U/7F4N7Yej/dAN6TMAjfHTxwMZZs/Z9Nlt3QyMrypom
	b0j0JlVdYeOwZYaEuQS2JqM7bao0LDn+pZnb2IT2xnERjOMHm7hAgoSfQu9jdP0/qMZL97ph6C4
	SRC06/x8pXQqd9xtpeBJgvsF0pcHnyrCSV21Mdk4oScJMfM1ZJ7F53ql5fXLrO1dskvwVfB5aD6
	LL4vAbSKMT9HqmLP/Ymkip1aXhLnhpcjh8nVRZxJSn8rRcQ9Ft8EVLNwwEMSBi9nb5pLVUNGLQ4
	hWoMM3HcM0dRFQDUKBmrwHaNn7aZhN2auRAYdA
X-Google-Smtp-Source: AGHT+IGbqMYFL3Io6Y6S1jbyjeznjQ9JE4HRc6Gp2SuKHCZwpb+iamUm8o2kxPEbCTQppDFrlIeOFQ==
X-Received: by 2002:a17:903:b48:b0:262:f975:fcba with SMTP id d9443c01a7336-2a2f0cbc90fmr298809205ad.9.1767099764608;
        Tue, 30 Dec 2025 05:02:44 -0800 (PST)
Received: from test-HP-Desktop-Pro-G3.. ([103.218.174.23])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d6ec6bsm296003075ad.87.2025.12.30.05.02.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Dec 2025 05:02:43 -0800 (PST)
From: Sudarshan Shetty <tessolveupstream@gmail.com>
To: andersson@kernel.org,
	konradybcio@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sudarshan Shetty <tessolveupstream@gmail.com>
Subject: [PATCH v10 0/5] Add Qualcomm Technologies, Inc. Talos EVK SMARC support
Date: Tue, 30 Dec 2025 18:32:22 +0530
Message-Id: <20251230130227.3503590-1-tessolveupstream@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=yes
Content-Transfer-Encoding: 8bit

Hi all,

This patch series adds device tree binding and board support for the
Qualcomm Technologies, Inc. Talos EVK SMARC platform based on the
QCS615 SoC.

The first patch introduces the DT binding entry for the Talos EVK
SMARC board, and the second patch adds the corresponding DTS
files for the platform.

Note:
USB(usb_1_dwc3) supports host-only mode based on the switch SW1 on
the SoM, which is purely a hardware controlled as USB-ID and USB-VBUS
is not connected the switching cannot be handled from SW.
Hence from SW Host-only mode is supported on Linux boot up.

Changes in v10:
 - This series extends the gpio-backlight driver and its DT bindings
   to support multiple control GPIOs. (suggested by Dmitry)
 - Addressed DT node labeling feedback.
 - Polished overall device tree structure and minor formattings.
 - Corrected pinctrl configuration for the active-low PERST# pin.
 - Includes a fix for inconsistent USB PHY node naming in
   talos.dtsi. (suggested by Dmitry)
 - Enabled WiFi and Bluetooth functionality.
 - Updated commit message.
 - No functional change in bindings file.

Changes in v9:
 - The updates in the following patch url is taken care in this
   patch series.
   https://lists.freedesktop.org/archives/dri-devel/2025-November/534473.html
 - Ignore v8 patch

Changes in v8:
 - This patch series depends on the below url
   https://lists.freedesktop.org/archives/dri-devel/2025-November/534473.html
 - Moved the contents of `talos-evk-cb.dtsi` to `talos-evk.dtsi`
   which will describe all the standard configuration of the EVK.
 - Introduced 'talos-evk-lvds-auo,g133han01.dtso' which has overlay
   to disable HDMI and adds the LVDS-related on top of the base
   dts file. (suggested by Bjorn)
 - Ethernet and Wi-Fi/BT are not (yet) supported.
 - Updated commit message.
 - No functional change in bindings file.

Changes in v7:
 - Added i2c clock frequency for i2c5 node.
 - Moved adv7535 controller section to talos-evk.dts file.
 - Reorder the usb nodes.
 - GPI_DMA nodes added in the device tree files.
 - No functional change in bindings file.

Changes in v6:
 - Clarified description of `talos-evk-cb.dtsi` to explain that it
   defines common carrier board interfaces shared between HDMI and
   LVDS variants, And It’s a single carrier board. HDMI and LVDS
   share the same DSI interface, and only one can be active at a
   time depending on a DIP switch.
 - Added missing newlines before 'status' and between the last property
   and subnode (suggested by Konrad).
 - Updated commit messages for clarity.

Changes in v5:
 - Updated commit message. (suggested by Krzysztof)
 - Introduced generic node name for can, dp, hdmi-bridge. (suggested by
   Krzysztof)
 - Introduced talos-evk-cb.dtsi, which has common carrier board
   interfaces.
 - No functional change in bindings file.

Changes in v4:
 - Updated product name to full form per Krzysztof’s feedback in
   dt-binding comment.
 - Hook up the ADV7535 DSI-to-HDMI bridge to base DTS file.
 - Add DP connector node and MDSS DisplayPort controller.
 - Added USB note in the cover letter for maintainers' awareness.

Changes in v3:
 - Addressed comments from Dmitry regarding USB1 `dr_mode` and
   added a DTS comment.
 - No functional change in bindings file.

Changes in v2:
 - Renamed compatible to "qcom,talos-evk" (suggested by Dmitry/Bjorn)
 - Merged enum entry with existing `qcs615-ride` block (Krzysztof)
 - Fixed subject and commit message to use imperative mood.

Thanks,
Anusha

Sudarshan Shetty (5):
  dt-bindings: arm: qcom: talos-evk: Add QCS615 Talos EVK SMARC platform
  dt-bindings: backlight: gpio-backlight: allow multiple GPIOs
  backlight: gpio: add support for multiple GPIOs for backlight control
  arm64: dts: qcom: talos: Fix inconsistent USB PHY node naming
  arm64: dts: qcom: talos-evk: Add support for QCS615 talos evk board

 .../devicetree/bindings/arm/qcom.yaml         |   1 +
 .../leds/backlight/gpio-backlight.yaml        |  12 +-
 arch/arm64/boot/dts/qcom/Makefile             |   4 +
 .../qcom/talos-evk-lvds-auo,g133han01.dtso    | 126 ++++
 arch/arm64/boot/dts/qcom/talos-evk-som.dtsi   | 598 ++++++++++++++++++
 arch/arm64/boot/dts/qcom/talos-evk.dts        | 139 ++++
 arch/arm64/boot/dts/qcom/talos.dtsi           |   4 +-
 drivers/video/backlight/gpio_backlight.c      |  61 +-
 8 files changed, 926 insertions(+), 19 deletions(-)
 create mode 100644 arch/arm64/boot/dts/qcom/talos-evk-lvds-auo,g133han01.dtso
 create mode 100644 arch/arm64/boot/dts/qcom/talos-evk-som.dtsi
 create mode 100644 arch/arm64/boot/dts/qcom/talos-evk.dts

-- 
2.34.1


