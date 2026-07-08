Return-Path: <devicetree+bounces-323055-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id N+QlILCATmoEOAIAu9opvQ
	(envelope-from <devicetree+bounces-323055-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 18:54:08 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 18ED6728ECE
	for <lists+devicetree@lfdr.de>; Wed, 08 Jul 2026 18:54:07 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=sartura.hr header.s=sartura header.b=NCVGjFGL;
	dmarc=pass (policy=reject) header.from=sartura.hr;
	spf=pass (mail.lfdr.de: domain of "devicetree+bounces-323055-lists+devicetree=lfdr.de@vger.kernel.org" designates 104.64.211.4 as permitted sender) smtp.mailfrom="devicetree+bounces-323055-lists+devicetree=lfdr.de@vger.kernel.org";
	arc=pass ("subspace.kernel.org:s=arc-20240116:i=1")
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id BDCA930131A9
	for <lists+devicetree@lfdr.de>; Wed,  8 Jul 2026 16:52:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 31E16481AB5;
	Wed,  8 Jul 2026 16:52:25 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 94F73437123
	for <devicetree@vger.kernel.org>; Wed,  8 Jul 2026 16:52:18 +0000 (UTC)
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783529542; cv=none; b=CJjq6HuKVgSZplKLhACwqSimJ7BAWW8kwInNzrjyOlSlD9eOR7luZEH9Ei+K/104xxg4xzxfQkF81s3e6R+SbzCDEtGbSo9ULcpyv0g4ZUc5DJvwdEOkmwUgleq7Osdpg6e//8URQpEhmYbYMaML9DAZuzlPWt6B/J+R8j22xuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783529542; c=relaxed/simple;
	bh=Jphq79UqSiQC6Nc93rtj7TlLiIjWLIsmlAdNMsXhYfU=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=EbXvpAnOEDjRUtwxIkJIcagvaPYwLdfkUvpwz6y3gYNQhZ/xnXOD6HwMGpmrT0640xYNnkDTJnO5+hb9QKngBASlmBa8aK7P3eEDY4ql52/hcgCEzUKMIjOZGO6Bf3TdY2+Oljz9VElMb8EzOlZ/z/Rk/G6eIbL6kwe4fMwJrDM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr; spf=pass smtp.mailfrom=sartura.hr; dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b=NCVGjFGL; arc=none smtp.client-ip=209.85.221.42
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-47ddf7b09e5so869468f8f.1
        for <devicetree@vger.kernel.org>; Wed, 08 Jul 2026 09:52:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1783529536; x=1784134336; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=gxEnLEysA0x6qP1GhzE2jlVqsDd0b1OoIx2vxLPTsw8=;
        b=NCVGjFGLvDUL/z/AsApBNfqHl/gIwDafa4BtI1kp6YIlFwnm7YYTmA4IBZ1fihZaIF
         i9t6rIVMa8/jmfGgGL0NBBTJB970wRTnFEbA+mv316d9vEqjmoUv1Lk6EVmxUaRtCjF+
         NwSMFK8AYcM27XDYDSYZNQQnKOIOh5TTCFSrz0L73XHXEP5ocYxhke+DZnt45bf/KCPG
         uk9kkMhRiiHMXBFcYABURzUxSTwwuwaosA+umBvCYfbOoES95apFxLrV/w3lnnzUFsXO
         dd+cnj+ehOCRXsEr125XK/o5IyE6fvrtkdLvhKonJRCxv+IOqvL4Kr4U/4FVwvFu7qnz
         ONow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1783529536; x=1784134336;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to:content-type;
        bh=gxEnLEysA0x6qP1GhzE2jlVqsDd0b1OoIx2vxLPTsw8=;
        b=oV2jmpm9iFlxpwE6tsg0f4ftrIxclwzQdPXqjx+yWj4zF2d5o4jGFLrgM7ITMUk0As
         t/7mU1lEIAwyVmV3ylJFEkAwtpfTp0OQW1Q7mCpE4uLUxxyzluJ3dbyiTNQySIEy6rRS
         hcNKPso99T7QfKbDv9zk5EwyOab1JOBwTO11/W0q+b7nteEIOqQHMXVaBVMYjtcDY+VL
         0L0QMhJmd3O2GLbEw/BBaUUYZtXfF1JJdLBAznjWoq83wHZxQNY+im3MMbKR4zE/JcFi
         1uK0cBY/z/IGf9iRYdtkkwDDeBHLqxKX9ZZP2C9Y4tlWQ8DWvXLloBeX1gRGTwmEtgwF
         Ynkw==
X-Forwarded-Encrypted: i=1; AHgh+RrBOJHoxnW0alczQ8x9Ost9+2K3xRx474Wk7Uf33Vl2fyEuYbB687TW74S55zCnqHqbYILzAToTUIk5@vger.kernel.org
X-Gm-Message-State: AOJu0YwIK9lH2aSBk13+sOr0ir9Z1kUXim/mjYsu/7DXg5ogHofJRkVO
	f7B3FbNm+235B4yANkvWwbuzOzojgjuX5PBx6nkqNK1WFrmDht7EwryMmrSrdHr96YU=
X-Gm-Gg: AfdE7cmQlSITMiv42QK9hFr4wLOpNMnjwH/739wugB/j4+zZKToI22QQU2oYwlMhyuU
	lXsdarM96wnOmm3aOwZXSLVLCoXoeLuEqfiOQa+GRKp0gpdmjosAi/U+gQ3e5KKUqsFABfME5PZ
	U7/rIa00jBXzh36F+4kRcUIbw1+P4+I41qE2gtjEv7QwxvwWy09MGC6z0Mn7mtRe4TJNYl3+KEp
	uvYyh0g0fDqWFJGPBVYz4AqELooffEi6Chz0cx7sWn0IcnO5V2U9IfJHcC0Cp7494hfv2llsyPH
	OquSOoLepv57veTB04hyMtUMhN3MHlz7yRZnPYUgNhgDRWG9/YW24W1Zb9FBVzUxv5tlezpzbnv
	Kp3/kcaDbJ5DpRtP9bdQwd5koIJJvla080QOzoV1SaL+ThKyDRY9IuYutKSNk5fPfv8TcrNwkvO
	ro7VkXOzWUA3uA9DwMvyovqEspVv/qgMauwfSU28u9W04N6mgrNx40VFuxFs/bCAK/FGpB9Nd8k
	PjmMIkWoio+LFYov2kG/7TsIsEtXqB5UXWxD7a0oug=
X-Received: by 2002:a05:6000:40cb:b0:475:a05c:c63e with SMTP id ffacd0b85a97d-47df075c7f8mr3562703f8f.31.1783529535977;
        Wed, 08 Jul 2026 09:52:15 -0700 (PDT)
Received: from threadripper-fedora-workstation (dh207-15-57.xnet.hr. [88.207.15.57])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-47aa0f214d2sm42902679f8f.33.2026.07.08.09.52.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 08 Jul 2026 09:52:15 -0700 (PDT)
From: Robert Marko <robert.marko@sartura.hr>
To: conor@kernel.org,
	nicolas.ferre@microchip.com,
	claudiu.beznea@tuxon.dev,
	robh@kernel.org,
	krzk+dt@kernel.org,
	broonie@kernel.org,
	alexandre.belloni@bootlin.com,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	daniel.machon@microchip.com
Cc: luka.perkov@sartura.hr,
	Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH 4/4] arm64: dts: microchip: lan969x: add QSPI nodes
