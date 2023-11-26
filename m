Return-Path: <devicetree+bounces-19004-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 2D3DD7F9671
	for <lists+devicetree@lfdr.de>; Mon, 27 Nov 2023 00:28:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5D8261C2083D
	for <lists+devicetree@lfdr.de>; Sun, 26 Nov 2023 23:28:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A5D2515EBC;
	Sun, 26 Nov 2023 23:28:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="MocMhaDo"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B40A6111
	for <devicetree@vger.kernel.org>; Sun, 26 Nov 2023 15:28:07 -0800 (PST)
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 12B6A40C52
	for <devicetree@vger.kernel.org>; Sun, 26 Nov 2023 23:28:06 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1701041286;
	bh=UTWv7B0aMCLXIjGIp62HkL6y/eNl9IP6Uhar24MKibc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version;
	b=MocMhaDotGAeHqTwO11kml/FOxZkPEUMFvUX8JrPx85W3/gTYP2eK5dwI0vYTIfLP
	 nc29XfQ8UVOQP8YNI0RBVPOxBgqiwpu6bVKSM1p4zq4isdjsU0yIP3QsCeP/75iCvM
	 cukL9CZ9TI1+JXp6/7e15eui6bX0jQiX98+y5lcDkm9sDudGXMp+odGcUaUMklhIlg
	 t4Jd2LQIaWi4gmLh8o5gDX7yegpzAioajjqVboPJBCaDs6fpIDzZnNR5j8yn16NH66
	 mY/UkPWBKtWK488JPcnPZ9VzGvslnmWeDOHg+h+tfHP9r7zHFYH9dlYlEzjMEKqvnx
	 CW4LnUlGFyl3A==
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-1cfaeab7dafso18348455ad.1
        for <devicetree@vger.kernel.org>; Sun, 26 Nov 2023 15:28:05 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701041284; x=1701646084;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UTWv7B0aMCLXIjGIp62HkL6y/eNl9IP6Uhar24MKibc=;
        b=vR6pVNjMbXG/nPsTUKod2yZdkdc/Q8JjSZ4M0kn4w4kDKuuqYcBhDn1Nbw+PsnH5HL
         iMo7ReDOO5fPCvXM59fdXDcFutE3wcLKU6qRg68KfKywi3HXLsiZ96B/SZ8Fzd3FgvqB
         R8QQq9m618bYBIslCHofMhBuXVVQBXT3FyCpJXhuQ2g6mKOvXpr7Augw5/1cnfeVKUGU
         sD3+wrMP6ZD4jaaz8pLdDAPFLq6k4vggD6HnxGThGTY1hO5ynXo9uE9ncHsY17SS8ILN
         C1tYgwVyxC0PvWX+vEC67FK5AlSMimGe+9gchSkHDt/JYNcfdhy44071PjcCzB2G+E3Z
         626w==
X-Gm-Message-State: AOJu0YxM+tbQNixV6c4e3maQJhhsv0S7zRE3Dr0ZGt6d+Oqi+LEjVpjB
	cfhYZb1AhCSgqSi0E70iuasyEqC5opPG3SVB2knwZw3667a4tfZZo4JATqqWmiuG373XlKa2e5R
	DcQ0dcLwbwAtzl9SakNAWne3KWExiCmIhk/s7mEU=
X-Received: by 2002:a17:903:2308:b0:1ce:6312:5373 with SMTP id d8-20020a170903230800b001ce63125373mr9452857plh.0.1701041284715;
        Sun, 26 Nov 2023 15:28:04 -0800 (PST)
X-Google-Smtp-Source: AGHT+IE43ssElCwc1AHbafPfLyauBD+DF8njBdZmf6dkxFwE+D353fKdfdo6BtPGfyggI8uwjzzEag==
X-Received: by 2002:a17:903:2308:b0:1ce:6312:5373 with SMTP id d8-20020a170903230800b001ce63125373mr9452844plh.0.1701041284377;
        Sun, 26 Nov 2023 15:28:04 -0800 (PST)
Received: from stitch.. ([80.71.140.73])
        by smtp.gmail.com with ESMTPSA id y10-20020a170902b48a00b001cfb52ebffesm3123853plr.147.2023.11.26.15.27.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 26 Nov 2023 15:28:04 -0800 (PST)
From: Emil Renner Berthing <emil.renner.berthing@canonical.com>
To: linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Emil Renner Berthing <kernel@esmil.dk>,
	Conor Dooley <conor@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>
Subject: [PATCH v1 1/8] riscv: errata: Add StarFive JH7100 errata
Date: Mon, 27 Nov 2023 00:27:39 +0100
Message-Id: <20231126232746.264302-2-emil.renner.berthing@canonical.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231126232746.264302-1-emil.renner.berthing@canonical.com>
References: <20231126232746.264302-1-emil.renner.berthing@canonical.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This not really an errata, but since the JH7100 was made before
the standard Zicbom extension it needs the DMA_GLOBAL_POOL and
RISCV_NONSTANDARD_CACHE_OPS enabled to work correctly.

Signed-off-by: Emil Renner Berthing <emil.renner.berthing@canonical.com>
---
 arch/riscv/Kconfig.errata | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/riscv/Kconfig.errata b/arch/riscv/Kconfig.errata
index e2c731cfed8c..692de149141f 100644
--- a/arch/riscv/Kconfig.errata
+++ b/arch/riscv/Kconfig.errata
@@ -53,6 +53,23 @@ config ERRATA_SIFIVE_CIP_1200
 
 	  If you don't know what to do here, say "Y".
 
+config ERRATA_STARFIVE_JH7100
+	bool "StarFive JH7100 support"
+	depends on ARCH_STARFIVE && NONPORTABLE
+	select DMA_GLOBAL_POOL
+	select RISCV_DMA_NONCOHERENT
+	select RISCV_NONSTANDARD_CACHE_OPS
+	select SIFIVE_CCACHE
+	default n
+	help
+	  The StarFive JH7100 was a test chip for the JH7110 and has
+	  caches that are non-coherent with respect to peripheral DMAs.
+	  It was designed before the Zicbom extension so needs non-standard
+	  cache operations through the SiFive cache controller.
+
+	  Say "Y" if you want to support the BeagleV Starlight and/or
+	  StarFive VisionFive V1 boards.
+
 config ERRATA_THEAD
 	bool "T-HEAD errata"
 	depends on RISCV_ALTERNATIVE
-- 
2.40.1


