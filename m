Return-Path: <devicetree+bounces-23533-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C9E280B809
	for <lists+devicetree@lfdr.de>; Sun, 10 Dec 2023 00:32:54 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E74081F2107A
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 23:32:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ECC3834CD5;
	Sat,  9 Dec 2023 23:31:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="s5juPEp9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E494E10D8
	for <devicetree@vger.kernel.org>; Sat,  9 Dec 2023 15:31:46 -0800 (PST)
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-40c19467a63so37509995e9.3
        for <devicetree@vger.kernel.org>; Sat, 09 Dec 2023 15:31:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702164705; x=1702769505; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JvDVwBTixWipZmxB22MbupuPU8/bAZmmQsaKZWMqwMg=;
        b=s5juPEp93J3a43MCuBqwwklxa7LHFFwZ1UfibeZ9o7iE55ojUG3qY788TYy7XWYRbM
         5tuR/DgndTvBCc43V1X9cTSyxAMnBcjF4mXxpazm9Mrx64lo9OKH/dKsm27sfS06LLCp
         Lu9Ne/eFsrIIiYokVtZC0v7RpzwAsG56RsjX5Rd6Se/ocmE3Y16q+IM/vNxIiOVY26Di
         mg9jdP7hI1tC8BVcpIW8SY1yoey+cMudl0nu6SWScikwGCpAt3h0rhRSNEjJlhOuxtJZ
         IyQCiC0Our2ywE2MYahIEtiIxrQcoN0ko8rR/AyJaHjoF6qN7QRyjO9Sa1h6jHlBTYmR
         2/RQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702164705; x=1702769505;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JvDVwBTixWipZmxB22MbupuPU8/bAZmmQsaKZWMqwMg=;
        b=YdgWt0H3kch34SA3Ga2w86DkbDSqhMiCZggIjPloPfjZyKR+hRdhm5P65+hv+SYH+9
         l+mQNovuEzD1ER+3x8PHWPpKX6QEkv8uJ1vq6+ga/WJLu2CdYNOS05GJdjspCyPNkz/N
         im1L2d8Js6zioqZ52Ldb19wtupxl8Bwh3M9eOfSnPhAveTLTO2LjHyPsC75fxF3eb+Qc
         l1tEm4ylZkIaKLQJV8QurNBK7kAw2eBG5531Q1vRJDn1LMdi3NISItdUygr3yJzDZzDN
         ANE27IWcc7q20EdWZnqt6AFIV4cuhUacthOl2HkQJT507tS1vGOZJpy+WgBAahhs+RKK
         KJlw==
X-Gm-Message-State: AOJu0Yzp77ecCOOm6bVqfVCmYG9uA+LyQq+3DiSww022mbhUSFGjKXZV
	YL0MTi2gzKIyVJERz7Y24Kq8Vg==
X-Google-Smtp-Source: AGHT+IHM7LcYLG9aTshmuTPPsWSbLkc5xOgZRK+Kqu3DOn6BTP3f96X3RQ4aTdS3JSlcWsHq4lukDg==
X-Received: by 2002:a7b:c390:0:b0:40b:5e59:e9fa with SMTP id s16-20020a7bc390000000b0040b5e59e9famr1058010wmj.153.1702164705459;
        Sat, 09 Dec 2023 15:31:45 -0800 (PST)
Received: from gpeter-l.lan (host-92-23-61-173.as13285.net. [92.23.61.173])
        by smtp.gmail.com with ESMTPSA id n9-20020a05600c4f8900b0040c41846923sm1875277wmq.26.2023.12.09.15.31.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Dec 2023 15:31:44 -0800 (PST)
From: Peter Griffin <peter.griffin@linaro.org>
To: robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	mturquette@baylibre.com,
	conor+dt@kernel.org,
	sboyd@kernel.org,
	tomasz.figa@gmail.com,
	s.nawrocki@samsung.com,
	linus.walleij@linaro.org,
	wim@linux-watchdog.org,
	linux@roeck-us.net,
	catalin.marinas@arm.com,
	will@kernel.org,
	arnd@arndb.de,
	olof@lixom.net,
	gregkh@linuxfoundation.org,
	jirislaby@kernel.org,
	cw00.choi@samsung.com,
	alim.akhtar@samsung.com
Cc: peter.griffin@linaro.org,
	tudor.ambarus@linaro.org,
	andre.draszik@linaro.org,
	semen.protsenko@linaro.org,
	saravanak@google.com,
	willmcvicker@google.com,
	soc@kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-watchdog@vger.kernel.org,
	kernel-team@android.com,
	linux-serial@vger.kernel.org
Subject: [PATCH v6 20/20] MAINTAINERS: add entry for Google Tensor SoC
Date: Sat,  9 Dec 2023 23:31:06 +0000
Message-ID: <20231209233106.147416-21-peter.griffin@linaro.org>
X-Mailer: git-send-email 2.43.0.472.g3155946c3a-goog
In-Reply-To: <20231209233106.147416-1-peter.griffin@linaro.org>
References: <20231209233106.147416-1-peter.griffin@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add maintainers entry for the Google tensor SoC based
platforms.

Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>
Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
---
 MAINTAINERS | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 36f6e76170e6..a3bd682c9e32 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -9032,6 +9032,16 @@ S:	Maintained
 T:	git git://git.kernel.org/pub/scm/linux/kernel/git/chrome-platform/linux.git
 F:	drivers/firmware/google/
 
+GOOGLE TENSOR SoC SUPPORT
+M:	Peter Griffin <peter.griffin@linaro.org>
+L:	linux-arm-kernel@lists.infradead.org (moderated for non-subscribers)
+L:	linux-samsung-soc@vger.kernel.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/clock/google,gs101-clock.yaml
+F:	arch/arm64/boot/dts/exynos/google/
+F:	drivers/clk/samsung/clk-gs101.c
+F:	include/dt-bindings/clock/google,clk-gs101.h
+
 GPD POCKET FAN DRIVER
 M:	Hans de Goede <hdegoede@redhat.com>
 L:	platform-driver-x86@vger.kernel.org
-- 
2.43.0.472.g3155946c3a-goog


