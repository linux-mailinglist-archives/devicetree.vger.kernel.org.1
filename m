Return-Path: <devicetree+bounces-208147-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BB41B319FD
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 15:44:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7BE28AE582B
	for <lists+devicetree@lfdr.de>; Fri, 22 Aug 2025 13:38:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4853D2FF16E;
	Fri, 22 Aug 2025 13:34:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Pb26JSu4"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f53.google.com (mail-ed1-f53.google.com [209.85.208.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9952B2FFDEF
	for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 13:34:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755869671; cv=none; b=b0pq0T7uGiTmdqfzSCc4b2QFNkKyROc5ayfNWFcigjTmCNmAeq86NJip0zNH6SDDT/GhZp3Pi09tb2zwrQDVM3l1slXjVzeIwzgCuVKzRTUGmr+R9Wzad22fBjWyjPY2TuZ+N7cF2BfMx37Wp/BGVqUevyTv8cDA1s1Qi7zQe+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755869671; c=relaxed/simple;
	bh=tyU5PFf0gSlmc6T4OX+FawiNzX4PdYFtA22/rM0+roc=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=o6eaK/Q7bsum3eVWR0juO6rQHMymQ4VfDzZ5op8Qx9+E49KqQtSq72gLo/tdb1V2IDV6vGipCB8ZJW8S8VK5y+7FaO1VGwJW01pZaD6ezqKKv7N2KiKqE0yo3xYkBGzKbTOVUNRitKXcqEjgXDZhFKouUaI7tXE/IRhUMzWsIIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Pb26JSu4; arc=none smtp.client-ip=209.85.208.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f53.google.com with SMTP id 4fb4d7f45d1cf-6188b72d690so305123a12.2
        for <devicetree@vger.kernel.org>; Fri, 22 Aug 2025 06:34:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755869668; x=1756474468; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=AtTpKVUrrZWtxsaE3XNcl8fBkP2fQZlgHoCoWUccQ8U=;
        b=Pb26JSu4UXmwPjF276TPWdezl9hAAVbEaq5hkGHarQA1eyQN4k2laK3sRWmKzEwdiI
         Eb7k+T844kVX9275kuQb8g4l+Hy2Tywh1gYtfPBi4tRRu61L+HBZiPr1J3SaoNb8IOj2
         FXUH2YEN2216/+tF7sfRfl6VD7uZCwgAckcgLlFU91muixOhxnT/fn0vUfKiYQG9U8+2
         dQOV8RYGRLUuRBURXomRuuMvbi5NKDi+4udN64oWbPg6jvCzBOTQ48rFrf3JTWVI062p
         D56c+OtX/l3tRh3iCmZidxPKOVCPnYLm9LuaW5WWeBhs251zXo6/GHrUtbkeFgZC0V8U
         1Vnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755869668; x=1756474468;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AtTpKVUrrZWtxsaE3XNcl8fBkP2fQZlgHoCoWUccQ8U=;
        b=ULKo0zvAJCWMsq45xVQAeh7ZcA0OIquheGlHVPmKiDjrJqgoNDjvY+TDM7FrNsaXgS
         4JSv73JYqeYCTmfmH2llU+gHO49bBejU+KP2OHHof2su/d8mES+dDXbInsV2p84nuM0H
         oHwUEQ1Mj1xSn7SwXPmS++1Tl4pwg6XDZmV4A9BP++w42rRX8z/E/LYX0X/ZhMwMDAoi
         VUutS0sucGDeo8JzT/fIjXH6sjeBim6JnheCeJ1ijFHgwl3418sYS6ApDH0VbJBQVjOM
         BkirRYabn6ot3gdm2p6qUbiW269fM/uzO7NsWhRpzbMZAt2S7R89xxKYjnIMD1Mjsbq8
         QFwA==
X-Forwarded-Encrypted: i=1; AJvYcCVcRaCtlku024aj7cAEFvtue7U2ztbfRhqfY/tqNiQbH6cfm1ZQNbT0ZSOc/lfV6uTwPq2reexpDOyO@vger.kernel.org
X-Gm-Message-State: AOJu0YyAnWbGANUWD8AtAU+3iEClMx/gp3jQ5f7DLbCw8v/ghGlBGTfn
	y3UH3iMCZYiYeDYNCOXvm9NsGK0nQ1FolXaiOEDnQ9KAgt/2oxZyJoWwT716yT8E5X8=
