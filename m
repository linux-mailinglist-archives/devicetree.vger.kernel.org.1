Return-Path: <devicetree+bounces-269733-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id eKUqIdBhpGnIfAUAu9opvQ
	(envelope-from <devicetree+bounces-269733-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 16:57:04 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C3A511D0807
	for <lists+devicetree@lfdr.de>; Sun, 01 Mar 2026 16:57:03 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 018713037EC6
	for <lists+devicetree@lfdr.de>; Sun,  1 Mar 2026 15:54:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AAB1530F541;
	Sun,  1 Mar 2026 15:54:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FVyxEr6p"
X-Original-To: devicetree@vger.kernel.org
Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85F1922A4F1;
	Sun,  1 Mar 2026 15:54:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772380486; cv=none; b=dMDhT3PzJxUGckUjsK8KUuaYVWnmQTA3bLr/4r8S3xnbahbsIEjgeF7w84AamLzR4FBVgs86hnWk+qL5VrP4ctqKEKzsghoQ93C69mLMBHMNrzvgGDrWOa1h2Hw7kxk+kBoJiQjOERcXZJ4n40HoS4WmZeF0mxTT8y3z26FPBSU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772380486; c=relaxed/simple;
	bh=2uJe2sUo2oqiPNZ7lC5cwtsfYp+C4N7Y/V1qMpOAXXQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=DpxNohIP+92ThdqV8/S99SCBkYL/J5oRW+xt93K6S7f4EmcqvOqXLw5/MKHy9hNOb97+GAdo9Pjq84g7urRU9fUr0VANbezEmzVEm/7xVbIWvGAKYmWjMGb2ZbNWf58lAPXXOQ2/+LobAhsSSQSN+XAw6EDlzQBSXfQgTmkmXLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FVyxEr6p; arc=none smtp.client-ip=10.30.226.201
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0B549C116C6;
	Sun,  1 Mar 2026 15:54:46 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772380486;
	bh=2uJe2sUo2oqiPNZ7lC5cwtsfYp+C4N7Y/V1qMpOAXXQ=;
	h=From:Date:Subject:To:Cc:Reply-To:From;
	b=FVyxEr6p37mXHJG7Ulxjt04a2hbYT1R4n6PNPAOdR7T0Ws0goKdjEp1cjBhNlndh7
	 mj1PdCo5yKE03xI7erKKs+a8m7WAgfupiRhVk7cJF95CxNzrKr0ZBW1Kwh48oDMtvC
	 pWz+cCfvOtTdHIZ/HNXrFdajfFOCMasbxeIiuKt6I8xP3t6jKfurN4WQ9xLq613fQ3
	 PQXS0fQftIUIM5rk/MQjHBprEQdtHIlmAHLbD7NGlfmx5ICvqeJy6YCSwKR8Vlx3G8
	 gmEiudZ7lzDW1nRgLSGsI5jbnwe/kzlcwEoCYX4WbEZl1ag+QZdMngBB5iBT2GxhCR
	 05odGvMmQmrRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id F2DBBFD0058;
	Sun,  1 Mar 2026 15:54:45 +0000 (UTC)
From: David Heidelberg via B4 Relay <devnull+david.ixit.cz@kernel.org>
Date: Sun, 01 Mar 2026 16:54:41 +0100
Subject: [PATCH] arm64: dts: rockchip: Fix PCIe v3 pinctrl for BPI-R2-Pro
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260301-rk3568-bri-r2-pro-fix-pcie-v1-1-b9ed318b4a77@ixit.cz>
X-B4-Tracking: v=1; b=H4sIAEBhpGkC/x3MQQqAMAwAwa9IzgZipEX8inhQGzUIWlIQofh3i
 8dhYTMkMZUEfZXB5Nak11nQ1BUs+3RughqKgYk9MTPa0Trf4WyKxhjtwlUfjIsKts7NxBQCBYY
 yiCal/fNhfN8POnPaC2wAAAA=
X-Change-ID: 20260222-rk3568-bri-r2-pro-fix-pcie-355b020dd0d2
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org, 
 Martin Filla <freebsd@sysctl.cz>, David Heidelberg <david@ixit.cz>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1564; i=david@ixit.cz;
 h=from:subject:message-id;
 bh=hKBdwEW8s0wqw58AWppcp4beoynxrSnUvu08wYJII6o=;
 b=owEBbQKS/ZANAwAIAWACP8TTSSByAcsmYgBppGFF+OKscrXtUKPDUFx1VkK4u15AJq+eTA10S
 HKh+d13akmJAjMEAAEIAB0WIQTXegnP7twrvVOnBHRgAj/E00kgcgUCaaRhRQAKCRBgAj/E00kg
 crgaD/0VyX+botSQ88NN25oGRqXJmjFf1KShvyRNvpP5FgOhaNsL4szbYoAHmGY+XZ6rpYSDH3g
 4kwvPSHs7tZOACQoo1BhoF1l13hSbwD5ChdL2OKLKbHX/aJHzU2YK//zIqG5MyfoyMZ4XGWVrvd
 3DQdQyHQP7NWWBai8F0IJaiumCNiF7PzbfHCXv81RL+mbREWsSFtNecbhzr46Vb3ezFXlYOyveX
 /7e+gHe16CmitpIEsLPAk3fIOQl2rPBjR/nXWL8HwQYiaz7pZsN/2oC9EltxfjY9TipRzxSLL2k
 CLC1p3pOFZHBaLJO3AAv1ubptvG3hoYhvFOKutvFW2Vn5ZpVHTZhYsZ/vxieBB8k7UN7p0sdeeU
 JXOOeDQd5E4zDESzi98nciwYVgN/wq3IaeqvR9hxc71gSNaY1pefyU+iXAMX8X92iXGApDOUCyQ
 veRuSw/m6r8mpoFfhp2+FKBARLPUFhgZ7Sf1Uzr8Q+HIBAy7mfkBs5EGGUxKfEotEH2DSTdy5By
 06dol0CN9ASQt7KoS39noEQ0cKHOC8g87uv7giI5fG8sfF9p4C/oFrfCUhFW+g32lwzG0kpjDRg
 Eqn16bX/KavbXYJOUvy25/guZaOLH7iNwLxgIopkigoUATTdQS6D6VQsImsSvzRMHShkhAmyxfh
 +YOn0Y08lnSV1xg==
X-Developer-Key: i=david@ixit.cz; a=openpgp;
 fpr=D77A09CFEEDC2BBD53A7047460023FC4D3492072
X-Endpoint-Received: by B4 Relay for david@ixit.cz/default with auth_id=355
X-Original-From: David Heidelberg <david@ixit.cz>
Reply-To: david@ixit.cz
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[kernel.org,quarantine];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	R_DKIM_ALLOW(-0.20)[kernel.org:s=k20201202];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-269733-lists,devicetree=lfdr.de,david.ixit.cz];
	FROM_HAS_DN(0.00)[];
	REPLYTO_DOM_NEQ_FROM_DOM(0.00)[];
	TO_DN_SOME(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[kernel.org:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	HAS_REPLYTO(0.00)[david@ixit.cz];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[devnull@kernel.org,devicetree@vger.kernel.org];
	REPLYTO_DOM_NEQ_TO_DOM(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[10];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	DBL_BLOCKED_OPENRESOLVER(0.00)[sysctl.cz:email,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: C3A511D0807
X-Rspamd-Action: no action

From: David Heidelberg <david@ixit.cz>

Add missing pinctrl for PD4 (PI6C PCIe clock enable,
PCIE_CLKEN_H_GPIO0_D4) and set output high.

This does fix freeze at initialization due pinctrl being in input
state.

Reported-by: Martin Filla <freebsd@sysctl.cz> # reported by private message
Signed-off-by: David Heidelberg <david@ixit.cz>
---
 arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
index 4d3ebe50b90ba..b4c8abe37d1f3 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-bpi-r2-pro.dts
@@ -121,6 +121,8 @@ vcc3v3_pi6c_05: regulator-vcc3v3-pi6c-05 {
 		regulator-max-microvolt = <3300000>;
 		enable-active-high;
 		gpios = <&gpio0 RK_PD4 GPIO_ACTIVE_HIGH>;
+		pinctrl-0 = <&pi6cpcie_enable_h>;
+		pinctrl-names = "default";
 		startup-delay-us = <200000>;
 		vin-supply = <&vcc5v0_sys>;
 	};
@@ -635,6 +637,10 @@ ngffpcie_enable_h: ngffpcie-enable-h {
 			rockchip,pins = <0 RK_PB7 RK_FUNC_GPIO &pcfg_pull_none_drv_level_5>;
 		};
 
+		pi6cpcie_enable_h: pi6cpcie-enable-h {
+			rockchip,pins = <0 RK_PD4 RK_FUNC_GPIO &pcfg_output_high>;
+		};
+
 		minipcie_reset_h: minipcie-reset-h {
 			rockchip,pins = <2 RK_PD6 RK_FUNC_GPIO &pcfg_pull_none_drv_level_5>;
 		};

---
base-commit: 3fa5e5702a82d259897bd7e209469bc06368bf31
change-id: 20260222-rk3568-bri-r2-pro-fix-pcie-355b020dd0d2

Best regards,
-- 
David Heidelberg <david@ixit.cz>



