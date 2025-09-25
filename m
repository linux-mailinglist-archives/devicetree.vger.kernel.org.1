Return-Path: <devicetree+bounces-221316-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id BD1C8B9E716
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 11:40:38 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 54C6D3B2C04
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 09:40:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 204682EA157;
	Thu, 25 Sep 2025 09:40:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b="DENqiGmI"
X-Original-To: devicetree@vger.kernel.org
Received: from mail.zeus03.de (zeus03.de [194.117.254.33])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26AFE27A123
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 09:40:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=194.117.254.33
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758793229; cv=none; b=k73bnJ81ysWek+TOQLx44OEQAJZ+sZIM74Z8ECBO8zpzIUl57J+ovpU6svik0/TOwKJHPPRKFQvuNYvrvyfUo8kjHa9UQebBz/t1tGd0IuiF20mMbofy/4RxaRPc2Y3CgrTx1XG+tqhtSsaVG2wTO7FkOo//V+/zaXILwKAxiH0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758793229; c=relaxed/simple;
	bh=GOOW/d/ss8up/fz43pypDl4Y02NWzBsQZ6XqY2/VBCE=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=kHsrt9LtHSoDcZIInlrsXV2JjqdYlskDNYV6XpmJL2Xp0nh0zNoEdem87Sho9xFcYv7CUc8Ow4jcN6kWEh6TfDek54iiLfmdPcCRM8Dtr5d5tHBkOMa4sVBxDZ5Y+XTl2sW0nD/93emrGXv7szfyd+6fVMW42my3k60ugdRPZ8w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com; spf=pass smtp.mailfrom=sang-engineering.com; dkim=pass (2048-bit key) header.d=sang-engineering.com header.i=@sang-engineering.com header.b=DENqiGmI; arc=none smtp.client-ip=194.117.254.33
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=sang-engineering.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sang-engineering.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	sang-engineering.com; h=from:to:cc:subject:date:message-id
	:in-reply-to:references:mime-version:content-transfer-encoding;
	 s=k1; bh=tAQzM1sJbeBSeptPyMrJdNzl+tol7KBGvjuoPdcZrVc=; b=DENqiG
	mIIIfLMvTnGyErpv+Yd1sMh9xrwnpWl35zO1njCrje/4x9+uqE8z8w7AMPLUMk8W
	Q0g0tEwgJT4Vvdg7upicYeps6hWLoyFHA0SiNC772/vs6e1I470egH7/FD6Y6pWx
	OcmBEoJSYSn1HO4bGANM/i98z57WP+eBssHKya2xrmBJOJ4wYi40UWMdz8v9heWi
	wGx1F06lxNIZPgAATAcNT9KzoCYdiZ6EPf1oglhh5YgsDDl+zwuQwYPT2Wfuu8Ut
	+8V7M7LroFEGFO5NlcZkt0G4cjfThG+QzG5lUiCwR0jeozUFH6syDeZ2UIqtiEOf
	CB6xGjis9Mj52JBg==
Received: (qmail 1813355 invoked from network); 25 Sep 2025 11:40:21 +0200
Received: by mail.zeus03.de with UTF8SMTPSA (TLS_AES_256_GCM_SHA384 encrypted, authenticated); 25 Sep 2025 11:40:21 +0200
X-UD-Smtp-Session: l3s3148p1@z+os9Zw/WJcgAwDPXwQHAL/S9V79e5yL
From: Wolfram Sang <wsa+renesas@sang-engineering.com>
To: linux-renesas-soc@vger.kernel.org
Cc: Wolfram Sang <wsa+renesas@sang-engineering.com>,
	Geert Uytterhoeven <geert+renesas@glider.be>,
	Magnus Damm <magnus.damm@gmail.com>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org
Subject: [PATCH 09/12] arm64: dts: renesas: ulcb: mark SWDT as reserved
Date: Thu, 25 Sep 2025 11:39:48 +0200
Message-ID: <20250925093941.8800-23-wsa+renesas@sang-engineering.com>
X-Mailer: git-send-email 2.47.2
In-Reply-To: <20250925093941.8800-14-wsa+renesas@sang-engineering.com>
References: <20250925093941.8800-14-wsa+renesas@sang-engineering.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This watchdog can't be used with Linux because the firmware needs it on
ULCB boards. Sadly, it doesn't mark the node as reserved, so this is
added manually here.

Signed-off-by: Wolfram Sang <wsa+renesas@sang-engineering.com>
---
 arch/arm64/boot/dts/renesas/ulcb.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/ulcb.dtsi b/arch/arm64/boot/dts/renesas/ulcb.dtsi
index 8a30908992ab..a9e53b36f1d9 100644
--- a/arch/arm64/boot/dts/renesas/ulcb.dtsi
+++ b/arch/arm64/boot/dts/renesas/ulcb.dtsi
@@ -495,6 +495,11 @@ &ssi1 {
 	shared-pin;
 };
 
+/* Firmware should reserve it but sadly doesn't */
+&swdt {
+	status = "reserved";
+};
+
 &usb2_phy1 {
 	pinctrl-0 = <&usb1_pins>;
 	pinctrl-names = "default";
-- 
2.47.2


