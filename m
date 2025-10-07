Return-Path: <devicetree+bounces-224118-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F0A18BC0C7B
	for <lists+devicetree@lfdr.de>; Tue, 07 Oct 2025 10:50:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A46293AACFE
	for <lists+devicetree@lfdr.de>; Tue,  7 Oct 2025 08:50:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27E422D47F5;
	Tue,  7 Oct 2025 08:50:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b="Gn1bR3mQ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 646EFEACD
	for <devicetree@vger.kernel.org>; Tue,  7 Oct 2025 08:50:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759827049; cv=none; b=Iq59koxcgBcnGTY/+mDcH4J8frdPsKOF834Is3awF7z4Of+/HApPKaXkOU33lK4ROAwIuDZ5SCkHrhcIapXwP4CbbzoNNmtrevdcLFg7xOPIUGtuTkSmjaIP+H4g2ytDaBsFqr4Pb7kEGs5X4FQPISm7U7/Ah0GnSgHmw6KupZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759827049; c=relaxed/simple;
	bh=lFQQD1kfwmUI6v7i/ui2xsw2z6+nFOrNxxiZr8pKY5o=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=guFhm4SHXD93ELTouHjLixaUvF4BTz/+VDWe4YQspBoapr7S5h+eJGDZ4/wLFyOdjbkFGHpVgkynoo1kM7tQWIWs2EYlZtQvFF0sFP9Ak6DZkiUnKtDL3/9WiG1yZTJtkG/oF+MiOWhwpmQ0obT4wh0qYIafsVscVNYHQGrdzek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com; spf=pass smtp.mailfrom=googlemail.com; dkim=pass (2048-bit key) header.d=googlemail.com header.i=@googlemail.com header.b=Gn1bR3mQ; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=googlemail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=googlemail.com
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-b4f323cf89bso159817266b.2
        for <devicetree@vger.kernel.org>; Tue, 07 Oct 2025 01:50:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=googlemail.com; s=20230601; t=1759827045; x=1760431845; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=9RR0C/JB1d7ykj+jJFgkQc/kXwCszluvkRpWmLXUJs8=;
        b=Gn1bR3mQy9eUlIj+VzHszpb1YkD6usAjNuhC9P7AfkOMARVIw+EuthV5IIY53WIqdA
         hQBxDsBnwiuZSn5dHuwrkmWckGzHmbIf/2K8ucSHEgrjbVMlW1ebD1BG4H83+EWoKwBg
         AzXlTCCCqgL3k9TWdJKXQEe0ElG0gdGcqzMXAKP1DWPzILKplnbwsqw2XS8UqfXVwRJ0
         dKFyZCcp6gz+ANa3qhZ5IDftAQcqXfWFoYsRTdsQSoQmov+Pi7BuYdVP/uLSTy2vDTv7
         qv9YeOdwSVL/SbBSCMon9Dg2iU4IZcdQ/jzqXJTYWd9jQH6GW6Kud14ivevbpn9LuMQX
         wcHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1759827045; x=1760431845;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9RR0C/JB1d7ykj+jJFgkQc/kXwCszluvkRpWmLXUJs8=;
        b=Ft5Gb5CS/iXzhEQjSK4J92aNVbNSRLKoSUpBsqHcHuRA6MkVNZxaUn9/oZgTitfRS3
         jaDhy4dry/Q3KDMEtjPpdpb80V4vwahdDFXBXIpEbA3qGTpyUOFwT/KR/x0j2o45bqfC
         VCdk/3zWayo9jjidG6reYP8SCqnoj2629NLmnf4y7DcLbptmkVGIUSemr/SbKAkKheih
         8VckYlkQprF/1f+RwFUTd7Xd9hnr50bSD7IF08BHZdi6PLbvHZe0fEb1HwYZCLoW1hVa
         w6rZTZ10E9wCgGBaPhSRE8qYN2ynNcoANQYEpu6+qaBluQmX/ZBQweV3bHjGaF7s+SSd
         YDJA==
X-Gm-Message-State: AOJu0YyuXvUseqLvuWDtxmsV/D2iO3FJdBwmZDITGj+ONE707BaigDx2
	lXAbmeYj/tolnCIQSUr1vCm/pTVFb6y/Y/17SkjRLMHNi5X74o7TovidIhjhMg==
