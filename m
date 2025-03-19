Return-Path: <devicetree+bounces-159112-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C3CE9A69B7E
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 22:54:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 34BF5980FE7
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 21:53:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DCD7F22155E;
	Wed, 19 Mar 2025 21:51:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="BCBLDxTS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f47.google.com (mail-ej1-f47.google.com [209.85.218.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0831214A88
	for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 21:51:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742421103; cv=none; b=S1iHivbgxehW6wL/vxCnEXkwgNho+P6bDp7f8BGbaHDAeHtmgamdh4u9+YjEFzoW0hmz8j13FrW+bqPaJjR9KSbTagXAes4+GxgSb4wTWmjNII9gfWI0YZsSDWhIPTkscKG801lolW9cdQKqZGSrgi61q9VFUrSA85Y+gxF9O/M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742421103; c=relaxed/simple;
	bh=VtQ1ljfmYtyXEA61aEiaZEeKdDz/H5SMisehIOwJ9No=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=jcn3S2gNa5W0n/s2ch8qBaODmqeFzaBe6ynAFmP+6b/h5B2Zv2mjOgPhM8nJrE7BKWTb4/ySIgtRPSd1masVj76KQ8crrHc69R0OyHWJO4tEUE9NNxqhXDCdTNNUjByxwYUCEI17xAHi/ZtzB+XQay7CSS0gFvJJoUgS9MN52kc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=BCBLDxTS; arc=none smtp.client-ip=209.85.218.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f47.google.com with SMTP id a640c23a62f3a-aaee2c5ee6eso28288666b.1
        for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 14:51:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1742421098; x=1743025898; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rB9s9VPJvR605hRqbfbYWWEdTsjP5s3VD85/JJVm1e8=;
        b=BCBLDxTSCQT4MxWH2kbXJnfyq6M7A65z9TGlIyVlrP8ebPzdIzyFe8K8N/p8gWMTOE
         sXDt0mdr0+wB3B6u4ZR4NAUPVF94C5D/7UNGstLrZfA4YEZVQ4cPxciITIZdUqTRju6r
         iIRrzAhT0zE5BPt7PVVIpPiobTuwn4ho+ybGoBeEJ5ghO05+5VoxDxRxYHsKlJ6FTBJg
         S8LtDc4SoATPzBxYCn9N0/vOqdPx0KKkmjeqF9Iv7H1BTM6LgOx4zTzpOrntnQqYseKg
         1ETxAPB/5yEYo+Z6uXwS2QvMmmzgAvd7940+BO8Twu3ajlC/A/bA3CHvH9R4/fSFjlk+
         SGMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742421098; x=1743025898;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rB9s9VPJvR605hRqbfbYWWEdTsjP5s3VD85/JJVm1e8=;
        b=tCwNrL5rhKW4DaZoQoI7GkMGAorILOkIRPJ3ISCNucF9BERbgaHH/Y/cGscF4Dj5xF
         zAGNJM66OL7/RxtWY8M5R1joYuVxt9cmsWzsRO9X2WL4j38CJhmWIDtWJn6F+AfoLqJu
         3Ll4JrCwXjbSZN6ltSZoDEQ4FTg94k/TiFkpjKruTOeSp0vKXoKUfrW4VPfHtKCgVCgD
         tkbs4lyUQ248hZzwYCE7xe0WwJrw9sYLkIbAwZIHE2opMzSVk0wsv9jc3YjZibNKtLw9
         uAfk3I2SK5/c4aZSc83sAqfKYbPNWHb3xaMI61EX+8Tlm4tS8aBqmd1grvKjBC53A2ac
         e/Ww==
X-Forwarded-Encrypted: i=1; AJvYcCUnWhosF7+fxZCCKWDg9y0r9++r9MVM4Rze//Z7nPUU1EwOe8y1kOw0zOjUtUha9cX1ssxc7ojf4pDo@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3ftd5tvayM2R0WePl3v7v6wN0NPfQ9nP9FIAHFK+OXDdzAgvo
	MMKo8+t4vGYiGp+vS59WjntASK9Tr/PyziJSDvPEaCR3hMR8KsZDBcwKDFdRsM4=
X-Gm-Gg: ASbGncvk7VXhOo8vWm3bHYF7k3Ix57TS+zFVOQ04hd25x5UP+FDB+nMV/hl5AIBG7Dq
	+3n8W5786QlSXiX7usukXmfOYATKpbF/IEegWlr5ldHsJdWdZ/DpxTbooNL1KNWnOXK6DGhQaLp
	xHao6ZFiM0b2AaVC7mMPdJBHJNDsxv49HlOpJy6HDOrV/5UN95SswoA/Xuv0qqMul5oc1va1QK9
	rrXXVCFMYWfts7254U/WZO3a8TKfc2HN+Sfs/M2EebJ7TSSIST5ihG747bqw/QEfwXUI8+u/opJ
	f84hm0vvgfDzOjL/P+IXLZtMPka5icjqp8h3xO4IT2LtNqWCKGAzkWg9ppiI48I8gntLXG0aReq
	LQlaQumxZwQ==
X-Google-Smtp-Source: AGHT+IHsXCV0Z4XO+FTHe2MtBSqBnvYKMJqwPN2z2yjiElWrSE6yFE9vrDz/hzrfrSjNw1oWh2GCjg==
X-Received: by 2002:a17:907:86a1:b0:ab7:bac4:b321 with SMTP id a640c23a62f3a-ac3ce064603mr127290766b.29.1742421097635;
        Wed, 19 Mar 2025 14:51:37 -0700 (PDT)
Received: from localhost (host-87-4-238-14.retail.telecomitalia.it. [87.4.238.14])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac3146aecbasm1051077266b.37.2025.03.19.14.51.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Mar 2025 14:51:37 -0700 (PDT)
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
	kernel-list@raspberrypi.com
Subject: [PATCH v8 11/13] arm64: dts: bcm2712: Add external clock for RP1 chipset on Rpi5
Date: Wed, 19 Mar 2025 22:52:32 +0100
Message-ID: <7c26a0b52e00a39930ba02f7552abdd1be4c828c.1742418429.git.andrea.porta@suse.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <cover.1742418429.git.andrea.porta@suse.com>
References: <cover.1742418429.git.andrea.porta@suse.com>
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


