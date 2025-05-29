Return-Path: <devicetree+bounces-181521-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 084FAAC7CDA
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 13:24:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B6A021C00518
	for <lists+devicetree@lfdr.de>; Thu, 29 May 2025 11:24:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6DC64290BDD;
	Thu, 29 May 2025 11:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b="OLltV4hv"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f42.google.com (mail-ed1-f42.google.com [209.85.208.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B20728E61F
	for <devicetree@vger.kernel.org>; Thu, 29 May 2025 11:22:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748517754; cv=none; b=fdOgbi2RWThjFIce1Zwdj/vDSdb3Sjy99JwJOsItlXxQnyrnDL0GAPyYUJd7y/ATqiWb8LfOoZiOUp1Y9lEYEElz6IUXlwjMEwX3sNTBzxKk8EY1E46LVP9rLitDlEvCBxq5r+XKNS5qUv2pqhAvGEzyLIRss/NmVsS5CIWTYFc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748517754; c=relaxed/simple;
	bh=RRM404hdZVflbCbuZ7OBxFTgWWaneCmtEfkgg/Xp1Lk=;
	h=From:To:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=IM4pZhlSIFkipFEDVEaBof+lXQ8MiYGoyYRhVJj6MRKh+PxRh6q3SmNbZT04plIeMIjDew4GY4HdIfpsLAO0KV9pyjIHGnQ8dYYEOo41FuIhmMri/5Vyr1xWfwQbhhdx9qvpn3NttjrdfxC0oLyEnNUmWnTlKODTUshLLJVnzd8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com; spf=pass smtp.mailfrom=suse.com; dkim=pass (2048-bit key) header.d=suse.com header.i=@suse.com header.b=OLltV4hv; arc=none smtp.client-ip=209.85.208.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=suse.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=suse.com
Received: by mail-ed1-f42.google.com with SMTP id 4fb4d7f45d1cf-604bde84d0fso1114007a12.3
        for <devicetree@vger.kernel.org>; Thu, 29 May 2025 04:22:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=suse.com; s=google; t=1748517749; x=1749122549; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hTCgL7Vlc0a5ielumzwkk7bjVhaA3TYeVWaUN3CkeyQ=;
        b=OLltV4hvknXuVnFrkc6OH76sfwxPheNSSKO9WAhv27oqOhYFwUZ0fcYM66jggE2qMb
         dhSXD3dUgnLcRpgTpYpFfB5ARgsWeO7ugUXeq4KRD8tYPpwiQo2mqjgsETUTGiCCTelo
         5Y36I2RBrVZlDsgMVsIqHPeACpL2yNrvJf4qjzjBtdTT8SZ7KMgHAhZiOx5qDGz/JO79
         hY9tqzJOeeUAqDHqmO7+TF3csmABHyZIlPFdiIwGV1PaTxcQsOw4FirU7rFZDDcMeYPn
         ascXf/f7bhNLfZgURyCuD8xjfMCdBeP47c/S8+6+ftGVf8uLjiu5knFrN0IEl+LsayBH
         DV0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748517749; x=1749122549;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hTCgL7Vlc0a5ielumzwkk7bjVhaA3TYeVWaUN3CkeyQ=;
        b=dmdcE9pdRXMp2NP7zs/hkrKMoXDDn32aZcnu3f40VIGW809fS2GA9pA6u/0bJxGcHY
         e5pvVuueFgVaEBINgNz4HRVb/MEi1yw//vg7dQ3GpX3YcSWKmLffs0u7UZeBj1ufFLVJ
         fOYb0sfc8XNTjyaZDw7FnwQYn1ZbPnyn7kYXwoiabzi40mBg8ZxagHnFXiAb4bAbr5ET
         oFx0FZIxo743uEO17SAtdyjZXO8foTVVnD7anpOdJ/Jsqn5dTCsw2QD3p7xaqSj1PKWS
         pE9QRu4OVBTGG4M+7o+zjXUL5UTzuElwGi6EvxnA1MuWEcNgpZ+plryEw6jB67Jbnf85
         CVnw==
X-Forwarded-Encrypted: i=1; AJvYcCWFRU05umyVT/rxLlRQXFsAkhsinnrqD3usB+hRveEFihVjIVOfETZ24XjGga260CSQWOMZ+4efRPJP@vger.kernel.org
X-Gm-Message-State: AOJu0YwTLhhK1aWkAs64Hm2WS0QXAeXdcXYw2S4SYUgzz+fzLYjPYjDQ
	+h4/A+cyJUF7/yzt1CV0srbNYiBXrXStOUHa5rITbR5ioy3SUaafawfVIX47OoyKl2k=
X-Gm-Gg: ASbGncuQ9RPTD5AKoIrkVfPgTY5w6IxgjD1OX8eDG21P8/6fmvXW8mKpzoJqvhikNJf
	fLnRUth9W/udgFSFg3cY6ihrT8zGoXiDX3MbNnLoRC7YDSexAFZKW//PSu5VBY8ovDTofv0BNkQ
	9PQYusQbRHvu4BjRqqzFP4RfwZ8zfqDkRt6k555HXD1orPYV+6FuShfR2xU23veNlY4cmaj/eKl
	qeE/Pu1YL4rdqFX85AJQfFnL56KWyJ98lkPzyYFiBQH3vtOUDWk0vuZCtvbNXD8DqZT2kAfAK2Y
	qsB1zHytoHFcZAs2/Q/HN6E1/dJ9VdidIyr2EJAGTCobHYTHBm0GX4j9VAmaZL7809/V5BGMZEi
	TCN4KeNUsqJjg/bjQvpzVKTInDmN1AEeJ
X-Google-Smtp-Source: AGHT+IGIHEB4AcuERSFwVfLZXlxZybEzRkofnOTwqfs80hqrEJ33hE4h3yIsIdTYmxCJoTKFbmQFHA==
X-Received: by 2002:a05:6402:90e:b0:601:9531:68b8 with SMTP id 4fb4d7f45d1cf-605460f42f1mr1154010a12.18.1748517749396;
        Thu, 29 May 2025 04:22:29 -0700 (PDT)
Received: from localhost (host-87-21-228-106.retail.telecomitalia.it. [87.21.228.106])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-6051d6091d9sm2291814a12.44.2025.05.29.04.22.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 May 2025 04:22:29 -0700 (PDT)
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
Subject: [PATCH v10 12/13] arm64: defconfig: Enable OF_OVERLAY option
Date: Thu, 29 May 2025 13:23:47 +0200
Message-ID: <20250529112357.24182-7-andrea.porta@suse.com>
X-Mailer: git-send-email 2.44.0
In-Reply-To: <cover.1748516814.git.andrea.porta@suse.com>
References: <cover.1748516814.git.andrea.porta@suse.com>
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


