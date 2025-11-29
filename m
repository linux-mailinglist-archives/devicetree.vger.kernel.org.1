Return-Path: <devicetree+bounces-243119-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id A5756C93F69
	for <lists+devicetree@lfdr.de>; Sat, 29 Nov 2025 15:23:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 463A23416F3
	for <lists+devicetree@lfdr.de>; Sat, 29 Nov 2025 14:23:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3706530F92E;
	Sat, 29 Nov 2025 14:23:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="I+AUmgHz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f174.google.com (mail-pl1-f174.google.com [209.85.214.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8313030F80D
	for <devicetree@vger.kernel.org>; Sat, 29 Nov 2025 14:23:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764426187; cv=none; b=ofHTTQZL9iLJ4Jbvp7v0SUxkPG7otmrt7sHTTZlF784jit8mi3B5Ry5Wmjrs377M/+9i1Zge6x5a2SaF0r6jY+fvGXYLIo33m6uLQASkZG267Qki8ImLbCOuTe7+dopUIuP4cR2J73g0KbwSy+b30Rgai1O7hDp43fk6DC5s2fg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764426187; c=relaxed/simple;
	bh=lN5QjyW8AqhnM2NvvPoN2Y87KsW7Fh+/CHqjUYXImis=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version:Content-Type; b=FUtEPemM9dSLLGeNgs4yV3b3LpsZLQA9NPvP6vHa8PWp7t4Lc81ctczmwYrD8Bm39Xhr01HyrgRaywXjKxLiy57eLk8sVBhiDrJdhz8ne+bMYOppri62dz9iFkBl7nhLkk9tOP3pNeGgo9LOXlATdWnhEnm8xsLF2QkGuYsR3pI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=I+AUmgHz; arc=none smtp.client-ip=209.85.214.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f174.google.com with SMTP id d9443c01a7336-298287a26c3so33142935ad.0
        for <devicetree@vger.kernel.org>; Sat, 29 Nov 2025 06:23:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764426184; x=1765030984; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=rH3A+KGeRgqNkZWfdUBvJzIgerremRicGb0nG6VTDjg=;
        b=I+AUmgHzAI8TiY4NgeUCFYxdwKalquLeIPpz5vWqCzjIJBO9On0et1rX9cdr6ZhoG+
         IINhr5fXkzrNJKrNqXKznJ4bFkhBOmsbKbBwz2wHczfZVBMf4CSDC+DnftgiNZYO1QjR
         06z12LJ520OTAznOs7UkJhM5X204kyiwS/dGIK57+dPXAnTWmNTfR7FcBdvAedU+fQ3v
         vFqYULKZP21akkfGM3Nf6sirw2efgwH2NI1RwEhZ9BvEVq1UJ+KI7EckBxxT7sSGRf/D
         5VR2lEPinTQrcfcTF3vQRo/y4d8sjaYWG0NS+pMgwRAbKweihvTFe4wBZBAdXNMtsyuF
         JGxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764426184; x=1765030984;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=rH3A+KGeRgqNkZWfdUBvJzIgerremRicGb0nG6VTDjg=;
        b=PsptYe2U4R7FL8TG8bmkbL0P+oA1Y95tQ07vvINKLVVgdeJyHp/dG9lkVEbdJ6yJCa
         DYyXvQwTMcr+ytd3izCAwKhzbOlamp0tT46Pn9C4IOLAiShgtY1V5nYSCykS8zNdQ6oP
         azWFA2u+poW3Q3ogHafdSTovgu/1D1qIm795+FNc0mNKRqa9U7pR5rXrGniaJ7EL+10Z
         ULSEx4E3ooXBbMEYAqnhrZgMgIsnt1Y+2x0xlGTEQ5JenkdEYSvgXPSrJyZsBctVVx4J
         auGFlcqBkeLHYBXB+ZkQCKzWvYBYm1tNiUAvFBkpKm2wvvGaRcFkNFiiNMKQiUFTVZwZ
         RCXQ==
X-Forwarded-Encrypted: i=1; AJvYcCXp5AlYfKsR+xsc5eO0cljNJ2t1bYL/2cOuhXMmjm1PhBCEQElwB6a3pLtKY5n52xHGcBveyA4FYzB7@vger.kernel.org
X-Gm-Message-State: AOJu0Yy77aAWUMfYYhTUCNdlSV10UAkvQsPQ9vfaETsPTdUxBBcTq188
	2wl9vQaZv33ZEFVsRhJrVxNc9fJ+V62NmXroMf7sgY8PVHr2dWaY1dq+
X-Gm-Gg: ASbGncvb0UN5dV3EyviGZJkoe4br5fq3UPIaLX/kEIWt32AQFQl1JsGeUWKuspj1AoI
	VDz5jDkDy1GzrNeE1W/clMqqdd3wya0cYOJukGbSlWU6Y3ZhEoTrIadaourjncf+wbTbpQR2G/H
	v1UK8eB/klJteCMYOitsKjsFgAML8FGrmsYMpaoc7kJaHs0KVHqnI+YBYgCtisoQ9sF07DFNJkp
	Yurej6D5YPi6JF6wOFaO/OBQRKEgqzbgnqSSwp+vuCzOFhP5IBdgNMr3NYkxYLQZHdiXiMFFwFx
	TZuvyG654WD3fkW2oGSr2JsaxmRqa5vh6mmQ8XyJw2qOMXPILvrKvpaXL86WtFDgviRiEoMKICP
	070RxdUJqyOpP+5Gm065gnkNSBWyZkWrCeIhUIMkmsiQfiU49pd2P+I7oXG9hTyonoXt3zITs/t
	kF82lJhN+KT+P5DlMntqLEx8tZbeCsN2702dC6
X-Google-Smtp-Source: AGHT+IE1jVu9V4HoOeG1lE++xCPlgzcqWH9hmHrVrU/tNRZlwrCcI97tULkhBzUlkSO9Nrzx58Brdw==
X-Received: by 2002:a17:902:d48f:b0:295:24c3:8b49 with SMTP id d9443c01a7336-29b6bf5d77dmr348278625ad.46.1764426183629;
        Sat, 29 Nov 2025 06:23:03 -0800 (PST)
Received: from test-HP-Desktop-Pro-G3.. ([103.218.174.23])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29bceb27532sm75641435ad.57.2025.11.29.06.23.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Nov 2025 06:23:02 -0800 (PST)
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
Subject: [PATCH v8 0/2] Add Qualcomm Technologies, Inc. Talos EVK SMARC support
Date: Sat, 29 Nov 2025 19:52:40 +0530
Message-Id: <20251129142242.3661349-1-tessolveupstream@gmail.com>
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


