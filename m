Return-Path: <devicetree+bounces-217400-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id E85E8B57877
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 13:35:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 54E96204F0A
	for <lists+devicetree@lfdr.de>; Mon, 15 Sep 2025 11:34:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6AB64301460;
	Mon, 15 Sep 2025 11:29:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=hammernet-be.20230601.gappssmtp.com header.i=@hammernet-be.20230601.gappssmtp.com header.b="OPvzk38q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f45.google.com (mail-wr1-f45.google.com [209.85.221.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2485A301006
	for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 11:29:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757935768; cv=none; b=juytPYXoXw5/H6ZxyWRUXG0kcDWV99YwZfp0qHMpZp+gHh4r6+fPu9m/B3i9YvHsqoQOd9t6zfJEJnqowQq88nngnP+0HsC1rKGrHJGKoYfEx6xzJVIpoOP1EXcKvZajHj/DfoW9RN7ywfzBykLVMum4fi4zfdGda3fnkNjxhzw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757935768; c=relaxed/simple;
	bh=4l2eg06c1tAahiaz283LVZpyYDzwxcmSgY8t1gDaAVY=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=j6TkytidcSENr2vbtM6feMiTJ78ICKy09maOCBGjqOIYFuyRbzUuvUZVt3l3nXjxuqM+6MnzRWycCBoPxCwhd/0ascsr7+FAfZnHd8FWw+wn4lmSbODfm+8z6HWMaGk7sNKme/KLteIVJdiKsmBU8dJwxartqVS7wf5a7lvWRFA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=hammernet.be; spf=fail smtp.mailfrom=hammernet.be; dkim=pass (2048-bit key) header.d=hammernet-be.20230601.gappssmtp.com header.i=@hammernet-be.20230601.gappssmtp.com header.b=OPvzk38q; arc=none smtp.client-ip=209.85.221.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=hammernet.be
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=hammernet.be
Received: by mail-wr1-f45.google.com with SMTP id ffacd0b85a97d-3e9ca387425so1035554f8f.0
        for <devicetree@vger.kernel.org>; Mon, 15 Sep 2025 04:29:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=hammernet-be.20230601.gappssmtp.com; s=20230601; t=1757935763; x=1758540563; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=soW0jnL8WPot+9xDRD3R6Vi9tfo4BYG43zuH0Mb5i5w=;
        b=OPvzk38qh1P1o8Vr8/kcBPkCr4B91n9jcJB0uBUGtZmZosGbaRWhyJU/t+wz+mlhZu
         xslczcyLN/91wO5zB+3plnb/9jHB8vb+OIVHB2CSqLhv+1rEvfU4mNiVKIIGNuM67dEY
         90ftSFBhE448Glq44FM4CslvyotKRJsimxnYDa4w3Aq7aacJ2kvOI4eer5/o8COHOLqL
         jQUkdiqHN82YEmN1AfBjS0RQ4wysO5rUkv6nWa1Sf5RrOkOjEJjJEg+K2/FpHopIG/mU
         EfrjRU03p9uN6RLyPCPxmXzq/DH7Mm1zpp6AlC6MuzBGrtz2Y8kI+vRi5eYeZyga7RUn
         QKLg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757935763; x=1758540563;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=soW0jnL8WPot+9xDRD3R6Vi9tfo4BYG43zuH0Mb5i5w=;
        b=ctXAwvuQa3QTZ1F53IcJrknWs3LHsE2GONVnRR7+EhB1UKzxWamY9XVubg9C/y83As
         8PUEr7ij13WX+0MjZnYxhJb825+korpgkWL6jZwa/3R8t/Hk9Ta0WsbZfI/UPcXf849A
         ivFJ2gzM6l/ZY1wJovWwBA5PeAADKNVLmyDwU1djyUTqeSa2Jg02lskQkxpzGzYCc+zz
         LCxTX9L89U68lXi+2rwPEGtolMva/0aEPeA3j2CVNWaOdlw9VSOneqQ/OMuhFgjCxfbf
         vlZoSZfqoOuEz5lSzmNa6Y37Kvq3Hxv2CLeLmBI8EBtQIjS9ID5qv+YtCsQmqGzZ9Dn0
         jE1Q==
