Return-Path: <devicetree+bounces-248802-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C6DFCD5CDD
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 12:26:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 33A3A301D0E3
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 11:26:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE2D231619C;
	Mon, 22 Dec 2025 11:26:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Z+UPvSma"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f196.google.com (mail-pl1-f196.google.com [209.85.214.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 476E22356C9
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 11:26:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766402768; cv=none; b=bFVnOkSb002gwwHpyND70fRUmVhNuTo6vROqzsFJjBa6bO0xWpbS/JoZUW3qoP8I5y2fvoFXowZhpIO3r+pobixgB+aT+I/4HXViIQpO2RKcBhi0M0YnTh0SQfCmGM5HKm0skaKxwUMuJIkFtu8Ovwz9ELc3PYs1j+YVMqL+7os=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766402768; c=relaxed/simple;
	bh=AYuzuGSC2KyBdpb8hlYBY4+KTfc8mfuG0hrKUlWN6X0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=dECdRk7bs9PhvgKu1qNDLMteemLd1lhFnsjXjeLUTP2Y6bpKJh005Izo4KHBzBljngKVpYeV6cT2h9qcoc/qoBOiDeU2DQtnVdFzZdAEhu6eEWJviO7mf7FK8M9DbSLT8yLpWWcg4WyGq+AIa5aVTjEAwNcavhEgFwkQZlrXc3k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Z+UPvSma; arc=none smtp.client-ip=209.85.214.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f196.google.com with SMTP id d9443c01a7336-2a110548cdeso54036685ad.0
        for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 03:26:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1766402766; x=1767007566; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=YPgDvOrc6Z6FI66bGWH7nZrKKPg18xmDLr/yqLIfNcs=;
        b=Z+UPvSmaRevTmhsU4azvQzcn9khRl6gWEyzCUM3Uzjy7jCJsXQijltxOyjfcmV3wtG
         iphHKFP90g/7Pncfsb9kZBgo4P3TBx/hj2rA2xcH7urr5S3a3jc5xFv0DgtKuH4hqoXf
         cRcmy9ebnysroKRlLPc4l2dlRvi9f2ezyJDyg95HVe87tTY4KN3FNtoQkigBeMkIt3JY
         upowqW+pTBLll4pMmmlclysjcoYyJst5TS6HQ4OORqSEEz7q3XcrYuJDRp0VW/WFCVY5
         YkjMO+Tmz9Kr/Eil+8uEdw71+batePxi4ekwXoKrxpTW84I3tZ1suZA/a7P0yPjuG0tE
         PcGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766402766; x=1767007566;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YPgDvOrc6Z6FI66bGWH7nZrKKPg18xmDLr/yqLIfNcs=;
        b=AsbX1VQMVVtS+4opq5M23SIla091kqNrscbjOTqhlCbGtppLbeWRW49QzHZvGwjYeL
         mSKlFRJ6bUyAQsXuZuP8ZCPRBukAMU1V2Kbkdt7eqbYphv6MRCiVarD3TI0+XtGvLR69
         M7A4i9zDfS+9UxO/wKHmMuj4vBUry7JCePmqXfp/O//IxZ242mBDzvQQr/x9BUM+2m/r
         djgeMpKBLJlbOvSH+nmykAOLHgIpGP7A+QJl3+BAIvpgBtbRkBZjgmjOsa7hyobu1u5O
         e4yzOfXB9lWRibwbmUnQRZwBjkRQht8kF/+0CqTLdgyKYFeZlQO0VvyXMov8hiUJ/H1q
         933w==
X-Gm-Message-State: AOJu0YwZSsZZ/mndyVTFGOo2lZkiAmHwmfs81phP+CibQZt3FDJovZhp
	mElY84DBEKa90ftMiw9NC/Tl9KTVCLkG2gV6bv4lt4hGU8gJaV/Suh+N
X-Gm-Gg: AY/fxX69ils/xolNr1ZNZT/yf5EwmnEMjBiWahYhWgSojX17x3vqVN2toeywUi8ll8+
	4u2L310WLWbLGHE7PUIutHnNsLb9knwQrjr+J6yTtBEllnhXj2VVfSBRwObaBCnuW3RS98FZKK9
	1wRFCDDq6+MPWoep+lSCCj4EYb9jxZVg1KSxUIuTrtUiCeKop0m/Xoe4d8TWIZMQMqRTXmC6/Aw
	APT9OxyQxB1v2AAJItrv6oiLo7VMnjyuds2mL6dz9Pr6+N2i/12LabZd6UmTNu5Y5HSiprM0l7K
	8FVwgXD7joPHL69+v+L75am63ooooF0wPmljDPUPWmrFi+lmkPASS6XH93zFee1TThJ1nI5Yq9x
	6k0N8TUTOKTixQmxGB5nmPl76NvjHoG7lTRF/cpzCDfKyYbUOm13tloE3qSn0GAX9AbuSFxZdOa
	6mZeI+LtEtnAEZlZ6W8vUysHkqSA4ElLpT0ZmvusWjMIYQg2uFxevSXiTy4u/ujDBK6KPnNJhJj
	PbdYbpYtBOmNstJQX/7yLI8Vc1ZtRxKYEjoz9GFBgGwRxedAFFwNETPELuhdI7Ua8UntZK8Rtu+
	aSbG9BjO2FqS
