Return-Path: <devicetree+bounces-169550-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 90CBAA974CC
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 20:53:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9077F189AED8
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 18:53:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 57A8229AB16;
	Tue, 22 Apr 2025 18:52:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="OYAQ/QPR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EAB98298CDF
	for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 18:52:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745347936; cv=none; b=nvzzYnd1JCbJwUtwei30vsfm2Y0A3YRpsGFic15Fq08uLpEas5KZHIB1JCgtLRzmGIms2XJIxrvjffk/6Y8vMUUCib8zXJNi5LBQf8bEi5nh3aLpTZ/O5icrVGpEJ9nuNgeIbex6rx9RUQ2dyw9f83SKkpNdbrknaJ+/BKFOHQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745347936; c=relaxed/simple;
	bh=4UuDq6ua8nbqeX181InX6ImqDlH4wlcFW4NHgXndXWk=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=avtXKBlupguxuQhAREVWmyNrjAwbwN2SY89S61Ns5UQEQNjmfKhb6Y/cqBlUBSudhTvmiEaLacnh/Emxb+IPRvA3Cx9VZc16lYau/3+3sytUHB/HBL+OsLXDfUCYFYCkkd4CTAxdZXeB3B60pgX6HtDYJ9beMnqaMHSjWuuVn3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=OYAQ/QPR; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-43cf58eea0fso26981185e9.0
        for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 11:52:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1745347931; x=1745952731; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=vicY9L19iJtQaI2QNF37hlfrrbiq8Z/BEy6LDnCcWlY=;
        b=OYAQ/QPRvUcIMS+LlVcnn/giGSzz48dlKJ4ZVlyW2EZDWv9iJsHvCnmyiKsQy1Ux2+
         gg2ah3GruJbEH+8Gb2NhDnvde+QdyXaH3VBlYlqtKxS+7cZL4NvMtFrNYHzJB6yQaeOq
         K7py+2H+DT+W5nS5KUtMAqsniAd0lL1rrJx5EoRO+XCGcybu4i0HFac/m7lt1QNR0Cci
         HJ+DAK4SEjU2I2w9k9pR+iU0ye7yCfjtdh42FFKycHbCK7hRkCB5mFzg3bS9yM0pVY1y
         X5Zlicd4Zn5Ud9y2/bCGVToMiOE9VHCiRAUtDX2mmYGAElXbLk0g0nAPNkUEHtp9una4
         2n2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745347931; x=1745952731;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vicY9L19iJtQaI2QNF37hlfrrbiq8Z/BEy6LDnCcWlY=;
        b=uj8zT5RIE7UIV3y1FsG85bA/OTFXlbH+jSxPeCP8MqgkQe303b14CJHL1b8GEjHMQ2
         FICx1NkqSU44ILbKoJPEqQUij+sFMyi1b3IJJlTJyb4lEwWryQg1nmyrp0w3AzI2W/dz
         Rru1US2qi9I0t++wwptnV+M5Mfdr34VNNAzWBXvn6rMe2cccBl4M68U0B2ahqKRBdIZ0
         cxNyKdbBX7WXdO0FNqRKc7JHtdB80VidaRsi8aYJezYZQlhWZhGox6l8oTKHM3zWdT7O
         TwJZLefdjSrP8CV3yEmRHgT4KtjiQbr8QZdB/k0HWG/mDXy/XpIwltNe5BRsLYK8YCll
         8aMw==
X-Forwarded-Encrypted: i=1; AJvYcCV2w1Sd5N6XVPqcYRDkgBZJLp9JyydQDDTEi4sADavEG3rxo01od2UiVPn3Dll/siznp1tL7BOzLiqZ@vger.kernel.org
X-Gm-Message-State: AOJu0Yz8YZTPB7c4yKnEPpJuXPLAsMbZ8rIcBxsUF0q0J5geF2XSEKjn
	gzeTL/8H5oQajvHnwh8jhJ6mFj5sQgDr3yS6oo/Xi998NBkE/xVpgG3QaJ0m7nU=
X-Gm-Gg: ASbGnctrkyjBgdC186SPi0QIVl4Myh+bMDnNCHOQSanrC8OHKvqtH+VWnPNrIDInVze
	HbKsChJI2aH4prJcj2RhYXVhhpzcQQB+1ac1dIGgMOhshPqVxiy1DctC3MI8iMq/jMTCdRN247n
	qQt4WTYGmzb8QnQb+hzp39kAWpRxzRc3iiRqXK7RyisO54EH2Su7sjENJ8rNHoYol+anOhZwAtJ
	/igls19e/Iijrm21s9I7Hs3fpGsYHjxuASNsf+czDOSFpZigyRI+dX9pfpgUtj3MB16ldcNBF+w
	HCJbaJ2S2/sedXZx7cGNTA7KbozpwOr6cK1X2r5Ozs7VtpZXHcpEtmaTpTbj1OANo88j5NA=
X-Google-Smtp-Source: AGHT+IG0zP44yiBEiM6Mgs05Kqo6u8c7BaNE+GEuZ+mESJXY73ChZjIdgSppFK2ryjzO5qAlx8Pdsg==
X-Received: by 2002:a05:6000:ac3:b0:39f:efb:c2f6 with SMTP id ffacd0b85a97d-39f0efbc32emr3882747f8f.33.1745347931291;
        Tue, 22 Apr 2025 11:52:11 -0700 (PDT)
Received: from localhost (93-44-188-26.ip98.fastwebnet.it. [93.44.188.26])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39efa4207d0sm16336036f8f.11.2025.04.22.11.52.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Apr 2025 11:52:10 -0700 (PDT)
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
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-pci@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	Masahiro Yamada <masahiroy@kernel.org>,
	Stefan Wahren <wahrenst@gmx.net>,
	Herve Codina <herve.codina@bootlin.com>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
	Andrew Lunn <andrew@lunn.ch>,
	Phil Elwell <phil@raspberrypi.com>,
	Dave Stevenson <dave.stevenson@raspberrypi.com>,
	kernel-list@raspberrypi.com,
	Matthias Brugger <mbrugger@suse.com>
Subject: [PATCH v9 -next 08/12] arm64: dts: bcm2712: Add external clock for RP1 chipset on Rpi5
Date: Tue, 22 Apr 2025 20:53:17 +0200
Message-ID: <38514415df9c174be49e72b88410d56c8de586c5.1745347417.git.andrea.porta@suse.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <cover.1745347417.git.andrea.porta@suse.com>
References: <cover.1745347417.git.andrea.porta@suse.com>
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
Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
---
 arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts
index 34470e3d7171..6ea3c102e0d6 100644
--- a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts
+++ b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts
@@ -16,6 +16,13 @@ chosen: chosen {
 		stdout-path = "serial10:115200n8";
 	};
 
+	clk_rp1_xosc: clock-50000000 {
+		compatible = "fixed-clock";
+		#clock-cells = <0>;
+		clock-output-names = "rp1-xosc";
+		clock-frequency = <50000000>;
+	};
+
 	/* Will be filled by the bootloader */
 	memory@0 {
 		device_type = "memory";
-- 
2.35.3


