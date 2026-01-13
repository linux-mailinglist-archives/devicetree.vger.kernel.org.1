Return-Path: <devicetree+bounces-254233-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9CC80D1656D
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 03:41:35 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 64C64302D526
	for <lists+devicetree@lfdr.de>; Tue, 13 Jan 2026 02:38:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 54EC1257848;
	Tue, 13 Jan 2026 02:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="UgDqbfgl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dy1-f174.google.com (mail-dy1-f174.google.com [74.125.82.174])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C7F12D8DB9
	for <devicetree@vger.kernel.org>; Tue, 13 Jan 2026 02:38:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.174
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768271933; cv=none; b=JCVEZZV65zTpyvptdFXWEvhnfmGVFuYiwxEIdOFEsw3RocznMNuF9tLRyzDtTmPv95mlHA6m/ZY3YvBiy3bXoshQ0jSd0273HUzY2ezGX6FLNF3D9s8jlBVCpvWPgLeA6paV5EL2AgtrMlh3RCRooEjZgjjdNsf04IGJ7tMVnNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768271933; c=relaxed/simple;
	bh=p9ngGgJ4JV7pODYpIpCRQ3ZdYPvP3CmdhvKdB1ce2z4=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=OJU5TdLVHOxBvilMciOMPaYMxOwO+tpjOY3+lKvRGRi2AX4IPgev4tSNA/7Z3KwQoc2h46j3eQcGFlG9Gs3D+haxHD5CBm3iliMHxLHqNeE1A1Tc34uZ/VQpZ18cslQp7rx687djyF5YBVXUGJODOA0v/LIiedjDJxVrdlVvQwE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=UgDqbfgl; arc=none smtp.client-ip=74.125.82.174
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-dy1-f174.google.com with SMTP id 5a478bee46e88-2ae38f81be1so7480706eec.0
        for <devicetree@vger.kernel.org>; Mon, 12 Jan 2026 18:38:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768271930; x=1768876730; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zaugnEXkJ4FHEBN7EdBhUTyRr4Jomj8G8+aRLmhsbAU=;
        b=UgDqbfglV0cTNRLc8LsPUA5j4ucEWQzYnzZMQEo85rt31nsMlFbyTkcSl/1BNBAZ6N
         /hcyqFmT2mCntEUII0z7HxOIp4mNJDi6Y796Pb41neXGYGPlg/6hRPXTc6YAXyD8DIkK
         FnybMFje0xCgZKlVPeE95GFD4dUvm6ymmMTimLMXb02kLsrGt31/5eE+DZoKuHLAHY6q
         rGckZII1aOVLhIJgbi5vRmbgCRwbxWRSBPPNSh1VkRZooJl57BzT5jIbZEAkzDhyBxG2
         kKCZrBGzTRL2J+0WbwxWxl2zhK7lWnUEdyK/2O9h0UHueSE1l5Re1GiKHv7Z4cAAvaUF
         hOwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768271930; x=1768876730;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=zaugnEXkJ4FHEBN7EdBhUTyRr4Jomj8G8+aRLmhsbAU=;
        b=cW6qMbFSq5CA/UGkGU5dyoX6VgElTPBn2rjaqAAyEjao7Pq7JAyyqMrLDajjGHEyuv
         eJcntimuZL6t6KkclK6LwvtPArEkqxWazQIi7n/4U1trw+hk0TNoY+pOTzvsSgEMeAY7
         tpGilWHWwFQl2q1C1aXutZeHNUFLsW5FK/4Uw6dic1Shrlkgxa3Y/Or2dRVyjnPmn16V
         k/ld9Iw7LRcK39ExU/XWOiOQpR6Ea/9x3BElWoZy1U0IfvDO90s/pqwlE16B2/EX0jCU
         Rfc07Z7GPaNRhsJhAohaXfQWM26KgsONQqTxZd2ifRF1sVkC34P8dEK62d5ztxwOXp9z
         fIpA==
X-Gm-Message-State: AOJu0YyDfGR0i3QILQkWuFx4qnR4R1Z2kJmolzDWyCYm9TJYCCrZWHGe
	nRVMOMUx2oeykKn7jG/pwaq25HO9d3CR/3Pk3Voqa1W1/ztVhz4XBvXl
X-Gm-Gg: AY/fxX4io3PITjVSTZ16VEh8xZtizgfyZPrXmp27A53YCB3fnXnR5izDwRWPsP0vn9b
	JSKumONp84ag+vLUCHEgkv4kV8qdh7srrT4QumirUFpJdXNLiOnBz/VEQYwiXgOoA3djRV/U3s7
	xhSoLjN/nls4bK+S1FYW4iVdpz93GgKt7SGQz7wwoWHFiNO5B8It2hJz+4VlH8I719ILKQIZ7Wm
	QZpEwZYExPIJAFqWw7tDhZ2j4O7mgnF3DY/305TJYiPyNrBagl4wMa4q7Od2IaZLk/wrXwwtpoX
	mtXkkPg5C/C81gabRngMEmrkl0aAzvBVAUPr1l4mfRjAmILfcOmCk5qu8s7B6mjX+E4xKoK5Boo
	AQXWKYLJjfVxS3sYvbjkHAH/qdmxLk4PRp3iT7EnrGWFvn6XC+4m2tH2uxYoOM0gxjRjCeBQEus
	pe/IN7Qo7TDg==
