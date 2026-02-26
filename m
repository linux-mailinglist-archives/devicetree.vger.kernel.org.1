Return-Path: <devicetree+bounces-268679-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ML9dJqoKoGnbfQQAu9opvQ
	(envelope-from <devicetree+bounces-268679-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 09:56:10 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E8AA1A2FC4
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 09:56:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 72027301EF13
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 08:56:09 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D99C83939B1;
	Thu, 26 Feb 2026 08:56:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="2Ep24RiP";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="DO0kT5Rx"
X-Original-To: devicetree@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 931DB38F23D;
	Thu, 26 Feb 2026 08:56:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772096166; cv=none; b=H7HR/30diBlbqfGjyJarfvfvxCvJssQfz97GbgvFTU6uOzvyOCezyUOHz/eKPsulSlHYHQPvJ99ArE8ClJllLJeMlL2vIOtiwAHkIDIQunLpEzwI4i20tEnHljOVa14BHFxRRzM39EzZ8jlGvRviF1xJTS4pp/Vpw11cmUB42dc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772096166; c=relaxed/simple;
	bh=C/9GPnXYkyWxfRHbhEaUnI1yU+VgMkJUEetx8Xp81uw=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=ig3NTi+VEdPLf1eKjZyI3u8tANPaX8f5bIxPqrB5vVaukA6OJ5zXBTBfVZEqGJcEyvyzrL2Thbba0A3kGcOENodd4w7u4vrwowgMnpVvPUy43/+XnzbnbPdYfiduIfSk1GmEh59+67lbf83XUwzVMoqc8DzM/qauXeo1SCyCTTY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=2Ep24RiP; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=DO0kT5Rx; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
From: Gregor Herburger <gregor.herburger@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1772096163;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=OkQSZFFyrrUC2BfgblnLh9wWBJ1YRgIvBo/bG0tqOyE=;
	b=2Ep24RiPqzuOuxyGxEdrdJ9YSafyR1QHD1SGv7b1SlZWRRLAQ8UyV4mbAT2pfTYACIbP7t
	LMcrp8cis1QxEmknYeMq4fSobZACGhvKzV3No68xGltcUQl5aaAWTZvK4vM3/dpVsbB/TE
	mNRPX/Z9ROqZyfqCg6A267mUjrhDAL8I1P+xNqIF0PZFrwE3G9vZlsSKZfAPe6TQUo+7dy
	KTDdQcNXyGcFNg44CiN15QV1/fGywS0Ju//Bba89GL9dMiXFW8bzOoEIAPsplaFeld3aAg
	lRJM9vVDiDuPe/W3Z8X8ixW/HCvuTC+QSwdy76NkPlG1RHUQRUrseP5cGesN7g==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1772096163;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=OkQSZFFyrrUC2BfgblnLh9wWBJ1YRgIvBo/bG0tqOyE=;
	b=DO0kT5RxRb5bp2rt4zpn6PXZsmzYU1U8k523a//KGYFu4ouP5GRiEjBqkpo0WWr4wWQbdj
	mMN88RqXUahLBlDA==
Subject: [PATCH 0/6] arm64: dts: broadcom: bcm2712: add missing nodes
Date: Thu, 26 Feb 2026 09:55:53 +0100
Message-Id: <20260226-raspi-dts-updates-v1-0-60832d20ff04@linutronix.de>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAJkKoGkC/x3MQQ5AMBBA0avIrE3SDkFcRSxKp8yGpoNIxN01l
 m/x/wPKSVihLx5IfInKvmXYsoB5ddvCKD4byFBjiAwmp1HQH4pn9O5gxXmydgpV6NqaIHcxcZD
 7fw7j+35X039cYwAAAA==
X-Change-ID: 20260220-raspi-dts-updates-cb11bf3f8742
To: Andrea della Porta <andrea.porta@suse.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
 Gregor Herburger <gregor.herburger@linutronix.de>
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772096163; l=1353;
 i=gregor.herburger@linutronix.de; s=20260226; h=from:subject:message-id;
 bh=C/9GPnXYkyWxfRHbhEaUnI1yU+VgMkJUEetx8Xp81uw=;
 b=w/S8oyhplLSwbQTa/S3z3GEKRyq0wHLUfWYDiu+b5PaQmIsKUpo87C2kRfzLeCZjt4vvyiBBe
 oFw0IBSC8stARtcN+4IF/9Lvfxh43nSrhR5l5UJHBgjgc3BF6MZquvn
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
	TAGGED_FROM(0.00)[bounces-268679-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[linutronix.de:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-0.998];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gregor.herburger@linutronix.de,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linutronix.de:mid,linutronix.de:dkim,linutronix.de:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns]
X-Rspamd-Queue-Id: 3E8AA1A2FC4
X-Rspamd-Action: no action

Hi,

This series addresses some missing nodes for the bcm2712 raspberry pi 5
and includes some fixes for the -d revision.
I identified these while working on the camera interfaces on the
rapsberry pi 5. All the drivers were already there. Only the devicetree
nodes were missing.
As I don't have access to any datasheets, these changes were ported from
the downstream tree (https://github.com/raspberrypi/linux/).

---
Gregor Herburger (6):
      arm64: dts: broadcom: rp1: add i2c controller
      arm64: dts: broadcom: rp1: add csi nodes
      arm64: dts: broadcom: bcm2712: add camera backend node pispbe
      arm64: dts: broadcom: bcm2712-rpi-5-b: add pinctrl properties for csi i2cs
      arm64: dts: broadcom: bcm2712-d-rpi-5-b: add fixes for pinctrl/pinctrl_aon
      arm64: dts: broadcom: bcm2712-d-rpi-5-b: update uart10 interrupt

 arch/arm64/boot/dts/broadcom/bcm2712-d-rpi-5-b.dts |  14 +++
 arch/arm64/boot/dts/broadcom/bcm2712-rpi-5-b.dts   |  24 +++++
 arch/arm64/boot/dts/broadcom/bcm2712.dtsi          |   7 ++
 arch/arm64/boot/dts/broadcom/rp1-common.dtsi       | 105 +++++++++++++++++++++
 4 files changed, 150 insertions(+)
---
base-commit: 44982d352c33767cd8d19f8044e7e1161a587ff7
change-id: 20260220-raspi-dts-updates-cb11bf3f8742

Best regards,
-- 
Gregor Herburger <gregor.herburger@linutronix.de>


