Return-Path: <devicetree+bounces-15738-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C2EF7EB82E
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 22:08:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 977CE1F25D44
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 21:08:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4BB442FC49;
	Tue, 14 Nov 2023 21:08:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="l0xNgb/0"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 906D12FC21
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 21:08:13 +0000 (UTC)
Received: from mail-qt1-x836.google.com (mail-qt1-x836.google.com [IPv6:2607:f8b0:4864:20::836])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20331C9
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 13:08:10 -0800 (PST)
Received: by mail-qt1-x836.google.com with SMTP id d75a77b69052e-41cc0e9d92aso36666121cf.3
        for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 13:08:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1699996089; x=1700600889; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Uci5Rd8hU8lrREOeKMYxmj/9fXU4uXy75tEQ4ik3o2A=;
        b=l0xNgb/0CoujKqf7eP6AWhYcZUS1d+z9jkyJm4Ec/F0kZ7S037aBuyaIKfcw9RmWTX
         cc76G8MeKvzxhnyJR0Tw73r2QuDEGMwD374RsMmlj7/fdOIA0LdctVP1utzAgVqZxCih
         P6MZ4cvhOx9aZZgnxpOT72ulyZqaVZnwoZh2xyC/hWwBQQJJ+987pg0qdr/NdTiQpg8z
         fcjlPCr7jgcdTRETlvAI0dZ61Dbf6zWIQOEnbgwKGja0bw/KXMOrjPEzGBiyIzqdGuXH
         c/teHU5nI7NUIWvG9vxxViv/k8vmh3DL0Jd/SLeqrLrkkLH434em2xw90QTKW/GBXsyD
         A83g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699996089; x=1700600889;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Uci5Rd8hU8lrREOeKMYxmj/9fXU4uXy75tEQ4ik3o2A=;
        b=FJS1eM5tlldaKYWi0bu3wgG4rgjHPQBphdiSPUwgIoN7rbSiKkDSadcI5U4loW+lXi
         hc99esw5WyTVxPV8NzfdeDek5vYol7qL1HEOfSIKzLv0X8I9K33m4LaXCrAPMVDiwedy
         2oDnLVz2dZZDE1h9Bxvjk4uXkNxpqtKboWsMJyBlxPwthLxMQ4Mqd5zso8Lf74wQEPyb
         PEn8K2adU6IDMuvcu/Ql8xK9AShskjRsoTPcMCHjv+rr9pZR8REREi0v6AwiSrPtTTCV
         JCPN54DHbSK0X9eOXb8ZzrN9Ht89ZgsZZTqSn0ZIzVWBGVxunPdTabzWKwHPwY+h3wtu
         7XHQ==
X-Gm-Message-State: AOJu0Yzb6sXm8Gkn5Hx6uxGfEKI5hgaiNLTnbdOS8tvBKduJjcdfCg2n
	k2bsi5GOC6yMfS4BazPaVoFEMA==
X-Google-Smtp-Source: AGHT+IELtqGcseH9KGtg5Xky3bC4PfTr1MH+ebRmkZREUQ7jadX9iY5D5h/57CmyMzuvsnZQd+4kcg==
X-Received: by 2002:a05:622a:1ba2:b0:418:1059:dfb9 with SMTP id bp34-20020a05622a1ba200b004181059dfb9mr3732919qtb.1.1699996089212;
        Tue, 14 Nov 2023 13:08:09 -0800 (PST)
Received: from [127.0.1.1] ([12.186.190.1])
        by smtp.gmail.com with ESMTPSA id x16-20020ac85390000000b004198d026be6sm3027549qtp.35.2023.11.14.13.08.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Nov 2023 13:08:08 -0800 (PST)
