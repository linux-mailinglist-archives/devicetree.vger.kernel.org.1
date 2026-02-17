Return-Path: <devicetree+bounces-266066-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GLNtCF5FlGmcBwIAu9opvQ
	(envelope-from <devicetree+bounces-266066-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 11:39:26 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6C60114AEEC
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 11:39:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id C1A423023341
	for <lists+devicetree@lfdr.de>; Tue, 17 Feb 2026 10:38:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 96405326D5D;
	Tue, 17 Feb 2026 10:38:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kaW1mQDa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f169.google.com (mail-pl1-f169.google.com [209.85.214.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59298326953
	for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 10:37:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771324680; cv=none; b=MWKmMAYQvB122i7BNsQzLrfqXE3ZsfMHJyTPwXGrLKSCkjMKv/IO9cdiqjtYfrAB239zxlH54TaDTbhx2R12meRe86p/0nd6Oy6Q2aFjs92WcxSmtqY5VT8AV4m0tPxdcIfvtHQGIYxINGUpjnnxqCTB0uYPH17wtdJ2zefDWLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771324680; c=relaxed/simple;
	bh=VELRk/3T6JQEGjP8j7wJdh6tOQP7e6O2cy6b5pMe04M=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=AsChzpF6LFcDaV/m+lY++UcaomHTV02SBh2ZQlT7v0dtRzi4vYePhlc7Eq/sBjqi3UWXscmbU4e0DXvOv7LMa8oZzDqtzTGDePa/9982pQz+PXTTWu2An2MuyiCfLab1yHxxlSlti3uGeEs6gi8WvWdPQt7f2iGJ9bozc/yS/Hk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kaW1mQDa; arc=none smtp.client-ip=209.85.214.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f169.google.com with SMTP id d9443c01a7336-2a79ded11a2so25434205ad.3
        for <devicetree@vger.kernel.org>; Tue, 17 Feb 2026 02:37:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1771324678; x=1771929478; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=inByKGEuGTcHK6CknaH427tzHzcGDbCJiVSyK40pxu8=;
        b=kaW1mQDagG+A8/aq8JtfpN8PBH0zjalhK0W0bkz9nJiiD7encpibY9GYxFCiKJGggw
         b8jfmKqetFxS1Ru29Ip9UGZD2TTBgeC/RFYWF2/CUjm87BQkArprGNOsDUbqOvxtcGr9
         UoXE3XrbOO4KcUXU3HrO6zk1khMnsj7fltalp7qolRwLitTERpXsG3PYcqq7XiZZV25K
         5BH10s9tqBck2EOJn6JMoFX+Xw1XkwzlmrXlUzC1VRiYwQO5twbMJ1ZxYXh6WIe0wIGq
         mKLhP2KrN7XNPtlZo3QpQ4YYMw2ozeeUDFGH+zvl/MHdMZOZPpejixdqBsmdekIcB3IC
         w8yQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1771324678; x=1771929478;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=inByKGEuGTcHK6CknaH427tzHzcGDbCJiVSyK40pxu8=;
        b=Mr7QhjRSa+ZSzgxmoya86pXhJ9K7gpFZHRgqyTfgbrCKSvCwq9ymn3qGTY4jHULsoQ
         zrByPHa/v9tzrh3TF1M+mFjt3XBwqhZTjwGXUJye4iR0o4H1ZOTlWa/HkQFRawSlskzp
         O6fPhoM7SI5aMMVNvZyoORDobMvJukyfyF1UK2zzNOY7cOkMQMQugrI2XweD9rB0crux
         jbvDWWwQTQP6cAalWz5XBKECP3e+P5tSkyPc79qdGVFu6cqxUoPZtXtRiIAU7Zgf6d2j
         XAjujw2BUf5g5I0uwZAHt6tqCf/ZlAEOKvw+4C0NJJdUPk3BMHpCNt7B2SlQTtv1lM75
         JglQ==
X-Forwarded-Encrypted: i=1; AJvYcCVVY/Dl5P96vN3dnVYtXx0wcPqkN7zDBHvC10YAd13UQvjhirx4U8iF/wip9qrQvTFC9C/2+bBK1Bqv@vger.kernel.org
X-Gm-Message-State: AOJu0Yzhd+hSg72S98Iu8StmoaH00NVt7/NT+g+uZ3rq4orZI4MwRluf
	JbrUguRDWe/oaZXvI26tqcu88kOWs35mR+SUQRBQ7vo4xFbF2ppSkyMJ
X-Gm-Gg: AZuq6aLrtjNZ+h+w9nY2PkGDjHTGb4XkvOsAb/DHX/A1lqi7dAKEtD4fitoJCDWAJuZ
	hC7o6ythdPHPF/X3j9PNC1V01CTXY04/1961RU+9mc2Lv8hp89Zt6kFZC828a5sUY76fs2L6l+w
	TchXduZw3wuAMNUUCocp+yO8grAgR/zfHjXCDfYZbrJGJqwAipal636pg2rb8AcjSc4YTs4W/eh
	zZW3+NgORh8snFWJmUpakObRI0sBGHjksEjrRvOOMWN+hXWPu4wrao/WE8zVcINXkgVKq0KPMTb
	Mp+sKWAXaInN72OxTYrGGke/F7MKtoOI02CGFHvoXmXtSb0HeeGzjsodENyIty6Pxz+GZgJ7Msf
	IMd6aSZeKWVMghAtySC7/SSsoMsVmracCaj6h1FyZWhyRnhzb1nxXdUySSSa8JmzaemWBVGtVmh
	Edz3LTLiF+4Qdv34vBmiY7v+VNA0OPoADcin0iryv4krohFM/+ULZsD8cGwg8=
X-Received: by 2002:a17:902:da89:b0:2aa:d316:f30e with SMTP id d9443c01a7336-2ab50586bf7mr125138475ad.28.1771324677476;
        Tue, 17 Feb 2026 02:37:57 -0800 (PST)
Received: from test-HP-Desktop-Pro-G3.. ([103.218.174.23])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ad1a6fa21dsm94337205ad.12.2026.02.17.02.37.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Feb 2026 02:37:57 -0800 (PST)
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
Subject: [PATCH v14 0/3] Add Qualcomm Technologies, Inc. Talos EVK SMARC support
Date: Tue, 17 Feb 2026 16:07:46 +0530
Message-Id: <20260217103749.1249718-1-tessolveupstream@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-1.16 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-266066-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tessolveupstream@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,lists.freedesktop.org:url]
X-Rspamd-Queue-Id: 6C60114AEEC
X-Rspamd-Action: no action

Hi all,

This patch series adds device tree binding and board support for the
Qualcomm Technologies, Inc. Talos EVK SMARC platform based on the
QCS615 SoC.

The first patch introduces the DT binding entry for the Talos EVK
SMARC board, and the next patches adds the corresponding DTS
files for the platform.

Note:
USB(usb_1_dwc3) supports host-only mode based on the switch SW1 on
the SoM, which is purely a hardware controlled as USB-ID and USB-VBUS
is not connected and switching cannot be handled from SW.
USB0 is configured host-only in the base device tree, hence host-only 
mode is supported on Linux boot up.
For ADB to work during normal runtime, a separate device-tree overlay 
enables the Micro-USB peripheral configuration.

Changes in v14:
 - Added DT aliases for i2c1, i2c5, and spi6.
 - Dropped unrelated talos.dtsi and qcs615-ride.dtsi modifications
   (handled in separate patches).
 - Updated commit messages.
 - Updated USB note in the cover letter for maintainers' awareness.
 - Ignore v13 patch.

Changes in v13:
 - The USB HS PHY node naming has been corrected to follow the
   existing convention used across the tree (usb_x_hsphy instead of
   usb_hsphy_x). (suggested by Konrad)
 - Removed unnecessary output-low from the wlan_en_state node.
 - Updated WiFi DT to control PA power through WLAN_EN, removing
   separate regulator definitions.
 - Added USB peripheral overlay allowing USB0 to operate in device
   mode when required. (suggested by Dmitry)
 - Updated commit messages.
 - No functional change in bindings file.

Changes in v12:
 - qcs615-ride.dts patch squashed with talos.dtsi patch.
   (suggested by Konrad)
 - Added static power supply node for lvds-panel.
 - The ti,dsi-lanes, ti,lvds-format, and ti,lvds-bpp properties
   dropped because they were redundant for the current
   panel/bridge configuration.
 - No functional change in bindings file.

Changes in v11:
 - Fixed inconsistent USB PHY node naming in qcs615-ride.dts to
   align with the expected naming convention. (suggested by
   yuanjiey)
 - Reordered properties in property-n and property-names for
   consistency across DT files.
 - Removed unnecessary output-low from the bt_en_state node.
 - Used a &label_reference for hdmi_connector.
 - Added pcieport0 device node, which is required for WLAN to
   power on.
 - No functional change in bindings file.

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

Sudarshan Shetty (3):
  dt-bindings: arm: qcom: talos-evk: Add QCS615 Talos EVK SMARC platform
  arm64: dts: qcom: talos/qcs615-ride: Fix inconsistent USB PHY node
    naming
  arm64: dts: qcom: talos-evk: Add support for QCS615 talos evk board

 .../devicetree/bindings/arm/qcom.yaml         |   1 +
 arch/arm64/boot/dts/qcom/Makefile             |   6 +
 arch/arm64/boot/dts/qcom/qcs615-ride.dts      |   2 +-
 .../qcom/talos-evk-lvds-auo,g133han01.dtso    | 131 ++++
 arch/arm64/boot/dts/qcom/talos-evk-som.dtsi   | 614 ++++++++++++++++++
 .../dts/qcom/talos-evk-usb1-peripheral.dtso   |  10 +
 arch/arm64/boot/dts/qcom/talos-evk.dts        | 139 ++++
 arch/arm64/boot/dts/qcom/talos.dtsi           |   4 +-
 8 files changed, 904 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm64/boot/dts/qcom/talos-evk-lvds-auo,g133han01.dtso
 create mode 100644 arch/arm64/boot/dts/qcom/talos-evk-som.dtsi
 create mode 100644 arch/arm64/boot/dts/qcom/talos-evk-usb1-peripheral.dtso
 create mode 100644 arch/arm64/boot/dts/qcom/talos-evk.dts

-- 
2.34.1


