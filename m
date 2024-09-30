Return-Path: <devicetree+bounces-106570-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 5502A98AD56
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 21:52:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B3F1DB24822
	for <lists+devicetree@lfdr.de>; Mon, 30 Sep 2024 19:52:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5E03519F495;
	Mon, 30 Sep 2024 19:51:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b="ELURFnCo"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f169.google.com (mail-pf1-f169.google.com [209.85.210.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 884BF19E810
	for <devicetree@vger.kernel.org>; Mon, 30 Sep 2024 19:51:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727725876; cv=none; b=AUlKMgy+2QOolq5qH/m9Fqs257KHvFiJPGydx/eympMZxiI7ln57VQ057OlVD9oa/6gjuq/l7tHYr2s26JDQXPlG/yGrww+Bu3RGqtNQH7Lb+5e8NDWTXVUKEARQcFyYrHVUKnFwJFB/8ucgIjVSrASr4pqrKHaVffp4IUiqMXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727725876; c=relaxed/simple;
	bh=3MknxfvOT96VQ1CbgaEVXM2q2XJ6sRmP4c8Ma4FS4HM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=dAIHQx4eC1MVmFmR7hN6m5qP8aBfst/hzBkCFGWOXbs2RN49qQVBhWXTOkHR0eKsZUIrUdMVuh6r11bqN8weKw0ipklAc5BL4QC2k3qLafK6qHO+fIl5E5xkKcyzh/PuiqENWy9v2KirfdaAtvxlteP6IYW0cnO3kXg3hRBG5Us=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com; spf=pass smtp.mailfrom=tenstorrent.com; dkim=pass (2048-bit key) header.d=tenstorrent.com header.i=@tenstorrent.com header.b=ELURFnCo; arc=none smtp.client-ip=209.85.210.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=tenstorrent.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tenstorrent.com
Received: by mail-pf1-f169.google.com with SMTP id d2e1a72fcca58-71781f42f75so4432168b3a.1
        for <devicetree@vger.kernel.org>; Mon, 30 Sep 2024 12:51:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tenstorrent.com; s=google; t=1727725874; x=1728330674; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ICpyCTkGsdJm7eeaXUsSjDldVjlYUz+0ZOAQ13h1xnU=;
        b=ELURFnCo9nDWgLCZd8VbvXwiX3WmHTPBZ6jO5RyJqoYvxlfjPh9ENwUCCJ5UpTKbos
         q7a0KIDSsNyn8BDZqpObI9vQPuyMBvo6/LFFkdPyY+gQPqzSX77KNVGjzofF2uXN7646
         fP48uxeiIPhGJQlPrOO5DBl8Y7HzWPrvd26XOvg8y4lN7lcZs4fujk5u87Euc5LnMR2F
         EubKAVPJ6RS4xKQQP8nbaYSljRQdGBitH7TCw0Te3jESOXHzbS9gdtWftVSOtJF71R+N
         WNZ2n0dmgqkOI3o+HvnIMCVN2n+EAV/4a4FfHCJOuBsvsn+ZQ9FCWkz7ikml0Vx+l2yK
         0dng==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1727725874; x=1728330674;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ICpyCTkGsdJm7eeaXUsSjDldVjlYUz+0ZOAQ13h1xnU=;
        b=VbzJ3fuBmyEtGHg4Vavt87mRaPAlMmFgSDsDRw4/X8f0xjJmjJX0xI+UwHgYcy3q6U
         jc60QgxlDUwfdmGAoq9a2pJM3UVN3nT0JZ4NUCzRBB9w3Etz+5gZs4yTn9tcvFGm7QHB
         X2hgaq3hpZsOV1IN+MGMbDOwc6Ebe4GOBOkQ8CnVUlsuogeEc7Nm7wnpN5zigPITR1zk
         pEb9yjUi532+BCMxDLijOpZAEVA6TNzfVWHKOL9Zvq9DhnPNfunGKetfQip+MHWC1Grc
         lEFQgUGAW1awaJjbfi0IhibiPBtc4EbiSCPOIntgPtvBhy/ZUQ9vOmIDBV0eNhyY+ixa
         lDtw==
X-Forwarded-Encrypted: i=1; AJvYcCUhjQQjuFLDNy+/AXMfanANwcyUDnw05K6fPrYJK1pevLdKEycJyZ4QXiiK8wJ2uhy+SqShSNHpAJnR@vger.kernel.org
X-Gm-Message-State: AOJu0YxF46KtnGwFZR3OkSoRYruthAScI5KibVJx4hTAk+coxqfPKaaP
	Y17je8OOSedNWtnesHbifJ+VaClYEiB6S6GNWNdYeMX0eh1fTGCAK/gXZbk36Uk=
X-Google-Smtp-Source: AGHT+IGNiVUtiKwsFmCbb9BMFxoZhqZNHK240MQuF/IFFw8Khki2fl4uSD7/w4pR2J1UZBbSAna/1w==
X-Received: by 2002:a05:6a00:2d18:b0:706:6af8:e08a with SMTP id d2e1a72fcca58-71b25f00e5cmr19917887b3a.2.1727725874095;
        Mon, 30 Sep 2024 12:51:14 -0700 (PDT)
Received: from [127.0.1.1] (71-34-69-82.ptld.qwest.net. [71.34.69.82])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-71b26529d4bsm6630213b3a.158.2024.09.30.12.51.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Sep 2024 12:51:13 -0700 (PDT)
From: Drew Fustini <dfustini@tenstorrent.com>
Date: Mon, 30 Sep 2024 12:50:57 -0700
Subject: [PATCH v3 7/8] riscv: dts: thead: Add TH1520 pinctrl settings for
 UART0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240930-th1520-pinctrl-v3-7-32cea2bdbecb@tenstorrent.com>
References: <20240930-th1520-pinctrl-v3-0-32cea2bdbecb@tenstorrent.com>
In-Reply-To: <20240930-th1520-pinctrl-v3-0-32cea2bdbecb@tenstorrent.com>
To: Drew Fustini <drew@pdp7.com>, Guo Ren <guoren@kernel.org>, 
 Fu Wei <wefu@redhat.com>, Linus Walleij <linus.walleij@linaro.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Emil Renner Berthing <emil.renner.berthing@canonical.com>, 
 Thomas Bonnefille <thomas.bonnefille@bootlin.com>
Cc: linux-riscv@lists.infradead.org, linux-gpio@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Drew Fustini <dfustini@tenstorrent.com>
X-Mailer: b4 0.14.1

From: Emil Renner Berthing <emil.renner.berthing@canonical.com>

Add pinctrl settings for UART0 used as the default debug console on
both the Lichee Pi 4A and BeagleV Ahead boards.

Tested-by: Thomas Bonnefille <thomas.bonnefille@bootlin.com>
Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
Signed-off-by: Drew Fustini <dfustini@tenstorrent.com>
---
 arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts | 26 ++++++++++++++++++++++
 arch/riscv/boot/dts/thead/th1520-lichee-pi-4a.dts  | 26 ++++++++++++++++++++++
 2 files changed, 52 insertions(+)

diff --git a/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts b/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
index 69f82e7afd0b..6c0b768e8d17 100644
--- a/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
+++ b/arch/riscv/boot/dts/thead/th1520-beaglev-ahead.dts
@@ -71,7 +71,33 @@ &sdio0 {
 	status = "okay";
 };
 
+&padctrl0_apsys {
+	uart0_pins: uart0-0 {
+		tx-pins {
+			pins = "UART0_TXD";
+			function = "uart";
+			bias-disable;
+			drive-strength = <3>;
+			input-disable;
+			input-schmitt-disable;
+			slew-rate = <0>;
+		};
+
+		rx-pins {
+			pins = "UART0_RXD";
+			function = "uart";
+			bias-disable;
+			drive-strength = <1>;
+			input-enable;
+			input-schmitt-enable;
+			slew-rate = <0>;
+		};
+	};
+};
+
 &uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0_pins>;
 	status = "okay";
 };
 
diff --git a/arch/riscv/boot/dts/thead/th1520-lichee-pi-4a.dts b/arch/riscv/boot/dts/thead/th1520-lichee-pi-4a.dts
index 58ad381fc1c3..f60b1879192d 100644
--- a/arch/riscv/boot/dts/thead/th1520-lichee-pi-4a.dts
+++ b/arch/riscv/boot/dts/thead/th1520-lichee-pi-4a.dts
@@ -30,7 +30,33 @@ chosen {
 	};
 };
 
+&padctrl0_apsys {
+	uart0_pins: uart0-0 {
+		tx-pins {
+			pins = "UART0_TXD";
+			function = "uart";
+			bias-disable;
+			drive-strength = <3>;
+			input-disable;
+			input-schmitt-disable;
+			slew-rate = <0>;
+		};
+
+		rx-pins {
+			pins = "UART0_RXD";
+			function = "uart";
+			bias-disable;
+			drive-strength = <1>;
+			input-enable;
+			input-schmitt-enable;
+			slew-rate = <0>;
+		};
+	};
+};
+
 &uart0 {
+	pinctrl-names = "default";
+	pinctrl-0 = <&uart0_pins>;
 	status = "okay";
 };
 

-- 
2.34.1


