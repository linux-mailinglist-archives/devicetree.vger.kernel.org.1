Return-Path: <devicetree+bounces-108461-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id EDCDB992C0A
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 14:41:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 18A911C2272B
	for <lists+devicetree@lfdr.de>; Mon,  7 Oct 2024 12:41:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76AEA1D47AC;
	Mon,  7 Oct 2024 12:39:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="YmAYEbNf"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9EA51D4149
	for <devicetree@vger.kernel.org>; Mon,  7 Oct 2024 12:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728304797; cv=none; b=XUCz5mA6rcdDtyyAkNfMgvd53CN0eMquIAiZgDUYCOYGk44ZAGHvSNac41rqrrwMUiY44APnUsddRXL5XqSol+nodR0Gns5qS509n7Dxcrjxxjx4RONgkoWHmqMslPcGmXYLv9ihXdyf6cuXT7sdlf/zQS0GikLeoNpGhw2J4es=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728304797; c=relaxed/simple;
	bh=keW+vT550WqqZOgWV5RvIAX0hhvZXHvpuvbMkV4b5MQ=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=QK9nj+uKWqrAL+PCydLuGPcONKI24RI8rsn5jM3BdalymoecQY4ENJd11WtKYbLNbDUI1ET6GR8zlgjnt1jCCjhPzwaq28zM1Off45WkWKh1csBiFnik++8g0nN2nxvfcGePo9GV+Lb1cUPXcJVNAkiRzdWXJKF8Sq0GrlI7avo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=YmAYEbNf; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a99422929b2so225209566b.0
        for <devicetree@vger.kernel.org>; Mon, 07 Oct 2024 05:39:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1728304793; x=1728909593; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=E3hAOrRw5xQdhMiyBTBpAF1zCHGDS1up/fzBs4ITHy4=;
        b=YmAYEbNfRsa+9ZquXK4zGHRxscymbJd6awqpfXIKu810sjLWv2SabVfJYFOGpGEvJl
         rNU8t9KyUdHDirnctl9N6k00X02lFRGVGWQkD4X0AJ7C8pKudEIgtLkp47MVh2QmooKG
         MBqNJ24SCrOSN0OFz0eY+ybE5RgGT22INAIfyl+ISh3M+xhLJqs7cKlDebQLnq8HjY7y
         5Zefsro0WqT/OGHildlBvW9RfHajWqbpsUg7vDyhHIIAYB9hgcbbJ7mKx97yrXm+Xjl6
         rHKMGN0LyD8fbOxeuZcOF63Ev/oybP4BzG1GoIYL6wmgE1A5LXAp+vM9VDZwJDCtsx/Y
         Q2wA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728304793; x=1728909593;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=E3hAOrRw5xQdhMiyBTBpAF1zCHGDS1up/fzBs4ITHy4=;
        b=o0kXpZTKtSw9j0VbgclsBP4feFsbDXOakJXKwEB4RvNTEPxxfWBckd97/Ahp4zS9Eh
         KjaL0+8KgD9lnmlc2dLo8cpobSs9gZfpsEo7q/g3mNkrbP2sJ6/jXmGSFpuTkszLQ6iS
         /JkRLJcMrpJ7PiS1YHQrmQrWmGEyQeOUBzRshd1RmWWBy3DdpOmaB7BIYuj954NJlPIW
         or7co8Ln4V0/VFTMQarD3veswxwinIV66uTiRDEdfzeVnSduvQuw9J7dbipQROVNT93b
         YqnxvYkOKCGAgLD8Fism1/weW1TrhaU2ZNuaO/YsdaK9cX12zHzeeboGLXqB6kO4+ZMM
         5+SQ==
