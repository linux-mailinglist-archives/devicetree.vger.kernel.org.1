Return-Path: <devicetree+bounces-128476-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D8C659E8CF4
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 09:03:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4D068164D88
	for <lists+devicetree@lfdr.de>; Mon,  9 Dec 2024 08:03:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E0A2621519A;
	Mon,  9 Dec 2024 08:02:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=purelymail.com header.i=@purelymail.com header.b="EhZY/I7G"
X-Original-To: devicetree@vger.kernel.org
Received: from sendmail.purelymail.com (sendmail.purelymail.com [34.202.193.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B6EF2156ED
	for <devicetree@vger.kernel.org>; Mon,  9 Dec 2024 08:02:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=34.202.193.197
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733731337; cv=none; b=AhiGDpaIX2082lVC7sutkKqGDIzoM0kSScGgnB87im2VTTgsXAmz4TSDwV0trJghI3V0tQOgWORTZBlXawo7GvP8EHOaq8MDSPLa8CpWQ7MeldK1ojmZVze4lLl2p9WCKRqpoMsoS/xi+1YWOixHdmvao31b0R8jRwNty5ERG1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733731337; c=relaxed/simple;
	bh=dv0IEtlj/sb10b0r+vjTZHiEAwycDAr94Z3JrfrRY0g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=A4CX23diV+gFGIim2RbCxs/TTeTep2kDv8oEBeLgaX65I7lqk4ir6n2xcE04Umub7tWPtbyWQrqEtKKKv64eG3GhhfN0npZLBPu7rVL1s0ohDTjtMUFFppRD3xJjONXDERfXSeSaPaMRlmIr3QbQN7l3W4pwpNrPbnlRN+ql+aY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mentallysanemainliners.org; spf=pass smtp.mailfrom=mentallysanemainliners.org; dkim=pass (2048-bit key) header.d=purelymail.com header.i=@purelymail.com header.b=EhZY/I7G; arc=none smtp.client-ip=34.202.193.197
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mentallysanemainliners.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mentallysanemainliners.org
Authentication-Results: purelymail.com; auth=pass
DKIM-Signature: a=rsa-sha256; b=EhZY/I7GA/HHyqXbJkfc0YlaLFMF5FikenFIcoZatxtR/t4RT/I9pXJJSiXNG528ixo3Xbmq5+gRdAuIowkKGTskbYLEBCNQCvm1RE1e2iDr8oBQAyD6weyhAYkQrSSM4nQdfbvYJKrKyZKasRuwxLJbPtqwuJqrFVQ7xKij+GLIG9ovLB5/tpg5zlV8JKboirUzsmLwyEMXqNZEbtm6iRBWsUwAf5P6oupciGWLn2I34x3lQT+Um+ACWNZjma2MGbb975AMvHuknre+knvd1vu5k3Ubzfz4qSCqmC5HTDgtF8JtjgzwtASeL6pFHZcgdIUOR3wC7Vu036tKqH5dZQ==; s=purelymail2; d=purelymail.com; v=1; bh=dv0IEtlj/sb10b0r+vjTZHiEAwycDAr94Z3JrfrRY0g=; h=Feedback-ID:Received:From:To:Subject:Date;
Feedback-ID: 68229:10037:null:purelymail
X-Pm-Original-To: devicetree@vger.kernel.org
Received: by smtp.purelymail.com (Purelymail SMTP) with ESMTPSA id 1477585645;
          (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
          Mon, 09 Dec 2024 08:01:16 +0000 (UTC)
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
Subject: [PATCH v7 3/4] arm64: dts: exynos: Add initial support for Samsung Galaxy S20 5G (x1s)
Date: Mon,  9 Dec 2024 08:00:58 +0000
Message-ID: <20241209080059.11891-4-umer.uddin@mentallysanemainliners.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20241209080059.11891-1-umer.uddin@mentallysanemainliners.org>
References: <20241209080059.11891-1-umer.uddin@mentallysanemainliners.org>
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
2.43.0


