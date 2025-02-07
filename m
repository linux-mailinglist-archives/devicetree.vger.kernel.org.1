Return-Path: <devicetree+bounces-144144-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id B6288A2CFBD
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 22:37:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5357E16C94E
	for <lists+devicetree@lfdr.de>; Fri,  7 Feb 2025 21:37:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD808230273;
	Fri,  7 Feb 2025 21:31:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="Rx+qiwG5"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f46.google.com (mail-ej1-f46.google.com [209.85.218.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF1DD22F17B
	for <devicetree@vger.kernel.org>; Fri,  7 Feb 2025 21:31:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738963876; cv=none; b=s9S+SK3GSKjia0r6d1CIhAtcZBlVzfqNi6WMZMssSQTzDKgjJp62BO+/wkyzahLYGAJw/UMJ3wzGDSXRTiX1chTyifwWWhxnWxH+sF8U3r7LV1yUkpzki+W6TRCHNdGldqyILgDjK1S9ms986QiTJn0LscFb7P4eA5PHblfLB6Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738963876; c=relaxed/simple;
	bh=5diM764rlIrZ33bn0o7GEofG1BlmyM+xQV0fM6MfU5s=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=tdqFBpvbWdSt5Zkrscm9OdOWnI0UhITG9uygh9U5V3lnD4PmcUP1WLqVD9G6pcuTB6l8BJ5KwnrFsvijjfVmfHCiK392vlc/9WkrHVh+k1IvdNVQxFcAbZ8EW1MfoiTi/Rlln3kmx0U8DqrTx3doKUjMRnbTUOw9gBaW1nWmPjE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=Rx+qiwG5; arc=none smtp.client-ip=209.85.218.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f46.google.com with SMTP id a640c23a62f3a-aaecf50578eso501766166b.2
        for <devicetree@vger.kernel.org>; Fri, 07 Feb 2025 13:31:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1738963871; x=1739568671; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=3BopDih7yHOpwj2R0KkzxFkHGfVydC8fjj8lntQcg48=;
        b=Rx+qiwG5aW2JUWXPgHmm6QUqupktcHrf/QTNSpoAR2oYEwiA8hjBzndbhKx/znYEhp
         pSJPvLMiqtyNhuXZL90dr6S8Q1lYhNpBxYMVQMTY2GZ3Xn73ETKqH88/Rq6qFnM/c4ll
         lWQNkJk/0oT8KQSlQ3mhuJyS+LJB0SwwfUVbXxipQat8RdDXRc7oIubD8M7RCNve/G2e
         vn8X6jdRZob/MgVM5+2F2r8/H0CRn9z2phFNgk7H0DlE6hNwh4lBEkzcMwLkBqI9yjMq
         Rx6BsUum+FFU6KKx6qJJ26oFp4zVcbi4Vb9Myd94D6o13lLxYU4wldsqChXEK4aErGwK
         SN9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1738963871; x=1739568671;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=3BopDih7yHOpwj2R0KkzxFkHGfVydC8fjj8lntQcg48=;
        b=BWx1K7oqF5mlXWnzPI0vdLkZBhT10ShNqGr62OQouYokNnlVOcZ1JfAohUhZ8qTQh0
         OuYoPDJAdqgq4gvXIgvMesiIku3nr1Rti1IL1kQJbhZSy/Cg6WK8TNlVPMK4XNke+TfA
         6Ov0IEpAHtxI32HrRZUCg7BAzUZVw5rM5oVx/vhkfqBFAKrSnCVydakI1wfI4Lk6M6Sg
         4gpntO745GSBBsgQB0zrsgY9ug9yEJymn+b2y0ng+QMW3V6zzD/zqeB5XqcYL67fm1Tw
         Xwdf1D+oqcNN26fbIDV259IQEEDX9QLbK5TzgjfNu4YYuYV0SY8T0x80Gji/x6gGZW5e
         JAyg==
X-Forwarded-Encrypted: i=1; AJvYcCXKWzBHug3vayFs0uC2X+l+kz8guJlaAZKV9k35jFePrdMMRKcnqHhR5oOQQhbLoGAp467Kb3RuzSgp@vger.kernel.org
X-Gm-Message-State: AOJu0YxWvn2UGKVDE/wdfEDfXX4Z2pGXZhyWapLSckqhfYT5KIQ4mhXk
	DKSuynGarloa/d3jb8UoW8HvFDnNlMynTpvtEzJYn8P1Q7aWe2WdUxnSkuSh4ss=
X-Gm-Gg: ASbGncuPOPGKUMu8wgKhMjey6NGCHh81cRjUE3Z+cjJJQ1KKBc6O/Tf81Gl1AJMz6D4
	KPfpw5sujaYm0Blssrpu7mSIVz7BOY2htDvP+8b+y3Zz/OtwkDGXNXx8vDlEKJeq0JPZy/9oxdR
	9KQgxJap0bWlKm0fHv4kDVSlF/bN1UkjKM/BH/JGbwfqZT+Uo9OJqbj/0+2lQfBvBIITjwcrqaS
	3xc4urkhEaDu/c7AxIaHP1iD+UoX2sUFxl4D4w9RFxYCg+JAZz7sERYp+Fb7eCKYWJUoyHLrhhS
	hJU1eqv3KzR8Ms+EmhixwkacZ/Qg8f5qLSrsDD7Zvq9L+kqAp5JTPkUsVVk=
X-Google-Smtp-Source: AGHT+IGwqrzJl2/ax1uP9MqR28vcjX4PkKe1oIs/IEEQv3qf1oee6es3/KbGoTL6JWHdxGwK20xnJw==
X-Received: by 2002:a17:907:c285:b0:ab6:ef94:6054 with SMTP id a640c23a62f3a-ab789b2886fmr568618966b.33.1738963870964;
        Fri, 07 Feb 2025 13:31:10 -0800 (PST)
Received: from localhost (host-79-41-239-37.retail.telecomitalia.it. [79.41.239.37])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ab77365fc7dsm330339066b.182.2025.02.07.13.31.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Feb 2025 13:31:10 -0800 (PST)
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
Subject: [PATCH v7 11/11] arm64: defconfig: Enable OF_OVERLAY option
Date: Fri,  7 Feb 2025 22:31:51 +0100
Message-ID: <49da5d0cf961fef23a1622253825443eb51d660d.1738963156.git.andrea.porta@suse.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <cover.1738963156.git.andrea.porta@suse.com>
References: <cover.1738963156.git.andrea.porta@suse.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The RP1 driver uses the infrastructure enabled by OF_OVERLAY config
option. Enable that option in defconfig in order to produce a kernel
usable on RaspberryPi5 avoiding to enable it separately.

Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
---
This patch is *OPTIONAL* since I'm not sure if OF_OVERLAY is a desirable
feature to have enabled by default. It would be advisable to have it included
so that 'make defconfig' can produce a kernel config that will work out
of the box on Rpi5, otherwise OF_OVERLAY has to be enabled separately.

 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index cc70793e97ef..ca492fbd2773 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1643,6 +1643,7 @@ CONFIG_FPGA_BRIDGE=m
 CONFIG_ALTERA_FREEZE_BRIDGE=m
 CONFIG_FPGA_REGION=m
 CONFIG_OF_FPGA_REGION=m
+CONFIG_OF_OVERLAY=y
 CONFIG_TEE=y
 CONFIG_OPTEE=y
 CONFIG_MUX_GPIO=m
-- 
2.35.3