X-Gm-Gg: ASbGncsqhCof4YlaTWX3birKH3d6Uuv8aXEaX0VUsMZ7r5dqtFlFlF4LJyPoOqzZ5CB
	fRSZsMuWpUcTJJg1/Sv/XSfbgJKyyJVCmEc03ROeMZuzd7tm+TTznV1cVCs5pbdujwPs+9wv961
	gZrxvX8D142tDEtFsP+BSqsYwM5Tz63IBnMNJe8WAFLw+gCpAffO/osuLdKMnkNTlG+1nvNr33h
	kdFKu+V1DcvhcAAVVvKLNSdkBYrBxbRFMPMaKSrx/HAQ1OOgqoLgndQHoik5fMYMbeyLXLuuhcd
	MHE0PhtPegZIflozkguQN78oZQyg87+JwDEkzXcR8U/LyzzP1mUCFYKRd0+UULpjeM28o12Mqm0
	toLeYpjwg8sq0LWa2lV+6hjhIkRKOX9elvg==
X-Google-Smtp-Source: AGHT+IHyPW5NgrCRagEyLACFGuB7+uhylut2VWju0IRcaH4EtwnYWwcFk/zuHnAseVuD7vXuzF2thg==
X-Received: by 2002:a17:907:94c9:b0:ad8:8c0c:bb3d with SMTP id a640c23a62f3a-afe28f08b6cmr138535066b.3.1755869668029;
        Fri, 22 Aug 2025 06:34:28 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afded3020cbsm610986766b.31.2025.08.22.06.34.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 22 Aug 2025 06:34:27 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Antoine Tenart <atenart@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] arm64: dts: amazon: alpine-v2: Add default GIC address cells
Date: Fri, 22 Aug 2025 15:34:24 +0200
Message-ID: <20250822133423.312621-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1269; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=tyU5PFf0gSlmc6T4OX+FawiNzX4PdYFtA22/rM0+roc=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoqHHfELWc05SkwOsVBGBcKQXp6Y93jBQ2qJ97g
 Q0o5Iy2rQiJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaKhx3wAKCRDBN2bmhouD
 1xt/EACXLCSkFmZebqljwxXYnk2YlY9ntN9zgdTE2izATGlbDmWlBaPPVTHzdI/JiX3dkM2Bol4
 AfyDL/lYvqflqBto5GLqCGhTNbJ7eKk7b7bkXxp5S7kI8XShQFk7CVdOcQf2byUtHo0yr8sFYMb
 1iUCrT5lVZud7qF/WAVN3/g5m21HJ78wkfgi80jFISnB5CyLLUmzonnsfgER1lqBaDHYEUMjIxk
 vFlh0sMk/3pZdg0eegriBDktPyypCW7qDO9JmD7Pyc2TvoTNm9s+3r7jp3XyX3XX1EGBz1oynxo
 3SHZYGnSsX3uQKhSGhxECeASapKr88yTK7mOFQS9sORg2nMnH8bu0bntEBtKcN41T950EbD7gry
 eHkGl+/T2PEaFq144GyWp07tezX/l+GLSqLK+xD+JdfUUiyMAeaLsxcASGvdoVUzl6mBAm5l+7s
 kxtz+mAhAFReeFT1DpelH1SRMqSHZ6GXT3TBlnCh/MliW0Z0ovfIcI8mK3f6YkVxaIYwN7w2JBN
 jkLIchwiO4zGkNpkGa7xQsLV1230UNeK5wjZzkq8MPDoZ/UnqKelPjCWvzfYqFJ6BsXlwQcAqd4
 UhAAvgG1uWhrDMSqKf+09BG/zmT6omfmddRIEFpqLCrokU0IDEtVQuA13Kr07cYnAWmsYbuhP1E 8v9LSY0erntWa9A==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

Add missing address-cells 0 to GIC interrupt node to silence W=1
warning:

  alpine-v2.dtsi:138.4-139.33: Warning (interrupt_map): /soc/pci@fbc00000:interrupt-map:
    Missing property '#address-cells' in node /soc/interrupt-controller@f0200000, using 0 as fallback

Value '0' is correct because:
1. GIC interrupt controller does not have children,
2. interrupt-map property (in PCI node) consists of five components and
   the fourth component "parent unit address", which size is defined by
   '#address-cells' of the node pointed to by the interrupt-parent
   component, is not used (=0)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/amazon/alpine-v2.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/amazon/alpine-v2.dtsi b/arch/arm64/boot/dts/amazon/alpine-v2.dtsi
index 5a72f0b64247..f49209fddbbb 100644
--- a/arch/arm64/boot/dts/amazon/alpine-v2.dtsi
+++ b/arch/arm64/boot/dts/amazon/alpine-v2.dtsi
@@ -123,6 +123,7 @@ gic: interrupt-controller@f0200000 {
 			      <0x0 0xf0120000 0x0 0x2000>;	/* GICH */
 			interrupts = <GIC_PPI 9 IRQ_TYPE_LEVEL_HIGH>;
 			interrupt-controller;
+			#address-cells = <0>;
 			#interrupt-cells = <3>;
 		};
 
-- 
2.48.1


