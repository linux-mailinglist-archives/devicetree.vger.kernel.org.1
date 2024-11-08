Return-Path: <devicetree+bounces-120181-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 639499C1B46
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 11:52:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 0A16DB2513E
	for <lists+devicetree@lfdr.de>; Fri,  8 Nov 2024 10:52:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0A3CC1EBA07;
	Fri,  8 Nov 2024 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="iebG5QP+"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 282AE1EB9E5
	for <devicetree@vger.kernel.org>; Fri,  8 Nov 2024 10:50:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731063033; cv=none; b=hfR6d3PlwFnNXnkkebzFouSy7zadwjSzfqFdNj3LX0Z04Xo2afEIQkW5PPBzJzjQ3XJmm5hZqvQVOw9zlj8ouLc2J0gxMLUiAYEeqSofwd0Wu9xv8rZisyS7OzNmuOyvDCrvsy0e386AP6+MEhAXj8gOE473fKX0HgiNkLfwNLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731063033; c=relaxed/simple;
	bh=uQfKkEoR32N0d989ZespVXFD+EYoWvBvpUMB8tvOdrg=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=lhbnQjZZk9GXfFHa+E3dEIRtyIPSwh8W8Q3/AFvNd8q4mwtDJ+VNSzSsA3CiLx8duf77rP4tS2GtyE5ZY2dFsVNeCPeVq53kTHIShBy5wERuFktFrOblDv8YqWK1CnN13j8l0dH3Vfu+W0jHi6RZARBP5MxCEaXlrv0uFhapJK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=iebG5QP+; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-a9ed0ec0e92so254266566b.0
        for <devicetree@vger.kernel.org>; Fri, 08 Nov 2024 02:50:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1731063031; x=1731667831; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=RVWcqtL2/z6hHqWPVR/NbA1tV+dgOCVHn7AuI7jqeJ4=;
        b=iebG5QP+iP6Inr3RzPjO2Qc4Mlyw9fr0dqb3vxbEk6xx1YTG7nVwApjBp1mYrppw0s
         rzQis8MO+CHhIWaZw0J25uvRxk2DcbHUNjdqrvX3lC3zTh4VUhk9E/FktQH8sxsALkgs
         ABTKObYNuq4zEnOMi35/rP7Gje6Ad6dK5CduxQ7w9SAhQyWQcA6igVqOnG21riZXE+CO
         bFr6Vm7EzB/sva6webN6ueneeGDS+ySJ3A/VQqNc7dGAaqA+mvSPW0IFpe88RpFs/g8H
         ouyIWQZhN0y/WK+pOBFj0OhWMgx/9uliiY2/qlQ7zu1WC1rYWevGYybR/OkPpNH7SqKO
         +ruw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1731063031; x=1731667831;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RVWcqtL2/z6hHqWPVR/NbA1tV+dgOCVHn7AuI7jqeJ4=;
        b=bn3OFCINhVAeVvDKzPJdlrXCD1GnBEqsnP06q2g4k0P5n6lkDacbwLa/3RMmNU9Bpx
         hwr4tknrT8vL55IwkPHf0gwLUumaZIwJIBQA7+xaLIWo70iO5oyF19zsdO+xqNeyleW7
         xlwRpvnVoWVE3CJMwpuONFNPdczwltkZFiChlT22Atdq1s1rMBxAUPGqOlXGabiDXYf8
         jt3XjQADzmSj0VCHW3O5xGGaSf2l+tua/6xwme1dkOMWHPImVh04SZ2C+z72QyfXydIr
         oCiecdOkLTPGdYOuXbM5wqFHQ97h8WMFcCblIGQw2Oovc9MKVk4i8AgZbVLRP6+CHqcB
         W5Mg==
X-Forwarded-Encrypted: i=1; AJvYcCXlXBGp/GjYsllhAyvsEyQdxXY8nzIvrBptSWKNsIKaXvjyBOrrNK8gMj5dn79EBWucINmOeq2c9mjk@vger.kernel.org
X-Gm-Message-State: AOJu0YxljjJ8qmfRVfj4RdQHyep7WywTjiDsQAr193TbUSFhihvxgwCb
	LBlLI9/ZPFny2rfuDRtcRfYqY+J3BR2cqg/CldFXP4TX3a1RcmIpOBJFt3Wuugg=
X-Google-Smtp-Source: AGHT+IFft6CwH3EePxmvnwbJFYSPRDnYeOJGj9yj1dd1M3Hdcr69b4JKtRaHUgCl0R3MhySJFo0PIQ==
X-Received: by 2002:a17:906:848:b0:a9e:f28c:3749 with SMTP id a640c23a62f3a-a9ef28c3ac0mr107670166b.32.1731063030575;
        Fri, 08 Nov 2024 02:50:30 -0800 (PST)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.28])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9ee0dc574dsm220464866b.101.2024.11.08.02.50.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 08 Nov 2024 02:50:29 -0800 (PST)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	biju.das.jz@bp.renesas.com,
	prabhakar.mahadev-lad.rj@bp.renesas.com,
	lgirdwood@gmail.com,
	broonie@kernel.org,
	magnus.damm@gmail.com,
	linus.walleij@linaro.org,
	perex@perex.cz,
	tiwai@suse.com,
	p.zabel@pengutronix.de
Cc: linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-sound@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v2 08/25] ASoC: sh: rz-ssi: Fix typo on SSI_RATES macro comment
Date: Fri,  8 Nov 2024 12:49:41 +0200
Message-Id: <20241108104958.2931943-9-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241108104958.2931943-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241108104958.2931943-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

The SSI_RATES macro covers 8KHz-48KHz audio frequencies. Update macro
comment to reflect it.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v2:
- none

 sound/soc/renesas/rz-ssi.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/renesas/rz-ssi.c b/sound/soc/renesas/rz-ssi.c
index b4439505929f..a4d65be17eb1 100644
--- a/sound/soc/renesas/rz-ssi.c
+++ b/sound/soc/renesas/rz-ssi.c
@@ -71,7 +71,7 @@
 #define PREALLOC_BUFFER		(SZ_32K)
 #define PREALLOC_BUFFER_MAX	(SZ_32K)
 
-#define SSI_RATES		SNDRV_PCM_RATE_8000_48000 /* 8k-44.1kHz */
+#define SSI_RATES		SNDRV_PCM_RATE_8000_48000 /* 8k-48kHz */
 #define SSI_FMTS		SNDRV_PCM_FMTBIT_S16_LE
 #define SSI_CHAN_MIN		2
 #define SSI_CHAN_MAX		2
-- 
2.39.2