X-Google-Smtp-Source: AGHT+IEtl62dhN66DhCG+WF6azqNl63QKTI7bvsDHcyl7gACwNp7rI2a39SpBrCCB5NRZG/O6ahbrQ==
X-Received: by 2002:a05:7300:8182:b0:2b0:4e86:815a with SMTP id 5a478bee46e88-2b17d29cf3fmr15523593eec.27.1768271930242;
        Mon, 12 Jan 2026 18:38:50 -0800 (PST)
Received: from localhost ([2001:19f0:ac00:4eb8:5400:5ff:fe30:7df3])
        by smtp.gmail.com with ESMTPSA id 5a478bee46e88-2b170673b2esm17339163eec.6.2026.01.12.18.38.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Jan 2026 18:38:49 -0800 (PST)
From: Inochi Amaoto <inochiama@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Paul Walmsley <pjw@kernel.org>,
	Palmer Dabbelt <palmer@dabbelt.com>,
	Albert Ou <aou@eecs.berkeley.edu>,
	Alexandre Ghiti <alex@ghiti.fr>,
	Chen Wang <unicorn_wang@outlook.com>,
	Inochi Amaoto <inochiama@gmail.com>,
	Han Gao <rabenda.cn@gmail.com>,
	Nutty Liu <liujingqi@lanxincomputing.com>,
	Thomas Gleixner <tglx@linutronix.de>,
	Zixian Zeng <sycamoremoon376@gmail.com>
Cc: devicetree@vger.kernel.org,
	linux-riscv@lists.infradead.org,
	sophgo@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	Yixun Lan <dlan@gentoo.org>,
	Longbin Li <looong.bin@gmail.com>
Subject: [PATCH 1/2] riscv: dts: sophgo: Move PLIC and CLINT node into CPU dtsi
Date: Tue, 13 Jan 2026 10:38:26 +0800
Message-ID: <20260113023828.790136-1-inochiama@gmail.com>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

As we have a separate CPU dtsi file, move the PLIC and CLINT
node to the CPU dtsi file. This will make the sg2042.dtsi force
peripheral devices, and make the CPU dtsi force CPU related
devices.

Signed-off-by: Inochi Amaoto <inochiama@gmail.com>
---
 arch/riscv/boot/dts/sophgo/sg2042-cpus.dtsi | 305 ++++++++++++++++++++
 arch/riscv/boot/dts/sophgo/sg2042.dtsi      | 303 -------------------
 2 files changed, 305 insertions(+), 303 deletions(-)

diff --git a/arch/riscv/boot/dts/sophgo/sg2042-cpus.dtsi b/arch/riscv/boot/dts/sophgo/sg2042-cpus.dtsi
index 94a4b71acad3..509488eee432 100644
--- a/arch/riscv/boot/dts/sophgo/sg2042-cpus.dtsi
+++ b/arch/riscv/boot/dts/sophgo/sg2042-cpus.dtsi
@@ -2189,4 +2189,309 @@ l2_cache15: cache-controller-15 {
 			cache-unified;
 		};
 	};
