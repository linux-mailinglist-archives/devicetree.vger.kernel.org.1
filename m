Return-Path: <devicetree+bounces-321530-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id K9oWDBUJTGqTfAEAu9opvQ
	(envelope-from <devicetree+bounces-321530-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 21:59:17 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E05FC715350
	for <lists+devicetree@lfdr.de>; Mon, 06 Jul 2026 21:59:16 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=chromium.org header.s=google header.b=fLI7VdWx;
	dmarc=pass (policy=none) header.from=chromium.org;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-321530-lists+devicetree=lfdr.de@vger.kernel.org" designates 2600:3c04:e001:36c::12fc:5321 as permitted sender) smtp.mailfrom="devicetree+bounces-321530-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 38D9C30309D9
	for <lists+devicetree@lfdr.de>; Mon,  6 Jul 2026 19:59:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 583EA3D47CE;
	Mon,  6 Jul 2026 19:58:57 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F7913CFF72
	for <devicetree@vger.kernel.org>; Mon,  6 Jul 2026 19:58:54 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783367937; cv=none; b=EVXSIDXbmasjRTI0M02gPBFB0owro1c/xbuRkkqwtqDLlg/5hq4UBFD38rI7AE0b18wSsS45DSCl2Z0YnhCGzVJ/Vv2CZfKqEvnQ+1vsWz6TNF79P9qaYqXbaJyUI9iwJdmZ/n8AfjdeF7PsOsCQgA0s+S2vsEiRI7Ts4tBJ7zY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783367937; c=relaxed/simple;
	bh=VQRJctfRoIx43q7B8zg+JoEZ2DSkfCYQEsjoCD9AsiI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=LcOB5DsKxEW1YzQw/+AOvRT8BQlCjwrplnEOWfrLg959Xjb748gLh9VtQ2Go1icm/EzHLR8Avmfso681ztMn6SZSl8U2uWhP7Q+4ag8rM3vzMVkV01bHRr1LJgvqgYcISxx9d+VG8VTaIMmgH9v35vfoKOsB9QiWw25sEVAw1Js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=fLI7VdWx; arc=none smtp.client-ip=209.85.210.46
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-7e9f69ee6f4so2996571a34.2
        for <devicetree@vger.kernel.org>; Mon, 06 Jul 2026 12:58:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1783367933; x=1783972733; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=YlT3WnM+OJST3BZ/4dqDMJmxXkYErU65jgqgDcmWdqE=;
        b=fLI7VdWxmVioG1DzkOAcOiSBU5UPE0uYjVuDNI3h9Q9XAdYjV09FY0Iwe9T5gmFDOM
         rpg9MLdvMrkObb7Vbz1Ph/oSP63fNu3kFrFB51YrFEdCeP90+k8O1p4wUqeD0x6fb5z6
         oNlg583yDuJQNLkRlK6n6XJwqfqnTngCk7CBg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783367933; x=1783972733;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=YlT3WnM+OJST3BZ/4dqDMJmxXkYErU65jgqgDcmWdqE=;
        b=orSsrXhZgvEgXsD91TlGaswwLxcpSbtmLA/sUf6oegB5g0JUDmljmpSkPnYtaC6ISB
         +MYWo4s1/sLklekpsGS9TLS44tFCo8LB0wJeBlMEFYKAuenL9pwX8qonGqzOam0wM4Zi
         BY7yX2ECMt2oqf545IAcyvYD+o5uz3rarOuxzuSyp3h4PKgY0XJu3vw7sRSr7k21Xc3x
         JtJ6Qg7QvcGp1GKOtlJbdkGE0hM2NEyOdbplOTQCeM5lYqH/J1+BBhC+RC0sp7Aayykn
         yKS8itL9ZQsVH+7+spAgogndJMAiLtSXDm7kl6zAi/vUPLhK4TNrYs6lQEK13DHDDAtc
         VRnA==
X-Forwarded-Encrypted: i=1; AFNElJ8vj4lFWIjz9Nkczoqbay94QQHNVoeC4bXrDQ+w4p5eVgOQ7SYA0glkYpdN1Zsa5xcTyZEMZlKJ0Y4C@vger.kernel.org
X-Gm-Message-State: AOJu0YwNV0w0SdMSmhISGXTwwDS8fX9CT9celYEhgtdM/y4+7S2lJ+GH
	a3gZq6fE1XQp1lE1Ruu4BDN6ZHnWDzLWfvjjnPu9Y0P11qZEAx1cHloBQ5tJX7u3K13XIygKll5
	MRlO+Sw==
X-Gm-Gg: AfdE7ck1imqtHwqtY5wqOSG3K+7qoCCGQxHdWpVsmpr8ETOfDAuJmmlO1xfPZbfPak+
	9+IPqWmvtP2PiwZDrreCXpjh8tzMWG5FoMOGZ5u/he0dxXOSiBqw11xRjscX8+zolXqc2c+9JoK
	JgJAmG4WdAktiYSQ7Gl5mfVqhDLjZbbKqMNDw1LQbQWeGi0eO7WAbtI9qyt1KfJ0dRHADm5R9CX
	RL5uTIpn3qiOtFHRQlnTnDH6g5cjeKTMRZQkG0FbCrRBVURFqgeZeeRID590GWmc6KhfH9hjaTX
	rGoFo3bUnCRpc7G1BtD7fZHcX37oHxhhzoI+/LKfSzhyqCvgeKPhGWXLPzGkfE325Im2P5wHsRy
	zIpn5LAVFGRGm9LXuc1WcRbjddM/iHFP3PiIR683bxXyUow1L4+Y4gn7OPIIh+f/SaPFvQA5ALs
	6f7D+ZGE8=
X-Received: by 2002:a05:6830:4882:b0:7e9:3765:79c2 with SMTP id 46e09a7af769-7ebb22251dfmr1322732a34.12.1783367933546;
        Mon, 06 Jul 2026 12:58:53 -0700 (PDT)
Received: from chromium.org ([174.51.25.52])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7eb542d017csm12161834a34.8.2026.07.06.12.58.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Jul 2026 12:58:52 -0700 (PDT)
From: Simon Glass <sjg@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: linux-rockchip@lists.infradead.org,
	devicetree@vger.kernel.org,
	Fabio Estevam <festevam@nabladev.com>,
	linux-arm-kernel@lists.infradead.org,
	Simon Glass <sjg@chromium.org>,
	Albert Aribaud <albert.u.boot@aribaud.net>,
	Andy Shevchenko <andy@kernel.org>,
	Bartosz Golaszewski <brgl@kernel.org>,
	Brian Masney <bmasney@redhat.com>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Conor Dooley <conor+dt@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Guenter Roeck <linux@roeck-us.net>,
	Jamie Iles <jamie@jamieiles.com>,
	Jeffy Chen <jeffy.chen@rock-chips.com>,
	Jiri Slaby <jirislaby@kernel.org>,
	Jonas Karlman <jonas@kwiboo.se>,
	Jonathan Cameron <jic23@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Linus Walleij <linusw@kernel.org>,
	Michael Opdenacker <michael.opdenacker@rootcommit.com>,
	Michael Riesch <michael.riesch@collabora.com>,
	Michael Turquette <mturquette@baylibre.com>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
	Rob Herring <robh@kernel.org>,
	Stephen Boyd <sboyd@kernel.org>,
	Ulf Hansson <ulfh@kernel.org>,
	Wim Van Sebroeck <wim@linux-watchdog.org>,
	Yao Zi <ziyao@disroot.org>,
	huang lin <hl@rock-chips.com>,
	linux-clk@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-iio@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-mmc@vger.kernel.org,
	linux-serial@vger.kernel.org,
	linux-watchdog@vger.kernel.org
Subject: [PATCH 00/12] Add support for the Rockchip RV1106 and RV1103
Date: Mon,  6 Jul 2026 13:57:56 -0600
Message-ID: <20260706195818.3906949-1-sjg@chromium.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[chromium.org,none];
	R_DKIM_ALLOW(-0.20)[chromium.org:s=google];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[sjg@chromium.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[40];
	TAGGED_FROM(0.00)[bounces-321530-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:heiko@sntech.de,m:linux-rockchip@lists.infradead.org,m:devicetree@vger.kernel.org,m:festevam@nabladev.com,m:linux-arm-kernel@lists.infradead.org,m:sjg@chromium.org,m:albert.u.boot@aribaud.net,m:andy@kernel.org,m:brgl@kernel.org,m:bmasney@redhat.com,m:amadeus@jmu.edu.cn,m:conor+dt@kernel.org,m:dlechner@baylibre.com,m:naoki@radxa.com,m:gregkh@linuxfoundation.org,m:linux@roeck-us.net,m:jamie@jamieiles.com,m:jeffy.chen@rock-chips.com,m:jirislaby@kernel.org,m:jonas@kwiboo.se,m:jic23@kernel.org,m:krzk+dt@kernel.org,m:linusw@kernel.org,m:michael.opdenacker@rootcommit.com,m:michael.riesch@collabora.com,m:mturquette@baylibre.com,m:nuno.sa@analog.com,m:robh@kernel.org,m:sboyd@kernel.org,m:ulfh@kernel.org,m:wim@linux-watchdog.org,m:ziyao@disroot.org,m:hl@rock-chips.com,m:linux-clk@vger.kernel.org,m:linux-gpio@vger.kernel.org,m:linux-iio@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:linux-mmc@vger.kernel.org,m:linux-serial@vger.kernel.org,m:linux-watchdog@vger.kerne
 l.org,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sjg@chromium.org,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[chromium.org:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[chromium.org:from_mime,chromium.org:dkim,chromium.org:mid,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: E05FC715350

This series adds initial support for the Rockchip RV1106, a Cortex-A7
SoC aimed at IP cameras, and its RV1103 package variant, together with
the Luckfox Pico Mini B, a small and widely available RV1103 board.

The series follows the structure of the recently merged RV1103B
support. The clock driver is ported from the vendor kernel and is the
work of Elaine Zhang; the pinctrl data also comes from the vendor
kernel. The clock binding header keeps the vendor clock IDs. As with
the RV1103B, no resets are exposed yet and the CPU pvtpll is
initialised but not calibrated.

The devicetrees cover the devices needed for a basic system: UARTs,
SD/eMMC, the SPI flash controller, SARADC, watchdog, GPIO and pinctrl.

The series is tested on the Luckfox Pico Mini B: the kernel boots to
the rootfs wait with a working console on UART2, timers, pinctrl and
GPIO, and an SD card running at high speed. It builds with W=1 without
warnings and dt_binding_check and dtbs_check are clean.


Simon Glass (12):
  dt-bindings: clock: rockchip: Add RV1106 CRU support
  clk: rockchip: Add clock controller for the RV1106
  dt-bindings: pinctrl: rockchip: Add RV1106 compatible
  pinctrl: rockchip: Add RV1106 pinctrl support
  dt-bindings: soc: rockchip: grf: Add RV1106 compatibles
  dt-bindings: serial: snps-dw-apb-uart: Add RV1106 compatible
  dt-bindings: mmc: rockchip-dw-mshc: Add RV1106 compatible
  dt-bindings: watchdog: snps,dw-wdt: Add RV1106 compatible
  dt-bindings: iio: adc: rockchip-saradc: Add RV1106 compatible
  ARM: dts: rockchip: Add support for RV1106 and RV1103
  dt-bindings: arm: rockchip: Add Luckfox Pico Mini B
  ARM: dts: rockchip: Add Luckfox Pico Mini B

 .../devicetree/bindings/arm/rockchip.yaml     |    5 +
 .../bindings/clock/rockchip,rv1106-cru.yaml   |   59 +
 .../bindings/iio/adc/rockchip-saradc.yaml     |    3 +
 .../bindings/mmc/rockchip-dw-mshc.yaml        |    1 +
 .../bindings/pinctrl/rockchip,pinctrl.yaml    |    1 +
 .../bindings/serial/snps-dw-apb-uart.yaml     |    1 +
 .../devicetree/bindings/soc/rockchip/grf.yaml |   30 +
 .../bindings/watchdog/snps,dw-wdt.yaml        |    1 +
 arch/arm/boot/dts/rockchip/Makefile           |    1 +
 .../rockchip/rv1103-luckfox-pico-mini-b.dts   |   93 ++
 arch/arm/boot/dts/rockchip/rv1103.dtsi        |   12 +
 .../arm/boot/dts/rockchip/rv1106-pinctrl.dtsi | 1398 +++++++++++++++++
 arch/arm/boot/dts/rockchip/rv1106.dtsi        |  299 ++++
 drivers/clk/rockchip/Kconfig                  |    7 +
 drivers/clk/rockchip/Makefile                 |    1 +
 drivers/clk/rockchip/clk-rv1106.c             | 1107 +++++++++++++
 drivers/pinctrl/pinctrl-rockchip.c            |  208 +++
 drivers/pinctrl/pinctrl-rockchip.h            |    1 +
 .../dt-bindings/clock/rockchip,rv1106-cru.h   |  301 ++++
 19 files changed, 3529 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rv1106-cru.yaml
 create mode 100644 arch/arm/boot/dts/rockchip/rv1103-luckfox-pico-mini-b.dts
 create mode 100644 arch/arm/boot/dts/rockchip/rv1103.dtsi
 create mode 100644 arch/arm/boot/dts/rockchip/rv1106-pinctrl.dtsi
 create mode 100644 arch/arm/boot/dts/rockchip/rv1106.dtsi
 create mode 100644 drivers/clk/rockchip/clk-rv1106.c
 create mode 100644 include/dt-bindings/clock/rockchip,rv1106-cru.h

---
base-commit: 8cdeaa50eae8dad34885515f62559ee83e7e8dda
branch: rv1106a

-- 
2.43.0


