Return-Path: <devicetree+bounces-272995-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id sJqKAtnirmmoJgIAu9opvQ
	(envelope-from <devicetree+bounces-272995-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 16:10:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A9C723B549
	for <lists+devicetree@lfdr.de>; Mon, 09 Mar 2026 16:10:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 902FE3018050
	for <lists+devicetree@lfdr.de>; Mon,  9 Mar 2026 15:07:28 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EA58B3D7D8D;
	Mon,  9 Mar 2026 15:07:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m+jMxgTt"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C589E3D7D80
	for <devicetree@vger.kernel.org>; Mon,  9 Mar 2026 15:07:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773068838; cv=none; b=H/0P4VDJQWB4ag3ZR5DCRE3A+BwhwfjryCaAfG8P/bDGu3JFRp17LJ5bOYtWog5297FL6Mo3U3Ves2gLju6jWxk90uN4MhOXZ1Mlvlr4fqKru6Ien+M62dislEQsrqPw17HiaYvwvJl48vwPqhBEI6ytiwz9ZmbUIrbCsR/Mheo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773068838; c=relaxed/simple;
	bh=GdeMPNlEReEt5c3TbQB5zQABnqKdWHPzQr6+VSniZPU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=bdTYx6rB/XfxxqYcMRKZbuKKbcP22zS4ekjneCKkCP9y6UK9lSh362a3aV4BcvCOBMCxLSjeKIdQZ2DtTbpslE1fjQ1yVvoCWABHXellzwgELmjHGtelacbARhU/h5MQIhXnKEx0TszuQHg8p31LNNOHlenzS5YnjsSqVgdc1YA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m+jMxgTt; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 46592C4AF0B;
	Mon,  9 Mar 2026 15:07:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773068838;
	bh=GdeMPNlEReEt5c3TbQB5zQABnqKdWHPzQr6+VSniZPU=;
	h=From:Date:Subject:To:Cc:From;
	b=m+jMxgTteOqY+Vth7Dvs9wyoCR4Q8NylkAbt2g2eTL+vPR+xuq2cyI46nvHaTj/wf
	 5IyqHm4Ut6Dv/avs+1fFeNUM5mm3s4qyNg2Cdq/dicEthSxkXEEX7zeD2V5KjTIntn
	 yR9pLeffuUGIKQWqwujInprHXCwz3KHTWuw43X0ZtRctOakv6yil1nFBZfSgmfr//z
	 TYP1muwsAP7ZfJBM3YJHVsJS+zBAvQrVHrNCRgutzV7csv1RBVivPyWXyQOiv05fAh
	 JuFJAMZ1vMxdIDa7PnDe+gLM/fv9fPYjIksg6arf7PqLxDtKsNO2xFoMP5k2jGYbuh
	 JmIkKVvWURBJg==
From: Lorenzo Bianconi <lorenzo@kernel.org>
Date: Mon, 09 Mar 2026 16:07:03 +0100
Subject: [PATCH] arm64: dts: airoha: en7581: Add npu node to to EN7581 SoC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260309-airoha-7581-npu-v1-1-856a360ae9f6@kernel.org>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/x3MQQqAIBBA0avErBswS8uuEi0Gm2o2JkoRRHdPW
 r7F/w9kTsIZxuqBxJdkOUJBU1fgdwoboyzFoJW2qlUOSdKxE/ZmaDDEE72hnrTT1lMHpYqJV7n
 /4zS/7weYEy2JYQAAAA==
X-Change-ID: 20260309-airoha-7581-npu-c5a7a2926ca4
To: Matthias Brugger <matthias.bgg@gmail.com>, 
 AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, 
 linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org, 
 Lorenzo Bianconi <lorenzo@kernel.org>
X-Mailer: b4 0.14.2
X-Rspamd-Queue-Id: 0A9C723B549
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c15:e001:75::/64:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-272995-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[gmail.com,collabora.com,kernel.org];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c15::/32, country:SG];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.967];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[lorenzo@kernel.org,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[9];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sin.lore.kernel.org:rdns,sin.lore.kernel.org:helo]
X-Rspamd-Action: no action

Introduce npu controller node to EN7581 SoC and EN7581 evaluation board.
Adjust reserved memory parameters to the values used by the npu
controller.

