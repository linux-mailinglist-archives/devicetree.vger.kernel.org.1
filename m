Return-Path: <devicetree+bounces-181547-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2082CAC7E00
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 14:44:33 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id D61901717F5
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 12:44:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B8E1522D7BF;
	Thu, 29 May 2025 12:42:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="ZvntV0qa"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C3D322AE59
	for <devicetree@vger.kernel.org>; Thu, 29 May 2025 12:42:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748522567; cv=none; b=gFzpmOWmySJb39hpm3oenmZ7475G36jPtgJ/xjNr3q4pTp6fJoP4wXaSX/UsXHp+7mNTk13wP1kzlp5sT+mgTi49sQV+QxVc/ifKPb5uAMfDbUtw5BBJLrbyQNEazZUDaNm6Z5z/T/FoNmCVUej8+GvJcQ22yiSE22x+Qjn2EyE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748522567; c=relaxed/simple;
	bh=e7L18GWSgyaQx+VyeKnctdC1G5/fpSrazf2H4MTEiJg=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GelHgrKLA2e7lufPcdNL4i+Xu30tLqu5S81VyVPPNWEQy6Vm2r7dxGoVgR3NblQWy/KMp2nqt3AL1ydFnE23Iv3vTTNojQVlHjt9zrNAnq+9CZzbBOJxnfFOVKDIqVDmF4pQ90rr4W1glPBJajmsu2ArfeA8u+wa+28AuJ8KfQ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=ZvntV0qa; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-602e203db66so1354691a12.1
        for <devicetree@vger.kernel.org>; Thu, 29 May 2025 05:42:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1748522562; x=1749127362; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ppscN5NV3cw5VQZVyMsIjJdGBSstz2S2TJqiSK9iSsw=;
        b=ZvntV0qa0UsTFoAE+fQinBri4B3PW7NYJQB9Xf2DxM+0hBjxStavSqh+QnZ9w1Q5BS
         OpylNLrArCPZVYxGkfIq/8Cty7vy4NfKt20U9dekpavkHN/WwvIeai+KB3mST4CpGwJA
         l6fwg+wIIbV0bdTNxOIl1nhFnAzWPo3gFMV8fO0OdgFXe5ERnCm3y86csky+hHWjKx/5
         3rqFWb1xwpoDTw7ecT8XH4eD7j4AkS6f0VF2ghXYG/ei9nu7wEJI0PDUEGQuTaR4tkzo
         YeAsV8DCJCn8RIziMhwD9tlSSSlKyx6heaXECaWpy3iIp6+T3s9F7Zvv13kIfA/9iMdr
         WEOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748522562; x=1749127362;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ppscN5NV3cw5VQZVyMsIjJdGBSstz2S2TJqiSK9iSsw=;
        b=P2mmy22IQnNYdpCmGTJA4ST4PQrolE9dCZ/jvig7/to04rOSWfwBbPtD4FJxXPZ+Pl
         9WSpMo/VmpLRQzQkCiLNv+g4HYMK/lnHt3Kp848kZ8uwNICG97qovnUfnl8OCHHGTqOC
         W6+/a+wC/qtpUpRdPOY9DvefVaOjKfhC/j4lun/UNDpC5cJEDwtNytt8hRnO5FoEmGoi
         l+VHi4TyB6QMBUX5Vc37/5LgbaVDhAhtnb59zTe5Gq+xgqWTtKz9iK5YLKvVwXZBuC4a
         LLWab40nrKNmx1QrSXA7CZxFuo4fhkq2mciW0sy8sTpksfZkugwicGAYub5uDFwGYgeW
         gy4g==
X-Forwarded-Encrypted: i=1; AJvYcCX3PYktNvYtz6vuSJfPN3fPaNTBth3Z/Te3ydIVE73I85YRgYBY5y3ZoaK9PavxpORe8uxwb+gMnJlr@vger.kernel.org
X-Gm-Message-State: AOJu0YwNauOwyqnCq8E+1ETRfWaKQDHAqpzXeaH496v1snPVeEByUxHC
	rlaue7amfw2sz3UnbLNFmCalY0KMwlKC09X1jY0ixJ/RO2fvI/rZhYiooGt42/zBAUE=
X-Gm-Gg: ASbGnctXqTk1pzbkCQeFNtp2f3sfHxuqePCDzGlyIqPbH/fC8aqb/7O2/kOKmLDTkcD
	e02SzrHQfHy55pnEUxg/kTfa1neQjCS3IsEdKajKVoVjCC9MvVxvE99lSpEsPMNxb5GOsdCp9iR
	lKtj+ra8SxtATfn5s4i8pkOCE8+BN7/0rT1KpAYftZeRTFDN+/QySpbCkMamxjmI4qhgNC1pcOP
	fGMOuDiXWgqtUlg5jrJBK86zn/vBcEFvBg7OewKs5QlX+58IARWgGRGQHm+UFQKTuH5yMa5UX2D
	60ZjAuteak8xjbGbXNjlyllEh3XNSWaAopG4rXPadMO1Nw3P6se+v49FkFSEZUrhwzxF9m0N0GJ
	59VA2x5blX6oJsNWjsY742/6SDVEBZwSy
X-Google-Smtp-Source: AGHT+IGNiDnmL33gl89vnGs+/ABlMcodAbvG3T1PvC7+mWmEo5zj5kUpEb/gkX3S1G8x/gUNclU3eQ==
X-Received: by 2002:a17:906:6a10:b0:ad8:a935:b8ff with SMTP id a640c23a62f3a-ad8a935c9b6mr486027666b.31.1748522561822;
        Thu, 29 May 2025 05:42:41 -0700 (PDT)
Received: from localhost (host-87-21-228-106.retail.telecomitalia.it. [87.21.228.106])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ada5dd04579sm134495166b.87.2025.05.29.05.42.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 May 2025 05:42:41 -0700 (PDT)
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
Subject: [PATCH v11 10/13] arm64: dts: broadcom: Add overlay for RP1 device
Date: Thu, 29 May 2025 14:43:59 +0200
Message-ID: <20250529124412.26311-5-andrea.porta@suse.com>
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


