Return-Path: <devicetree+bounces-181504-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id A6033AC7C31
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 12:50:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 9384A1C04412
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 10:50:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A4BC328FFC9;
	Thu, 29 May 2025 10:48:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="aptyvc0j"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE58528F935
	for <devicetree@vger.kernel.org>; Thu, 29 May 2025 10:48:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748515697; cv=none; b=av+sIQLukq/QTgP6MPu3TFzPHjQCsMKzJ4xDbwZLPzPUmpfihTHVsp/Ua9Hp8OJ8ibxD4yWYIP2aY7wiTS9lRMVvT4z46QTkooVGUGo4flcpj2bvQ6fS1Pq6MRhp9nRO/cmwjtW1k2DxkPU1E0fXh3u6Q8Om1HVwaHjZOZtUwjM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748515697; c=relaxed/simple;
	bh=RRM404hdZVflbCbuZ7OBxFTgWWaneCmtEfkgg/Xp1Lk=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=IYSWm/s1Excc+PIFf3yTFmWKc6Xm+NLKlCLvul5FFtx9tojpN4HO2ZMbkFw2tPI/7DsUfkrF74c0UkOiT37VFTra42pydJSgmoOCrXEF/P53zgzCxljd7ROygVgWxplreLW6hRBBlTmkF/fVB5wvq2fb9+yf0sFd8sMY3usdxFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=aptyvc0j; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-ac3eb3fdd2eso137729366b.0
        for <devicetree@vger.kernel.org>; Thu, 29 May 2025 03:48:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1748515693; x=1749120493; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hTCgL7Vlc0a5ielumzwkk7bjVhaA3TYeVWaUN3CkeyQ=;
        b=aptyvc0jIAKCaTd0t/ly60+cWkgqGHqrIKbdEvjAedG2fLvKmcpPc9NsmTXEODizKJ
         GePKiTPjZL+XT9KxUqxZQGXM0+K/44/hIWB/HSlt3RoSOlhp1AWfz4gWVbXOGnxisDr4
         yP6/nl57zjLZaEJ4O+Diz+460Dt7rmEHI+M3FAPF6vy7095lnCEIXXTJdJ1q+cf5dGz1
         yJZ0rOl8dOSpdMaU7jPZ4Vq0q4bA9hbqeHBGw/2H29LJqUH/5bZNiBhKISNXbFHsEPPY
         UQ2lTHq6Ya3J87ByzJmsKP2cUaN7grgMiDYetBSCd0xcyjEEQs+EdHBmNPcUSY21DI63
         peFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748515693; x=1749120493;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hTCgL7Vlc0a5ielumzwkk7bjVhaA3TYeVWaUN3CkeyQ=;
        b=BIPiWU24c5DRL7FO+E/Eu4VVFgIMMD+hkOFs+V4wgduQHar7NIJdlUkvYCKb5JO6B+
         omExsEeeeeHz5x/Wb3zlhAlSDSl+FCOBebDJ4kTd4fCVTpUdCA7/NEeMl2O6BedmpR2c
         RSIH0fjpN0P816nzyJ5QQ2YOU4N0+lja49Y5dRIsnITjnpLONZgat10eONGXwfAECtlZ
         V48ToA9yV3ij6OKPTNZn702nsS7i1Npx1igJ5iwg7NszJ34GmSCcECY12gSZ812aTMY+
         neTdOnpU6jgzRo/nOedxyzh/tkOIZF+L0ERV3VKb+wTIrOFqmPug4AR7WSMoUk+MYbAi
         QLqA==
X-Forwarded-Encrypted: i=1; AJvYcCU8SGXYY5REMJo79NwDNQUiRgrugEUAiN4c2tgxjXZRsSwLIihbauKTpcdSmXLA4C3jk4XtkHEycMPq@vger.kernel.org
X-Gm-Message-State: AOJu0YzgWMQAetgqq9Ofn+2v5y52GGKf5/umyxGd4g6dDQwNvY7o3vao
	8wMsA7S1vI/12ORXCTRC+UkEhh4avaTrmb6D+nERpdau3V3zepbWxCm9rvcuefBtpRs=
X-Gm-Gg: ASbGncuOLMdMS2cN1SKI9ilGj13jQkHpXfTKDpCSPsmO3Gycindl6LXC+kx294Pw6ou
	a8sCqEng6IjopPJySNUhKhKHs7/HbxjSAGUKRHZ/WcLLc5vVPPlKBhWZsAv+Yhhb3WfC50b+AWY
	59arylR5DmNG1mkqvfte5cGOwl1NjQwGo1Ls08xvaHxZm8g8oKDtV+zkB+nQeED/JgxBX99zlGR
	L/0s6nUfXfQyc7SVFZUp07I+NiIFYDzG8qZMYjgTyXcrYPVnRBmFVbQLbm8uV9b35CgTIYeX8YC
	zfTGgPFRFKsWoY5W8quSSDkfUta1CcsNV4L54HPgj/UUO4yfskWAb9fSoTnMgX/3Z5vW/G6bRHE
	M9aVSAyT3RBjtormUYZUcIw==
X-Google-Smtp-Source: AGHT+IGcndJR5WSb66PATrzUwaAKdyGw+iAxbtsrtdyFNRYpJH+6sC62/Ji0kCEJoq4+a4yiL897iA==
X-Received: by 2002:a17:907:2d28:b0:ad8:8835:f794 with SMTP id a640c23a62f3a-ad8a1f31b97mr453973866b.32.1748515692908;
        Thu, 29 May 2025 03:48:12 -0700 (PDT)
Received: from localhost (host-87-21-228-106.retail.telecomitalia.it. [87.21.228.106])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ada5d82de76sm121072866b.65.2025.05.29.03.48.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 May 2025 03:48:12 -0700 (PDT)
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
Subject: [PATCH v10 12/12] arm64: defconfig: Enable OF_OVERLAY option
Date: Thu, 29 May 2025 12:49:29 +0200
Message-ID: <20250529104940.23053-7-andrea.porta@suse.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <cover.1748514765.git.andrea.porta@suse.com>
References: <cover.1748514765.git.andrea.porta@suse.com>
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
Reviewed-by: Florian Fainelli <florian.fainelli@broadcom.com>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index f6e9bb2a3578..ccf2f50673a3 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -1659,6 +1659,7 @@ CONFIG_FPGA_BRIDGE=m
 CONFIG_ALTERA_FREEZE_BRIDGE=m
 CONFIG_FPGA_REGION=m
 CONFIG_OF_FPGA_REGION=m
+CONFIG_OF_OVERLAY=y
 CONFIG_TEE=y
 CONFIG_OPTEE=y
 CONFIG_MUX_GPIO=m
-- 
2.35.3