X-Forwarded-Encrypted: i=1; AJvYcCV92yzbw5RmsaBKipHCQF6qweIt4xQ91ND+zat6F2xy90bZ7zPXZsTFfxku2m8rZmPgHbCLzCdV6GzN@vger.kernel.org
X-Gm-Message-State: AOJu0YxMrm9VrtvqMbqc383+4RTu07MGyKzkxVPx3ilJovWVbgNGTl30
	NghPOhup8k9ycSUDSsrN093ABzjzTe4pENSXdUZX1LA9lZEnJ07PG8rsMZY74/xh+8g=
X-Gm-Gg: ASbGnct4ZE0NY6W7zXwklnDYkk16ACQDd4cp25/mCIKqKhoPfcpo0CFzLevoHaDukE1
	o9sktbGsd2gJ0sgiDbhJGkC/CEpdQHMg1z3qI+qy2/9MwK5VNTHF3BvieAvEOGtjQyBhjb/cKPN
	MCMVdFzdLnFqpzNvPaypOSunm0gATBc0Y5vPNvlJ0ZKbHzgYbKIQclyNz3k98OJ4JhfNC4NwL6b
	YEymlR8AsC48wJTnZckGZbStJfOZlysPHGHC1CBJJyUgGtfpT97B/pYq8bsY0nvbSj9IhoLJClt
	U0BBwHMznu+O5UIJQvKzkSwroNv2yZ9UiwuwdRsTvNL+Z0tEAgbgkihtaeup2n7gYF1PyNFDJc3
	Yy18tg/2deVW0aL51FlQAMLsps8Vbbz62j38vivc4ftzg33L/XA==
X-Google-Smtp-Source: AGHT+IF5Raa4GGsmgRPEVW/a/w+92KHvjP8UOvE2mb8YOib/5XzFtVE36lbSCNtod9NBJ/bMJKOmyw==
X-Received: by 2002:adf:a1ce:0:b0:3e9:4fe4:2632 with SMTP id ffacd0b85a97d-3e94fe45e49mr3994188f8f.46.1757935763050;
        Mon, 15 Sep 2025 04:29:23 -0700 (PDT)
Received: from pop-os.telenet.be ([2a02:1807:2a00:3400:8a33:a6aa:d0e:30e9])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e7cde81491sm11874635f8f.42.2025.09.15.04.29.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Sep 2025 04:29:22 -0700 (PDT)
From: Hendrik Hamerlinck <hendrik.hamerlinck@hammernet.be>
To: dlan@gentoo.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr
Cc: skhan@linuxfoundation.org,
	linux-kernel-mentees@lists.linux.dev,
	devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	spacemit@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Hendrik Hamerlinck <hendrik.hamerlinck@hammernet.be>
Subject: [PATCH v2] riscv: dts: spacemit: add UART pinctrl combinations
Date: Mon, 15 Sep 2025 13:28:45 +0200
Message-ID: <20250915112845.58134-1-hendrik.hamerlinck@hammernet.be>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add UART pinctrl configurations based on the SoC datasheet and the
downstream Bianbu Linux tree. The drive strength values were taken from
the downstream implementation, which uses medium drive strength.
CTS/RTS are moved to separate *-cts-rts-cfg states so boards can enable
hardware flow control conditionally.

Signed-off-by: Hendrik Hamerlinck <hendrik.hamerlinck@hammernet.be>
---
Changes in v2:
- Split cts/rts into separate pinctrl configs as suggested
- Removed options from board DTS files to keep them cleaner
---
 arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi | 389 ++++++++++++++++++-
 1 file changed, 386 insertions(+), 3 deletions(-)

