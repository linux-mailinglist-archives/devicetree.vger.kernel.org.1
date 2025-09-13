Return-Path: <devicetree+bounces-216850-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 886BCB563DC
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 01:59:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 4DCCC17C5E3
	for <lists+devicetree@lfdr.de>; Sat, 13 Sep 2025 23:59:23 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A18B2D29C3;
	Sat, 13 Sep 2025 23:57:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b="ZPbBYRjI"
X-Original-To: devicetree@vger.kernel.org
Received: from out-172.mta1.migadu.com (out-172.mta1.migadu.com [95.215.58.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E8E422C1590
	for <devicetree@vger.kernel.org>; Sat, 13 Sep 2025 23:57:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=95.215.58.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757807870; cv=none; b=FHE6j5cSVR8s1FjIHvVtEsqC5imc8it7RNYlaT5YDB6D1DpoyYgzqbkXWR88H9PB6WEf+T1iRLVKy4rgMpY87apPWmC22imWmVv3aBYMf+7dbs3R12ntQeVdTsI/Py7zMUXdnIYTZtNqs+d2g+y+l4wHYaNbCyJzMrjozWMBEWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757807870; c=relaxed/simple;
	bh=nc3KwC99PQpwiEvMm3m99tdXfMWVJFmazLtTj4VXfoA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=R9p1Fu/YDIScH6cuZmFRFFHw62bV8itYIg4KlhrlZ5ca8rKBKnqIQdns9gfFAhveHH2G840YKNsH8P7zpiLABWqV+AUCCllNT9ZZSwbtNQtSjAfiStlrHrEZnUp0GUojfdy1I72R1QXWsR8r49hbShgfVjXhC5A7NWMSEEXRQT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org; spf=pass smtp.mailfrom=postmarketos.org; dkim=pass (2048-bit key) header.d=postmarketos.org header.i=@postmarketos.org header.b=ZPbBYRjI; arc=none smtp.client-ip=95.215.58.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=postmarketos.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=postmarketos.org
X-Report-Abuse: Please report any abuse attempt to abuse@migadu.com and include these headers.
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=postmarketos.org;
	s=key1; t=1757807865;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Pz0bVOlJENyckv6F1/kIhYXCcAwo1ST7820qsrcK3PM=;
	b=ZPbBYRjId6dk12G/xo5VSRuVk4k2VoOoZYLbxx5OLWJwNsJ5v0AQC1vo8K0QV3mShGyWMV
	59oirL6mzQa0irPJ+0MYYfLUgDqxCt1N/N0LOcWwh30lwAAV71nXvrzgctmJoul/lAZ0FB
	Wtbj87SNAS6IOewXhon/s5xQ5TkfUWXZwIepzNB65UOZTYPWgH7QswHbZzAXFLaM/hIBp1
	Mt0BxpuT/B3HmO1Co0d4ViMH6faWd1uCkswpSljfxO/fB+03P6zNh7BAMeJyNLhQs7QjyC
	rwW5zsCb9qv7h9o+kyxVmpKhQWGpxdfwxwEiRt2CXDW6v/lYOrEJ/rrgvccIvA==
From: Paul Sajna <sajattack@postmarketos.org>
Date: Sat, 13 Sep 2025 16:56:41 -0700
Subject: [PATCH 08/11] arm64: dts: qcom: sdm845-lg-common: Add qcom id
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250913-judyln-dts-v1-8-23b4b7790dce@postmarketos.org>
References: <20250913-judyln-dts-v1-0-23b4b7790dce@postmarketos.org>
In-Reply-To: <20250913-judyln-dts-v1-0-23b4b7790dce@postmarketos.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, David Heidelberg <david@ixit.cz>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Amir Dahan <system64fumo@protonmail.com>, 
 Christopher Brown <crispybrown@gmail.com>, 
 Paul Sajna <sajattack@postmarketos.org>
X-Developer-Signature: v=1; a=ed25519-sha256; t=1757807839; l=1485;
 i=sajattack@postmarketos.org; s=20250422; h=from:subject:message-id;
 bh=nc3KwC99PQpwiEvMm3m99tdXfMWVJFmazLtTj4VXfoA=;
 b=rjlc1+08+7gVXG4vt1ShKeDW4/09CIRNia0v6BuDC2se0k6X93RMYVJtxyD6capLsYD24hwYg
 6LeIhqzH+7SAJ2VV1kpG0LIpJqIZhe3ez/Vr125dOSRorzxjuA6Az9x
X-Developer-Key: i=sajattack@postmarketos.org; a=ed25519;
 pk=TwacvEOiRJ2P2oAdEqIDrtQTL18QS4FfcHfP/zNsxkQ=
X-Migadu-Flow: FLOW_OUT

SDM845 msm-id and board-id added

Signed-off-by: Paul Sajna <sajattack@postmarketos.org>
---
 arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi | 3 +++
 arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts  | 1 +
 2 files changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi b/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi
index cc1c78162eedd50d30a70810ac3790efe6c0492f..3853f0e5d89ca87b6fe7882e50ab9421a42efb0d 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845-lg-common.dtsi
@@ -5,6 +5,7 @@
  * Copyright (c) 2022, The Linux Foundation. All rights reserved.
  */
 
+#include <dt-bindings/arm/qcom,ids.h>
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/leds/common.h>
 #include <dt-bindings/pinctrl/qcom,pmic-gpio.h>
@@ -28,6 +29,8 @@
 /delete-node/ &wlan_msa_mem;
 
 / {
+	qcom,msm-id = <QCOM_ID_SDM845 0x20001>;
+
 	chosen {
 		#address-cells = <2>;
 		#size-cells = <2>;
diff --git a/arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts b/arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts
index 1596a3408659323d60f1b7c395098ed628782dfa..467aa0fd0ef3938e4a8c08b2240d4dca2f74dbcd 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-lg-judyln.dts
@@ -12,6 +12,7 @@
 / {
 	model = "LG G7 ThinQ";
 	compatible = "lg,judyln", "qcom,sdm845";
+	qcom,board-id = <0x020C0008 0>;
 
 	chosen {
 		framebuffer@9d400000 {

-- 
2.51.0