X-Forwarded-Encrypted: i=1; AJvYcCUTa+HO1/kdiNzco6oyh7++m1OsF+gJKXCF8YId94FM3ksaVWBStKnznt4dEVCt8OSZ1BliSjTWr9//@vger.kernel.org
X-Gm-Message-State: AOJu0Yzgbrg8PJIgROYD3EW8ovP1RGApnKQvFO8TaVGS84Wo1tyV8wW8
	+Ws0P2H1lQJ0N679eNJwjunBvbXYC0GUcXCHVqlydlMUBl1egyT+tRt6sATKn4Q=
X-Google-Smtp-Source: AGHT+IFAuS51Efpu99SVNutmZJk8el6z6Su02r4hqkQ+BkrfYww1vueUey7cM49AcZEtj5NuSSmKaA==
X-Received: by 2002:a17:907:972a:b0:a8d:555f:eeda with SMTP id a640c23a62f3a-a991bce5aecmr1345288866b.8.1728304793310;
        Mon, 07 Oct 2024 05:39:53 -0700 (PDT)
Received: from localhost (host-87-21-212-62.retail.telecomitalia.it. [87.21.212.62])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a994e6e571asm189794266b.85.2024.10.07.05.39.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Oct 2024 05:39:53 -0700 (PDT)
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
	=?UTF-8?q?Krzysztof=20Wilczy=C5=84ski?= <kw@linux.com>,
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
Subject: [PATCH v2 07/14] gpiolib: Export symbol gpiochip_set_names()
Date: Mon,  7 Oct 2024 14:39:50 +0200
Message-ID: <c9a7d48fefd310941330a4c9892f7218b235e0c5.1728300189.git.andrea.porta@suse.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <cover.1728300189.git.andrea.porta@suse.com>
References: <cover.1728300189.git.andrea.porta@suse.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Being able to assign gpio line names dynamically is a feature
that could be used by drivers that do not have the exact naming
(e.g. through the DTB/DTBO) at probing time.
An example of this is the RP1 driver that populates the DT
at late time through a DT overlay. In this case a custom overlay
can be loaded from userspace with the gpio line names.

Export gpiochip_set_names() to allow refreshing the gpio line
names from the driver module.

Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
---
 drivers/gpio/gpiolib.c      | 3 ++-
 include/linux/gpio/driver.h | 3 +++
 2 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/gpio/gpiolib.c b/drivers/gpio/gpiolib.c
index c6afbf434366..a2aa3560094a 100644
--- a/drivers/gpio/gpiolib.c
+++ b/drivers/gpio/gpiolib.c
@@ -522,7 +522,7 @@ static void gpiochip_set_desc_names(struct gpio_chip *gc)
  * names belong to the underlying firmware node and should not be released
  * by the caller.
  */
-static int gpiochip_set_names(struct gpio_chip *chip)
+int gpiochip_set_names(struct gpio_chip *chip)
 {
 	struct gpio_device *gdev = chip->gpiodev;
 	struct device *dev = &gdev->dev;
@@ -589,6 +589,7 @@ static int gpiochip_set_names(struct gpio_chip *chip)
 
 	return 0;
 }
+EXPORT_SYMBOL(gpiochip_set_names);
 
 static unsigned long *gpiochip_allocate_mask(struct gpio_chip *gc)
 {
diff --git a/include/linux/gpio/driver.h b/include/linux/gpio/driver.h
index 2dd7cb9cc270..6e4cd7b7e47e 100644
--- a/include/linux/gpio/driver.h
+++ b/include/linux/gpio/driver.h
@@ -679,6 +679,9 @@ bool gpiochip_line_is_open_source(struct gpio_chip *gc, unsigned int offset);
 bool gpiochip_line_is_persistent(struct gpio_chip *gc, unsigned int offset);
 bool gpiochip_line_is_valid(const struct gpio_chip *gc, unsigned int offset);
 
+/* Assign gpio line names from device property */
+int gpiochip_set_names(struct gpio_chip *chip);
+
 /* get driver data */
 void *gpiochip_get_data(struct gpio_chip *gc);
 
-- 
2.35.3


