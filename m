Return-Path: <devicetree+bounces-119833-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 18B689C039D
	for <lists+devicetree@lfdr.de>; Thu,  7 Nov 2024 12:15:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4A4AE1C224E1
	for <lists+devicetree@lfdr.de>; Thu,  7 Nov 2024 11:15:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0D631F4FB4;
	Thu,  7 Nov 2024 11:15:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from TWMBX01.aspeed.com (mail.aspeedtech.com [211.20.114.72])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DE8B41F4FDC;
	Thu,  7 Nov 2024 11:15:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=211.20.114.72
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730978114; cv=none; b=J6/KoSVW6iDWny/eTHY5s4APgykzfHIFckIs0QDOp0kngglCH6PaAjj+lajR7/MdWQNaCZX3njwSo1f8jw3iZ4LkNjzsLXSxn0wF0mNO+IOrheNPU86nK96rf6X2AKaA56urJNTE0Qxbob0bDzzJIKX6l4EDYVpami/Z8lGnN60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730978114; c=relaxed/simple;
	bh=E6DZgxFASwkXaa+nRaWgDMNGtH9csCAM0/EQpYf//cM=;
	h=From:To:CC:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=EyZb/6dNxOT9hBhE6ELGiWKLfkHC5CRGDei0noBEstzX6THDoN0aVV92DumgO/BpZJEQN+XFFhtj9dCe4uHbaFHY5H8176042GRUW23iIDAI3i1xRkxB7FFDfNTRi08zdShfix7Rpl9jeWusDxg/DiwrAUwR6dXJu7FVftdgRYQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=aspeedtech.com; spf=pass smtp.mailfrom=aspeedtech.com; arc=none smtp.client-ip=211.20.114.72
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=aspeedtech.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aspeedtech.com
Received: from TWMBX01.aspeed.com (192.168.0.62) by TWMBX01.aspeed.com
 (192.168.0.62) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1258.12; Thu, 7 Nov
 2024 19:15:01 +0800
Received: from mail.aspeedtech.com (192.168.10.10) by TWMBX01.aspeed.com
 (192.168.0.62) with Microsoft SMTP Server id 15.2.1258.12 via Frontend
 Transport; Thu, 7 Nov 2024 19:15:01 +0800
From: Jacky Chou <jacky_chou@aspeedtech.com>
To: <andrew+netdev@lunn.ch>, <davem@davemloft.net>, <edumazet@google.com>,
	<kuba@kernel.org>, <pabeni@redhat.com>, <robh@kernel.org>,
	<krzk+dt@kernel.org>, <conor+dt@kernel.org>, <p.zabel@pengutronix.de>,
	<ratbert@faraday-tech.com>, <netdev@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>
CC: <jacky_chou@aspeedtech.com>
Subject: [net-next 1/3] dt-bindings: net: ftgmac100: support for AST2700
Date: Thu, 7 Nov 2024 19:14:58 +0800
Message-ID: <20241107111500.4066517-2-jacky_chou@aspeedtech.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20241107111500.4066517-1-jacky_chou@aspeedtech.com>
References: <20241107111500.4066517-1-jacky_chou@aspeedtech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain

The AST2700 is the 7th generation SoC from Aspeed.
Add compatible support for AST2700 in yaml.

Signed-off-by: Jacky Chou <jacky_chou@aspeedtech.com>
---
 Documentation/devicetree/bindings/net/faraday,ftgmac100.yaml | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/net/faraday,ftgmac100.yaml b/Documentation/devicetree/bindings/net/faraday,ftgmac100.yaml
index 9bcbacb6640d..fffe5c51daa9 100644
--- a/Documentation/devicetree/bindings/net/faraday,ftgmac100.yaml
+++ b/Documentation/devicetree/bindings/net/faraday,ftgmac100.yaml
@@ -21,6 +21,7 @@ properties:
               - aspeed,ast2400-mac
               - aspeed,ast2500-mac
               - aspeed,ast2600-mac
+              - aspeed,ast2700-mac
           - const: faraday,ftgmac100
 
   reg:
@@ -33,7 +34,7 @@ properties:
     minItems: 1
     items:
       - description: MAC IP clock
-      - description: RMII RCLK gate for AST2500/2600
+      - description: RMII RCLK gate for AST2500/2600/2700
 
   clock-names:
     minItems: 1
-- 
2.25.1


