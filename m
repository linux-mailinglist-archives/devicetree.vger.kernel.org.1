Return-Path: <devicetree+bounces-284099-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id wE52DEl9zmn0nwYAu9opvQ
	(envelope-from <devicetree+bounces-284099-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 02 Apr 2026 16:29:29 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id C2D1C38A889
	for <lists+devicetree@lfdr.de>; Thu, 02 Apr 2026 16:29:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 85C5930589A2
	for <lists+devicetree@lfdr.de>; Thu,  2 Apr 2026 14:28:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0F1AA3EF67D;
	Thu,  2 Apr 2026 14:27:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=aliel.fr header.i=@aliel.fr header.b="L++uO4z2"
X-Original-To: devicetree@vger.kernel.org
Received: from courrier.aliel.fr (courrier.aliel.fr [65.21.61.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 162553EE1F5;
	Thu,  2 Apr 2026 14:27:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=65.21.61.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775140065; cv=none; b=b5F1Blgqims34DWwQ8oFfx1c79ARhTSPGsvzMJuAUM4KTh6FITQdqty4zfJ5aNU2KgrLQG338vrdC50qdDEkeSqLxPTzho4zhjnAHcAUPMZw0dNpIBHyoFJP0faMtW/TjsL7qIidBwfuizVUuE9m/kYNy0HVbuWOoVVO+FeOPJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775140065; c=relaxed/simple;
	bh=seZTIBpCrIa88Q5I5ls9lWfgh7ETpuTsfLV3IO6SlWs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=My0Dg4i44WlNWY/j8c+0Rv6oF50xio7JIHDa+4Lb28jAuXLpLvASjPUw2mhq1C2KdjonX2kxIzrYIIoyFvgLLLBvzztMGAGHThLFc8rxw/uTHE5PBJlu1Nl+ZnT0Ih/zW1YRH7Q4xcDR7R+HPY2145eGTQeY+AsxDMRqiaB/eKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=aliel.fr; spf=pass smtp.mailfrom=aliel.fr; dkim=pass (1024-bit key) header.d=aliel.fr header.i=@aliel.fr header.b=L++uO4z2; arc=none smtp.client-ip=65.21.61.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=aliel.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aliel.fr
From: Ronald Claveau <linux-kernel-dev@aliel.fr>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aliel.fr;
	s=courrier-s1; t=1775140059;
	bh=seZTIBpCrIa88Q5I5ls9lWfgh7ETpuTsfLV3IO6SlWs=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=L++uO4z2k2IOmdnf9aVZuMsI1hhF8Cr4ZUrxkloIj2R11+aUOW/bTdlje9CxZr+Zg
	 if9PqYaXPmk7RvJy9chzETpD/NRQWWMaN146QJKrHkZr4HXI7AD2CEw7rxfSjdFias
	 wDQP+pemZ4c5D8keTOsxcutOkjVUEoVxPE9TORus=
Date: Thu, 02 Apr 2026 16:27:07 +0200
Subject: [PATCH 7/8] arm64: dts: amlogic: t7: Add i2c controller node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260402-add-mcu-fan-khadas-vim4-v1-7-2b12eb4ac7b0@aliel.fr>
References: <20260402-add-mcu-fan-khadas-vim4-v1-0-2b12eb4ac7b0@aliel.fr>
In-Reply-To: <20260402-add-mcu-fan-khadas-vim4-v1-0-2b12eb4ac7b0@aliel.fr>
To: Neil Armstrong <neil.armstrong@linaro.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Andi Shyti <andi.shyti@kernel.org>, 
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>, 
 Beniamino Galvani <b.galvani@gmail.com>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@kernel.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, Liam Girdwood <lgirdwood@gmail.com>, 
 Mark Brown <broonie@kernel.org>
Cc: linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-i2c@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, linux-pm@vger.kernel.org, 
 Ronald Claveau <linux-kernel-dev@aliel.fr>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openssh-sha256; t=1775140050; l=1096;
 i=linux-kernel-dev@aliel.fr; s=id_ed25519; h=from:subject:message-id;
 bh=seZTIBpCrIa88Q5I5ls9lWfgh7ETpuTsfLV3IO6SlWs=;
 b=U1NIU0lHAAAAAQAAADMAAAALc3NoLWVkMjU1MTkAAAAgMGec55oxeeisqykQiUedekMYyOnR9
 BG9E/7rDWyqdNoAAAAGcGF0YXR0AAAAAAAAAAZzaGE1MTIAAABTAAAAC3NzaC1lZDI1NTE5AAAA
 QMXKZZfGPraskXyquV/aeTZ1DFvRrSQgocnAva4rLW7dKfbro8wXzX/cyG6jykgFl0ytu3Bwsg5
 Dr47z8aujnwo=
X-Developer-Key: i=linux-kernel-dev@aliel.fr; a=openssh;
 fpr=SHA256:kch4osYZ6A1BrPps5AUs6KnfdE2wm4ocMtyTc8TmZMs
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[aliel.fr:s=courrier-s1];
	R_SPF_ALLOW(-0.20)[+ip4:172.232.135.74:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_TO(0.00)[linaro.org,kernel.org,baylibre.com,googlemail.com,gmail.com,intel.com,arm.com];
	TAGGED_FROM(0.00)[bounces-284099-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[23];
	DMARC_NA(0.00)[aliel.fr];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.234.96:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux-kernel-dev@aliel.fr,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[aliel.fr:+];
	NEURAL_HAM(-0.00)[-0.998];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.232.128.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,0.1.87.192:email,0.1.40.224:email]
X-Rspamd-Queue-Id: C2D1C38A889
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add the T7 i2c controller node used by the Khadas VIM4
for MCU communication.

Use amlogic,meson-axg-i2c as fallback compatible.

Signed-off-by: Ronald Claveau <linux-kernel-dev@aliel.fr>
---
 arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi b/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi
index e96fe10b251a0..560c9dce35266 100644
--- a/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi
+++ b/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi
@@ -711,6 +711,16 @@ pwm_ao_cd: pwm@60000 {
 				status = "disabled";
 			};
 
+			i2c_m_ao_a: i2c@76000 {
+				compatible = "amlogic,t7-i2c", "amlogic,meson-axg-i2c";
+				reg = <0x0 0x76000 0x0 0x48>;
+				#address-cells = <1>;
+				#size-cells = <0>;
+				interrupts = <GIC_SPI 330 IRQ_TYPE_EDGE_RISING>;
+				clocks = <&clkc_periphs CLKID_SYS_I2C_AO_A>;
+				status = "disabled";
+			};
+
 			sd_emmc_a: mmc@88000 {
 				compatible = "amlogic,t7-mmc", "amlogic,meson-axg-mmc";
 				reg = <0x0 0x88000 0x0 0x800>;

-- 
2.49.0


