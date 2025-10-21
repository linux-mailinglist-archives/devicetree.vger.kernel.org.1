Return-Path: <devicetree+bounces-229159-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B92ABF4903
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 06:02:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 23DAE464DD9
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 04:02:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 381E6229B18;
	Tue, 21 Oct 2025 04:02:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oDPj8OUx"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14956224B09
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 04:02:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761019365; cv=none; b=IBO3E00N8T5zQ6vLV3sa4+0zjTYtcWxleTZtXPJVAbhrV7pdAvs0+94IxHGccXZkypT4WOa8O5LnJEpYLXh+G9Egz0/vJZXaocKuHE4xYp6rjS/0hLDlqQQRkCtALziZNrSkFLTsW17naAWWcEELZyawLwKbSv5+bZEiwyyffTQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761019365; c=relaxed/simple;
	bh=nETL1zVkkpG9XcNBl1VFFiJaRcYD4B1yp+oXHgqx1sM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Oc+98qtug8FpgkN/ZwbuQAIvpbM5tP7KR7ovViX+UzmBmis0JquD4oFVSoj0shwaCYwZ5UhiInNx4dhYT0IcU/X1jZ4vTPhgRRzTZgiMDP0fexwnj9RKuh+V+UHcpOswDvhBlSaYDu3MhIF5MDqNaOytOaKvkzZHanAusL1gpy0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oDPj8OUx; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 2CBBAC19421;
	Tue, 21 Oct 2025 04:02:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761019364;
	bh=nETL1zVkkpG9XcNBl1VFFiJaRcYD4B1yp+oXHgqx1sM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=oDPj8OUxMtf/SQTIQmNpE3TYLu99W9qWFrywYM9F60CsIP5A6RYh0Ffhme/XJIVPq
	 lOWo8IO05eMho7Gl5XirfHDfcZiJZpcr6H0B6xhm5Qk4ej4iaaxmAvYB+ndYbNsHf7
	 WI/hkFBYxabjO7FhrZFItJOHdVbDF48UnT1K7EsvcGdziJbItVogPOCIybjP99Ieix
	 K53TUBrTLVJolmPgvUdpAz4i+yUAdtg7g3nqClBVnpBUKuHegzWCMiSAcun83NUi8j
	 nqCJwKbLAol0LUmOapIpJ4ND9a59FCSU4f+liqL1XuqK5IhX353ufqq1xWuTyMlY8n
	 vkRf3Ig+3b0Zg==
From: Dinh Nguyen <dinguyen@kernel.org>
To: devicetree@vger.kernel.org
Cc: dinguyen@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowskii+dt@linaro.org,
	conor+dt@kernel.org
Subject: [PATCH 2/3] arm64: dts: socfpga: stratix10: fix bindings warning for ecc manager
Date: Mon, 20 Oct 2025 23:02:29 -0500
Message-ID: <20251021040230.759832-2-dinguyen@kernel.org>
X-Mailer: git-send-email 2.42.0.411.g813d9a9188
In-Reply-To: <20251021040230.759832-1-dinguyen@kernel.org>
References: <20251021040230.759832-1-dinguyen@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Fix ranges warning: Warning (simple_bus_reg): /soc@0/eccmgr: missing or
empty reg/ranges property

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
index 657e986e5dba..d72d998adb7b 100644
--- a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
@@ -581,7 +581,7 @@ sdr: sdr@f8011100 {
 			reg = <0xf8011100 0xc0>;
 		};
 
-		eccmgr {
+		eccmgr: eccmgr@ff8c0000 {
 			compatible = "altr,socfpga-s10-ecc-manager",
 				     "altr,socfpga-a10-ecc-manager";
 			altr,sysmgr-syscon = <&sysmgr>;
@@ -590,7 +590,7 @@ eccmgr {
 			interrupts = <0 15 4>;
 			interrupt-controller;
 			#interrupt-cells = <2>;
-			ranges;
+			ranges = <0 0xff8c0000 0x10000>;
 
 			sdramedac {
 				compatible = "altr,sdram-edac-s10";
-- 
2.42.0.411.g813d9a9188


