Return-Path: <devicetree+bounces-259309-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sNzuLqiEdmkORgEAu9opvQ
	(envelope-from <devicetree+bounces-259309-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 22:01:28 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AFC78273F
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 22:01:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DEAFB30053C3
	for <lists+devicetree@lfdr.de>; Sun, 25 Jan 2026 21:00:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3AA9330C620;
	Sun, 25 Jan 2026 21:00:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="TRwC+sH6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-yw1-f172.google.com (mail-yw1-f172.google.com [209.85.128.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B2D330CD82
	for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 21:00:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769374852; cv=none; b=ReWIZcLQGr+hV3Hxo/9gyBevud3xUFhyb728w6aci7elJSf5O+z/Jfud0jkSPaOPrPIuX7pIgLcm8BRfFM/jpc+abQgwQWN3HSBzuCQK7IAc+ohciD6x31r2zvKoGWf+9KQzAF9mQE29CRkrLXnmCupLtc50t9bJOAAQ/g3Om1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769374852; c=relaxed/simple;
	bh=Pdfoxvmf0koaQsrGa9oNdSYX+UtC+CNvdywI8EBll40=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ULF3/SmTNvtlcVvKetxtvyTyAxUcTNXaIUC/wEK4Y/X/WCtn6VC//fRz1YYMWJxUmIEsceBHYj/68vtDqF1bOYUoTAC9kw/yIyJCbtmOaTHPqmwcSi5YT7psb8toVo5m/ZnF3jk/rbnDGAnuZOjC00XIAWSNKqvm5/WlFyeXWQ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=TRwC+sH6; arc=none smtp.client-ip=209.85.128.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-yw1-f172.google.com with SMTP id 00721157ae682-790ac42fd00so38614977b3.3
        for <devicetree@vger.kernel.org>; Sun, 25 Jan 2026 13:00:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1769374850; x=1769979650; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zNMUkIoLTalpAd3ZRQES5uiVuV25MXRQWddLJpJTYAY=;
        b=TRwC+sH6+NbtVaJMIkDCkZnQXFmhRmZU39ZAsrrA96nm1gP47+fAwmUJDl4kn1UGIx
         BiCLnJqVua+zgvBBRO6yAT4rlCkLXnohy0uDvlqG7Rp59m7SCQqN7jUxuJkCz/o+X5QQ
         uaIxx7wUh2vEV/OlW8ga7jMY2KViIQ0az3/Q0hCtQEK26Ky8XncaOtZTWdNtwSOw0O94
         X/ZxnDIi/rkRRnPaCPJe3A8VS83u2BnkKyYFr2vMoVanriGszpJB2lT9zkys+gm4zTPa
         Xuyzwfpj39Bg19i1RLwJNKJOC3GezZYVKGAblr4ZBoSCkE1yaBT93nU4+OqI2v434OSB
         efFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769374850; x=1769979650;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=zNMUkIoLTalpAd3ZRQES5uiVuV25MXRQWddLJpJTYAY=;
        b=VefQJAetu/zpsIcA1Zg31DyK2jWbVTNLFEisTU4JTvRRtoWt4Py1ul4mJ9KiMDJPx9
         kcW/58BqegHvysMB4l4lxfL5MsGi1Xh53kj3nRTpTdlSiTe5K1rh2I8LWCNnm1GCI7ut
         k54DyvEg6n5TwRA7TbS7J6zJErCDI8p/qDCirwxWsTpRE8AvK0M9napIeZ08K1oKQwZN
         DMUIAXrWiUdhyhD6T5QC5LBoOmxJ3SmmlpsslzlpbRdfGdVYoZAZTgJFrIRJs1/1pfPR
         dSZP1oIiZpPvyK3eVJ4oIfVe0JV9y4hjKyAAxUD2ibdJPefC4iWNLFslXQHparLeKXsm
         olMg==
X-Gm-Message-State: AOJu0YzOFmw14rLJ7DpmHuOaq2En+hiFD9XujARucDnXeHd5TErN++q2
	f7EIo7/zubzLseJfDVn1GtojKHUxJuxltDHFxU4xwbGLvg+MZR+owUPv
X-Gm-Gg: AZuq6aIos47KiHvhVp91Ie0apfIlhEljZIBZR6JFQNPkpGqz4WGu6TtLwQc+GVXVMpi
	S71vYKGwVe0UdOkEF/Hd+rcVQSbjdCXd8BVVYmA/rpkK4T+w1UL8RBBD+b/SOW7HvSWvQncNYrT
	gYJj29UMPwhxm9C3+Lqc9Gd0XSg7kQNd586sZ+Uv60UfZa/BM+8qS9LnUnLRMphUgXZhYJi1K19
	IVFXZ4cL3cS4+msXmnLX1XlEWo1SM11ofwJXS/+W1YCrCRd/SERXxmA49wNol+nq33bo4qIpNuf
	ZcunL2XBXGsupm/cYj0zBUhB6wPnr/qrYND1zreBHkuqtLsz6n2bZ+lUdCLrLbt26flc2HFkjiR
	dG++JG6BeDx0Kuy0WZYzMS9D/VaqcsHM0di84g5icglgqCn/ZswkZl1VvMbEMsvR2F4T+ZV7dbX
	NOY/qy
X-Received: by 2002:a05:690c:e3ce:b0:794:35b:af5e with SMTP id 00721157ae682-7945a86ee06mr44305837b3.5.1769374849589;
        Sun, 25 Jan 2026 13:00:49 -0800 (PST)
Received: from [192.168.2.165] ([2600:1700:220:59e0::914])
        by smtp.googlemail.com with ESMTPSA id 956f58d0204a3-6496855d65esm2518183d50.12.2026.01.25.13.00.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 25 Jan 2026 13:00:49 -0800 (PST)
From: Anirudh Srinivasan <anirudhsriniv@gmail.com>
Date: Sun, 25 Jan 2026 15:00:39 -0600
Subject: [PATCH 2/2] ARM: dts: aspeed: Add Asrock Paul IPMI card
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260125-asrock-paul-v1-2-956085a4bd06@gmail.com>
References: <20260125-asrock-paul-v1-0-956085a4bd06@gmail.com>
In-Reply-To: <20260125-asrock-paul-v1-0-956085a4bd06@gmail.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 Zev Weiss <zev@bewilderbeest.net>, Renze Nicolai <renze@rnplus.nl>, 
 Anirudh Srinivasan <anirudhsriniv@gmail.com>
X-Mailer: b4 0.14.2
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	FREEMAIL_CC(0.00)[vger.kernel.org,lists.infradead.org,lists.ozlabs.org,bewilderbeest.net,rnplus.nl,gmail.com];
	RCPT_COUNT_TWELVE(0.00)[12];
	TAGGED_FROM(0.00)[bounces-259309-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[gmail.com:+];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[anirudhsriniv@gmail.com,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.0.0:email];
	MID_RHS_MATCH_FROM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[4.196.180.0:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 1AFC78273F
X-Rspamd-Action: no action

Add device tree for Asrock Paul IPMI card, an AST2500 based PCIe BMC
card.

Signed-off-by: Anirudh Srinivasan <anirudhsriniv@gmail.com>
---
 arch/arm/boot/dts/aspeed/Makefile                  |   1 +
 .../aspeed/aspeed-bmc-asrock-paul-ipmi-card.dts    | 131 +++++++++++++++++++++
 2 files changed, 132 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed/Makefile b/arch/arm/boot/dts/aspeed/Makefile
index 9adf9278dc94f84653775296c93150e61cc99328..be3c84a8462353996e0503cd95326ed88f6b8723 100644
--- a/arch/arm/boot/dts/aspeed/Makefile
+++ b/arch/arm/boot/dts/aspeed/Makefile
@@ -11,6 +11,7 @@ dtb-$(CONFIG_ARCH_ASPEED) += \
 	aspeed-bmc-arm-stardragon4800-rep2.dtb \
 	aspeed-bmc-asrock-e3c246d4i.dtb \
 	aspeed-bmc-asrock-e3c256d4i.dtb \
+	aspeed-bmc-asrock-paul-ipmi-card.dtb \
 	aspeed-bmc-asrock-romed8hm3.dtb \
 	aspeed-bmc-asrock-spc621d8hm3.dtb \
 	aspeed-bmc-asrock-x570d4u.dtb \
diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-paul-ipmi-card.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-paul-ipmi-card.dts
new file mode 100644
index 0000000000000000000000000000000000000000..f74f8fee9e1edb6cc1c0a0aef1268bdf91fc03f7
--- /dev/null
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-asrock-paul-ipmi-card.dts
@@ -0,0 +1,131 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
+// Copyright 2025 Anirudh Srinivasan
+
+/dts-v1/;
+
+#include "aspeed-g5.dtsi"
+#include <dt-bindings/gpio/aspeed-gpio.h>
+
+/{
+	model = "ASRock Paul IPMI Card";
+	compatible = "asrock,ast2500-paul-ipmi-card", "aspeed,ast2500";
+
+	aliases {
+		serial4 = &uart5;
+	};
+
+	chosen {
+		stdout-path = &uart5;
+	};
+
+	leds {
+		compatible = "gpio-leds";
+
+		led-fan-1 {
+			gpios = <&gpio ASPEED_GPIO(AA, 0) GPIO_ACTIVE_LOW>;
+			label = "fan1_red";
+			default-state = "off";
+		};
+
+		led-fan-2 {
+			gpios = <&gpio ASPEED_GPIO(AA, 1) GPIO_ACTIVE_LOW>;
+			label = "fan2_red";
+			default-state = "off";
+		};
+
+		led-fault {
+			gpios = <&gpio ASPEED_GPIO(Y, 3) GPIO_ACTIVE_LOW>;
+			label = "panic_red";
+			panic-indicator;
+			default-state = "off";
+		};
+
+		led-heartbeat {
+			gpios = <&gpio ASPEED_GPIO(H, 6) GPIO_ACTIVE_LOW>;
+			label = "heartbeat_green";
+			linux,default-trigger = "timer";
+		};
+	};
+
+	memory@80000000 {
+		reg = <0x80000000 0x20000000>;
+	};
+
+	reserved-memory {
+		#address-cells = <1>;
+		#size-cells = <1>;
+		ranges;
+
+		video_engine_memory: video {
+			size = <0x02000000>;
+			alignment = <0x01000000>;
+			compatible = "shared-dma-pool";
+			reusable;
+		};
+	};
+};
+
+&fmc {
+	status = "okay";
+	flash@0 {
+		status = "okay";
+		m25p,fast-read;
+		label = "bmc";
+		spi-max-frequency = <50000000>; /* 50 MHz */
+#include "openbmc-flash-layout.dtsi"
+	};
+};
+
+&gpio {
+	status = "okay";
+	gpio-line-names =
+		/*  A */ "", "", "", "", "", "", "", "",
+		/*  B */ "", "", "", "", "", "", "", "",
+		/*  C */ "", "", "", "", "", "", "", "",
+		/*  D */ "", "BMC_PWRBTN", "", "BMC_RESETCON", "", "", "", "",
+		/*  E */ "", "", "", "", "", "", "", "",
+		/*  F */ "", "", "", "", "", "", "", "",
+		/*  G */ "", "", "", "", "", "", "", "",
+		/*  H */ "", "", "", "", "", "", "BMC_LED1", "",
+		/*  I */ "", "", "", "", "", "", "", "",
+		/*  J */ "", "", "", "", "", "", "", "",
+		/*  K */ "", "", "", "", "", "", "", "",
+		/*  L */ "", "", "", "", "", "", "", "",
+		/*  M */ "", "", "", "", "", "", "", "",
+		/*  N */ "", "", "", "", "", "", "", "",
+		/*  O */ "", "", "", "", "", "", "", "",
+		/*  P */ "", "", "", "", "", "", "", "",
+		/*  Q */ "", "", "", "", "", "", "", "",
+		/*  R */ "", "", "", "", "", "", "", "",
+		/*  S */ "", "", "", "", "", "", "", "",
+		/*  T */ "", "", "", "", "", "", "", "",
+		/*  U */ "", "", "", "", "", "", "", "",
+		/*  V */ "", "", "", "", "", "", "", "",
+		/*  W */ "", "", "", "", "", "", "", "",
+		/*  X */ "", "", "", "", "", "PCIE_STNDBY", "", "",
+		/*  Y */ "", "", "", "SYSTEM_ERR_LED", "", "", "", "",
+		/*  Z */ "", "", "", "", "", "", "", "",
+		/* AA */ "FAN_1_LED", "FAN_2_LED", "", "", "", "", "", "",
+		/* AB */ "", "", "", "", "", "", "", "",
+		/* AC */ "", "", "", "", "", "", "", "";
+};
+
+&mac0 {
+	status = "okay";
+
+	pinctrl-names = "default";
+	pinctrl-0 = <&pinctrl_rgmii1_default &pinctrl_mdio1_default>;
+};
+
+&uart5 {
+	status = "okay";
+};
+
+&vhub {
+	status = "okay";
+};
+
+&video {
+	status = "okay";
+	memory-region = <&video_engine_memory>;
+};

-- 
2.52.0


