Return-Path: <devicetree+bounces-128126-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 091F69E784D
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 19:46:57 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BD7A12853F5
	for <lists+devicetree@lfdr.de>; Fri,  6 Dec 2024 18:46:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A9271F3D48;
	Fri,  6 Dec 2024 18:46:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=purelymail.com header.i=@purelymail.com header.b="VPBjgus8"
X-Original-To: devicetree@vger.kernel.org
Received: from sendmail.purelymail.com (sendmail.purelymail.com [34.202.193.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C21471DA31D
	for <devicetree@vger.kernel.org>; Fri,  6 Dec 2024 18:46:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=34.202.193.197
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733510813; cv=none; b=ukOqEQqYs9wT2MVQdpYsuxXTfuAotAgWVd0vohu/W11ax79nuQerjNod1NljQNraHEdGwVPuPQWYSUrI4fjKwmv818i5ec4+c/bo90oN7R+rQmYrRSRIXELgH8EjcjSd15gwKd7hmkU3Ji8K0aNnaTWAV5S/yQYrKKOr2+iysrg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733510813; c=relaxed/simple;
	bh=+9v9v998yOutkpEhufnysfjZ8TgWJVXjzo5R46wA2bg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=RsDBC+avxHatqZ4VdN4hoAHyOBXs13Z4MiYzX7izsAhG+yqhwv6UpeeGdfuM8kwVvqYja/x0Qrv3hzK8CTgVB/hDHt6/6f4zSF0RUjuAQ5eVVfGAmu4g+fO2MFwqybZuVWwtkxnriJHHLjANaltVLbc8EHxZKjAu4miLcEy+2+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mentallysanemainliners.org; spf=pass smtp.mailfrom=mentallysanemainliners.org; dkim=pass (2048-bit key) header.d=purelymail.com header.i=@purelymail.com header.b=VPBjgus8; arc=none smtp.client-ip=34.202.193.197
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mentallysanemainliners.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mentallysanemainliners.org
Authentication-Results: purelymail.com; auth=pass
DKIM-Signature: a=rsa-sha256; b=VPBjgus8/Un8Viz/Z7xCqMfaa8uGw6R1L6NnBadhmjeEG2RAOw+zKEU5QZRAMpFagNqc9bkMNffuQbW0z1YbQ4fh6jxesDutIWA+d1wgdxaxDRv2frjJALAuG/UIr6iU6BnLPzxnuF68emEiEUpov4yYITpag2wVhQWNXqW+GXJV0bFCE8Z0jsvLIZEAhnD0GFBWpf8tHcy380QGgiaAKdFzutc/RLhNLOF9xxJdZ/oqU7cLOfoaN0XWhVJT6G/zDRYcHDV9g1Zm9tPaZMZQ6I2906wGuuShoe9nfadPzVv9+tzrvIgJrJxHSF5knzsmtsDBcVBIo1GptEMIDdG/fA==; s=purelymail2; d=purelymail.com; v=1; bh=+9v9v998yOutkpEhufnysfjZ8TgWJVXjzo5R46wA2bg=; h=Feedback-ID:Received:From:To:Subject:Date;
Feedback-ID: 68229:10037:null:purelymail
X-Pm-Original-To: devicetree@vger.kernel.org
Received: by smtp.purelymail.com (Purelymail SMTP) with ESMTPSA id 1358913524;
          (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
          Fri, 06 Dec 2024 18:46:24 +0000 (UTC)
From: Umer Uddin <umer.uddin@mentallysanemainliners.org>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Rob Herring <robh@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	igor.belwon@mentallysanemainliners.org
Subject: [PATCH v6 3/4] arm64: dts: exynos: Add initial support for Samsung Galaxy S20 5G (x1s)
Date: Fri,  6 Dec 2024 18:46:08 +0000
Message-ID: <20241206184609.2437-4-umer.uddin@mentallysanemainliners.org>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20241206184609.2437-1-umer.uddin@mentallysanemainliners.org>
References: <20241206184609.2437-1-umer.uddin@mentallysanemainliners.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-MIME-Autoconverted: from 8bit to quoted-printable by Purelymail
Content-Type: text/plain; charset=UTF-8

Add initial support for the Samsung Galaxy S20 5G (x1s/SM-G981B)
phone. It was launched in 2020, and it's based on the Exynos 990 SoC. It
has only one configuration with 12GB of RAM and 128GB of UFS 3.0 storage.

This device tree adds support for the following:

- SimpleFB
- 12GB RAM
- Buttons

Signed-off-by: Umer Uddin <umer.uddin@mentallysanemainliners.org>
---
 arch/arm64/boot/dts/exynos/Makefile          |  1 +
 arch/arm64/boot/dts/exynos/exynos990-x1s.dts | 28 ++++++++++++++++++++
 2 files changed, 29 insertions(+)
 create mode 100644 arch/arm64/boot/dts/exynos/exynos990-x1s.dts

diff --git a/arch/arm64/boot/dts/exynos/Makefile b/arch/arm64/boot/dts/exyn=
os/Makefile
index 948a2c6cb..fe47aafcd 100644
--- a/arch/arm64/boot/dts/exynos/Makefile
+++ b/arch/arm64/boot/dts/exynos/Makefile
@@ -10,5 +10,6 @@ dtb-$(CONFIG_ARCH_EXYNOS) +=3D \
 =09exynos8895-dreamlte.dtb=09=09\
 =09exynos990-c1s.dtb=09=09\
 =09exynos990-r8s.dtb               \
+=09exynos990-x1s.dtb=09=09\
 =09exynosautov9-sadk.dtb=09=09\
 =09exynosautov920-sadk.dtb
diff --git a/arch/arm64/boot/dts/exynos/exynos990-x1s.dts b/arch/arm64/boot=
/dts/exynos/exynos990-x1s.dts
new file mode 100644
index 000000000..1ae881015
--- /dev/null
+++ b/arch/arm64/boot/dts/exynos/exynos990-x1s.dts
@@ -0,0 +1,28 @@
+// SPDX-License-Identifier: GPL-2.0 OR BSD-3-Clause
+/*
+ * Samsung Galaxy S20 5G (x1s/SM-G981B) device tree source
+ *
+ * Copyright (c) 2024, Umer Uddin <umer.uddin@mentallysanemainliners.org>
+ */
+
+/dts-v1/;
+#include "exynos990-x1s-common.dtsi"
+
+/ {
+=09#address-cells =3D <2>;
+=09#size-cells =3D <2>;
+
+=09model =3D "Samsung Galaxy S20 5G";
+=09compatible =3D "samsung,x1s", "samsung,exynos990";
+
+=09memory@80000000 {
+=09=09device_type =3D "memory";
+=09=09reg =3D <0x0 0x80000000 0x0 0x3ab00000>,
+=09=09      /* Memory hole */
+=09=09      <0x0 0xc1200000 0x0 0x1ee00000>,
+=09=09      /* Memory hole */
+=09=09      <0x0 0xe1900000 0x0 0x1e700000>,
+=09=09      /* Memory hole */
+=09=09      <0x8 0x80000000 0x2 0x7e800000>;
+=09};
+};
--=20
2.47.1


