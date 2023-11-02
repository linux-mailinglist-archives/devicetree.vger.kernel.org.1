Return-Path: <devicetree+bounces-13524-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 56B7C7DEAD6
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 03:49:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0811C28193B
	for <lists+devicetree@lfdr.de>; Thu,  2 Nov 2023 02:49:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 326D615D2;
	Thu,  2 Nov 2023 02:49:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="AJ7HWqub"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28DEA17FF
	for <devicetree@vger.kernel.org>; Thu,  2 Nov 2023 02:49:11 +0000 (UTC)
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com [IPv6:2607:f8b0:4864:20::631])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2A3C012C
	for <devicetree@vger.kernel.org>; Wed,  1 Nov 2023 19:49:10 -0700 (PDT)
Received: by mail-pl1-x631.google.com with SMTP id d9443c01a7336-1cc3bb32b5dso3660195ad.3
        for <devicetree@vger.kernel.org>; Wed, 01 Nov 2023 19:49:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1698893349; x=1699498149; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=y6aHgY7dVjq1emLLBr9I0qdToBO/wwiRz9A+uR2RPk0=;
        b=AJ7HWqubkrFSUTfRothSOiE8vpaCzVASsCrmbX7k1rIVEp+dgi5Wp+ElbjimtNKm9X
         KIurZ96vmtpdBoSJCzfxXH57MDLrfNlozb9toQPH7dnoPrM3Q2sr3fbGU/K/Fc5OxkVe
         JcJevzyfKWKNK0qOGAXpcqY7xxs61hM+Sx3/W9C6O5/7N3jIM6IZIu4IWLE76baQQj1S
         rP0L6Y71KRhBbnw0OjqqJRZnL1kI+Qy1Eqc3nHL7ocMkn6zY5hpsPFLvyvgUtchRSJWC
         tYOllm4mTJ+ijtekrZu+OLkRnPysVJeayI7MHfZX+3r6UF8nCTzX/KB7UoUZBjx3yGI/
         NZ/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698893349; x=1699498149;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=y6aHgY7dVjq1emLLBr9I0qdToBO/wwiRz9A+uR2RPk0=;
        b=Jgpucz5k8kSToxgX0wln8zS7GRaY5Kjmbrpq52k9AcApo61YbCyKyHT+dWqIvbYuKa
         43U99UMZ3mP/GK7jrgbiyem7TRhc/MSAKtLWiPtCrwbPJW/DAt/KBiCQSBPdfNk+2ueO
         2BdTtfZLRfwci4sAmkAkOo3Wn4Ewg6FI5Ln/dwhN2L1HIeZr9rWYS+3dAmN/EXorivSe
         p1srp0huqw9/ZL1v7o3385asSF3wbpfva2/CMJMzOzIjVVlRHaf+sIcOae0B+qpIn1IX
         vXYQLj83E60+QMwn83I9NxP6FKaw6Mi2BCrUq/ZAARX+OMPWwIO9wD6QMzp/lawMKpUU
         LGAQ==
X-Gm-Message-State: AOJu0YwVtZBZT/Zj5Spk4fbaWpuooLOfDZ/2m9ZMdmdiDRDdJW/1fzM6
	Br79YKIY48hwrwcCxokTqW9IcA==
X-Google-Smtp-Source: AGHT+IFJRRc6LBUGsDW9ZAGafzrBM0gNGpEPwmu96hSFHU2mmeWEtKtj688InhZr3neYv/dkS/dxwA==
X-Received: by 2002:a17:902:c78c:b0:1b8:954c:1f6 with SMTP id w12-20020a170902c78c00b001b8954c01f6mr16004599pla.36.1698893349593;
        Wed, 01 Nov 2023 19:49:09 -0700 (PDT)
Received: from [127.0.1.1] ([2601:1c2:1800:f680:7e4c:4d4e:6943:bc0f])
        by smtp.gmail.com with ESMTPSA id n4-20020a170902e54400b001b850c9d7b3sm1925787plf.249.2023.11.01.19.49.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Nov 2023 19:49:09 -0700 (PDT)
From: Drew Fustini <dfustini@baylibre.com>
Date: Wed, 01 Nov 2023 19:48:52 -0700
Subject: [PATCH v4 1/7] dt-bindings: mmc: sdhci-of-dwcmhsc: Add T-Head
 TH1520 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231101-th1520-mmc-v4-1-86e0216b5994@baylibre.com>
References: <20231101-th1520-mmc-v4-0-86e0216b5994@baylibre.com>
In-Reply-To: <20231101-th1520-mmc-v4-0-86e0216b5994@baylibre.com>
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
 Drew Fustini <dfustini@baylibre.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1698893345; l=855;
 i=dfustini@baylibre.com; s=20230430; h=from:subject:message-id;
 bh=sdi2GBRazAXQCmzsLeFCtwwLCyPq9k+jdkf3IoMSdfo=;
 b=H4G0SP7skk6Qkcbi+uapfpuNbAmQTW/dR3ZoBNmECYpgjatiRsb97dClg0sTNqpZ4Jlitliv7
 IQ3UFs6gNtTCBp7USBUipzcGlL3y+nqr907S94xunPmACrwIsm57q05
X-Developer-Key: i=dfustini@baylibre.com; a=ed25519;
 pk=p3GKE9XFmjhwAayAHG4U108yag7V8xQVd4zJLdW0g7g=

Add compatible value for the T-Head TH1520 dwcmshc controller.

Acked-by: Guo Ren <guoren@kernel.org>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
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


