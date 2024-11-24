Return-Path: <devicetree+bounces-123982-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 50FB89D6DEE
	for <lists+devicetree@lfdr.de>; Sun, 24 Nov 2024 11:53:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id CD057B21623
	for <lists+devicetree@lfdr.de>; Sun, 24 Nov 2024 10:53:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 373D2193073;
	Sun, 24 Nov 2024 10:51:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="cfKgL7pK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f41.google.com (mail-ed1-f41.google.com [209.85.208.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C4BB1917D4
	for <devicetree@vger.kernel.org>; Sun, 24 Nov 2024 10:51:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732445497; cv=none; b=GvZeI0q/aZPZ7tKOZDMs4LAfut12atN+GiMRnilgOgIaFKl86qFpw1Whg9OgemkEFqfnoqcXMVcD/l+RUA89nh/PFo9OIWH5YXvK2l2g1jUft/4mZdMTvpCJqZCbqvJvc2KKIMyldkqZ3Rmj38hiXBnFb1wMd0v55yTfW8HSsCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732445497; c=relaxed/simple;
	bh=klAcgY34GqH/PvyTJL1b7HVfq12XCJbjYpuQRIMPiP8=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=STQdG2QoCWGz5nstJKPpqEqGTTJiVkRVe2ZcNEc952IUWYsg9GSFhd+E+9qZvL0XXoUtX9TYK7vyB81UjDEspxPaZZn2h/GlOFJfNBxRWCkqdYdGBPiSUo8J75GSNRwZN8ANlsYaigAm1sQiOjHc0lafLD5i38AlOiBH+NNDqi0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=cfKgL7pK; arc=none smtp.client-ip=209.85.208.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ed1-f41.google.com with SMTP id 4fb4d7f45d1cf-5cfbeed072dso4417408a12.3
        for <devicetree@vger.kernel.org>; Sun, 24 Nov 2024 02:51:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1732445492; x=1733050292; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jfS2J6Orsal5tO8fun4tykDcHfrxbNiOzjaiamwU+4g=;
        b=cfKgL7pKq/TaeQyUHQzJgNkjjkSa3R0EUFaYbgm/qmryupMcUw5dH6jJ/vj8rODL3B
         uQEJIzOaq6SNFluln4Ejcw3YuFdTFBxLGgczCxLsM5cm2Qi165T52gS022DqfT3CsjsF
         wh3O3q4XgxLKlOvOi2ze/GRal/PL4IPRRVxjb37ucOg8ywRn6/5y4dMRk7p9OYfR+SWR
         hg9Z4Zn5OQ+tDrcsU1o+vFEdyHx0OJG9u3XLUVBt2pnKL5/UiAPWgTh5S5bb/n8DLeoW
         Rg8/NaOULEhJwz2DAuMKzzi8Oj9icCkcYF5tDmOqVMlowMalDpg936TZbHbeSAGGxYSO
         mnVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1732445492; x=1733050292;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jfS2J6Orsal5tO8fun4tykDcHfrxbNiOzjaiamwU+4g=;
        b=cd7MXp6Np8Y1N8aJZ0JlidADm4WU3CdnUfThIkdmFz77RF0sqUZjHxhWk4UY+Zp1Rs
         9fYxXsE2JSjEUpD9oXSxmzSI6i810ZC0MZR2RPbp4JN4HpS/QU/l0mgHdNTzUR8x6Y1B
         IcBmMCGTqs1sP0LDF9FaDowWDGAfiHn58UahEibHB3AhM38Cggeu8otOy6j55KOy8tR3
         Tu1YIPYg/cqpOTFSK3ixh0un4HdQdbBJvvPlzyeWNSFCI968vC9ETOQFfHlPpORJmUaH
         dI++a0AbYqNbEr2PENEfzCUZTLxslva6xF8fGRXrD/dwwAAHsWJZMxHDRwtYGpHVsJsn
         D4Zw==
