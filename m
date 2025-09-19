Return-Path: <devicetree+bounces-219387-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 71AB7B8A886
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 18:15:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AE5751CC03E5
	for <lists+devicetree@lfdr.de>; Fri, 19 Sep 2025 16:16:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4A9DC320A3E;
	Fri, 19 Sep 2025 16:15:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TIza+hQX"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2192723C8AA;
	Fri, 19 Sep 2025 16:15:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758298538; cv=none; b=S/ijFDcJl0GLu+v+qHN/1vu1ce5mFzTfJr3KTLIVbqQXmaXGS5iTYtzlMxygLZcG8bAIvntuEcSXz02qNuoJOYSHaUiNPVEzj6Aj2kimphc6rawcSSMEcFfbOhObxQJXoA1qtpVrBcJ7TYjV65SPCekMTovtR+sPjsBQ4snKRWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758298538; c=relaxed/simple;
	bh=HvXNq4XfLD/YdFHnDEJ06o3Q79C7OrC5lg6r+sZy61U=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=OI7HWgbiRWm70+CBn37Of69TMT1B9fZ/atoolWtmGnExuyrwXH+c7RaA7srHBMXFHSUptpD7VUVCZS3bRbBcSiGEC6vWwA6wzSSktb+IMsPJfQeIJtQasXdUA041JgG9GSJc/biGx2tDeOPQXJ/knammlYFM8VwizlezHUPZtfw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TIza+hQX; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 47346C4CEF0;
	Fri, 19 Sep 2025 16:15:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758298537;
	bh=HvXNq4XfLD/YdFHnDEJ06o3Q79C7OrC5lg6r+sZy61U=;
	h=From:To:Cc:Subject:Date:From;
	b=TIza+hQXfo7iaRdqdaXnZZUqfN9lwUkC7wJMGZ7bx7MOsZwBeM5r8EXV3OjEAW+vs
	 9ARZpTDUmxENp4GUesYiVpkAc1SK/5A+wzobw+f98zJoCQKO6D7r0C0zuRafc0hOyb
	 XS6UB20HDK7pQviwWLGlR8jt90BcQiJWmCmhsGsT4M9BkKEKqHkErLwpzWPzeLHGii
	 o3CLzYopFfxZr3n1Dr9FO8qFyo/O89OQkGmLecntMnOiPJdYAgTbhVpRP0OY3d2wsb
	 mTcOr58PiSBNYN9ZIKHp3M80kYgbqDuO30jrm6VFKnI4+YrsByOzP/txDu9GAWfeyf
	 hha6/Bttuqj+w==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: soc@kernel.org,
	Khuong Dinh <khuong@os.amperecomputing.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: apm-shadowcat: Drop "apm,xgene2-pcie" compatible
Date: Fri, 19 Sep 2025 11:15:28 -0500
Message-ID: <20250919161529.1293151-1-robh@kernel.org>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The "apm,xgene2-pcie" compatible is unused, undocumented, and in the
wrong position in the compatible list. Given this is a mature and little
used platform, just remove the compatible rather than fix the order and
document it.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
To: soc@kernel.org
Arnd, please apply directly.
---
 arch/arm64/boot/dts/apm/apm-shadowcat.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/apm/apm-shadowcat.dtsi b/arch/arm64/boot/dts/apm/apm-shadowcat.dtsi
index b98fd434b7d6..261fc10adefb 100644
--- a/arch/arm64/boot/dts/apm/apm-shadowcat.dtsi
+++ b/arch/arm64/boot/dts/apm/apm-shadowcat.dtsi
@@ -609,7 +609,7 @@ usb0: usb@19000000 {
 		pcie0: pcie@1f2b0000 {
 			status = "disabled";
 			device_type = "pci";
-			compatible = "apm,xgene-pcie", "apm,xgene2-pcie";
+			compatible = "apm,xgene-pcie";
 			#interrupt-cells = <1>;
 			#size-cells = <2>;
 			#address-cells = <3>;
@@ -635,7 +635,7 @@ pcie0: pcie@1f2b0000 {
 		pcie1: pcie@1f2c0000 {
 			status = "disabled";
 			device_type = "pci";
-			compatible = "apm,xgene-pcie", "apm,xgene2-pcie";
+			compatible = "apm,xgene-pcie";
 			#interrupt-cells = <1>;
 			#size-cells = <2>;
 			#address-cells = <3>;
-- 
2.51.0


