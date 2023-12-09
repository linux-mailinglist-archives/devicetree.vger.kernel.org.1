Return-Path: <devicetree+bounces-23474-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 770D480B58D
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 18:31:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 31A7A280F22
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 17:31:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 3B95418650;
	Sat,  9 Dec 2023 17:31:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="WMGIyLSc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 169921724
	for <devicetree@vger.kernel.org>; Sat,  9 Dec 2023 09:31:00 -0800 (PST)
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-54da61eb366so4090739a12.3
        for <devicetree@vger.kernel.org>; Sat, 09 Dec 2023 09:31:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702143058; x=1702747858; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=GoLq3EEJPl0rK6U/U0JpZxmCRJ4kNGwTlxjeRfmbSX4=;
        b=WMGIyLScIqp1TKlDYnAGwYIxB7KASYtGgqYE4YvPYNk2+8U1aJDr6fTb/TLOUE4f9X
         sr3eG+qKFvKT8PsqyxclCq/Q8bD05LljZ1AXkKh1bQcWtX+uvGSCYMpoOgrXfem1tiwW
         oj8iDRK16w9d/MJk1W5SuOhjsaEkCW0WGPYmEtIWwRAyQowO9OPFYGeN7TWjMtIQYXiX
         gZrEdjsO98XST3aOFAzvIh6xTxXr6K/4CMfQ0ujRdukk0+YBQ9nW4z5sqdKXweJi/9Ru
         use5VVFzqWocZRJKkcIeMoWp5ysJ7P2SwX5iQGNKmaakUmoQtUO9k8frZ8P81RCW6MDa
         aBIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702143058; x=1702747858;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GoLq3EEJPl0rK6U/U0JpZxmCRJ4kNGwTlxjeRfmbSX4=;
        b=VSJa/hb8apgyOf9mIMfRPhL4WEzi4u7ctM1Xuw09pckaymk6CQ16lnFOh2qql3JEZr
         5F4UfAxu/o0fRSyvJhNEOtn/TmvCvi1IuxcZl3dNrR+S3kFVGQwOEL+ZfoDHoLEGN/8d
         AXaxhD3b5A7K1GdCYCPIwjRDC3O8qB4xB7iTxWiGAXrbTG5+rxlM/1dPQigJ1Q5tSXt8
         cjO/vDcUkmOceSHGPOS6tkhZ/6KWbgXbvMcxw0dVrl1pfgTKeXCUzp8mw1gBzf9FRJQH
         4rY6ksQES9eUQ8JCcwi8lSIArsiUwdX9MyGd9JNnaHlmmeXU750q1SaZ5ztyj1UzjpsG
         ewQw==
X-Gm-Message-State: AOJu0YyzFukhyEiDTdT++5k7kkyRMWViqbyjJ0eOD7hOj1UN+d2v8csy
	bricHrX0fIwXzcBTmB4sgdlQnw==
X-Google-Smtp-Source: AGHT+IHjAJHl2crpfXerhjR08ZgoXaS56wR9rWhvwR51KJJbW+IyC41PHB3hvMF5jJ1L+4JgjxdHRQ==
X-Received: by 2002:a50:e601:0:b0:54c:4837:93fe with SMTP id y1-20020a50e601000000b0054c483793femr1485133edm.69.1702143058592;
        Sat, 09 Dec 2023 09:30:58 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id m26-20020a50931a000000b0054ce5c00e74sm1926621eda.88.2023.12.09.09.30.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Dec 2023 09:30:58 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 09/15] arm64: dts: socfpga: stratix10_socdk: align NAND chip name with bindings
Date: Sat,  9 Dec 2023 18:30:38 +0100
Message-Id: <20231209173044.257684-9-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231209173044.257684-1-krzysztof.kozlowski@linaro.org>
References: <20231209173044.257684-1-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Bindings expect NAND child node name to match certain patterns:

  socfpga_agilex_socdk_nand.dtb: nand-controller@ffb90000: Unevaluated properties are not allowed ('flash@0' was unexpected)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_nand.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_nand.dts b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_nand.dts
index 88e1afdb2583..81d0e914a77c 100644
--- a/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_nand.dts
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10_socdk_nand.dts
@@ -102,7 +102,7 @@ phy0: ethernet-phy@0 {
 &nand {
 	status = "okay";
 
-	flash@0 {
+	nand@0 {
 		reg = <0>;
 		#address-cells = <1>;
 		#size-cells = <1>;
-- 
2.34.1


