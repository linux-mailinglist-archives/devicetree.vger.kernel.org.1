Return-Path: <devicetree+bounces-168855-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4A604A9495D
	for <lists+devicetree@lfdr.de>; Sun, 20 Apr 2025 21:31:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 4DCE27A89F9
	for <lists+devicetree@lfdr.de>; Sun, 20 Apr 2025 19:30:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6C0622147E8;
	Sun, 20 Apr 2025 19:28:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=purelymail.com header.i=@purelymail.com header.b="qm2M5DXP"
X-Original-To: devicetree@vger.kernel.org
Received: from sendmail.purelymail.com (sendmail.purelymail.com [34.202.193.197])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFFB2215F4A
	for <devicetree@vger.kernel.org>; Sun, 20 Apr 2025 19:28:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=34.202.193.197
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745177339; cv=none; b=SCl0XFSSjE6krLYp3XYUbQ3i8CZPOKlzvHKkhMwsdOz/8pTh/C4PtSY9sbwLRThFoHcM7Leu4qqTpo9ujxx+t+YgGybTAOYydjRVjVP1UOAl70f2Ebt+XGTjqVRK2obUTz493C7gS8cLnX2kcJymHZXNREb/F6K5hdVeV0lEl0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745177339; c=relaxed/simple;
	bh=QOd6z6A83o0QZNnyI/ifSdk4jGhOOwca01N1b/7gQPA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UOKrOmJsJIOtgH7L0aAp4dNqY6oGaE7qrdsXMYkHpCiaQMcMc259bnwhYvb2hu0Fh51D7cIU5GJRSgtAqpqWhEQeyIq/YTA1uq0crhOAlGkH4eNGWP/YXuXQxXXP7ZgC28XN8z1XfBwhtqDuAtIBK9l6yqvA4Ag7XuwnhrH5u8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mentallysanemainliners.org; spf=pass smtp.mailfrom=mentallysanemainliners.org; dkim=pass (2048-bit key) header.d=purelymail.com header.i=@purelymail.com header.b=qm2M5DXP; arc=none smtp.client-ip=34.202.193.197
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mentallysanemainliners.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=mentallysanemainliners.org
Authentication-Results: purelymail.com; auth=pass
DKIM-Signature: a=rsa-sha256; b=qm2M5DXPtCKo1Glxkprzegx2dOakQczkJvbAJaxCH229JSjefyB1/6NIQWouVY/x1IMjuD50SfqHCyLIMMiT/7O2WvapNYAhaCQQNc1mtGQM8tuof5Xa6RCBz/ljUvaFGmfM7Ky9AzH9FafQB0sC4wEEwvo5U5QK5j7ELEPKJ0TRiIG0k5ZHNe6vlDcXaTKMdmwnJ53s6yRi3HZ08qOVqnB8C0ZXj0AGGq6anuBkBYukbyTk9W0NUwVhPZ8CyT0zVv6p+Tls4xCwJdGS/j0liwSPOAnFK9+Ojf6dRLs2qwwg8rq/bool3OlC6ctzn+xN/roTsnwFASufDdTzSlXc9A==; s=purelymail3; d=purelymail.com; v=1; bh=QOd6z6A83o0QZNnyI/ifSdk4jGhOOwca01N1b/7gQPA=; h=Feedback-ID:Received:From:Date:Subject:To;
Feedback-ID: 68247:10037:null:purelymail
X-Pm-Original-To: devicetree@vger.kernel.org
Received: by smtp.purelymail.com (Purelymail SMTP) with ESMTPSA id 1149203934;
          (version=TLSv1.3 cipher=TLS_AES_256_GCM_SHA384);
          Sun, 20 Apr 2025 19:28:44 +0000 (UTC)
From: Igor Belwon <igor.belwon@mentallysanemainliners.org>
Date: Sun, 20 Apr 2025 21:28:21 +0200
Subject: [PATCH v2 1/2] dt-bindings: phy: samsung,usb3-drd-phy: Add
 exynos990 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250420-usb-resends-april-v2-1-25dc7d2e6dd4@mentallysanemainliners.org>
References: <20250420-usb-resends-april-v2-0-25dc7d2e6dd4@mentallysanemainliners.org>
In-Reply-To: <20250420-usb-resends-april-v2-0-25dc7d2e6dd4@mentallysanemainliners.org>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Marek Szyprowski <m.szyprowski@samsung.com>, 
 Sylwester Nawrocki <s.nawrocki@samsung.com>, 
 Alim Akhtar <alim.akhtar@samsung.com>
Cc: Krzysztof Kozlowski <krzk@kernel.org>, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-samsung-soc@vger.kernel.org, 
 Igor Belwon <igor.belwon@mentallysanemainliners.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1745177319; l=1286;
 i=igor.belwon@mentallysanemainliners.org; s=20241206;
 h=from:subject:message-id; bh=QOd6z6A83o0QZNnyI/ifSdk4jGhOOwca01N1b/7gQPA=;
 b=2rOhwRtKIKC1Z2fHwV7rvy28V9+d3GYFQSW3KYruUkmRkeQ+jcbN3WSqq8YKLQGUsXsMHzLw5
 v52B2SKFmxkDd/JMv1JLXoNgfGWcxS/mv/JbF3ZgmcJCaQJpY0Y7eIY
X-Developer-Key: i=igor.belwon@mentallysanemainliners.org; a=ed25519;
 pk=qKAuSTWKTaGQM0vwBxV0p6hPKMN4vh0CwZ+bozrG5lY=

Add a compatible for the exynos990-usbdrd-phy. The PHY is compatible with
the older exynos5420 design (two clocks) when running in highspeed mode.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Igor Belwon <igor.belwon@mentallysanemainliners.org>
---
 Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
index fdddddc7d611364ce17870b5b8963b5a0c0c9668..5b240fc761c38b49fa4f673ea4fff0609470b414 100644
--- a/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/samsung,usb3-drd-phy.yaml
@@ -32,6 +32,7 @@ properties:
       - samsung,exynos7-usbdrd-phy
       - samsung,exynos7870-usbdrd-phy
       - samsung,exynos850-usbdrd-phy
+      - samsung,exynos990-usbdrd-phy
 
   clocks:
     minItems: 2
@@ -187,6 +188,7 @@ allOf:
               - samsung,exynos5420-usbdrd-phy
               - samsung,exynos7870-usbdrd-phy
               - samsung,exynos850-usbdrd-phy
+              - samsung,exynos990-usbdrd-phy
     then:
       properties:
         clocks:

-- 
2.47.2


