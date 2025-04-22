Return-Path: <devicetree+bounces-169554-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D404BA974E5
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 20:54:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8371C3AFD7B
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 18:53:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CDBD29C328;
	Tue, 22 Apr 2025 18:52:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="TXze8pqV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f48.google.com (mail-wm1-f48.google.com [209.85.128.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FDD9298982
	for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 18:52:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745347939; cv=none; b=Gkz/I8dzhI9uZCj+s9m5SsN+jaYRTPCyaUh2SJ8fKCjWTWhaMyKVMXQUHrSc3CjTc2JM6pi+wTlpTu6WURQfcE+1FDYzDK72ogFVya1TfLUV1pdi1hv1Ly5rnSF2cWsClzoMovU66anOR95V+M0llxX3KHcdxY004sFT/FxI6r0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745347939; c=relaxed/simple;
	bh=0d0KA2JIWD01SkBHQ+kOHI1VXSE1uJ+d/H8RXibXQzA=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=eL91NJEfXthFB0uIPNjPYUpkFuIW+jKC/164SyUXaXPHSd3F12a1sN+voaLsgByVb7DTQ5U6eSapumnU7SRRksI43ADoeeZUm1YrXWWUWT9eSKt6IUb73ABECLaZC5zVIQ/DksValAk7Grn00PG/tf+0CdQ4d+cr/OxhR71IAis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=TXze8pqV; arc=none smtp.client-ip=209.85.128.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-wm1-f48.google.com with SMTP id 5b1f17b1804b1-43cf3192f3bso55166625e9.1
        for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 11:52:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1745347933; x=1745952733; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=V5FlXTAP/GpzsHWsqpirXk/6wSg5qJznRRV+qS9c6do=;
        b=TXze8pqVsM1Rxc7TuRc7yNR1AJ/iH/1W/phreRNCCXAAShy1+v8ZL7RaFEDtls8k2v
         /pF2VQnDven63dW6tmo900+xOPW31f/sflgA+adrSVQvu2Mz2Wm1rh6fn75OS1+9EL9F
         TD2nN/3jLrlpBfrWa7OvlnOh5HO1zBrcpFl4He58JlAnHzJ25/n+uoHnH+8aD7inMLli
         uhyXN+4t2Y6EFFjejrn0w3dqnR8ktlhKHKdH9zyBk3P0k8RuQFpC6jFSxOwv2wNTzaKT
         iSLs2KO4v51vszvDIqpULl+TkHaQwcNf/aiDTm70RlrOPISg+7xaVLjAHDuqKqthAQLH
         bQVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745347933; x=1745952733;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V5FlXTAP/GpzsHWsqpirXk/6wSg5qJznRRV+qS9c6do=;
        b=kqAAMOyFo7ObSQFo4MRITaTqmTgWVESV6UpSrl83tJ8cKcQvOLcx9Q3D0+kKvSZF2c
         1WQREt8GgCjC4FpqRSbB4zNg45Lf9OlGRUIx2R15jpAPcgNHXyQyvZ0muUlrh3GhVE1z
         73cojRIEsuUybZWNhfjmppuS87ThTZfQpXItw+g1kmDXdUZi3/zbcYRW9VOKcw3yGGEv
         XwXk4ee0gfMc4CNh4Hg2+3wYgnh0ulOUL2ubFCrR05ww+6Y78R/cUvKjsPjL5u+OVVDS
         0lUMfIpjqoAedGVY3Vlczjb5y76TkUfrt/tqVUeZYW6p8KslW+Ag9JJOlzr1YFZor3S9
         oYxw==
X-Forwarded-Encrypted: i=1; AJvYcCWhiYtpkCttlr6AltCNDFKVibUpH2wMLLA/68XM87gmIp/M8ZsIUHcWQ2epNrE54dAodyrEY9Su6nkD@vger.kernel.org
X-Gm-Message-State: AOJu0YyNE8PUIzot9WyxwkWeb4PZnBdgSv25sCUlyhqWw0Yn+khPiT4Z
	Ta4Xg5WcQvOzCJpYNj2046RtSGRA9bk5RtDNGI/0keECvUAstTwHs3Woc1CsDTo=
X-Gm-Gg: ASbGnct3EpkgSK1CSBRTWytUiSCCTeGPsS66DPRfxAEIQPyLPrDJ+HB6/5anW2YTM8r
	kPoUSKFHDM2zXKE1TU4+sL+30rcT7Ebr96w2bSSbhj8toeDlTAcUJc1dJj9hRaKCepqSocWely/
	0grb7Fk64yDCvojDCpk0d6lnip6LfnaydujIwhEt/nhN1wbUgNN1PzmlUhNgusMKhEgNAMIMIZw
	/1gD4mKfvMsWEoaYv8n36b67heBboFMwn90aJ4Kq0+oclPEQELU9kMYG5u/J6mlDWjfXzQYUWDS
	103+XEuaiJVaDd2PAoqR739myc5BCsLX6eM72kuyJkWShwWRwv1km7WPsAtux7ZQ4TCkNI0=
X-Google-Smtp-Source: AGHT+IEVk3l0u74vuAp+CF5lDNrV556fT1PXsYCuMHNy3f4iRhiDQz8At/q2Af1Bf9oamgLCLia6EQ==
X-Received: by 2002:a05:600c:1c8e:b0:43c:f44c:72a6 with SMTP id 5b1f17b1804b1-4406ab6c278mr159813835e9.2.1745347933551;
        Tue, 22 Apr 2025 11:52:13 -0700 (PDT)
Received: from localhost (93-44-188-26.ip98.fastwebnet.it. [93.44.188.26])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-4406d5bbcb6sm181216235e9.18.2025.04.22.11.52.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Apr 2025 11:52:13 -0700 (PDT)
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
Subject: [PATCH v9 -next 10/12] arm64: dts: broadcom: Add overlay for RP1 device
Date: Tue, 22 Apr 2025 20:53:19 +0200
Message-ID: <4bd8dbb374f15a01e3b3ea27f9e802cd702c1bab.1745347417.git.andrea.porta@suse.com>
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

Define the RP1 node in an overlay. The inclusion tree is
as follow (the arrow points to the includer):

                      rp1.dtso
                          ^
                          |
rp1-common.dtsi ----> rp1-nexus.dtsi

Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
---
 arch/arm64/boot/dts/broadcom/Makefile |  3 ++-
 arch/arm64/boot/dts/broadcom/rp1.dtso | 11 +++++++++++
 2 files changed, 13 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/boot/dts/broadcom/rp1.dtso

diff --git a/arch/arm64/boot/dts/broadcom/Makefile b/arch/arm64/boot/dts/broadcom/Makefile
index 09563c41ea6b..2c6a717040b8 100644
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


