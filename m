Return-Path: <devicetree+bounces-326469-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id xzwSMq6UVmpS+AAAu9opvQ
	(envelope-from <devicetree+bounces-326469-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 21:57:34 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 37D9B758818
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 21:57:34 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=chromium.org header.s=google header.b=TUTqTsuN;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-326469-lists+devicetree=lfdr.de@vger.kernel.org" designates 172.234.253.10 as permitted sender) smtp.mailfrom="devicetree+bounces-326469-lists+devicetree=lfdr.de@vger.kernel.org";
	dmarc=pass (policy=none) header.from=chromium.org;
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 3381431AB28F
	for <lists+devicetree@lfdr.de>; Tue, 14 Jul 2026 19:37:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9EDBD418A25;
	Tue, 14 Jul 2026 19:37:06 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com [209.85.210.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7311C2DCF74
	for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 19:37:04 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784057826; cv=none; b=bsIvI26P44kQ/s9P8nWnyLWpfQB1AQ6HoRRulGcA96sI4d9J4Nntvz7jF2aJAgqH7C9OzeR//TNWEONurEHsHsppTVnKPL/unicK5C+M/t7Qz5rI1sBcZAmsGGnEV+I37d+RbPRxao4WeLIgsSurmLbYq7gk2pKeGtA0n3tlxng=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784057826; c=relaxed/simple;
	bh=6Gi6bVCOYouVgUFj/phGYvWE0wX3SO1+XYiERUL0ctc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=urCShzGYrhRmUzsrph/dXaBzbQyLa22WP8QoMbwvTQ9/lvk4MEbp/wrXLmfFRze3etEhEHBc/pekcC3FiW+i4Q7SbEzOCz1QPc7ItWTBjH+0y2ZU+xkhpKma8mSpPQIfuGUlu+kI9oFSlB+a1sANCNDL2VvMhmLONGRGBmFpLhM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=chromium.org; spf=pass smtp.mailfrom=chromium.org; dkim=pass (1024-bit key) header.d=chromium.org header.i=@chromium.org header.b=TUTqTsuN; arc=none smtp.client-ip=209.85.210.46
Received: by mail-ot1-f46.google.com with SMTP id 46e09a7af769-7eb545db3afso796167a34.0
        for <devicetree@vger.kernel.org>; Tue, 14 Jul 2026 12:37:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1784057823; x=1784662623; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to:content-type;
        bh=yoY75yqFw5mb7tU/+ruk6fsKo/hettBezB5T0NFLox0=;
        b=TUTqTsuN+fvjqWJl/GHpGpBW9Y7cETk3UdcQtmXk+iiV9c2VqIcPWFggsfs9X1QwtU
         LHZuwhWzkeKwIjZ0D4W/0T0QhpM8vsaHcicY6XvoIgD2tOJ/zde9fCUcNYJw0KFU8DxA
         biGxA7CzyHrhBtCK8Fv3u94DqUrtcghUf/mT8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1784057823; x=1784662623;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=yoY75yqFw5mb7tU/+ruk6fsKo/hettBezB5T0NFLox0=;
        b=RXIpzTcpq/LufwBLazXx9QcbvdeenM9etBpKoMnq9kyVfmYKzb7gy0+An3x+KTcSye
         ekoDE4BpO1EnTz//mpEm/dUSoLO6p4/sx8sLyPjv30R0PNlirHypcYCmIHzotzrjU2lz
         zuI5LvK3WRN8cPniJ3k38NNSUvkWn/0vuOb2mbcR6UTR+L1NTIEP9CnAPBmrhimgoWdZ
         BBjgcd2xTpzYH2XH7EwJjJ8NU43IiDLap7wtXGoK26sGkI13v3KtQIMQXfdJmfHJVmR0
         y3aO04CY/vH82pcIeGmLDAs95tp1uDEbVDZUAdop06Xetdc/A7MgO4Unnp21v3/dl7Xn
         nCjQ==
X-Forwarded-Encrypted: i=1; AFNElJ8FdkgsxPdaep0urD7tsarTqOiclpD2R8fuJ0FmGnVCHv256BAD1nhfmYC13jtiJj66KVn1sapfKrLa@vger.kernel.org
X-Gm-Message-State: AOJu0Yx9a84Fq7FBODBeh2N9tFgEP0urbysKEq9pvQxhayxN+k6t0rgC
	UUgOSsg5Cn/KnyBV9ChyzcqEFvNfMXCEyA5SZ2q1zuTdLD1Stcst07yJL3EqYUQAwg==
X-Gm-Gg: AfdE7cmC7dpagKghHg9FAe2xcyzI3DekYAkwcDKPlzhBjaKWIGf2aQnIS+cizoMMZJ0
	0Ed7TsofRmn9P+YRrnhn/YTBM65FZyjUdlM5pAp3caMjjo/TQst+nJM2ryBBtozwCNYJ7oBRicW
	Xc4QDOoBMccqsZYamVwLNT+A6LEBLN4b86w52KfPCvpzKNriSNq3kWpE0Yytvg8sldDONzPlVlW
	fQziNmjY8w1gUNG6QEITw8AO/mqzPQZKwqcXdBM7KFOeQvsL/7kHf/vzdTFhlDREwa9O7j0ZbQL
	s1+/95Q5+aYKhFwXHyTaZbKGnpdUD1peW+aZAr8TmB7YMBB2xjQsYoD4lLZJA7HmsZ4nWsamWQs
	qU0pxMqEK0pQZddSTYxI2oS2QmwJNXkCJTaaAg4hT9lKkgQ6uZ5KgLdvbOgQhjSIutKWruOeuXo
	SZragYaUuOwX09elL1fA==
X-Received: by 2002:a05:6830:2306:b0:7e9:ead3:4449 with SMTP id 46e09a7af769-7ec0967b3e2mr9214494a34.6.1784057823394;
        Tue, 14 Jul 2026 12:37:03 -0700 (PDT)
Received: from chromium.org ([174.51.25.52])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-7ebcaf742e1sm16004026a34.8.2026.07.14.12.37.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Jul 2026 12:37:02 -0700 (PDT)
From: Simon Glass <sjg@chromium.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Fabio Estevam <festevam@nabladev.com>,
	devicetree@vger.kernel.org,
	Jonas Karlman <jonas@kwiboo.se>,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	Simon Glass <sjg@chromium.org>,
	Albert Aribaud <albert.u.boot@aribaud.net>,
	Bartosz Golaszewski <brgl@kernel.org>,
	Brian Masney <bmasney@redhat.com>,
	Chukun Pan <amadeus@jmu.edu.cn>,
	Conor Dooley <conor+dt@kernel.org>,
	FUKAUMI Naoki <naoki@radxa.com>,
	Jeffy Chen <jeffy.chen@rock-chips.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Michael Opdenacker <michael.opdenacker@rootcommit.com>,
	Michael Riesch <michael.riesch@collabora.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Rob Herring <robh@kernel.org>,
	Stephen Boyd <sboyd@kernel.org>,
	Vinod Koul <vkoul@kernel.org>,
	Yao Zi <ziyao@disroot.org>,
	huang lin <hl@rock-chips.com>,
	linux-clk@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2 0/6] Add support for the Rockchip RV1106 and RV1103
Date: Tue, 14 Jul 2026 13:36:37 -0600
Message-ID: <20260714193656.2196447-1-sjg@chromium.org>
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
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[sjg@chromium.org,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[25];
	TAGGED_FROM(0.00)[bounces-326469-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:heiko@sntech.de,m:festevam@nabladev.com,m:devicetree@vger.kernel.org,m:jonas@kwiboo.se,m:linux-arm-kernel@lists.infradead.org,m:linux-rockchip@lists.infradead.org,m:sjg@chromium.org,m:albert.u.boot@aribaud.net,m:brgl@kernel.org,m:bmasney@redhat.com,m:amadeus@jmu.edu.cn,m:conor+dt@kernel.org,m:naoki@radxa.com,m:jeffy.chen@rock-chips.com,m:krzk+dt@kernel.org,m:michael.opdenacker@rootcommit.com,m:michael.riesch@collabora.com,m:mturquette@baylibre.com,m:robh@kernel.org,m:sboyd@kernel.org,m:vkoul@kernel.org,m:ziyao@disroot.org,m:hl@rock-chips.com,m:linux-clk@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:conor@kernel.org,m:krzk@kernel.org,s:lists@lfdr.de];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[vger.kernel.org:from_smtp,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,chromium.org:from_mime,chromium.org:dkim,chromium.org:mid]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 37D9B758818

This series adds initial support for the Rockchip RV1106, a Cortex-A7
SoC aimed at IP cameras, and its RV1103 package variant, together with
the Luckfox Pico Mini B, a small and widely available RV1103 board.

The series follows the structure of the recently merged RV1103B
support. The clock driver is ported from the vendor kernel and is the
work of Elaine Zhang. As with the RV1103B, no resets are exposed yet
and the CPU pvtpll is initialised but not calibrated.

Following feedback on v1, several parts have been split out into
separate series: the pinctrl driver and binding, and the serial,
watchdog and iio bindings, are submitted separately to their
maintainers. The mmc binding is already applied for mmc-next. This
series carries the clock support, the GRF compatibles and the
devicetrees, which depend on the clock binding header.

The devicetrees cover the devices needed for a basic system: UARTs,
SD/eMMC, the SPI flash controller, SARADC, watchdog, GPIO and pinctrl.

This v2 is re-tested on the Luckfox Pico Mini B: the kernel boots to
the rootfs wait with a working console on UART2, timers, pinctrl and
GPIO, and an SD card running at high speed. It builds with W=1 without
warnings and dt_binding_check and dtbs_check are clean.

Changes in v2:
- Renumber the clock IDs to be continuous, starting from 0
- Provide the MMC phase clocks from the CRU rather than a grf-cru
- Mention the MMC phase clocks in the rockchip,grf description
- Provide the MMC phase clocks from the CRU via an auxiliary GRF regmap
  rather than from a separate grf-cru clock provider
- Drop the grf-cru clock-controller child and use the syscon-only
  group for the main GRF, since the CRU now provides the MMC phase
  clocks
- Use a single gpio-ioc compatible for the per-bank IOC blocks in
  place of the ioc and pmuioc regions
- Take the MMC drive and sample phase clocks from the CRU and drop the
  grf-cru node
- Give each GPIO bank a syscon for its own IOC block, referenced by a
  rockchip,grf phandle in the bank node
- Add gpio aliases, which the pin controller and gpio drivers use to
  identify the bank; the rv1103 removes the gpio2 alias
- Split the series by subsystem: pinctrl, serial, watchdog and iio are
  now submitted separately
- Drop patch 'dt-bindings: mmc: rockchip-dw-mshc: Add RV1106
  compatible', which is applied for mmc-next

Simon Glass (6):
  dt-bindings: clock: rockchip: Add RV1106 CRU support
  clk: rockchip: Add clock controller for the RV1106
  dt-bindings: soc: rockchip: grf: Add RV1106 compatibles
  ARM: dts: rockchip: Add support for RV1106 and RV1103
  dt-bindings: arm: rockchip: Add Luckfox Pico Mini B
  ARM: dts: rockchip: Add Luckfox Pico Mini B

 .../devicetree/bindings/arm/rockchip.yaml     |    5 +
 .../bindings/clock/rockchip,rv1106-cru.yaml   |   60 +
 .../devicetree/bindings/soc/rockchip/grf.yaml |    2 +
 arch/arm/boot/dts/rockchip/Makefile           |    1 +
 .../rockchip/rv1103-luckfox-pico-mini-b.dts   |   93 ++
 arch/arm/boot/dts/rockchip/rv1103.dtsi        |   16 +
 .../arm/boot/dts/rockchip/rv1106-pinctrl.dtsi | 1398 +++++++++++++++++
 arch/arm/boot/dts/rockchip/rv1106.dtsi        |  321 ++++
 drivers/clk/rockchip/Kconfig                  |    7 +
 drivers/clk/rockchip/Makefile                 |    1 +
 drivers/clk/rockchip/clk-rv1106.c             | 1100 +++++++++++++
 .../dt-bindings/clock/rockchip,rv1106-cru.h   |  300 ++++
 12 files changed, 3304 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/rockchip,rv1106-cru.yaml
 create mode 100644 arch/arm/boot/dts/rockchip/rv1103-luckfox-pico-mini-b.dts
 create mode 100644 arch/arm/boot/dts/rockchip/rv1103.dtsi
 create mode 100644 arch/arm/boot/dts/rockchip/rv1106-pinctrl.dtsi
 create mode 100644 arch/arm/boot/dts/rockchip/rv1106.dtsi
 create mode 100644 drivers/clk/rockchip/clk-rv1106.c
 create mode 100644 include/dt-bindings/clock/rockchip,rv1106-cru.h

---
base-commit: 3b029c035b34bbc693405ddf759f0e9b920c27f1
branch: rv1106a2

-- 
2.43.0