X-Forwarded-Encrypted: i=1; AJvYcCUdIjZXi8uhdoMxAzoZYxIUWqotVHk1bWsierdlsT/syP1S7NfGyfrVO/fx1CJKZqH/gsF2uxX6vXf3@vger.kernel.org
X-Gm-Message-State: AOJu0YznM1tIbs6R0lCnHeV0PsGknq56XHry1B1mvfUoJ//3/buePUrj
	sI5veJPPCfn4SScu9gFASGhCoES3mnvYvDxRuE5G+Qa9c2YG6wqcEkuQKtyMV4g=
X-Gm-Gg: ASbGncs1HJh5nUJ+gIMuxTpxVcjcCxgI4EIHu7NBvnfA1LZIcqjyRz8mZggxchInQ8t
	AIXeHwCvJGW7nBgGKEAneF0fV62JyfhK2+Yn/xJT9hw8nrqeiNdjY5jkINNz6+E458fAeO2llYZ
	8j4K5ioBdeQlNKFryJMg8rXrRjk/gGkaJ4IFk+Knj7bTrOt4Q/rR62PgfhgHhmqt0iAbjsE67GY
	l15RQKElFc0CBphFG6EzgI4baCkH5UKU/L5yMGQNzgJBFJBYruSeHhvQcJdO2KjL8LNpgMTkl8J
	9Jeot5JanQD2u2m+1iXv
X-Google-Smtp-Source: AGHT+IGSDpSzkP9o4gSgW32myd8F9uUlg7N3TWy1+co5rBtWhujU/hEjf312CRmk2+jz+0sdWz9GeQ==
X-Received: by 2002:a17:907:7758:b0:aa5:3591:420f with SMTP id a640c23a62f3a-aa5359144f5mr387240666b.16.1732445492516;
        Sun, 24 Nov 2024 02:51:32 -0800 (PST)
Received: from localhost (host-79-49-220-127.retail.telecomitalia.it. [79.49.220.127])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aa53d1e1279sm129418466b.162.2024.11.24.02.51.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 24 Nov 2024 02:51:32 -0800 (PST)
From: Andrea della Porta <andrea.porta@suse.com>
To: Andrea della Porta <andrea.porta@suse.com>,
	Michael Turquette <mturquette@baylibre.com>,
	Stephen Boyd <sboyd@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>,
	Lorenzo Pieralisi <lpieralisi@kernel.org>,
	Krzysztof Wilczynski <kw@linux.com>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Linus Walleij <linus.walleij@linaro.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	Will Deacon <will@kernel.org>,
	Bartosz Golaszewski <brgl@bgdev.pl>,
	Derek Kiernan <derek.kiernan@amd.com>,
	Dragan Cvetic <dragan.cvetic@amd.com>,
	Arnd Bergmann <arnd@arndb.de>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Saravana Kannan <saravanak@google.com>,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-rpi-kernel@lists.infradead.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	Masahiro Yamada <masahiroy@kernel.org>,
	Stefan Wahren <wahrenst@gmx.net>,
	Herve Codina <herve.codina@bootlin.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Andrew Lunn <andrew@lunn.ch>
Subject: [PATCH v4 09/10] arm64: dts: bcm2712: Add external clock for RP1 chipset on Rpi5
Date: Sun, 24 Nov 2024 11:51:46 +0100
Message-ID: <8deccbd7ab8915957342a097410473445987b044.1732444746.git.andrea.porta@suse.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <cover.1732444746.git.andrea.porta@suse.com>
References: <cover.1732444746.git.andrea.porta@suse.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The RP1 found on Raspberry Pi 5 board needs an external crystal at 50MHz.
Add clk_rp1_xosc node to provide that.

Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
---
 arch/arm64/boot/dts/broadcom/bcm2712.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/broadcom/bcm2712.dtsi b/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
index 6e5a984c1d4e..b00261992b71 100644
--- a/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
+++ b/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
@@ -38,6 +38,13 @@ clk_emmc2: clk-emmc2 {
 			clock-frequency = <200000000>;
 			clock-output-names = "emmc2-clock";
 		};
+
+		clk_rp1_xosc: clock-50000000 {
+			compatible = "fixed-clock";
+			#clock-cells = <0>;
+			clock-output-names = "rp1-xosc";
+			clock-frequency = <50000000>;
+		};
 	};
 
 	cpus: cpus {
-- 
2.35.3


