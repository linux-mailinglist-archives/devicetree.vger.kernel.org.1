Return-Path: <devicetree+bounces-257174-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B278D3BE4B
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 05:19:22 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 5D2354E9DF5
	for <lists+devicetree@lfdr.de>; Tue, 20 Jan 2026 04:17:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B6FA33F8DD;
	Tue, 20 Jan 2026 04:15:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q9O4T3Iw"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCC7333F396;
	Tue, 20 Jan 2026 04:15:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768882528; cv=none; b=PTgQxmbZIM5VD5ANrMQOKkuyPqH7m8kxuu1u1yLl/I3SkuisIttpgLj5D/Gb+8nxosDRh/mkPx1urbbYDHWgEU/by49Ij+wpIOnZVZmZ4vXReSzX8sl5t0hD95jjkAd+6HhJH6MnXv91j+ve+qQuFXC+YvEcKZOX7W/h36MyCmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768882528; c=relaxed/simple;
	bh=udCB56ewUuBczR6ctM7up8XACViyJiWY/ibyZC1jejs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To; b=MCX2nUj1xPbqkpS3/ibFQ87x27B/LQEgNU87DPYS/kbbU615YwTdp3lUX6kzu9g9nMH1t316mPbpxKPBtZFXRAInqEI1hhG+knRTN0FVRSyHFYRl0934El9LSyYQisv1A3VtyQNLEYQBcGWVjn1HTCg9Hxb8bhLHOQiEwtmKKqs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q9O4T3Iw; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 7A3A1C2BC87;
	Tue, 20 Jan 2026 04:15:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768882527;
	bh=udCB56ewUuBczR6ctM7up8XACViyJiWY/ibyZC1jejs=;
	h=From:Date:Subject:References:In-Reply-To:To:From;
	b=q9O4T3Iwp5YU9aTtmeJpgqm4DzAdGefVfEQ9vaci4fasVdHhxCtxtl06PwRBg9ERG
	 h4nBCUYcBujNBC5VaUWllNPthZII8W19hZEeJqcnU3cXhADKEIYf43qj2Zw5g6iZQT
	 4IxMq95bY1ARP4MJGC/HikCdl+ip+UlakSpBKhDw0yU/aSRBfRzW0ME6L770zJ+EmK
	 KL8Se3YCpBA+/ETMQAyiACgFGsljmdcS9hlV3ygaw3oBdg8ecLy6/zjUjYxezXL+Tq
	 GiVchXxe9h9bw8OO0rmUuYaZma252RfrfXycAmNh4t+/ryn8mJXFugVqp8kRktGuAH
	 o+5SG6ii9Ve1Q==
From: Drew Fustini <fustini@kernel.org>
Date: Mon, 19 Jan 2026 20:14:55 -0800
Subject: [PATCH NFU RFC 18/19] riscv: dts: qemu: add CBQRI controller nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260119-ssqosid-cbqri-v1-18-aa2a75153832@kernel.org>
References: <20260119-ssqosid-cbqri-v1-0-aa2a75153832@kernel.org>
In-Reply-To: <20260119-ssqosid-cbqri-v1-0-aa2a75153832@kernel.org>
To: Paul Walmsley <pjw@kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>, 
 Albert Ou <aou@eecs.berkeley.edu>, Alexandre Ghiti <alex@ghiti.fr>, 
 =?utf-8?q?Radim_Kr=C4=8Dm=C3=A1=C5=99?= <rkrcmar@ventanamicro.com>, 
 Samuel Holland <samuel.holland@sifive.com>, 
 Adrien Ricciardi <aricciardi@baylibre.com>, 
 Nicolas Pitre <npitre@baylibre.com>, 
 =?utf-8?q?Kornel_Dul=C4=99ba?= <mindal@semihalf.com>, 
 Atish Patra <atish.patra@linux.dev>, 
 Atish Kumar Patra <atishp@rivosinc.com>, 
 Vasudevan Srinivasan <vasu@rivosinc.com>, Ved Shanbhogue <ved@rivosinc.com>, 
 yunhui cui <cuiyunhui@bytedance.com>, Chen Pei <cp0613@linux.alibaba.com>, 
 Liu Zhiwei <zhiwei_liu@linux.alibaba.com>, Weiwei Li <liwei1518@gmail.com>, 
 guo.wenjia23@zte.com.cn, liu.qingtao2@zte.com.cn, 
 Conor Dooley <conor+dt@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Reinette Chatre <reinette.chatre@intel.com>, 
 Tony Luck <tony.luck@intel.com>, Babu Moger <babu.moger@amd.com>, 
 Peter Newman <peternewman@google.com>, Fenghua Yu <fenghua.yu@intel.com>, 
 James Morse <james.morse@arm.com>, Ben Horgan <ben.horgan@arm.com>, 
 Dave Martin <Dave.Martin@arm.com>, Drew Fustini <fustini@kernel.org>, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-riscv@lists.infradead.org, x86@kernel.org
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2591; i=fustini@kernel.org;
 h=from:subject:message-id; bh=udCB56ewUuBczR6ctM7up8XACViyJiWY/ibyZC1jejs=;
 b=owGbwMvMwCV2+43O4ZsaG3kYT6slMWTmMwZb8NY27P2ru04ycsMpxgV11wKXXXzt/+/TjxdWZ
 TE1O+tXd5SyMIhxMciKKbJs+pB3YYlX6NcF819sg5nDygQyhIGLUwAmknWb4X9CjeiBp9XGT/dk
 pz9Kmhp1gzl0e4QFn1Tk+51p269ymuoy/Ga5duGYup/rg52s59Ycknr2elF+qdEf8z9LK+1r/gj
 Lp/MBAA==
