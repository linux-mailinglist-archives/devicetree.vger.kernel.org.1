Return-Path: <devicetree+bounces-144963-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id A1F8AA2FCAC
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 23:10:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D8D851886ED4
	for <lists+devicetree@lfdr.de>; Mon, 10 Feb 2025 22:10:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4489924E4CA;
	Mon, 10 Feb 2025 22:10:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="CqXEp3Xo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f43.google.com (mail-wr1-f43.google.com [209.85.221.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 547BD2505A6
	for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 22:10:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.43
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739225411; cv=none; b=Wwy9XCEbRf96wH93e0m1KufeUIYWWShd2Q3h1tVn+DrlRdLQRiguTu1AhD0FNIC/9u6TkUt2ieCbU9MLBnU+vJGhIrbbTglfaWvuFx+Qjq/32cyYd5wiXMtmHVljwjUmsMNvI/QiCws4cQoRJb2FO/X5gLGh3PRP22sSzqmrAhI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739225411; c=relaxed/simple;
	bh=G+mOyo4FIopZWgVDrcKuyZa9MY79r3sTlPlRPoc6AWI=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Kb9YDPLCm1c7gsRE13X+W6H14vOURaaBGRH9me18jpg1vAFJnCTOLn182IKC19y7JzdNtI6gXTq4Bw/ZxI/041vMLfzO4fNogKPJ11Ty0pnnP27AIQGaVOqGrZwhOLNrHFjBJ58yn86kihOjoJ4e/fVzOilHDhuQI0ThNKaIjy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=CqXEp3Xo; arc=none smtp.client-ip=209.85.221.43
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wr1-f43.google.com with SMTP id ffacd0b85a97d-38dc660b56cso3765628f8f.0
        for <devicetree@vger.kernel.org>; Mon, 10 Feb 2025 14:10:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1739225407; x=1739830207; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yZhOnOs3JzDC/c26qPk+IYrYmiO8/esxJoqOId1pTR8=;
        b=CqXEp3XoZoE30VyodVigmtEMwylFlVfiXsfjmIY8+3aNR8QjRw3OrFYG3fTeQ+YbFj
         W6Nx6+FLa4+Lrzx+v2UEAF7UtFX6SKVKrtOERd8Dq/Mu0fE79BZ2gNo9EotLtAjq1VeO
         Qo33/1Dca6K2tjmYqF5TSwm1roWkojtISnu3/Y3sJMJEcehirXxn2OT9mgQuPafXoKjD
         +4NdEXP6c5rQB8Gkoi6AmE+rNkR8/ax4cmi5scOBdB51yfkW0RNQGP1XXGEUIfE+/c8D
         4BbZPwLu+JcvrmhIjsvOlsKjXjiZnGMD1Vkr3uFU9DKxScpACT4QZz6jZq7H5lWdffwS
         SuLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1739225407; x=1739830207;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yZhOnOs3JzDC/c26qPk+IYrYmiO8/esxJoqOId1pTR8=;
        b=LdJ6btXAb0JmR4/flT1PaMWhKU6wpZ6cCyyN9C/UEn+AHwgndz+vvlFyKCWI50K7uT
         yg7oVN9tEzFFNiTK35JALO68BPxUHVGgrX109z5T0aYV72vlbngAEtjTRpKVw4j4oZ2a
         Xk2JXgTArQeW3OD4Jinh9uPNpOL80pNEyjc/6NcGFj7QWUNYqD8ShRC5bt+T0wV7IHcv
         Ek1XVPQkY9H/WYa4Q7Ukp5LRZWwsAfB960j66uxZt925o4BgT3DHb/Nh2RCCvJkrlPFN
         BoZrLLmxLTYelLfNR8Lt5Q8/olU/jkKSnRopCtqBbBk+jbLr5VY/6dhJET7NR8Tlsq5w
         vHyQ==
X-Forwarded-Encrypted: i=1; AJvYcCVa9BvchOZIQUJpv2y/sXDpeTrIB0UYcpWkbgGoEgVNllUk9EmGSefFpxYUnLxZyvJJqepGsr25KpoO@vger.kernel.org
X-Gm-Message-State: AOJu0YyD9tOaQ5R1ZBsIqkp77SP66CgMgPj9JGyoFrofx75DxVj0gix5
	hli46eB7djYrjsrPXlL0nf3bWADQHl78CwTw4olu8XMO486y8zl6
X-Gm-Gg: ASbGncuPfI8rWWMp2isoMeRgp6fqO1azOVmpoI3VkT6NPN1YCCyKJxeZm6DuRUFkXsg
	gfMoULP5LXVkLxdIMpywxO6StgM6KNGdMn4FMQHgXVzIj4tb030awN8a8uBbUIld8WSV/e39Lgn
	TowtLJs3rOS6v57p9KLJy5XZcqpKTaYkkMA5lje+TTZMRW255pliHy/HwhOBSVe10mKw4R5Wy1E
	fp8Xfh7ylc4SA2EkW3GhYmsQn9Go3qocrLRCn11vzCStzpigGDC63/7TB/k9l33JRTvdHwezSYL
	H1ff95eD096ZyENC1dQeoiKcJaWh
X-Google-Smtp-Source: AGHT+IHwNH6hgR8oTQ3a1y0apV2p0yZ49mWYWJA1q/BXd9mTz6QrzTQvriO0UNbrNrMx/g4JSHPQzw==
X-Received: by 2002:a5d:6c66:0:b0:38c:5cd0:ecf3 with SMTP id ffacd0b85a97d-38dc8da6393mr12235260f8f.11.1739225407504;
        Mon, 10 Feb 2025 14:10:07 -0800 (PST)
Received: from giga-mm.. ([2a02:1210:861b:6f00:82ee:73ff:feb8:99e3])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-38dbde1dfaesm13443450f8f.90.2025.02.10.14.10.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Feb 2025 14:10:07 -0800 (PST)
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
Subject: [PATCH v2 5/7] arm64: dts: sophgo: Add Duo Module 01 Evaluation Board
Date: Mon, 10 Feb 2025 23:09:45 +0100
Message-ID: <20250210220951.1248533-6-alexander.sverdlin@gmail.com>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250210220951.1248533-1-alexander.sverdlin@gmail.com>
References: <20250210220951.1248533-1-alexander.sverdlin@gmail.com>
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


