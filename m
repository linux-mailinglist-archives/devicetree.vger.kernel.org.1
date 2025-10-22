Return-Path: <devicetree+bounces-229561-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 9C8C8BF9AE1
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 04:10:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 9EF274E7525
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 02:10:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 273321E9B37;
	Wed, 22 Oct 2025 02:10:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ferwlI7t"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0198817A309
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 02:10:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761099049; cv=none; b=CrAyhJvwWv/XxaEmlaITn/N7giPxi/mH+DZmHBKz4EnDj2+jIpYMo7icneOdainij/eeLOHwg5hEMvfcglXvYRrSZq9xZdkM5cbNA05D+sxhEuEwXcOPg7Z6Nz+0fAA0VdOHyaYSBwH42besuFpa7ePwd1TJ6aHkZ+0Ers72BEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761099049; c=relaxed/simple;
	bh=NSefDRP4dFYi82tEyx47zOJ0kYBoX2wn01Y9KEBfbgE=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=ATYQqY6TEeuV0ktk1m+shtQTTaNPHqpC2GaASp0MlZ+xR7egTcNNjqpLeyFwC1ZQrltGlD35LqJUXkeb7ZuVPpY62PCdfXvPPiIw7ixNK26mdwdk1jcPt273LLHUpfug7CP4upwTNUGudIDa+0+9Lx8FWAPseycolzqP1AQS7S0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ferwlI7t; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 327B6C4CEF1;
	Wed, 22 Oct 2025 02:10:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761099048;
	bh=NSefDRP4dFYi82tEyx47zOJ0kYBoX2wn01Y9KEBfbgE=;
	h=From:To:Cc:Subject:Date:From;
	b=ferwlI7tSiPcj/VsGMx7cypNIbt+uBjb3WynoUDjF3KRUPhjnObk2aKT5mBwM4wAV
	 2mdAKSzEWmjKjsoH88gRLueKodNYtG4i/iqCL/+TV0DnCdDF8evaE3A/VKQZRoUzwD
	 AN75o88AgD+94dBoLn+L/Q4r+mvPwEsMnNuUdYQQ+OrG46FEWMtBW4Q8pTO66EfY+q
	 mXwK/o32dWK0rIOJ2qNcrhqAJrrmdQkqlmPxCCrR1a/p2qNbvI4mu2pkryM6CC36Hb
	 n/NzKfu4upDDSj6m8o8NyGLFLqh5IvQXp5yLM2byYznHd5QV+ARe+g6ecvwtyTqgMB
	 7uwUVJb1SGtvg==
From: Dinh Nguyen <dinguyen@kernel.org>
To: devicetree@vger.kernel.org
Cc: dinguyen@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowskii+dt@linaro.org,
	conor+dt@kernel.org
Subject: [PATCH 1/3] arm64: dts: socfpga: stratix10-swvp: fix dtbs_check warnings swvp
Date: Tue, 21 Oct 2025 21:10:28 -0500
Message-ID: <20251022021030.171216-1-dinguyen@kernel.org>
X-Mailer: git-send-email 2.42.0.411.g813d9a9188
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Unevaluated properties are not allowed ('phy-addr' was unexpected)

socfpga_stratix10_swvp.dtb: sysmgr@ffd12000 (altr,sys-mgr-s10):
'interrupts' does not match any of the regexes:

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 arch/arm64/boot/dts/altera/socfpga_stratix10_swvp.dts | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10_swvp.dts b/arch/arm64/boot/dts/altera/socfpga_stratix10_swvp.dts
index ad52e8a0b9ba..5ba6ca4ef19a 100644
--- a/arch/arm64/boot/dts/altera/socfpga_stratix10_swvp.dts
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10_swvp.dts
@@ -62,7 +62,6 @@ &osc1 {
 &gmac0 {
 	status = "okay";
 	phy-mode = "rgmii";
-	phy-addr = <0xffffffff>;
 };
 
 &gmac1 {
@@ -73,7 +72,6 @@ &gmac1 {
 &gmac2 {
 	status = "okay";
 	phy-mode = "rgmii";
-	phy-addr = <0xffffffff>;
 };
 
 &mmc {
@@ -104,5 +102,4 @@ &usb1 {
 
 &sysmgr {
 	reg = <0xffd12000 0x1000>;
-	interrupts = <0x0 0x10 0x4>;
 };
-- 
2.42.0.411.g813d9a9188


