Return-Path: <devicetree+bounces-159111-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E0C4CA69B77
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 22:54:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 3E64D980778
	for <lists+devicetree@lfdr.de>; Wed, 19 Mar 2025 21:53:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7FD7A21C18A;
	Wed, 19 Mar 2025 21:51:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="DMu62Dss"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f68.google.com (mail-ej1-f68.google.com [209.85.218.68])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D90FE2147E3
	for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 21:51:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.68
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742421102; cv=none; b=GuFIN6/3j7RZdZIxH41OGaEf1sDdHDmAyyDGPyZ4PApNLQ8CtNIf+3K9GlkQPytbtbT5xI/KECaMABnZtE+0G3KLk9TsU3SQgbtNWAvgL+wBcfzfCejb/9kfwY6BBWB6rDwqg9R6L4joV7OzoGs5596VcpFCVueyrxfZMQcubG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742421102; c=relaxed/simple;
	bh=JzyPc2eVnFcS+iQ42poNnWKrz0ZGOrBKiISFuXs6lEU=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=o2d2uw2hqQpFz8rEJ4anQsDrKkiMrPh17fhRvYy1D2qh+c4HNRu2bMwwltwfB62o8glOb56z9icHe6AoP6SxtEAdK3Lj9WCT6ct4ZVmbJKOCgQkc/5rXRPY5n1FA3F/+R5M2nuzQAO0AdMZKBiArbxsY7nw2y+33oldwz3UeLh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=DMu62Dss; arc=none smtp.client-ip=209.85.218.68
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f68.google.com with SMTP id a640c23a62f3a-aaeec07b705so24738866b.2
        for <devicetree@vger.kernel.org>; Wed, 19 Mar 2025 14:51:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1742421096; x=1743025896; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9zRknf0FjRBxpKbN0jDt6ZYvci9VpLgXRRZUvC1VBu0=;
        b=DMu62DssN865n7qN0w3agvOKzw4si7sKsGDgEcT1ZdPGwrsgmNu2JF4UuMXA05iKxK
         eNiiboihB4sUu/yVFcvqt4QlXmhqb2gNgeT1+pPem/AgfIw+iCuLiI0oHB1eK10LHLOe
         aC+EhYOJ6m2oivCgmCmw7akxeWulSCvkb/6HqSbSGxiWNlIogEck457tAUG6Hnajf66o
         ba+5YMak8xA01pXK5uOrdCZmY9ydq+NMvTC2w2o5iD7SngG4bABTuT/4Yf7MihSx85UT
         5Z1FV23ZdW2BpkE4+IW6iqgTnhaeUvKd0N5IddoY0Ju+ly+f62ZZqoti030UazZRzXIq
         Tl9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1742421096; x=1743025896;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9zRknf0FjRBxpKbN0jDt6ZYvci9VpLgXRRZUvC1VBu0=;
        b=JClaGeiWqICLV1Xo+5OVXK9gIBtwVzvqXEI3A9JMPX555iwsNwUHbMeE0BZW+IniMr
         u82yQnaB9GwdL869I7duVkaJdvXeQLlPHxByyjeAd9tFop+89N2T+eUUow64DvlrbEhf
         SG9B/AtIXo+pqoyMPOpXe/iCcHFkffJXK63c5JaxUvCNxY043i5K7xny6xWqy0xkXoCc
         sLFrN7nqtRtcWHMjWB8cxBjsRnicIjYQgun4O4/LKccUAM4zf7jZeL3VrwA18g2MCT8p
         Pvk+XNM1qVrKQD3aBQJptDr9Dn8j8Nmyj9oadPweh9ODRHQaeo5LXAecThkinCmhVoTm
         xdaw==
X-Forwarded-Encrypted: i=1; AJvYcCXvcYsK4UrEoqsc1FYin4dinDfoWIo1/eIHh4ryO+BgIuXTK1r5A8DBU5YPFgqGVxJMCWfBAxs4fFLO@vger.kernel.org
X-Gm-Message-State: AOJu0Yw1GjrKmED0pSuePKSipsnDCisahxJDqYzm9AEv2NuIVSfvjcDX
	4WpyhEFVQ74f3p9ewNVCl5hVZvm1XYnh3zwZLarQgJLJt6vUyEQuvCj+8qeQ2H0=
