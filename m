Return-Path: <devicetree+bounces-264591-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ALaBHc0EjGkeewAAu9opvQ
	(envelope-from <devicetree+bounces-264591-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 05:25:49 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id B38A91212D7
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 05:25:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 39F67300E6BE
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 04:25:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 127B0353EF5;
	Wed, 11 Feb 2026 04:25:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="j7PbTRrA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f194.google.com (mail-pl1-f194.google.com [209.85.214.194])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E250353ED2
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 04:25:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.194
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770783944; cv=none; b=o/Nrzll93XeXLD+APt12QnoITRxAaNlVjPieNQPpIsDLIo2nL0fqmuooFBpv2Txmuhn+awK0cKEEM1G/zNC7799MyR8iZaWJsPfh/3kFbNxnBjT8gQF7+h9yI3NW5qTCrUTwqBrCBNcSVh3NHtOg7OOMRI3qc6cyczgJjj1pOq8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770783944; c=relaxed/simple;
	bh=a/Rf6zqsKGBE+e1FRAYyppmHvNRqQ6IjTz97ZmK5drg=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=qA/mFz5JYe+lrJ6G0G+QfEAMo5hiIeOgW+vhAWLksUzr50rZNm43YYtnz5H9nvu+yJjhy13/M/0BbXnQOV2xKJ15ssBHdCYBTtbG2FXJ8Cc6z2Dvy+Kjn3FJPq/ujK9KwYGM0FGPSEGwVLaOYpFV/ydygUQU2sV1UOZ5L/WDsxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=j7PbTRrA; arc=none smtp.client-ip=209.85.214.194
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f194.google.com with SMTP id d9443c01a7336-2aad802a27aso21512195ad.1
        for <devicetree@vger.kernel.org>; Tue, 10 Feb 2026 20:25:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770783943; x=1771388743; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=vvXIZ0LVSoRkOTjntwm/CQ+3FITjz7N18mlu093C8h4=;
        b=j7PbTRrAk1rJTvjA+f6S2hPSTrX/b93vldk1urhNuNvn/yLQKVzUI4AAutIMSbjF8K
         3kKXyteXcd+rJEThKECDePVQVj1Gh30Ve+tKYAIHOlhnTYoXIQU09izarMfkWDGqXVno
         qbLZVrUjTY87Ou3oo/oa3RSv7lunE6tSRg+99+GTQ2zveAFlpAXWbNGMayO8QXNB0KuE
         +LGwmfCF8v/mvOUWVLsp4YfXAgBiwmCt5VwBjEHSyAv2etcEGaXT2DG5jfSihfPCfZIx
         3PkQJvbOmz095FI8ZR4z7yJMAKuxuOXb4s+T8uy/aXCMj8jxfbitcaCYgd8xalr+3hk0
         wEcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770783943; x=1771388743;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=vvXIZ0LVSoRkOTjntwm/CQ+3FITjz7N18mlu093C8h4=;
        b=E9rotLBXpuw89KLOCrQrhoV9OadRw8R+QjMgF9R1vpMZDuPhl58vGne6bnvYYHFo6y
         MaKINqtX2edqmbwS8J5T998na1lgWGZwe4INIYKsAuB3l39Whi4W59v7mWtQf+rw5CU8
         wy74mq37eRiph+zLanB92ShlWHwOMKbDe/WqLu/1WlmuoLSK1tbqlLXMHwqqn0RXFWpu
         8xo4HyF3JwPOItPOdbnbv5HpLbVzfhVzdL6hrHbL9V58GdKJ+CrszcVakV2QwkOUbi5N
         IQ/YPAUxAdQ4Fa7gn7j0HpOaoHPKDyeghmxFD/LE6WL1keQsCb+UE8s/PBObaGx20Ws/
         MP6A==
X-Forwarded-Encrypted: i=1; AJvYcCUb+9t20sMlak8nsrWKGsnsrex4nRVVQ58uQE3+8Dl6jhY9axXjRX9Ry6oxRDsckAI07y+7YVTBBOSK@vger.kernel.org
X-Gm-Message-State: AOJu0Yxn0lvD9gtE7V+3LY7vk9+8E3gYaPMmzvgcgMdHRel6Qij1kIwn
	PlmculP6pFbz7zM5sFclvd5blD0TBKhwTlEEG+D8yuNQEYmGYqmZQMWV
X-Gm-Gg: AZuq6aLkEDKuJXwciWF13Ov158oWMo2xzGXCVk2THBO+YKpDjXgbwLz9AmmnAN/fvXg
	XLzXuPpd9GYHwezPTzJd0iDkYy51KF8zwM/YQcPGhCxUzuBOOJGlMnCDz8dCrxV2Kr43TuolUdo
	pf3Th+cfty4715n7982wvDGL/I4ToJTyChkB0IDWzs2wyjCInHnOTDGaLDhXwnwlc4o2Zc/Hgkt
	SDkSTQg4e7NNr+/jrsfo1m7sV3bJUHimxSUZwwlug5rCz8ov8yO8cymestZzwyONBQR/WzvPKjg
	rYeIOQ01bsia9W1UNhFaRz6BRgLjrGDD4gUZhlIeCle4HLaVa1guFloLcvvztuECn9x2vPFvXFn
	g9a6C2ELmN0IVh7N7ybf/Y3Y6jLNczod3CCETA6dS1W3Bf4xK7+wauarc+knPXs06Z4XV6WXycV
	potWwZhqYkUFuRDq1DskvbPLRoJSQiGGe1Ku3sp+UFmIex0HvW
X-Received: by 2002:a17:903:2ecb:b0:2aa:d611:ac69 with SMTP id d9443c01a7336-2ab27f5cd15mr14663995ad.52.1770783942739;
        Tue, 10 Feb 2026 20:25:42 -0800 (PST)
Received: from test-HP-Desktop-Pro-G3.. ([103.218.174.23])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2ab2996617dsm8413545ad.47.2026.02.10.20.25.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 10 Feb 2026 20:25:42 -0800 (PST)
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
Subject: [PATCH v13 0/3] Add Qualcomm Technologies, Inc. Talos EVK SMARC support
Date: Wed, 11 Feb 2026 09:55:31 +0530
Message-Id: <20260211042534.162007-1-tessolveupstream@gmail.com>
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
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	FREEMAIL_CC(0.00)[kernel.org,vger.kernel.org,gmail.com];
	TAGGED_FROM(0.00)[bounces-264591-lists,devicetree=lfdr.de];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[tessolveupstream@gmail.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[gmail.com:+];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	FREEMAIL_FROM(0.00)[gmail.com];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,lists.freedesktop.org:url]
X-Rspamd-Queue-Id: B38A91212D7
X-Rspamd-Action: no action

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

Changes in v13:
 - The USB HS PHY node naming has been corrected to follow the
   existing convention used across the tree (usb_x_hsphy instead of
   usb_hsphy_x).
 - Removed unnecessary output-low from the wlan_en_state node.
 - Updated WiFi DT to control PA power through WLAN_EN, removing
   separate regulator definitions.
 - Added USB peripheral overlay allowing USB0 to operate in device 
   mode when required.
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
 arch/arm64/boot/dts/qcom/talos-evk-som.dtsi   | 609 ++++++++++++++++++
 .../dts/qcom/talos-evk-usb1-peripheral.dtso   |  10 +
 arch/arm64/boot/dts/qcom/talos-evk.dts        | 139 ++++
 arch/arm64/boot/dts/qcom/talos.dtsi           |   4 +-
 8 files changed, 899 insertions(+), 3 deletions(-)
 create mode 100644 arch/arm64/boot/dts/qcom/talos-evk-lvds-auo,g133han01.dtso
 create mode 100644 arch/arm64/boot/dts/qcom/talos-evk-som.dtsi
 create mode 100644 arch/arm64/boot/dts/qcom/talos-evk-usb1-peripheral.dtso
 create mode 100644 arch/arm64/boot/dts/qcom/talos-evk.dts

-- 
2.34.1


