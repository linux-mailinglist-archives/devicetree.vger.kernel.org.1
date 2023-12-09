Return-Path: <devicetree+bounces-23481-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 78EEC80B59E
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 18:31:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id A9DE11C208ED
	for <lists+devicetree@lfdr.de>; Sat,  9 Dec 2023 17:31:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 99B2018AF3;
	Sat,  9 Dec 2023 17:31:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="W03SVWtK"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2B5D1FF1
	for <devicetree@vger.kernel.org>; Sat,  9 Dec 2023 09:31:13 -0800 (PST)
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-50be24167efso3591185e87.3
        for <devicetree@vger.kernel.org>; Sat, 09 Dec 2023 09:31:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1702143066; x=1702747866; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=6UZjoos5Lrfvg2O4a65EpOHTiGlhzjBQV5qkVHxBNkM=;
        b=W03SVWtKfuj9m52UCGXsQuViMsuA3cOpkbj4d7dWpynHvS4zaB68lgmp8aAQaMWTJN
         uud2ISUnsSHCUrKpZ4BI47nUBPzMVXsjytDxSO+X0dQVRfbIt/JLozoq3UNhsXFTFI5g
         MAb6mcFNnruoIzppK9sloM/X3DMspRUo5eL+lhC5/BW7YqA0+F22XPavFXhye6Mg+HNQ
         QFaQ+gjMrX3M56XVvDcBoWFN0CkTVFx1pxoZHwfdKoIsQgXraPgl9V7BnyxhrDKnu++A
         OBEUxF3d0wArYWbA+OcztmHatHSefEGGywwarCf2fMbRWz3V80BNUJafuGgJZdRs+nng
         UYJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1702143066; x=1702747866;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=6UZjoos5Lrfvg2O4a65EpOHTiGlhzjBQV5qkVHxBNkM=;
        b=n3Bn/lWmkH0KXKYdPLkEXwS8hDZdSO2XvawDcFRq9eAojbiPJrLVSNDnb6PYRhKikH
         JZZyOeHSevKGrOg8+YKztG9opEK1Fxqd181ndMymFRp8BWA1ANOwmZxlSfeKFi2DXcyT
         9yc95Yz/A6EW9TO8kid9YWxhU4Umk5/y4ECks2KaeEx+p32sXICQb5UA6FTupiQ/yiN1
         puQky1VdVYBoNadFuq+6ocSF2aKQ6dzpkSp5nTFiVBZcAv3TGoCPDTchFd5ZBFd38UqW
         V+Ly1cEzOZGcHX+FAm8+ImEaVy+XFC2Z+xTySOI6mPY1OFnMkhxIly5u7+2asRIxcJQe
         IYsg==
X-Gm-Message-State: AOJu0YwEIOn/9dUYOcAlj+et14MGkOjiz5I7sOeO1LJKr+VcBvqIskHm
	GJ0IHdd+tQrdTHslSoBQJx3EmQ==
X-Google-Smtp-Source: AGHT+IHP3UlJX1Cf5/RlhkV3VAQ0WdU6PKC/O09/zrD4dBdZDZby0eqJoIa8WYq9BtgmkF8JfVmhdQ==
X-Received: by 2002:ac2:4e14:0:b0:50b:f62c:7f27 with SMTP id e20-20020ac24e14000000b0050bf62c7f27mr471930lfr.24.1702143066808;
        Sat, 09 Dec 2023 09:31:06 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.27])
        by smtp.gmail.com with ESMTPSA id m26-20020a50931a000000b0054ce5c00e74sm1926621eda.88.2023.12.09.09.31.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 09 Dec 2023 09:31:06 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Dinh Nguyen <dinguyen@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 15/15] arm64: dts: socfpga: agilex: drop redundant status
Date: Sat,  9 Dec 2023 18:30:44 +0100
Message-Id: <20231209173044.257684-15-krzysztof.kozlowski@linaro.org>
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

New device nodes are enabled by default.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/intel/socfpga_n5x_socdk.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/intel/socfpga_n5x_socdk.dts b/arch/arm64/boot/dts/intel/socfpga_n5x_socdk.dts
index f2e2346dd3c4..2d70a92c2090 100644
--- a/arch/arm64/boot/dts/intel/socfpga_n5x_socdk.dts
+++ b/arch/arm64/boot/dts/intel/socfpga_n5x_socdk.dts
@@ -30,7 +30,6 @@ sdram_edac: memory-controller@f87f8000 {
 			compatible = "snps,ddrc-3.80a";
 			reg = <0xf87f8000 0x400>;
 			interrupts = <0 175 4>;
-			status = "okay";
 		};
 	};
 };
-- 
2.34.1