Date: Wed,  8 Jul 2026 18:51:11 +0200
Message-ID: <20260708165201.624271-4-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.55.0
In-Reply-To: <20260708165201.624271-1-robert.marko@sartura.hr>
References: <20260708165201.624271-1-robert.marko@sartura.hr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.84 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	DMARC_POLICY_ALLOW(-0.50)[sartura.hr,reject];
	R_DKIM_ALLOW(-0.20)[sartura.hr:s=sartura];
	R_SPF_ALLOW(-0.20)[+ip4:104.64.211.4:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER(0.00)[robert.marko@sartura.hr,devicetree@vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[13];
	TAGGED_FROM(0.00)[bounces-323055-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORWARDED(0.00)[lists@lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS(0.00)[m:conor@kernel.org,m:nicolas.ferre@microchip.com,m:claudiu.beznea@tuxon.dev,m:robh@kernel.org,m:krzk+dt@kernel.org,m:broonie@kernel.org,m:alexandre.belloni@bootlin.com,m:linux-arm-kernel@lists.infradead.org,m:devicetree@vger.kernel.org,m:linux-kernel@vger.kernel.org,m:daniel.machon@microchip.com,m:luka.perkov@sartura.hr,m:robert.marko@sartura.hr,m:krzk@kernel.org,s:lists@lfdr.de];
	ASN(0.00)[asn:63949, ipnet:104.64.192.0/19, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[robert.marko@sartura.hr,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[sartura.hr:+];
	RCVD_COUNT_FIVE(0.00)[5];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	TO_DN_SOME(0.00)[];
	ALIAS_RESOLVED(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sartura.hr:from_mime,sartura.hr:email,sartura.hr:mid,sartura.hr:dkim,sin.lore.kernel.org:helo,sin.lore.kernel.org:rdns,vger.kernel.org:from_smtp]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 18ED6728ECE

Add the required DT nodes for both QSPI controllers.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
 arch/arm64/boot/dts/microchip/lan9691.dtsi | 33 ++++++++++++++++++++++
 1 file changed, 33 insertions(+)

diff --git a/arch/arm64/boot/dts/microchip/lan9691.dtsi b/arch/arm64/boot/dts/microchip/lan9691.dtsi
index a8679ee6da13..7db9378c60a3 100644
--- a/arch/arm64/boot/dts/microchip/lan9691.dtsi
+++ b/arch/arm64/boot/dts/microchip/lan9691.dtsi
@@ -396,6 +396,24 @@ clks: clock-controller@e00c00b4 {
 			clock-names = "cpu", "ddr", "sys";
 		};
 
+		qspi0: spi@e0804000 {
+			compatible = "microchip,lan9691-qspi";
+			reg = <0xe0804000 0x00000100>,
+			      <0x20000000 0x08000000>;
+			reg-names = "qspi_base", "qspi_mmap";
+			interrupts = <GIC_SPI 43 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&fabric_clk>, <&clks GCK_ID_QSPI0>;
+			clock-names = "pclk", "gclk";
+			assigned-clocks = <&clks GCK_ID_QSPI0>;
+			assigned-clock-rates = <100000000>;
+			dmas = <&dma AT91_XDMAC_DT_PERID(1)>,
+			       <&dma AT91_XDMAC_DT_PERID(0)>;
+			dma-names = "tx", "rx";
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
 		sdmmc0: mmc@e0830000 {
 			compatible = "microchip,lan9691-sdhci";
 			reg = <0xe0830000 0x00000300>;
@@ -418,6 +436,21 @@ sdmmc1: mmc@e0838000 {
 			status = "disabled";
 		};
 
+		qspi2: spi@e0834000 {
+			compatible = "microchip,lan9691-qspi";
+			reg = <0xe0834000 0x00000100>,
+			      <0x30000000 0x04000000>;
+			reg-names = "qspi_base", "qspi_mmap";
+			interrupts = <GIC_SPI 66 IRQ_TYPE_LEVEL_HIGH>;
+			clocks = <&fabric_clk>, <&clks GCK_ID_QSPI2>;
+			clock-names = "pclk", "gclk";
+			assigned-clocks = <&clks GCK_ID_QSPI2>;
+			assigned-clock-rates = <100000000>;
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
+
 		reset: reset-controller@e201000c {
 			compatible = "microchip,lan9691-switch-reset",
 				     "microchip,lan966x-switch-reset";
-- 
2.55.0


