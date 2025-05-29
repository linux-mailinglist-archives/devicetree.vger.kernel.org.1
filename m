Return-Path: <devicetree+bounces-181543-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2EFC5AC7DF4
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 14:44:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3F58BA4117B
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 12:43:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1641D22A4C2;
	Thu, 29 May 2025 12:42:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="IXoLPF06"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f51.google.com (mail-ed1-f51.google.com [209.85.208.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D38222A4CA
	for <devicetree@vger.kernel.org>; Thu, 29 May 2025 12:42:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748522565; cv=none; b=YkULuaVJn38NkJE70DDfilArQkUAhnRtusFwcQD4drJlXxHQVmaYFvOue5oEZVDknnv8e5cSllqAwCdmbPH1JedoNWiL6I5ScdBx5aW4/jC4KxWGnRJ0FTyHqAIIWtrlP4sWc7B0aGjWH8l9VANwxm1pcMPjglAwDMNfKhDMaZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748522565; c=relaxed/simple;
	bh=VtQ1ljfmYtyXEA61aEiaZEeKdDz/H5SMisehIOwJ9No=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=G9/eNqz1ECTmYc7vmp40p2HzsAXX/riMqUBX+vyBt+55fiJWW0kCyAdylbOl+urTgaHzsIy9cisNie0pEaw2SNCKeVN7S9NwdSfaLZ0Xmg/iR40OCS2aTYQzkJhOspF3PWIyXpK0sR+L/r2AJmU3KNiWqG/Id4oiHirhcAx+fnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=IXoLPF06; arc=none smtp.client-ip=209.85.208.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ed1-f51.google.com with SMTP id 4fb4d7f45d1cf-604f26055c6so3611323a12.1
        for <devicetree@vger.kernel.org>; Thu, 29 May 2025 05:42:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1748522560; x=1749127360; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rB9s9VPJvR605hRqbfbYWWEdTsjP5s3VD85/JJVm1e8=;
        b=IXoLPF06Wtm1mnRmNiZ2E7CTph3qpAYt7GTealiijdfLvygXpdrTf3j3tDZSy4ncJV
         ZPmWXCGat8spdaQNQIaGo28iw6s3YuryGuJVrtdxX9mlaso24PPiXVWjCourLn91X157
         FuAe/c7HV2CAkB/AxNNYyGDl7TUJspRTw34oWtXaceEW5EJfqrj8l6STbcq0mQHH8cub
         BY3H4G84Y8wtnO1qXZdhfeXkp7TCFjUrQtH/LircMTpoI610A4GGz1y9tu5kRzg3y76l
         vX9A/AL87HwNk7R1vmdH1A2NMmwi1t2B00u2N66qGsLOI8cjn0x+ztXknwyLOEuU0EET
         99bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748522560; x=1749127360;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rB9s9VPJvR605hRqbfbYWWEdTsjP5s3VD85/JJVm1e8=;
        b=V9N9oXN2SDIMDipfG+YYx0hCzLpXCV5a8QZsOS90nOCMRrlsDdolK4w4bwpzJBSbwt
         3QIxo9SuLvEPu00VGsWvOTAycj5iLfSC2cbcp11wR0gAli5Iat4GQ3wYfFLrBRHnlUiR
         NDU22UyD19mZd+GWF4iQxRe+UsS6wKLSqEsAUML8Pt6CX7I56EOE7QdgiGBrkQRvqfau
         /IKTc6+aQG9C2hg6IjEWQsrEPW2XAyxjXnYu+JOnZ9LAghn3yB+qO7qrGvJSwBN/xhlU
         6eOxrxwBBljaj9PQKsVRCNN2ToqYD/r61GqeRSVUnDUGc/Qif6L0TRHVFeAuOYk1PPjG
         ALsA==
X-Forwarded-Encrypted: i=1; AJvYcCXmsoWI93voQcn7qeIT7DpSfrmQBGOI3QuRZVOUxqJUG922B+suEKQazwBfWPDyVPtIvt9EkU6jWLDS@vger.kernel.org
X-Gm-Message-State: AOJu0Ywnts+bdwnCPqezoIeB7A8VE/03MJFbqbN0nwCTEmH1peWm/dRO
	a1+YmiKlojn7Uiiq357kGqdpSS6hP1BoAqCpfrfALVkyRCCQJmp/MHt66vUzueehqvE=
X-Gm-Gg: ASbGnctT3sHhmXkPw9Iu+JC9/segFYZtcr8XkeuSX7levn9hMh9EvGJCK5eJmf+U74V
	7KVyjj5SRQX1CgkOfA3jEwg6TLrdxbjuPigPw+PyuiDQjHFV+h3R9Q6r/0K/Mvzut71aaFWLQD5
	oluHydnz3h5+4K6Cz1O+y6U50i4euQu64p0lvvEDS1zL/ZUBc4kAE4qGCLK0NO39zGoNk7AUpCN
	KtPuZIViWorCCOtFFUD4w1vCziO/+92u29fUaj0VGl0Ws01/hmvE8eQnJU8GBpV5NJ3OBH2UKlB
	2GUcKU3PsMSbDASsQP6VcZNWV211Z7u3FX6iraufbdfeeEBlALEWiitbmXHEJRD70PZd+q+LjtU
	fgieR7ajXOuPW3TYGjkYDTty0mmlfmeDq
X-Google-Smtp-Source: AGHT+IGmBWL+ssQiDerV1S1/XxydSfAjqd0NvxPIChK+RKZPzFhr3ejbEm+LE6gwooRX73fUz2rmnA==
X-Received: by 2002:a17:907:3d88:b0:ad2:27b1:7214 with SMTP id a640c23a62f3a-ad8b0e63c34mr325370166b.17.1748522559741;
        Thu, 29 May 2025 05:42:39 -0700 (PDT)
Received: from localhost (host-87-21-228-106.retail.telecomitalia.it. [87.21.228.106])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ada5d7fecebsm138373466b.1.2025.05.29.05.42.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 May 2025 05:42:39 -0700 (PDT)
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
Subject: [PATCH v11 08/13] arm64: dts: bcm2712: Add external clock for RP1 chipset on Rpi5
Date: Thu, 29 May 2025 14:43:57 +0200
Message-ID: <20250529124412.26311-3-andrea.porta@suse.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <cover.1748522349.git.andrea.porta@suse.com>
References: <cover.1748522349.git.andrea.porta@suse.com>
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
index fbc56309660f..1850a575e708 100644
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


