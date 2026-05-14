Return-Path: <devicetree+bounces-297655-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qNktCmfkBWoAdQIAu9opvQ
	(envelope-from <devicetree+bounces-297655-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 17:04:07 +0200
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 9AF7D543B12
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 17:04:06 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id AD2E130B59F5
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2026 14:57:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6BA89425CE1;
	Thu, 14 May 2026 14:57:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b="EDgCc6gi"
X-Original-To: devicetree@vger.kernel.org
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE72B410D1F;
	Thu, 14 May 2026 14:57:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=213.167.242.64
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778770635; cv=none; b=JeEOwlqzZ34obSINzSUPjTvt1NbC+Z+Jk7M+ybCqcfQUwbqhL5rj48WfDoU/JSrCbDbxeCVdds5tR13dB059yHTe9O2HxPwXWrRe3BiivYAamDzY/2w95hXZxHJHrdaRhO/vqXcyNN1JzimSEEgJzniY1cWeKWUnJjpEl/MWbuQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778770635; c=relaxed/simple;
	bh=p5dIUacsdc61vj2qf0gBR53uOK91lDwLXjQqK5PFL8Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=VjoWR7pHTUMP26zmoaUGAFJbceuYj+2/7GuxUzzMbNYVoI+iatPY5SyUOfWimxX3cyp3Z9pRhs0HjvhwVINwQarHbOZKF6O5tDnr7dZ9pdPxcD8vFZzPcaNOtOoM4WS5NIqCLBTXnQrA43mPtPs5Dy7n13LQ25vnsxFrP+AhI0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com; spf=pass smtp.mailfrom=ideasonboard.com; dkim=pass (1024-bit key) header.d=ideasonboard.com header.i=@ideasonboard.com header.b=EDgCc6gi; arc=none smtp.client-ip=213.167.242.64
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=ideasonboard.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ideasonboard.com
Received: from mail.ideasonboard.com (unknown [IPv6:2401:4900:1c69:1da4:3c70:f102:9ea:5df7])
	by perceval.ideasonboard.com (Postfix) with ESMTPSA id F13D9D7E;
	Thu, 14 May 2026 16:57:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
	s=mail; t=1778770622;
	bh=p5dIUacsdc61vj2qf0gBR53uOK91lDwLXjQqK5PFL8Q=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=EDgCc6giUGl9V07YHGKxWVXC0kBPZjbZX6VElrSFLp/PMfT9Xy+4GAQsZakVYf6sN
	 UgaKTNnoZDV7BHe6B4J3rxyXH5xb9yuKJpB1YS6FEJ6zkIgo+sX/HZGpczSVx97A2P
	 IZXWq2vyPY1T3FkqoOHwM+Ayq+474QbCDYno0Jv4=
From: Jai Luthra <jai.luthra@ideasonboard.com>
Date: Thu, 14 May 2026 20:26:27 +0530
Subject: [PATCH 1/4] arm64: dts: ti: k3-am67a-beagley-ai: Add I2C2 pinctrl
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260514-beagley-cameras-v1-1-5c3500b5a436@ideasonboard.com>
References: <20260514-beagley-cameras-v1-0-5c3500b5a436@ideasonboard.com>
In-Reply-To: <20260514-beagley-cameras-v1-0-5c3500b5a436@ideasonboard.com>
To: Nishanth Menon <nm@ti.com>, Vignesh Raghavendra <vigneshr@ti.com>, 
 Tero Kristo <kristo@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: Robert Nelson <robertcnelson@gmail.com>, Andrew Davis <afd@ti.com>, 
 Devarsh Thakkar <devarsht@ti.com>, 
 Tomi Valkeinen <tomi.valkeinen@ideasonboard.com>, 
 linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Jai Luthra <jai.luthra@ideasonboard.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1102;
 i=jai.luthra@ideasonboard.com; h=from:subject:message-id;
 bh=p5dIUacsdc61vj2qf0gBR53uOK91lDwLXjQqK5PFL8Q=;
 b=owEBbQKS/ZANAwAKAUPekfkkmnFFAcsmYgBqBeK4EbMrywm3O05+gaKttVqYSd6KiUsxAGrOS
 CCz4G2U3BWJAjMEAAEKAB0WIQRN4NgY5dV16NRar8VD3pH5JJpxRQUCagXiuAAKCRBD3pH5JJpx
 RSdkD/0d88493PAbF6uA7hyDP0EyY04m1hXO7O1MPdOD6/rVcf82s1+7nnXEOQ1ywTh6ZeywKXl
 OA1jToXhcF4mkCayG1XRI+xzt9at7E4e+NLVPf3iLfZXLsjSb8mhUDuDn12WzbdoXn1AUo/aeXP
 zBQccdOHJtjiqHkfjk32Sl+njSe4SIGprvOqCmcOj1TI6wqKk7mCBZ07plWltTCr1cE+phToirq
 akYgcZNXX4YxfkuJU5JSl7o7VG79BxWD+fgws9Dfqjx6XyHHPtJ/pTpUSAwCuaruApeDDa+KrEW
 QVfb5W4cSnDHyrVbna4oQFdhRLT87sGV01GqHjoBudssv65R4TR98WNQ50akgsOOK9NeRQj+S5Q
 comRMWaBLjYGc33ZOVRufAt0Isi5K1cdK2D4ieG31Ln7arlnWlnQYqjGr8yFIQrMswM/8PwfJlB
 ewUgezNTpw0Kk0uyN+BM31e/Ws4vzgMERV4EjqW8RFFu2PMLOunjQrrPLKbHptpVkoviCxT+c6q
 wuHc1lx1N/FL1hLULHqJn1rp+/DXZ8auSJW5ZmDXESv/YkOxfGv9+tKwvXJYhrt+EcO001JXFDz
 HrjTYjmigbmR3fVHAYIYwLjrhB36lW8gG+LcZuXhrUFBNF1i8tWgU+nq1APEbjpyWEU93/5ZegV
 hZU4OInG3TWi1UA==
X-Developer-Key: i=jai.luthra@ideasonboard.com; a=openpgp;
 fpr=4DE0D818E5D575E8D45AAFC543DE91F9249A7145
X-Rspamd-Queue-Id: 9AF7D543B12
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[ideasonboard.com,none];
	R_DKIM_ALLOW(-0.20)[ideasonboard.com:s=mail];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-297655-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	RCVD_COUNT_THREE(0.00)[4];
	FORGED_SENDER_MAILLIST(0.00)[];
	FREEMAIL_CC(0.00)[gmail.com,ti.com,ideasonboard.com,lists.infradead.org,vger.kernel.org];
	RCPT_COUNT_TWELVE(0.00)[14];
	MIME_TRACE(0.00)[0:+];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[jai.luthra@ideasonboard.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[ideasonboard.com:+];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,ideasonboard.com:email,ideasonboard.com:mid,ideasonboard.com:dkim]
X-Rspamd-Action: no action

I2C2 is used by camera sensor devices connected on the 22-pin CSI0
connector. Add the pin definition here so I2C2 may be enabled by the
camera sensor overlays.

Signed-off-by: Jai Luthra <jai.luthra@ideasonboard.com>
---
 arch/arm64/boot/dts/ti/k3-am67a-beagley-ai.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am67a-beagley-ai.dts b/arch/arm64/boot/dts/ti/k3-am67a-beagley-ai.dts
index 5255e04b9ac7..06aac02a7668 100644
--- a/arch/arm64/boot/dts/ti/k3-am67a-beagley-ai.dts
+++ b/arch/arm64/boot/dts/ti/k3-am67a-beagley-ai.dts
@@ -157,6 +157,13 @@ J722S_IOPAD(0x01e4, PIN_INPUT_PULLUP, 0) /* (B22) I2C0_SDA */
 		bootph-all;
 	};
 
+	main_i2c2_pins_default: main-i2c2-default-pins {
+		pinctrl-single,pins = <
+			J722S_IOPAD(0x00b0, PIN_INPUT_PULLUP, 1) /* (P22) GPMC0_CSn2.I2C2_SCL */
+			J722S_IOPAD(0x00b4, PIN_INPUT_PULLUP, 1) /* (P23) GPMC0_CSn3.I2C2_SDA */
+		>;
+	};
+
 	main_uart0_pins_default: main-uart0-default-pins {
 		pinctrl-single,pins = <
 			J722S_IOPAD(0x01c8, PIN_INPUT, 0)	/* (A22) UART0_RXD */

-- 
2.54.0


