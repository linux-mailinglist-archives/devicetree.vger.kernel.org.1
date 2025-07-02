Return-Path: <devicetree+bounces-192047-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id DFDE8AF1415
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 13:38:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 847174A4A31
	for <lists+devicetree@lfdr.de>; Wed,  2 Jul 2025 11:38:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B45C3270542;
	Wed,  2 Jul 2025 11:37:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b="tQ5D6Cvr"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-qv1-f42.google.com (mail-qv1-f42.google.com [209.85.219.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A0D2F26D4EA
	for <devicetree@vger.kernel.org>; Wed,  2 Jul 2025 11:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.219.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751456245; cv=none; b=vBdArLnDPJzWPs+rIblSigZiSS/gsDQiwllLIES83+yWH3SN1kBaIr396mmoNlRG7JM5A50YzE2Br2SRNce0ftLtowyqOtMZ8iO0gNpnykJ5BrpuYnWQf7eW7haOzTmzEBOY/XKHpeinvYxmTmWANcCniEw+/Ysb9Tfu6sAFTr8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751456245; c=relaxed/simple;
	bh=uhCWHyd3B3M9UnF4Ahzw/jZFjxrbH8IJ9YEb9lQ3JC8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=eP5XdV18Jze8uXBN7KdmnzXnp0PSIxRO+9AMaYxrIzmSwNiBx4D3gIz2odLa7YwX3GriHBwdgnpMN/m+zWcW1lOE1JabnT1nMYjDjyxUjfBZXytVnfD7uVrlw8UF0AE8GPHixC6PE2VtkwozyNcwDWrPA88ViX+DtCjY+xpkljI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com; spf=pass smtp.mailfrom=riscstar.com; dkim=pass (2048-bit key) header.d=riscstar-com.20230601.gappssmtp.com header.i=@riscstar-com.20230601.gappssmtp.com header.b=tQ5D6Cvr; arc=none smtp.client-ip=209.85.219.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Received: by mail-qv1-f42.google.com with SMTP id 6a1803df08f44-6fafdd322d3so48221126d6.3
        for <devicetree@vger.kernel.org>; Wed, 02 Jul 2025 04:37:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20230601.gappssmtp.com; s=20230601; t=1751456242; x=1752061042; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MoP1pXdfqtHiiOeYolqOqMKK+HZ6JiOVPla39TeeGl8=;
        b=tQ5D6CvrnzyBoaeHXpYMNjsa6Z7Tf9bgvUsFTgyWW0LOWaXnGQrjWtgJm3RgrnPLFO
         pFWI97LQoweFtgqLUzF1ujPCgLTQuBoU46e7q7cP2ME61ZPDP65o0VlB3V+6QQivIiJk
         C1YZCOE6MFDptQHQ3Ijz6RCwDvCaMxGbeGRzsOfdWDvDxp9leEMRwFPXVrdG966aR4B5
         /0rIECiMvTmlv0gKfVZIgPb0DfHcpzopYmev693eNHU4CzGXRd6kfsI+1fS/I0S+H6Ut
         LkohNPMPEiB5R51EBIR67N5o5NgHoFm95IJFuOhx7wai9+uqJMaMx5pJ9rlBhnC13GhO
         gQNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751456242; x=1752061042;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=MoP1pXdfqtHiiOeYolqOqMKK+HZ6JiOVPla39TeeGl8=;
        b=Y+refeEagAuQwHydOSDRpgKH/VVjwFIgK9RQOAqGLF4PBCb0kylqPQDQOEo3ZABYyw
         bRmNhFtYuFAjBiTw6mg/fC52uL4FUc1s6Duq85zpljT0oXq1cb9Nw75JutZRq1vEoJ4V
         WN+2ULBquHUsadUbwiLA0f3NAgDJmB5+WIfwwnnsBJhxFJt/2LFM2KC5dIadVX4JaGFR
         G/CCWAl8pBgA9L1rU30mlI8oYVvAW/h/V3jztWa1LSFNgAifqXh0HBjQJLAL4v3ZHW5f
         Ln6rciSd63ePi7Fp+wlYzDp8cAChNW6k6Ihbkoq8sYKo26KiOIcHdksFRzcTlsz3G1gu
         Yx1g==
X-Forwarded-Encrypted: i=1; AJvYcCXdA3gIfFc/6oNIWRc9mbYh6J9xO7YE2qx0c4gKlNeIGflgi7WMZyqCKLwT+TD18b6jVANfDbXylhwm@vger.kernel.org
X-Gm-Message-State: AOJu0Yz1MP1QqSrKM5w91K94OUB4Syk4gwIkMffhhgaQMTDNOyvcmBso
	StpifpBbi8EDY34ePRIPYYGl3NQ9KQ+lLtUvFDL1g++ha1eUNjmoQkV/TgaEVzz75Ok=
X-Gm-Gg: ASbGncsfqPrpoDZMrkS6n69F9p7TVN//mgPOyWeanGjFQUrhP9pUo0Uw0bOmviP7F2F
	58b+rDD6akp0HqGG5q1gPcj7I6YJFzqL1jXSMjWEoRCOk8fryYU0MJacyZJmnlpIR1chgiB4gSw
	FC+bZKG93GEhN/rb5eYLZ1ewetr6Na7bISO0zRGtyGeERR4ecjas7JnnHIgLGcd4xQxASNx23Uh
	XiMhzztDPRXuO/WRFjaNluUKdSJHwd6yYKGoQ9hLmi5ckLH4fJB141FFa+4Kcf4RJuTp31oNgzE
	erhALay9hQeWwmjTRx8CP/vanH16JugsrVGvsco/c3RUCtXa30jVfnzEIBebdgKMKGh+rnhD4Jn
	yB35jTJmaX6LGCqZBwC1jcg3viiUYxJd1IkyVXN8Q7X+X5A==
X-Google-Smtp-Source: AGHT+IGVzvYqyb92eSOlmx/sXh5kUAYoEUgvaX7Z5vlbrOx+1z7amBVysl7FNglINMkR5+bJnESH7g==
X-Received: by 2002:a05:6214:3006:b0:6fb:6040:5d4d with SMTP id 6a1803df08f44-702b1bad9e2mr41519016d6.28.1751456242594;
        Wed, 02 Jul 2025 04:37:22 -0700 (PDT)
Received: from localhost.localdomain (c-73-228-159-35.hsd1.mn.comcast.net. [73.228.159.35])
        by smtp.gmail.com with ESMTPSA id 6a1803df08f44-6fd7730ac6csm99218046d6.103.2025.07.02.04.37.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Jul 2025 04:37:22 -0700 (PDT)
From: Alex Elder <elder@riscstar.com>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	p.zabel@pengutronix.de,
	paul.walmsley@sifive.com,
	palmer@dabbelt.com,
	aou@eecs.berkeley.edu,
	alex@ghiti.fr,
	dlan@gentoo.org
Cc: heylenay@4d2.org,
	inochiama@outlook.com,
	guodong@riscstar.com,
	devicetree@vger.kernel.org,
	linux-clk@vger.kernel.org,
	spacemit@lists.linux.dev,
	linux-riscv@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v12 6/6] riscv: dts: spacemit: add reset support for the K1 SoC
Date: Wed,  2 Jul 2025 06:37:08 -0500
Message-ID: <20250702113709.291748-7-elder@riscstar.com>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250702113709.291748-1-elder@riscstar.com>
References: <20250702113709.291748-1-elder@riscstar.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Define syscon nodes for the RCPU, RCPU2, and APBC2 SpacemiT CCUS, which
currently support resets but not clocks in the SpacemiT K1.

Signed-off-by: Alex Elder <elder@riscstar.com>
Reviewed-by: Philipp Zabel <p.zabel@pengutronix.de>
Reviewed-by: Yixun Lan <dlan@gentoo.org>
---
 arch/riscv/boot/dts/spacemit/k1.dtsi | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/arch/riscv/boot/dts/spacemit/k1.dtsi b/arch/riscv/boot/dts/spacemit/k1.dtsi
index 14097f1f6f447..4bc69bebfebfa 100644
--- a/arch/riscv/boot/dts/spacemit/k1.dtsi
+++ b/arch/riscv/boot/dts/spacemit/k1.dtsi
@@ -346,6 +346,18 @@ soc {
 		dma-noncoherent;
 		ranges;
 
+		syscon_rcpu: system-controller@c0880000 {
+			compatible = "spacemit,k1-syscon-rcpu";
+			reg = <0x0 0xc0880000 0x0 0x2048>;
+			#reset-cells = <1>;
+		};
+
+		syscon_rcpu2: system-controller@c0888000 {
+			compatible = "spacemit,k1-syscon-rcpu2";
+			reg = <0x0 0xc0888000 0x0 0x28>;
+			#reset-cells = <1>;
+		};
+
 		syscon_apbc: system-controller@d4015000 {
 			compatible = "spacemit,k1-syscon-apbc";
 			reg = <0x0 0xd4015000 0x0 0x1000>;
@@ -562,6 +574,12 @@ clint: timer@e4000000 {
 					      <&cpu7_intc 3>, <&cpu7_intc 7>;
 		};
 
+		syscon_apbc2: system-controller@f0610000 {
+			compatible = "spacemit,k1-syscon-apbc2";
+			reg = <0x0 0xf0610000 0x0 0x20>;
+			#reset-cells = <1>;
+		};
+
 		sec_uart1: serial@f0612000 {
 			compatible = "spacemit,k1-uart", "intel,xscale-uart";
 			reg = <0x0 0xf0612000 0x0 0x100>;
-- 
2.45.2


