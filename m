Return-Path: <devicetree+bounces-181588-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2204FAC7F36
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 15:51:29 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 502369E86F4
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 13:51:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 376E3230BC1;
	Thu, 29 May 2025 13:49:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="XZuInRcD"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D9AD822DFAA
	for <devicetree@vger.kernel.org>; Thu, 29 May 2025 13:49:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748526573; cv=none; b=blPdK2FlH+mQO+YlE6aGebQG8cstxCc6R4Jkm3M25SNCtrVGwYITNfp1lDcRSwbyn6endqxlQVpUZXPZJYgvxARXYa5hZODBRTBHdP0v8+IgMemQetVoBSP1B4i9zns196gUldvSLp8K2PrzlvWRQrL95EmgImO0PCymy3qqvm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748526573; c=relaxed/simple;
	bh=tcS1OdtYYeMI7g/XHAbOHs513PqKnIFqXgFxXuW43MM=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=QirLTGE8O90VUe+XC+WumpVgflTQzGVcB40I4ty/qq8kCNOKMO8xtRraSixSuzrIgzWmX1lkA56yLV6jjOex4OUgwfSAa8CZS6T5mhH9Rfz3es7T+5SOGhoQAWlIL3IsdmVn0CHJsUGZPWEImOKlM+6oFejv4vrrsQZRFBvvtgw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=XZuInRcD; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-acae7e7587dso133840066b.2
        for <devicetree@vger.kernel.org>; Thu, 29 May 2025 06:49:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1748526569; x=1749131369; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kLh4eS1a0IWerdW1Bha9yJdjwbF94WZ0emKgMLeoZKQ=;
        b=XZuInRcDEzGWFNPYuYg71y3LUCbHB822XAXmtr3F0XXTI1wyeblNHFgyIMe8vqovL+
         UMapZzqHD9iqfdaebnqTu/NBleLBFKAk4GxNrXkhi7XHMb9kw0pi4wx3cDZGe/TzXozL
         CRYenAlQ9Yy7vf2kTKPZ6e3RykHIdgmhnljXPdQ9H6til0uJbO17mwL1wXvteJcuu2yV
         v2T0ywPJAJvN+CXFB7lyJyhCfKCCjNXHgYSfROQox04A1KRe0sXD3iuifVoE+8n/TE38
         Hfv6aHFGP8BGoNRS+dmWdqA3ImwUk8JNRHStWLhNFqCJJ9csFdzeiq+zL3k42uk2HIKv
         +rQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748526569; x=1749131369;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kLh4eS1a0IWerdW1Bha9yJdjwbF94WZ0emKgMLeoZKQ=;
        b=QPwcX3ICHkGqSFvYnre3hny0940Y4ADHxSsCJo+4hI1CKQ4GcL9z6CfGMWGgrrBIHA
         HH05wmM4NlWL06ph1O3wWWF6x8iprcZKjJOFFtf7fMgZjYTP4mSulGwywND0E16oX8Nu
         4Qw/zplmUs3NEN/7/TgO7asJfQ8g4cI/vtprTqK8vePvyAkJSPbnhuuJlf/jWhwH9pQF
         GKD7IXDsPykRImMrcmxbkDS4SeFg8UrgDNHaFpmwE7pVY90H3Pm0JFTN9qBA5bYQN81B
         33uFqObjCiRKHjXuwNYPVJamboB2d7PKip1M+y6JM8WuNPd4NmKfFbTMVn2xaQGUP5yq
         32Kw==
X-Forwarded-Encrypted: i=1; AJvYcCWFAD2ycDn3x3iBhLU7IIXU2p/PkvzFH+mP2bH2cvXKVZDFEF5YRQV8ZG2K4Hfcd4SZbkGJHLbAy8UB@vger.kernel.org
X-Gm-Message-State: AOJu0YzjFvfuudB3qQnWgGIvxEPWpVN2KLimOX7pmaNk1L0xnXJw2Ba+
	uoJKddpLkRvSc42J1PEGg6V8LI+o0t1g33w1JLdNEd0u/qB/PeY+0pQoXpSO/Rdo6bw=
X-Gm-Gg: ASbGncsguupj7DLJQG2ceiYCeZQWHeocWfW3GG7sHTtzn5LoOi4x/Va1IaTanTMGWg3
	11D0cpdCgOWHAcudn2/iI4jU2ZSEAVy4gpL9DkHjVPdSFoIaW2bLVACPEowvqUwS8kagecmi7z9
	Qbd4iRDuMSRLLjUJcIJDZdG6Ld1J42uUQ5JpmEFclMzMPVkMEQnOYtmfCB+HE4QEhhii4sX9MLh
	U9sPT6GRmQHAIy15Je6ZOXnkWb6FiStJFZJAtojlX3Pm5wdWNkrNjkWXjzqP3GUHg2blLLS5Yry
	HgTSsMgWnCUIK2qe0VQ5JP0prNhVedEfVa7odp6FgbGPN9apu7zcGZCAxciDr6PAizZTq4ypk3z
	iv0YpSgNO5iGFjAWtluqIbg==
X-Google-Smtp-Source: AGHT+IGVz4lZI380iOeZ0sAk76r1bOVlu9hZAX/4jbO1OiKLTkmzMHxAI8gYVfXoqODUDof6526HpQ==
X-Received: by 2002:a17:907:60d2:b0:ada:99ed:67a3 with SMTP id a640c23a62f3a-ada99ed7fd1mr251769666b.27.1748526568650;
        Thu, 29 May 2025 06:49:28 -0700 (PDT)
Received: from localhost (host-87-21-228-106.retail.telecomitalia.it. [87.21.228.106])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-adb2e220548sm26619966b.109.2025.05.29.06.49.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 May 2025 06:49:28 -0700 (PDT)
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
Subject: [PATCH v12 11/13] arm64: defconfig: Enable RP1 misc/clock/gpio drivers
Date: Thu, 29 May 2025 15:50:48 +0200
Message-ID: <20250529135052.28398-11-andrea.porta@suse.com>
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


