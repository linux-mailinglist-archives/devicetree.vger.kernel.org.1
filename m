Return-Path: <devicetree+bounces-19784-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C476A7FCAC8
	for <lists+devicetree@lfdr.de>; Wed, 29 Nov 2023 00:25:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 7066B1F20FBB
	for <lists+devicetree@lfdr.de>; Tue, 28 Nov 2023 23:25:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7105F58AC2;
	Tue, 28 Nov 2023 23:25:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=rnplus.nl header.i=@rnplus.nl header.b="t+chuYK0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.rnplus.nl (mail.rnplus.nl [178.251.25.70])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BABD10CB
	for <devicetree@vger.kernel.org>; Tue, 28 Nov 2023 15:25:10 -0800 (PST)
Received: from localhost (unknown [127.0.0.1])
	by mail.rnplus.nl (Postfix) with ESMTP id 2AD9B379442
	for <devicetree@vger.kernel.org>; Tue, 28 Nov 2023 23:26:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at rnplus.nl
Received: from mail.rnplus.nl ([127.0.0.1])
	by localhost (mail.rnplus.nl [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id wPHriCSkiMG4 for <devicetree@vger.kernel.org>;
	Wed, 29 Nov 2023 00:26:46 +0100 (CET)
Received: from werkpc.lan (87-101-2-254.dsl.cambrium.nl [87.101.2.254])
	by mail.rnplus.nl (Postfix) with ESMTPSA id EA6B0379434;
	Wed, 29 Nov 2023 00:26:41 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=rnplus.nl; s=dkim;
	t=1701214002; bh=oZJLJBZAx0MsbUik85ITPZJyjd007ov2TZPI2l716ic=;
	h=From:To:Subject:Date:In-Reply-To:References;
	b=t+chuYK0s23tsOzFeP86CZqe/UWh7fxBn61MmxnM8NQSgv7FlQyD7XplKDja2CRWq
	 pwxBuwRREswGTpsG3ZSFDxZYebtsCIGzoMIvXnhKAVYG436dN4UOcEIMFQAnLqa5uY
	 D/4Zl+DH1DMnYd33gZZ2yWPHJogmjPqNyDAXZeDw=
From: Renze Nicolai <renze@rnplus.nl>
To: linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-aspeed@lists.ozlabs.org,
	arnd@arndb.de,
	olof@lixom.net,
	soc@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	joel@jms.id.au,
	andrew@aj.id.au,
	renze@rnplus.nl
Subject: [PATCH v2 1/2] dt-bindings: arm: aspeed: add Asrock X570D4U board
Date: Wed, 29 Nov 2023 00:23:16 +0100
Message-ID: <20231128232456.2932350-2-renze@rnplus.nl>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20231128232456.2932350-1-renze@rnplus.nl>
References: <20231128232456.2932350-1-renze@rnplus.nl>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document Asrock X570D4U compatible.

Signed-off-by: Renze Nicolai <renze@rnplus.nl>
---
 Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
index 749ee54a3ff8..81ed678905fa 100644
--- a/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
+++ b/Documentation/devicetree/bindings/arm/aspeed/aspeed.yaml
@@ -36,6 +36,7 @@ properties:
               - aspeed,ast2500-evb
               - asrock,e3c246d4i-bmc
               - asrock,romed8hm3-bmc
+              - asrock,x570d4u-bmc
               - bytedance,g220a-bmc
               - facebook,cmm-bmc
               - facebook,minipack-bmc
-- 
2.43.0


