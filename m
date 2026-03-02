Return-Path: <devicetree+bounces-269886-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id QF7yCgFkpWn0/QUAu9opvQ
	(envelope-from <devicetree+bounces-269886-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 11:18:41 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [IPv6:2600:3c0a:e001:db::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id C83D51D64DF
	for <lists+devicetree@lfdr.de>; Mon, 02 Mar 2026 11:18:40 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id ECD67304BCF1
	for <lists+devicetree@lfdr.de>; Mon,  2 Mar 2026 10:17:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 74972396D2E;
	Mon,  2 Mar 2026 10:17:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b="YqivmQ56"
X-Original-To: devicetree@vger.kernel.org
Received: from mx-relay36-hz2.antispameurope.com (mx-relay36-hz2.antispameurope.com [94.100.136.236])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D24E392800
	for <devicetree@vger.kernel.org>; Mon,  2 Mar 2026 10:17:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=pass smtp.client-ip=94.100.136.236
ARC-Seal:i=2; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772446627; cv=pass; b=DxKndKjMGD5lb9e/sNq4A63yfuBlDoJr7GO/SIfnpy9MvUn4FwlhyeSXo9Ops4rwgF/kla5NwljLswxjZW+9pFk2NCF1SDQ74R4W03kE9GCNwsU42DpyDDI3QjsAc9bDFpnw/ZD0GCxBFsGuw+LsVD+F/eYuscmETCbsNqgd0G0=
ARC-Message-Signature:i=2; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772446627; c=relaxed/simple;
	bh=OV7pJ+9HBJ0Be3o5qKAi4LgF9LQYpxxkZiVdHkjvHwI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=q9ksKEvyM883SPyIbYHVnVelSh2RxU6PCxhwD5nVfeidytRNg3KNv2dwCDJOFR6XT4FXVD9Ly8+jpL6ygD6/BIk3CfcL6LLkg/9fuM8HI8l7ajDNrPcPe7KWgnvLWB2ZkF8wdgo4s5JI57LYhjBtTzzk6ZXB3WrP2DqloZUVjjw=
ARC-Authentication-Results:i=2; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com; spf=pass smtp.mailfrom=ew.tq-group.com; dkim=pass (2048-bit key) header.d=ew.tq-group.com header.i=@ew.tq-group.com header.b=YqivmQ56; arc=pass smtp.client-ip=94.100.136.236
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=ew.tq-group.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=ew.tq-group.com
ARC-Authentication-Results: i=1; mx-gate36-hz2.hornetsecurity.com 1; spf=pass
 reason=mailfrom (ip=94.100.132.6, headerfrom=ew.tq-group.com)
 smtp.mailfrom=ew.tq-group.com smtp.helo=smtp-out02-hz1.hornetsecurity.com;
 dmarc=pass header.from=ew.tq-group.com orig.disposition=pass
ARC-Message-Signature: a=rsa-sha256;
 bh=l6VEiHbbXrSXnpEA233x9tN4NxHrbql59kNg3szndqg=; c=relaxed/relaxed;
 d=hornetsecurity.com; h=from:to:date:subject:mime-version:; i=1; s=hse1;
 t=1772446575;
 b=njrBBPXyHM/9QH/MC9Yd3PYPiUtqNm/AsfWkYLmtvPqIust9KhhuXEtTNSodh0BJYRWhasUf
 U4oVRRtSoBwsRDED5LmvoZBQEbZ+2eW95I5tPksLrkCvnveis6tK+RTeZaxM0D/kR5UlPRpIOel
 qmWMkNnL50pXXe/nl2flWg1eQ3u7WwSwppLrUeX8ci0lXHf1EgFFPz+riz4Mlo85/fwX/UlMNCO
 MlPmsRXZvDDm8augI3z8fmd1V0vLuLo3242JYYrEm0YAqVFQQKZRdqfRlVSzA6OS+SD16lN7uXw
 54TzW2cOMNKi93OPf+clJJOassnJVlafYXqN/fW//f5+A==
ARC-Seal: a=rsa-sha256; cv=none; d=hornetsecurity.com; i=1; s=hse1;
 t=1772446575;
 b=I6Wm67DZeX1oELlm8HuETok7DxoL9+fggkDCqEiIjGnp0ABOB8/70YK56bL1iDgSoADj59Ix
 iiB5reDb7BYOyNNVsOY/wy2ek3nqgiqgaM6PnZp2+y1ii5KJNEYGR5+9ZfxU+yx3lQYJ2bX3Yv8
 6oZpNqYMS8nzIT3K57BmZsB/d12y39p+nnDdtBKpjgco0nL6n+1Fwg7P4SCNP4jrNr/rRvdvH7U
 fe5UsN36rcQ14L0IUHpoMch2pq1BFKgj/kPC+epQB+7+0bTcjMUojAIO6O3XepgH6Qr/RtIypB4
 vwK06m2hHkedGXnhghVDgKnR5VhSp4Fz4gRoR/+dE0f+g==
Received: from he-nlb01-hz1.hornetsecurity.com ([94.100.132.6]) by mx-relay36-hz2.antispameurope.com;
 Mon, 02 Mar 2026 11:16:15 +0100
Received: from schifferm-ubuntu.tq-net.de (host-82-135-125-110.customer.m-online.net [82.135.125.110])
	(Authenticated sender: nora.schiffer@ew.tq-group.com)
	by smtp-out02-hz1.hornetsecurity.com (Postfix) with ESMTPSA id 123A45A0951;
	Mon,  2 Mar 2026 11:16:10 +0100 (CET)
From: Nora Schiffer <nora.schiffer@ew.tq-group.com>
To: Nishanth Menon <nm@ti.com>,
	Vignesh Raghavendra <vigneshr@ti.com>,
	Tero Kristo <kristo@kernel.org>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kees Cook <kees@kernel.org>,
	Tony Luck <tony.luck@intel.com>,
	"Guilherme G. Piccoli" <gpiccoli@igalia.com>,
	linux-arm-kernel@lists.infradead.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux@ew.tq-group.com,
	Nora Schiffer <nora.schiffer@ew.tq-group.com>
Subject: [PATCH v6 0/2] TQ-Systems TQMa62xx SoM and MBa62xx board
Date: Mon,  2 Mar 2026 11:14:57 +0100
Message-ID: <cover.1772443991.git.nora.schiffer@ew.tq-group.com>
X-Mailer: git-send-email 2.53.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-cloud-security-sender:nora.schiffer@ew.tq-group.com
X-cloud-security-recipient:devicetree@vger.kernel.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Mailarchiv: E-Mail archived for: nora.schiffer@ew.tq-group.com
X-cloud-security-Mailarchivtype:outbound
X-cloud-security-Virusscan:CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on mx-relay36-hz2.antispameurope.com with 4fPZZy6kLjz1S5RV
X-cloud-security-connect: he-nlb01-hz1.hornetsecurity.com[94.100.132.6], TLS=1, IP=94.100.132.6
X-cloud-security-Digest:34f64186f7d5f0be3b0549b866decb73
X-cloud-security:scantime:1.753
DKIM-Signature: a=rsa-sha256;
 bh=l6VEiHbbXrSXnpEA233x9tN4NxHrbql59kNg3szndqg=; c=relaxed/relaxed;
 d=ew.tq-group.com;
 h=content-type:mime-version:subject:from:to:message-id:date; s=hse1;
 t=1772446575; v=1;
 b=YqivmQ56QAFgsNOVokRXw9/51A+7gVlvLGe9Q3X5x0DXVrARrIklHYvGqPoKTgPcXpEM8N1k
 H23vv0IkqD67uFxLsvboH2ygy75vvcbm99JSFk+bW+68P2rZjW2BJBhcFFqQdQyxPuiQbKY30ex
 ZwvXQ7dfxhWK/PEuriAYSgR0DGfSuJhpuHw6SEIPj3UQ5TyodIh42F76jdeUZA1opKx6yE3MpS7
 wY5mytjf8rAZOJxPKWygeskVQNjOQzf8gIIAxxE0Ipyn3sZ92E7ibEtQ38JY8w2xXQTVsgEWkRt
 BDY01P4UuzHv8csqQMqhxmATJCgHeG4ZBVFRTEfiUbXDA==
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.34 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=2];
	DMARC_POLICY_ALLOW(-0.50)[ew.tq-group.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c0a:e001:db::/64:c];
	R_DKIM_ALLOW(-0.20)[ew.tq-group.com:s=hse1];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[14];
	TAGGED_FROM(0.00)[bounces-269886-lists,devicetree=lfdr.de];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c0a::/32, country:SG];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_COUNT_FIVE(0.00)[5];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[nora.schiffer@ew.tq-group.com,devicetree@vger.kernel.org];
	DKIM_TRACE(0.00)[ew.tq-group.com:+];
	NEURAL_HAM(-0.00)[-1.000];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[ew.tq-group.com:mid,ew.tq-group.com:dkim,sea.lore.kernel.org:helo,sea.lore.kernel.org:rdns,tq-group.com:url]
