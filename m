Return-Path: <devicetree+bounces-15689-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8CD847EB41B
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 16:49:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 45E31281219
	for <lists+devicetree@lfdr.de>; Tue, 14 Nov 2023 15:49:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CE1D641773;
	Tue, 14 Nov 2023 15:49:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43B0641770
	for <devicetree@vger.kernel.org>; Tue, 14 Nov 2023 15:49:21 +0000 (UTC)
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B132172C;
	Tue, 14 Nov 2023 07:49:16 -0800 (PST)
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-52bd9ddb741so8915011a12.0;
        Tue, 14 Nov 2023 07:49:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1699976954; x=1700581754;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8bC0gh5GtET+GY1POn83wCGMR6SSUdpI6TGA9ZU4YvM=;
        b=GVupiTHviyl7vEUphbr5I2TK8Rs1nURtxoUssbARItdl4CU5PROA+SLTb4Zp3D021b
         QCRJKkWMrWV7Wx+U/FgSSIUo/onv7vnZxXmmxWEJjMLKDteAKKtsO4T+JZhlQqHM4UTK
         8NHeeuu2UevEGlcUL3e85JaEAhOXBRwB9APVXmUcLU2qcIOJ3HTovRJRuWIfuFOMnA9m
         Enj6oaROnliG663o5dZ/TO3kL+lKi+ocGKuxwtzOqZra69poz88cqEuLJYb45A57uKbv
         2wODTaPslxqMpemOTVVuuzMlisndPFbVjRekucZULZQpA0+ra0+vk2dRbmsH7/cqa7zT
         BkNQ==
X-Gm-Message-State: AOJu0Yw1oLTJWQMRpYUSR7hGvZ8nH5Le0bIWYjUrq99kmhW+9M7+W+kE
	tEtBmAR8KVf/s/vOsholozk=
X-Google-Smtp-Source: AGHT+IENt1pIK+n+wp8H+la5uVQPNjn4/lEW7n+Ls2HMUqOuHCwh3SZzMgv4ZZ05LH+OzNrW4jjdfA==
X-Received: by 2002:aa7:d889:0:b0:543:5741:c9cd with SMTP id u9-20020aa7d889000000b005435741c9cdmr6861999edq.34.1699976954369;
        Tue, 14 Nov 2023 07:49:14 -0800 (PST)
Received: from ramallet.home (cst-prg-38-127.cust.vodafone.cz. [46.135.38.127])
        by smtp.gmail.com with ESMTPSA id v22-20020aa7d816000000b00533e915923asm5211770edq.49.2023.11.14.07.49.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Nov 2023 07:49:13 -0800 (PST)
From: Tomeu Vizoso <tomeu@tomeuvizoso.net>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Neil Armstrong <neil.armstrong@linaro.org>,
	Kevin Hilman <khilman@baylibre.com>,
	Jerome Brunet <jbrunet@baylibre.com>,
	Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: Tomeu Vizoso <tomeu@tomeuvizoso.net>,
	Lucas Stach <l.stach@pengutronix.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-amlogic@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v2] arm64: dts: amlogic: meson-g12-common: Set the rates of the clocks for the NPU
Date: Tue, 14 Nov 2023 16:48:43 +0100
Message-ID: <20231114154843.1262225-1-tomeu@tomeuvizoso.net>
X-Mailer: git-send-email 2.41.0
In-Reply-To: <20231106092202.11127-1-tomeu@tomeuvizoso.net>
References: <20231106092202.11127-1-tomeu@tomeuvizoso.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Otherwise they are left at 24MHz and the NPU runs very slowly.

Signed-off-by: Tomeu Vizoso <tomeu@tomeuvizoso.net>
Suggested-by: Lucas Stach <l.stach@pengutronix.de>
Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>

---

v2: Fix subject (Jerome Brunet)
---
 arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
index ff68b911b729..9d5eab6595d0 100644
--- a/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-g12-common.dtsi
@@ -2502,6 +2502,9 @@ npu: npu@ff100000 {
 		clocks = <&clkc CLKID_NNA_CORE_CLK>,
 			 <&clkc CLKID_NNA_AXI_CLK>;
 		clock-names = "core", "bus";
+		assigned-clocks = <&clkc CLKID_NNA_CORE_CLK>,
+				  <&clkc CLKID_NNA_AXI_CLK>;
+		assigned-clock-rates = <800000000>, <800000000>;
 		resets = <&reset RESET_NNA>;
 		status = "disabled";
 	};
-- 
2.41.0


