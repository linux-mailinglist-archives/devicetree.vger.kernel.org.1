Return-Path: <devicetree+bounces-14918-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EC1D7E7904
	for <lists+devicetree@lfdr.de>; Fri, 10 Nov 2023 07:14:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7FD621C20E09
	for <lists+devicetree@lfdr.de>; Fri, 10 Nov 2023 06:14:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9F454C8E;
	Fri, 10 Nov 2023 06:14:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="eyoiIELq"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96DA05C9A
	for <devicetree@vger.kernel.org>; Fri, 10 Nov 2023 06:14:19 +0000 (UTC)
Received: from mail-qk1-x733.google.com (mail-qk1-x733.google.com [IPv6:2607:f8b0:4864:20::733])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 866145257
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 22:14:18 -0800 (PST)
Received: by mail-qk1-x733.google.com with SMTP id af79cd13be357-77a277eb084so112795685a.2
        for <devicetree@vger.kernel.org>; Thu, 09 Nov 2023 22:14:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1699596857; x=1700201657; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Uci5Rd8hU8lrREOeKMYxmj/9fXU4uXy75tEQ4ik3o2A=;
        b=eyoiIELq+fwZMCWVBTIz8Nul2d/B/wJ/rhsDlLn9xWSWi2Gv7ldJ8bWpcFVaFDh5os
         PnxC8De5eNOiNryyFX8yAXgbANwRM6aMAb6LxLyDAJWR0rFen/Re6a4ShL3NV4g1q/UZ
         PbVinbeU1YK8uU8+IbrlfnS5Va9RCGvwHMQ9/4krWOb7OBBm7hKgZiduV+THQA14wHF2
         HAfi7OPbG5u1zQkEDjBGf9rvMuU8hXEj82TCyzReuLje4m5jNFJGOerLyefKUPkUr/3S
         K58aSZnsib7ERJL0jfJNdQFU7lwI6NwRNFBlfxSPrFCvmkSKIXuEUnNFPIC+MR0z2LCu
         5Txw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699596857; x=1700201657;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Uci5Rd8hU8lrREOeKMYxmj/9fXU4uXy75tEQ4ik3o2A=;
        b=p7Sff4lhY2Ly4y8nfDw1FeAuOfdYaqbXwXoGNj6f5maMqW5/rbnDjBeHhI73vvQd3J
         coKX5WehXe2t0wRHyCQDrRdYE04vKE/HBnWCWuq+zy2DqstpfI3yFM93Widk3B8gfebb
         MUOwyVLeEibH7CNPm2VSaPrdw5AKHgtQ3JokmDjnE+Zg3Rgm8S0pvY3TybvBmiE+9LtH
         WQWxNrbw8ckQk9RXQd5VkrYXS8ZuRIH89Grk013LTmdgBL9IfBHKF624EyZehCEMi/qG
         DOhcTSLaHHHWJAcVrkkuPWzUvm0pfdP41GFQV4iJXBr4U0TYVPNqal9mpeTuWfRqIaRU
         oZyw==
X-Gm-Message-State: AOJu0YxgBNg2wJrkI0zlUogPgiAfRpmtqhYWX/l8Fmin890YNfGyT8rI
	KSMSujvUTAWl9isW96wET1zgGcV6oXZ1w3rRiwTMCQ==
X-Google-Smtp-Source: AGHT+IEm6KXk26L3ye2gZwOvNYVy1AjnP5ci3hCfE3ga9E1mFtlkQmutISdGpl9sbvobplDpccZsqw==
X-Received: by 2002:a17:902:d506:b0:1cc:3825:7ba2 with SMTP id b6-20020a170902d50600b001cc38257ba2mr8168039plg.4.1699594949041;
        Thu, 09 Nov 2023 21:42:29 -0800 (PST)
Received: from [127.0.1.1] ([2601:1c2:1800:f680:2071:4479:98b8:cc69])
        by smtp.gmail.com with ESMTPSA id ix22-20020a170902f81600b001b8a00d4f7asm4498845plb.9.2023.11.09.21.42.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Nov 2023 21:42:28 -0800 (PST)
From: Drew Fustini <dfustini@baylibre.com>
Date: Thu, 09 Nov 2023 21:41:12 -0800
Subject: [PATCH v5 2/7] mmc: sdhci: add __sdhci_execute_tuning() to header
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231109-th1520-mmc-v5-2-018bd039cf17@baylibre.com>
References: <20231109-th1520-mmc-v5-0-018bd039cf17@baylibre.com>
In-Reply-To: <20231109-th1520-mmc-v5-0-018bd039cf17@baylibre.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1699594943; l=2108;
 i=dfustini@baylibre.com; s=20230430; h=from:subject:message-id;
 bh=vV7D9g0JyI+aykknduEYFaEeV4K8xwyLfp1qBkgVUvA=;
 b=wiXFL4D9Q3411BhcGKUB1ePUooVyFCo6lIXJGCjVRVhgVo/MthWkxzFvbNGGV91mDj8tIZhb9
 3ad00+5H/oQC96F88xLLDDeHjyQTU7R4MEvXiEmQLL2+zlo1saaRuND
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