X-Rspamd-Queue-Id: C83D51D64DF
X-Rspamd-Action: no action

This adds Device Trees for our AM62x-based SoM TQMa62xx and its
reference carrier board MBa62xx.

Not yet included are overlays to enable LVDS display output and MIPI-CSI
camera input.

Changed in v6:
- Update author information following name change
- Rebase onto latest ti-k3-dts-next
- Disable incomplete panel node
- Add various comments to explain why nodes are disabled
- Extend comment explaining disabled 1400MHz OPP
- Use consistent comment style for pinmux

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


Nora Schiffer (2):
  dt-bindings: arm: ti: Add compatible for AM625-based TQMa62xx SOM
    family and carrier board
  arm64: dts: ti: Add TQ-Systems TQMa62xx SoM and MBa62xx carrier board
    Device Trees

 .../devicetree/bindings/arm/ti/k3.yaml        |    7 +
 arch/arm64/boot/dts/ti/Makefile               |    1 +
 .../boot/dts/ti/k3-am625-tqma62xx-mba62xx.dts | 1034 +++++++++++++++++
 arch/arm64/boot/dts/ti/k3-am625-tqma62xx.dtsi |  360 ++++++
 4 files changed, 1402 insertions(+)
 create mode 100644 arch/arm64/boot/dts/ti/k3-am625-tqma62xx-mba62xx.dts
 create mode 100644 arch/arm64/boot/dts/ti/k3-am625-tqma62xx.dtsi

-- 
TQ-Systems GmbH | Mühlstraße 2, Gut Delling | 82229 Seefeld, Germany
Amtsgericht München, HRB 105018
Geschäftsführer: Detlef Schneider, Rüdiger Stahl, Stefan Schneider
https://www.tq-group.com/


