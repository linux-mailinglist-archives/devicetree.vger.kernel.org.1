Return-Path: <devicetree+bounces-286996-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mE/gI1rO3GmcWQkAu9opvQ
	(envelope-from <devicetree+bounces-286996-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 13 Apr 2026 13:07:06 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id CCED73EB191
	for <lists+devicetree@lfdr.de>; Mon, 13 Apr 2026 13:07:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id DC5B63050A09
	for <lists+devicetree@lfdr.de>; Mon, 13 Apr 2026 10:57:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 56D803C278C;
	Mon, 13 Apr 2026 10:56:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=aliel.fr header.i=@aliel.fr header.b="PaSZCqo1"
X-Original-To: devicetree@vger.kernel.org
Received: from courrier.aliel.fr (courrier.aliel.fr [65.21.61.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AFD8E3BF69E;
	Mon, 13 Apr 2026 10:56:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=65.21.61.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776077800; cv=none; b=uXimRAAwKVC5OhOatqHeV4ICtaxhBWc2zepX8oRKxTxFlbtZlcS5MOCVVks7w1hfWUqO0r4McTTiXK3s73b7cbxCCkn4CSDKpGsRrLifKgFNJbsq3+Plsbp7GGE1nAR+6HVetpVtWPJ51YRLlwHanyZmc+yK2wwSlbR7MpsX/aM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776077800; c=relaxed/simple;
	bh=qZ6yxPYtU0rtSpNUw/qC8lVKNvJcNRQzOAUadiZgg5o=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=aIisAXtVoij2d/hGIhu1sfCWOF1lh3CSFqSBDg57IuciX6P5OCkAcfUwnbPwsb3BkB7L15z0k/ys9UQTwOsoghHXISIobUTuqLfj4L1XuWvJeDzGE3mRWBG0payc8QYdq2F1NxenbdbELVPvH55U/mPZD6sPU8N68Y+LvdlGajQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=aliel.fr; spf=pass smtp.mailfrom=aliel.fr; dkim=pass (1024-bit key) header.d=aliel.fr header.i=@aliel.fr header.b=PaSZCqo1; arc=none smtp.client-ip=65.21.61.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=aliel.fr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=aliel.fr
From: Ronald Claveau <linux-kernel-dev@aliel.fr>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=aliel.fr;
	s=courrier-s1; t=1776077797;
	bh=qZ6yxPYtU0rtSpNUw/qC8lVKNvJcNRQzOAUadiZgg5o=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=PaSZCqo1tE2pOymxSC+Gfs8tW/ffUZvvvueJNk7KUOcCCxCl+qMp0yUa+rp49P7vb
	 IMs9XL/AUpTjZHpkikkGfyZxA48iC7uAqGF0r8a+dtvRSuLLlocnDvSQyzZCcdUksr
	 J4V+7WpIgRGfvDeKjQhKjlg17ExuQkHE+buskrbc=
Date: Mon, 13 Apr 2026 12:52:47 +0200
Subject: [PATCH v2 6/8] arm64: dts: amlogic: t7: Add thermal sensor nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260413-add-thermal-t7-vim4-v2-6-1002d90a0602@aliel.fr>
References: <20260413-add-thermal-t7-vim4-v2-0-1002d90a0602@aliel.fr>
In-Reply-To: <20260413-add-thermal-t7-vim4-v2-0-1002d90a0602@aliel.fr>
To: Guillaume La Roque <glaroque@baylibre.com>, 
 "Rafael J. Wysocki" <rafael@kernel.org>, 
 Daniel Lezcano <daniel.lezcano@kernel.org>, Zhang Rui <rui.zhang@intel.com>, 
 Lukasz Luba <lukasz.luba@arm.com>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Kevin Hilman <khilman@baylibre.com>, Jerome Brunet <jbrunet@baylibre.com>, 
 Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Cc: linux-pm@vger.kernel.org, linux-amlogic@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Ronald Claveau <linux-kernel-dev@aliel.fr>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openssh-sha256; t=1776077790; l=3074;
 i=linux-kernel-dev@aliel.fr; s=id_ed25519; h=from:subject:message-id;
 bh=qZ6yxPYtU0rtSpNUw/qC8lVKNvJcNRQzOAUadiZgg5o=;
 b=U1NIU0lHAAAAAQAAADMAAAALc3NoLWVkMjU1MTkAAAAgMGec55oxeeisqykQiUedekMYyOnR9
 BG9E/7rDWyqdNoAAAAGcGF0YXR0AAAAAAAAAAZzaGE1MTIAAABTAAAAC3NzaC1lZDI1NTE5AAAA
 QGupvvaJ2TG99mzpoQ+rKMO2n7roRSOBoul25RSwNN9D0De8UJ7BTxNj92+VXwyx0iYgQfLiNNY
 XSGZsVIDY+Qw=
X-Developer-Key: i=linux-kernel-dev@aliel.fr; a=openssh;
 fpr=SHA256:kch4osYZ6A1BrPps5AUs6KnfdE2wm4ocMtyTc8TmZMs
X-Spamd-Result: default: False [-0.16 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	R_DKIM_ALLOW(-0.20)[aliel.fr:s=courrier-s1];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FREEMAIL_TO(0.00)[baylibre.com,kernel.org,intel.com,arm.com,linaro.org,googlemail.com];
	TAGGED_FROM(0.00)[bounces-286996-lists,devicetree=lfdr.de];
	RCPT_COUNT_TWELVE(0.00)[18];
	DMARC_NA(0.00)[aliel.fr];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[0.0.85.240:email,0.0.39.236:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linux-kernel-dev@aliel.fr,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[aliel.fr:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[9a000:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: CCED73EB191
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Add six temperature sensor nodes using the amlogic,t7-thermal compatible:
a73, a53, gpu, nna, vpu, and hevc. Each sensor retrieves its calibration
data from the secure monitor via the amlogic,secure-monitor phandle with
the corresponding tsensor_id argument.

Signed-off-by: Ronald Claveau <linux-kernel-dev@aliel.fr>
---
 arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi | 58 +++++++++++++++++++++++++++++
 1 file changed, 58 insertions(+)

diff --git a/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi b/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi
index 7aec65f036a9c..62f259b2b17d2 100644
--- a/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi
+++ b/arch/arm64/boot/dts/amlogic/amlogic-t7.dtsi
@@ -656,6 +656,24 @@ sec_ao: ao-secure@10220 {
 				amlogic,has-chip-id;
 			};
 
+			a73_tsensor: temperature-sensor@20000 {
+				compatible = "amlogic,t7-thermal";
+				reg = <0x0 0x20000 0x0 0x50>;
+				interrupts = <GIC_SPI 31 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clkc_periphs CLKID_TS>;
+				#thermal-sensor-cells = <0>;
+				amlogic,secure-monitor = <&sm 1>;
+			};
+
+			a53_tsensor: temperature-sensor@22000 {
+				compatible = "amlogic,t7-thermal";
+				reg = <0x0 0x22000 0x0 0x50>;
+				interrupts = <GIC_SPI 30 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clkc_periphs CLKID_TS>;
+				#thermal-sensor-cells = <0>;
+				amlogic,secure-monitor = <&sm 2>;
+			};
+
 			pwm_ao_ef: pwm@30000 {
 				compatible = "amlogic,t7-pwm", "amlogic,meson-s4-pwm";
 				reg = <0x0 0x30000 0x0 0x24>;
@@ -770,6 +788,46 @@ sd_emmc_c: mmc@8c000 {
 				assigned-clock-parents = <&xtal>;
 				status = "disabled";
 			};
+
+			gpu_tsensor: temperature-sensor@94000 {
+				compatible = "amlogic,t7-thermal";
+				reg = <0x0 0x94000 0x0 0x50>;
+				interrupts = <GIC_SPI 83 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clkc_periphs CLKID_TS>;
+				power-domains = <&pwrc PWRC_T7_MALI_TOP_ID>;
+				#thermal-sensor-cells = <0>;
+				amlogic,secure-monitor = <&sm 3>;
+			};
+
+			nna_tsensor: temperature-sensor@96000 {
+				compatible = "amlogic,t7-thermal";
+				reg = <0x0 0x96000 0x0 0x50>;
+				interrupts = <GIC_SPI 84 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clkc_periphs CLKID_TS>;
+				power-domains = <&pwrc PWRC_T7_NNA_TOP_ID>;
+				#thermal-sensor-cells = <0>;
+				amlogic,secure-monitor = <&sm 4>;
+			};
+
+			vpu_tsensor: temperature-sensor@98000 {
+				compatible = "amlogic,t7-thermal";
+				reg = <0x0 0x98000 0x0 0x50>;
+				interrupts = <GIC_SPI 85 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clkc_periphs CLKID_TS>;
+				power-domains = <&pwrc PWRC_T7_VPU_HDMI_ID>;
+				#thermal-sensor-cells = <0>;
+				amlogic,secure-monitor = <&sm 6>;
+			};
+
+			hevc_tsensor: temperature-sensor@9a000 {
+				compatible = "amlogic,t7-thermal";
+				reg = <0x0 0x9a000 0x0 0x50>;
+				interrupts = <GIC_SPI 86 IRQ_TYPE_LEVEL_HIGH>;
+				clocks = <&clkc_periphs CLKID_TS>;
+				power-domains = <&pwrc PWRC_T7_DOS_HEVC_ID>;
+				#thermal-sensor-cells = <0>;
+				amlogic,secure-monitor = <&sm 5>;
+			};
 		};
 
 	};

-- 
2.49.0


