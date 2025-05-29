Return-Path: <devicetree+bounces-181587-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A1F76AC7F2E
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 15:51:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5E2584E4192
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 13:51:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E628022FDEC;
	Thu, 29 May 2025 13:49:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="JGjzvJw3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CDDA522DA10
	for <devicetree@vger.kernel.org>; Thu, 29 May 2025 13:49:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748526572; cv=none; b=C0gPRdhtXMiXBD9Bw53GdjRj940Bg62JZsvTmn44Tfq21kWr5d8wJGoEsYMqq7cMp3ZqdQr7pJT4YIaG1kD+STDNSAveelyz65afl+yLMpLFC9xqzTUvUUX0IBdbOR03ZteJ24iGWadxqEg3yG7dgYPYGF0EvkzTWOJv81VJMeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748526572; c=relaxed/simple;
	bh=e7L18GWSgyaQx+VyeKnctdC1G5/fpSrazf2H4MTEiJg=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PDdJq4BcGDqkX/b/AEDuN1uTmQBkuuMaZJdaS9bqsLwerYz5PSbv9soL4fPz7e8NlLxiSFH84ULI7P1AS9GWS/0KQVNLqTTcONHl8j5WQW4jMalzZieq0CnhvwVdWRncHhyhphRAq5nTcCaVyAcG38VMSx1bsKBgNunnQ7X3K9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=JGjzvJw3; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-ad55d6aeb07so147938766b.0
        for <devicetree@vger.kernel.org>; Thu, 29 May 2025 06:49:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1748526568; x=1749131368; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ppscN5NV3cw5VQZVyMsIjJdGBSstz2S2TJqiSK9iSsw=;
        b=JGjzvJw3+nuRvpt2PfYG+hCuvGaJQpoUMQvBk8zQGAt5ZiRT6sQm/pbVGdcQVXaHQi
         hl9APZs7Hef6GfDgGRota/TXN+9Ew0QgJJ/0/NSKPZgWWYw5D6JGitDNogdcwn5GZtvN
         eLBEwfDOmdWAm5ZJUfZ7hQkGVIJLQfJXTs3dFbwYYssueJ5HsfISb6rfgbgshAN/6Q+x
         +FcvsmUYltKuO92HHX4J7PImES33JEiQTAXK8G27xaOBT6qnsWPW2YBFNPr+GEV0eoNW
         n636Rv4iPh5ipC7kjzMygqVk3FnrS/AZ1xbD2taU02kVvOZVP5eDEtgkAPsqyxbzWnSc
         NHhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748526568; x=1749131368;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ppscN5NV3cw5VQZVyMsIjJdGBSstz2S2TJqiSK9iSsw=;
        b=JI6vGTVvJ2TpdzoYAZbTOuL8bc2ffeKiP00vqCmLuo9Ot1bmHwTcy3/CCpuNM/cH/M
         DUMELSE25ypA66pxZseHPeQhIGAH6G8x67JymbgSqIrP/kOBt+WsXq9KWzfQCeza4DQL
         AKxPsRQziSMTUjUj5PDW9wvQW4Mcy8hfTfyw69l0RTVvAEjMCIfZDeX/3kVJBJNf/3we
         vhcemJY7kPoyl8ApmE5U0NYulZJAA7L+ikvSzKp5rVz8Mf9mWQv/xvv2YRtF1DYvziIc
         x1AEVJJh1cHA/QWIIG7eJsGAm4cWudyl4ZPH4kfhdpqFgdTtBFGWeHjQzHJKwXPQIxRX
         YS3A==
X-Forwarded-Encrypted: i=1; AJvYcCV3ZqYnKmj50N3zKdnakJ1ia1VIGxLdmVnm7vpzTi9Ux4jmOvZQ1T7RfoVvX9pBeW8p7nT1JIlLeP/0@vger.kernel.org
X-Gm-Message-State: AOJu0YwzrEn+p1jiDuo/L5c/Sf6acBF2VQzUoFP7QyHEgbAastOskgPf
	tB+25MlmEXXjUW8p36ZtYvnZrNzlOQi1luMpJ9G05LCkZKqHMFmj05klaeuIG7EzJ8g=
X-Gm-Gg: ASbGncv75MEaplMVkENK3fPFQa8L6lI+sYlcM5UZ9vF1EEGUmPusIAFAPJ19aTd5pKo
	/NRMXzU0MpHoqJQNnJgJI3qDMwRR8vll6fdgKzohUSfi85DETRm7ZI/6OSSmVkUHuG6gduRALQm
	GjvjVB0uQ7AXcA0QnTxzpLAl3fJ86I5T1d2L8zMTKZI56z9K+43WPWznzRIZimCiqmX65LhPRHE
	rfKivNUMCh/mMbSHuueQkDMVrP54rqh12sVFO2uKQGnuxHBxRUAiC2BNTSasS5DHsgYFwmu61RL
	ogRBACZxUyXdlAz4YExtDzmzyYECQw4I86uZIiL4sWkDqODZdxik8HvCBCpORLPjW3/W0ks5lVX
	b2DOKAnNoxNXh95fmhXv6IQ==
X-Google-Smtp-Source: AGHT+IHauMo4PO8x+p2QJnQMGgglReuXaviinUw97Q2Scu+s04RkVaYUYy8ri/br/b6wUWptGayevA==
X-Received: by 2002:a17:907:3f9f:b0:ad8:9c97:c2da with SMTP id a640c23a62f3a-ad89c97c73bmr736928566b.40.1748526567679;
        Thu, 29 May 2025 06:49:27 -0700 (PDT)
Received: from localhost (host-87-21-228-106.retail.telecomitalia.it. [87.21.228.106])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ada5d82e88csm149038466b.62.2025.05.29.06.49.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 May 2025 06:49:27 -0700 (PDT)
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
Subject: [PATCH v12 10/13] arm64: dts: broadcom: Add overlay for RP1 device
Date: Thu, 29 May 2025 15:50:47 +0200
Message-ID: <20250529135052.28398-10-andrea.porta@suse.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <cover.1748526284.git.andrea.porta@suse.com>
References: <cover.1748526284.git.andrea.porta@suse.com>
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
Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
---
 arch/arm64/boot/dts/broadcom/Makefile |  3 ++-
 arch/arm64/boot/dts/broadcom/rp1.dtso | 11 +++++++++++
 2 files changed, 13 insertions(+), 1 deletion(-)
 create mode 100644 arch/arm64/boot/dts/broadcom/rp1.dtso

diff --git a/arch/arm64/boot/dts/broadcom/Makefile b/arch/arm64/boot/dts/broadcom/Makefile
index 031875a277d7..83d45afc6588 100644
--- a/arch/arm64/boot/dts/broadcom/Makefile
+++ b/arch/arm64/boot/dts/broadcom/Makefile
@@ -14,7 +14,8 @@ dtb-$(CONFIG_ARCH_BCM2835) += bcm2711-rpi-400.dtb \
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


