Return-Path: <devicetree+bounces-188163-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D05CAE2FBE
	for <lists+devicetree@lfdr.de>; Sun, 22 Jun 2025 14:07:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id E45E618931FF
	for <lists+devicetree@lfdr.de>; Sun, 22 Jun 2025 12:08:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 61D071DF751;
	Sun, 22 Jun 2025 12:07:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CLQpoNOt"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EE6A1DE8AE
	for <devicetree@vger.kernel.org>; Sun, 22 Jun 2025 12:07:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750594071; cv=none; b=i7hrQcJw1mBpJYFy4k63fKQ3WGS4c+WEbx3XBaEvj1dSHHow3A9/tfvmxnvNa4ZNXdJzvRV8QfMe5Y0AC4ItmNEErhD6nFdu0LgHcBDwfupOMjaJAnMxvlN3Jm1zQsN7cenmyjHNj8q5vbPeYbQfqjO6iXwo3YDl+c96pHBcm7M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750594071; c=relaxed/simple;
	bh=hKGwKBCPtytOTYKb/m44spsz18tLrhdZI3e7F3t8C1g=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=rhunPrg+YslRjhnYPjFbjYbyD+zYUWeJ2Bb25iGAlAwXVBmU9cSewB9uiRkfiVYr4IP7tgQ8aTzmZEzoFMVcBkqj9JKHdKz59zZpfMOT9YJN5AinNN5asWfh19kmyjMl4OK2Tzomi45Jkl3ZbNC+ZMSC3zBjIB97695YWxVUhAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CLQpoNOt; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 6BE88C4CEE3;
	Sun, 22 Jun 2025 12:07:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750594070;
	bh=hKGwKBCPtytOTYKb/m44spsz18tLrhdZI3e7F3t8C1g=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=CLQpoNOtgT9JkGwZl1ODl7bh1n4hkcfZeJTWpetbIrZMqXc3CvqSJIZLXNxA9d7VK
	 3fb3xbOqGeEQnG0bynFc63yH21kfd1q1zo5AYFe74vVwvsUUXJkdjJfcpvavc1ukD9
	 4YT+OSj29nclUHRMoCHmToGdEiWbTqeCLIgTRsVP/gHTthkP6tX8BqWIlEvcFSsqr7
	 3F8FiWJAnuvw1zx9ve8QQYipjvOCQKQDve1s9bzP+yMr6Tdauv5GsKF9tukEKtbZbZ
	 Anl3p/W5BSzUG6G0JlZckkZas8S3vmJb7YaN5O/G11SDi/sTXL9fQGS8NnS8cm5SKL
	 KgrIDxNQr3mBw==
From: Dinh Nguyen <dinguyen@kernel.org>
To: robh+dt@kernel.org,
	krzysztof.kozlowskii+dt@linaro.org,
	conor+dt@kernel.org
Cc: dinguyen@kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 3/6] arm64: dts: socfpga: swvp: remove altr,modrst-offset
Date: Sun, 22 Jun 2025 07:07:33 -0500
Message-ID: <20250622120737.600336-3-dinguyen@kernel.org>
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

'altr,modrst-offset' property is not applicable for arm64 SoCFPGA
platforms.

This will fix this dtbs_check warning:

socfpga_stratix10_swvp.dtb:
	rstmgr@ffd11000: altr,modrst-offset: False schema does not allow 32

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 arch/arm64/boot/dts/altera/socfpga_stratix10_swvp.dts | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10_swvp.dts b/arch/arm64/boot/dts/altera/socfpga_stratix10_swvp.dts
index 34ccf8138f7b..33a765c9177d 100644
--- a/arch/arm64/boot/dts/altera/socfpga_stratix10_swvp.dts
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10_swvp.dts
@@ -103,10 +103,6 @@ &usb1 {
 	status = "okay";
 };
 
-&rst {
-	altr,modrst-offset = <0x20>;
-};
-
 &sysmgr {
 	reg = <0xffd12000 0x1000>;
 	interrupts = <0x0 0x10 0x4>;
-- 
2.42.0.411.g813d9a9188