X-Gm-Gg: ASbGncs1DRgjWZCSowCZUvsXXwFXXf4Zvob/MhwL2aaYTdPgbDr6h1oNjD+CYebSSX4
	k7LM8y6568lM26OB2g3TdsVEE+1nKfeVoa+dU1xyEP8/OeUXXK2cRnnaxbsfGf6KCEKB/Cx1MNN
	9XDO3vh534m3sq9RR1BEUtOMOjP40GDYSKCdjzkZu436oCoG3cW1OFYZG5F2vXfLGcb20B6M5Gx
	+u3NBpts7kd3AqXrmSXwltSzBmPRSnMo0JdfisXzRel2KaX2pLBhwoW99LVORIcTBvk0oJ9dTVN
	nwmPNUd3hCMBBWUa1v5P9bXF/hj/DzFwPuRSocDVhz95gj48kkWS8+bNstvpKQA0quXqGhrnlFd
	fmaA3P3lIm+oEaNnslwPOJHxbUv8YpbKe8v66XYJ0Tg2rveKUvVwJyAILVnMj2JChxKrPJp2rMi
	6s/bWTp34EvvAe4uVb033Yy0fsgiM=
X-Google-Smtp-Source: AGHT+IE5I6pAehl64dLI+tk+cDMSA/nXs9NV/Qr4tTYFn4D1sGRgfc5sdTa3WnU/2IhzWgfZzzbt9w==
X-Received: by 2002:a17:907:3ccc:b0:b3d:c42d:6655 with SMTP id a640c23a62f3a-b49c429b4b2mr2133994966b.54.1759827045051;
        Tue, 07 Oct 2025 01:50:45 -0700 (PDT)
Received: from development2.visionsystems.local (mail.visionsystems.de. [213.209.99.202])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b4869b4e49esm1339090966b.72.2025.10.07.01.50.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Oct 2025 01:50:44 -0700 (PDT)
From: yegorslists@googlemail.com
To: devicetree@vger.kernel.org
Cc: linux-omap@vger.kernel.org,
	tony@atomide.com,
	robh@kernel.org,
	Yegor Yefremov <yegorslists@googlemail.com>
Subject: [PATCH] ARM: dts: ti: omap: am335x-baltos: add a regulator for the mPCIe slot
Date: Tue,  7 Oct 2025 10:50:37 +0200
Message-Id: <20251007085037.3605676-1-yegorslists@googlemail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Yegor Yefremov <yegorslists@googlemail.com>

Baltos device provide a mPCIe slot that can be power cycled via a GPIO.

Add a userspace consumer mpcie-power-switch that references a fixed
regulator attached to the GPIO3_4.

Signed-off-by: Yegor Yefremov <yegorslists@googlemail.com>
---
 arch/arm/boot/dts/ti/omap/am335x-baltos.dtsi | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm/boot/dts/ti/omap/am335x-baltos.dtsi b/arch/arm/boot/dts/ti/omap/am335x-baltos.dtsi
index ea47f9960c35..afb38f023b83 100644
--- a/arch/arm/boot/dts/ti/omap/am335x-baltos.dtsi
+++ b/arch/arm/boot/dts/ti/omap/am335x-baltos.dtsi
@@ -45,6 +45,23 @@ wl12xx_vmmc: fixedregulator2 {
 		startup-delay-us = <70000>;
 		enable-active-high;
 	};
+
+	mpcie_regulator: mpcie-regulator {
+		compatible = "regulator-fixed";
+		regulator-name = "mpcie-regulator";
+		regulator-min-microvolt = <3300000>;
+		regulator-max-microvolt = <3300000>;
+		gpio = <&gpio3 4 0>;
+		enable-active-high;
+		regulator-boot-on;
+	};
+
+	mpcie_power_switch: mpcie-power-switch {
+		compatible = "regulator-output";
+		regulator-name = "mpcie-power-switch";
+		regulator-supplies = "vcc";
+		vout-supply = <&mpcie_regulator>;
+	};
 };
 
 &am33xx_pinmux {
-- 
2.34.1


