Return-Path: <devicetree+bounces-229143-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 077A5BF478C
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 05:15:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id ABFB4405D68
	for <lists+devicetree@lfdr.de>; Tue, 21 Oct 2025 03:15:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 50056157493;
	Tue, 21 Oct 2025 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="P9FmyixS"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pg1-f171.google.com (mail-pg1-f171.google.com [209.85.215.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C21CA72618
	for <devicetree@vger.kernel.org>; Tue, 21 Oct 2025 03:15:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.215.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761016553; cv=none; b=alLdexu1Cj4yPiCud9LpY8fNdkbN5G2Z0D5pxOVzDJUdMlWHwyOzG74IEM3u3vln6aVQ2dPD0CRSJvcpnFOhsYc3TnqXE9/H+MScH1nAN/ZnSfQn6Xz2ThpP4HC2bU5DXNdUkopJ6DnVRznWDISotPCkxBJC8V+Fq9MzBqdrG9g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761016553; c=relaxed/simple;
	bh=FozCj5Qtilnm6MTFQqUJJBi0+f5aDzs/7epoDnQr8Rw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=eZw877HkXajrrEq9UsGQVUrN+pvWqpHd0jVTVKi+Hu7AYDDQvHCaBbG9csKSrUc3QB7QOBjUewL9EmQrTDMYg7CeLXJOoujVL/v9TFkChZPko9Qfl3jvWxJAuSnJWJAhZHSOZtf8kVdw6Up4Ys64jh/G6rtLigLujrv2PvB9tk4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=P9FmyixS; arc=none smtp.client-ip=209.85.215.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pg1-f171.google.com with SMTP id 41be03b00d2f7-b608df6d2a0so4497991a12.1
        for <devicetree@vger.kernel.org>; Mon, 20 Oct 2025 20:15:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761016551; x=1761621351; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=MIc5Jk6uXrpT5vKhUN3R3BidtAKxdUPzX/dU/naleU8=;
        b=P9FmyixSb94cxMLRqyW/OTZj/wzKWawTCu1NAN3EYTDUgInaRAy3rt3KyCj/JDnuew
         kprRO9iS03CtTySFOlfSiDFCUvvLpB+9sdvN7tF2noUBA3Ewj2dIG6oMbjpuDA5B+EWJ
         FsW0kxOMOqeRWVHpD/t3rYq7T4+VIFeIvBPJGaIdj+ZeKxRbB4RhDdwjEAJ6adWPPPga
         +wnHKPBf/erEGhEUs+eIaYkdTJjk9rx9tU+w6jQTAyxRk6bXdZQqP9Y3joaB/HjFAFsn
         TiHyyaXugJxC8QvqjVNptYZ0hru0NcnD94dnL2xF5w1IB1bqgdclItju4l9qZaj3cdxC
         4eOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761016551; x=1761621351;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MIc5Jk6uXrpT5vKhUN3R3BidtAKxdUPzX/dU/naleU8=;
        b=hDR6g5EVCcMgQX2OhniPNoQQBV3D38MRtt09lLevilfWbvMXyBU/48rWUX7xrf+xvI
         BQeiBldsAyycD3jKo176Q5m1lC2kor/n+53J+89iyCNqzw8HIjeI8ANVg/tDPWduqBpq
         QV1h7GbqjWmZ0ISTCsLN2legSI8wV0ij3ECndjrIWcvz9ROO2JnEjiJcDjyu2y8wBTEQ
         8UsNC/+4dg5jDbSvHDTcplbIbx2cpabsTlM4wXggR0LtySNM91gY9GL9FbviK2vxWDk1
         sXcIVrjQRxEhxysjne8kxu+p9FNwBZkuH2VBGgIfxcyy3N2JrDWuInPu6AlXb8afzwrz
         H8SQ==
X-Gm-Message-State: AOJu0Ywvz1z85EdvC1zvOxeEg8scYjHpGit6uQQeQH6vh7dFE512CqWH
	BBQ7xOSeKOILjqOZh2SwRVQRSb3hj5XRgaUuEIdk975prynUvRSs5wFr
X-Gm-Gg: ASbGncuk3YOmFThlHQvl1wN95w/VDtTt6DMYfdTjwV455jg+bznPCzIIIjTO/tqxuOp
	RKi6rpHBDj7xv7Qm4nSrkfB5MAZ/y2GbzsoqferT+r1iRkmrPAI5QTDZNM8LUFT4VeOph12sQ4P
	DqQ2rsMFp0NK+8E6ObCq5fust7YUupWc2U434bpyYTYqnj5wK2ewB4HrekIc9DfLN/QzJ4DHVxB
	Ypks6+7K8HsQiY82pH9cTdwvx63KkPDVx4Mog0utNWgBsJT8EExl3z2YQQ0x3xgWN2Z6d+/yTXA
	TPZZz6CFz4qzBENhC9kFBWcPcBYaB2BklCr3wZ08Xo8Hyud9Y1O8u+dp/fehg4fO5u23JdFQKuD
	Q0JJ7dXC47vdL75X0GpWqPYuwly/pKgeEfOfI0KAbitYKT9Easo1e5/S1ztOp4XntkolQ0mlrGy
	E2Cs2n/jes6KWdBh8tgFlx6UWXOQ2JAfJt0Z0v
X-Google-Smtp-Source: AGHT+IHvc2OdIns7Dhqd5TV4LyvC/HJfGjCUatzoXh06HQxZAcairq7EJA2klU28lcwGsK1CQQDx2g==
X-Received: by 2002:a17:903:2b0d:b0:272:f9c3:31f7 with SMTP id d9443c01a7336-290cbe2ae84mr56298125ad.50.1761016551034;
        Mon, 20 Oct 2025 20:15:51 -0700 (PDT)
Received: from [172.17.0.2] (125-227-29-20.hinet-ip.hinet.net. [125.227.29.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29246fcc2b1sm94889765ad.27.2025.10.20.20.15.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Oct 2025 20:15:50 -0700 (PDT)
From: Leo Wang <leo.jt.wang@gmail.com>
Date: Tue, 21 Oct 2025 11:15:39 +0800
Subject: [PATCH] ARM: dts: aspeed: clemente: Add EEPROMs for boot and data
 drive FRUs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251021-leo-dts-add-nvme-eeprom-v1-1-33166b3665b4@gmail.com>
X-B4-Tracking: v=1; b=H4sIANr69mgC/x3MQQqEMBAF0atIr21IZ3REryIuxHy1YUwkERkQ7
 25w+RZVFyVERaKuuCji1KTBZ0hZ0LSOfgGryyZrbC3GCv8Q2B2JR+fYnxsY2GPY+CPfqpG2bid
 rKNd7xKz/99wP9/0A40cKRWkAAAA=
X-Change-ID: 20251021-leo-dts-add-nvme-eeprom-316471959c20
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 george.kw.lee@fii-foxconn.com, bruce.jy.hung@fii-foxconn.com, 
 leo.jt.wang@fii-foxconn.com, Leo Wang <leo.jt.wang@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761016548; l=2272;
 i=leo.jt.wang@gmail.com; s=20250618; h=from:subject:message-id;
 bh=FozCj5Qtilnm6MTFQqUJJBi0+f5aDzs/7epoDnQr8Rw=;
 b=8BInr5iA6wBDcAL4sY8DnyKW4muBdm9myjKyhrNgz4zvC7PgZByz+aciemOqaw2l3lP+Dk17F
 WiRuYEfnT9MAdWDDJm8CfcmcWioWtAmA94gNx57lZN4uJoHCmtiSswe
X-Developer-Key: i=leo.jt.wang@gmail.com; a=ed25519;
 pk=x+DKjAtU/ZbbMkkAVdwfZzKpvNUVgiV1sLJbidVIwSQ=

Add EEPROM devices on the I2C buses used for the boot and data NVMe
drives. These EEPROMs store FRU information for each drive, allowing
the BMC to identify.

Signed-off-by: Leo Wang <leo.jt.wang@gmail.com>
---
 .../dts/aspeed/aspeed-bmc-facebook-clemente.dts    | 30 ++++++++++++++++++++++
 1 file changed, 30 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-clemente.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-clemente.dts
index 450446913e36b1418fab901cde44280468990c7a..885c50a7d66593dfa8493d2d031700174b452382 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-clemente.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-clemente.dts
@@ -311,6 +311,12 @@ i2c0mux0ch1mux0ch0: i2c@0 {
 					#address-cells = <1>;
 					#size-cells = <0>;
 					reg = <0>;
+
+					// HDD NVMe SSD FRU 0
+					eeprom@53 {
+						compatible = "atmel,24c02";
+						reg = <0x53>;
+					};
 				};
 
 				i2c0mux0ch1mux0ch1: i2c@1 {
@@ -323,6 +329,12 @@ i2c0mux0ch1mux0ch2: i2c@2 {
 					#address-cells = <1>;
 					#size-cells = <0>;
 					reg = <2>;
+
+					// HDD NVMe SSD FRU 1
+					eeprom@53 {
+						compatible = "atmel,24c02";
+						reg = <0x53>;
+					};
 				};
 
 				i2c0mux0ch1mux0ch3: i2c@3 {
@@ -493,6 +505,12 @@ i2c0mux3ch1mux0ch0: i2c@0 {
 					#address-cells = <1>;
 					#size-cells = <0>;
 					reg = <0>;
+
+					// HDD NVMe SSD FRU 2
+					eeprom@53 {
+						compatible = "atmel,24c02";
+						reg = <0x53>;
+					};
 				};
 
 				i2c0mux3ch1mux0ch1: i2c@1 {
@@ -505,6 +523,12 @@ i2c0mux3ch1mux0ch2: i2c@2 {
 					#address-cells = <1>;
 					#size-cells = <0>;
 					reg = <2>;
+
+					// HDD NVMe SSD FRU 3
+					eeprom@53 {
+						compatible = "atmel,24c02";
+						reg = <0x53>;
+					};
 				};
 
 				i2c0mux3ch1mux0ch3: i2c@3 {
@@ -619,6 +643,12 @@ i2c0mux5ch1: i2c@1 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 			reg = <1>;
+
+			// BOOT DRIVE FRU
+			eeprom@53 {
+				compatible = "atmel,24c02";
+				reg = <0x53>;
+			};
 		};
 
 		i2c0mux5ch2: i2c@2 {

---
base-commit: 6953afcd81a2cc73784e3dd23faa0a1aaf97441a
change-id: 20251021-leo-dts-add-nvme-eeprom-316471959c20

Best regards,
-- 
Leo Wang <leo.jt.wang@gmail.com>


