Return-Path: <devicetree+bounces-243515-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 93953C987F8
	for <lists+devicetree@lfdr.de>; Mon, 01 Dec 2025 18:22:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 52D773A280B
	for <lists+devicetree@lfdr.de>; Mon,  1 Dec 2025 17:22:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C2DC83375CB;
	Mon,  1 Dec 2025 17:22:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="T3b7rkPa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f173.google.com (mail-pl1-f173.google.com [209.85.214.173])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29230335BDB
	for <devicetree@vger.kernel.org>; Mon,  1 Dec 2025 17:22:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.173
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764609753; cv=none; b=bKClEh1GAU+PTnzTzdPBRTe7eV0j7kMNe8ald7ocs5y5s9tOLOtnjrmsC07Z4zGdMp3uRIqLOU4YGWoB5ANV2ybWnQCHVJUkSbFxACvPTFZ6i9Ju5xUi0OQxmaSqLq7Wqsy2qpQChlprimliGxSG5cCwZfWhmWXl7zwcSv7LCtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764609753; c=relaxed/simple;
	bh=lgvjcqtaGhq3tWC52NRhGhdGV2AfWQbv6vCNqECLqpg=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=lscgOrweGolH+1RdUHK1trz1CzQanCagbpncmY7fqr33ueyhERROwQb6+SvG0YELO/JftDoqpNA7gUsIKdfHPNhBfSYNiGZpg2NzIe9KcYz4kOsiCIxU/xfuyMd2GQXLLlUMdHNmyjsS72xILTJHPYAmKLTDXFKQWs6lR7nglN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=T3b7rkPa; arc=none smtp.client-ip=209.85.214.173
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f173.google.com with SMTP id d9443c01a7336-29558061c68so54494445ad.0
        for <devicetree@vger.kernel.org>; Mon, 01 Dec 2025 09:22:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764609751; x=1765214551; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=RYX129SJ+ny4asWr1yTdngoIEO7mFWo7Le9OoCt6DBg=;
        b=T3b7rkPa4aoJzb60HLiC1DUpZbgaaS3IxGrfmmNbZvdUaKalmpHooZU2bntlUqNIqO
         p/AGCrZO7ANRGAryOU9Q8yG6EyimLoLeJ4YNXGcloV/3J+Tap0+RG3deY7/L06aK/h+0
         UKSdD9vxAKghmKV+NqYT9e+wmxbFZL7eL8jbxZsKhF4ZkMVcPQw6F5M/Q/yW+wOi9kBa
         XAVYTioJCukFF/iNLjdKgZX7tzMtRNf7WCRlIWTC5HXEpfhM/WFeWDfaf3CLQ4eok2HD
         OvurddXxutrd7eeErgrfcDclarSZfSfQY2Xsdo6RWN/SofKq7gOoOMPBBwjjhzVoVqT2
         Xf6Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764609751; x=1765214551;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RYX129SJ+ny4asWr1yTdngoIEO7mFWo7Le9OoCt6DBg=;
        b=LDXFMZ7jQQgI9QpdZjrK4yJiN4WvCeu9X/kmWPuurKHr9Z0yMbvN7Pu0xCcHepoEW5
         Oxt/YoKgV7Sm/lUzEsbKDbSN/zf+V4eEEeq2JBEaYccVL2rvVRB6mlsrzuQBp38XRdig
         daw3IXBKL0tDhkMztArZhWTJ1P+k0ED1RdkukwN3Kj9oKrkZ4yhFvC3BM10ewnv8q9pj
         OB2xL038STTqWxq96m0N6cqZiJgbpdJUvIAESxu3BkXITgmf8LAF6foLsDbjKJyZ7F/T
         tjany0vdQJQOt6aKqVES67+FAozC7znhzlRJMYfbGCrTa2Mx6YUqD4zUOJ9x7PmbuV+C
         Xibw==
X-Forwarded-Encrypted: i=1; AJvYcCW6VCPXj6nKpwWqnhbOi1GlVbhJg1FaoL8oED8slefQCr6D3RvwRGe1NA0RLk0lH9yU/tGTe6o0xG3+@vger.kernel.org
X-Gm-Message-State: AOJu0YwUdLtm2OjiHvl9IZYMZloCc7CstHyPVT/onMi32EDEmAVwmKuH
	IQab2qCE3O7REQ+9XgVmlFJNJxI3Jg30f78hLgyyOm/QxdjtGHetSsZj
X-Gm-Gg: ASbGnct0rqVt/RLfMW2L28XAgj06nJA0rNQBlhGLjdijGboiAVEO2aeylgWnOG0F9UF
	aDcAq2AS8EjnN3iYrsdPSdOaPt93x15zSbrup0Cy0YicN9cbsENAj5sk85cSOHIzw1suLIfn2bB
	VHpsKn3M6zEVTDY50EG1IBC9Z1mNN6fZx02iTmWJA5IYK6ITbZQ2y6toDaZ6W7xMb4e0yPMqCYB
	ekcR8wVJlF4qvkWPgMAbg+oWgDYuaQCRn6seieBs+ItRqbywzuGLUI55RRMu0la3CphoAKxcf/C
	OYTMpYmS302gaBtQVmkQGYybqkU3k5cAdtMR7MxqgfRnStOoUlih8f2ujji8VAUSeJOky0Lp0aV
	Wgv/dn70LKnq0xCK4kX6f8HSFBV3oxpMvgIoYiP6/Zd3eU7GiI5HZ5Vqqfxl6gGsnRp/iMV94Gx
	Y8tmw64/dBBSFLAyyy+mEDLSO9WUom/cYaQOOb
X-Google-Smtp-Source: AGHT+IH4HDzsnkVq+NQckf8T5kiyyEPQ2mKO8GjZg56jEEZ3xOy39fNBP71SZI9A4Y01ZgoGKF9Nhw==
X-Received: by 2002:a17:903:947:b0:28e:a70f:e879 with SMTP id d9443c01a7336-29b6be8cb2dmr429364275ad.1.1764609751120;
        Mon, 01 Dec 2025 09:22:31 -0800 (PST)
Received: from test-HP-Desktop-Pro-G3.. ([103.218.174.23])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29bce44270dsm129876935ad.34.2025.12.01.09.22.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Dec 2025 09:22:30 -0800 (PST)
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
Subject: [PATCH v9 0/2] Add Qualcomm Technologies, Inc. Talos EVK SMARC support
Date: Mon,  1 Dec 2025 22:52:20 +0530
Message-Id: <20251201172222.3764933-1-tessolveupstream@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
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
Sudarshan

Sudarshan Shetty (2):
  dt-bindings: arm: qcom: talos-evk: Add QCS615 Talos EVK SMARC platform
  arm64: dts: qcom: talos-evk: Add support for QCS615 talos evk board

 .../devicetree/bindings/arm/qcom.yaml         |   1 +
 arch/arm64/boot/dts/qcom/Makefile             |   3 +
 .../qcom/talos-evk-lvds-auo,g133han01.dtso    | 131 +++++
 arch/arm64/boot/dts/qcom/talos-evk-som.dtsi   | 447 ++++++++++++++++++
 arch/arm64/boot/dts/qcom/talos-evk.dts        | 137 ++++++
 5 files changed, 719 insertions(+)
 create mode 100644 arch/arm64/boot/dts/qcom/talos-evk-lvds-auo,g133han01.dtso
 create mode 100644 arch/arm64/boot/dts/qcom/talos-evk-som.dtsi
 create mode 100644 arch/arm64/boot/dts/qcom/talos-evk.dts

-- 
2.34.1