X-Google-Smtp-Source: AGHT+IFYHl6Ami/Fr/cAqd6c4FtIqedeodym7KvXuloCEE2tyym65FcGKbybdqQRLNMA5fqUBmjjcw==
X-Received: by 2002:a17:902:dac8:b0:2a0:ba6d:d0ff with SMTP id d9443c01a7336-2a2f223177dmr104463525ad.16.1766402766457;
        Mon, 22 Dec 2025 03:26:06 -0800 (PST)
Received: from 2001-b400-e3f4-8350-2c3b-65a6-c562-3201.emome-ip6.hinet.net (2001-b400-e3f4-8350-2c3b-65a6-c562-3201.emome-ip6.hinet.net. [2001:b400:e3f4:8350:2c3b:65a6:c562:3201])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a2f3d74bb0sm93937725ad.88.2025.12.22.03.26.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Dec 2025 03:26:06 -0800 (PST)
From: Kevin Tung <kevin.tung.openbmc@gmail.com>
Date: Mon, 22 Dec 2025 19:25:29 +0800
Subject: [PATCH] ARM: dts: aspeed: yosemite5: add x4 E1.S expansion board
 I2C mux
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251222-yv5_add_dvt_e1s_ioexp-v1-1-25ad202d2681@gmail.com>
X-B4-Tracking: v=1; b=H4sIAKgqSWkC/x3MQQqAIBBA0avIrBN0MqiuEjFETjWbEg0porsnL
 d/i/wcSR+EEvXogcpYkx15gKwXzNu0ra/HFgAYbi4j6zg1N3pPPJ7FNJAdfQVvX1YaNa42robQ
 h8iLX/x3G9/0AXWt1MGcAAAA=
X-Change-ID: 20251222-yv5_add_dvt_e1s_ioexp-14930e048043
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Joel Stanley <joel@jms.id.au>, 
 Andrew Jeffery <andrew@codeconstruct.com.au>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-aspeed@lists.ozlabs.org, linux-kernel@vger.kernel.org, 
 Amithash Prasasd <amithash@meta.com>, Kevin Tung <Kevin.Tung@quantatw.com>, 
 Ken Chen <Ken.Chen@quantatw.com>, Leo Yang <Leo-Yang@quantatw.com>, 
 Jackson Liu <Jackson.Liu@quantatw.com>, 
 Kevin Tung <kevin.tung.openbmc@gmail.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1766402763; l=1757;
 i=kevin.tung.openbmc@gmail.com; s=20250924; h=from:subject:message-id;
 bh=AYuzuGSC2KyBdpb8hlYBY4+KTfc8mfuG0hrKUlWN6X0=;
 b=iYN6qeY3wMD3HyqlgwpbWDH1W7gTGl8fAskNUaffziqK0UPHS3mck0rJ2kDDIHYmNBvQUCArK
 vhpDUVX53K3BPZiIFMuykl32cWhjNLAUTP99xQQnePiTvK7hwbhJd8v
X-Developer-Key: i=kevin.tung.openbmc@gmail.com; a=ed25519;
 pk=PjAss0agA0hiuLfIBlA9j/qBmJaPCDP+jmQIUB6SE7g=

The new hardware design adds two additional E1.S devices behind an
I2C mux at address 0x73 on bus 10. Add support for this mux in the
DTS device tree.

Signed-off-by: Kevin Tung <kevin.tung.openbmc@gmail.com>
---
Summary:
Revise linux device tree entry related to Meta (Facebook) Yosemite5.

Changes in v1:
- Add x4 E1.S expansion board I2C mux
---
 .../dts/aspeed/aspeed-bmc-facebook-yosemite5.dts   | 23 ++++++++++++++++++++++
 1 file changed, 23 insertions(+)

diff --git a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
index 2486981f3d6bd36f3fe780b21e834b85242f8aa9..87524892322c1388c146b33ac454018a31dad168 100644
--- a/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
+++ b/arch/arm/boot/dts/aspeed/aspeed-bmc-facebook-yosemite5.dts
@@ -31,6 +31,8 @@ aliases {
 		i2c33 = &i2c30mux0ch1;
 		i2c34 = &i2c30mux0ch2;
 		i2c35 = &i2c30mux0ch3;
+		i2c36 = &i2c10mux0ch0;
+		i2c37 = &i2c10mux0ch1;
 		serial0 = &uart1;
 		serial2 = &uart3;
 		serial3 = &uart4;
@@ -702,6 +704,27 @@ eeprom@54 {
 		compatible = "atmel,24c128";
 		reg = <0x54>;
 	};
+
+	/* I2C MUX on E1S x4 board */
+	i2c-mux@73 {
+		compatible = "nxp,pca9543";
+		reg = <0x73>;
+		#address-cells = <1>;
+		#size-cells = <0>;
+		i2c-mux-idle-disconnect;
+
+		i2c10mux0ch0: i2c@0 {
+			reg = <0>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+
+		i2c10mux0ch1: i2c@1 {
+			reg = <1>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+	};
 };
 
 &i2c11 {

---
base-commit: 9448598b22c50c8a5bb77a9103e2d49f134c9578
change-id: 20251222-yv5_add_dvt_e1s_ioexp-14930e048043

Best regards,
-- 
Kevin Tung <kevin.tung.openbmc@gmail.com>


