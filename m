Return-Path: <devicetree+bounces-75659-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 0EBAA90847E
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2024 09:21:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B61B11F2672F
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2024 07:21:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D089B186E32;
	Fri, 14 Jun 2024 07:20:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="Hj+u9Qk4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f169.google.com (mail-lj1-f169.google.com [209.85.208.169])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0903018629D
	for <devicetree@vger.kernel.org>; Fri, 14 Jun 2024 07:20:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.169
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718349613; cv=none; b=I7k5cZcpD68VIFPQj9GSJQn3gD3/XeM3vu7aervpzyLtVeTyzSG71rsHoLloAcTvAMsLJUGLXSrJHrj7o0IASan74uP9VliAAPE70trT/rnu8b0DarqVx2xb0tgtW+s0DQoEAV+4RhMKUknPrpiUlrWvdkEteyQqYFDil7G/ZGA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718349613; c=relaxed/simple;
	bh=WxPcHurChmw0yqzyxT4eGa4UbxW9uYeLkSLtkg3itsU=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=HlgsxT6tGbYDqw54pwsp1WkI6e/fbC+tw7eobL1HgrixB4l4GB/yrUra3e+S/DHHT2PQc0F+A6usTMYoPEmBi2XWZZmCnn8YYxL2ecaYUcMf9hhfM/qcJf+AKtrxvtFvrBVvnotASw2R34x/zKtr/OjkdlfjzNGpVWfsNiwXH64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=Hj+u9Qk4; arc=none smtp.client-ip=209.85.208.169
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-lj1-f169.google.com with SMTP id 38308e7fff4ca-2ebe0a81dc8so19659901fa.2
        for <devicetree@vger.kernel.org>; Fri, 14 Jun 2024 00:20:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1718349610; x=1718954410; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=QbQrIqY2eU2jnbuMgO8MBbRBaF6tXHcA5GNB0e2E/Yg=;
        b=Hj+u9Qk4dIXVc2EnYnVaNF9Nx68lnhNiP9+tgkzb6YCL442h0KlXtkaZwRyVTQ4UXS
         dSg74BakUIXXZZYC4j3AJAqdinTyOB6jkw1bYaypS8Dh5ybiinSneL8NFZ7HWuBbNahs
         Y3yc/l1nZQ68ZKjgAi3GxfpH5qr9/hT3EwXjF3gZqAxF3yMljGEjwF9n2DDa1K1pG9kV
         aOWglLSg5VixzZDdKskQyLep8THmWQwm+XcV71ewB7dQS1Lyewk2tBAAnr5o/GbNlBpj
         0p+sEGlQ6i0wt1oglbAg9oHaVNKOn3Md3PJPsYULk7I4+7IZ+yIWnJ6CjLpzb8sK4J4d
         q6Ug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718349610; x=1718954410;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=QbQrIqY2eU2jnbuMgO8MBbRBaF6tXHcA5GNB0e2E/Yg=;
        b=syjqREAVDdMde7o0dVL3rxD9JJI/hr5Qc23IXskG4PwIHqd7QiB3ksvvrL6hWNwY1I
         jjTHytdRwc5k254Fa3beWFs74dIqo2WQwvp3q3M82CF78KGe3uSboW792jj17cj2cSPs
         X3/dqHpO+3ke2HSx6cNd4I8NSJIH5CJZPFZZSJZ2zE1hTXwVCWuy8GYYI2EAJE0+1oxl
         rVee7LtWmxhq64yIiDl28s4TAKf9+1ZepaZy6B+5ddIsx6WZouefgZahtvoV7ADOZb3r
         EpY8vGcxiP5JWnvXVD36gHvJ6R5sUFXpg1lFm1qavaij9KuqLxZAYBDAJELBuld8X2zl
         epIQ==
X-Forwarded-Encrypted: i=1; AJvYcCXnktvtAtORANBegnVLzAneCXu78YVqXOC4Gji6de6YttH57dy1mMGZNDUb04XLdD/YJs2NMDv1ZrHLNrNMuZ+/rrULinJolFAeyQ==
X-Gm-Message-State: AOJu0YzESE3yD1u64eZRiqc/WqPbt9wZLUicDNEaIngrtmWCC/c3EGi9
	x+V0P5pl27d95+bWp6OPAbc+Z638TuxA2cIFVEsSdMdTe5tOF/KFf9tGGeRPV6Y=
X-Google-Smtp-Source: AGHT+IFZZkLDeJzXHvlYCemJLbFCg9wPwBeMniUyHJS2jzufU48y7tXw4OjUh61TsSRxd6/LsiaPGg==
X-Received: by 2002:a2e:808c:0:b0:2eb:df11:ca0b with SMTP id 38308e7fff4ca-2ec0e5c6bf3mr16572681fa.14.1718349610351;
        Fri, 14 Jun 2024 00:20:10 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.189])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42286eef9eesm87272555e9.9.2024.06.14.00.20.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jun 2024 00:20:09 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	lee@kernel.org,
	alexandre.belloni@bootlin.com,
	magnus.damm@gmail.com
Cc: linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rtc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 09/12] arm64: dts: renesas: rzg3s-smarc-som: Enable VBATTB clock
Date: Fri, 14 Jun 2024 10:19:29 +0300
Message-Id: <20240614071932.1014067-10-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240614071932.1014067-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240614071932.1014067-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Enable the VBATTB clock controller.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi | 13 +++++++++++++
 1 file changed, 13 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi b/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
index 8a3d302f1535..517ce275916a 100644
--- a/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
+++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
@@ -341,6 +341,19 @@ mux {
 	};
 };
 
+&vbattb_xtal {
+	clock-frequency = <32768>;
+};
+
+&vbattb {
+	status = "okay";
+};
+
+&vbattclk {
+	renesas,vbattb-load-nanofarads = <12500>;
+	status = "okay";
+};
+
 &wdt0 {
 	timeout-sec = <60>;
 	status = "okay";
-- 
2.39.2


