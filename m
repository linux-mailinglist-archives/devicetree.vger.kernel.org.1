Return-Path: <devicetree+bounces-148109-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5AECFA3A822
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 20:55:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B17A43B443D
	for <lists+devicetree@lfdr.de>; Tue, 18 Feb 2025 19:53:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A1B6271260;
	Tue, 18 Feb 2025 19:52:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b="T7/HkoVm"
X-Original-To: devicetree@vger.kernel.org
Received: from gate2.alliedtelesis.co.nz (gate2.alliedtelesis.co.nz [202.36.163.20])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 97AE126FA5A
	for <devicetree@vger.kernel.org>; Tue, 18 Feb 2025 19:52:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=202.36.163.20
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739908359; cv=none; b=r40ghfOJmvNjtxyaXF7aL9fmd28WE6xKuaxfvuQCgin2dJdz6Sqaw27zQTJH8zXErbInu3GSh43RBfHY3crhcXGZZpHi9qwdtSQhrqUcme3JLFiyxqxjl6ptRn0NfU1+ssqL/K0Zccz1G22nGE6Xjo51Azwx+zuKlnCW2Y9NDn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739908359; c=relaxed/simple;
	bh=ruLYddTOT07Jf51VjD0tiKsSuUPQNuBrVQvIum8QX0U=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=BIgIREZozx4NxDWN+ryJN3gM8fTMK7QXvxsDH23wXhex/R2JYUXsdQKvX6dKI9IkVS1a2g7VpsjZL4s6Kve152jMTPzqgTxQMavTtzz6NxNSIt9pYwp9abc1Yz3ZMXS+jsEsnD35KO+DlFmuHphY08sLuH8Y86Nm2NmJ/noLy3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alliedtelesis.co.nz; spf=pass smtp.mailfrom=alliedtelesis.co.nz; dkim=pass (2048-bit key) header.d=alliedtelesis.co.nz header.i=@alliedtelesis.co.nz header.b=T7/HkoVm; arc=none smtp.client-ip=202.36.163.20
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=alliedtelesis.co.nz
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=alliedtelesis.co.nz
Received: from svr-chch-seg1.atlnz.lc (mmarshal3.atlnz.lc [10.32.18.43])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(Client did not present a certificate)
	by gate2.alliedtelesis.co.nz (Postfix) with ESMTPS id 568AF2C03C6;
	Wed, 19 Feb 2025 08:52:35 +1300 (NZDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=alliedtelesis.co.nz;
	s=mail181024; t=1739908355;
	bh=7Hz9wEMK0CGbnko5fjaTgnXMWOgCcf1nXU3UkRtjmGw=;
	h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
	b=T7/HkoVmG48jSR4QiMNDox+1DwNfKMtzPvuR8UzZG2jCk7foSLDDHCka4gJk6M2uu
	 yFDG65blLBONh6zr67ZqaWVTr8LKVJMpU1dhlzcrppavXsg4RzKH60ZhRVOOmLJjDq
	 grOVov+GjHOlQqA7M117VdKcOhwlp2adgSOAdIaIFpmgzZOouHJxok0k0H9IGVXwSY
	 O1mKK5MegRBqa7xyJYj7PjNzvyNT/gq7CULsh6lqNrhZMBUAU/32ypfUkDSDAWAkXd
	 JTTmJlQYWSh8kcMCeMZNqDCT19EA5pt6Vx0wo+wcayHKVxNtMpjEHoh6uxWrPPJg5u
	 GYeXe2+VzyWWQ==
Received: from pat.atlnz.lc (Not Verified[10.32.16.33]) by svr-chch-seg1.atlnz.lc with Trustwave SEG (v8,2,6,11305)
	id <B67b4e5030000>; Wed, 19 Feb 2025 08:52:35 +1300
Received: from chrisp-dl.ws.atlnz.lc (chrisp-dl.ws.atlnz.lc [10.33.22.30])
	by pat.atlnz.lc (Postfix) with ESMTP id 2D1FD13EE36;
	Wed, 19 Feb 2025 08:52:35 +1300 (NZDT)
Received: by chrisp-dl.ws.atlnz.lc (Postfix, from userid 1030)
	id 2A1BF2804FB; Wed, 19 Feb 2025 08:52:35 +1300 (NZDT)
From: Chris Packham <chris.packham@alliedtelesis.co.nz>
To: lee@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	andrew+netdev@lunn.ch,
	davem@davemloft.net,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	tsbogend@alpha.franken.de
Cc: devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-mips@vger.kernel.org,
	Chris Packham <chris.packham@alliedtelesis.co.nz>
Subject: [RESEND PATCH net-next 4/5] mips: dts: realtek: Add switch interrupts
Date: Wed, 19 Feb 2025 08:52:15 +1300
Message-ID: <20250218195216.1034220-5-chris.packham@alliedtelesis.co.nz>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250218195216.1034220-1-chris.packham@alliedtelesis.co.nz>
References: <20250218195216.1034220-1-chris.packham@alliedtelesis.co.nz>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-SEG-SpamProfiler-Analysis: v=2.4 cv=ccpxrWDM c=1 sm=1 tr=0 ts=67b4e503 a=KLBiSEs5mFS1a/PbTCJxuA==:117 a=T2h4t0Lz3GQA:10 a=UJtzyOLMF9nqRlb5STYA:9 a=3ZKOabzyN94A:10
X-SEG-SpamProfiler-Score: 0
x-atlnz-ls: pat

Add interrupts for the rtl9301-switch.

Signed-off-by: Chris Packham <chris.packham@alliedtelesis.co.nz>
---
 arch/mips/boot/dts/realtek/rtl930x.dtsi | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/arch/mips/boot/dts/realtek/rtl930x.dtsi b/arch/mips/boot/dts=
/realtek/rtl930x.dtsi
index 17577457d159..beb5ab41cb64 100644
--- a/arch/mips/boot/dts/realtek/rtl930x.dtsi
+++ b/arch/mips/boot/dts/realtek/rtl930x.dtsi
@@ -33,6 +33,9 @@ lx_clk: clock-175mhz {
 	switch0: switch@1b000000 {
 		compatible =3D "realtek,rtl9301-switch", "syscon", "simple-mfd";
 		reg =3D <0x1b000000 0x10000>;
+		interrupt-parent =3D <&intc>;
+		interrupts =3D <23>, <24>;
+		interrupt-names =3D "switch", "nic";
 		#address-cells =3D <1>;
 		#size-cells =3D <1>;
=20
--=20
2.48.1


