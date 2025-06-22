Return-Path: <devicetree+bounces-188162-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 332DEAE2FBD
	for <lists+devicetree@lfdr.de>; Sun, 22 Jun 2025 14:07:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7480F3AE5D9
	for <lists+devicetree@lfdr.de>; Sun, 22 Jun 2025 12:07:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D12C41DED42;
	Sun, 22 Jun 2025 12:07:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L5y929jX"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE1B41DE8AE
	for <devicetree@vger.kernel.org>; Sun, 22 Jun 2025 12:07:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750594070; cv=none; b=YaYt9SuCkUHljhVm5LLcJSMZ7Pl8QNE0546u8jUi7x4kPsqO+82UsLaBqB6bAafMyrbz4eezyM7kzjOMvwk9CVZfRZM9qkoN0t0TxDYgc3FbjG4q5m2aBk5BcoqqZOzlu1oW8RSn7uYq/mUnbDm1hOJQzPIUBRvAuIGO4hNLys4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750594070; c=relaxed/simple;
	bh=FdZ7hbwrsaJTNDiN9V/W0kcyOjo5aIDXqiCHdaiwjcg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=h22kpHDw5aaFog7bcjM5dJ4gDbqh4ny3V/Brajj7FP7YlXv7uo/f3EmAdqtBzmU2qQ62gmey44RC2LdzMnq4N1DmFT8kevjnn72YdAvPC9zqf6oKQr0P9x+jhKCjrpSJU5aDhDLfDSJlWocwQREIjzLOX9WsIxdfOb0P69NIIMU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L5y929jX; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id C10BFC4CEF3;
	Sun, 22 Jun 2025 12:07:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750594070;
	bh=FdZ7hbwrsaJTNDiN9V/W0kcyOjo5aIDXqiCHdaiwjcg=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=L5y929jXoZwasRwowOx2fAjOkzx2Xea0N9Pk9fAY4UhiT2q2qP3p8CJsrA4DL1iOp
	 CeL1bCXiIhuyFpsqvW0aQu8Q+0dZglGAzJEvEnBr3y1yRcd73iorDaPMXFftKsNbbd
	 cYcvvXk7Leh2zNloTU5a8MXIZpyQojsxIeF1sBechpjdk7+KWKIlykFlWuWaxrWnWy
	 HFp/55RwQHwmymKDbcUFbqqNAVjQJaaRjwIrYOKWWQIiS0cuus0q2pEUIK3XbXLi8R
	 2E2tQYsrgEQ5MWMFq7tRBcNZJt8U5j5a9Kljikz/OqucQp3WqBI0rHENjWsSiDX5b7
	 DjI+hsEWEGrsA==
From: Dinh Nguyen <dinguyen@kernel.org>
To: robh+dt@kernel.org,
	krzysztof.kozlowskii+dt@linaro.org,
	conor+dt@kernel.org
Cc: dinguyen@kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 2/6] arm64: dts: socfpga: stratix10: fix dtbs_check for rstmgr
Date: Sun, 22 Jun 2025 07:07:32 -0500
Message-ID: <20250622120737.600336-2-dinguyen@kernel.org>
X-Mailer: git-send-email 2.42.0.411.g813d9a9188
In-Reply-To: <20250622120737.600336-1-dinguyen@kernel.org>
References: <20250622120737.600336-1-dinguyen@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add the default "altr,rst-mgr" to the rstmgr node on Stratix10.

This fixes this warning:

arch/arm64/boot/dts/altera:33:10
	rstmgr@ffd11000 (altr,stratix10-rst-mgr): compatible: 'oneOf' conditional
	failed, one must be fixed:

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
index 0def0b0daaf7..f0f659139f22 100644
--- a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
@@ -395,7 +395,7 @@ pinctrl1: pinctrl@ffd13100 {
 
 		rst: rstmgr@ffd11000 {
 			#reset-cells = <1>;
-			compatible = "altr,stratix10-rst-mgr";
+			compatible = "altr,stratix10-rst-mgr", "altr,rst-mgr";
 			reg = <0xffd11000 0x1000>;
 		};
 
-- 
2.42.0.411.g813d9a9188


