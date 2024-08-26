Return-Path: <devicetree+bounces-96576-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 38B4695EB54
	for <lists+devicetree@lfdr.de>; Mon, 26 Aug 2024 10:05:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B2594284964
	for <lists+devicetree@lfdr.de>; Mon, 26 Aug 2024 08:05:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFD6E13D882;
	Mon, 26 Aug 2024 08:03:24 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from muminek.juszkiewicz.com.pl (muminek.juszkiewicz.com.pl [213.251.184.221])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2C04745F4
	for <devicetree@vger.kernel.org>; Mon, 26 Aug 2024 08:03:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.251.184.221
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724659404; cv=none; b=GsV3zn599LaJo96pS6KNKoPNcNXhDxReUK1yTQmokRUytg3cHmsJfExJAz8jkUVqxxp5+TCfsz7klFFjfoTUtfXVHE6m8vrAGSX6F9O16gGvFpIZkXyxv2WTR+uP7n9PmC4dLBDQsGdSCcApxRWh9BoyyIUl0HRB5KgS9hI6LM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724659404; c=relaxed/simple;
	bh=8ob8jYI7193/uRAe3JR9lBqZdiKpQMEWfXpDmfeFkGU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=RuZosumQmXBkYxRqLgRlC3j7c5/N4fKkIoSCh8K0F7m8u/XAI8YzziSV/EOEtR44JSi3b8ufV3fRvPp9Zlxj5Du3gr641PEkkCS01qPbv1VtMBeBp7x2+7wyV4EgLI0yob7agoaHyhDkbpjxbBM8UqcxUIObQeEUcamQmwdE/dM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org; spf=fail smtp.mailfrom=linaro.org; arc=none smtp.client-ip=213.251.184.221
Authentication-Results: smtp.subspace.kernel.org; dmarc=fail (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=fail smtp.mailfrom=linaro.org
Received: from localhost (localhost [127.0.0.1])
	by muminek.juszkiewicz.com.pl (Postfix) with ESMTP id 497412602C9;
	Mon, 26 Aug 2024 10:03:14 +0200 (CEST)
X-Virus-Scanned: Debian amavis at juszkiewicz.com.pl
Received: from muminek.juszkiewicz.com.pl ([127.0.0.1])
 by localhost (muminek.juszkiewicz.com.pl [127.0.0.1]) (amavis, port 10024)
 with ESMTP id MZJLnQJSEcah; Mon, 26 Aug 2024 10:03:12 +0200 (CEST)
Received: from puchatek.local (83.25.211.12.ipv4.supernova.orange.pl [83.25.211.12])
	by muminek.juszkiewicz.com.pl (Postfix) with ESMTPSA id 91B62260898;
	Mon, 26 Aug 2024 10:03:11 +0200 (CEST)
From: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Date: Mon, 26 Aug 2024 10:02:45 +0200
Subject: [PATCH v5 1/7] dt-bindings: arm: rockchip: Add NanoPC-T6 LTS
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240826-friendlyelec-nanopc-t6-lts-v5-1-ba33edda7f17@linaro.org>
References: <20240826-friendlyelec-nanopc-t6-lts-v5-0-ba33edda7f17@linaro.org>
In-Reply-To: <20240826-friendlyelec-nanopc-t6-lts-v5-0-ba33edda7f17@linaro.org>
To: Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org, 
 Jonas Karlman <jonas@kwiboo.se>, 
 Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.0

Add devicetree binding for the NanoPC-T6 LTS board.

Signed-off-by: Marcin Juszkiewicz <marcin.juszkiewicz@linaro.org>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/rockchip.yaml | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/rockchip.yaml b/Documentation/devicetree/bindings/arm/rockchip.yaml
index 1ef09fbfdfaf..f45c7d055a6a 100644
--- a/Documentation/devicetree/bindings/arm/rockchip.yaml
+++ b/Documentation/devicetree/bindings/arm/rockchip.yaml
@@ -243,9 +243,11 @@ properties:
               - friendlyarm,nanopi-r6s
           - const: rockchip,rk3588s
 
-      - description: FriendlyElec NanoPC T6
+      - description: FriendlyElec NanoPC T6 series boards
         items:
-          - const: friendlyarm,nanopc-t6
+          - enum:
+              - friendlyarm,nanopc-t6
+              - friendlyarm,nanopc-t6-lts
           - const: rockchip,rk3588
 
       - description: FriendlyElec CM3588-based boards

-- 
2.46.0


