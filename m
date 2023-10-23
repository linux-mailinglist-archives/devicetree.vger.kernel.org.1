Return-Path: <devicetree+bounces-11079-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 248AC7D4162
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 23:07:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 54C391C20AA1
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 21:07:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 76A9A21347;
	Mon, 23 Oct 2023 21:07:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="uFvndL+H"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97E17219EF
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 21:07:14 +0000 (UTC)
Received: from mail-pf1-x429.google.com (mail-pf1-x429.google.com [IPv6:2607:f8b0:4864:20::429])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C748BD7F
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 14:07:10 -0700 (PDT)
Received: by mail-pf1-x429.google.com with SMTP id d2e1a72fcca58-6ba172c5f3dso3089957b3a.0
        for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 14:07:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1698095230; x=1698700030; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=l++Rbeq1YJ0LFMw4HKx/yirX8siQghzI93qQn3u3z5E=;
        b=uFvndL+HtOVx0wazlcdBIIJTUJDU3maM+DndsgPAxABr6pLyBk1GnYdQbo94Femj33
         yk3r6M/eZrZn8PBdRF/+AcqoNEXhV7dQfgHQ3cf5qV1sHceVMAFiQcMt2x2uxczMHDTL
         XRwx3FGMCK5gCM4JHXLeMyL1YderUiaNmiE9KiW8Dz/mgDY1p5yfhZZf1BmlllicduWI
         pd8mvqqpwfg7TO8JAapZzrDBuYMaotYZjcZ19nz8nYyyV37Ah0ICt3BqU5DYL70W/8KA
         ARp5GOeAx6SXuhbb8pl9miivCQsbOR5SrQHRElA1RG4FL6GwpVlSjqvUBxCskR8k8jUH
         2mQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698095230; x=1698700030;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=l++Rbeq1YJ0LFMw4HKx/yirX8siQghzI93qQn3u3z5E=;
        b=ABjWvEAPT0MVvplU3HtTuPv+tG+gHYg74cuLLKJnQ1wv9ueklbqnhuN2t0S/vRSM7d
         EuRAJapkrU2Va2SQfhA8U62l5M5GNqsuQCsG0ovq0TA4e0PJEMfrZQNc3ejieccm2au4
         b3RqpT/O7+thAy07O+a1LkDij27urFXBYghdS06s8tv5s2EJT1xfnEoBQsmS8Vz9IU6/
         AZl0TEGnxJ8JV2BkO3L0ZqnshIJQYJ2bgrgIWwsm9dmz2/roDZblDhyU9bJAhqqWqz8t
         HmBZq8LhaHcq0yBc26EMBnsE01oQVEhZrLksH5cnZ1VLmVce76p3LmTdhgqfVGrFYQ+j
         TnwA==
X-Gm-Message-State: AOJu0YyuE+f8LcSkUNOWp3FIe+nZPtjsvfm/NhVoHTHpSU9Iy2mcWNdz
	plYTJRRnn9ILD/zxhk1iK0avPQ==
X-Google-Smtp-Source: AGHT+IGAhx10DMyaJYgFkIRGTBp7l5c3emEnut4iVOb1UIkrslhLtaOGQkiMZF/TZbUBX06uTTid2A==
X-Received: by 2002:a05:6a00:134b:b0:690:422f:4f17 with SMTP id k11-20020a056a00134b00b00690422f4f17mr9329657pfu.4.1698095230237;
        Mon, 23 Oct 2023 14:07:10 -0700 (PDT)
Received: from [127.0.1.1] ([2601:1c2:1800:f680:b9a0:8714:407c:4146])
        by smtp.gmail.com with ESMTPSA id k28-20020aa79d1c000000b006bde2480806sm6573066pfp.47.2023.10.23.14.07.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Oct 2023 14:07:10 -0700 (PDT)
From: Drew Fustini <dfustini@baylibre.com>
Date: Mon, 23 Oct 2023 14:07:03 -0700
Subject: [PATCH v3 2/7] mmc: sdhci: add __sdhci_execute_tuning() to header
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231023-th1520-mmc-v3-2-abc5e7491166@baylibre.com>
References: <20231023-th1520-mmc-v3-0-abc5e7491166@baylibre.com>
In-Reply-To: <20231023-th1520-mmc-v3-0-abc5e7491166@baylibre.com>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Jisheng Zhang <jszhang@kernel.org>, 
 Adrian Hunter <adrian.hunter@intel.com>, Guo Ren <guoren@kernel.org>, 
 Fu Wei <wefu@redhat.com>, Paul Walmsley <paul.walmsley@sifive.com>, 
 Palmer Dabbelt <palmer@dabbelt.com>, Albert Ou <aou@eecs.berkeley.edu>, 
 Conor Dooley <conor@kernel.org>
Cc: Robert Nelson <robertcnelson@beagleboard.org>, 
 Jason Kridner <jkridner@beagleboard.org>, Xi Ruoyao <xry111@xry111.site>, 
 Han Gao <gaohan@iscas.ac.cn>, Icenowy Zheng <uwu@icenowy.me>, 
 linux-mmc@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org, 
 Drew Fustini <dfustini@baylibre.com>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1698095224; l=2057;
 i=dfustini@baylibre.com; s=20230430; h=from:subject:message-id;
 bh=O0pl7kPWnknxTc+1ciCix3vi2PmSyK8UTzQqhv8rZP0=;
 b=2M/0RlZn/69xiXATrzBfiSFScyxwOg2KlSuXzWRniQ5zD9O5bgp0P38TJusbwZ8FFlU4Swp9/
 0oC2SozqlS+D21SOjAte8vQCnRMpvZqWnzDIIfnnaSe57pXae58DgD5
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


