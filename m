Return-Path: <devicetree+bounces-249797-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A3D3CDF609
	for <lists+devicetree@lfdr.de>; Sat, 27 Dec 2025 10:24:19 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id ED9953000B57
	for <lists+devicetree@lfdr.de>; Sat, 27 Dec 2025 09:24:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9609921770A;
	Sat, 27 Dec 2025 09:24:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from cstnet.cn (smtp81.cstnet.cn [159.226.251.81])
	(using TLSv1.2 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38EF614AD20;
	Sat, 27 Dec 2025 09:24:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=159.226.251.81
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766827454; cv=none; b=L1C5YQ8QBLnmg/nH16Z8YGNqOUe7AA78S6vtqu6l0Pvj8VX2GDavKQ299BG/kb8CVTKtQtvMQ4J9B6blJYdMOmqm/DuK5iu/l58c1z0OguW6qQCrIsNYANrgywhpmJ5LCrNOUs5XlmOOg4OUFQTTj7wly+NqQPspl9zGjLAhmKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766827454; c=relaxed/simple;
	bh=+WmGn2mC+HePvekP0m+EEsYaUbNG5tDdILiJHQEaXYQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=EYeVH5k3XzNvD2JebkALaj088BXYY51PAJpFNot3sL+Z2AUMIYbxdXEwBMVMi/gZbL3Y+rGphEfmLnD3/wbVDsYEKOl+tVY2391skuvH6NjCtCu1rhldgR7zJR8YaMLSiDRp7sJxh9Yod02TioO/9JY6luyf3lSWlETGZSN9qno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=isrc.iscas.ac.cn; spf=pass smtp.mailfrom=isrc.iscas.ac.cn; arc=none smtp.client-ip=159.226.251.81
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=isrc.iscas.ac.cn
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=isrc.iscas.ac.cn
Received: from duge-virtual-machine.localdomain (unknown [183.192.221.253])
	by APP-03 (Coremail) with SMTP id rQCowADH4diwpU9pjCYxAg--.8901S2;
	Sat, 27 Dec 2025 17:24:02 +0800 (CST)
From: Jiayu Du <jiayu.riscv@isrc.iscas.ac.cn>
To: conor@kernel.org
Cc: cyy@cyyself.name,
	kingxukai@zohomail.com,
	jiayu.riscv@isrc.iscas.ac.cn,
	linux-riscv@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/1] riscv: dts: Correct the formatting issues about k230 dts
Date: Sat, 27 Dec 2025 17:23:54 +0800
Message-ID: <20251227092355.42825-1-jiayu.riscv@isrc.iscas.ac.cn>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CM-TRANSID:rQCowADH4diwpU9pjCYxAg--.8901S2
X-Coremail-Antispam: 1UD129KBjvJXoW7AF4DZr4fZF47Zr13GFWfXwb_yoW5JrWfpw
	429Fs5Ga93WF1Sk3W2vFWvgry5ZFn8W3W8Ww1YyryUGr45Xry8Kr13Jan5tryUXF43Z3yI
	9r1Fy34xur12vaDanT9S1TB71UUUUU7qnTZGkaVYY2UrUUUUjbIjqfuFe4nvWSU5nxnvy2
	9KBjDU0xBIdaVrnRJUUUkm14x267AKxVW8JVW5JwAFc2x0x2IEx4CE42xK8VAvwI8IcIk0
	rVWUuVWrJwAFIxvE14AKwVWUJVWUGwA2ocxC64kIII0Yj41l84x0c7CEw4AK67xGY2AK02
	1l84ACjcxK6xIIjxv20xvE14v26r1j6r1xM28EF7xvwVC0I7IYx2IY6xkF7I0E14v26r1j
	6r4UM28EF7xvwVC2z280aVAFwI0_Jr0_Gr1l84ACjcxK6I8E87Iv6xkF7I0E14v26r1j6r
	4UM2AIxVAIcxkEcVAq07x20xvEncxIr21l5I8CrVACY4xI64kE6c02F40Ex7xfMcIj6xII
	jxv20xvE14v26r1j6r18McIj6I8E87Iv67AKxVWUJVW8JwAm72CE4IkC6x0Yz7v_Jr0_Gr
	1lF7xvr2IYc2Ij64vIr41lF7I21c0EjII2zVCS5cI20VAGYxC7MxkF7I0En4kS14v26r12
	6r1DMxAIw28IcxkI7VAKI48JMxC20s026xCaFVCjc4AY6r1j6r4UMI8I3I0E5I8CrVAFwI
	0_Jr0_Jr4lx2IqxVCjr7xvwVAFwI0_JrI_JrWlx4CE17CEb7AF67AKxVWUAVWUtwCIc40Y
	0x0EwIxGrwCI42IY6xIIjxv20xvE14v26r1j6r1xMIIF0xvE2Ix0cI8IcVCY1x0267AKxV
	WUJVW8JwCI42IY6xAIw20EY4v20xvaj40_Jr0_JF4lIxAIcVC2z280aVAFwI0_Jr0_Gr1l
	IxAIcVC2z280aVCY1x0267AKxVWUJVW8JbIYCTnIWIevJa73UjIFyTuYvjfUYCJmUUUUU
