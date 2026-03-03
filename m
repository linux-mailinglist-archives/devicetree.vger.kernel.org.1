Return-Path: <devicetree+bounces-270328-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6PE9C7eOpmnxRAAAu9opvQ
	(envelope-from <devicetree+bounces-270328-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 08:33:11 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 84E831EA34D
	for <lists+devicetree@lfdr.de>; Tue, 03 Mar 2026 08:33:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 1007A30EA5EF
	for <lists+devicetree@lfdr.de>; Tue,  3 Mar 2026 07:29:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A44F383C71;
	Tue,  3 Mar 2026 07:29:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="klxPeg5E"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77A8A37419A
	for <devicetree@vger.kernel.org>; Tue,  3 Mar 2026 07:29:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772522987; cv=none; b=L9FG9cpHGl9VeX7xCMz9+T6eaLEvouddLs8E5cr8iTfCIopUGhXPI78ThCcLYC3U5v2NV3Zu3Bb/N0IsU0fdT7thbWvp9cmoNcTLy8NRL3HrovQL9AQHhshKku/tXmJ3VO1+gPVwblR3mYD9oUq3Tes6AbXskCRaQk7CqBREtVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772522987; c=relaxed/simple;
	bh=elY+CZyZdiBR2XlC4Wmh1wlATCX04DwIBCppVpV7a+g=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bS80i9o5Uxnd1uDOXL3UyJSMDJWfeT1fiEkZlauXjUVSmJV9C8QX07q5/s7oz5YeymSnblD8QymWToidqfNVCNZVfffEnnhdAJxPaFh7EXkHXEkajTKqaS2lhwOuH3r8uzSVmZY6IKGctBx+TiZDZmUHmp02MJKcurvdw2p4fuM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=klxPeg5E; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 84B56C19425;
	Tue,  3 Mar 2026 07:29:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772522986;
	bh=elY+CZyZdiBR2XlC4Wmh1wlATCX04DwIBCppVpV7a+g=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=klxPeg5Eias12xHchKofvWiQBGdpoHmAstyiuc9UCUy4mUNibX3v1HvMQlDchhoaP
	 n4E1m8EA6hrfVUG+2DLiABSxlag8hAQD6g37N6q/xiPilO2w/9o1KBOwBH7tXgqWLZ
	 ZKbEBdh4AWNKJBlO1DDmXYUIXsXuf7S2MPYLE728rvqrQ1eFaCRov/kxZt9AIPTHi4
	 eeBqIu/CZ2z9UG6HKQpzZSojwVT8cwS7uKRwZo+wDa7ZDIajFRMpgJHZNbrvklabRi
	 k7fYjh7HyZGGWHv9sVSoMlMaw90KJYWUP3CP18cOnh5CMgqa5mukBpFWFKOaM3VRg4
	 vY4TdZ5WK1+sA==
From: Linus Walleij <linusw@kernel.org>
Date: Tue, 03 Mar 2026 08:29:35 +0100
Subject: [PATCH v2 3/8] ARM: dts: gemini: Add SSP/SPI block
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260303-gemini-dts-fixes-v2-3-5b92ced841ce@kernel.org>
References: <20260303-gemini-dts-fixes-v2-0-5b92ced841ce@kernel.org>
In-Reply-To: <20260303-gemini-dts-fixes-v2-0-5b92ced841ce@kernel.org>
To: Hans Ulli Kroll <ulli.kroll@googlemail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 Linus Walleij <linusw@kernel.org>
X-Mailer: b4 0.14.3
X-Rspamd-Queue-Id: 84E831EA34D
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-270328-lists,devicetree=lfdr.de];
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
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	RCPT_COUNT_SEVEN(0.00)[7];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,4a000000:email]
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


