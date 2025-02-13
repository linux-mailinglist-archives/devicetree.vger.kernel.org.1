Return-Path: <devicetree+bounces-146427-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2ABB0A34D89
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 19:23:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3A2873A2F4E
	for <lists+devicetree@lfdr.de>; Thu, 13 Feb 2025 18:22:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87E67245006;
	Thu, 13 Feb 2025 18:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Y6I5RhB6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72A5F245029
	for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 18:22:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739470943; cv=none; b=lVp+0v7UQKqyNqHDZYpvI6iLOKKg61r67UUSmkE4R9dHKOqIahzg/i4ag7GqtCGje4kpmAsr5kerIggyDdkzcf/q1jBqucPNcokw7e19hbIO5rdCIAg3UGhhu2ph2tCBdBCiIjeHQD7Joqy6xYCbBu4i7TQPG4sbPELkBxHGqg8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739470943; c=relaxed/simple;
	bh=6X3OK3wPGUXeLIYb+T5aPxe5dcHUnny6vLjCVjPlNRE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=B5NuWW8fpjbagDbrXbUf4nINeOtwVyNuyaHOgwjPzvd9Dv43PLpfMcJier6u1ECRf9H7RHhytVNHqMaeg8BxAfii4vpk6EiUBVWWOAXUsZXrOergbLO5qwig54V8ihQn0aTLS+jap8ROIfE93ynIB6qnJdniSd1kGBzvDVpvxqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Y6I5RhB6; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-5de6c708315so1774184a12.0
        for <devicetree@vger.kernel.org>; Thu, 13 Feb 2025 10:22:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739470940; x=1740075740; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=F/kT84H5qLfmytF8BSF9mlL2QfF0LoMNAWpygrqKleE=;
        b=Y6I5RhB6N+h36gOWEzCw/XlTgXaneKCv4IWCFZhHFnoGH8WwVk/23nFW31sQRQiPxr
         aLfDnVRH5mWE7WojQcegeZfa0LFleLnAJNo8pqd4C4xv45d31h8IRI5ntc5iXth0O6nm
         pza0yywgFUPytfempG287SbxDo5I3/JeGWaWuJBbvHSEuGnNElxq0c9Xfj3oJjgQ+R9g
         /VQclhCSl9cgYRlxCT0lAIR4nP1ViGYJ/ttYUcW4tKfEjI9fcXRPlgwrRkQMLT3sqvW4
         5IYfoChig02mG6EV7uNjjq08x6e/za7lmKUDZAYZZm3+EiBIbzHqgnl/jdxRP+RUpeo+
         zeKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739470940; x=1740075740;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=F/kT84H5qLfmytF8BSF9mlL2QfF0LoMNAWpygrqKleE=;
        b=nFLWfGV+z9wLMyqJ+KiAXRnXLamKgZjWIO9eGiusA0/VYqEwEX+HZC3BNfEEMhY7Rl
         FzdE8XgPygwmLNS1VI5a/wMLcRw6Ods3LzgTyj+k/2avKDa78+i8ImwOIKSBqjOcPAzA
         RHsy3NBjtGPWmkqQ2qrWTdu7qtQ6Sb0ck9miC+y6vZweUaXNIk0BgT1cbnaGpFQ495lZ
         ZvqM/9G7OHRLGvItoO3PXzxtj5oLFTUb51T7rNiNTZAvY6jJV5g+k46nBMqk779vZvO0
         3e5RmCcneAWa0A5pu8laQ0Af9wxX2IOR4amR2VhPXTxdv5iw4RU706zHP8CF8eFcXD+d
         15DA==
X-Forwarded-Encrypted: i=1; AJvYcCXJku0EhZKxG5sgtVOKvwQ3lF3MTF7sCuq8wTsh0AN1KUNvQtG+9CtRRCYIBGGBcY8CkVUfQ6hx+Z0u@vger.kernel.org
X-Gm-Message-State: AOJu0YwpCs0NVhnA0h0SE4JdbiCHYm4MqdOmdjSDCbVVTenjL8LAeSNp
	3jgMGOHZdpG/rcz38D4X3Qs8AOCOFFtI7nEl7qo8sFQCtaboM9vt
X-Gm-Gg: ASbGncvTtgkwyxDJhmpY01TtaUhSMFkxU2rUDGBtj2UK83CIktTZvjPg3inzKaDPogD
	ufyoV539N+QfxgS4NbiFp8JFmq7nYLMfLDimAFbLfS4vISQKamsFV68MLmbqkYNqCR1oZGGTpKf
	cOsoSZFSJUJZ4/iQ94Lj/jTzzhlmN/5noJ0reEzsd0iFTvp9c/uXKVZmR5bS9rtMRbM23zRVn7/
	QDnYe4pFJU/GR0XSHosWh5ls/+QcT4APb6JbTLnSXboYcX6EJNCGtVwpZF8jhvvzckWCJZfhSyy
	L+dCF43dLY4zJl8TJwa+Q9QDg2XT
