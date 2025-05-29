Return-Path: <devicetree+bounces-181516-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A33F0AC7CBF
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 13:23:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E3A19A26C18
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 11:23:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2935D28FA97;
	Thu, 29 May 2025 11:22:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="K50Z0Xg+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB8AB28F515
	for <devicetree@vger.kernel.org>; Thu, 29 May 2025 11:22:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748517750; cv=none; b=QNastSQ6Cm3bK259tPW2f35nyGe68U+GeuWN1fZdGxiFAIv1owTkHUDvVmyeY1a1QNmzkTJOcUielv8mp1Ai06Baio2x7MeA/u/Zsq6MNZGSwdSqciCWtMkvqBhD9Tix2g54PrzeJLUmUtTGyOEIqE4f87GZmPTqD570I+iZuck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748517750; c=relaxed/simple;
	bh=VtQ1ljfmYtyXEA61aEiaZEeKdDz/H5SMisehIOwJ9No=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=mwhr0z3dnqE9b9XMQOUEqYoOYvp2q3DYwJZfeGx24z04gfoMHK442q49bYMtJNd/pdfCeDImClzM/54gYPsM6N0fmPM2ziJl6n2wnwhoaphXMOyrD2u0RyeOqXnHeS7E2Rk1RZA9w4Batf5dv2LYHlBgsHGS30TROGQz25/QQzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=K50Z0Xg+; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-602039559d8so1471125a12.1
        for <devicetree@vger.kernel.org>; Thu, 29 May 2025 04:22:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1748517745; x=1749122545; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=rB9s9VPJvR605hRqbfbYWWEdTsjP5s3VD85/JJVm1e8=;
        b=K50Z0Xg+CHM2azmv0AFN7GhTqb09V8EyWuKTbfFTAbgY77+iX3AaibJ/06OPuJ8eYZ
         8RXIlaujA6ssulfUpZhs1IRsmjgRZyW+m9ohE1XlL6b30Mh9jtXr0xEx9IaVHscg3tHd
         3jZzxzkqycyvEtk+hVW2g8NRwjOTZMYDhiF3IzCk7USbCD1rjoO3PvPzCx6ygXbK5ect
         ifC09+Jv9YH1gJUFxQ/W+Q+1HzN0ox96rdRbH4ntyjzJOt4MGFKzSui5JFKclIIM/u1o
         ajLUaUl9sy5UqsrVLpmvZgJ5zc1fl/CXBa4eZLg2Aoh2jIKqetkHEtI0Lumq248aPgJG
         Gg9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748517745; x=1749122545;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=rB9s9VPJvR605hRqbfbYWWEdTsjP5s3VD85/JJVm1e8=;
        b=Lp8Fx3RwMjt4Y2HUDWso0L52r18ldzE/Swa4ryBxuaz5BAXeUHn9bI8Jqyx0qc4d3H
         Q28PtkhDit9wiioBLoVlnFqQocYrjJBr8tv4wKHJnR/IMJ5HzuvwQ+LCwVkCs/YBPDLI
         YwN5/hpFt2SdA0UwnJppnsETDuOGIsmAUpQzQxsVq7i8j77HIYN4x66myp2kPlLjEMh7
         hVdqAgp8DPbViIw34eK9N/uztwHxUl5DfnASnr1N0TJDcVt+SHcQo7XfEG2VGQ/RLOiw
         jwyfTxZ2U4cDRVSpg2ZICBWEpdg/fYm1WscPM8Sqi529po+oMQk10rHntSQpoEr3XKJk
         b+sQ==
X-Forwarded-Encrypted: i=1; AJvYcCUIVgqDVa+nq5oq2x4HDSTFruDVQCQ9KVmm4gXtorF/KoF84bDFNavMhybR0k1ugwNa2UV8dUVrqq5B@vger.kernel.org
X-Gm-Message-State: AOJu0Ywt2fqfj5nRt48zfaj+083aiQKnRNrB7bfthOo2JMj8ZwXnbQYy
	b9HIbbL/Ww8OPrcQm0oxg1uH+iqXDEzOsYtBW5/zMYi2jyIChD0YjkEdKfWJUqdQhKw=
X-Gm-Gg: ASbGncubQJh3bYxs/NZMbpHd2XxOrfR21IgCGAGI79ew8NdqnpG+gBkPsFl2JosDN3W
	giYd7h8j/qL1yJ6WaheJ1fKhWbBrX2sJ5Ofx52V6zibduCtruKqyiIpPYiM5jVCKAJJCzrZoBnp
	Zz75hTKcDXLQMOYSTjh9uDvrgx6mCOIBFdfJX2jWcfaGjspr6y9Q/WONCeXmw38y3SEeEk7D046
	6Lu0xb7IdAi678OmDM/jsOmQKV6HXRDA0b32/u2na/D7fdovXDoSfWwHBogmdBM4s+iNzk+TLax
	ZxbEuW9L8UFjsWc1XFlgdInuqOq5B7WRTFkFPN78FbcBtMJ7HorcBFxKixb7LJ5ESgblMwjjKsL
	EOBWjWCn7NtWKiPybQEj7hg==
X-Google-Smtp-Source: AGHT+IFK5HrO5YRWLbTpI1CNg/Y9fsCVsm6BLAVkF3nAzCYZI0eN92baPbfeXmfhmf7aUJkZcUs+uw==
X-Received: by 2002:a17:907:9806:b0:ad2:2146:3b89 with SMTP id a640c23a62f3a-ad85b185b5fmr1536323266b.47.1748517744799;
        Thu, 29 May 2025 04:22:24 -0700 (PDT)
Received: from localhost (host-87-21-228-106.retail.telecomitalia.it. [87.21.228.106])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ada5e2befaesm125684166b.104.2025.05.29.04.22.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 May 2025 04:22:24 -0700 (PDT)
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
Subject: [PATCH v10 08/13] arm64: dts: bcm2712: Add external clock for RP1 chipset on Rpi5
Date: Thu, 29 May 2025 13:23:43 +0200
Message-ID: <20250529112357.24182-3-andrea.porta@suse.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <cover.1748516814.git.andrea.porta@suse.com>
References: <cover.1748516814.git.andrea.porta@suse.com>
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