diff --git a/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi b/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi
index 381055737422..8f87f8baaf77 100644
--- a/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi
+++ b/arch/riscv/boot/dts/spacemit/k1-pinctrl.dtsi
@@ -11,12 +11,395 @@
 #define K1_GPIO(x)	(x / 32) (x % 32)
 
 &pinctrl {
+	uart0_0_cfg: uart0-0-cfg {
+		uart0-0-pins {
+			pinmux = <K1_PADCONF(104, 3)>,	/* uart0_txd */
+				 <K1_PADCONF(105, 3)>;	/* uart0_rxd */
+			power-source = <3300>;
+			bias-pull-up;
+			drive-strength = <19>;
+		};
+	};
+
+	uart0_1_cfg: uart0-1-cfg {
+		uart0-1-pins {
+			pinmux = <K1_PADCONF(108, 1)>,	/* uart0_txd */
+				 <K1_PADCONF(80, 3)>;	/* uart0_rxd */
+			power-source = <3300>;
+			bias-pull-up;
+			drive-strength = <19>;
+		};
+	};
+
 	uart0_2_cfg: uart0-2-cfg {
 		uart0-2-pins {
-			pinmux = <K1_PADCONF(68, 2)>,
-				 <K1_PADCONF(69, 2)>;
+			pinmux = <K1_PADCONF(68, 2)>,	/* uart0_txd */
+				 <K1_PADCONF(69, 2)>;	/* uart0_rxd */
+			bias-pull-up;
+			drive-strength = <32>;
+		};
+	};
 
-			bias-pull-up = <0>;
+	uart2_0_cfg: uart2-0-cfg {
+		uart2-0-pins {
+			pinmux = <K1_PADCONF(21, 1)>,	/* uart2_txd */
+				 <K1_PADCONF(22, 1)>;	/* uart2_rxd */
+			bias-pull-up;
+			drive-strength = <32>;
+		};
+	};
+
+	uart2_0_cts_rts_cfg: uart2-0-cts-rts-cfg {
+		uart2-0-pins {
+			pinmux = <K1_PADCONF(23, 1)>,	/* uart2_cts */
+				 <K1_PADCONF(24, 1)>;	/* uart2_rts */
+			bias-pull-up;
+			drive-strength = <32>;
+		};
+	};
+
+	uart3_0_cfg: uart3-0-cfg {
+		uart3-0-pins {
+			pinmux = <K1_PADCONF(81, 2)>,	/* uart3_txd */
+				 <K1_PADCONF(82, 2)>;	/* uart3_rxd */
+			bias-pull-up;
+			drive-strength = <32>;
+		};
+	};
+
+	uart3_0_cts_rts_cfg: uart3-0-cts-rts-cfg {
+		uart3-0-pins {
+			pinmux = <K1_PADCONF(83, 2)>,	/* uart3_cts */
+				 <K1_PADCONF(84, 2)>;	/* uart3_rts */
+			bias-pull-up;
+			drive-strength = <32>;
+		};
+	};
+
+	uart3_1_cfg: uart3-1-cfg {
+		uart3-1-pins {
+			pinmux = <K1_PADCONF(18, 2)>,	/* uart3_txd */
+				 <K1_PADCONF(19, 2)>;	/* uart3_rxd */
+			bias-pull-up;
+			drive-strength = <32>;
+		};
+	};
+
+	uart3_1_cts_rts_cfg: uart3-1-cts-rts-cfg {
+		uart3-1-pins {
+			pinmux = <K1_PADCONF(20, 2)>,	/* uart3_cts */
+				 <K1_PADCONF(21, 2)>;	/* uart3_rts */
+			bias-pull-up;
+			drive-strength = <32>;
+		};
+	};
+
+	uart3_2_cfg: uart3-2-cfg {
+		uart3-2-pins {
+			pinmux = <K1_PADCONF(53, 4)>,	/* uart3_txd */
+				 <K1_PADCONF(54, 4)>;	/* uart3_rxd */
+			bias-pull-up;
+			drive-strength = <32>;
+		};
+	};
+
+	uart3_2_cts_rts_cfg: uart3-2-cts-rts-cfg {
+		uart3-2-pins {
+			pinmux = <K1_PADCONF(55, 4)>,	/* uart3_cts */
+				 <K1_PADCONF(56, 4)>;	/* uart3_rts */
+			bias-pull-up;
+			drive-strength = <32>;
+		};
+	};
+
+	uart4_0_cfg: uart4-0-cfg {
+		uart4-0-pins {
+			pinmux = <K1_PADCONF(100, 4)>,	/* uart4_txd */
+				 <K1_PADCONF(101, 4)>;	/* uart4_rxd */
+			power-source = <3300>;
+			bias-pull-up;
+			drive-strength = <19>;
+		};
+	};
+
+	uart4_1_cfg: uart4-1-cfg {
+		uart4-1-pins {
+			pinmux = <K1_PADCONF(83, 3)>,	/* uart4_txd */
+				 <K1_PADCONF(84, 3)>;	/* uart4_rxd */
+			bias-pull-up;
+			drive-strength = <32>;
+		};
+	};
+
+	uart4_1_cts_rts_cfg: uart4-1-cts-rts-cfg {
+		uart4-1-pins {
+			pinmux = <K1_PADCONF(81, 3)>,	/* uart4_cts */
+				 <K1_PADCONF(82, 3)>;	/* uart4_rts */
+			bias-pull-up;
+			drive-strength = <32>;
+		};
+	};
+
+	uart4_2_cfg: uart4-2-cfg {
+		uart4-2-pins {
+			pinmux = <K1_PADCONF(23, 2)>,	/* uart4_txd */
+				 <K1_PADCONF(24, 2)>;	/* uart4_rxd */
+			bias-pull-up;
+			drive-strength = <32>;
+		};
+	};
+
+	uart4_3_cfg: uart4-3-cfg {
+		uart4-3-pins {
+			pinmux = <K1_PADCONF(33, 2)>,	/* uart4_txd */
+				 <K1_PADCONF(34, 2)>;	/* uart4_rxd */
+			bias-pull-up;
+			drive-strength = <32>;
+		};
+	};
+
+	uart4_3_cts_rts_cfg: uart4-3-cts-rts-cfg {
+		uart4-3-pins {
+			pinmux = <K1_PADCONF(35, 2)>,	/* uart4_cts */
+				 <K1_PADCONF(36, 2)>;	/* uart4_rts */
+			bias-pull-up;
+			drive-strength = <32>;
+		};
+	};
+
+	uart4_4_cfg: uart4-4-cfg {
+		uart4-4-pins {
+			pinmux = <K1_PADCONF(111, 4)>,	/* uart4_txd */
+				 <K1_PADCONF(112, 4)>;	/* uart4_rxd */
+			bias-pull-up;
+			drive-strength = <32>;
+		};
+	};
+
+	uart4_4_cts_rts_cfg: uart4-4-cts-rts-cfg {
+		uart4-4-pins {
+			pinmux = <K1_PADCONF(113, 4)>,	/* uart4_cts */
+				 <K1_PADCONF(114, 4)>;	/* uart4_rts */
+			bias-pull-up;
+			drive-strength = <32>;
+		};
+	};
+
+	uart5_0_cfg: uart5-0-cfg {
+		uart5-0-pins {
+			pinmux = <K1_PADCONF(102, 3)>,	/* uart5_txd */
+				 <K1_PADCONF(103, 3)>;	/* uart5_rxd */
+			power-source = <3300>;
+			bias-pull-up;
+			drive-strength = <19>;
+		};
+	};
+
+	uart5_1_cfg: uart5-1-cfg {
+		uart5-1-pins {
+			pinmux = <K1_PADCONF(25, 2)>,	/* uart5_txd */
+				 <K1_PADCONF(26, 2)>;	/* uart5_rxd */
+			bias-pull-up;
+			drive-strength = <32>;
+		};
+	};
+
+	uart5_1_cts_rts_cfg: uart5-1-cts-rts-cfg {
+		uart5-1-pins {
+			pinmux = <K1_PADCONF(27, 2)>,	/* uart5_cts */
+				 <K1_PADCONF(28, 2)>;	/* uart5_rts */
+			bias-pull-up;
+			drive-strength = <32>;
+		};
+	};
+
+	uart5_2_cfg: uart5-2-cfg {
+		uart5-2-pins {
+			pinmux = <K1_PADCONF(42, 2)>,	/* uart5_txd */
+				 <K1_PADCONF(43, 2)>;	/* uart5_rxd */
+			bias-pull-up;
+			drive-strength = <32>;
+		};
+	};
+
+	uart5_2_cts_rts_cfg: uart5-2-cts-rts-cfg {
+		uart5-2-pins {
+			pinmux = <K1_PADCONF(44, 2)>,	/* uart5_cts */
+				 <K1_PADCONF(45, 2)>;	/* uart5_rts */
+			bias-pull-up;
+			drive-strength = <32>;
+		};
+	};
+
+	uart5_3_cfg: uart5-3-cfg {
+		uart5-3-pins {
+			pinmux = <K1_PADCONF(70, 4)>,	/* uart5_txd */
+				 <K1_PADCONF(71, 4)>;	/* uart5_rxd */
+			bias-pull-up;
+			drive-strength = <32>;
+		};
+	};
+
+	uart5_3_cts_rts_cfg: uart5-3-cts-rts-cfg {
+		uart5-3-pins {
+			pinmux = <K1_PADCONF(72, 4)>,	/* uart5_cts */
+				 <K1_PADCONF(73, 4)>;	/* uart5_rts */
+			bias-pull-up;
+			drive-strength = <32>;
+		};
+	};
+
+	uart6_0_cfg: uart6-0-cfg {
+		uart6-0-pins {
+			pinmux = <K1_PADCONF(86, 2)>,	/* uart6_txd */
+				 <K1_PADCONF(87, 2)>;	/* uart6_rxd */
+			bias-pull-up;
+			drive-strength = <32>;
+		};
+	};
+
+	uart6_0_cts_rts_cfg: uart6-0-cts-rts-cfg {
+		uart6-0-pins {
+			pinmux = <K1_PADCONF(85, 2)>,	/* uart6_cts */
+				 <K1_PADCONF(90, 2)>;	/* uart6_rts */
+			bias-pull-up;
+			drive-strength = <32>;
+		};
+	};
+
+	uart6_1_cfg: uart6-1-cfg {
+		uart6-1-pins {
+			pinmux = <K1_PADCONF(0, 2)>,	/* uart6_txd */
+				 <K1_PADCONF(1, 2)>;	/* uart6_rxd */
+			bias-pull-up;
+			drive-strength = <32>;
+		};
+	};
+
+	uart6_1_cts_rts_cfg: uart6-1-cts-rts-cfg {
+		uart6-1-pins {
+			pinmux = <K1_PADCONF(2, 2)>,	/* uart6_cts */
+				 <K1_PADCONF(3, 2)>;	/* uart6_rts */
+			bias-pull-up;
+			drive-strength = <32>;
+		};
+	};
+
+	uart6_2_cfg: uart6-2-cfg {
+		uart6-2-pins {
+			pinmux = <K1_PADCONF(56, 2)>,	/* uart6_txd */
+				 <K1_PADCONF(57, 2)>;	/* uart6_rxd */
+			bias-pull-up;
+			drive-strength = <32>;
+		};
+	};
+
+	uart7_0_cfg: uart7-0-cfg {
+		uart7-0-pins {
+			pinmux = <K1_PADCONF(88, 2)>,	/* uart7_txd */
+				 <K1_PADCONF(89, 2)>;	/* uart7_rxd */
+			bias-pull-up;
+			drive-strength = <32>;
+		};
+	};
+
+	uart7_1_cfg: uart7-1-cfg {
+		uart7-1-pins {
+			pinmux = <K1_PADCONF(4, 2)>,	/* uart7_txd */
+				 <K1_PADCONF(5, 2)>;	/* uart7_rxd */
+			bias-pull-up;
+			drive-strength = <32>;
+		};
+	};
+
+	uart7_1_cts_rts_cfg: uart7-1-cts-rts-cfg {
+		uart7-1-pins {
+			pinmux = <K1_PADCONF(6, 2)>,	/* uart7_cts */
+				 <K1_PADCONF(7, 2)>;	/* uart7_rts */
+			bias-pull-up;
+			drive-strength = <32>;
+		};
+	};
+
+	uart8_0_cfg: uart8-0-cfg {
+		uart8-0-pins {
+			pinmux = <K1_PADCONF(82, 4)>,	/* uart8_txd */
+				 <K1_PADCONF(83, 4)>;	/* uart8_rxd */
+			bias-pull-up;
+			drive-strength = <32>;
+		};
+	};
+
+	uart8_1_cfg: uart8-1-cfg {
+		uart8-1-pins {
+			pinmux = <K1_PADCONF(8, 2)>,	/* uart8_txd */
+				 <K1_PADCONF(9, 2)>;	/* uart8_rxd */
+			bias-pull-up;
+			drive-strength = <32>;
+		};
+	};
+
+	uart8_1_cts_rts_cfg: uart8-1-cts-rts-cfg {
+		uart8-1-pins {
+			pinmux = <K1_PADCONF(10, 2)>,	/* uart8_cts */
+				 <K1_PADCONF(11, 2)>;	/* uart8_rts */
+			bias-pull-up;
+			drive-strength = <32>;
+		};
+	};
+
+	uart8_2_cfg: uart8-2-cfg {
+		uart8-2-pins {
+			pinmux = <K1_PADCONF(75, 4)>,	/* uart8_txd */
+				 <K1_PADCONF(76, 4)>;	/* uart8_rxd */
+			power-source = <3300>;
+			bias-pull-up;
+			drive-strength = <19>;
+		};
+	};
+
+	uart8_2_cts_rts_cfg: uart8-2-cts-rts-cfg {
+		uart8-2-pins {
+			pinmux = <K1_PADCONF(77, 4)>,	/* uart8_cts */
+				 <K1_PADCONF(78, 4)>;	/* uart8_rts */
+			power-source = <3300>;
+			bias-pull-up;
+			drive-strength = <19>;
+		};
+	};
+
+	uart9_0_cfg: uart9-0-cfg {
+		uart9-0-pins {
+			pinmux = <K1_PADCONF(12, 2)>,	/* uart9_txd */
+				 <K1_PADCONF(13, 2)>;	/* uart9_rxd */
+			bias-pull-up;
+			drive-strength = <32>;
+		};
+	};
+
+	uart9_1_cfg: uart9-1-cfg {
+		uart9-1-pins {
+			pinmux = <K1_PADCONF(116, 3)>,	/* uart9_txd */
+				 <K1_PADCONF(117, 3)>;	/* uart9_rxd */
+			bias-pull-up;
+			drive-strength = <32>;
+		};
+	};
+
+	uart9_1_cts_rts_cfg: uart9-1-cts-rts-cfg {
+		uart9-1-pins {
+			pinmux = <K1_PADCONF(110, 3)>,	/* uart9_cts */
+				 <K1_PADCONF(115, 3)>;	/* uart9_rts */
+			bias-pull-up;
+			drive-strength = <32>;
+		};
+	};
+
+	uart9_2_cfg: uart9-2-cfg {
+		uart9-2-pins {
+			pinmux = <K1_PADCONF(72, 2)>,	/* uart9_txd */
+				 <K1_PADCONF(73, 2)>;	/* uart9_rxd */
+			bias-pull-up;
 			drive-strength = <32>;
 		};
 	};
-- 
2.43.0


