Return-Path: <devicetree+bounces-246971-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 72421CC211A
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 12:05:12 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 30BEC307F625
	for <lists+devicetree@lfdr.de>; Tue, 16 Dec 2025 11:01:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6811F33F38A;
	Tue, 16 Dec 2025 11:01:31 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mx.socionext.com (mx.socionext.com [202.248.49.38])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 84C5F33BBBC;
	Tue, 16 Dec 2025 11:01:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.248.49.38
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765882891; cv=none; b=b6NEb2W+eH3CF4fEn16jgaEEA3Xl8JCWUztR3Cupck8TCTChAcnU+UL1/s9UiFgTYjuZKiA3b/SWlF3ptI7TAMP0iJ1+CR8KuYb+7QVeKmpWpi7+Dm9L46qsSp3nlPboseVLHEZ+fm1kKRe4SL0pRdKXgITsjQZhia5jK+GRa20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765882891; c=relaxed/simple;
	bh=wMhjvjAsI0iCBgC0NYWamhmF/7NUruwG/RiGxwc6WzA=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=jJDkpv0zAK88vJBnWzXqqEV7Q+MfCgR7VJyMDwy26XjXL2z07pzWNIizm8gesiWzNl9eP6v1aS1ZANq8/jqma+GToQBhoGrbHGgp3Y1Hq7kRFEcsfyLsYyOOSRlVtBXxna4mnk5b/ygUXtr1eUwh77zDO9DwtMXtaAqZhUP+ito=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=socionext.com; spf=pass smtp.mailfrom=socionext.com; arc=none smtp.client-ip=202.248.49.38
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=socionext.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=socionext.com
Received: from unknown (HELO kinkan3-ex.css.socionext.com) ([172.31.9.52])
  by mx.socionext.com with ESMTP; 16 Dec 2025 20:01:28 +0900
Received: from mail.mfilter.local (mail-arc01.css.socionext.com [10.213.46.36])
	by kinkan3-ex.css.socionext.com (Postfix) with ESMTP id A5CB12069FC4;
	Tue, 16 Dec 2025 20:01:28 +0900 (JST)
Received: from kinkan3.css.socionext.com ([172.31.9.51]) by m-FILTER with ESMTP; Tue, 16 Dec 2025 20:01:28 +0900
Received: from plum.e01.socionext.com (unknown [10.212.245.39])
	by kinkan3.css.socionext.com (Postfix) with ESMTP id 602451C55;
	Tue, 16 Dec 2025 20:01:28 +0900 (JST)
From: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Masami Hiramatsu <mhiramat@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
Subject: [PATCH 3/5] ARM: dts: uniphier: Drop unit-address from port node of wm8960
Date: Tue, 16 Dec 2025 20:01:11 +0900
Message-Id: <20251216110113.1801245-4-hayashi.kunihiko@socionext.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251216110113.1801245-1-hayashi.kunihiko@socionext.com>
References: <20251216110113.1801245-1-hayashi.kunihiko@socionext.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The "port" node represents a logical connection and does not have a
reg property. According to dt-bindings, the "port" node should not use
unit-address. Rename "port@0" to "port" to remove warnings.

  arch/arm/boot/dts/socionext/uniphier-pxs2-gentil.dtb: wm8960@1a (wlf,wm8960):
  Unevaluated properties are not allowed ('port@0' was unexpected)

Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
---
 arch/arm/boot/dts/socionext/uniphier-pxs2-gentil.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/socionext/uniphier-pxs2-gentil.dts b/arch/arm/boot/dts/socionext/uniphier-pxs2-gentil.dts
index 5f18b926c50a..78653d4bec0b 100644
--- a/arch/arm/boot/dts/socionext/uniphier-pxs2-gentil.dts
+++ b/arch/arm/boot/dts/socionext/uniphier-pxs2-gentil.dts
@@ -68,7 +68,7 @@ wm8960@1a {
 		reg = <0x1a>;
 		#sound-dai-cells = <0>;
 
-		port@0 {
+		port {
 			wm_speaker: endpoint {
 				dai-format = "i2s";
 				remote-endpoint = <&i2s_aux>;
-- 
2.34.1


