Return-Path: <devicetree+bounces-269455-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6PhpAGcxomke0wQAu9opvQ
	(envelope-from <devicetree+bounces-269455-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 01:05:59 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 73A491BF51C
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 01:05:58 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 0B866304F4AD
	for <lists+devicetree@lfdr.de>; Sat, 28 Feb 2026 00:05:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A790A1386C9;
	Sat, 28 Feb 2026 00:05:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ahh+Enrr"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80EC886277
	for <devicetree@vger.kernel.org>; Sat, 28 Feb 2026 00:05:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772237152; cv=none; b=BZg5zVZFwrbgro7cpKlTSpmEuDjRzsmAIVVGaEGj+mHjdKmyijbw1ZG6vqgZp01W7arIswbJ7xDBEhyEOL/K+NYqB+i0rWoRdnb0YVSxBy14v6315vHtiLBlQOJowWY/v/swkNqv/c0l+Rv+2Gu673Hc+KGWfe9Pb+w05h2jQGo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772237152; c=relaxed/simple;
	bh=elY+CZyZdiBR2XlC4Wmh1wlATCX04DwIBCppVpV7a+g=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=lNWNhNkbDqfbuNy1SVRdUMzytiKHIzkHNzW5TMcAoCdnpTYlh61yxdO7ZXcknBvilfqzho/lq9Sb38Ok9McZTFK4aV9m5n8KUY6lAbvDzb8nEMpjIc3nnUhk6nu1UOcQYGUU1cEeqfimwNC7ayd696eTvlx+uUAYxWdu/0+YYq4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ahh+Enrr; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 1034BC116C6;
	Sat, 28 Feb 2026 00:05:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772237152;
	bh=elY+CZyZdiBR2XlC4Wmh1wlATCX04DwIBCppVpV7a+g=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=Ahh+EnrrDUNaqs5JvkK4I8eVXCaKWn0fSQTnqW0UwK1fB+kg2oc3OaCFMtt/C4O8N
	 EY0vWd+wLtGaFQsiUgP1o9VhbYHH8JoTBmySMRO8uPMN4FilP3FzW5SiqNKDg7NQG4
	 Z1m6+N4nVyE8VT+SrCmnHRLP8ZDW4xgwvVr62uAp4VXiVd1PQfwKVT4HXCe5QRKU5B
	 xyY0rhL9+dGnIzadHdBHcKSapDvul+ITxybJFU8qTf7KGJhcs/sqkELnSkzbYPiIM0
	 aDryaRNiJHZC+wxUHRFEACdzpkSHIik36EbmAVO0EoS8+kjXVLCXdtr5dV5EGmkgmH
	 mvBVrTAjPDy9A==
From: Linus Walleij <linusw@kernel.org>
Date: Sat, 28 Feb 2026 01:05:43 +0100
Subject: [PATCH 3/8] ARM: dts: gemini: Add SSP/SPI block
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260228-gemini-dts-fixes-v1-3-0c6f6d0fb4bd@kernel.org>
References: <20260228-gemini-dts-fixes-v1-0-0c6f6d0fb4bd@kernel.org>
In-Reply-To: <20260228-gemini-dts-fixes-v1-0-0c6f6d0fb4bd@kernel.org>
To: Hans Ulli Kroll <ulli.kroll@googlemail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 Linus Walleij <linusw@kernel.org>
X-Mailer: b4 0.14.3
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269455-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FREEMAIL_TO(0.00)[googlemail.com,kernel.org];
	DKIM_TRACE(0.00)[kernel.org:+];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	TO_DN_SOME(0.00)[];
	DBL_PROHIBIT(0.00)[2.220.108.0:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[linusw@kernel.org,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 73A491BF51C
X-Rspamd-Action: no action

Add the SSP/SPI block to the Gemini device tree.

Signed-off-by: Linus Walleij <linusw@kernel.org>
---
 arch/arm/boot/dts/gemini/gemini.dtsi | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/arch/arm/boot/dts/gemini/gemini.dtsi b/arch/arm/boot/dts/gemini/gemini.dtsi
index befe322bd7de..23e68e17ffbb 100644
--- a/arch/arm/boot/dts/gemini/gemini.dtsi
+++ b/arch/arm/boot/dts/gemini/gemini.dtsi
@@ -61,6 +61,12 @@ mux {
 						groups = "rtcgrp";
 					};
 				};
+				ssp_default_pins: pinctrl-ssp {
+					mux {
+						function = "ssp";
+						groups = "sspgrp";
+					};
+				};
 				power_default_pins: pinctrl-power {
 					mux {
 						function = "power";
@@ -228,6 +234,17 @@ intcon: interrupt-controller@48000000 {
 			#interrupt-cells = <2>;
 		};
 
+		spi@4a000000 {
+			compatible = "faraday,ftssp010";
+			#address-cells = <1>;
+			#size-cells = <0>;
+			reg = <0x4a000000 0x100>;
+			interrupts = <21 IRQ_TYPE_LEVEL_HIGH>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&ssp_default_pins>;
+			status = "disabled";
+		};
+
 		power-controller@4b000000 {
 			compatible = "cortina,gemini-power-controller";
 			reg = <0x4b000000 0x100>;

-- 
2.53.0