+
+	soc {
+		intc: interrupt-controller@7090000000 {
+			compatible = "sophgo,sg2042-plic", "thead,c900-plic";
+			#address-cells = <0>;
+			#interrupt-cells = <2>;
+			reg = <0x00000070 0x90000000 0x00000000 0x04000000>;
+			interrupt-controller;
+			interrupts-extended =
+				<&cpu0_intc 11>,  <&cpu0_intc 9>,
+				<&cpu1_intc 11>,  <&cpu1_intc 9>,
+				<&cpu2_intc 11>,  <&cpu2_intc 9>,
+				<&cpu3_intc 11>,  <&cpu3_intc 9>,
+				<&cpu4_intc 11>,  <&cpu4_intc 9>,
+				<&cpu5_intc 11>,  <&cpu5_intc 9>,
+				<&cpu6_intc 11>,  <&cpu6_intc 9>,
+				<&cpu7_intc 11>,  <&cpu7_intc 9>,
+				<&cpu8_intc 11>,  <&cpu8_intc 9>,
+				<&cpu9_intc 11>,  <&cpu9_intc 9>,
+				<&cpu10_intc 11>, <&cpu10_intc 9>,
+				<&cpu11_intc 11>, <&cpu11_intc 9>,
+				<&cpu12_intc 11>, <&cpu12_intc 9>,
+				<&cpu13_intc 11>, <&cpu13_intc 9>,
+				<&cpu14_intc 11>, <&cpu14_intc 9>,
+				<&cpu15_intc 11>, <&cpu15_intc 9>,
+				<&cpu16_intc 11>, <&cpu16_intc 9>,
+				<&cpu17_intc 11>, <&cpu17_intc 9>,
+				<&cpu18_intc 11>, <&cpu18_intc 9>,
+				<&cpu19_intc 11>, <&cpu19_intc 9>,
+				<&cpu20_intc 11>, <&cpu20_intc 9>,
+				<&cpu21_intc 11>, <&cpu21_intc 9>,
+				<&cpu22_intc 11>, <&cpu22_intc 9>,
+				<&cpu23_intc 11>, <&cpu23_intc 9>,
+				<&cpu24_intc 11>, <&cpu24_intc 9>,
+				<&cpu25_intc 11>, <&cpu25_intc 9>,
+				<&cpu26_intc 11>, <&cpu26_intc 9>,
+				<&cpu27_intc 11>, <&cpu27_intc 9>,
+				<&cpu28_intc 11>, <&cpu28_intc 9>,
+				<&cpu29_intc 11>, <&cpu29_intc 9>,
+				<&cpu30_intc 11>, <&cpu30_intc 9>,
+				<&cpu31_intc 11>, <&cpu31_intc 9>,
+				<&cpu32_intc 11>, <&cpu32_intc 9>,
+				<&cpu33_intc 11>, <&cpu33_intc 9>,
+				<&cpu34_intc 11>, <&cpu34_intc 9>,
+				<&cpu35_intc 11>, <&cpu35_intc 9>,
+				<&cpu36_intc 11>, <&cpu36_intc 9>,
+				<&cpu37_intc 11>, <&cpu37_intc 9>,
+				<&cpu38_intc 11>, <&cpu38_intc 9>,
+				<&cpu39_intc 11>, <&cpu39_intc 9>,
+				<&cpu40_intc 11>, <&cpu40_intc 9>,
+				<&cpu41_intc 11>, <&cpu41_intc 9>,
+				<&cpu42_intc 11>, <&cpu42_intc 9>,
+				<&cpu43_intc 11>, <&cpu43_intc 9>,
+				<&cpu44_intc 11>, <&cpu44_intc 9>,
+				<&cpu45_intc 11>, <&cpu45_intc 9>,
+				<&cpu46_intc 11>, <&cpu46_intc 9>,
+				<&cpu47_intc 11>, <&cpu47_intc 9>,
+				<&cpu48_intc 11>, <&cpu48_intc 9>,
+				<&cpu49_intc 11>, <&cpu49_intc 9>,
+				<&cpu50_intc 11>, <&cpu50_intc 9>,
+				<&cpu51_intc 11>, <&cpu51_intc 9>,
+				<&cpu52_intc 11>, <&cpu52_intc 9>,
+				<&cpu53_intc 11>, <&cpu53_intc 9>,
+				<&cpu54_intc 11>, <&cpu54_intc 9>,
+				<&cpu55_intc 11>, <&cpu55_intc 9>,
+				<&cpu56_intc 11>, <&cpu56_intc 9>,
+				<&cpu57_intc 11>, <&cpu57_intc 9>,
+				<&cpu58_intc 11>, <&cpu58_intc 9>,
+				<&cpu59_intc 11>, <&cpu59_intc 9>,
+				<&cpu60_intc 11>, <&cpu60_intc 9>,
+				<&cpu61_intc 11>, <&cpu61_intc 9>,
+				<&cpu62_intc 11>, <&cpu62_intc 9>,
+				<&cpu63_intc 11>, <&cpu63_intc 9>;
+			riscv,ndev = <224>;
+		};
+
+		clint_mswi: interrupt-controller@7094000000 {
+			compatible = "sophgo,sg2042-aclint-mswi", "thead,c900-aclint-mswi";
+			reg = <0x00000070 0x94000000 0x00000000 0x00004000>;
+			interrupts-extended = <&cpu0_intc 3>,
+					      <&cpu1_intc 3>,
+					      <&cpu2_intc 3>,
+					      <&cpu3_intc 3>,
+					      <&cpu4_intc 3>,
+					      <&cpu5_intc 3>,
+					      <&cpu6_intc 3>,
+					      <&cpu7_intc 3>,
+					      <&cpu8_intc 3>,
+					      <&cpu9_intc 3>,
+					      <&cpu10_intc 3>,
+					      <&cpu11_intc 3>,
+					      <&cpu12_intc 3>,
+					      <&cpu13_intc 3>,
+					      <&cpu14_intc 3>,
+					      <&cpu15_intc 3>,
+					      <&cpu16_intc 3>,
+					      <&cpu17_intc 3>,
+					      <&cpu18_intc 3>,
+					      <&cpu19_intc 3>,
+					      <&cpu20_intc 3>,
+					      <&cpu21_intc 3>,
+					      <&cpu22_intc 3>,
+					      <&cpu23_intc 3>,
+					      <&cpu24_intc 3>,
+					      <&cpu25_intc 3>,
+					      <&cpu26_intc 3>,
+					      <&cpu27_intc 3>,
+					      <&cpu28_intc 3>,
+					      <&cpu29_intc 3>,
+					      <&cpu30_intc 3>,
+					      <&cpu31_intc 3>,
+					      <&cpu32_intc 3>,
+					      <&cpu33_intc 3>,
+					      <&cpu34_intc 3>,
+					      <&cpu35_intc 3>,
+					      <&cpu36_intc 3>,
+					      <&cpu37_intc 3>,
+					      <&cpu38_intc 3>,
+					      <&cpu39_intc 3>,
+					      <&cpu40_intc 3>,
+					      <&cpu41_intc 3>,
+					      <&cpu42_intc 3>,
+					      <&cpu43_intc 3>,
+					      <&cpu44_intc 3>,
+					      <&cpu45_intc 3>,
+					      <&cpu46_intc 3>,
+					      <&cpu47_intc 3>,
+					      <&cpu48_intc 3>,
+					      <&cpu49_intc 3>,
+					      <&cpu50_intc 3>,
+					      <&cpu51_intc 3>,
+					      <&cpu52_intc 3>,
+					      <&cpu53_intc 3>,
+					      <&cpu54_intc 3>,
+					      <&cpu55_intc 3>,
+					      <&cpu56_intc 3>,
+					      <&cpu57_intc 3>,
+					      <&cpu58_intc 3>,
+					      <&cpu59_intc 3>,
+					      <&cpu60_intc 3>,
+					      <&cpu61_intc 3>,
+					      <&cpu62_intc 3>,
+					      <&cpu63_intc 3>;
+		};
+
+		clint_mtimer0: timer@70ac004000 {
+			compatible = "sophgo,sg2042-aclint-mtimer", "thead,c900-aclint-mtimer";
+			reg = <0x00000070 0xac004000 0x00000000 0x0000c000>;
+			reg-names = "mtimecmp";
+			interrupts-extended = <&cpu0_intc 7>,
+					      <&cpu1_intc 7>,
+					      <&cpu2_intc 7>,
+					      <&cpu3_intc 7>;
+		};
+
+		clint_mtimer1: timer@70ac014000 {
+			compatible = "sophgo,sg2042-aclint-mtimer", "thead,c900-aclint-mtimer";
+			reg = <0x00000070 0xac014000 0x00000000 0x0000c000>;
+			reg-names = "mtimecmp";
+			interrupts-extended = <&cpu4_intc 7>,
+					      <&cpu5_intc 7>,
+					      <&cpu6_intc 7>,
+					      <&cpu7_intc 7>;
+		};
+
+		clint_mtimer2: timer@70ac024000 {
+			compatible = "sophgo,sg2042-aclint-mtimer", "thead,c900-aclint-mtimer";
+			reg = <0x00000070 0xac024000 0x00000000 0x0000c000>;
+			reg-names = "mtimecmp";
+			interrupts-extended = <&cpu8_intc 7>,
+					      <&cpu9_intc 7>,
+					      <&cpu10_intc 7>,
+					      <&cpu11_intc 7>;
+		};
+
+		clint_mtimer3: timer@70ac034000 {
+			compatible = "sophgo,sg2042-aclint-mtimer", "thead,c900-aclint-mtimer";
+			reg = <0x00000070 0xac034000 0x00000000 0x0000c000>;
+			reg-names = "mtimecmp";
+			interrupts-extended = <&cpu12_intc 7>,
+					      <&cpu13_intc 7>,
+					      <&cpu14_intc 7>,
+					      <&cpu15_intc 7>;
+		};
+
+		clint_mtimer4: timer@70ac044000 {
+			compatible = "sophgo,sg2042-aclint-mtimer", "thead,c900-aclint-mtimer";
+			reg = <0x00000070 0xac044000 0x00000000 0x0000c000>;
+			reg-names = "mtimecmp";
+			interrupts-extended = <&cpu16_intc 7>,
+					      <&cpu17_intc 7>,
+					      <&cpu18_intc 7>,
+					      <&cpu19_intc 7>;
+		};
+
+		clint_mtimer5: timer@70ac054000 {
+			compatible = "sophgo,sg2042-aclint-mtimer", "thead,c900-aclint-mtimer";
+			reg = <0x00000070 0xac054000 0x00000000 0x0000c000>;
+			reg-names = "mtimecmp";
+			interrupts-extended = <&cpu20_intc 7>,
+					      <&cpu21_intc 7>,
+					      <&cpu22_intc 7>,
+					      <&cpu23_intc 7>;
+		};
+
+		clint_mtimer6: timer@70ac064000 {
+			compatible = "sophgo,sg2042-aclint-mtimer", "thead,c900-aclint-mtimer";
+			reg = <0x00000070 0xac064000 0x00000000 0x0000c000>;
+			reg-names = "mtimecmp";
+			interrupts-extended = <&cpu24_intc 7>,
+					      <&cpu25_intc 7>,
+					      <&cpu26_intc 7>,
+					      <&cpu27_intc 7>;
+		};
+
+		clint_mtimer7: timer@70ac074000 {
+			compatible = "sophgo,sg2042-aclint-mtimer", "thead,c900-aclint-mtimer";
+			reg = <0x00000070 0xac074000 0x00000000 0x0000c000>;
+			reg-names = "mtimecmp";
+			interrupts-extended = <&cpu28_intc 7>,
+					      <&cpu29_intc 7>,
+					      <&cpu30_intc 7>,
+					      <&cpu31_intc 7>;
+		};
+
+		clint_mtimer8: timer@70ac084000 {
+			compatible = "sophgo,sg2042-aclint-mtimer", "thead,c900-aclint-mtimer";
+			reg = <0x00000070 0xac084000 0x00000000 0x0000c000>;
+			reg-names = "mtimecmp";
+			interrupts-extended = <&cpu32_intc 7>,
+					      <&cpu33_intc 7>,
+					      <&cpu34_intc 7>,
+					      <&cpu35_intc 7>;
+		};
+
+		clint_mtimer9: timer@70ac094000 {
+			compatible = "sophgo,sg2042-aclint-mtimer", "thead,c900-aclint-mtimer";
+			reg = <0x00000070 0xac094000 0x00000000 0x0000c000>;
+			reg-names = "mtimecmp";
+			interrupts-extended = <&cpu36_intc 7>,
+					      <&cpu37_intc 7>,
+					      <&cpu38_intc 7>,
+					      <&cpu39_intc 7>;
+		};
+
+		clint_mtimer10: timer@70ac0a4000 {
+			compatible = "sophgo,sg2042-aclint-mtimer", "thead,c900-aclint-mtimer";
+			reg = <0x00000070 0xac0a4000 0x00000000 0x0000c000>;
+			reg-names = "mtimecmp";
+			interrupts-extended = <&cpu40_intc 7>,
+					      <&cpu41_intc 7>,
+					      <&cpu42_intc 7>,
+					      <&cpu43_intc 7>;
+		};
+
+		clint_mtimer11: timer@70ac0b4000 {
+			compatible = "sophgo,sg2042-aclint-mtimer", "thead,c900-aclint-mtimer";
+			reg = <0x00000070 0xac0b4000 0x00000000 0x0000c000>;
+			reg-names = "mtimecmp";
+			interrupts-extended = <&cpu44_intc 7>,
+					      <&cpu45_intc 7>,
+					      <&cpu46_intc 7>,
+					      <&cpu47_intc 7>;
+		};
+
+		clint_mtimer12: timer@70ac0c4000 {
+			compatible = "sophgo,sg2042-aclint-mtimer", "thead,c900-aclint-mtimer";
+			reg = <0x00000070 0xac0c4000 0x00000000 0x0000c000>;
+			reg-names = "mtimecmp";
+			interrupts-extended = <&cpu48_intc 7>,
+					      <&cpu49_intc 7>,
+					      <&cpu50_intc 7>,
+					      <&cpu51_intc 7>;
+		};
+
+		clint_mtimer13: timer@70ac0d4000 {
+			compatible = "sophgo,sg2042-aclint-mtimer", "thead,c900-aclint-mtimer";
+			reg = <0x00000070 0xac0d4000 0x00000000 0x0000c000>;
+			reg-names = "mtimecmp";
+			interrupts-extended = <&cpu52_intc 7>,
+					      <&cpu53_intc 7>,
+					      <&cpu54_intc 7>,
+					      <&cpu55_intc 7>;
+		};
+
+		clint_mtimer14: timer@70ac0e4000 {
+			compatible = "sophgo,sg2042-aclint-mtimer", "thead,c900-aclint-mtimer";
+			reg = <0x00000070 0xac0e4000 0x00000000 0x0000c000>;
+			reg-names = "mtimecmp";
+			interrupts-extended = <&cpu56_intc 7>,
+					      <&cpu57_intc 7>,
+					      <&cpu58_intc 7>,
+					      <&cpu59_intc 7>;
+		};
+
+		clint_mtimer15: timer@70ac0f4000 {
+			compatible = "sophgo,sg2042-aclint-mtimer", "thead,c900-aclint-mtimer";
+			reg = <0x00000070 0xac0f4000 0x00000000 0x0000c000>;
+			reg-names = "mtimecmp";
+			interrupts-extended = <&cpu60_intc 7>,
+					      <&cpu61_intc 7>,
+					      <&cpu62_intc 7>,
+					      <&cpu63_intc 7>;
+		};
+	};
 };
