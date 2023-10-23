Return-Path: <devicetree+bounces-11076-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id DE6B57D4161
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 23:07:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4E82AB20CE8
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 21:07:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DEAD12136C;
	Mon, 23 Oct 2023 21:07:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="uB7dqgWv"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7745121367
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 21:07:11 +0000 (UTC)
Received: from mail-pf1-x42b.google.com (mail-pf1-x42b.google.com [IPv6:2607:f8b0:4864:20::42b])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BCF87D7C
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 14:07:08 -0700 (PDT)
Received: by mail-pf1-x42b.google.com with SMTP id d2e1a72fcca58-6b3c2607d9bso3084253b3a.1
        for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 14:07:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1698095228; x=1698700028; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GEp58o5jHhf4WpbbQN22nWQx0p8/zKOYMNnof7eHdFk=;
        b=uB7dqgWvV0QmjXatbQPRtYihGtkW7reO7o/ncSxsUyohOWO8KxijcbemBK6IBRGD1M
         DGLZPNFjtfagjAX9nj+CT/MUl2sbb9U5WDLCU0JH9TNckSoo4I6Fi/Ewx37wJhM9gF4y
         VmJp2zkHEAqesdiQ52l6tbqHoYrZWp0guCptNZZtQhznNbaVvVsOItS/MCsRLL0Fd7fp
         x/dCwfZ49CqAAGFVBbPaNuyEXkgUNot5scn6KUihRPqPUfLT74I2tInbgBPTIqhIF1tb
         oaETbsHvMm0cc2yL0uqfOADb8K3uuOLn60aRVSsBQmv752Udxc6Abu+b1qiYeT78OHdy
         sQ1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698095228; x=1698700028;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GEp58o5jHhf4WpbbQN22nWQx0p8/zKOYMNnof7eHdFk=;
        b=D96Mtp3WT/vARSqe/A3VKkKhsZdgYWzyWpZduLweswr20Z+U7/LZeLjBcQvgW0i3/W
         h4Xayd8qWk/ANb6s3Gv6ok0hky49NONq+1XeAJPMHldLfIRaVGidKwl1LmpzdWG89xe9
         IBsp7jED06sBFJ5gkW4q5mabr9bjaCUouE9OpwQ7FKv1vzTc09P1l7qN619hL0ysGeM9
         90XEV1r872emKoRysetMBm9ZmjcUi/mFQw2wWnpKocH+yt+wTbsIfgVneH+qzOKucrRW
         W2ceEF1xdg4OXhRe0Db1Xe2nCyOIMlMevtVCk0uGKncTIvyLGrbyLNAzCiSVJDP3vUed
         h19Q==
X-Gm-Message-State: AOJu0YzeDBiRmQ6V9Z7AHow77BVUxBMTNXYVZJNcSObQRUk8W7+R6lv2
	DZj6M9wBN44HYr61Nok8JLh5yQ==
X-Google-Smtp-Source: AGHT+IHg2DJovAjqpJT0F2jI+QTk8wrRUPX+s+/oRc6HVoE46LtmMtUe6Ux/OkxysbrGwtvFIKXQNA==
X-Received: by 2002:a05:6a00:2d8a:b0:6b3:6bc6:68d1 with SMTP id fb10-20020a056a002d8a00b006b36bc668d1mr8143052pfb.11.1698095228217;
        Mon, 23 Oct 2023 14:07:08 -0700 (PDT)
Received: from [127.0.1.1] ([2601:1c2:1800:f680:b9a0:8714:407c:4146])
        by smtp.gmail.com with ESMTPSA id k28-20020aa79d1c000000b006bde2480806sm6573066pfp.47.2023.10.23.14.07.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Oct 2023 14:07:07 -0700 (PDT)
From: Drew Fustini <dfustini@baylibre.com>
Date: Mon, 23 Oct 2023 14:07:02 -0700
Subject: [PATCH v3 1/7] dt-bindings: mmc: sdhci-of-dwcmhsc: Add T-Head
 TH1520 support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231023-th1520-mmc-v3-1-abc5e7491166@baylibre.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1698095224; l=752;
 i=dfustini@baylibre.com; s=20230430; h=from:subject:message-id;
 bh=N4XyeVof9hR52mLfjwIJ/Ek5oPrydhGBm0Gy7EtJsFw=;
 b=XlUrixYReEkCaKM92PMn6rpZ7EjDKaegEVrHET11pyZ3p0c0MiitT0fAg0daqcrqIaa30x6bC
 sTTU5RTzPioADAd93OlwzXiMMqK5rS1emB3BmrleXQS2zxyqd/EnGdi
X-Developer-Key: i=dfustini@baylibre.com; a=ed25519;
 pk=p3GKE9XFmjhwAayAHG4U108yag7V8xQVd4zJLdW0g7g=

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


