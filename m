Return-Path: <devicetree+bounces-268683-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2HwTKdQLoGnbfQQAu9opvQ
	(envelope-from <devicetree+bounces-268683-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 10:01:08 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 6B1831A30DE
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 10:01:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 061943088EE4
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 08:56:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C91F3396D2C;
	Thu, 26 Feb 2026 08:56:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="pQ7UxviV";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="K3VU5XlM"
X-Original-To: devicetree@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6548D38F22F;
	Thu, 26 Feb 2026 08:56:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772096167; cv=none; b=QeFhhifGaEKdCZFAY9UPHxLM3148SRSdLxc4nB4xuezng45X6aENmYDJYajn4BOLs0B6S1O4puhQ34R2EPryr2n45WiIPRcaxk/aHFVvgZBP2iQTkRXmGAUFnBgRHIprzvT9+mBoKXkJTJ+QxWhiilWxlORikg3UccPkne5XFi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772096167; c=relaxed/simple;
	bh=NuciaL2iHKWVF1yvY35a53EcJyafL6FaQLYCV743U74=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=HO1IP8icRimsvah/ABIiryisGaIhsB4oc7IAQBQ7zXexN90syYhWLDKIjTrQ0Rm19GmOov9cXZ1emun+JrUVi+GN6i0heUPrCNtMV/GhfREvaqjAyiiJcdssZ8faiFkS6I/iapZsMj/uzYva2rOaaPQh+MR3aWjoMhMW458dc74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=pQ7UxviV; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=K3VU5XlM; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
From: Gregor Herburger <gregor.herburger@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1772096165;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=J0aCnSwYvtBeHJ1OOM9Vc+I/4tW0hnZ2TREQUA4zAXs=;
	b=pQ7UxviVlypqRjlqEeDNj3m7BlZYSasMdOs43dosLALx5sF6UIqYjywFswE58fKdwxzW2p
	dUw9zYs5o99nFSxCuSWVl3YadnPR1j6qxOjTnF2+BNWNaaNlOtpj0nDe7g4i4lEAdS6wA4
	H7dXAlVShcbxoBLMduQPFPJwHGw/NjS7Mvq5VefhOe46x/vLXMbRLtiu8YPO90Lf/M5nKo
	NYTeNmUe8TLxitKRssqdWl+T0PaKbL19m+ZmSwmhQ4j07HLmzmQe4D53mfdFWzIOdUkO+1
	AAnsuB/JDwIg6+uyhChpZSTRXmn+cuq7iR/rQYiN1ojZP8ABJEjYWbPPLTrCRQ==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1772096165;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=J0aCnSwYvtBeHJ1OOM9Vc+I/4tW0hnZ2TREQUA4zAXs=;
	b=K3VU5XlM25UnEpiH4P1pkFaDQ5kw4cl9TJEHZOrQoP0eGGNDASuIMPfTo6cLsH/HoBau+K
	O9wGdm/rk7xrjoAw==
Date: Thu, 26 Feb 2026 09:55:57 +0100
Subject: [PATCH 4/6] arm64: dts: broadcom: bcm2712-rpi-5-b: add pinctrl
 properties for csi i2cs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260226-raspi-dts-updates-v1-4-60832d20ff04@linutronix.de>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772096163; l=1219;
 i=gregor.herburger@linutronix.de; s=20260226; h=from:subject:message-id;
 bh=NuciaL2iHKWVF1yvY35a53EcJyafL6FaQLYCV743U74=;
 b=IcWic5/moOTnm8vW7dUP0spg4SX6UDqtJX5NqrGxx6gBy1i3zUzBzkmanQoLNqmXsl/24eox5
 3XaZe+lDIK8DYmsHqLf2ylDNva70W9UA6ha2oR2MaRbqlvRfMtxlEFp
X-Developer-Key: i=gregor.herburger@linutronix.de; a=ed25519;
 pk=u72Lv7+/lS5CC1hmSrb17lv/6CK7HBh4Lvz77PHA5LM=
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[linutronix.de,none];
	R_DKIM_ALLOW(-0.20)[linutronix.de:s=2020,linutronix.de:s=2020e];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-268683-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[linutronix.de:+];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MISSING_XM_UA(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gregor.herburger@linutronix.de,devicetree@vger.kernel.org];
	RSPAMD_EMAILBL_FAIL(0.00)[gregor.herburger.linutronix.de:query timed out];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linutronix.de:mid,linutronix.de:dkim,linutronix.de:email,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 6B1831A30DE
X-Rspamd-Action: no action

Configure the i2c pins for the csi interfaces as i2c.

Signed-off-by: Gregor Herburger <gregor.herburger@linutronix.de>
---
 arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts | 24 ++++++++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts
index 28560828144622622e610db12fbacbf1a6b7267a..0fc57e72632edca4686a859520a0dce7ff112f06 100644
--- a/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts
+++ b/arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts
@@ -68,6 +68,30 @@ usb_vbus_default_state: usb-vbus-default-state {
 		function = "vbus1";
 		groups = "vbus1";
 	};
+
+	rp1_i2c4_default_state: rp1-i2c4-default-state {
+		function = "i2c4";
+		groups = "i2c4_2";
+		drive-strength = <12>;
+		bias-pull-up;
+	};
+
+	rp1_i2c6_default_state: rp1-i2c6-default-state {
+		function = "i2c6";
+		groups = "i2c6_0";
+		drive-strength = <12>;
+		bias-pull-up;
+	};
+};
+
+&rp1_i2c4 {
+	pinctrl-0 = <&rp1_i2c4_default_state>;
+	pinctrl-names = "default";
+};
+
+&rp1_i2c6 {
+	pinctrl-0 = <&rp1_i2c6_default_state>;
+	pinctrl-names = "default";
 };
 
 &rp1_usb0 {

-- 
2.47.3


