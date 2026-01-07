Return-Path: <devicetree+bounces-252224-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9DA41CFC940
	for <lists+devicetree@lfdr.de>; Wed, 07 Jan 2026 09:22:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 2705E3079EE4
	for <lists+devicetree@lfdr.de>; Wed,  7 Jan 2026 08:15:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 931F828C5AA;
	Wed,  7 Jan 2026 08:15:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="sKDJDPta"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay60-hz1.antispameurope.com (mx-relay60-hz1.antispameurope.com [94.100.133.230])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B25F26ED59
	for <devicetree@vger.kernel.org>; Wed,  7 Jan 2026 08:15:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.133.230
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767773707; cv=pass; b=duT7eEm/+KOfOnRj91iHXwio45Q2I05xyR1BiD3LxGH1zZztcUGdv/6VQrbTaTbGaLc5Ln68z6R+y8VSQtPm5aBKgAguDaLJQHgzVXFo2c90BJlFXGrd8QVi+qmKrE38ZOcDj1IMtHzLBxgOeE+CDwNSXKd73BGJ5viKjQCZeVg=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767773707; c=relaxed/simple;
	bh=7u8exuXQjSXGB/DyVWcwOa1yDoZ2QjCtK0ZqC7RyvUw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=XWOqVM5Lq9pzbBEFIwxZLpNly/dHXHvWVMtFpeRLB/bzvcXvYVwdCUMwnqXNeJvBwJcNtPeRAsR7FL6Hj8NuegV/465jIOIP3doXVvDq05yLHsLBTS6xhtykVqFoeFlM8O3p0QAqcfDqSepqMYhPPNYRBgF25lN6VvgeeUd6g9c=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=sKDJDPta; arc=pass smtp.client-ip=94.100.133.230
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate60-hz1.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com
 smtp.helo=hmail-p-smtp01-out04-hz1.hornetsecurity.com; dmarc=pass
 header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=qugGupbuLuQZHC/ObrVWEf0IOnY90j2BdMV7Fr/z0ho=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1767773669;
 b=h6b+HcX5aUHr6FZplE8CMYqAJDKHE4nONO7FozgcEelDUdA5g23tP77udDuMQxoWTYE73LkT
 Gh5mDQtNqDbmzAY0HMNNfZu4LtBnyEPgn/DnjgnLZ1WZrIepjkPrJqFqMR/FzoyoRhkcRHeabXz
 +RDzy4WlnfnNiEDCyHaFjgnT9gJrEMwmb1fST7hukfWLsG9nfdMjWIwScH8THYHp/pkgSajb4js
 f4BqcNmKZK5XJXNeV/bCHGIdvM1EG9jj6znEa9rFNqAGM1/RUe52HpfS9hrzuAlcXauFI3/WhCN
 VKVO/JthrA/zekx2s3f7hBF2CtsYPpEv+GbRDqGMtP7Rg==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1767773669;
 b=bdtecif6uBNkhR3QlqzauM173aoGwaR7z8ioGCWCXNhNhRpjHjcU6K6qXdoVcEbXNF7EfuXW
 Ob8T6jAV/KZe9goxr9g5gsNKiv8ODkRJqelpp+dZXbOlyjqMCEb4WkTCxEKb77uZAZJtFA/huaS
 xxbzQAApmqgBA+4fMQo6zIDxxPwhEzVSY5dqKHxla7yX0TnDemIc8F/1dEBE8DI7vrjTh7cmlgy
 c5TsuErUsxtWIYIx0sk73g9m6CAeewEzvj6Dp41a1RntSyj6pYUk1rgAFRiKmoYM6bJ+/Hm5yA1
 jtT+Ttkaadh+Q8+o4LyUi3Pq4ReWDM/+/zZ04oNsueimw==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay60-hz1.antispameurope.com;
 Wed, 07 Jan 2026 09:14:29 +0100
Received: from schifferm-ubuntu.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: matthias.schiffer@ew.tq-group.com)
	by hmail-p-smtp01-out04-hz1.hornetsecurity.com (Postfix) with ESMTPSA id B030C220D37;
	Wed,  7 Jan 2026 09:14:21 +0100 (CET)
