Return-Path: <devicetree+bounces-29488-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6718982344E
	for <lists+devicetree@lfdr.de>; Wed,  3 Jan 2024 19:22:44 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 0615E1F253A1
	for <lists+devicetree@lfdr.de>; Wed,  3 Jan 2024 18:22:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E2C991C6AF;
	Wed,  3 Jan 2024 18:22:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=siemens.com header.i=jan.kiszka@siemens.com header.b="fAHv65IY"
X-Original-To: devicetree@vger.kernel.org
Received: from mta-64-227.siemens.flowmailer.net (mta-64-227.siemens.flowmailer.net [185.136.64.227])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6F99D1C697
	for <devicetree@vger.kernel.org>; Wed,  3 Jan 2024 18:22:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=siemens.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=rts-flowmailer.siemens.com
Received: by mta-64-227.siemens.flowmailer.net with ESMTPSA id 20240103181225e389fa0bdcd0937741
        for <devicetree@vger.kernel.org>;
        Wed, 03 Jan 2024 19:12:26 +0100
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; s=fm1;
 d=siemens.com; i=jan.kiszka@siemens.com;
 h=Date:From:Subject:To:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:Cc:References:In-Reply-To;
 bh=VwfRwTBxd2m91iyvZAlz14xUEFVLfVbWY5tw/VQr/6w=;
 b=fAHv65IYPmapWf50+YXy9J61BBW2Uz9rbIQprwOnVRzKz0yc126F/KzDE2NEP8vhenSpcH
 MmzyzWETB9aUisHqRv5fbxHe23FFxY2AgRJ5f5WhM8M+OvZhYaizQM8yzo/xzzQk7Ie7N/y4
 vczlDldRdPNN04/Jra4C6Yvws29Fo=;
From: Jan Kiszka <jan.kiszka@siemens.com>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	devicetree@vger.kernel.org,
	Bao Cheng Su <baocheng.su@siemens.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 1/7] dt-bindings: arm: ti: Add binding for Siemens IOT2050 SM variant
Date: Wed,  3 Jan 2024 19:12:18 +0100
Message-Id: <8534712b92f9179b4f8ec4f404757be9c887f701.1704305544.git.jan.kiszka@siemens.com>
In-Reply-To: <cover.1704305544.git.jan.kiszka@siemens.com>
References: <cover.1704305544.git.jan.kiszka@siemens.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Flowmailer-Platform: Siemens
Feedback-ID: 519:519-294854:519-21489:flowmailer

From: Su Bao Cheng <baocheng.su@siemens.com>

This new variant is derived from the Advanced PG2 board, removing the
Arduino interface, and adding a new ASIC for communicating with the
PLC 1200 signal modules.

Signed-off-by: Su Bao Cheng <baocheng.su@siemens.com>
Signed-off-by: Jan Kiszka <jan.kiszka@siemens.com>
Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/arm/ti/k3.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/ti/k3.yaml b/Documentation/devicetree/bindings/arm/ti/k3.yaml
index 03d2a0d79fb0..2cb3f6eb8a43 100644
--- a/Documentation/devicetree/bindings/arm/ti/k3.yaml
+++ b/Documentation/devicetree/bindings/arm/ti/k3.yaml
@@ -91,6 +91,7 @@ properties:
               - siemens,iot2050-advanced
               - siemens,iot2050-advanced-m2
               - siemens,iot2050-advanced-pg2
+              - siemens,iot2050-advanced-sm
               - siemens,iot2050-basic
               - siemens,iot2050-basic-pg2
               - ti,am654-evm
-- 
2.35.3


