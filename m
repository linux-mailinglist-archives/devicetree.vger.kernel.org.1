Return-Path: <devicetree+bounces-18538-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EF5B7F707C
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 10:50:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3774A1F20F31
	for <lists+devicetree@lfdr.de>; Fri, 24 Nov 2023 09:50:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D9907179AC;
	Fri, 24 Nov 2023 09:50:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="scwNRGNs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA20519B6
	for <devicetree@vger.kernel.org>; Fri, 24 Nov 2023 01:50:41 -0800 (PST)
Received: by mail-ed1-x52d.google.com with SMTP id 4fb4d7f45d1cf-54afdbdb7d2so368730a12.3
        for <devicetree@vger.kernel.org>; Fri, 24 Nov 2023 01:50:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1700819440; x=1701424240; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=ipY3/C11wlWpNcl3AyIHNU7jnDg0Af5QAKeD+Eh79Rg=;
        b=scwNRGNsM++BTFKEy5q4JFjlt9b4afOoy3GCaK9zMVTQjQ2HsCaFi7qvzrUoCklJKk
         ckSvSlfnFQVysHxe2TOcqUerNMCMfNGqXuP6kDSZ6AzLg4ajvH2LePYwsjBu0h79wgb5
         kMH99JHSUQqIuBgK1Nc0b8r4hJowGf4Bsd3z6Ou7PW8aKIlOQPMHVYcWp47H1zvu+T9Q
         sSYW3g5JTlkXWuNLZk5IqYXr/lb3owaG29nBTiEHp755+nPBF8n8CToqCJbD2R4a/4S1
         t8GV1ImsBZEsWt8122TzwF6W4RCZCunmTRwD4K9azKa8Q1xxiS61XkJp0uc/sCxRqoBk
         3B3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700819440; x=1701424240;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ipY3/C11wlWpNcl3AyIHNU7jnDg0Af5QAKeD+Eh79Rg=;
        b=T08d5I4kYvRAwDcKrMmfhvx+WwXZjbGKf5s9vfVREi4SNVCEVxhJc5u58ed5XGhS3X
         G4DXBmToz8XtsfQiCQXVhycpl+SWHmY9e2zEMDbNFT4e9VsXqcoy3u2t7oVRtavA62rp
         UlmlNPX+Twbxm004SUOf5uZhupTPIwNljZhjW39GRr8rsdcSLD4kUR9FjnYEvS+fgNtL
         vD0FTLzOv19j4WypHKg7+z5qdAfQp7gO55J0q3+zNtOCMIrFZyZvTFuZG+5DkmEZa+Lw
         EGNVepIVYnF0OS8HAmfCQklKYXE1RNxx0MwTIibD9lMtPaDy43PRw2LaABpVIB/IXsc1
         ReVQ==
X-Gm-Message-State: AOJu0YxsshvHWpmmOqnsoX1a3G4Yr3Wc25851IfeQ8/DlkwzW9WgVNGB
	SVmWhnv/xfGQSXR+3Hi2Knsn4g==
X-Google-Smtp-Source: AGHT+IEmARKMJnUzbOvvqp8KC78B3+K9XcNG6iIKeB9W5HTjM7QawfwIsZAAWWaQUzkVTIwm99h65Q==
X-Received: by 2002:a50:9f87:0:b0:543:75cb:2149 with SMTP id c7-20020a509f87000000b0054375cb2149mr1693627edf.38.1700819440405;
        Fri, 24 Nov 2023 01:50:40 -0800 (PST)
Received: from krzk-bin.. ([178.197.218.100])
        by smtp.gmail.com with ESMTPSA id g20-20020a50ee14000000b00548af940701sm1612755eds.53.2023.11.24.01.50.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 24 Nov 2023 01:50:39 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] ARM: dts: rockchip: minor whitespace cleanup around '='
Date: Fri, 24 Nov 2023 10:50:30 +0100
Message-Id: <20231124095031.58555-1-krzysztof.kozlowski@linaro.org>
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
 arch/arm/boot/dts/rockchip/rk322x.dtsi | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/rockchip/rk322x.dtsi b/arch/arm/boot/dts/rockchip/rk322x.dtsi
index ffc16d6b97e1..a721744cbfd1 100644
--- a/arch/arm/boot/dts/rockchip/rk322x.dtsi
+++ b/arch/arm/boot/dts/rockchip/rk322x.dtsi
@@ -215,9 +215,9 @@ power-domain@RK3228_PD_VIO {
 
 			power-domain@RK3228_PD_VOP {
 				reg = <RK3228_PD_VOP>;
-				clocks =<&cru ACLK_VOP>,
-					<&cru DCLK_VOP>,
-					<&cru HCLK_VOP>;
+				clocks = <&cru ACLK_VOP>,
+					 <&cru DCLK_VOP>,
+					 <&cru HCLK_VOP>;
 				pm_qos = <&qos_vop>;
 				#power-domain-cells = <0>;
 			};
-- 
2.34.1


