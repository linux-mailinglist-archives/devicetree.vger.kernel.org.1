Return-Path: <devicetree+bounces-2275-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 233ED7AA6BB
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 03:51:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id A1D4E282484
	for <lists+devicetree@lfdr.de>; Fri, 22 Sep 2023 01:51:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CEF9480D;
	Fri, 22 Sep 2023 01:51:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B161180E
	for <devicetree@vger.kernel.org>; Fri, 22 Sep 2023 01:51:12 +0000 (UTC)
Received: from mail-ua1-x92f.google.com (mail-ua1-x92f.google.com [IPv6:2607:f8b0:4864:20::92f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2856C192
	for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 18:51:11 -0700 (PDT)
Received: by mail-ua1-x92f.google.com with SMTP id a1e0cc1a2514c-7a282340fdfso694332241.0
        for <devicetree@vger.kernel.org>; Thu, 21 Sep 2023 18:51:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1695347470; x=1695952270; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ixTqiGVx8ZXpjpR7y6lRGGFsz7OZ+ET+MZdQ4NUAsFY=;
        b=0BJaoaU9XC4nRsOaixYnv7sFr6wZ+OzRUAHSrqBaxDbv1QODUjSQlNmiXQ3LqlMb9M
         8Rn+AherQVkpmDua9c3SV3IlLaruQkaMlPl00dxge+ZhLpQBt8gVEO140LGysAdrgH08
         sWpMUdsisqUbrNrOanobDjOOQlFYF04tgJiPd/qjw/dhdw+aRGz0oLe+ltzLrPUXMHun
         XaGi5dsH+PMzEWeXsyo7+tYcf5POJ+VbXP8w6Do8ILFFR/t4VmxQhTHMaH7lr16Aw6pJ
         z2ZQ6N7NZk182Y9wOaIVJuFj9vumFEzB8TXosPtzIny3h3i23SrmsB4+2SEBO/RLtSoN
         Lj1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695347470; x=1695952270;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ixTqiGVx8ZXpjpR7y6lRGGFsz7OZ+ET+MZdQ4NUAsFY=;
        b=ooNg/22UI/s/q67awUlSpRz5PGzoB+roRg0w6qaUu1WSKGGl7LSbkmvVqoCD2UOMqP
         2bWCfdzWPAwrYjsRRjiLZyUi6p1YBAu7Y6gO14vXE+mlqVbPmDYspUKueQbryRwQgpqW
         JQmgBWfyEl13DMprS55yiWgm0cLQUCheaV8vOXuugYBBzPMu5eebeKJPAzQ50SmJ26eP
         a54FuS9wEqcrpnoKudf4tHDOpiLbxVK4Dhpf9bvfMI+cxqL03cPXYAQGpA+9EAC0fd/k
         xQ2WMoK9kKiKkNPzDGjVz4qX679pS90P0XHSAwrwd1mUgtfY9fE9esC2hvNHxY/meYwK
         AO8w==
X-Gm-Message-State: AOJu0Ywd+SLgQZny8na3p4wy+7+oTC5wMprtaN7kOrZ85rwgHJ1+0Cbq
	P79nDavAfPPF+KrNa7VFgDPbfQ==
X-Google-Smtp-Source: AGHT+IHj0Lr/Be8FAt3qA85CiKz6e+2ivU8VOj029IZto83YwRL3xxqYZvq42aLws+pyGjAy7HTN1A==
X-Received: by 2002:a05:6102:302c:b0:44d:4d5f:79a4 with SMTP id v12-20020a056102302c00b0044d4d5f79a4mr6139892vsa.20.1695347470206;
        Thu, 21 Sep 2023 18:51:10 -0700 (PDT)
Received: from [127.0.1.1] ([2601:1c2:1800:f680:fa26:6227:be1c:67f0])
        by smtp.gmail.com with ESMTPSA id y10-20020a63b50a000000b0057412d84d25sm1973856pge.4.2023.09.21.18.51.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Sep 2023 18:51:09 -0700 (PDT)
From: Drew Fustini <dfustini@baylibre.com>
Date: Thu, 21 Sep 2023 18:49:49 -0700
Subject: [PATCH 2/6] mmc: sdhci: add __sdhci_execute_tuning() to header
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230921-th1520-mmc-v1-2-49f76c274fb3@baylibre.com>
References: <20230921-th1520-mmc-v1-0-49f76c274fb3@baylibre.com>
In-Reply-To: <20230921-th1520-mmc-v1-0-49f76c274fb3@baylibre.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1695347467; l=1797;
 i=dfustini@baylibre.com; s=20230430; h=from:subject:message-id;
 bh=jbhsItAspw9Y505sHjMPZkocmfoBMXCEAbwf8HhAE8A=;
 b=Y7zI2YH3NQD0FaxiSQ4VnQS2RFqoHRb3cydOhAc2I8kHbSV81T3H1sj3MdzwctHhwtJlv39EH
 CGD7yjz/YJWDePGxpJZ2guSYNA4iKk5mDzTqvA3yDNkTUQHmVRbKFIQ
X-Developer-Key: i=dfustini@baylibre.com; a=ed25519;
 pk=p3GKE9XFmjhwAayAHG4U108yag7V8xQVd4zJLdW0g7g=
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

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
 drivers/mmc/host/sdhci.c | 2 +-
 drivers/mmc/host/sdhci.h | 1 +
 2 files changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/mmc/host/sdhci.c b/drivers/mmc/host/sdhci.c
index ff41aa56564e..fd607058d176 100644
--- a/drivers/mmc/host/sdhci.c
+++ b/drivers/mmc/host/sdhci.c
@@ -2841,7 +2841,7 @@ void sdhci_send_tuning(struct sdhci_host *host, u32 opcode)
 }
 EXPORT_SYMBOL_GPL(sdhci_send_tuning);
 
-static int __sdhci_execute_tuning(struct sdhci_host *host, u32 opcode)
+int __sdhci_execute_tuning(struct sdhci_host *host, u32 opcode)
 {
 	int i;
 
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


