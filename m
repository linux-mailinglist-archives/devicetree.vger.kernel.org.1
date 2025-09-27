Return-Path: <devicetree+bounces-222143-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 806F7BA621F
	for <lists+devicetree@lfdr.de>; Sat, 27 Sep 2025 19:36:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id A514A1B20346
	for <lists+devicetree@lfdr.de>; Sat, 27 Sep 2025 17:37:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5DB05221DB6;
	Sat, 27 Sep 2025 17:36:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="RKPGLc/f"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f182.google.com (mail-yw1-f182.google.com [209.85.128.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB3F42288D5
	for <devicetree@vger.kernel.org>; Sat, 27 Sep 2025 17:36:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.182
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758994614; cv=none; b=rrpCQ3R//B5zyCmG9mKieprawY05aBjddcqNgZnhp7RKq8105CYgJW+H3ut7OnpolY9gXI7mqVPQHmJNKSHrkRy5M9KmOInOh1/yjDcLB30AqnHPA6SQgFpW4aKFTAitotjMNU76OV503ufGDxkLzlJSRFV+kaTxo5h1xhAitCg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758994614; c=relaxed/simple;
	bh=CacCShdL9mIdGIFJ5hrEvk59oQfMFmDV4ddw92BN+ZQ=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=lm3MTxnLGn8PB4JihjpNPMcXVZ7pBrOUdQoxaPuIM5WolwsmM9kVOycg+fn9ExSr5EEH5IkXmnciQQAGaz1utlXrM87my1HUHTkWY9hE38be0vI551Z5rmocSKp2s3uARSHgBFybbZW+sshRMiaBpNDZMTlMquf35j9GeOu738o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=RKPGLc/f; arc=none smtp.client-ip=209.85.128.182
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f182.google.com with SMTP id 00721157ae682-72ce9790ab3so34489927b3.1
        for <devicetree@vger.kernel.org>; Sat, 27 Sep 2025 10:36:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1758994612; x=1759599412; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=7aFCqQ3/V6ru1hFk7bAyx9VSAviREMqp+MZbs39lgdo=;
        b=RKPGLc/f7AOalS6u8sT024QkRwySr3e3aWQr+qf7kuiy/vtUsxitatpscD8dWW3Z+W
         Y4cspLGgfAQnoZgUvpAl14kKth6FScXQf8/XDcV9LRw0X58jU7pguQ4U7HRnqi/VXqkn
         V+G85ZlVLecU9L0fIMj2u4dMmwDJcUmYx1FqZf+u8KR3EhMrjdvyw++OePNleBIZsiLD
         SFuRxBJPyPzLnwpoERn/rUpPHQ5PbLnkg/v53GCws4MVbkjjaolKVUj6ILVDQaLTRY3N
         rBos8LiUnVpoVArWfW218Z7Z09VsaYdk/oCioTmUZgUj56pgeUyOwA/b0bw50PDE+ror
         Y7+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758994612; x=1759599412;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7aFCqQ3/V6ru1hFk7bAyx9VSAviREMqp+MZbs39lgdo=;
        b=cIgrFVcD4OMKr1put2yVoE2kFwfh4O9vaWPHR3+Lz04TVaH3zlH1ZnSfo3STOqG+JP
         klEo027UPpykzBtndGObiLECCxeIKzxfUnt31vVpcLYV8XtGycFqXIpSkF5VF+yicTpU
         lya2HkojrjCqm00DCFtjhrhg8FJJdRUh8oXdUbCqD787GgkMLMivbdUSS6PvsK+3yf8Y
         dcp/9OSEOZb6/vjKjFswHVhMWV07DLK2JcBmgDeXFF0dI6bLGzULZGY00IDdgk5cfQTR
         mkDGkrfc/crEhXtpV8RyxFfsy7L5ORYyptyma3exughuG7r0WoUvZpOUAMwtk6z5GUvY
         l8YA==
X-Forwarded-Encrypted: i=1; AJvYcCXLHcCgfie8Ffho3uhlBputNFGDATWN3jQ032FWIqWpbupnkoDopP3ijg2A1G4Cb9sp/ee0Vv00p/K9@vger.kernel.org
X-Gm-Message-State: AOJu0YwBrLdW4IlhXrLUUcT8/i34n7v3ahgtob5xKtjYQ7iXIbA15vy9
	XWwAwB7fAw77eag9Mhdtl/S2qytHhVMWH7OKoK+Xs2xmkQdRJg2Tjxzr
X-Gm-Gg: ASbGncuJgS9KOQei1HdeMy4zTy5m5Eid7AWnF5LO9ZA97Nc8GcsJxm3Ykev7fIyvGY/
	bLmHXTG85FoPeamQLWcdO+SPWM9/e7dO9xYKgdIMmdJ2bhc6jmF+n9URDzBRVm8pZHp4sdjcO1s
	KVnrgUmIPk2wiuoxZGMr6qhM/CGvdGNousHIZtyK2o7wUx1lu5G38tX0s/U8UZJ2w/mB86qfVGV
	vlwO4ddx00TbSqMRyIRfD+AtqlxNXmPdl0NtgmTeKHb4x//UMN+7YBZeKRLieOkDAoC5/IjD0a8
	ygRmIlCLdJHxu84WLsxqH7FUxVl08RswZlFk9srlmw96ao8ofyAama7k25I3DVk6WpAzU55oaS8
	X
X-Google-Smtp-Source: AGHT+IFgh2OqcZz1Eld26CBJym816VWjlRqeI6c8UTa/AtQboOoHsDP71YPGlDyko8Ybrd19IS1g0Q==
X-Received: by 2002:a05:690c:23c6:b0:74e:5942:6369 with SMTP id 00721157ae682-76405aa470amr117765847b3.50.1758994611615;
        Sat, 27 Sep 2025 10:36:51 -0700 (PDT)
Received: from sleek ([2600:6c65:7f7f:fe0b::ec0])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-636d5b1d83csm1269716d50.11.2025.09.27.10.36.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 27 Sep 2025 10:36:51 -0700 (PDT)
From: Joshua Milas <josh.milas@gmail.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	unicorn_wang@outlook.com,
	inochiama@gmail.com,
	alexander.sverdlin@gmail.com,
	rabenda.cn@gmail.com,
	thomas.bonnefille@bootlin.com,
	chao.wei@sophgo.com
Cc: josh.milas@gmail.com,
	devicetree@vger.kernel.org,
	sophgo@lists.linux.dev
Subject: [PATCH 2/2] arm64: dts: sophgo: add initial Milk-V Duo S board support
Date: Sat, 27 Sep 2025 13:36:19 -0400
Message-ID: <20250927173619.89768-3-josh.milas@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20250927173619.89768-1-josh.milas@gmail.com>
References: <20250927173619.89768-1-josh.milas@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This adds initial arm64 support for the Milk-V Duo S board
(https://milkv.io/duo-s), enabling the serial port and sdhci0,
making it possible to boot Linux to the command line.

Signed-off-by: Joshua Milas <josh.milas@gmail.com>
---
 arch/arm64/boot/dts/sophgo/Makefile           |  1 +
 .../boot/dts/sophgo/sg2000-milkv-duo-s.dts    | 88 +++++++++++++++++++
 2 files changed, 89 insertions(+)
 create mode 100644 arch/arm64/boot/dts/sophgo/sg2000-milkv-duo-s.dts

diff --git a/arch/arm64/boot/dts/sophgo/Makefile b/arch/arm64/boot/dts/sophgo/Makefile
index 94f52cd7d994..68aace728223 100644
--- a/arch/arm64/boot/dts/sophgo/Makefile
+++ b/arch/arm64/boot/dts/sophgo/Makefile
@@ -1,2 +1,3 @@
 # SPDX-License-Identifier: GPL-2.0
 dtb-$(CONFIG_ARCH_SOPHGO) += sg2000-milkv-duo-module-01-evb.dtb
+dtb-$(CONFIG_ARCH_SOPHGO) += sg2000-milkv-duo-s.dtb
diff --git a/arch/arm64/boot/dts/sophgo/sg2000-milkv-duo-s.dts b/arch/arm64/boot/dts/sophgo/sg2000-milkv-duo-s.dts
new file mode 100644
index 000000000000..94cf89d423de
--- /dev/null
+++ b/arch/arm64/boot/dts/sophgo/sg2000-milkv-duo-s.dts
@@ -0,0 +1,88 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+
+/dts-v1/;
+
+#include <dt-bindings/pinctrl/pinctrl-sg2000.h>
+#include "sg2000.dtsi"
+
+/ {
+	model = "Milk-V DuoS";
+	compatible = "milkv,duo-s", "sophgo,sg2000";
+
+	aliases {
+		serial0 = &uart0;
+		mmc0 = &sdhci0;
+	};
+
+	chosen {
+		stdout-path = "serial0:115200n8";
+	};
+};
+
+&osc {
+	clock-frequency = <25000000>;
+};
+
+&pinctrl {
+	sdhci0_cfg: sdhci0-cfg {
+		sdhci0-cd-pins {
+			pinmux = <PINMUX(PIN_SD0_CD, 0)>;
+			bias-pull-up;
+			drive-strength-microamp = <10800>;
+			power-source = <3300>;
+		};
+
+		sdhci0-clk-pins {
+			pinmux = <PINMUX(PIN_SD0_CLK, 0)>;
+			bias-pull-up;
+			drive-strength-microamp = <16100>;
+			power-source = <3300>;
+		};
+
+		sdhci0-cmd-pins {
+			pinmux = <PINMUX(PIN_SD0_CMD, 0)>;
+			bias-pull-up;
+			drive-strength-microamp = <10800>;
+			power-source = <3300>;
+		};
+
+		sdhci0-data-pins {
+			pinmux = <PINMUX(PIN_SD0_D0, 0)>,
+				 <PINMUX(PIN_SD0_D1, 0)>,
+				 <PINMUX(PIN_SD0_D2, 0)>,
+				 <PINMUX(PIN_SD0_D3, 0)>;
+			bias-pull-up;
+			drive-strength-microamp = <10800>;
+			power-source = <3300>;
+		};
+	};
+
+	uart0_cfg: uart0-cfg {
+		uart0-pins {
+			pinmux = <PINMUX(PIN_UART0_TX, 0)>,
+				 <PINMUX(PIN_UART0_RX, 0)>;
+			bias-pull-up;
+			drive-strength-microamp = <10800>;
+			power-source = <3300>;
+		};
+	};
+};
+
+&uart0 {
+	pinctrl-0 = <&uart0_cfg>;
+	pinctrl-names = "default";
+	status = "okay";
+	/delete-property/ resets;
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
+
-- 
2.51.0