Signed-off-by: Lorenzo Bianconi <lorenzo@kernel.org>
---
 arch/arm64/boot/dts/airoha/en7581-evb.dts |  4 +++
 arch/arm64/boot/dts/airoha/en7581.dtsi    | 43 ++++++++++++++++++++++++-------
 2 files changed, 38 insertions(+), 9 deletions(-)

diff --git a/arch/arm64/boot/dts/airoha/en7581-evb.dts b/arch/arm64/boot/dts/airoha/en7581-evb.dts
index 886e2e4b5f64ce1a2a5496d35b8379fb4ac27dc2..b1a41d1e7eb676beb0e42c949c70362125ec6f0b 100644
--- a/arch/arm64/boot/dts/airoha/en7581-evb.dts
+++ b/arch/arm64/boot/dts/airoha/en7581-evb.dts
@@ -99,6 +99,10 @@ &i2c0 {
 	status = "okay";
 };
 
+&npu {
+	status = "okay";
+};
+
 &eth {
 	status = "okay";
 };
diff --git a/arch/arm64/boot/dts/airoha/en7581.dtsi b/arch/arm64/boot/dts/airoha/en7581.dtsi
index ff6908a76e8eb6cf91343495d1fe531a868e41fb..3ea00b3b0a35ce1f466cbe89fefd05abef20056d 100644
--- a/arch/arm64/boot/dts/airoha/en7581.dtsi
+++ b/arch/arm64/boot/dts/airoha/en7581.dtsi
@@ -15,29 +15,29 @@ reserved-memory {
 		#size-cells = <2>;
 		ranges;
 
-		npu-binary@84000000 {
+		npu_binary: npu-binary@84000000 {
 			no-map;
 			reg = <0x0 0x84000000 0x0 0xa00000>;
 		};
 
-		npu-flag@84b0000 {
+		npu_pkt: npu-pkt@8a000000 {
 			no-map;
-			reg = <0x0 0x84b00000 0x0 0x100000>;
+			reg = <0x0 0x8a000000 0x0 0x2c00000>;
 		};
 
-		npu-pkt@85000000 {
+		npu_txpkt: npu-txpkt@8cc00000 {
 			no-map;
-			reg = <0x0 0x85000000 0x0 0x1a00000>;
+			reg = <0x0 0x8cc00000 0x0 0x4000000>;
 		};
 
-		npu-phyaddr@86b00000 {
+		npu_txbufid: npu-txbufid@90c00000 {
 			no-map;
-			reg = <0x0 0x86b00000 0x0 0x100000>;
+			reg = <0x0 0x90c00000 0x0 0x6800>;
 		};
 
-		npu-rxdesc@86d00000 {
+		npu_ba: npu-ba@90c06800 {
 			no-map;
-			reg = <0x0 0x86d00000 0x0 0x100000>;
+			reg = <0x0 0x90c06800 0x0 0x200000>;
 		};
 	};
 
@@ -347,6 +347,31 @@ i2c1: i2c@1fbf8100 {
 			status = "disabled";
 		};
 
+		npu: npu@1e900000 {
+			compatible = "airoha,en7581-npu";
+			reg = <0x0 0x1e900000 0x0 0x313000>;
+			interrupts = <GIC_SPI 125 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 103 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 109 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 113 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 117 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 134 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 135 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 136 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 137 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 118 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 119 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 120 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 121 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 122 IRQ_TYPE_LEVEL_HIGH>,
+				     <GIC_SPI 123 IRQ_TYPE_LEVEL_HIGH>;
+			memory-region = <&npu_binary>, <&npu_pkt>, <&npu_txpkt>,
+					<&npu_txbufid>, <&npu_ba>;
+			memory-region-names = "firmware", "pkt", "tx-pkt",
+					      "tx-bufid", "ba";
+			status = "disabled";
+		};
+
 		eth: ethernet@1fb50000 {
 			compatible = "airoha,en7581-eth";
 			reg = <0 0x1fb50000 0 0x2600>,

---
base-commit: 405c09548a695ca7be58b5b9d3ac8388630e907f
change-id: 20260309-airoha-7581-npu-c5a7a2926ca4

Best regards,
-- 
Lorenzo Bianconi <lorenzo@kernel.org>