X-Gm-Gg: ASbGnctfh5vSfUx+gAJP1inFr3zb6WglxJH4fXpngdVHfX2HNer4NoODGCJf7JnjbAo
	XRFyBZpyOpimHevz7zsAYAjtVSN3x6fhldCScv4Q1ScHBSsXsv/iyqRhguC7mOzuJU1On0Khog1
	csiTq0d10YgBdiNhWWdX1zl1NPhtvGmo9KYT6VLihQJxOjgP/NLPBz71No+4L+c3sw3UhqYJ6wH
	ylDR6WlDBuJn+ogY4MxaNF/XEjEmEk1G/qaeaJyZuCuMJbTP1oVWRnXWqbJXm9UFWNIemeSmw4g
	h7mwYR+fnEPy39HWPPwdmFbmoyN5/1tAI2Ar/EIi85wcHnDcyEGbyTxsjh723SvQ+QecgHmI9Hg
	X9gv7ur/3mg==
X-Google-Smtp-Source: AGHT+IGw/NXcD0AevUkNs1VSBpy8/11q8cX74Bk4rrh1yk8V0z4OkbmrlYn4A+xrU8r1pLSBvS/MMQ==
X-Received: by 2002:a17:907:ba0c:b0:ac0:b05:f0c0 with SMTP id a640c23a62f3a-ac3b7a9504cmr543431466b.1.1742421096325;
        Wed, 19 Mar 2025 14:51:36 -0700 (PDT)
Received: from localhost (host-87-4-238-14.retail.telecomitalia.it. [87.4.238.14])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ac314aa5a46sm1057645266b.181.2025.03.19.14.51.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 19 Mar 2025 14:51:35 -0700 (PDT)
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
Subject: [PATCH v8 10/13] arm64: dts: Add overlay for RP1 device
Date: Wed, 19 Mar 2025 22:52:31 +0100
Message-ID: <ab9ab3536baf5fdf6016f2a01044f00034189291.1742418429.git.andrea.porta@suse.com>
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

Define the RP1 node in an overlay. The inclusion tree is
as follow (the arrow points to the includer):

                      rp1.dtso
                          ^
                          |
rp1-common.dtsi ----> rp1-nexus.dtsi

Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
---
This patch can be considered optional, since it fills just the second
scenario as detailed in [1], which is the RP1 DT node loaded from a dtb
overlay by the FW at early boot stage.
This may be useful for debug purpose, but as such not strictly necessary.

[1] https://lore.kernel.org/all/CAMEGJJ0f4YUgdWBhxvQ_dquZHztve9KO7pvQjoDWJ3=zd3cgcg@mail.gmail.com/#t
---
 arch/arm64/boot/dts/broadcom/Makefile |  3 ++-
 arch/arm64/boot/dts/broadcom/rp1.dtso | 11 +++++++++++
 2 files changed, 13 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/boot/dts/broadcom/rp1.dtso

diff --git a/arch/arm64/boot/dts/broadcom/Makefile b/arch/arm64/boot/dts/broadcom/Makefile
index 4836c6da5bee..58293f9c16ab 100644
--- a/arch/arm64/boot/dts/broadcom/Makefile
+++ b/arch/arm64/boot/dts/broadcom/Makefile
@@ -13,7 +13,8 @@ dtb-$(CONFIG_ARCH_BCM2835) += bcm2711-rpi-400.dtb \
 			      bcm2837-rpi-3-b.dtb \
 			      bcm2837-rpi-3-b-plus.dtb \
 			      bcm2837-rpi-cm3-io3.dtb \
-			      bcm2837-rpi-zero-2-w.dtb
+			      bcm2837-rpi-zero-2-w.dtb \
+			      rp1.dtbo
 
 subdir-y	+= bcmbca
 subdir-y	+= northstar2
diff --git a/arch/arm64/boot/dts/broadcom/rp1.dtso b/arch/arm64/boot/dts/broadcom/rp1.dtso
new file mode 100644
index 000000000000..ab4f146d22c0
--- /dev/null
+++ b/arch/arm64/boot/dts/broadcom/rp1.dtso
@@ -0,0 +1,11 @@
+// SPDX-License-Identifier: (GPL-2.0 OR MIT)
+
+/dts-v1/;
+/plugin/;
+
+&pcie2 {
+	#address-cells = <3>;
+	#size-cells = <2>;
+
+	#include "rp1-nexus.dtsi"
+};
-- 
2.35.3


