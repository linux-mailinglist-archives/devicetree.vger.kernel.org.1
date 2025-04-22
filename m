Return-Path: <devicetree+bounces-169555-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C892AA974EB
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 20:54:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C9E71189B27B
	for <lists+devicetree@lfdr.de>; Tue, 22 Apr 2025 18:54:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C13A129CB27;
	Tue, 22 Apr 2025 18:52:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="KuDvxyHy"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f49.google.com (mail-wr1-f49.google.com [209.85.221.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7969729B224
	for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 18:52:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745347940; cv=none; b=lpSCp81tdf73IaPZJ2PtHnFEU10WD41+HrnQ/u4mNdaMZrMpw7cLDBQOLuGaYQnXxWPUSeMjRjBE/63HxCUUNjVp/jfSvvK+yEY4tPXUQ1y8ecHvSRKbFO8+C1m3PYJJcY1+7BLcv4rBnzYHFPi0pr6TH0EiG7peaBjWAZ94fJM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745347940; c=relaxed/simple;
	bh=1k1unQkkbNJWyNIqqzpizkZc3aIKLdvvcUxlVK4aZEM=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=m1qrOZ6oFtwMkdIxVr+6hw9ikPLr57CZUTHsG7myJl/rPPPhwtQopj4NQbqWye6yonyX1ycSopu/B2BSyDHu3KNw8tySvGtk459D47+LpSuXswpirWmi996+u9ni6t7mEt2NrcAnu7Nqalw8ACJydHmPqL886HmHeKScOtsllmE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=KuDvxyHy; arc=none smtp.client-ip=209.85.221.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-wr1-f49.google.com with SMTP id ffacd0b85a97d-3914aba1ce4so3716491f8f.2
        for <devicetree@vger.kernel.org>; Tue, 22 Apr 2025 11:52:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1745347935; x=1745952735; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ADsz4nM5zt5mk0SaIqSNaWehe790A/IESs0jsUHL+uk=;
        b=KuDvxyHyGrC25lEjuJl0sHhcCvZF/pF3czD68drf8To7cQccp2Y8qxi3RM0ChZwcqX
         NbVxTb518ACxsReOslqkprpiBHaHOsJ8IdMQTCRFEV963Ovpcki1WXdbPdsJohoN2OaC
         DdHN2FholbvCNcoeBTvuMjkjOshdifxbF5wOtUb4xrs4i7LW5nrDHyYm3+H8uo/1UK3R
         t0mskDWsLu/XNkDzlLEQfHxAoLRN8rqABMX3JXLWx81j8DkSdtZVUAXKY/eYCtcAODTV
         Na/ivldAIglcA0uzm1Yo6rn9BUBgEVJ6BV7RqnMUXGgkFTqOb49hZ6SdHUNbe0dfMVTC
         M5nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745347935; x=1745952735;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ADsz4nM5zt5mk0SaIqSNaWehe790A/IESs0jsUHL+uk=;
        b=sSRc+4+jznqj8nvVB8OelcTUMc6toB/di4xtZZq0P/GfDZoxeK/5O5Vly4Juuw7VXb
         SPf75w5GYwaQDYgdCKd6midF7+KUimKK8Asb/0iFZfuW1x5U4HkP8eFt2PcdRnjUdnWy
         ex5ITuwqzZsZ/n1NCIRJaDhorYHn1P0UUxOJbYbIxHC/WdROh4dQ+AuLoXMAS8OUodVk
         repEGXBpr6VZvIRWpdc1Obpz4iC1j5MgdZCH7CsF+1lSh0vGzaA/44o6MHmCyobxRwGT
         mwFRXS9H0RiwtG0yDOZ5dc056LDPGfjc34aFJnrQR0IeueNffsgvcmKRK5bElwHLt/es
         oRBg==
X-Forwarded-Encrypted: i=1; AJvYcCWlKgIxgPNl5MA7AG+TS0d21gG0/oyRFL9wM1cPp9ZsHrvG0D6NL9zxKdqTYX9ksjrh3GcWFWUobDf3@vger.kernel.org
X-Gm-Message-State: AOJu0Yzb+LW1h/8boE3m9yYJrqwm0EbxhLiAw09SRVwCErb6ujLlWQr9
	NXk9VAU4/e6rg3/p8cGVh5Qnf+LnuhzPVAPu3sl70cAUxi3E9WzHhDI6O0BYl4E=
X-Gm-Gg: ASbGncuLu54aJq/aNtdurfgp9vipx1/IxktYpOt/xUHeQ1+QwFnGHhrKtNdxjKmRw7A
	e/TBp/DMnKRdETJfCdctmhUxjaERFMuoKRk6SkiB9V9sB+6g6wgxSwZLoF9da13aG2EfKr2eBp9
	ZQ9FfHn7YsWGHzisfQx1QV5+c4O3RWtEkaJRbXw8cbfAdrOnQ6/JDfeXeNOn1SMIO5oLWL5+1W0
	C68eWDJyLqx4Dmm17e/k01WrweLJwws0a7VrgMBbAIGT/Eog9B6ehyzRU05ap70sssWRVf5sVUO
	him+N5QCDChOxxnfTnHUpIg57XjLhTEpyLpFTkDmdOpR7tgfs6oh6fHtRm1B+RQBj3JCYDEzL9T
	oEdKflQ==
X-Google-Smtp-Source: AGHT+IHaQWcyIld8HmOWqZEWQ8mfScJy5XfhH5TexVF3JHDuC1C8WH0PzZCZR43OQba1F6XglJkm3Q==
X-Received: by 2002:a5d:648d:0:b0:39c:141b:904a with SMTP id ffacd0b85a97d-39efba2ca27mr13013041f8f.11.1745347935584;
        Tue, 22 Apr 2025 11:52:15 -0700 (PDT)
Received: from localhost (93-44-188-26.ip98.fastwebnet.it. [93.44.188.26])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-39efa4207afsm16278846f8f.12.2025.04.22.11.52.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 22 Apr 2025 11:52:15 -0700 (PDT)
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
Subject: [PATCH v9 -next 12/12] arm64: defconfig: Enable OF_OVERLAY option
Date: Tue, 22 Apr 2025 20:53:21 +0200
Message-ID: <8baf7818aae1fe5be046015e4bd8121ccc9acb20.1745347417.git.andrea.porta@suse.com>
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

The RP1 driver uses the infrastructure enabled by OF_OVERLAY config
option. Enable that option in defconfig in order to produce a kernel
usable on RaspberryPi5 avoiding to enable it separately.

Signed-off-by: Andrea della Porta <andrea.porta@suse.com>
Reviewed-by: Stefan Wahren <wahrenst@gmx.net>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 53748ea4a5cb..23656b0bb7e0 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1640,6 +1640,7 @@ CONFIG_FPGA_BRIDGE=m
 CONFIG_ALTERA_FREEZE_BRIDGE=m
 CONFIG_FPGA_REGION=m
 CONFIG_OF_FPGA_REGION=m
+CONFIG_OF_OVERLAY=y
 CONFIG_TEE=y
 CONFIG_OPTEE=y
 CONFIG_MUX_GPIO=m
-- 
2.35.3


