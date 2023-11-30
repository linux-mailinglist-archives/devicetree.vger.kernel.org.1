Return-Path: <devicetree+bounces-20413-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 63AC67FF35D
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 16:20:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 1E5A228196A
	for <lists+devicetree@lfdr.de>; Thu, 30 Nov 2023 15:20:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2497A51C5E;
	Thu, 30 Nov 2023 15:20:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=canonical.com header.i=@canonical.com header.b="tg2AgNrs"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C959010F2
	for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 07:19:56 -0800 (PST)
Received: from mail-oi1-f198.google.com (mail-oi1-f198.google.com [209.85.167.198])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 8ADCA42241
	for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 15:19:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
	s=20210705; t=1701357594;
	bh=kJozCoiP+8SSmbIdgX+XEOLC3TmZqjTi2KwgKhtjA04=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version;
	b=tg2AgNrsOtlLHpxEc7uRzLLKEozhkNr+M545R6prrCUcJx8c3vpsNNeOFrZU2MM7e
	 Em362apU0Ijd9yi8c4MAIzoI2EcmkrdXOI8xqVWzPoLAzayBS/vVYn/xfw87cC7wGi
	 UHufiBSfp8/SsPkQD7yNR3gGkDLM4hXGqU7BBFkxiOoIWfBs0EU/N2yNzjBFD8fDWM
	 ihZVyI6zJ3V8MTAfivnGc5Pk8aRp/zUvIDoCRyJJedyFmJuE43rdO7HFQZ15uODTQU
	 0vuTNuU0RH1AflB0z76e59oZKoWJSvfe1sEBWJ1Wl6o2EaBIIsRH0Md7YmOUxPGV3Q
	 2Ix3jSw/pLOCA==
Received: by mail-oi1-f198.google.com with SMTP id 5614622812f47-3b85fd1bdecso1278864b6e.1
        for <devicetree@vger.kernel.org>; Thu, 30 Nov 2023 07:19:54 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1701357592; x=1701962392;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=kJozCoiP+8SSmbIdgX+XEOLC3TmZqjTi2KwgKhtjA04=;
        b=c3OxBMidpm268XWOzw0v5i895NdGBWNuewMLVHaUpqDFW4p12V/Eu7Cz76uGdcwl0k
         0ZD8CdvQmnaCBSIZidxB7QPjq4YUA03n2jffcicehZ8286ZARFi+01fte2cWbyEl5zM3
         bJgQ5D1DJcD2WOYj1bxZzTy2pXlu3clHIDMOzjZLSDyXPEjPxPkRnTCKx1CYIFoaTisX
         u7eVtb6ryHwcbdKp0wC8Kk1sKlstXrDvEDEt0cfjanV0APmyYHfOKTqISIquqBR9pghD
         +tGZ/abJgORvaMmYfAiTvIIhFDl9tOjt8FOdvBAyOjXHVi2wF6Cxh9llsYp8pieu0jMZ
         1JTg==
X-Gm-Message-State: AOJu0Yx+2kaJvM/pffsb7ZrGhDrpAvRp//GbDv2Nv9vSDgBIgCoO3VVY
	q2Z9wIi5+YDO7dOd/GOJozx9eN6m0GzQP313VzTH4uchZfoXkEM9FjGhGSAU1jrvAbGGAF0mnMJ
	LB6D5E9wGFx4r0OszW9F5tLl0VW6UZXd90zRsq/0=
X-Received: by 2002:a05:6808:114c:b0:3b8:616b:24e with SMTP id u12-20020a056808114c00b003b8616b024emr22271196oiu.49.1701357592729;
        Thu, 30 Nov 2023 07:19:52 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF/tZgpwM4g3D4RLe+xKwxGoAIWPI28s+VjwwPdoqac/L+nPUOpvs7DOtcRdrL5y9bTCAwjtg==
X-Received: by 2002:a05:6808:114c:b0:3b8:616b:24e with SMTP id u12-20020a056808114c00b003b8616b024emr22271182oiu.49.1701357592537;
        Thu, 30 Nov 2023 07:19:52 -0800 (PST)
Received: from stitch.. ([80.71.140.73])
        by smtp.gmail.com with ESMTPSA id y125-20020a636483000000b005bd3d6e270dsm1356002pgb.68.2023.11.30.07.19.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Nov 2023 07:19:52 -0800 (PST)
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
	Cristian Ciocaltea <cristian.ciocaltea@collabora.com>,
	Geert Uytterhoeven <geert@linux-m68k.org>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v2 1/8] riscv: errata: Add StarFive JH7100 errata
Date: Thu, 30 Nov 2023 16:19:25 +0100
Message-Id: <20231130151932.729708-2-emil.renner.berthing@canonical.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231130151932.729708-1-emil.renner.berthing@canonical.com>
References: <20231130151932.729708-1-emil.renner.berthing@canonical.com>
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

Acked-by: Conor Dooley <conor.dooley@microchip.com>
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


