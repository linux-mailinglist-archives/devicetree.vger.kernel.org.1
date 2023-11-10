Return-Path: <devicetree+bounces-14921-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 347757E790D
	for <lists+devicetree@lfdr.de>; Fri, 10 Nov 2023 07:14:49 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E226B281810
	for <lists+devicetree@lfdr.de>; Fri, 10 Nov 2023 06:14:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31F9E6130;
	Fri, 10 Nov 2023 06:14:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="znspnAn5"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 826CD5684
	for <devicetree@vger.kernel.org>; Fri, 10 Nov 2023 06:14:38 +0000 (UTC)
Received: from mail-qv1-xf2f.google.com (mail-qv1-xf2f.google.com [IPv6:2607:f8b0:4864:20::f2f])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 11166526F
	for <devicetree@vger.kernel.org>; Thu,  9 Nov 2023 22:14:36 -0800 (PST)
Received: by mail-qv1-xf2f.google.com with SMTP id 6a1803df08f44-66d17bdabe1so11314566d6.0
        for <devicetree@vger.kernel.org>; Thu, 09 Nov 2023 22:14:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1699596875; x=1700201675; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=y6aHgY7dVjq1emLLBr9I0qdToBO/wwiRz9A+uR2RPk0=;
        b=znspnAn5EZ6+fEciJfTXn+6JeawLHGdJPieU1+qggaOzTOp6KYv6kAUfqqQcQ8MHQW
         9FXesMfAq+i1VmcpfmtdYa3sIa6J6bHNeasddltdWcBXActcbaJSz8DpGWaURz+RD/3B
         yx0OY094MjDoe3OElVzcF2d7ZKjFii5OFv99lhslmVpQM0emsX+yPf1W0/TloNzrXjc9
         WFQzI7NJvXzrUcloT+K0+3J5ay1uK7/syvoef9cv+wfuVS1z/sTxc9mzBBwLv2upxENp
         D1fX3wFfSUo9QGgAzrKu5YwZltJ319APQLGANR+T99ZabAK2KHg0IKHGwcJH5lQGZHPY
         P1bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699596875; x=1700201675;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=y6aHgY7dVjq1emLLBr9I0qdToBO/wwiRz9A+uR2RPk0=;
        b=YPHsfiXP+iSMnvD6Pj/n/+e6oa/CzIOSHJsSSFO99xpuSejQRDNAJLlVb7np51WkNf
         FH+oy+/iZj62weeZnHZNfRB8ofRMasVlqznZ3pOPKahxn++c0VaggjbCBrlru9n6TvUa
         NJsEkaM8i1bg/mrOchQ+ssXYgkIeK7IJU0pDjDq4Sb0wJIODhpykfRdCwPABaRYjY99E
         PrnPsNvc4a1WQRVLvj7difdaN0xesWw+ah8JJuX88a87tg9WYQtvlVpEaTokLoC8R/hO
         DWmjgtIdrC0SHPZpNShiZP3+pirNIrCMwHii83q+aEP8KhU06eG59CywdOl/kL0pZZmx
         HmmQ==
X-Gm-Message-State: AOJu0YyKH4SlIPbjHL2dc5tdhWae8nqViwtF99qoRbh1pDQSr2Ds+ymG
	vAF66apbFdITDCr/3zqvImBtyAm3TbeS9YXDv9/67g==
X-Google-Smtp-Source: AGHT+IFpFkfHNHBYhJCAUHAcswVdjopAz96NNqXsNMtnhZD1PCclguvJ4ptzgVdeIGhBXO4+11fEaA==
X-Received: by 2002:a17:902:d346:b0:1ce:a0b:7314 with SMTP id l6-20020a170902d34600b001ce0a0b7314mr525866plk.61.1699594947284;
        Thu, 09 Nov 2023 21:42:27 -0800 (PST)
Received: from [127.0.1.1] ([2601:1c2:1800:f680:2071:4479:98b8:cc69])
        by smtp.gmail.com with ESMTPSA id ix22-20020a170902f81600b001b8a00d4f7asm4498845plb.9.2023.11.09.21.42.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Nov 2023 21:42:27 -0800 (PST)
From: Drew Fustini <dfustini@baylibre.com>
Date: Thu, 09 Nov 2023 21:41:11 -0800
Subject: [PATCH v5 1/7] dt-bindings: mmc: sdhci-of-dwcmhsc: Add T-Head
 TH1520 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231109-th1520-mmc-v5-1-018bd039cf17@baylibre.com>
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
 Drew Fustini <dfustini@baylibre.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1699594943; l=855;
 i=dfustini@baylibre.com; s=20230430; h=from:subject:message-id;
 bh=sdi2GBRazAXQCmzsLeFCtwwLCyPq9k+jdkf3IoMSdfo=;
 b=ugpumf9QoPxX+bSKCeojrp6bqXrSAnaGYhOubo1XOKWuUAe+aPIamwK96g3G9BlWXJHvQsys5
 SM5IH7XCovZCPWuPcsoCJ0439BkT26SbduFWhm4sFfHz07D59YfWw5g
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


