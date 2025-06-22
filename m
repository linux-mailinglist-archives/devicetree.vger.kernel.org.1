Return-Path: <devicetree+bounces-188165-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EA18AE2FC2
	for <lists+devicetree@lfdr.de>; Sun, 22 Jun 2025 14:08:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 464B1167F24
	for <lists+devicetree@lfdr.de>; Sun, 22 Jun 2025 12:07:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B34A71DFDA5;
	Sun, 22 Jun 2025 12:07:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sD0K8Q9O"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8F36D1990B7
	for <devicetree@vger.kernel.org>; Sun, 22 Jun 2025 12:07:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750594072; cv=none; b=DCplOQLGjmD1nK8h+352Qut93zeeRIwauGgc/O8LcMYh1EE3guVzNMaVYSbFDaaVHnPv/LNyZ3LKiKoIdREfvXwGpytgsqA5tMAsN1dpNK6gjOZQcmDnvZA85vLSFWmU6nw930DdUHUpf2jATvOmCu7R2qW5k8ARd3Cu2e+Ajps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750594072; c=relaxed/simple;
	bh=9ZnKHni6gEfGg+QFw1ik3FKLDuP2nvJHIUTi5E0Io7E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=j/JYRPoqp0jk6QiDiuVyHMdWM6jWcrIMsYKS8HkuKY7iDbGplRJzjNdV8dQOEFW06fUHpy67f4zDJTXNvA3o/1KcnSsM8xslTTGFh0/b5U9O/zXmuXTD+wre0mxI/FGhFG7QDEh8av/kKBTdTWxQAmAjgwfJiAM5F70y/+DQL1A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sD0K8Q9O; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id AB26FC4AF0B;
	Sun, 22 Jun 2025 12:07:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750594072;
	bh=9ZnKHni6gEfGg+QFw1ik3FKLDuP2nvJHIUTi5E0Io7E=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=sD0K8Q9OvoJv+/CMxW/d3zUD1LQHqX+cigRnklewuS3UcV3nr0/s8L0s7L7Py3jnS
	 PVxDin7qMyJ1qkuJ7JGXkHlkXoSnVAyvSP7J0gOjFtu5QCdAXi/SYw+akTWzkeNYjD
	 gVGGwseB23YSO0cSmh0p0jFY4tspOUaoq5yMTyZCTkLVGvHwMzib+e8IkuUiOP5VNc
	 7WXf/ollyX8yFzLNOgEGYrUTEsnUIP81wPhduh3IMFe1qrglAQQhVEjc9pAyrYD8UW
	 44N210XPt7DKOLoAQENKbaFOT/Akcw4xysZDth4wZkC2V9ZV3goJ753OYyc1UqCqRh
	 oSkeSHjA5ZqdA==
From: Dinh Nguyen <dinguyen@kernel.org>
To: robh+dt@kernel.org,
	krzysztof.kozlowskii+dt@linaro.org,
	conor+dt@kernel.org
Cc: dinguyen@kernel.org,
	devicetree@vger.kernel.org
Subject: [PATCH 4/6] arm64: dts: stratix10: add clock-frequency to FPGA fixed-clocks
Date: Sun, 22 Jun 2025 07:07:35 -0500
Message-ID: <20250622120737.600336-5-dinguyen@kernel.org>
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

Add an arbitrary 100MHz for clock-frequency for the following clocks:
cb-intosc-ls-clk and f2s-free-clk.

This will fix the following warnings:
socfpga_stratix10_swvp.dtb:
cb-intosc-ls-clk: 'clock-frequency' is a required property
f2s-free-clk: 'clock-frequency' is a required property

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
index f0f659139f22..d024200c3031 100644
--- a/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
+++ b/arch/arm64/boot/dts/altera/socfpga_stratix10.dtsi
@@ -130,16 +130,19 @@ clocks {
 		cb_intosc_hs_div2_clk: cb-intosc-hs-div2-clk {
 			#clock-cells = <0>;
 			compatible = "fixed-clock";
+			clock-frequency = <100000000>;
 		};
 
 		cb_intosc_ls_clk: cb-intosc-ls-clk {
 			#clock-cells = <0>;
 			compatible = "fixed-clock";
+			clock-frequency = <100000000>;
 		};
 
 		f2s_free_clk: f2s-free-clk {
 			#clock-cells = <0>;
 			compatible = "fixed-clock";
+			clock-frequency = <100000000>;
 		};
 
 		osc1: osc1 {
-- 
2.42.0.411.g813d9a9188