X-CM-SenderInfo: 5mld534oul2uny6l223fol2u1dvotugofq/

Correct the errors in the spacing format, and move the aliases from
the SoC's dtsi to the board's dts, since it's more standard.

Signed-off-by: Jiayu Du <jiayu.riscv@isrc.iscas.ac.cn>
---

This patch is based on this initial support for Canaan Kendryte K230
series v6[1], and it is used to fix the [PATCH v6 10/11] of that series.
Although the latest version is v8, this problem still persists.
And this patch hasn't been merged into Conor's branch yet.

[1]: https://lore.kernel.org/all/tencent_DF5D7CD182AFDA188E0FB80E314A21038D08@qq.com/

Thanks for your time and review.

 arch/riscv/boot/dts/canaan/k230-canmv.dts | 4 ++++
 arch/riscv/boot/dts/canaan/k230-evb.dts   | 4 ++++
 arch/riscv/boot/dts/canaan/k230.dtsi      | 6 +-----
 3 files changed, 9 insertions(+), 5 deletions(-)

diff --git a/arch/riscv/boot/dts/canaan/k230-canmv.dts b/arch/riscv/boot/dts/canaan/k230-canmv.dts
index 9565915cea..593ca38e68 100644
--- a/arch/riscv/boot/dts/canaan/k230-canmv.dts
+++ b/arch/riscv/boot/dts/canaan/k230-canmv.dts
@@ -9,6 +9,10 @@ / {
 	model = "Canaan CanMV-K230";
 	compatible = "canaan,canmv-k230", "canaan,kendryte-k230";
 
+	aliases {
+		serial0 = &uart0;
+	};
+
 	chosen {
 		stdout-path = "serial0:115200n8";
 	};
diff --git a/arch/riscv/boot/dts/canaan/k230-evb.dts b/arch/riscv/boot/dts/canaan/k230-evb.dts
index f898b8e623..bfa53f2e24 100644
--- a/arch/riscv/boot/dts/canaan/k230-evb.dts
+++ b/arch/riscv/boot/dts/canaan/k230-evb.dts
@@ -9,6 +9,10 @@ / {
 	model = "Kendryte K230 EVB";
 	compatible = "canaan,k230-usip-lp3-evb", "canaan,kendryte-k230";
 
+	aliases {
+		serial0 = &uart0;
+	};
+
 	chosen {
 		stdout-path = "serial0:115200n8";
 	};
diff --git a/arch/riscv/boot/dts/canaan/k230.dtsi b/arch/riscv/boot/dts/canaan/k230.dtsi
index 7da4949894..6bc599f079 100644
--- a/arch/riscv/boot/dts/canaan/k230.dtsi
+++ b/arch/riscv/boot/dts/canaan/k230.dtsi
@@ -11,10 +11,6 @@ / {
 	#size-cells = <2>;
 	compatible = "canaan,kendryte-k230";
 
-	aliases {
-		serial0 = &uart0;
-	};
-
 	cpus {
 		#address-cells = <1>;
 		#size-cells = <0>;
@@ -72,7 +68,7 @@ soc {
 		ranges;
 
 		plic: interrupt-controller@f00000000 {
-			compatible = "canaan,k230-plic" ,"thead,c900-plic";
+			compatible = "canaan,k230-plic", "thead,c900-plic";
 			reg = <0xf 0x00000000 0x0 0x04000000>;
 			interrupts-extended = <&cpu0_intc 11>, <&cpu0_intc 9>;
 			interrupt-controller;
-- 
2.52.0


