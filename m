Return-Path: <devicetree+bounces-268685-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kHLbK+oKoGnbfQQAu9opvQ
	(envelope-from <devicetree+bounces-268685-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 09:57:14 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EA6B1A3018
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 09:57:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 0CDCD30427DC
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 08:56:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8EEA339B4A1;
	Thu, 26 Feb 2026 08:56:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="Y5sK6CyD";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="/Mz9Lnc0"
X-Original-To: devicetree@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36CDB399014;
	Thu, 26 Feb 2026 08:56:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772096169; cv=none; b=Tm9HJHWKwt5VzGZk1i27W+E7EoqlvcV8z1wHi5BXhRN/0d0YQTsNfYwTMH7FH9un+ooFRcJuY90QlYVKvMVosvLvr2E14RgKLXxAQWDlr+ufNXR6nvyG5OCfGLFE9EJ0IyO83edwLdzQ8GAFoOAZxDvJ7oKrCrAXAoV6s4k69TA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772096169; c=relaxed/simple;
	bh=w3z827DNeO0A917F14eA+A+AUaCDldw+7e7KliQFsKM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=SFfia5sIQxO5fQh/7Pm2pDgx/TFVjbiEQQlHHXCz4InMIyopgVxixjh9CcNRAm2h/bPZ9LtymhyRBt6j9uIPs+yzezuSoF4aHeENGPhkOn8mQtT2aOyQIQHNixGBYr5sXhyWLLYZAKQtVHqwbqH4eS6CcD7wwRZXAge+OvzbxqQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=Y5sK6CyD; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=/Mz9Lnc0; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
From: Gregor Herburger <gregor.herburger@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1772096165;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=vFD6FKSmgk3jLQFpWqZllRzrzjFOnCiWATF9H9ooJ8g=;
	b=Y5sK6CyDltzCGResbfII+m4kdyN3/pmxSBPf87QKtZx1DfZvXipLFtg/9PMs1x1a4lXFR6
	wSTpJ6NPLRnDeHn79b+3drDU60sckXxfxePZFOIFqe5vAe9Sr3EB00kUkLJSESjNlOV9V3
	bNAze6/52NmeWaXU08IMgIPa7zrWK+EIkZ4oK+9BQ4+eyS6qSpPya18k/TsjYF+IJz+4EN
	DvJgVkWsb1/L+nxJ26W4ifVzwZnhl1A5WcJr0C/Rb1bHDVviPB1plMg7zVLXX8je9nCBWx
	D+rv3Ai81sQzQznNoBJAZFKaGmxK5ptoS32PlaEi9eKCo2A5y9U9udPUDIPYLg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1772096165;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=vFD6FKSmgk3jLQFpWqZllRzrzjFOnCiWATF9H9ooJ8g=;
	b=/Mz9Lnc0sCftKzGloyOpSG1+oN1m66fgeI2Ich334+pRFU28RpcGZ5YjGBMqGc4/zNFBZ/
	D9XCMm1cm0baSMAw==
Date: Thu, 26 Feb 2026 09:55:58 +0100
Subject: [PATCH 5/6] arm64: dts: broadcom: bcm2712-d-rpi-5-b: add fixes for
 pinctrl/pinctrl_aon
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260226-raspi-dts-updates-v1-5-60832d20ff04@linutronix.de>
References: <20260226-raspi-dts-updates-v1-0-60832d20ff04@linutronix.de>
In-Reply-To: <20260226-raspi-dts-updates-v1-0-60832d20ff04@linutronix.de>
To: Andrea della Porta <andrea.porta@suse.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 Gregor Herburger <gregor.herburger@linutronix.de>
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772096163; l=1063;
 i=gregor.herburger@linutronix.de; s=20260226; h=from:subject:message-id;
 bh=w3z827DNeO0A917F14eA+A+AUaCDldw+7e7KliQFsKM=;
 b=qWeapWZ/I1Z4vsMJd65W9yTlQAgBPuvKuGZnHBfFz2MKiggvyIj15aHLlWGYdJ3HPJwaHSUgI
 o0hmhsP2MgMCPXahw3KEHaDtjsnDo/TdOx1WD4xfpvy70S1ZPwEQ0Hc
X-Developer-Key: i=gregor.herburger@linutronix.de; a=ed25519;
 pk=u72Lv7+/lS5CC1hmSrb17lv/6CK7HBh4Lvz77PHA5LM=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linutronix.de,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[linutronix.de:s=2020,linutronix.de:s=2020e];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268685-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[linutronix.de:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gregor.herburger@linutronix.de,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linutronix.de:mid,linutronix.de:dkim,linutronix.de:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 5EA6B1A3018
X-Rspamd-Action: no action

On the -d revision of the bcm2712 the pinctrl differs from the c0
revision. The driver already supports both and distinguishes the two
with the compatible string.

Update the compatible string and reg length to reflect the different
pinctrl.

Signed-off-by: Gregor Herburger <gregor.herburger@linutronix.de>
---
 arch/arm64/boot/dts/broadcom/bcm2712-d-rpi-5-b.dts | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/arch/arm64/boot/dts/broadcom/bcm2712-d-rpi-5-b.dts b/arch/arm64/boot/dts/broadcom/bcm2712-d-rpi-5-b.dts
index 7de24d60bcd1a7273ecc4eb814694183bb41c624..cbfc82d884c8268624682e9a49bda1feae34cbed 100644
--- a/arch/arm64/boot/dts/broadcom/bcm2712-d-rpi-5-b.dts
+++ b/arch/arm64/boot/dts/broadcom/bcm2712-d-rpi-5-b.dts
@@ -35,3 +35,13 @@ &gio_aon {
 		"PMIC_SCL", // AON_SGPIO_04
 		"PMIC_SDA"; // AON_SGPIO_05
 };
+
+&pinctrl {
+	compatible = "brcm,bcm2712d0-pinctrl";
+	reg = <0x7d504100 0x20>;
+};
+
+&pinctrl_aon {
+	compatible = "brcm,bcm2712d0-aon-pinctrl";
+	reg = <0x7d510700 0x1c>;
+};

-- 
2.47.3