From: Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kees Cook <kees@kernel.org>,
	Tony Luck <tony.luck@intel.com>,
	"Guilherme G. Piccoli" <gpiccoli@igalia.com>,
	Andrew Lunn <andrew@lunn.ch>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-hardening@vger.kernel.org,
	linux@ew.tq-group.com,
	Matthias Schiffer <matthias.schiffer@ew.tq-group.com>
Subject: [PATCH v5 0/2] TQ-Systems TQMa62xx SoM and MBa62xx board
Date: Wed,  7 Jan 2026 09:14:00 +0100
Message-ID: <cover.1767627010.git.matthias.schiffer@ew.tq-group.com>
X-Mailer: git-send-email 2.52.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-cloud-security-sender:matthias.schiffer@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: matthias.schiffer@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay60-hz1.antispameurope.com with 4dmLRL38j6z28w5w
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:772d89e85c1e185e9e888a8d7af96ee7
X-cloud-security:scantime:1.844
DKIM-Signature: a=rsa-sha256;
 bh=qugGupbuLuQZHC/ObrVWEf0IOnY90j2BdMV7Fr/z0ho=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1767773668; v=1;
 b=sKDJDPtah/ojKxrcQdW14ed9Vv2Dev9Vx+Bx5qEaE1ub2NDO37C4zUj6TQ/cIct5cgS3QRAg
 KoXO6JBTbY9UD8hqSOBZ7sdzFvyFGyovxoR9+ykEip0YEk6BvFVJxQ7Tge5htsHhkxfgIUE0fTD
 fWQ6dzyGNB0GGt2HgUH40LBVtAt2DqMy0aeT6FbYzuZUdGI54bbEmXQGyFoTblxZlERlPi/iP0t
 NltTEkwb3PsV3admIJKtNB00a0vIE+sys1isGul4QXYImRykH6+4ua4zLWLe7a8HTHfl9zedYIQ
 5RXWMYsjA2Wk2/LNWd6oqIYpOvLGKkzm6U9dVUID7XNRA==

This adds Device Trees for our AM62x-based SoM TQMa62xx and its
reference carrier board MBa62xx.

Not yet included are overlays to enable LVDS display output and MIPI-CSI
camera input.

Changes in v5:
- Rebase onto latest ti-k3-dts-next

Changes in v4:
- Rebase onto latest ti-k3-dts-next
- Reorder boot phase tags after other standard DT properties
- Add missing supply regulators in SPI-NOR flash and USB hub
- Set status = "okay" in &cpsw3g, as it is disabled in k3-am62-main.dtsi
  now
- Add disabled 1400MHz OPP entry (will be enabled by bootloader if
  supported by PMIC configuration)
- Update copyright years in new files

Changes in v3:
- Rebased onto ti-k3-dt-for-v6.18
- 3 of the 5 patches in v2 have been applied already and are dropped
- Include k3-am62-ti-ipc-firmware.dtsi, drop now redundant configuration
- Change node name for MCU reserved memory to 'memory'
- Use rgmii-id PHY mode
- Drop now redundant ti,rx-internal-delay
- Update simple-audio-card,name to match other TQ SOMs with compatible
  configuration
- Reference dss_pins in dss node (actual display support will be added
  in a follow-up patch series)
- Consistently use GPIO_ACTIVE_HIGH define
- Drop unneeded usb0 quirk flags
- Add boot phase tags

Changes in v2:
- Collected acks and reviews
- Rebased onto v6.13-rc1

Matthias Schiffer (2):
  dt-bindings: arm: ti: Add compatible for AM625-based TQMa62xx SOM
    family and carrier board
  arm64: dts: ti: Add TQ-Systems TQMa62xx SoM and MBa62xx carrier board
    Device Trees

 .../devicetree/bindings/arm/ti/k3.yaml        |   7 +
 arch/arm64/boot/dts/ti/Makefile               |   1 +
 .../boot/dts/ti/k3-am625-tqma62xx-mba62xx.dts | 930 ++++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am625-tqma62xx.dtsi | 331 +++++++
 4 files changed, 1269 insertions(+)
 create mode 100644 arch/arm64/boot/dts/ti/k3-am625-tqma62xx-mba62xx.dts
 create mode 100644 arch/arm64/boot/dts/ti/k3-am625-tqma62xx.dtsi

-- 
TQ-Systems GmbH | Mühlstraße 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht München, HRB 105018
Geschäftsführer: Detlef Schneider, Rüdiger Stahl, Stefan Schneider
https://www.tq-group.com/

