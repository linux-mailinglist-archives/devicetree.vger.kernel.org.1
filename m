Return-Path: <devicetree+bounces-186682-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2CD3BADCCDB
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 15:19:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7F0773ACA84
	for <lists+devicetree@lfdr.de>; Tue, 17 Jun 2025 13:12:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 455322E3B02;
	Tue, 17 Jun 2025 13:09:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="fxxssrhM"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 067004689
	for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 13:08:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750165740; cv=none; b=XKCL3WCWwK3P5fh6lMdEToMwVUDQ/63U+UizR16u3W/ztEZOhBsN9s41gzv4YK+9R4YEfkJL/waySNGgwwkicf1lOGBrFWsukx9sz2WlErkat3WZ+6uEfOagStdeMN2RYjq0NOJ4a7o/MMNLU7tjYpkbLXS9glpjuohiKjAd2kU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750165740; c=relaxed/simple;
	bh=HqA16LR6HAWvdlEy3wx9eZOBIMB7ZcD4My374Vzpq4U=;
	h=From:To:Subject:Date:Message-ID:MIME-Version; b=iZ6KzN6ugjCPKTKfFxjX7woPbt21E9AEE8kwEVj/K10EObWELQ+/oeU+49RyxAf2WUkaQCDsHSf7edeCLeJNIrBSQ96CNY+6b7q/cKFKSHGbwOxql1b7XdKSth16i1itGlb9mYKm+Glm8ap7R4F6vVmPiklxuWczawCstOYVy7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=fxxssrhM; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-adf3b33f968so724332666b.0
        for <devicetree@vger.kernel.org>; Tue, 17 Jun 2025 06:08:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1750165736; x=1750770536; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:from:to:cc:subject:date:message-id:reply-to;
        bh=tECQ70x1JM1SCckuRST7a9aJYN9UOBuJJP77Z07Vo14=;
        b=fxxssrhMMMtloRbte8jFYgwZwRz0x9WPzcBCEeJJ3z9GSI5aNGJqiXao5fduiv9PYg
         jC/uw1LuR7xpPkJ9ZEz7H/ADFjwVHmOmsC+ptrRK17NEKpHjaNizduKxlgaUJNouXRmO
         E4MO1d4RoHbJgc/ZYNmiWjOJ/W65qLswLJqMdMVk8vNimZCaA7QcLDTPQoXf/XQdjQB0
         VvZ9j/Q8xVkV6ivNtdP7eBgc8QXhoBOWHElphbhAb8emde9eifCgH4cVFoJ20X1fmdi5
         AMtLR9R7uVhiCqk+QsMcrGoX5FonzVoAnXelBg2HZ4fgy7nDZvHHmkgevErR1dXEcJzr
         ItGA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750165736; x=1750770536;
        h=content-transfer-encoding:mime-version:message-id:date:subject:to
         :from:x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tECQ70x1JM1SCckuRST7a9aJYN9UOBuJJP77Z07Vo14=;
        b=IF2pan+bQASt1le7CcsdulZBZNWeBFmAGofNtcRBzuGTDhOlIS6daqOV8DBCUDbF/h
         5DSK7O/1aYSpqz4NRTDLQhUplfOSNVVm1us0CFmyj4BZCRGVV8sRz1zMgQdiL3V01rmb
         mnKVTxHlwUeXRuTsG2sbVJEzQuuo+G6xDxckyjRlV3/1dESJRRxl82QHedz7P8S7vGoH
         cTCJSMMVXhRjj7dSH1Cs059SBmnbNUDcyj/RP8t8IeWcUHLYbxcjKdnIS8cnJqjxLNbW
         BCwy2u8k0x+2MPzx6YlckeSthuiJy4nhvSnRG5FBZOrjrnPVMcMWlRPYHOYxoDJQoaJ4
         bXRw==
X-Forwarded-Encrypted: i=1; AJvYcCUPijR0bcaBgkJ+S4cRKrkogfvj5YJfQzsaG7IWd4+ZJkCMmZtXkKqNcprQuZE2vdREcx/R8y+ObjQF@vger.kernel.org
X-Gm-Message-State: AOJu0YzEu0N8lafnwC8AYpMsL3KRrGo9ggHFlX/OfWiUqU0OeFPbYWtM
	G5aG73EavLt8f+m+pF+ulSIyGWCZOm7JOh8PkuCbmtLK+cak7TnWlXJqGw8qawCMGnM=
X-Gm-Gg: ASbGncuIostbXXg8oEaDwusKhFmz1C3EWgpQ97iuN5ZgPC0hTEwWAhDmKBqLhP6d34t
	z2oyJBJ6xc9t2mxjGpq7rEJfLoDfAXf8+gUN+vTL88pmFgXtROESDigm0XuztbXijo06zrkujSK
	pxrxwUs4PwiaiG48ANTOTOIT+aHu73LfQgoLkNycnXIvkPWPhBg94qrdEfWPcB3QDsZjTJ9vdNy
	0bG3RbJ7raTAp6jgqq+BIHUze7NGbqrIUlUu2smwKRHbJotzuJeQogkbfEPeeDZ2znE16kRnNMn
	3r5iSYn+GLvy3D7M3/LEimRYllJ8x1Fw6lQzqqDC3cvqMdHMis+DQGq2X6RMEQthCMd32LFXQKG
	/XDD5hH2tvd7rL9a1DBoxJAB32mo86nvX
X-Google-Smtp-Source: AGHT+IHZb/sVwRJgA/UO9fRUeHQ7VVUZbqfIWG3k9c+U7l75XFG3Nw9yzuD9XOU45EDledJ7H6W3zg==
X-Received: by 2002:a17:906:c143:b0:ad5:2d5d:2069 with SMTP id a640c23a62f3a-adf9c458189mr1334205766b.13.1750165736215;
        Tue, 17 Jun 2025 06:08:56 -0700 (PDT)
Received: from localhost (host-79-23-237-223.retail.telecomitalia.it. [79.23.237.223])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-adec81be674sm873602666b.53.2025.06.17.06.08.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Jun 2025 06:08:55 -0700 (PDT)
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
Subject: [PATCH stblinux/next 1/2] dt-bindings: clock: rp1: Add missing MIPI DSI defines
Date: Tue, 17 Jun 2025 15:10:26 +0200
Message-ID: <b8a54f41f6393e3b3cae6dee561fcd040e3e5fd0.1750165398.git.andrea.porta@suse.com>
X-Mailer: git-send-email 2.44.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Declare the positional index for the RP1 MIPI clocks.

Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
---
 include/dt-bindings/clock/raspberrypi,rp1-clocks.h | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/include/dt-bindings/clock/raspberrypi,rp1-clocks.h b/include/dt-bindings/clock/raspberrypi,rp1-clocks.h
index 248efb895f35..7915fb8197bf 100644
--- a/include/dt-bindings/clock/raspberrypi,rp1-clocks.h
+++ b/include/dt-bindings/clock/raspberrypi,rp1-clocks.h
@@ -58,4 +58,8 @@
 #define RP1_PLL_VIDEO_PRI_PH		43
 #define RP1_PLL_AUDIO_TERN		44
 
+/* MIPI clocks managed by the DSI driver */
+#define RP1_CLK_MIPI0_DSI_BYTECLOCK	45
+#define RP1_CLK_MIPI1_DSI_BYTECLOCK	46
+
 #endif
-- 
2.35.3


