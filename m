Return-Path: <devicetree+bounces-181548-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 5002AAC7E08
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 14:44:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4C977A25855
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 12:44:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 753FF22DF82;
	Thu, 29 May 2025 12:42:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="MJm+XqXn"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f45.google.com (mail-ej1-f45.google.com [209.85.218.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 174E122B8CF
	for <devicetree@vger.kernel.org>; Thu, 29 May 2025 12:42:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748522568; cv=none; b=mzhsrbHjkejFPQedKDKxzlT/fsL0qpKIgKP1ir2RKFCTQc5I1W1k+M00gT1h/RjE2lP/6kItMmsZ/+oYUZO3DS5UZ9xJ/FWRJ3toe9KDkDV5buZ+pFqfCLZf+AyVNV8g59A+axhhhlooS807C55C/RtT0uvxyB0qt3lvUo+ZN34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748522568; c=relaxed/simple;
	bh=tcS1OdtYYeMI7g/XHAbOHs513PqKnIFqXgFxXuW43MM=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=ilpoMB3I6LRthixGVtJOyItfOP4XLLekoCtjbvIrvSwt00ZHJEEKgrwlyRhNl3YIof9I8mkl1ea2goVxq6eJ1o6P65J3NCkt1gz+soJCMydHlSAbKjmxz2GiE7t/HYTf4zWou9ZdxAOgyomSyI3VzhtzTp9WptEf9o5Choq79RY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=MJm+XqXn; arc=none smtp.client-ip=209.85.218.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f45.google.com with SMTP id a640c23a62f3a-ad857db4f52so101683666b.3
        for <devicetree@vger.kernel.org>; Thu, 29 May 2025 05:42:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1748522563; x=1749127363; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kLh4eS1a0IWerdW1Bha9yJdjwbF94WZ0emKgMLeoZKQ=;
        b=MJm+XqXn2SyFbhWOOfRlY6rtFiPKE9l8yoJuCRLLfqttrCiYBF7Tg5bvVqctcGTyJn
         TZ4uqQgb2pE+zeRrbrWUao33MZO6VAaN4PRyy3H+7jJavM8dpCm+pj1+uXRvLWo1RG/G
         /ZYytdEgGqL3y031XIbXX71SQSMYESCYk2bctOu00fBjX+RrZw65R8aXE40DfQWsOIyd
         06oXjNuOupKdh8NRkUwbLZnUiTbnp5I0dJ2N/3UeUDutJWX16H0ne0kZL8aqiD7b2pCM
         ofGUUVvqnln+agexJ7nLyRZwi7IVoFHVOPRcu99W20gbS121VxMw8r1N8eHcIygpKRKM
         w+Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748522563; x=1749127363;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kLh4eS1a0IWerdW1Bha9yJdjwbF94WZ0emKgMLeoZKQ=;
        b=jPV8w77yUPVh0pBTW2tl88dRObuOeicu/m7QeJNDSx9EthPri6ilYLCBs4uG6mJl0C
         GSF6v8EcWcJaOGKZNaLbyz0+m0wgFv6oufgDC5wuOFPWkygFMbawmLGtkU67Sc14iFd/
         sgKbX0dyuCmqix/+tjbhiDqRbAGyvX3ZLP/LoVzOZZfx5PoN+1L05l07obNOHuRuIGf1
         Q3w+9nSIKWzGWppO0Cx3u3gCV5Tjp1hyYs09CJ7KKovVxybt3YeEoY/LwCpdrBt9euea
         B5BYqEZcW2C0/sJVgo5UV2xh0/pTGO4iqDslYrFPObtpnzMJbrWSUs7F34LuWp/fM3yP
         jAwg==
X-Forwarded-Encrypted: i=1; AJvYcCWxqfFzCk7DqNpUJPf/t0gEh/zcai8MjCkajtaK5+51m1bqPQgEAIy5PpJGq2Hn5pp7yOdhtlhYG+mY@vger.kernel.org
X-Gm-Message-State: AOJu0YxR0gMREmQa2bQnOgnQMxh6tvaS25lSYQqHaWeCSnYKMkuGcvAl
	zhpf/8dJ+PeRGfpUVN59SSg0YGHEd/Z7zZOWnKUerWkv0zKuTaC3zSv9WnCV8nxZpD0=
X-Gm-Gg: ASbGncuHXo/qHIM4xayb+HT4ZPbLuvHA4JiWAypSfwfcU0v1vyqbTLW7sNynmPLIyYE
	l5Y7wRLUokEPXdBj7KMikw4nweVZmu0plYCYt3oXZzkvXlCG7CYQ1T5hqFLd9zmOhdCiW0vnu/t
	c4APGUmafLQ2y+hY9yeCoMTWFEztCNojz5c5dHG7hooT0W4/oJ9qE5BgVb8L99KYEk023k4LrwJ
	RJ2gryjKiOAXwCPdqLBqr2ACFKqJlQPg+vo5R7ZTrB8Ya+2RNQMdNWafp2CczMKa3bRWmyT8D5V
	svsu9Zgvxg8bXrGqxJfy1yhtsTeYGZGlZqZN5OZYbgqL6ox/Pu0hmOnDUbL3Ha8JN2ttKiwbcWz
	W2KtHg+vocse9uf1VNYnUKg==
X-Google-Smtp-Source: AGHT+IHryfaMX1R4GUnBG1aUg7/5bkW4Kn1TXAXHNfS5nQo87GficabaeaZc6nwlybjG0MJv0P5uAg==
X-Received: by 2002:a17:907:3e13:b0:ad8:9257:5737 with SMTP id a640c23a62f3a-ad89257592bmr966243466b.25.1748522562865;
        Thu, 29 May 2025 05:42:42 -0700 (PDT)
Received: from localhost (host-87-21-228-106.retail.telecomitalia.it. [87.21.228.106])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ada6ad39409sm137309066b.148.2025.05.29.05.42.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 May 2025 05:42:42 -0700 (PDT)
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
Subject: [PATCH v11 11/13] arm64: defconfig: Enable RP1 misc/clock/gpio drivers
Date: Thu, 29 May 2025 14:44:00 +0200
Message-ID: <20250529124412.26311-6-andrea.porta@suse.com>
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

Select the RP1 drivers needed to operate the PCI endpoint containing
several peripherals such as Ethernet and USB Controller. This chip is
present on RaspberryPi 5.

Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
Reviewed-by: Stefan Wahren <wahrenst@gmx.net>
Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
---
 arch/arm64/configs/defconfig | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 5bb8f09422a2..f6e9bb2a3578 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -620,6 +620,7 @@ CONFIG_PINCTRL_QCS615=y
 CONFIG_PINCTRL_QCS8300=y
 CONFIG_PINCTRL_QDF2XXX=y
 CONFIG_PINCTRL_QDU1000=y
+CONFIG_PINCTRL_RP1=m
 CONFIG_PINCTRL_SA8775P=y
 CONFIG_PINCTRL_SC7180=y
 CONFIG_PINCTRL_SC7280=y
@@ -702,6 +703,7 @@ CONFIG_SENSORS_RASPBERRYPI_HWMON=m
 CONFIG_SENSORS_SL28CPLD=m
 CONFIG_SENSORS_INA2XX=m
 CONFIG_SENSORS_INA3221=m
+CONFIG_MISC_RP1=m
 CONFIG_THERMAL_GOV_POWER_ALLOCATOR=y
 CONFIG_CPU_THERMAL=y
 CONFIG_DEVFREQ_THERMAL=y
@@ -1299,6 +1301,7 @@ CONFIG_COMMON_CLK_CS2000_CP=y
 CONFIG_COMMON_CLK_FSL_SAI=y
 CONFIG_COMMON_CLK_S2MPS11=y
 CONFIG_COMMON_CLK_PWM=y
+CONFIG_COMMON_CLK_RP1=m
 CONFIG_COMMON_CLK_RS9_PCIE=y
 CONFIG_COMMON_CLK_VC3=y
 CONFIG_COMMON_CLK_VC5=y
-- 
2.35.3


