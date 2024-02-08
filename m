Return-Path: <devicetree+bounces-39670-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D52D84DEC2
	for <lists+devicetree@lfdr.de>; Thu,  8 Feb 2024 11:54:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 1BDD61F22083
	for <lists+devicetree@lfdr.de>; Thu,  8 Feb 2024 10:54:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 47E0F6F50E;
	Thu,  8 Feb 2024 10:51:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="YejNj1Gm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com [209.85.167.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7DF7C6F075
	for <devicetree@vger.kernel.org>; Thu,  8 Feb 2024 10:51:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707389514; cv=none; b=SjWiDQ3W4JovnF+sjxiJx92ZeR7SF8V+qTEzSDDsvdKu+vZlu8OPirJB4B8D5rZWmhspaRWGZjAMvJlq/YKeuRK2z/xx66s0KVoyD1VqkY59HTGNqt1vC7lvp1tcreRsfRofOXXeN0W+zFTqn0x/Srh4KizuE+9/YderblpZdOw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707389514; c=relaxed/simple;
	bh=71NEIfK9lpPDXPxdcpoIc6Ua6mtEwo4nfytvBjt6Rls=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=mGbEYgcLVIRFAefxmdgvPSqDM2eTknf1pE6U1Szm4vGLYFXU87MDG8PuwjFNExlODLfWK0Lkm8jL2Z6oy/gw0BBQV5cqtuHZ+HkDDXmx9PROUaZ2eEoXNdSJNAP3+ehqfcYF3u2XK0i6MG8fuD6c7LVPMmiVSNeQ1kHAWP6TTYo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=YejNj1Gm; arc=none smtp.client-ip=209.85.167.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f48.google.com with SMTP id 2adb3069b0e04-51165efb684so2935821e87.3
        for <devicetree@vger.kernel.org>; Thu, 08 Feb 2024 02:51:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1707389511; x=1707994311; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=t0MY0LFcMWq3dc0uCMNCLEb4yRGXUvt5u3xXKNiGtf0=;
        b=YejNj1GmPdh5UY3fqZME90GyO09tKPvBPaXzdurFsGXFLKyDse1lUTnHkX7b6wUgNZ
         ZhvOrx3UN+dbAd4jwoolpCBqFMGNFpAm1NaCyHxpurf5BuOqEWszZXDJSQbIzhP9A6lp
         VFlyn4Yk9Pnv7lo/If+caurHTtvmH35NPwiTDBK4HRuJ34kNfWRZXArtZLeibFNh087x
         rUGT/R3lyRh1tLn6NmNikNY7skCkpVBo7aTTnnQyPBteEnUvb9lPNmhGTHzVShXbq0Rv
         nRjDyfmzZ1AYQljRrLe8QpLyC+R+T6vUHjk+Y3D7TichWHNuFn5HaLI1/5cc/W/KxHXm
         ewIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707389511; x=1707994311;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=t0MY0LFcMWq3dc0uCMNCLEb4yRGXUvt5u3xXKNiGtf0=;
        b=Y1AaRi7mhxIHYwW+shn/l3dzn5LHu+vBNvm1F+H6LrsLoifSYloH8vguWVIDJrqW1U
         t2pEYK8D5YJX333ngaEVuZZ4Rb1esUX4Mks3OZwUCsudUTmRCGDaGUyv1zRznWll5XTA
         5wPTmGxvut4h0eWzRb/VPKsa9WQapd6uCGkcbWnXqDWQXdqhj6TQupET2orfw8weg27Y
         +wUltreWRN99+h8tuC4lOJzQIYG6MU8N4aN3CAvSKoKC4q5AQ2Hm++i1aWGhRlt62159
         FawuGxAoIRabyrPABqk+lR8bU4gs9aRQgLDWh/9hceSThDiCTpSV6f/rEJvVGjLAYt/z
         eZ1A==
X-Forwarded-Encrypted: i=1; AJvYcCXEcqhmAhvUHyawRduTnrpBTSLG3TBQ01+kg0wsjqKFzX/MsKvPdEWK5dW7/17YJuXx42vScKFdlnocyml8Vs4IVFvaXpzTJDUtew==
X-Gm-Message-State: AOJu0YxOACvkidSC/hd/t4AwZ3dbvuXsnEpjivWYOx/s9k+NiIEMCDv0
	V6AoN1BBGWVJ/Rf26dBEv+zKf6e5ZcGHewpH+52z/vMDUJo7tW3i3Q0u1iodW3I=
X-Google-Smtp-Source: AGHT+IEt3SoWw/qYKioysQ6bnIJH+WgEPguwMyk6R6vSEqrdZgvM+ax8WHd3rkmGmXbqXxqQsAltyQ==
X-Received: by 2002:a05:6512:2389:b0:511:4bee:b1be with SMTP id c9-20020a056512238900b005114beeb1bemr7168190lfv.55.1707389510608;
        Thu, 08 Feb 2024 02:51:50 -0800 (PST)
X-Forwarded-Encrypted: i=1; AJvYcCUZxWXzwImTXAOswIaNW51vFaW2eYJE03i6k/5uvIgEeeIS3UmRwzPnffIgqHhffoEMLXx4y4zaICuMp+jpfknTtDahlO6X1old5OA2qp0ivbXXMtp3HXvkm4+Pdeoief1QhDisIykF0kBsikPogAMiLtVP6FgH2PRhv+spPa6CiiFUl3ujoDY3nbv2LDmNqRujXl3ISi0FScZ4K/Gy8ZFghvroFDr9/NHB9c75b/Cb2R3rvWQb1Lz8VN4S8EVL17/UM8KQk2qAR/BHKh59WGDyphtFy3J1lDLWPXnSofABCVKjs/S/YZbskTwBypgf8ht/S/Klgtzpru0No1JARMXEjPBMIRoT5GxdPEDr0UsyiPU=
Received: from krzk-bin.. ([178.197.222.62])
        by smtp.gmail.com with ESMTPSA id je3-20020a05600c1f8300b004101bdae3a0sm1247037wmb.38.2024.02.08.02.51.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Feb 2024 02:51:50 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: =?UTF-8?q?Beno=C3=AEt=20Cousson?= <bcousson@baylibre.com>,
	Tony Lindgren <tony@atomide.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	linux-omap@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] arm64: dts: ti: k3-am62p5-sk: minor whitespace cleanup
Date: Thu,  8 Feb 2024 11:51:45 +0100
Message-Id: <20240208105146.128645-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The DTS code coding style expects exactly one space before '{'
character.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/ti/k3-am62p5-sk.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts b/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts
index 95a0146279b1..21aa40878cd1 100644
--- a/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am62p5-sk.dts
@@ -494,7 +494,7 @@ &ospi0 {
 	pinctrl-0 = <&ospi0_pins_default>;
 	bootph-all;
 
-	flash@0{
+	flash@0 {
 		compatible = "jedec,spi-nor";
 		reg = <0x0>;
 		spi-tx-bus-width = <8>;
-- 
2.34.1


