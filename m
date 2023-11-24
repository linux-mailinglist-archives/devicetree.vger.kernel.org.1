Return-Path: <devicetree+bounces-18525-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 234CF7F704C
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 10:46:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id D0D2B2811DE
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 09:46:33 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 864DE156E4;
	Fri, 24 Nov 2023 09:46:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Rqd1oUdO"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x532.google.com (mail-ed1-x532.google.com [IPv6:2a00:1450:4864:20::532])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1C05CD71
	for <devicetree@vger.kernel.org>; Fri, 24 Nov 2023 01:46:29 -0800 (PST)
Received: by mail-ed1-x532.google.com with SMTP id 4fb4d7f45d1cf-5441305cbd1so2283775a12.2
        for <devicetree@vger.kernel.org>; Fri, 24 Nov 2023 01:46:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700819187; x=1701423987; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0QF0pK62CGzX1dbKOGvu49OtUUhFLm+Kt8hr+OBwDAk=;
        b=Rqd1oUdO7UK56SK6/RL/yYWEHtRqbxsd7yD9eA3wdKWwitb92fMLo2gaPakDn+4d1f
         igu+/qZHFgt4H2XfHkc7xGqXHZua3N60v28fX6BOfVwE2xKxjXWnoKjisBdaNGlMieXi
         6ZpaSeQZ8XZ1yUWJxg+nm/WW9PbYsvKB71/cJpZcC+/phMvwHPbYIJr16kde+D7jHNHV
         y592zOpcEzRTIMpNw3aDLYouLTtOi3Jdu1QFVzVG4ORW4vk5hozbFKbjbbGxk/z99nRg
         i251TCp+5sLXzrMFHAcqlrF1BHcvHiFacz4jSn9rUnejwxmaUb1tsVg9nU4zJbI58iII
         fcqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700819187; x=1701423987;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0QF0pK62CGzX1dbKOGvu49OtUUhFLm+Kt8hr+OBwDAk=;
        b=U1DDGuliDRHODw0BsIJp6Tory5OypZpsjH7Hsz4RFqwKQZCHDVm12UwMMsR2NS6kiy
         X4ZYb/CgC+XxXZckk8o3TY4eIz8sH7xHrcu12WRgCeyDbtAUN+9yDzsS6aAj+Gqd/Buj
         9mTAtyryBKsb6Gw1VxdZo//iKRc2sVi9zJTjolXeH26tXkZtWDULOj9PNqxV8PWVJ8iB
         gTqBCxtffrvsD0s89NPnD/tSZ7yT1Yp+wejP1zDpCuP7enj+ezNIbqd21339lBUMJ096
         SKrRxYl3z7/I9OnEG+V5bdT2SQkJlLNh2bJLhmlvBBbR9JM2cJuLSzXuxN4u788+RJNh
         b2tw==
X-Gm-Message-State: AOJu0YxYIYeoc0+rMF/TJ0c3Klu9uRbNN5QrB3FcjA2sedtY8opYaSrW
	w0P46O3s2P/k04mMq815+kUjhw==
X-Google-Smtp-Source: AGHT+IGHU1g0j7+TtCvkg1FvPUSqMrrpDxYvMPRX3FDrVqA7+vUSxKjvSyL9yAs2vkKhdEmVcdQGag==
X-Received: by 2002:a17:906:3b5b:b0:a01:d383:8ba8 with SMTP id h27-20020a1709063b5b00b00a01d3838ba8mr1591374ejf.22.1700819187491;
        Fri, 24 Nov 2023 01:46:27 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.100])
        by smtp.gmail.com with ESMTPSA id kg16-20020a17090776f000b00a0371c6cc23sm1860524ejc.95.2023.11.24.01.46.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Nov 2023 01:46:27 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: intel: minor whitespace cleanup around '='
Date: Fri, 24 Nov 2023 10:46:20 +0100
Message-Id: <20231124094620.58017-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The DTS code coding style expects exactly one space before and after '='
sign.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi b/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
index dcdaf7064953..d66d425e45b7 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex5.dtsi
@@ -73,7 +73,7 @@ intc: interrupt-controller@1d000000 {
 		ranges;
 		#interrupt-cells = <3>;
 		#address-cells = <2>;
-		#size-cells =<2>;
+		#size-cells = <2>;
 		interrupt-controller;
 		#redistributor-regions = <1>;
 		redistributor-stride = <0x0 0x20000>;
@@ -315,7 +315,7 @@ spi0: spi@10da4000 {
 			num-cs = <4>;
 			clocks = <&clkmgr AGILEX5_L4_MAIN_CLK>;
 			dmas = <&dmac0 2>, <&dmac0 3>;
-			dma-names ="tx", "rx";
+			dma-names = "tx", "rx";
 			status = "disabled";
 
 		};
-- 
2.34.1