X-Google-Smtp-Source: AGHT+IGGrGvhErjvZtc60pickMx2DJtsHlYMmMxo5AoPGkhiDOh+yM3BqjtVUmG4xl6q+XzV1ek+KA==
X-Received: by 2002:a05:6402:4316:b0:5cf:e9d6:cc8a with SMTP id 4fb4d7f45d1cf-5deade00a52mr7137331a12.20.1739470939543;
        Thu, 13 Feb 2025 10:22:19 -0800 (PST)
Received: from giga-mm.. ([2a02:1210:861b:6f00:82ee:73ff:feb8:99e3])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-5dece270a66sm1559230a12.52.2025.02.13.10.22.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 13 Feb 2025 10:22:19 -0800 (PST)
From: Alexander Sverdlin <alexander.sverdlin@gmail.com>
To: soc@lists.linux.dev
Cc: Alexander Sverdlin <alexander.sverdlin@gmail.com>,
	Jisheng Zhang <jszhang@kernel.org>,
	Chao Wei <chao.wei@sophgo.com>,
	Chen Wang <unicorn_wang@outlook.com>,
	Inochi Amaoto <inochiama@outlook.com>,
	linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	Haylen Chu <heylenay@outlook.com>,
	linux-arm-kernel@lists.infradead.org,
	Arnd Bergmann <arnd@arndb.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Subject: [PATCH v4 5/7] arm64: dts: sophgo: Add Duo Module 01 Evaluation Board
Date: Thu, 13 Feb 2025 19:22:06 +0100
Message-ID: <20250213182210.2098718-6-alexander.sverdlin@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250213182210.2098718-1-alexander.sverdlin@gmail.com>
References: <20250213182210.2098718-1-alexander.sverdlin@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Duo Module 01 Evaluation Board contains Sophgo Duo Module 01
SMD SoM, Ethernet+USB switch, microSD slot, etc...
Add only support for UART0 (console) and microSD slot.

Signed-off-by: Alexander Sverdlin <alexander.sverdlin@gmail.com>
---
Changelog:
v4:
v3:
v2:
- sorted all nodes according to DT coding style;
- added "compatible" property;
- renamed the new .dts not to use underscores;
- added status = "okay" instead of deleting it;

 arch/arm64/boot/dts/Makefile                  |  1 +
 arch/arm64/boot/dts/sophgo/Makefile           |  2 ++
 .../sophgo/sg2000-milkv-duo-module-01-evb.dts | 31 +++++++++++++++++++
 3 files changed, 34 insertions(+)
 create mode 100644 arch/arm64/boot/dts/sophgo/Makefile
 create mode 100644 arch/arm64/boot/dts/sophgo/sg2000-milkv-duo-module-01-evb.dts

diff --git a/arch/arm64/boot/dts/Makefile b/arch/arm64/boot/dts/Makefile
index 79b73a21ddc2..3a32b157ac8c 100644
--- a/arch/arm64/boot/dts/Makefile
+++ b/arch/arm64/boot/dts/Makefile
@@ -28,6 +28,7 @@ subdir-y += realtek
 subdir-y += renesas
 subdir-y += rockchip
 subdir-y += socionext
+subdir-y += sophgo
 subdir-y += sprd
 subdir-y += st
 subdir-y += synaptics
diff --git a/arch/arm64/boot/dts/sophgo/Makefile b/arch/arm64/boot/dts/sophgo/Makefile
new file mode 100644
index 000000000000..94f52cd7d994
--- /dev/null
+++ b/arch/arm64/boot/dts/sophgo/Makefile
@@ -0,0 +1,2 @@
+# SPDX-License-Identifier: GPL-2.0
+dtb-$(CONFIG_ARCH_SOPHGO) += sg2000-milkv-duo-module-01-evb.dtb
diff --git a/arch/arm64/boot/dts/sophgo/sg2000-milkv-duo-module-01-evb.dts b/arch/arm64/boot/dts/sophgo/sg2000-milkv-duo-module-01-evb.dts
new file mode 100644
index 000000000000..b1f8a5787861
--- /dev/null
+++ b/arch/arm64/boot/dts/sophgo/sg2000-milkv-duo-module-01-evb.dts
@@ -0,0 +1,31 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+
+/dts-v1/;
+
+#include "sg2000-milkv-duo-module-01.dtsi"
+
+/ {
+	model = "Milk-V Duo Module 01 Evaluation Board";
+	compatible = "milkv,duo-module-01-evb", "milkv,duo-module-01", "sophgo,sg2000";
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+};
+
+&uart0 {
+	pinctrl-0 = <&uart0_cfg>;
+	pinctrl-names = "default";
+	status = "okay";
+};
+
+&sdhci0 {
+	bus-width = <4>;
+	no-1-8-v;
+	no-mmc;
+	no-sdio;
+	disable-wp;
+	pinctrl-0 = <&sdhci0_cfg>;
+	pinctrl-names = "default";
+	status = "okay";
+};
-- 
2.48.1