From: Drew Fustini <dfustini@baylibre.com>
Date: Tue, 14 Nov 2023 16:07:56 -0500
Subject: [PATCH v6 2/7] mmc: sdhci: add __sdhci_execute_tuning() to header
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231114-th1520-mmc-v6-2-3273c661a571@baylibre.com>
References: <20231114-th1520-mmc-v6-0-3273c661a571@baylibre.com>
In-Reply-To: <20231114-th1520-mmc-v6-0-3273c661a571@baylibre.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jisheng Zhang <jszhang@kernel.org>, 
 Adrian Hunter <adrian.hunter@intel.com>, 
 Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Guo Ren <guoren@kernel.org>, Fu Wei <wefu@redhat.com>, 
 Conor Dooley <conor@kernel.org>
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
 Drew Fustini <dfustini@baylibre.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1699996085; l=2108;
 i=dfustini@baylibre.com; s=20230430; h=from:subject:message-id;
 bh=vV7D9g0JyI+aykknduEYFaEeV4K8xwyLfp1qBkgVUvA=;
 b=s3dUn2Hh07UVvYFGxNma4xcng0hYj7RWmtp2h1rfXLw99h7dYdaL/Q4EakZFW3TOJ0DyhdBUC
 ig7y03po7UOAsJW3fKAM449ixnj2l7tl2CDRB9Y2jlFoxPYweKmd06/
X-Developer-Key: i=dfustini@baylibre.com; a=ed25519;
 pk=p3GKE9XFmjhwAayAHG4U108yag7V8xQVd4zJLdW0g7g=

Expose __sdhci_execute_tuning() so that it can be called from the
mmc host controller drivers.

In the sdhci-of-dwcmshc driver, sdhci_dwcmshc_th1520_ops sets
platform_execute_tuning to th1520_execute_tuning(). That function has
to manipulate phy registers before tuning can be performed. To avoid
copying the code verbatim from __sdhci_execute_tuning() into
th1520_execute_tuning(), make it possible for __sdhci_execute_tuning()
to be called from sdhci-of-dwcmshc.

Acked-by: Adrian Hunter <adrian.hunter@intel.com>
Signed-off-by: Drew Fustini <dfustini@baylibre.com>
---
 drivers/mmc/host/sdhci.c | 3 ++-
 drivers/mmc/host/sdhci.h | 1 +
 2 files changed, 3 insertions(+), 1 deletion(-)

diff --git a/drivers/mmc/host/sdhci.c b/drivers/mmc/host/sdhci.c
index ff41aa56564e..c79f73459915 100644
--- a/drivers/mmc/host/sdhci.c
+++ b/drivers/mmc/host/sdhci.c
@@ -2841,7 +2841,7 @@ void sdhci_send_tuning(struct sdhci_host *host, u32 opcode)
 }
 EXPORT_SYMBOL_GPL(sdhci_send_tuning);
 
-static int __sdhci_execute_tuning(struct sdhci_host *host, u32 opcode)
+int __sdhci_execute_tuning(struct sdhci_host *host, u32 opcode)
 {
 	int i;
 
@@ -2879,6 +2879,7 @@ static int __sdhci_execute_tuning(struct sdhci_host *host, u32 opcode)
 	sdhci_reset_tuning(host);
 	return -EAGAIN;
 }
+EXPORT_SYMBOL_GPL(__sdhci_execute_tuning);
 
 int sdhci_execute_tuning(struct mmc_host *mmc, u32 opcode)
 {
diff --git a/drivers/mmc/host/sdhci.h b/drivers/mmc/host/sdhci.h
index f219bdea8f28..a20864fc0641 100644
--- a/drivers/mmc/host/sdhci.h
+++ b/drivers/mmc/host/sdhci.h
@@ -793,6 +793,7 @@ void sdhci_set_bus_width(struct sdhci_host *host, int width);
 void sdhci_reset(struct sdhci_host *host, u8 mask);
 void sdhci_set_uhs_signaling(struct sdhci_host *host, unsigned timing);
 int sdhci_execute_tuning(struct mmc_host *mmc, u32 opcode);
+int __sdhci_execute_tuning(struct sdhci_host *host, u32 opcode);
 void sdhci_set_ios(struct mmc_host *mmc, struct mmc_ios *ios);
 int sdhci_start_signal_voltage_switch(struct mmc_host *mmc,
 				      struct mmc_ios *ios);

-- 
2.34.1


