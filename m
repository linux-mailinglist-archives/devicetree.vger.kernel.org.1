Return-Path: <devicetree+bounces-253033-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id B39C3D06831
	for <lists+devicetree@lfdr.de>; Fri, 09 Jan 2026 00:06:30 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id B357230245D9
	for <lists+devicetree@lfdr.de>; Thu,  8 Jan 2026 23:06:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2C5B02E8DEF;
	Thu,  8 Jan 2026 23:06:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="poVEa1xZ"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08F1D225A35;
	Thu,  8 Jan 2026 23:06:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767913565; cv=none; b=s/oLMTFAhPJ7UAQI48MvCs/zuakweIlxlDRfBvjjXdk2ErOvbAyxcH9Tp/CbRS8VpXwLgjI3v0kSaGn+dFvKKQe6fK47I0gyDYsZ7F8yAvaCBTxY2Js/TZTn6u7fVg1Yw2DcZ3OMhXlcFZNay0cAmu46dgw9hM3Dc3KdTzBEsDA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767913565; c=relaxed/simple;
	bh=2IQ4kXPyDAgenTx3hMT0WnQ4Gm8ePKDN1OIlZnJo+nI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=mYOJgdoDklYN6ad/0aNSlAwY7nqADMDsbEjQY7UpV3AKRwbZ6S5Zlmqv1RiytCXODRArwxFgwZSrwc1I3FvB4STxh57MwkkXgdiGfasN/StOIIy031p7vWeJn7TGa8cPXvfMZOzDk9hvuRnz7X6ITmqUFdA928zseh5+8ueML7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=poVEa1xZ; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7074DC116C6;
	Thu,  8 Jan 2026 23:06:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767913564;
	bh=2IQ4kXPyDAgenTx3hMT0WnQ4Gm8ePKDN1OIlZnJo+nI=;
	h=From:To:Cc:Subject:Date:From;
	b=poVEa1xZ5a9EHXWpyJ4aN2iqOCrwczthJzlj0KeEVVqbPHxtJXPjlARCCWL2Ixbf3
	 Av6itpc5KsuwV0BuNzeqIFgzCROLGKSvEU82ztbFu+pSjtB50x5gVd0D8SIo1J8q+e
	 Ek4Ow3Z+g3TKMlh3UoIi1KOAg7qm0Ri5LTUhntTtgLUjm9g79nCuizquKomBmGaCaW
	 sWHBA6O3AbimJxIq/0M9RtKJEA2I13ijgGZYrMgy9yay+jxmIW3LmUPqpFr5HsLlUF
	 GatoGJrVUpCCL1Ssqxcb4tOOFr+VzpPK1/FreMuD6eo1EKmBibhbwoA9xSK3HYiZj4
	 Ua4LKJUG0bLaA==
From: "Rob Herring (Arm)" <robh@kernel.org>
To: Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] arm64: dts: rockchip: rk3568-wolfvision: Drop "sitronix,st7789v" fallback compatible
Date: Thu,  8 Jan 2026 17:05:59 -0600
Message-ID: <20260108230600.1348699-1-robh@kernel.org>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

"sitronix,st7789v" is not a defined fallback for
"jasonic,jt240mhqs-hwt-ek-e3", so drop it.

Signed-off-by: Rob Herring (Arm) <robh@kernel.org>
---
 .../boot/dts/rockchip/rk3568-wolfvision-pf5-display-vz.dtso    | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5-display-vz.dtso b/arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5-display-vz.dtso
index 70c23e1bf14b..d1a906031912 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5-display-vz.dtso
+++ b/arch/arm64/boot/dts/rockchip/rk3568-wolfvision-pf5-display-vz.dtso
@@ -11,7 +11,6 @@
 #include "rk3568-wolfvision-pf5-display.dtsi"
 
 &st7789 {
-	compatible = "jasonic,jt240mhqs-hwt-ek-e3",
-		     "sitronix,st7789v";
+	compatible = "jasonic,jt240mhqs-hwt-ek-e3";
 	rotation = <270>;
 };
-- 
2.51.0


