Return-Path: <devicetree+bounces-135183-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id C64D1A00026
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 21:42:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9DFBE162FD8
	for <lists+devicetree@lfdr.de>; Thu,  2 Jan 2025 20:42:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7CEB01B87E3;
	Thu,  2 Jan 2025 20:42:17 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from freeshell.de (freeshell.de [116.202.128.144])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DEB5E1B85CA;
	Thu,  2 Jan 2025 20:42:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=116.202.128.144
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735850537; cv=none; b=i3Zzl31V2kDDLoSuO/d1U7SFbuhgeMCgrRMVAiMwA/GoewSL/XDC1LodyMqjdmf/froMKWV6dOaLs47ExNBzqjJMnUpHgXFRfcuVR2CWRuC9DW418XAnLWj+SfJ+OO6negd7WsQV18SQXlZ4omYQRpNzmsLGgMYxMIdAGHGrBQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735850537; c=relaxed/simple;
	bh=Pps2c+jDvrdC8pdFKVj5nZYhNq/vIPuVWMOWWdk0iIw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=sHID00bgD45I8QsqTtwAlHjuPwG2cwGuu41b0ioAmQjGd2Jwh0kv6VqNQyvtM303hvfXZ+uSXTcMzWb4yllJVCCjaF1Y5ID8gaXQ7EJEjW3dpRmj7CkDeZ6bH19Zf23sIRGmJn3u51cV+Dz/6cjdp6ocs26cFLLDsDm2C1McPvY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=freeshell.de; spf=pass smtp.mailfrom=freeshell.de; arc=none smtp.client-ip=116.202.128.144
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=freeshell.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=freeshell.de
Received: from hay.lan. (unknown [IPv6:2605:59c8:31de:bf00:6ecf:39ff:fe00:8375])
	(Authenticated sender: e)
	by freeshell.de (Postfix) with ESMTPSA id EE03FB221E12;
	Thu,  2 Jan 2025 21:42:10 +0100 (CET)
From: E Shattow <e@freeshell.de>
To: Conor Dooley <conor@kernel.org>,
	Emil Renner Berthing <kernel@esmil.dk>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Paul Walmsley <paul.walmsley@sifive.com>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>
Cc: linux-kernel@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	E Shattow <e@freeshell.de>
Subject: [RFC PATCH v1 1/3] riscv: dts: starfive: jh7110: add timer node
Date: Thu,  2 Jan 2025 12:41:21 -0800
Message-ID: <20250102204137.423081-2-e@freeshell.de>
X-Mailer: git-send-email 2.45.2
In-Reply-To: <20250102204137.423081-1-e@freeshell.de>
References: <20250102204137.423081-1-e@freeshell.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

no idea if this does anything useful; not needed for boot

Signed-off-by: E Shattow <e@freeshell.de>
---
 arch/riscv/boot/dts/starfive/jh7110.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/riscv/boot/dts/starfive/jh7110.dtsi b/arch/riscv/boot/dts/starfive/jh7110.dtsi
index 0d8339357bad..0bc922b3ae8a 100644
--- a/arch/riscv/boot/dts/starfive/jh7110.dtsi
+++ b/arch/riscv/boot/dts/starfive/jh7110.dtsi
@@ -344,6 +344,15 @@ tdm_ext: tdm-ext-clock {
 		#clock-cells = <0>;
 	};
 
+	timer {
+		compatible = "riscv, timer";
+		interrupts-extended = <&cpu0_intc 5>,
+				      <&cpu1_intc 5>,
+				      <&cpu2_intc 5>,
+				      <&cpu3_intc 5>,
+				      <&cpu4_intc 5>;
+	};
+
 	soc {
 		compatible = "simple-bus";
 		interrupt-parent = <&plic>;
-- 
2.45.2


