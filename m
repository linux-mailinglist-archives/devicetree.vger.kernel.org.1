Return-Path: <devicetree+bounces-9406-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id D487F7CCE66
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 22:45:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7D47B1F234FC
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 20:45:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7BB462D7BE;
	Tue, 17 Oct 2023 20:45:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="XyUH0exz"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE764310A
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 20:45:22 +0000 (UTC)
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7E913101
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 13:45:20 -0700 (PDT)
Received: by mail-pl1-x62e.google.com with SMTP id d9443c01a7336-1c9c5a1b87bso42845495ad.3
        for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 13:45:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1697575520; x=1698180320; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GEp58o5jHhf4WpbbQN22nWQx0p8/zKOYMNnof7eHdFk=;
        b=XyUH0exzrO3kCOpB6aFZBQRuV8LtEBstVdbWewp2MZTCHgkZ3KJpDnVWzwUt2xuWm/
         yMOYekAZLAofK9S9AP5V0n0IUUFjFfzp2zGCaCkjYQhU4vP9581z6bEBEy5kIbcV9tWA
         yZthFyBkEpuSv2eCzXmxBMPWnFG0ZnN+ijify2YXn/k9gi4nm3YkZU16CNSIVh2Et9wm
         fOgYHEPECBS8QmD6M3yaSMmpfTU96H8RN5lg9cPRNOkjnaj8hAWbTEBBevicu2awPOLX
         EibzkbA64gGJRZJ2DCuDpvHolRX8ON0K6TXgxxjRSVeLEf+aYHtWN5gWfYYMJSWP35w9
         OXaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697575520; x=1698180320;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GEp58o5jHhf4WpbbQN22nWQx0p8/zKOYMNnof7eHdFk=;
        b=SEfoZryqpK75H8LANbQXaPeu/ivfQD8aJnOba2Pq+8FLS3YrfAi9uXPgP0Y2TKNqS/
         xQtX6Ei2vLS0JnHzWNUOP2fdbsYzby1358rRrrH5+8eehn/KPQSVm+H+iEBcXoipnSgZ
         r8Z5UefN458AMM8XQWMPooEt/eINVVO4zBN4rsmehsXQBj9s6xXXQchb8NexiaGHOWu/
         lZeToW65CztRj+5jyjdXqGziYO4gVr1atNG3EQTvFlOymG4Ju+AyMFs+YGP3lwdPMBcG
         oLSdOesXW4nOVMH1PLAb3wULqVglrsiHxQ/BvYe6Z9x9PdNn/CAW4lelAzVVv1oz8gER
         ZoSw==
X-Gm-Message-State: AOJu0Yz2oPTj1KAHCGb3jlP/xoZxYi7mQHO4NmQ55WWS5AwKbqCsZLA6
	Qh7sLQURyd8n5kgcdoD+n+p+jw==
X-Google-Smtp-Source: AGHT+IFp9pFfIQEXNfCKkC3vHINl59IS1m8/a0WaUgexa1L64KCFZa0B5E8Uxe+pqG+nf7JdZ+AKhg==
X-Received: by 2002:a17:90a:800c:b0:27d:5ef6:2862 with SMTP id b12-20020a17090a800c00b0027d5ef62862mr3354510pjn.13.1697575519879;
        Tue, 17 Oct 2023 13:45:19 -0700 (PDT)
Received: from [127.0.1.1] ([2601:1c2:1800:f680:51d6:dcd6:63ef:52e9])
        by smtp.gmail.com with ESMTPSA id w3-20020a17090a6b8300b0027b168cb011sm1906553pjj.56.2023.10.17.13.45.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 17 Oct 2023 13:45:19 -0700 (PDT)
From: Drew Fustini <dfustini@baylibre.com>
Date: Tue, 17 Oct 2023 13:43:47 -0700
Subject: [PATCH v2 1/7] dt-bindings: mmc: sdhci-of-dwcmhsc: Add T-Head
 TH1520 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231017-th1520-mmc-v2-1-4678c8cc4048@baylibre.com>
References: <20231017-th1520-mmc-v2-0-4678c8cc4048@baylibre.com>
In-Reply-To: <20231017-th1520-mmc-v2-0-4678c8cc4048@baylibre.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1697575515; l=752;
 i=dfustini@baylibre.com; s=20230430; h=from:subject:message-id;
 bh=N4XyeVof9hR52mLfjwIJ/Ek5oPrydhGBm0Gy7EtJsFw=;
 b=+Ob+gpIgFt2gGa83X788FD8dq4mXWEM1rO3tlCBf2HwM5l8WNPiB40d3qp2Xd4waLgjW94rAb
 nu/B5dApi0JB/KK0nc1z5V5Bw3NqrLUU4ThP/xnLvrDfw+Z49RjOadw
X-Developer-Key: i=dfustini@baylibre.com; a=ed25519;
 pk=p3GKE9XFmjhwAayAHG4U108yag7V8xQVd4zJLdW0g7g=
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add compatible value for the T-Head TH1520 dwcmshc controller.

Signed-off-by: Drew Fustini <dfustini@baylibre.com>
---
 Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
index a43eb837f8da..42804d955293 100644
--- a/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
+++ b/Documentation/devicetree/bindings/mmc/snps,dwcmshc-sdhci.yaml
@@ -19,6 +19,7 @@ properties:
       - rockchip,rk3568-dwcmshc
       - rockchip,rk3588-dwcmshc
       - snps,dwcmshc-sdhci
+      - thead,th1520-dwcmshc
 
   reg:
     maxItems: 1

-- 
2.34.1


