Return-Path: <devicetree+bounces-277658-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 4Md9G0vBu2n1ngIAu9opvQ
	(envelope-from <devicetree+bounces-277658-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 10:26:35 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 0C4932C89F5
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 10:26:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 362D23006147
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 09:26:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8DA833B8BC5;
	Thu, 19 Mar 2026 09:25:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="jGZvjRhZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A1943B6346
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 09:25:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773912328; cv=none; b=uOhzbG/Og6EM3KmjkStxzKNvT0hXBqg6VQmowGYHtGMZgwaWWTWjiI3TKqabWRbyrS0gs4odLObgrJx5zGTfFTISfKxLt7Dp5bwSJidriYYhiz2i2QSge6HwUL0cYKUOANgT3OOEryo9/nyvsFup9sqH/X6RQabVd/Z1F6W8Hqo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773912328; c=relaxed/simple;
	bh=vOw6Tl8PYZsh0NvqVoRlsuh2q9r5nTLOeCaQetsasgQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=tvBGOApkejip1GnIlmVZ4w4xkSwM9YRMnIUS5Bg7k2xK+liXzIX96DfLeH/iXWRgVRFyecrMzMoyOQYS23zInxYTdMyqO46SX57z29KjxrFzMfhMeEz2hjal3A0ul+D/RhnJq7PIuDsNnVeQHTBWk8rRAmKsceNyutZyZRNyPeU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=jGZvjRhZ; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-486fba7ce4cso2718035e9.3
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 02:25:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1773912325; x=1774517125; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=69iwq8FlnzMS7nP54HlGXb7s0cbbMSrkUrxQqUW4wfY=;
        b=jGZvjRhZOIz5utg0o0/L0KF6b9srU3mYM1ZTTL0h+nT80I7WwWtQWESgPTifnYn7bh
         cTZM2RM13GB7ZTa6zmOGWwER92+ly60R4bwhmvKqTs1zeO+xMVdThCk5x4DyhcGOuwfM
         V969mAlH9TrQqrGL4xOO7X5cNHG+mStLTUb2OcHRe98ZpqW8olR+0OeIHxrgWHHSx+Tb
         31Z0t1LmbivMtp/0mS/xsSC7Gd5TeOoTQEhVe3lNoNxI7N9QPV6OCN5HVkmBGRhS9BEd
         rhizFNKAZT+wsQ1zZjjfRT+j+eNHJv0vkUm6HRGF6aqYbUEw1e89p5PSyKSB+vifAodx
         xhMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773912325; x=1774517125;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=69iwq8FlnzMS7nP54HlGXb7s0cbbMSrkUrxQqUW4wfY=;
        b=RSFhp5xx6FpDZETxJXlhu++lS5WzHj9eAvAUGYspJZ+cKt8mjR8VS8kfiBnkPYRR58
         BrNIYHQ3DeFj7ZQsicQzD8IQOzaay1/DgmiXsJMMekKeIAm9zwBJRgw9fzD+mfkd5Sbn
         WKHsgkUuv7f4g0cK4sb1/qTeBvsF7EXZ/MVQ0bm7OyZhCeZ+s42rbuMJmkz7q/vAYenv
         E2KFtPmAAb4tL0Ijrh8SyZqSLQ3e0I58fZRaDowQXuC0CNrXNoYvhP5x7qjSkGPL82c3
         nLbcwnVw1Jp96iWg83rP8IVQHAAD1VioBSjGAh5AZpNpJtXACQQTBE5xw4vQUyLoZhI3
         1qQA==
X-Forwarded-Encrypted: i=1; AJvYcCXLLDzA58dlSZVAbEaFtd1+CvDAcAbWkBzwURu3Lj+FDUsQas+b5qHQVV5UevJilq9CNsMXysYG933+@vger.kernel.org
X-Gm-Message-State: AOJu0YxirorLrrIkEUiBwI1SjDLbwihpsGIFj0mxrGHqoJ8Gf2Mfre8I
	i3scGGhCmW9HIcykI9IwsdA/B8wlnhJrRmFj+Scz3ReAhfQrxw1XpXns
X-Gm-Gg: ATEYQzwTksLn0MOZWUrH+w3Xmnenlzs9+n4vBd9RDt5lS6xw3Gb1FpWano32IMd4k7k
	G3ruAOqIHSwKwkbK/ROmUWuHNgtKTgxlTmAlna8SbZoNXoxhuhrRoXnB7wBkjJptARVn1Sz38eg
	TWekNMp6AcvsWGVakJwQCtnTc7iHPmfB0kf4geXFqF32R2xOhDIWRJGl0S++0eQ/E0VDT2whlTB
	mz90oxDhyQsgR4N6YCiEtkXOwuEmxZJ5AzYqLO5gHofB/Lm57h04ZNX/6XJ4esWO4q3zxD2TBDY
	IlG1xpEzfOTJhj7VmfyqOxcjZ7lJ5RBKJxWibb2m9Z218k3ZuJhDfgL1pt6oZGjS1pi77Lh12t3
	41YjRziF+mbwTamiYH6zx27L2k7JetQ4lGiFlRMswDSZ7phPFWVhzc5AVtBMzC357rhNYhmri5y
	jLNlTQ89aCuBvNkK4ML6j7/ULVytwHWRxO3yeQAoaJQRzGFEiKe1gC1+22Pqnr4ms=
X-Received: by 2002:a05:600c:1f8d:b0:485:3f65:94a1 with SMTP id 5b1f17b1804b1-486f4572a00mr111573515e9.18.1773912324935;
        Thu, 19 Mar 2026 02:25:24 -0700 (PDT)
Received: from [192.168.0.253] (5D59A51C.catv.pool.telekom.hu. [93.89.165.28])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-486f8aacc73sm50169335e9.0.2026.03.19.02.25.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 02:25:24 -0700 (PDT)
From: Gabor Juhos <j4g8y7@gmail.com>
Date: Thu, 19 Mar 2026 10:24:59 +0100
Subject: [PATCH v3] arm64: dts: marvell: armada-37xx: drop
 'marvell,usb-misc-reg' from USB host nodes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260319-armada-37xx-drop-usb-misc-reg-v3-1-8585c8a0a8ba@gmail.com>
X-B4-Tracking: v=1; b=H4sIAAAAAAAC/43NvQ6DIBiF4VsxzP0a/graqffRdEBAJSlioCU2x
 nsvOrm143uG5ywo2ehsQtdqQdFml1wYS7BThfSgxt6CM6URxVRghjmo6JVRwOQ8g4lhgndqwbu
 kIdoebCPYhTe1VlagYkzRdm7e/fuj9ODSK8TPfpfJtv4rZwIEaow1aSUXrVS33iv3POvg0SZne
 tCI/KXRohnTdZISwjnhR21d1y/rW8zXGAEAAA==
X-Change-ID: 20260304-armada-37xx-drop-usb-misc-reg-e9635498cae6
To: Andrew Lunn <andrew@lunn.ch>, 
 Gregory Clement <gregory.clement@bootlin.com>, 
 Miquel Raynal <miquel.raynal@bootlin.com>, 
 Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Gabor Juhos <j4g8y7@gmail.com>
X-Mailer: b4 0.14.2
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[gmail.com,none];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c09:e001:a7::/64:c];
	R_DKIM_ALLOW(-0.20)[gmail.com:s=20230601];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FREEMAIL_TO(0.00)[lunn.ch,bootlin.com,gmail.com,kernel.org];
	FREEMAIL_CC(0.00)[lists.infradead.org,vger.kernel.org,gmail.com];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	TAGGED_FROM(0.00)[bounces-277658-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[gmail.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	FREEMAIL_FROM(0.00)[gmail.com];
	RCVD_COUNT_FIVE(0.00)[5];
	DBL_PROHIBIT(0.00)[0.0.226.144:email];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[j4g8y7@gmail.com,devicetree@vger.kernel.org];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	NEURAL_HAM(-0.00)[-0.969];
	RCPT_COUNT_SEVEN(0.00)[11];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	DBL_BLOCKED_OPENRESOLVER(0.00)[devicetree.org:url,lunn.ch:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,bootlin.com:email]
X-Rspamd-Queue-Id: 0C4932C89F5
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The 'marvell,usb-misc-reg' property is present both in the EHCI and
in the XHCI USB host device nodes, however it is not documented. Thus
'make dtbs_check' produces warnings like these:

  /arch/arm64/boot/dts/marvell/armada-3720-db.dtb: usb@58000 (marvell,armada3700-xhci): Unevaluated properties are not allowed ('marvell,usb-misc-reg' was unexpected)
          from schema $id: http://devicetree.org/schemas/usb/generic-xhci.yaml
  /arch/arm64/boot/dts/marvell/armada-3720-db.dtb: usb@5e000 (marvell,armada-3700-ehci): Unevaluated properties are not allowed ('marvell,usb-misc-reg' was unexpected)
          from schema $id: http://devicetree.org/schemas/usb/generic-ehci.yaml

Apart from the fact that the properties are not documented, those are
not even used by any USB host drivers. Due to this, drop the properties
in order to get rid of the warnings.

Note:

With the same name, there is a property used for the Armada 3700 USB
UTMI PHYs of which dt-bindings documentation has been added in commit
e60958699afa ("dt-bindings: phy: mvebu-utmi: add UTMI PHY bindings").

Additionally, the property is handled by the 'phy-mvebu-a3700-utmi'
driver since commit cc8b7a0ae866 ("phy: add A3700 UTMI PHY driver").

When the nodes of the UTMI PHYs has been added to the SoC dtsi by
commit 05d168a56fae ("arm64: dts: marvell: armada-37xx: declare USB2
UTMI PHYs"), the properties has been added to the USB host controller
nodes also. According to the commit message this was unintentional,
however in regard to the USB hosts, neither the respective documentation,
nor driver support has been added into the tree since that.

Reviewed-by: Andrew Lunn <andrew@lunn.ch>
Reviewed-by: Miquel Raynal <miquel.raynal@bootlin.com>
Signed-off-by: Gabor Juhos <j4g8y7@gmail.com>
---
Changes in v3:
  - s/intentional/unintentional/
  - add Reviewed-by tag from Miquel
  - Link to v2: https://lore.kernel.org/r/20260317-armada-37xx-drop-usb-misc-reg-v2-1-ddff72114414@gmail.com

Changes in v2:
  - add Reviewed-by tag from Andrew
  - change subject and reword commit message
  - Link to v1: https://lore.kernel.org/r/20260304-armada-37xx-drop-usb-misc-reg-v1-1-800c1b746b7a@gmail.com
---
 arch/arm64/boot/dts/marvell/armada-37xx.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/marvell/armada-37xx.dtsi b/arch/arm64/boot/dts/marvell/armada-37xx.dtsi
index ea1824f5321fbb32fc4373c08a0d94bca1dc793b..44c47409f8793ae1266303607812ef481edbfbc5 100644
--- a/arch/arm64/boot/dts/marvell/armada-37xx.dtsi
+++ b/arch/arm64/boot/dts/marvell/armada-37xx.dtsi
@@ -369,7 +369,6 @@ usb3: usb@58000 {
 				compatible = "marvell,armada3700-xhci",
 				"generic-xhci";
 				reg = <0x58000 0x4000>;
-				marvell,usb-misc-reg = <&usb32_syscon>;
 				interrupts = <GIC_SPI 3 IRQ_TYPE_LEVEL_HIGH>;
 				clocks = <&sb_periph_clk 12>;
 				phys = <&comphy0 0>, <&usb2_utmi_otg_phy>;
@@ -393,7 +392,6 @@ usb32_syscon: system-controller@5d800 {
 			usb2: usb@5e000 {
 				compatible = "marvell,armada-3700-ehci";
 				reg = <0x5e000 0x1000>;
-				marvell,usb-misc-reg = <&usb2_syscon>;
 				interrupts = <GIC_SPI 17 IRQ_TYPE_LEVEL_HIGH>;
 				phys = <&usb2_utmi_host_phy>;
 				phy-names = "usb";

---
base-commit: 98226a594f313442fcba38cefc1df0b6c1691c7e
change-id: 20260304-armada-37xx-drop-usb-misc-reg-e9635498cae6

Best regards,
-- 
Gabor Juhos <j4g8y7@gmail.com>


