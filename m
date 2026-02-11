Return-Path: <devicetree+bounces-264748-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id MAAJIctijGkFmgAAu9opvQ
	(envelope-from <devicetree+bounces-264748-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 12:06:51 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id CD5BB123BE4
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 12:06:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id BBEA0303F060
	for <lists+devicetree@lfdr.de>; Wed, 11 Feb 2026 11:06:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 11BB23148B6;
	Wed, 11 Feb 2026 11:06:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="fH3uw1OD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yx1-f48.google.com (mail-yx1-f48.google.com [74.125.224.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00319335096
	for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 11:06:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.224.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770807975; cv=none; b=rLAGnQJ0Efe+YGnDBdQvC5ZL4n+4vSVzIrmKB9TOyq0xTpcu+bW4RrvalzGLjlwX/0xRZ83eKW1GHpzzX3N/BOny9Nwg+6RvhARenLDlazuGWrxE3RxwbDkv1AOkEm84wQbYjWpSSg7i2xmhFiVwncmFpZhWU2awDIg1XaEdGeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770807975; c=relaxed/simple;
	bh=UxaDaGg0aXy4mNVXFEYr4IC9HS7kD8b4lT2addO0HvY=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=ZZ1ZCXdSn/W0HRVFX2RAnoxJFZGgseSTAwLRNCnSp4KJ17lqeFFeIgeFNTYaiMDLtzX65LHA1H4gyzbifcmIyutN/9PqIc+BQgsD18+kV2aQE1aj9cLQvVyQTNJkuzsmTxihH571w4Ac0FiUZauiErbHDUuNapuh6FLotA3s30w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=fH3uw1OD; arc=none smtp.client-ip=74.125.224.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yx1-f48.google.com with SMTP id 956f58d0204a3-64acd19e1dfso4539436d50.0
        for <devicetree@vger.kernel.org>; Wed, 11 Feb 2026 03:06:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1770807972; x=1771412772; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Zh5Xf5ydB/bxWAyB1XJrqb77BfkLtvGc62zrq11wimk=;
        b=fH3uw1ODKj6r5Esdwa1P7CJ0n5oE9uLnZPD9jSKIFzQ4X3DnCre5xNrD1/nhCKuuDo
         fZvvpYFSfEKRcOzti50r/9ohTK0s8NZnbxEKxOxHTDKxNnp4KZdPI7XxSGk1fU00P1Vo
         RRpLBqEbdCEIEUxgS+nqv41aeIMYSoLQqTnv73IIf3pRX6oFmy+H3VHtBtJPrvZX1ZKA
         95S0j2kvAP1zhYF/BQv0FPVmLyryIro/aAlpfIUL/bXOnKK+4GVfgLbcSnre5NpOXckr
         FO6sTw+vdtNh2ya0NrCnGkMvWFh6jT1WaNJJ0ZPB2TVTaQJGmVP2DKfbxvJwUYDi2l7K
         hUyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1770807972; x=1771412772;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Zh5Xf5ydB/bxWAyB1XJrqb77BfkLtvGc62zrq11wimk=;
        b=Jc6zYilP/CFhfI9HS7Aq851bRzZFlWIwtIWmTObH90syjrqWjBjuhoOn0L8ybGIGWe
         /7AVJI2PW6qq8Dur4xgXeLRRS8B5Bsb+IGBe8NTCsRvQnBv6Awl8B8xsX9MccJjGgp0A
         WZVvZUWWr/PLnSe1UKx5osVK2hbq+Fk9zGhUrc5AABBtUBbYcT2JrGlZ/lMkrUQLYCoM
         dm2fgrTZAvjUpUxhs3GO0bAkZVvdQHTFy5Z1Pw1ZpsFsK7CXE8Ea43t6+Cm/IdGnulNQ
         ibfpmaDLBCCOD60qUZp6Fje/1mnGFSsQ3FPHccZyfLrVwlfHi0aPGYiq9eGHdJK/99bv
         nwjg==
X-Forwarded-Encrypted: i=1; AJvYcCWwR7DRkyIrzD+d6z1jkQmOG0xgAtO5hmEnNrKLEWF2j4OqgguOF124UIhZwaJA97Ccr0GEwvB3JED/@vger.kernel.org
X-Gm-Message-State: AOJu0YyVDGFlgBnYkszV472ZGfeSQKKjJJmDzisUgkW/Vwg7aN92O4K1
	uEzwMGHlQyIiqo8xior1MSXrlTk2az54bpFJUQZfjKYXFDN0Jol5VId+
X-Gm-Gg: AZuq6aItgy+5VEqgkc53CMZVu0zeGkD8DauXsalnnOkYiYpQTHYJWynzpiisZiOo6G7
	C7nns5Pm3udtSYnCoGwZ84RyeT7gNksSlmzOyVr8VS7jUbhTYByP3PoVQQoGs3CWWb6qfVylWt9
	TtEmNTTC6zO5BT1zZUaW5pCVViLkRIfYPwbdrbMVFeE/W0hEXFcVrtG0AWCF35T1e5fuNlKpDbY
	StVDlyyoNTUStpBhaS/nEpSXoreYYVjy85u2jE8Q9sXhgVasOQLurzP2sFoKdMTpCxn87nWIZlQ
	ciKNKA1iEeODgVXjX+Zfwwf8crgVcEJllS5eszdt7uNR5sISNc9wOMv3Ep01Tcwb8xhoutdHwd5
	5+ULEaP/j8yWUS0JtvhqqcZZO87mKvqvzcDqVAzZwL2lKJbEeGsmxGJVpZjJwNfw6vw6dJnhve9
	zMr88wX7BrMlaFd+qXsmYxu9XE2t8txwXgDM1RWQPgvvipeA==
X-Received: by 2002:a05:690e:dcf:b0:64a:d607:30d7 with SMTP id 956f58d0204a3-64afe3cf3c5mr868793d50.78.1770807971914;
        Wed, 11 Feb 2026 03:06:11 -0800 (PST)
Received: from localhost.localdomain ([2804:14c:485:4ffb:e36d:8763:a188:5dcb])
        by smtp.gmail.com with ESMTPSA id 956f58d0204a3-64afc87ff20sm1533719d50.10.2026.02.11.03.06.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 11 Feb 2026 03:06:11 -0800 (PST)
From: Fabio Estevam <festevam@gmail.com>
To: heiko@sntech.de
Cc: jonas@kwiboo.se,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Fabio Estevam <festevam@nabladev.com>
Subject: [PATCH v4 2/4] ARM: dts: rockchip: Add support for RV1103B
Date: Wed, 11 Feb 2026 08:05:48 -0300
Message-Id: <20260211110550.580474-2-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260211110550.580474-1-festevam@gmail.com>
References: <20260211110550.580474-1-festevam@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-264748-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[gmail.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	FREEMAIL_FROM(0.00)[gmail.com];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[festevam@gmail.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: CD5BB123BE4
X-Rspamd-Action: no action

From: Fabio Estevam <festevam@nabladev.com>

Add the initial RV1103B devicetree.

Based on the 5.10 Rockchip vendor kernel.

Signed-off-by: Fabio Estevam <festevam@nabladev.com>
---
The <dt-bindings/clock/rockchip,rv1103b-cru.h> header comes from another
series:

https://lore.kernel.org/linux-devicetree/20260210022620.172570-1-festevam@gmail.com/

Maybe Heiko could apply the clock series as well?

Changes since v3:
- Do not use _ in container name.
- Remove reference to internal vendor tool.
- Move memory mapped peripherals inside soc node.
- Remove unnecesay extra pinctrl entry.

 .../boot/dts/rockchip/rv1103b-pinctrl.dtsi    | 816 ++++++++++++++++++
 arch/arm/boot/dts/rockchip/rv1103b.dtsi       | 257 ++++++
 2 files changed, 1073 insertions(+)
 create mode 100644 arch/arm/boot/dts/rockchip/rv1103b-pinctrl.dtsi
 create mode 100644 arch/arm/boot/dts/rockchip/rv1103b.dtsi

diff --git a/arch/arm/boot/dts/rockchip/rv1103b-pinctrl.dtsi b/arch/arm/boot/dts/rockchip/rv1103b-pinctrl.dtsi
new file mode 100644
index 000000000000..539d4d9510c1
--- /dev/null
+++ b/arch/arm/boot/dts/rockchip/rv1103b-pinctrl.dtsi
@@ -0,0 +1,816 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2024 Rockchip Electronics Co., Ltd.
+ */
+
+#include <dt-bindings/pinctrl/rockchip.h>
+#include <arm64/rockchip/rockchip-pinconf.dtsi>
+
+&pinctrl {
+	cam-clk0 {
+		/omit-if-no-ref/
+		cam_clk0: cam-clk0 {
+			rockchip,pins =
+				/* cam_clk0_out */
+				<1 RK_PB5 1 &pcfg_pull_none>;
+		};
+	};
+
+	cam-clk1 {
+		/omit-if-no-ref/
+		cam_clk1: cam-clk1 {
+			rockchip,pins =
+				/* cam_clk1_out */
+				<1 RK_PB6 1 &pcfg_pull_none>;
+		};
+	};
+
+	cam-spi {
+		/omit-if-no-ref/
+		cam_spi_bus4: cam-spi-bus4 {
+			rockchip,pins =
+				/* cam_spi_d0 */
+				<0 RK_PB5 4 &pcfg_pull_up_drv_level_2>,
+				/* cam_spi_d1 */
+				<0 RK_PB2 4 &pcfg_pull_up_drv_level_2>,
+				/* cam_spi_d2 */
+				<0 RK_PB1 4 &pcfg_pull_up_drv_level_2>,
+				/* cam_spi_d3 */
+				<0 RK_PB0 4 &pcfg_pull_up_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		cam_spi_clk: cam-spi-clk {
+			rockchip,pins =
+				/* cam_spi_clk */
+				<0 RK_PB4 4 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		cam_spi_cs0n: cam-spi-cs0n {
+			rockchip,pins =
+				/* cam_spi_cs0n */
+				<0 RK_PB3 4 &pcfg_pull_none>;
+		};
+	};
+
+	clk {
+		/omit-if-no-ref/
+		clk_32k: clk-32k {
+			rockchip,pins =
+				/* clk_32k */
+				<0 RK_PA0 2 &pcfg_pull_none>;
+		};
+	};
+
+	clk-24m {
+		/omit-if-no-ref/
+		clk_24m_out: clk-24m-out {
+			rockchip,pins =
+				/* clk_24m_out */
+				<0 RK_PA0 3 &pcfg_pull_none>;
+		};
+	};
+
+	cpu {
+		/omit-if-no-ref/
+		cpu: cpu {
+			rockchip,pins =
+				/* cpu_avs */
+				<0 RK_PA1 2 &pcfg_pull_none>;
+		};
+	};
+
+	emmc {
+		/omit-if-no-ref/
+		emmc_bus4: emmc-bus4 {
+			rockchip,pins =
+				/* emmc_d0 */
+				<1 RK_PA1 1 &pcfg_pull_up_drv_level_2>,
+				/* emmc_d1 */
+				<1 RK_PA2 1 &pcfg_pull_up_drv_level_2>,
+				/* emmc_d2 */
+				<1 RK_PA3 1 &pcfg_pull_up_drv_level_2>,
+				/* emmc_d3 */
+				<1 RK_PA0 1 &pcfg_pull_up_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		emmc_clk: emmc-clk {
+			rockchip,pins =
+				/* emmc_clk */
+				<1 RK_PA4 1 &pcfg_pull_up_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		emmc_cmd: emmc-cmd {
+			rockchip,pins =
+				/* emmc_cmd */
+				<1 RK_PA5 1 &pcfg_pull_up_drv_level_2>;
+		};
+	};
+
+	fspi {
+		/omit-if-no-ref/
+		fspi_bus4: fspi-bus4 {
+			rockchip,pins =
+				/* fspi_d0 */
+				<1 RK_PA1 2 &pcfg_pull_none>,
+				/* fspi_d1 */
+				<1 RK_PA2 2 &pcfg_pull_none>,
+				/* fspi_d2 */
+				<1 RK_PA3 2 &pcfg_pull_none>,
+				/* fspi_d3 */
+				<1 RK_PA0 2 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		fspi_cs0: fspi-cs0 {
+			rockchip,pins =
+				/* fspi_cs0n */
+				<1 RK_PA5 2 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		fspi_clk: fspi-clk {
+			rockchip,pins =
+				/* fspi_clk */
+				<1 RK_PA4 2 &pcfg_pull_none>;
+		};
+	};
+
+	i2c0 {
+		/omit-if-no-ref/
+		i2c0m0_xfer: i2c0m0-xfer {
+			rockchip,pins =
+				/* i2c0_scl_m0 */
+				<0 RK_PA5 3 &pcfg_pull_none_smt>,
+				/* i2c0_sda_m0 */
+				<0 RK_PA6 3 &pcfg_pull_none_smt>;
+		};
+
+		/omit-if-no-ref/
+		i2c0m1_xfer: i2c0m1-xfer {
+			rockchip,pins =
+				/* i2c0_scl_m1 */
+				<1 RK_PB4 5 &pcfg_pull_none_smt>,
+				/* i2c0_sda_m1 */
+				<1 RK_PB3 5 &pcfg_pull_none_smt>;
+		};
+
+		/omit-if-no-ref/
+		i2c0m2_xfer: i2c0m2-xfer {
+			rockchip,pins =
+				/* i2c0_scl_m2 */
+				<1 RK_PB5 2 &pcfg_pull_none_smt>,
+				/* i2c0_sda_m2 */
+				<1 RK_PB6 2 &pcfg_pull_none_smt>;
+		};
+	};
+
+	i2c1 {
+		/omit-if-no-ref/
+		i2c1m0_xfer: i2c1m0-xfer {
+			rockchip,pins =
+				/* i2c1_scl_m0 */
+				<0 RK_PB0 1 &pcfg_pull_none_smt>,
+				/* i2c1_sda_m0 */
+				<0 RK_PB1 1 &pcfg_pull_none_smt>;
+		};
+
+		/omit-if-no-ref/
+		i2c1m1_xfer: i2c1m1-xfer {
+			rockchip,pins =
+				/* i2c1_scl_m1 */
+				<2 RK_PA4 4 &pcfg_pull_none_smt>,
+				/* i2c1_sda_m1 */
+				<2 RK_PA5 4 &pcfg_pull_none_smt>;
+		};
+	};
+
+	i2c2 {
+		/omit-if-no-ref/
+		i2c2m0_xfer: i2c2m0-xfer {
+			rockchip,pins =
+				/* i2c2_scl_m0 */
+				<0 RK_PB2 1 &pcfg_pull_none_smt>,
+				/* i2c2_sda_m0 */
+				<0 RK_PB3 1 &pcfg_pull_none_smt>;
+		};
+
+		/omit-if-no-ref/
+		i2c2m1_xfer: i2c2m1-xfer {
+			rockchip,pins =
+				/* i2c2_scl_m1 */
+				<2 RK_PA6 4 &pcfg_pull_none_smt>,
+				/* i2c2_sda_m1 */
+				<2 RK_PA7 4 &pcfg_pull_none_smt>;
+		};
+	};
+
+	i2c3 {
+		/omit-if-no-ref/
+		i2c3m0_xfer: i2c3m0-xfer {
+			rockchip,pins =
+				/* i2c3_scl_m0 */
+				<0 RK_PB4 1 &pcfg_pull_none_smt>,
+				/* i2c3_sda_m0 */
+				<0 RK_PB5 1 &pcfg_pull_none_smt>;
+		};
+
+		/omit-if-no-ref/
+		i2c3m1_xfer: i2c3m1-xfer {
+			rockchip,pins =
+				/* i2c3_scl_m1 */
+				<2 RK_PB3 4 &pcfg_pull_none_smt>,
+				/* i2c3_sda_m1 */
+				<2 RK_PB2 4 &pcfg_pull_none_smt>;
+		};
+	};
+
+	i2c4 {
+		/omit-if-no-ref/
+		i2c4m0_xfer: i2c4m0-xfer {
+			rockchip,pins =
+				/* i2c4_scl_m0 */
+				<2 RK_PB0 4 &pcfg_pull_none_smt>,
+				/* i2c4_sda_m0 */
+				<2 RK_PB1 4 &pcfg_pull_none_smt>;
+		};
+
+		/omit-if-no-ref/
+		i2c4m1_xfer: i2c4m1-xfer {
+			rockchip,pins =
+				/* i2c4_scl_m1 */
+				<1 RK_PB7 2 &pcfg_pull_none_smt>,
+				/* i2c4_sda_m1 */
+				<1 RK_PC0 2 &pcfg_pull_none_smt>;
+		};
+	};
+
+	jtag {
+		/omit-if-no-ref/
+		jtagm0: jtagm0 {
+			rockchip,pins =
+				/* jtag_tck_m0 */
+				<0 RK_PA5 5 &pcfg_pull_none>,
+				/* jtag_tms_m0 */
+				<0 RK_PA6 5 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		jtagm1: jtagm1 {
+			rockchip,pins =
+				/* jtag_tck_m1 */
+				<0 RK_PB4 3 &pcfg_pull_none>,
+				/* jtag_tms_m1 */
+				<0 RK_PB5 3 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		jtagm2: jtagm2 {
+			rockchip,pins =
+				/* jtag_tck_m2 */
+				<1 RK_PB4 3 &pcfg_pull_none>,
+				/* jtag_tms_m2 */
+				<1 RK_PB3 3 &pcfg_pull_none>;
+		};
+	};
+
+	psram-spi {
+		/omit-if-no-ref/
+		psram_spi_bus4: psram-spi-bus4 {
+			rockchip,pins =
+				/* psram_spi_d0 */
+				<0 RK_PA2 4 &pcfg_pull_none>,
+				/* psram_spi_d1 */
+				<0 RK_PA1 4 &pcfg_pull_none>,
+				/* psram_spi_d2 */
+				<0 RK_PA5 4 &pcfg_pull_none>,
+				/* psram_spi_d3 */
+				<0 RK_PA6 4 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		psram_spi_clk: psram-spi-clk {
+			rockchip,pins =
+				/* psram_spi_clk */
+				<0 RK_PA0 4 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		psram_spi_cs0n: psram-spi-cs0n {
+			rockchip,pins =
+				/* psram_spi_cs0n */
+				<0 RK_PA4 4 &pcfg_pull_none>;
+		};
+	};
+
+	pwm0 {
+		/omit-if-no-ref/
+		pwm0m0_ch0: pwm0m0-ch0 {
+			rockchip,pins =
+				/* pwm0m0_ch0 */
+				<0 RK_PA1 1 &pcfg_pull_none_drv_level_0>;
+		};
+		/omit-if-no-ref/
+		pwm0m0_ch1: pwm0m0-ch1 {
+			rockchip,pins =
+				/* pwm0m0_ch1 */
+				<0 RK_PA5 2 &pcfg_pull_none_drv_level_0>;
+		};
+		/omit-if-no-ref/
+		pwm0m0_ch2: pwm0m0-ch2 {
+			rockchip,pins =
+				/* pwm0m0_ch2 */
+				<0 RK_PA6 2 &pcfg_pull_none_drv_level_0>;
+		};
+		/omit-if-no-ref/
+		pwm0m0_ch3: pwm0m0-ch3 {
+			rockchip,pins =
+				/* pwm0m0_ch3 */
+				<0 RK_PA2 1 &pcfg_pull_none_drv_level_0>;
+		};
+
+		/omit-if-no-ref/
+		pwm0m1_ch0: pwm0m1-ch0 {
+			rockchip,pins =
+				/* pwm0m1_ch0 */
+				<2 RK_PA0 3 &pcfg_pull_none_drv_level_0>;
+		};
+		/omit-if-no-ref/
+		pwm0m1_ch1: pwm0m1-ch1 {
+			rockchip,pins =
+				/* pwm0m1_ch1 */
+				<2 RK_PA1 3 &pcfg_pull_none_drv_level_0>;
+		};
+		/omit-if-no-ref/
+		pwm0m1_ch2: pwm0m1-ch2 {
+			rockchip,pins =
+				/* pwm0m1_ch2 */
+				<2 RK_PA2 3 &pcfg_pull_none_drv_level_0>;
+		};
+		/omit-if-no-ref/
+		pwm0m1_ch3: pwm0m1-ch3 {
+			rockchip,pins =
+				/* pwm0m1_ch3 */
+				<2 RK_PB0 3 &pcfg_pull_none_drv_level_0>;
+		};
+
+		/omit-if-no-ref/
+		pwm0m2_ch1: pwm0m2-ch1 {
+			rockchip,pins =
+				/* pwm0m2_ch1 */
+				<1 RK_PB7 1 &pcfg_pull_none_drv_level_0>;
+		};
+		/omit-if-no-ref/
+		pwm0m2_ch2: pwm0m2-ch2 {
+			rockchip,pins =
+				/* pwm0m2_ch2 */
+				<1 RK_PC0 1 &pcfg_pull_none_drv_level_0>;
+		};
+	};
+
+	pwm1 {
+		/omit-if-no-ref/
+		pwm1m0_ch0: pwm1m0-ch0 {
+			rockchip,pins =
+				/* pwm1m0_ch0 */
+				<0 RK_PB0 3 &pcfg_pull_none_drv_level_0>;
+		};
+		/omit-if-no-ref/
+		pwm1m0_ch1: pwm1m0-ch1 {
+			rockchip,pins =
+				/* pwm1m0_ch1 */
+				<0 RK_PB1 3 &pcfg_pull_none_drv_level_0>;
+		};
+		/omit-if-no-ref/
+		pwm1m0_ch2: pwm1m0-ch2 {
+			rockchip,pins =
+				/* pwm1m0_ch2 */
+				<0 RK_PB2 3 &pcfg_pull_none_drv_level_0>;
+		};
+		/omit-if-no-ref/
+		pwm1m0_ch3: pwm1m0-ch3 {
+			rockchip,pins =
+				/* pwm1m0_ch3 */
+				<0 RK_PB3 3 &pcfg_pull_none_drv_level_0>;
+		};
+
+		/omit-if-no-ref/
+		pwm1m1_ch0: pwm1m1-ch0 {
+			rockchip,pins =
+				/* pwm1m1_ch0 */
+				<2 RK_PA3 3 &pcfg_pull_none_drv_level_0>;
+		};
+		/omit-if-no-ref/
+		pwm1m1_ch1: pwm1m1-ch1 {
+			rockchip,pins =
+				/* pwm1m1_ch1 */
+				<2 RK_PA4 3 &pcfg_pull_none_drv_level_0>;
+		};
+		/omit-if-no-ref/
+		pwm1m1_ch2: pwm1m1-ch2 {
+			rockchip,pins =
+				/* pwm1m1_ch2 */
+				<2 RK_PA5 3 &pcfg_pull_none_drv_level_0>;
+		};
+		/omit-if-no-ref/
+		pwm1m1_ch3: pwm1m1-ch3 {
+			rockchip,pins =
+				/* pwm1m1_ch3 */
+				<2 RK_PB1 3 &pcfg_pull_none_drv_level_0>;
+		};
+	};
+
+	pwm2 {
+		/omit-if-no-ref/
+		pwm2m0_ch0: pwm2m0-ch0 {
+			rockchip,pins =
+				/* pwm2m0_ch0 */
+				<1 RK_PB0 4 &pcfg_pull_none_drv_level_0>;
+		};
+		/omit-if-no-ref/
+		pwm2m0_ch1: pwm2m0-ch1 {
+			rockchip,pins =
+				/* pwm2m0_ch1 */
+				<1 RK_PA7 4 &pcfg_pull_none_drv_level_0>;
+		};
+		/omit-if-no-ref/
+		pwm2m0_ch2: pwm2m0-ch2 {
+			rockchip,pins =
+				/* pwm2m0_ch2 */
+				<1 RK_PB4 4 &pcfg_pull_none_drv_level_0>;
+		};
+		/omit-if-no-ref/
+		pwm2m0_ch3: pwm2m0-ch3 {
+			rockchip,pins =
+				/* pwm2m0_ch3 */
+				<1 RK_PB3 4 &pcfg_pull_none_drv_level_0>;
+		};
+
+		/omit-if-no-ref/
+		pwm2m1_ch0: pwm2m1-ch0 {
+			rockchip,pins =
+				/* pwm2m1_ch0 */
+				<2 RK_PA6 3 &pcfg_pull_none_drv_level_0>;
+		};
+		/omit-if-no-ref/
+		pwm2m1_ch1: pwm2m1-ch1 {
+			rockchip,pins =
+				/* pwm2m1_ch1 */
+				<2 RK_PA7 3 &pcfg_pull_none_drv_level_0>;
+		};
+		/omit-if-no-ref/
+		pwm2m1_ch2: pwm2m1-ch2 {
+			rockchip,pins =
+				/* pwm2m1_ch2 */
+				<2 RK_PB2 3 &pcfg_pull_none_drv_level_0>;
+		};
+		/omit-if-no-ref/
+		pwm2m1_ch3: pwm2m1-ch3 {
+			rockchip,pins =
+				/* pwm2m1_ch3 */
+				<2 RK_PB3 3 &pcfg_pull_none_drv_level_0>;
+		};
+	};
+
+	pwr {
+		/omit-if-no-ref/
+		pwr: pwr {
+			rockchip,pins =
+				/* pwr_ctrl0 */
+				<0 RK_PA3 1 &pcfg_pull_none>,
+				/* pwr_ctrl1 */
+				<0 RK_PA4 1 &pcfg_pull_none>;
+		};
+	};
+
+	rtc_32k {
+		/omit-if-no-ref/
+		rtc_32k: rtc-32k {
+			rockchip,pins =
+				/* rtc_32k_out */
+				<0 RK_PA0 1 &pcfg_pull_none>;
+		};
+	};
+
+	sai {
+		/omit-if-no-ref/
+		sai: sai {
+			rockchip,pins =
+				/* sai_lrck */
+				<2 RK_PB1 5 &pcfg_pull_none>,
+				/* sai_mclk */
+				<2 RK_PB0 5 &pcfg_pull_none>,
+				/* sai_sclk */
+				<2 RK_PA7 5 &pcfg_pull_none>,
+				/* sai_sdi */
+				<2 RK_PA6 5 &pcfg_pull_none>,
+				/* sai_sdo */
+				<2 RK_PB2 5 &pcfg_pull_none>;
+		};
+	};
+
+	sdmmc0 {
+		/omit-if-no-ref/
+		sdmmc0_bus4: sdmmc0-bus4 {
+			rockchip,pins =
+				/* sdmmc0_d0 */
+				<1 RK_PB0 1 &pcfg_pull_up_drv_level_2>,
+				/* sdmmc0_d1 */
+				<1 RK_PA7 1 &pcfg_pull_up_drv_level_2>,
+				/* sdmmc0_d2 */
+				<1 RK_PB4 1 &pcfg_pull_up_drv_level_2>,
+				/* sdmmc0_d3 */
+				<1 RK_PB3 1 &pcfg_pull_up_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		sdmmc0_clk: sdmmc0-clk {
+			rockchip,pins =
+				/* sdmmc0_clk */
+				<1 RK_PB1 1 &pcfg_pull_up_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		sdmmc0_cmd: sdmmc0-cmd {
+			rockchip,pins =
+				/* sdmmc0_cmd */
+				<1 RK_PB2 1 &pcfg_pull_up_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		sdmmc0_det: sdmmc0-det {
+			rockchip,pins =
+				/* sdmmc0_det */
+				<1 RK_PA6 1 &pcfg_pull_up>;
+		};
+	};
+
+	sdmmc1 {
+		/omit-if-no-ref/
+		sdmmc1_bus4: sdmmc1-bus4 {
+			rockchip,pins =
+				/* sdmmc1_d0 */
+				<2 RK_PA1 1 &pcfg_pull_up_drv_level_2>,
+				/* sdmmc1_d1 */
+				<2 RK_PA0 1 &pcfg_pull_up_drv_level_2>,
+				/* sdmmc1_d2 */
+				<2 RK_PA5 1 &pcfg_pull_up_drv_level_2>,
+				/* sdmmc1_d3 */
+				<2 RK_PA4 1 &pcfg_pull_up_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		sdmmc1_clk: sdmmc1-clk {
+			rockchip,pins =
+				/* sdmmc1_clk */
+				<2 RK_PA2 1 &pcfg_pull_up_drv_level_2>;
+		};
+
+		/omit-if-no-ref/
+		sdmmc1_cmd: sdmmc1-cmd {
+			rockchip,pins =
+				/* sdmmc1_cmd */
+				<2 RK_PA3 1 &pcfg_pull_up_drv_level_2>;
+		};
+	};
+
+	spi0 {
+		/omit-if-no-ref/
+		spi0m0_clk: spi0m0-clk {
+			rockchip,pins =
+				/* spi0_clk_m0 */
+				<2 RK_PB0 2 &pcfg_pull_none>,
+				/* spi0_miso_m0 */
+				<2 RK_PB3 2 &pcfg_pull_none>,
+				/* spi0_mosi_m0 */
+				<2 RK_PB1 2 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		spi0m0_cs0: spi0m0-cs0 {
+			rockchip,pins =
+				/* spi0_cs0n_m0 */
+				<2 RK_PB2 2 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		spi0m0_cs1: spi0m0-cs1 {
+			rockchip,pins =
+				/* spi0_cs1n_m0 */
+				<2 RK_PA7 2 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		spi0m1_clk: spi0m1-clk {
+			rockchip,pins =
+				/* spi0_clk_m1 */
+				<2 RK_PA2 5 &pcfg_pull_none>,
+				/* spi0_miso_m1 */
+				<2 RK_PA4 5 &pcfg_pull_none>,
+				/* spi0_mosi_m1 */
+				<2 RK_PA1 5 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		spi0m1_cs0: spi0m1-cs0 {
+			rockchip,pins =
+				/* spi0_cs0n_m1 */
+				<2 RK_PA3 5 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		spi0m1_cs1: spi0m1-cs1 {
+			rockchip,pins =
+				/* spi0_cs1n_m1 */
+				<2 RK_PA0 5 &pcfg_pull_none>;
+		};
+	};
+
+	uart0 {
+		/omit-if-no-ref/
+		uart0m0_xfer: uart0m0-xfer {
+			rockchip,pins =
+				/* uart0_rx_m0 */
+				<0 RK_PA6 1 &pcfg_pull_up>,
+				/* uart0_tx_m0 */
+				<0 RK_PA5 1 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		uart0m1_xfer: uart0m1-xfer {
+			rockchip,pins =
+				/* uart0_rx_m1 */
+				<0 RK_PB5 2 &pcfg_pull_up>,
+				/* uart0_tx_m1 */
+				<0 RK_PB4 2 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		uart0m2_xfer: uart0m2-xfer {
+			rockchip,pins =
+				/* uart0_rx_m2 */
+				<1 RK_PB3 2 &pcfg_pull_up>,
+				/* uart0_tx_m2 */
+				<1 RK_PB4 2 &pcfg_pull_up>;
+		};
+	};
+
+	uart1 {
+		/omit-if-no-ref/
+		uart1m0_xfer: uart1m0-xfer {
+			rockchip,pins =
+				/* uart1_rx_m0 */
+				<0 RK_PB2 2 &pcfg_pull_up>,
+				/* uart1_tx_m0 */
+				<0 RK_PB3 2 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		uart1m0_ctsn: uart1m0-ctsn {
+			rockchip,pins =
+				/* uart1m0_ctsn */
+				<0 RK_PB5 5 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		uart1m0_rtsn: uart1m0-rtsn {
+			rockchip,pins =
+				/* uart1m0_rtsn */
+				<0 RK_PB4 5 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		uart1m1_xfer: uart1m1-xfer {
+			rockchip,pins =
+				/* uart1_rx_m1 */
+				<1 RK_PA7 2 &pcfg_pull_up>,
+				/* uart1_tx_m1 */
+				<1 RK_PB0 2 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		uart1m1_ctsn: uart1m1-ctsn {
+			rockchip,pins =
+				/* uart1m1_ctsn */
+				<1 RK_PB2 2 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		uart1m1_rtsn: uart1m1-rtsn {
+			rockchip,pins =
+				/* uart1m1_rtsn */
+				<1 RK_PB1 2 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		uart1m2_xfer: uart1m2-xfer {
+			rockchip,pins =
+				/* uart1_rx_m2 */
+				<2 RK_PA7 1 &pcfg_pull_up>,
+				/* uart1_tx_m2 */
+				<2 RK_PA6 1 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		uart1m2_ctsn: uart1m2-ctsn {
+			rockchip,pins =
+				/* uart1m2_ctsn */
+				<2 RK_PA5 2 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		uart1m2_rtsn: uart1m2-rtsn {
+			rockchip,pins =
+				/* uart1m2_rtsn */
+				<2 RK_PA4 2 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		uart1m3_xfer: uart1m3-xfer {
+			rockchip,pins =
+				/* uart1_rx_m3 */
+				<2 RK_PA3 2 &pcfg_pull_up>,
+				/* uart1_tx_m3 */
+				<2 RK_PA2 2 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		uart1m3_ctsn: uart1m3-ctsn {
+			rockchip,pins =
+				/* uart1m3_ctsn */
+				<2 RK_PA1 2 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		uart1m3_rtsn: uart1m3-rtsn {
+			rockchip,pins =
+				/* uart1m3_rtsn */
+				<2 RK_PA0 2 &pcfg_pull_none>;
+		};
+	};
+
+	uart2 {
+		/omit-if-no-ref/
+		uart2m0_xfer: uart2m0-xfer {
+			rockchip,pins =
+				/* uart2_rx_m0 */
+				<0 RK_PB1 2 &pcfg_pull_up>,
+				/* uart2_tx_m0 */
+				<0 RK_PB0 2 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		uart2m0_ctsn: uart2m0-ctsn {
+			rockchip,pins =
+				/* uart2m0_ctsn */
+				<0 RK_PB3 5 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		uart2m0_rtsn: uart2m0-rtsn {
+			rockchip,pins =
+				/* uart2m0_rtsn */
+				<0 RK_PB2 5 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		uart2m1_xfer: uart2m1-xfer {
+			rockchip,pins =
+				/* uart2_rx_m1 */
+				<2 RK_PB1 1 &pcfg_pull_up>,
+				/* uart2_tx_m1 */
+				<2 RK_PB0 1 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		uart2m1_ctsn: uart2m1-ctsn {
+			rockchip,pins =
+				/* uart2m1_ctsn */
+				<2 RK_PB3 1 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		uart2m1_rtsn: uart2m1-rtsn {
+			rockchip,pins =
+				/* uart2m1_rtsn */
+				<2 RK_PB2 1 &pcfg_pull_none>;
+		};
+
+		/omit-if-no-ref/
+		uart2m2_xfer: uart2m2-xfer {
+			rockchip,pins =
+				/* uart2_rx_m2 */
+				<1 RK_PB6 3 &pcfg_pull_up>,
+				/* uart2_tx_m2 */
+				<1 RK_PB5 3 &pcfg_pull_up>;
+		};
+
+		/omit-if-no-ref/
+		uart2m2_ctsn: uart2m2-ctsn {
+			rockchip,pins =
+				/* uart2m2_ctsn */
+				<1 RK_PC0 3 &pcfg_pull_none>;
+		};
+		/omit-if-no-ref/
+		uart2m2_rtsn: uart2m2-rtsn {
+			rockchip,pins =
+				/* uart2m2_rtsn */
+				<1 RK_PB7 3 &pcfg_pull_none>;
+		};
+	};
+};
diff --git a/arch/arm/boot/dts/rockchip/rv1103b.dtsi b/arch/arm/boot/dts/rockchip/rv1103b.dtsi
new file mode 100644
index 000000000000..5955b249d4ce
--- /dev/null
+++ b/arch/arm/boot/dts/rockchip/rv1103b.dtsi
@@ -0,0 +1,257 @@
+// SPDX-License-Identifier: (GPL-2.0+ OR MIT)
+/*
+ * Copyright (c) 2024 Rockchip Electronics Co., Ltd.
+ */
+
+#include <dt-bindings/clock/rockchip,rv1103b-cru.h>
+#include <dt-bindings/gpio/gpio.h>
+#include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/interrupt-controller/arm-gic.h>
+#include <dt-bindings/pinctrl/rockchip.h>
+#include <dt-bindings/soc/rockchip,boot-mode.h>
+
+/ {
+	#address-cells = <1>;
+	#size-cells = <1>;
+
+	compatible = "rockchip,rv1103b";
+
+	interrupt-parent = <&gic>;
+
+	arm-pmu {
+		compatible = "arm,cortex-a7-pmu";
+		interrupts = <GIC_SPI 127 IRQ_TYPE_LEVEL_HIGH>;
+		interrupt-affinity = <&cpu0>;
+	};
+
+	xin32k: oscillator-32k {
+		compatible = "fixed-clock";
+		clock-frequency = <32768>;
+		clock-output-names = "xin32k";
+		#clock-cells = <0>;
+	};
+
+	xin24m: oscillator-24m {
+		compatible = "fixed-clock";
+		clock-frequency = <24000000>;
+		clock-output-names = "xin24m";
+		#clock-cells = <0>;
+	};
+
+	cpus {
+		#address-cells = <1>;
+		#size-cells = <0>;
+
+		cpu0: cpu@0 {
+			device_type = "cpu";
+			compatible = "arm,cortex-a7";
+			reg = <0x0>;
+			clocks = <&cru ARMCLK>;
+		};
+	};
+
+	timer {
+		compatible = "arm,armv7-timer";
+		interrupts = <GIC_PPI 13 (GIC_CPU_MASK_SIMPLE(1) | IRQ_TYPE_LEVEL_HIGH)>,
+			     <GIC_PPI 14 (GIC_CPU_MASK_SIMPLE(1) | IRQ_TYPE_LEVEL_HIGH)>;
+		clock-frequency = <24000000>;
+	};
+
+	pinctrl: pinctrl {
+		compatible = "rockchip,rv1103b-pinctrl";
+		rockchip,grf = <&ioc>;
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges;
+
+		gpio0: gpio@20520000 {
+			compatible = "rockchip,gpio-bank";
+			reg = <0x20520000 0x200>;
+			interrupts = <GIC_SPI 75 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cru PCLK_PMU_GPIO0>, <&cru DBCLK_PMU_GPIO0>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
+
+		gpio1: gpio@20d80000 {
+			compatible = "rockchip,gpio-bank";
+			reg = <0x20d80000 0x200>;
+			interrupts = <GIC_SPI 79 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cru PCLK_GPIO1>, <&cru DBCLK_GPIO1>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
+
+		gpio2: gpio@20840000 {
+			compatible = "rockchip,gpio-bank";
+			reg = <0x20840000 0x200>;
+			interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cru PCLK_GPIO2>, <&cru DBCLK_GPIO2>;
+			gpio-controller;
+			#gpio-cells = <2>;
+			interrupt-controller;
+			#interrupt-cells = <2>;
+		};
+	};
+
+	soc {
+		compatible = "simple-bus";
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges;
+
+		cru: clock-controller@20000000 {
+			compatible = "rockchip,rv1103b-cru";
+			reg = <0x20000000 0x81000>;
+			#clock-cells = <1>;
+			#reset-cells = <1>;
+			bootph-all;
+		};
+
+		pmu_grf: syscon@20160000 {
+			compatible = "rockchip,rv1103b-pmu-grf", "syscon", "simple-mfd";
+			reg = <0x20160000 0x1000>;
+
+			reboot_mode: reboot-mode {
+				compatible = "syscon-reboot-mode";
+				offset = <0x200>;
+				mode-normal = <BOOT_NORMAL>;
+				mode-recovery = <BOOT_RECOVERY>;
+				mode-bootloader = <BOOT_FASTBOOT>;
+				mode-loader = <BOOT_BL_DOWNLOAD>;
+			};
+		};
+
+		ioc: syscon@20170000 {
+			compatible = "rockchip,rv1103b-ioc", "syscon";
+			reg = <0x20170000 0x60000>;
+		};
+
+		gic: interrupt-controller@20411000 {
+			compatible = "arm,gic-400";
+			interrupt-controller;
+			#interrupt-cells = <3>;
+			#address-cells = <0>;
+
+			reg = <0x20411000 0x1000>,
+			      <0x20412000 0x2000>,
+			      <0x20414000 0x2000>,
+			      <0x20416000 0x2000>;
+			interrupts = <GIC_PPI 9 (GIC_CPU_MASK_SIMPLE(1) | IRQ_TYPE_LEVEL_HIGH)>;
+		};
+
+		uart0: serial@20540000 {
+			compatible = "rockchip,rv1103b-uart", "snps,dw-apb-uart";
+			reg = <0x20540000 0x100>;
+			interrupts = <GIC_SPI 69 IRQ_TYPE_LEVEL_HIGH>;
+			reg-shift = <2>;
+			reg-io-width = <4>;
+			clocks = <&cru SCLK_UART0>, <&cru PCLK_UART0>;
+			clock-names = "baudclk", "apb_pclk";
+			pinctrl-names = "default";
+			pinctrl-0 = <&uart0m0_xfer>;
+			status = "disabled";
+		};
+
+		sdmmc1: mmc@20650000 {
+			compatible = "rockchip,rv1103b-dw-mshc", "rockchip,rk3288-dw-mshc";
+			reg = <0x20650000 0x4000>;
+			interrupts = <GIC_SPI 44 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cru HCLK_SDMMC1>, <&cru CCLK_SDMMC1>;
+			clock-names = "biu", "ciu";
+			fifo-depth = <0x100>;
+			max-frequency = <150000000>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&sdmmc1_clk &sdmmc1_cmd &sdmmc1_bus4>;
+			status = "disabled";
+		};
+
+		uart1: serial@20870000 {
+			compatible = "rockchip,rv1103b-uart", "snps,dw-apb-uart";
+			reg = <0x20870000 0x100>;
+			interrupts = <GIC_SPI 70 IRQ_TYPE_LEVEL_HIGH>;
+			reg-shift = <2>;
+			reg-io-width = <4>;
+			clocks = <&cru SCLK_UART1>, <&cru PCLK_UART1>;
+			clock-names = "baudclk", "apb_pclk";
+			pinctrl-names = "default";
+			pinctrl-0 = <&uart1m0_xfer>;
+			status = "disabled";
+		};
+
+		uart2: serial@20880000 {
+			compatible = "rockchip,rv1103b-uart", "snps,dw-apb-uart";
+			reg = <0x20880000 0x100>;
+			interrupts = <GIC_SPI 71 IRQ_TYPE_LEVEL_HIGH>;
+			reg-shift = <2>;
+			reg-io-width = <4>;
+			clocks = <&cru SCLK_UART2>, <&cru PCLK_UART2>;
+			clock-names = "baudclk", "apb_pclk";
+			pinctrl-names = "default";
+			pinctrl-0 = <&uart2m0_xfer>;
+			status = "disabled";
+		};
+
+		wdt: watchdog@208d0000 {
+			compatible = "snps,dw-wdt";
+			reg = <0x208d0000 0x100>;
+			clocks = <&cru TCLK_WDT_NS>, <&cru PCLK_WDT_NS>;
+			clock-names = "tclk", "pclk";
+			interrupts = <GIC_SPI 29 IRQ_TYPE_LEVEL_HIGH>;
+			status = "disabled";
+		};
+
+		sdmmc0: mmc@20d20000 {
+			compatible = "rockchip,rv1103b-dw-mshc", "rockchip,rk3288-dw-mshc";
+			reg = <0x20d20000 0x4000>;
+			interrupts = <GIC_SPI 42 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cru HCLK_SDMMC0>, <&cru CCLK_SDMMC0>;
+			clock-names = "biu", "ciu";
+			fifo-depth = <0x100>;
+			max-frequency = <150000000>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&sdmmc0_det &sdmmc0_clk &sdmmc0_cmd &sdmmc0_bus4>;
+			status = "disabled";
+		};
+
+		emmc: mmc@20d30000 {
+			compatible = "rockchip,rv1103b-dw-mshc", "rockchip,rk3288-dw-mshc";
+			reg = <0x20d30000 0x4000>;
+			interrupts = <GIC_SPI 51 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cru HCLK_EMMC>, <&cru CCLK_EMMC>;
+			clock-names = "biu", "ciu";
+			fifo-depth = <0x100>;
+			max-frequency = <150000000>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&emmc_clk &emmc_cmd &emmc_bus4>;
+			status = "disabled";
+		};
+
+		fspi0: spi@20d40000 {
+			compatible = "rockchip,sfc";
+			reg = <0x20d40000 0x4000>;
+			interrupts = <GIC_SPI 52 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&cru SCLK_SFC_2X>, <&cru HCLK_SFC>;
+			clock-names = "clk_sfc", "hclk_sfc";
+			#address-cells = <1>;
+			#size-cells = <0>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&fspi_bus4 &fspi_cs0 &fspi_clk>;
+			status = "disabled";
+		};
+
+		system_sram: sram@210f6000 {
+			compatible = "mmio-sram";
+			reg = <0x210f6000 0x8000>;
+			#address-cells = <1>;
+			#size-cells = <1>;
+			ranges = <0 0x210f6000 0x8000>;
+		};
+	};
+};
+
+#include "rv1103b-pinctrl.dtsi"
-- 
2.34.1


