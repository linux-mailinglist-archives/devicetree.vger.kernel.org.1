Return-Path: <devicetree+bounces-212991-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D8A8B445B6
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 20:47:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B24895656ED
	for <lists+devicetree@lfdr.de>; Thu,  4 Sep 2025 18:47:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 323D4253F1A;
	Thu,  4 Sep 2025 18:47:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b="RC29yujc";
	dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b="RC29yujc"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.mleia.com (mleia.com [178.79.152.223])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0068632F772
	for <devicetree@vger.kernel.org>; Thu,  4 Sep 2025 18:47:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=178.79.152.223
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757011625; cv=none; b=lpHHfnoid2sEPa1cn36pSJRr2NBH/h+t5YkkvRJrajTPnaqutzD3SgudGsp64dpHesGktBlmjg16tz7HyRHkgVeLhgN70/ZxOXCmd5D5dhY1IBzQeVBd04IcZSORbXrSOl4zU0tXi8ivUsdu33Pe6p7LePJogTN9uFROUNHV56E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757011625; c=relaxed/simple;
	bh=pjc3OCcYZHxirYKLuK+PjKnhBVAQkE69siUvNNMSLrU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Y230XISz+XZkv3qZZz9CKZTYe1IZKDhxrFqFWfJfduca3yLCYQrtACkyy4eceaXgbJ0pBUvT8ge95csAUrY+nFTeu7QXgm3x5ENXl67ajk8C2HiBZn0qBS0JW+PsVaKMeUkiJKaKug7S2PXskZLRb0Jybv/0jKcXcpt48IkdNns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mleia.com; spf=none smtp.mailfrom=mleia.com; dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b=RC29yujc; dkim=pass (2048-bit key) header.d=mleia.com header.i=@mleia.com header.b=RC29yujc; arc=none smtp.client-ip=178.79.152.223
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=mleia.com
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=mleia.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mleia.com; s=mail;
	t=1757011621; bh=pjc3OCcYZHxirYKLuK+PjKnhBVAQkE69siUvNNMSLrU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=RC29yujcH3tFikq4zqkeet21fS40JkSaMh9c/qcC1Y3DpLA3Ut5+As+kmDdZqJEMx
	 RmiOzzTSsgbnoYoayLJTsBKJ+yn15EexlZoTw5tAsnf9iWUiqvnZOs1M4tfVmQMche
	 4pQipC/UD/svMTX0Mlj5ZjKN2hnRlSxq22M/BNmCVgRB+D1wSdc9CBIm19I2h1FF6K
	 +maKwoYp/M0kYy0JOZopsF8NUSMWML6+FTS4eQ4eOKh6wrBqzufgpghJCgBmDMcjoZ
	 JD2WdB7RCCy7wRalnUadLg9ZQ4U8XNyWlVSFhQmOlM9VVraklXA27fWPx5l9illyBO
	 fhlGb7S1eYP5g==
Received: from mail.mleia.com (localhost [127.0.0.1])
	by mail.mleia.com (Postfix) with ESMTP id 660573D1F52;
	Thu,  4 Sep 2025 18:47:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mleia.com; s=mail;
	t=1757011621; bh=pjc3OCcYZHxirYKLuK+PjKnhBVAQkE69siUvNNMSLrU=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=RC29yujcH3tFikq4zqkeet21fS40JkSaMh9c/qcC1Y3DpLA3Ut5+As+kmDdZqJEMx
	 RmiOzzTSsgbnoYoayLJTsBKJ+yn15EexlZoTw5tAsnf9iWUiqvnZOs1M4tfVmQMche
	 4pQipC/UD/svMTX0Mlj5ZjKN2hnRlSxq22M/BNmCVgRB+D1wSdc9CBIm19I2h1FF6K
	 +maKwoYp/M0kYy0JOZopsF8NUSMWML6+FTS4eQ4eOKh6wrBqzufgpghJCgBmDMcjoZ
	 JD2WdB7RCCy7wRalnUadLg9ZQ4U8XNyWlVSFhQmOlM9VVraklXA27fWPx5l9illyBO
	 fhlGb7S1eYP5g==
From: Vladimir Zapolskiy <vz@mleia.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: Piotr Wojtaszczyk <piotr.wojtaszczyk@timesys.com>,
	Frank Li <Frank.Li@nxp.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	Roland Stigge <stigge@antcom.de>
Subject: [PATCH 1/7] dt-bindings: arm: nxp: lpc: Assign myself as maintainer of NXP LPC32xx platforms
Date: Thu,  4 Sep 2025 21:46:41 +0300
Message-ID: <20250904184647.397104-2-vz@mleia.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250904184647.397104-1-vz@mleia.com>
References: <20250904184647.397104-1-vz@mleia.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-49551924 
X-CRM114-CacheID: sfid-20250904_184701_433284_645BCB2B 
X-CRM114-Status: UNSURE (   8.98  )
X-CRM114-Notice: Please train this message. 

Make a formal change to reflect the actual NXP LPC32xx maintainership
for the last years.

Signed-off-by: Vladimir Zapolskiy <vz@mleia.com>
Cc: Roland Stigge <stigge@antcom.de>
---
 Documentation/devicetree/bindings/arm/nxp/lpc32xx.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/nxp/lpc32xx.yaml b/Documentation/devicetree/bindings/arm/nxp/lpc32xx.yaml
index f1bd6f50e726..6b7f5e6f99cf 100644
--- a/Documentation/devicetree/bindings/arm/nxp/lpc32xx.yaml
+++ b/Documentation/devicetree/bindings/arm/nxp/lpc32xx.yaml
@@ -7,7 +7,7 @@ $schema: http://devicetree.org/meta-schemas/core.yaml#
 title: NXP LPC32xx Platforms
 
 maintainers:
-  - Roland Stigge <stigge@antcom.de>
+  - Vladimir Zapolskiy <vz@mleia.com>
 
 properties:
   compatible:
-- 
2.49.0


