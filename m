Return-Path: <devicetree+bounces-249999-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 6972FCE57E5
	for <lists+devicetree@lfdr.de>; Sun, 28 Dec 2025 23:19:31 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 4EDB43000B7B
	for <lists+devicetree@lfdr.de>; Sun, 28 Dec 2025 22:19:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E54FD285CA8;
	Sun, 28 Dec 2025 22:19:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qvAoqtTp"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C0039226CEB
	for <devicetree@vger.kernel.org>; Sun, 28 Dec 2025 22:19:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766960367; cv=none; b=Qh/jFYR8YW4GI/ksKeJ9J5VQLpl0/3K/oZusNgsuxoJ02cmnkE+4tSsgMsC6pLh3D07k4gaH+tu5xsWOlhSBLu6MLc71XbLZXq0KG02ME/NFlywg8enttRZEuXxTexAXeYcv0XH8nlrWx932FcXA++/4sCJDsNCd1Ty4fU6XxJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766960367; c=relaxed/simple;
	bh=5ifxzQ9ELmxic5Jra9VsD3bRX3JB1xMMc4xwUKVG9BM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=RpdOVai3ztggm1QZ5aocXWaReG5qqapAbFmv24gVDtVGNwMYexLfMbmu0/HQHZjkCHViHkVkOFxztlahSCwHS2RDvhKRJOapiZW/MwuAFA5nU6kErEIOW9a15ExJWOjenKWjHFb1qPL5N5VNZCD1NBvQWpSREDdWB6ln+rmUSMQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qvAoqtTp; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EC2ACC4CEFB;
	Sun, 28 Dec 2025 22:19:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766960367;
	bh=5ifxzQ9ELmxic5Jra9VsD3bRX3JB1xMMc4xwUKVG9BM=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=qvAoqtTpeD3uAdKnbBMfCsIEsHdmQY1/YjtVjlMLn6+KQeglI09xt5UHxMKTCbOY5
	 sX6NzORoh+objJQtx4hyyrhO6NNDZhwHF31+ytWGAHMBlzupaofjL5d3uYizf8sty9
	 LQKL81NrqxzSwL0qnbWpfui0SNj7lp+H3q2wikleIJN9CSJk7rPfI7HrjcbgXRixmA
	 7Klhrm+xZnonTiOGYhwwtNAYGAJz4w8cGkO0Lx9o1OejEI27lxE6SFRWMuXMM+b2Ou
	 KrrNWM6VGLXq5vzZWhJKR2XNEViUakOW6g4OwuKSvhVEEblsot8PKzkXHensRBDZic
	 I9KGHg9jAhswg==
From: Dinh Nguyen <dinguyen@kernel.org>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org
Cc: dinguyen@kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 3/5] ARM: dts: socfpga: fix fpga_bridge nodename to fpga-bridge
Date: Sun, 28 Dec 2025 16:18:44 -0600
Message-ID: <20251228221846.863904-3-dinguyen@kernel.org>
X-Mailer: git-send-email 2.42.0.411.g813d9a9188
In-Reply-To: <20251228221846.863904-1-dinguyen@kernel.org>
References: <20251228221846.863904-1-dinguyen@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The fpga_bridge node name should be separated by a '-' not '_'.

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 arch/arm/boot/dts/intel/socfpga/socfpga.dtsi | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/intel/socfpga/socfpga.dtsi b/arch/arm/boot/dts/intel/socfpga/socfpga.dtsi
index 35be14150f41..ba24f971686e 100644
--- a/arch/arm/boot/dts/intel/socfpga/socfpga.dtsi
+++ b/arch/arm/boot/dts/intel/socfpga/socfpga.dtsi
@@ -523,7 +523,7 @@ h2f_user2_clk: h2f_user2_clk {
 				};
 		};
 
-		fpga_bridge0: fpga_bridge@ff400000 {
+		fpga_bridge0: fpga-bridge@ff400000 {
 			compatible = "altr,socfpga-lwhps2fpga-bridge";
 			reg = <0xff400000 0x100000>;
 			resets = <&rst LWHPS2FPGA_RESET>;
@@ -531,7 +531,7 @@ fpga_bridge0: fpga_bridge@ff400000 {
 			status = "disabled";
 		};
 
-		fpga_bridge1: fpga_bridge@ff500000 {
+		fpga_bridge1: fpga-bridge@ff500000 {
 			compatible = "altr,socfpga-hps2fpga-bridge";
 			reg = <0xff500000 0x10000>;
 			resets = <&rst HPS2FPGA_RESET>;
-- 
2.42.0.411.g813d9a9188


