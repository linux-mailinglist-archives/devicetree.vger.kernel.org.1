Return-Path: <devicetree+bounces-268682-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mOZ9F7UKoGnbfQQAu9opvQ
	(envelope-from <devicetree+bounces-268682-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 09:56:21 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [IPv6:2600:3c09:e001:a7::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id EC8361A2FD5
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 09:56:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 364BA3027E3B
	for <lists+devicetree@lfdr.de>; Thu, 26 Feb 2026 08:56:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98365396D05;
	Thu, 26 Feb 2026 08:56:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="QQkVUKFf";
	dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b="W/6z7IE8"
X-Original-To: devicetree@vger.kernel.org
Received: from galois.linutronix.de (Galois.linutronix.de [193.142.43.55])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D54F30E0F2;
	Thu, 26 Feb 2026 08:56:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=193.142.43.55
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772096167; cv=none; b=MI3CXp4TGzj4MTXRrg084gZ/gLHADXolxai/26UUSbbSWwDolNblaxl+ZnR5spkN6bpJ8lkjY2r2RhijdVLL8+Sti4+wLFqHIXvu6B3edo9Gj0CuPU4fHhpRnbLp43+nmOxU3npad30aTyEhVI/SrlZXTauZ/XlB2d182gLyxG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772096167; c=relaxed/simple;
	bh=4yhwJHqJ8mRGZwRqgzheUigdPtyQBU400qjbkzPeQbg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=VPyL8fnVAjFViN7sNtZ8vAXqXZ1Ovj9TIcJESTxP8voqXi73XKzUxryEVO14MaDF1QYTcA/b5m4XYiYhd4s4NGxV5xS7Nc5fM1vM0zin4FF2WmGIyv9KeLyMzcg1FTVFCLVunVXK4tnWFO5RZr0GhXPmQTMQF5QQ2eGVmh10kKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de; spf=pass smtp.mailfrom=linutronix.de; dkim=pass (2048-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=QQkVUKFf; dkim=permerror (0-bit key) header.d=linutronix.de header.i=@linutronix.de header.b=W/6z7IE8; arc=none smtp.client-ip=193.142.43.55
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linutronix.de
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linutronix.de
From: Gregor Herburger <gregor.herburger@linutronix.de>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020; t=1772096164;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=dLPqE0j6hp14YDJfWRRlBQ9s7sIP3JqSbJujXTK94MY=;
	b=QQkVUKFf+GnE5OnlECGNuAz5CmGJ2fdqGToowYQvLhheozd1Qvq/116NPVHZGyPzWdZB/F
	OCjuXSIrg5OocxOSGRbl3Acc0h0MCoJtrvUhggFY9xfTMWHl6v7Aof8bvnYc7J8bVl4J12
	Hnk76OoBkje2VSu3chE4LSHswzGBBiX0pLpKOl1OjPU573A8WYHHDcUpEmiGIoHzaMcSVw
	KE3nxS8Ka5KW+QZTGN7uFOMLTd0RnQg5UWt1Ud/0HCOl0DwyrGXstDR49Bii5JR2EA4Mo8
	5lYgRvPkXsP9mV50jtaXpoaY2D29bPVMqnyBQT8kVHTv/OAD4IVS2cDqR4F8Yg==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed; d=linutronix.de;
	s=2020e; t=1772096164;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=dLPqE0j6hp14YDJfWRRlBQ9s7sIP3JqSbJujXTK94MY=;
	b=W/6z7IE8a+EU5+PLedv/uBfvNOCezZBjNAdgwNlSStx8clkxM06PZgtRycvuu6Iii+IzrU
	foCkPjLH1/XH48Bw==
Date: Thu, 26 Feb 2026 09:55:56 +0100
Subject: [PATCH 3/6] arm64: dts: broadcom: bcm2712: add camera backend node
 pispbe
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260226-raspi-dts-updates-v1-3-60832d20ff04@linutronix.de>
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
 bh=4yhwJHqJ8mRGZwRqgzheUigdPtyQBU400qjbkzPeQbg=;
 b=lltfORfUj39o0ujhdEIHlUztFsoa2ypY1+8DsqBODq2uz8ckKO+H/vdA1uDUONvHpfOzfsSyN
 Ktaf0n9pGQqCPV6B6Mxx/Cj0Mpv/SQC2w0a1ePAtjDy4PRCHebKQKpZ
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
	TAGGED_FROM(0.00)[bounces-268682-lists,devicetree=lfdr.de];
	FROM_HAS_DN(0.00)[];
	RCVD_COUNT_THREE(0.00)[3];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[linutronix.de:+];
	ASN(0.00)[asn:63949, ipnet:2600:3c09::/32, country:SG];
	MISSING_XM_UA(0.00)[];
	NEURAL_HAM(-0.00)[-1.000];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[gregor.herburger@linutronix.de,devicetree@vger.kernel.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MID_RHS_MATCH_FROM(0.00)[];
	TAGGED_RCPT(0.00)[devicetree,dt];
	RCPT_COUNT_SEVEN(0.00)[11];
	TO_DN_SOME(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[linutronix.de:mid,linutronix.de:dkim,linutronix.de:email,sto.lore.kernel.org:helo,sto.lore.kernel.org:rdns,59.168.55.128:email,59.185.78.128:email,59.156.201.184:email]
X-Rspamd-Queue-Id: EC8361A2FD5
X-Rspamd-Action: no action

The bcm2712 found in the Raspberry Pi 5 has a PiSP Image Signal
Processor back end image processor.

Add the relevant node to the devicetree.

Signed-off-by: Gregor Herburger <gregor.herburger@linutronix.de>
---
 arch/arm64/boot/dts/broadcom/bcm2712.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/broadcom/bcm2712.dtsi b/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
index 69bd2934b93b34fef27989f9ddcd8a860979ab5f..98cb2173137ecda89d7f7ca1456598ff27231196 100644
--- a/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
+++ b/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
@@ -648,6 +648,13 @@ mip1: msi-controller@1000131000 {
 			brcm,msi-offset = <8>;
 		};
 
+		isp: isp@1000880000  {
+		     compatible = "brcm,bcm2712-pispbe", "raspberrypi,pispbe";
+		     reg = <0x10 0x00880000 0x0 0x4000>;
+		     interrupts = <GIC_SPI 72 IRQ_TYPE_LEVEL_HIGH>;
+		     clocks = <&firmware_clocks 7>;
+		};
+
 		v3d: gpu@1002000000 {
 			compatible = "brcm,2712-v3d";
 			reg = <0x10 0x02000000 0x00 0x4000>,

-- 
2.47.3