X-Developer-Key: i=fustini@kernel.org; a=openpgp;
 fpr=1B6F948213EA489734F3997035D5CD577C1E6010

[NOT FOR UPSTREAM]

Add nodes to for CBQRI-capable cache and bandwidth controllers.

Link: https://github.com/tt-fustini/qemu/tree/b4/riscv-ssqosid-cbqri
Co-developed-by: Adrien Ricciardi <aricciardi@baylibre.com>
Signed-off-by: Adrien Ricciardi <aricciardi@baylibre.com>
Signed-off-by: Drew Fustini <fustini@kernel.org>
---
 arch/riscv/boot/dts/qemu/qemu-virt-cbqri.dts | 59 ++++++++++++++++++++++++++++
 1 file changed, 59 insertions(+)

diff --git a/arch/riscv/boot/dts/qemu/qemu-virt-cbqri.dts b/arch/riscv/boot/dts/qemu/qemu-virt-cbqri.dts
index 4c6257bec42d..9f65de65f758 100644
--- a/arch/riscv/boot/dts/qemu/qemu-virt-cbqri.dts
+++ b/arch/riscv/boot/dts/qemu/qemu-virt-cbqri.dts
@@ -395,5 +395,64 @@ pci@30000000 {
 			#interrupt-cells = <0x01>;
 			#address-cells = <0x03>;
 		};
+
+		cluster0_l2: controller@4820000 {
+			compatible = "riscv,cbqri-cache";
+			reg = <0x0 0x4820000 0x0 0x1000>; /* 4KB at 0x04820000 */
+			cache-unified;
+			cache-line-size = <64>;
+			cache-level = <2>;
+			cache-sets = <1000>;
+			cache-size = <768000>; /* 750 KiB */
+			next-level-cache = <&shared_llc>;
+			riscv,cbqri-rcid = <64>;
+			riscv,cbqri-mcid = <256>;
+		};
+
+		cluster1_l2: controller@4821000 {
+			compatible = "riscv,cbqri-cache";
+			reg = <0x0 0x4821000 0x0 0x1000>; /* 4KB at 0x04821000 */
+			cache-unified;
+			cache-line-size = <64>;
+			cache-level = <2>;
+			cache-sets = <1000>;
+			cache-size = <768000>; /* 750 KiB */
+			next-level-cache = <&shared_llc>;
+			riscv,cbqri-rcid = <64>;
+			riscv,cbqri-mcid = <256>;
+		};
+
+		shared_llc: controller@482b000 {
+			compatible = "riscv,cbqri-cache";
+			reg = <0x0 0x482b000 0x0 0x1000>; /* 4KB at 0x0482B000 */
+			cache-unified;
+			cache-line-size = <64>;
+			cache-level = <3>;
+			cache-sets = <4096>;
+			cache-size = <3145728>; /* 3 MiB */
+			riscv,cbqri-rcid = <64>;
+			riscv,cbqri-mcid = <256>;
+		};
+
+		mem0: controller@4828000 {
+			compatible = "riscv,cbqri-bandwidth";
+			reg = <0x0 0x4828000 0x0 0x1000>; /* 4KB at 0x04828000 */
+			riscv,cbqri-rcid = <64>;
+			riscv,cbqri-mcid = <256>;
+		};
+
+		mem1: controller@4829000 {
+			compatible = "riscv,cbqri-bandwidth";
+			reg = <0x0 0x4829000 0x0 0x1000>; /* 4KB at 0x04829000 */
+			riscv,cbqri-rcid = <64>;
+			riscv,cbqri-mcid = <256>;
+		};
+
+		mem2: controller@482a000 {
+			compatible = "riscv,cbqri-bandwidth";
+			reg = <0x0 0x482a000 0x0 0x1000>; /* 4KB at 0x0482A000 */
+			riscv,cbqri-rcid = <64>;
+			riscv,cbqri-mcid = <256>;
+		};
 	};
 };

-- 
2.43.0