diff --git a/arch/riscv/boot/dts/sophgo/sg2042.dtsi b/arch/riscv/boot/dts/sophgo/sg2042.dtsi
index ec99da39150f..e6891f95d479 100644
--- a/arch/riscv/boot/dts/sophgo/sg2042.dtsi
+++ b/arch/riscv/boot/dts/sophgo/sg2042.dtsi
@@ -352,309 +352,6 @@ pcie_rc3: pcie@7062800000 {
 			status = "disabled";
 		};
 
-		clint_mswi: interrupt-controller@7094000000 {
-			compatible = "sophgo,sg2042-aclint-mswi", "thead,c900-aclint-mswi";
-			reg = <0x00000070 0x94000000 0x00000000 0x00004000>;
-			interrupts-extended = <&cpu0_intc 3>,
-					      <&cpu1_intc 3>,
-					      <&cpu2_intc 3>,
-					      <&cpu3_intc 3>,
-					      <&cpu4_intc 3>,
-					      <&cpu5_intc 3>,
-					      <&cpu6_intc 3>,
-					      <&cpu7_intc 3>,
-					      <&cpu8_intc 3>,
-					      <&cpu9_intc 3>,
-					      <&cpu10_intc 3>,
-					      <&cpu11_intc 3>,
-					      <&cpu12_intc 3>,
-					      <&cpu13_intc 3>,
-					      <&cpu14_intc 3>,
-					      <&cpu15_intc 3>,
-					      <&cpu16_intc 3>,
-					      <&cpu17_intc 3>,
-					      <&cpu18_intc 3>,
-					      <&cpu19_intc 3>,
-					      <&cpu20_intc 3>,
-					      <&cpu21_intc 3>,
-					      <&cpu22_intc 3>,
-					      <&cpu23_intc 3>,
-					      <&cpu24_intc 3>,
-					      <&cpu25_intc 3>,
-					      <&cpu26_intc 3>,
-					      <&cpu27_intc 3>,
-					      <&cpu28_intc 3>,
-					      <&cpu29_intc 3>,
-					      <&cpu30_intc 3>,
-					      <&cpu31_intc 3>,
-					      <&cpu32_intc 3>,
-					      <&cpu33_intc 3>,
-					      <&cpu34_intc 3>,
-					      <&cpu35_intc 3>,
-					      <&cpu36_intc 3>,
-					      <&cpu37_intc 3>,
-					      <&cpu38_intc 3>,
-					      <&cpu39_intc 3>,
-					      <&cpu40_intc 3>,
-					      <&cpu41_intc 3>,
-					      <&cpu42_intc 3>,
-					      <&cpu43_intc 3>,
-					      <&cpu44_intc 3>,
-					      <&cpu45_intc 3>,
-					      <&cpu46_intc 3>,
-					      <&cpu47_intc 3>,
-					      <&cpu48_intc 3>,
-					      <&cpu49_intc 3>,
-					      <&cpu50_intc 3>,
-					      <&cpu51_intc 3>,
-					      <&cpu52_intc 3>,
-					      <&cpu53_intc 3>,
-					      <&cpu54_intc 3>,
-					      <&cpu55_intc 3>,
-					      <&cpu56_intc 3>,
-					      <&cpu57_intc 3>,
-					      <&cpu58_intc 3>,
-					      <&cpu59_intc 3>,
-					      <&cpu60_intc 3>,
-					      <&cpu61_intc 3>,
-					      <&cpu62_intc 3>,
-					      <&cpu63_intc 3>;
-		};
-
-		clint_mtimer0: timer@70ac004000 {
-			compatible = "sophgo,sg2042-aclint-mtimer", "thead,c900-aclint-mtimer";
-			reg = <0x00000070 0xac004000 0x00000000 0x0000c000>;
-			reg-names = "mtimecmp";
-			interrupts-extended = <&cpu0_intc 7>,
-					      <&cpu1_intc 7>,
-					      <&cpu2_intc 7>,
-					      <&cpu3_intc 7>;
-		};
-
-		clint_mtimer1: timer@70ac014000 {
-			compatible = "sophgo,sg2042-aclint-mtimer", "thead,c900-aclint-mtimer";
-			reg = <0x00000070 0xac014000 0x00000000 0x0000c000>;
-			reg-names = "mtimecmp";
-			interrupts-extended = <&cpu4_intc 7>,
-					      <&cpu5_intc 7>,
-					      <&cpu6_intc 7>,
-					      <&cpu7_intc 7>;
-		};
-
-		clint_mtimer2: timer@70ac024000 {
-			compatible = "sophgo,sg2042-aclint-mtimer", "thead,c900-aclint-mtimer";
-			reg = <0x00000070 0xac024000 0x00000000 0x0000c000>;
-			reg-names = "mtimecmp";
-			interrupts-extended = <&cpu8_intc 7>,
-					      <&cpu9_intc 7>,
-					      <&cpu10_intc 7>,
-					      <&cpu11_intc 7>;
-		};
-
-		clint_mtimer3: timer@70ac034000 {
-			compatible = "sophgo,sg2042-aclint-mtimer", "thead,c900-aclint-mtimer";
-			reg = <0x00000070 0xac034000 0x00000000 0x0000c000>;
-			reg-names = "mtimecmp";
-			interrupts-extended = <&cpu12_intc 7>,
-					      <&cpu13_intc 7>,
-					      <&cpu14_intc 7>,
-					      <&cpu15_intc 7>;
-		};
-
-		clint_mtimer4: timer@70ac044000 {
-			compatible = "sophgo,sg2042-aclint-mtimer", "thead,c900-aclint-mtimer";
-			reg = <0x00000070 0xac044000 0x00000000 0x0000c000>;
-			reg-names = "mtimecmp";
-			interrupts-extended = <&cpu16_intc 7>,
-					      <&cpu17_intc 7>,
-					      <&cpu18_intc 7>,
-					      <&cpu19_intc 7>;
-		};
-
-		clint_mtimer5: timer@70ac054000 {
-			compatible = "sophgo,sg2042-aclint-mtimer", "thead,c900-aclint-mtimer";
-			reg = <0x00000070 0xac054000 0x00000000 0x0000c000>;
-			reg-names = "mtimecmp";
-			interrupts-extended = <&cpu20_intc 7>,
-					      <&cpu21_intc 7>,
-					      <&cpu22_intc 7>,
-					      <&cpu23_intc 7>;
-		};
-
-		clint_mtimer6: timer@70ac064000 {
-			compatible = "sophgo,sg2042-aclint-mtimer", "thead,c900-aclint-mtimer";
-			reg = <0x00000070 0xac064000 0x00000000 0x0000c000>;
-			reg-names = "mtimecmp";
-			interrupts-extended = <&cpu24_intc 7>,
-					      <&cpu25_intc 7>,
-					      <&cpu26_intc 7>,
-					      <&cpu27_intc 7>;
-		};
-
-		clint_mtimer7: timer@70ac074000 {
-			compatible = "sophgo,sg2042-aclint-mtimer", "thead,c900-aclint-mtimer";
-			reg = <0x00000070 0xac074000 0x00000000 0x0000c000>;
-			reg-names = "mtimecmp";
-			interrupts-extended = <&cpu28_intc 7>,
-					      <&cpu29_intc 7>,
-					      <&cpu30_intc 7>,
-					      <&cpu31_intc 7>;
-		};
-
-		clint_mtimer8: timer@70ac084000 {
-			compatible = "sophgo,sg2042-aclint-mtimer", "thead,c900-aclint-mtimer";
-			reg = <0x00000070 0xac084000 0x00000000 0x0000c000>;
-			reg-names = "mtimecmp";
-			interrupts-extended = <&cpu32_intc 7>,
-					      <&cpu33_intc 7>,
-					      <&cpu34_intc 7>,
-					      <&cpu35_intc 7>;
-		};
-
-		clint_mtimer9: timer@70ac094000 {
-			compatible = "sophgo,sg2042-aclint-mtimer", "thead,c900-aclint-mtimer";
-			reg = <0x00000070 0xac094000 0x00000000 0x0000c000>;
-			reg-names = "mtimecmp";
-			interrupts-extended = <&cpu36_intc 7>,
-					      <&cpu37_intc 7>,
-					      <&cpu38_intc 7>,
-					      <&cpu39_intc 7>;
-		};
-
-		clint_mtimer10: timer@70ac0a4000 {
-			compatible = "sophgo,sg2042-aclint-mtimer", "thead,c900-aclint-mtimer";
-			reg = <0x00000070 0xac0a4000 0x00000000 0x0000c000>;
-			reg-names = "mtimecmp";
-			interrupts-extended = <&cpu40_intc 7>,
-					      <&cpu41_intc 7>,
-					      <&cpu42_intc 7>,
-					      <&cpu43_intc 7>;
-		};
-
-		clint_mtimer11: timer@70ac0b4000 {
-			compatible = "sophgo,sg2042-aclint-mtimer", "thead,c900-aclint-mtimer";
-			reg = <0x00000070 0xac0b4000 0x00000000 0x0000c000>;
-			reg-names = "mtimecmp";
-			interrupts-extended = <&cpu44_intc 7>,
-					      <&cpu45_intc 7>,
-					      <&cpu46_intc 7>,
-					      <&cpu47_intc 7>;
-		};
-
-		clint_mtimer12: timer@70ac0c4000 {
-			compatible = "sophgo,sg2042-aclint-mtimer", "thead,c900-aclint-mtimer";
-			reg = <0x00000070 0xac0c4000 0x00000000 0x0000c000>;
-			reg-names = "mtimecmp";
-			interrupts-extended = <&cpu48_intc 7>,
-					      <&cpu49_intc 7>,
-					      <&cpu50_intc 7>,
-					      <&cpu51_intc 7>;
-		};
-
-		clint_mtimer13: timer@70ac0d4000 {
-			compatible = "sophgo,sg2042-aclint-mtimer", "thead,c900-aclint-mtimer";
-			reg = <0x00000070 0xac0d4000 0x00000000 0x0000c000>;
-			reg-names = "mtimecmp";
-			interrupts-extended = <&cpu52_intc 7>,
-					      <&cpu53_intc 7>,
-					      <&cpu54_intc 7>,
-					      <&cpu55_intc 7>;
-		};
-
-		clint_mtimer14: timer@70ac0e4000 {
-			compatible = "sophgo,sg2042-aclint-mtimer", "thead,c900-aclint-mtimer";
-			reg = <0x00000070 0xac0e4000 0x00000000 0x0000c000>;
-			reg-names = "mtimecmp";
-			interrupts-extended = <&cpu56_intc 7>,
-					      <&cpu57_intc 7>,
-					      <&cpu58_intc 7>,
-					      <&cpu59_intc 7>;
-		};
-
-		clint_mtimer15: timer@70ac0f4000 {
-			compatible = "sophgo,sg2042-aclint-mtimer", "thead,c900-aclint-mtimer";
-			reg = <0x00000070 0xac0f4000 0x00000000 0x0000c000>;
-			reg-names = "mtimecmp";
-			interrupts-extended = <&cpu60_intc 7>,
-					      <&cpu61_intc 7>,
-					      <&cpu62_intc 7>,
-					      <&cpu63_intc 7>;
-		};
-
-		intc: interrupt-controller@7090000000 {
-			compatible = "sophgo,sg2042-plic", "thead,c900-plic";
-			#address-cells = <0>;
-			#interrupt-cells = <2>;
-			reg = <0x00000070 0x90000000 0x00000000 0x04000000>;
-			interrupt-controller;
-			interrupts-extended =
-				<&cpu0_intc 11>,  <&cpu0_intc 9>,
-				<&cpu1_intc 11>,  <&cpu1_intc 9>,
-				<&cpu2_intc 11>,  <&cpu2_intc 9>,
-				<&cpu3_intc 11>,  <&cpu3_intc 9>,
-				<&cpu4_intc 11>,  <&cpu4_intc 9>,
-				<&cpu5_intc 11>,  <&cpu5_intc 9>,
-				<&cpu6_intc 11>,  <&cpu6_intc 9>,
-				<&cpu7_intc 11>,  <&cpu7_intc 9>,
-				<&cpu8_intc 11>,  <&cpu8_intc 9>,
-				<&cpu9_intc 11>,  <&cpu9_intc 9>,
-				<&cpu10_intc 11>, <&cpu10_intc 9>,
-				<&cpu11_intc 11>, <&cpu11_intc 9>,
-				<&cpu12_intc 11>, <&cpu12_intc 9>,
-				<&cpu13_intc 11>, <&cpu13_intc 9>,
-				<&cpu14_intc 11>, <&cpu14_intc 9>,
-				<&cpu15_intc 11>, <&cpu15_intc 9>,
-				<&cpu16_intc 11>, <&cpu16_intc 9>,
-				<&cpu17_intc 11>, <&cpu17_intc 9>,
-				<&cpu18_intc 11>, <&cpu18_intc 9>,
-				<&cpu19_intc 11>, <&cpu19_intc 9>,
-				<&cpu20_intc 11>, <&cpu20_intc 9>,
-				<&cpu21_intc 11>, <&cpu21_intc 9>,
-				<&cpu22_intc 11>, <&cpu22_intc 9>,
-				<&cpu23_intc 11>, <&cpu23_intc 9>,
-				<&cpu24_intc 11>, <&cpu24_intc 9>,
-				<&cpu25_intc 11>, <&cpu25_intc 9>,
-				<&cpu26_intc 11>, <&cpu26_intc 9>,
-				<&cpu27_intc 11>, <&cpu27_intc 9>,
-				<&cpu28_intc 11>, <&cpu28_intc 9>,
-				<&cpu29_intc 11>, <&cpu29_intc 9>,
-				<&cpu30_intc 11>, <&cpu30_intc 9>,
-				<&cpu31_intc 11>, <&cpu31_intc 9>,
-				<&cpu32_intc 11>, <&cpu32_intc 9>,
-				<&cpu33_intc 11>, <&cpu33_intc 9>,
-				<&cpu34_intc 11>, <&cpu34_intc 9>,
-				<&cpu35_intc 11>, <&cpu35_intc 9>,
-				<&cpu36_intc 11>, <&cpu36_intc 9>,
-				<&cpu37_intc 11>, <&cpu37_intc 9>,
-				<&cpu38_intc 11>, <&cpu38_intc 9>,
-				<&cpu39_intc 11>, <&cpu39_intc 9>,
-				<&cpu40_intc 11>, <&cpu40_intc 9>,
-				<&cpu41_intc 11>, <&cpu41_intc 9>,
-				<&cpu42_intc 11>, <&cpu42_intc 9>,
-				<&cpu43_intc 11>, <&cpu43_intc 9>,
-				<&cpu44_intc 11>, <&cpu44_intc 9>,
-				<&cpu45_intc 11>, <&cpu45_intc 9>,
-				<&cpu46_intc 11>, <&cpu46_intc 9>,
-				<&cpu47_intc 11>, <&cpu47_intc 9>,
-				<&cpu48_intc 11>, <&cpu48_intc 9>,
-				<&cpu49_intc 11>, <&cpu49_intc 9>,
-				<&cpu50_intc 11>, <&cpu50_intc 9>,
-				<&cpu51_intc 11>, <&cpu51_intc 9>,
-				<&cpu52_intc 11>, <&cpu52_intc 9>,
-				<&cpu53_intc 11>, <&cpu53_intc 9>,
-				<&cpu54_intc 11>, <&cpu54_intc 9>,
-				<&cpu55_intc 11>, <&cpu55_intc 9>,
-				<&cpu56_intc 11>, <&cpu56_intc 9>,
-				<&cpu57_intc 11>, <&cpu57_intc 9>,
-				<&cpu58_intc 11>, <&cpu58_intc 9>,
-				<&cpu59_intc 11>, <&cpu59_intc 9>,
-				<&cpu60_intc 11>, <&cpu60_intc 9>,
-				<&cpu61_intc 11>, <&cpu61_intc 9>,
-				<&cpu62_intc 11>, <&cpu62_intc 9>,
-				<&cpu63_intc 11>, <&cpu63_intc 9>;
-			riscv,ndev = <224>;
-		};
-
 		rstgen: reset-controller@7030013000 {
 			compatible = "sophgo,sg2042-reset";
 			reg = <0x00000070 0x30013000 0x00000000 0x0000000c>;
-- 
2.52.0


