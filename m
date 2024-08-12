Return-Path: <devicetree+bounces-93042-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 732BA94F7D5
	for <lists+devicetree@lfdr.de>; Mon, 12 Aug 2024 22:04:42 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9EF7C1C21C6B
	for <lists+devicetree@lfdr.de>; Mon, 12 Aug 2024 20:04:41 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7E6B31922D8;
	Mon, 12 Aug 2024 20:04:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmx.net header.i=wahrenst@gmx.net header.b="rHwUObKV"
X-Original-To: devicetree@vger.kernel.org
Received: from mout.gmx.net (mout.gmx.net [212.227.15.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8897517E8F7
	for <devicetree@vger.kernel.org>; Mon, 12 Aug 2024 20:04:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.227.15.19
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723493078; cv=none; b=k2GXpQnqGoLoovdBhtIeLYbA5ufp2nqyT3SdokIlI87W7PgSuYrdpSMJYjUlChCmqffb3/ZDNcHfBqblWNqD6VeRP4rdz7/n27eQ/iSqc4+jmbtJwuhDPY1FooNM7Ddv48LWrWB+Hq2vQjev6oZAultQqJybGmpNFMB/jOoocqM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723493078; c=relaxed/simple;
	bh=vqZabwZsPrPGl7vezWD4wKtMqaWeb4b6nAm+vsEMC4c=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=XRnXM+WuqrsvhVCGrelwm7fzwz/vHRjo2zBg+IcT9/Q1a92wo1clauK21VLaWrBUFEdgfefzpZdl5jJuXpsurtfJhrSED9LZ+OGFnvh97brqd+cwiixh/5GbwvExx6SWD6gNR2A15HmDOPdtr1C81kF8ut2cjYwIAV/o9o/FSTs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.net; spf=pass smtp.mailfrom=gmx.net; dkim=pass (2048-bit key) header.d=gmx.net header.i=wahrenst@gmx.net header.b=rHwUObKV; arc=none smtp.client-ip=212.227.15.19
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmx.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.net;
	s=s31663417; t=1723493053; x=1724097853; i=wahrenst@gmx.net;
	bh=HO47TQazxXx58MX8h1xTQ87s+WOtD0J4ofQ62CoNhds=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:Message-Id:In-Reply-To:
	 References:MIME-Version:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=rHwUObKVIX+yW8Tb/6ST8af3OZ6xqYYSvpjUyYdKnAl21aoG4bA4p4DGlX02ZU2u
	 4SKNWFsarg9GiHVK6rncGDzO5qm6gTbh41kaDOrNnlV5H3yNhaiDJxxG2JRCgBXnP
	 yqwLGM9lIPhjavcbb6InubTlwmq4siKe/xTlFBfY0Hk763CI16oaaQDtABifJnYfY
	 0ddi74s9U4103ESbpmcAAOyr+LBStct84sffmgp0x6wFSYDm4a8LenG542zPenWo8
	 duJhnpQeKEBr9Oi4y98uKMBZZydpBwugAJ1rmnUKWYbqcCMIRwLLJBg1QWg/NaPqA
	 yhPkE1OwbkyVtuuc0g==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from stefanw-SCHENKER ([37.4.248.43]) by mail.gmx.net (mrgmx004
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MTiU3-1slT6W33AD-00TB9F; Mon, 12
 Aug 2024 22:04:13 +0200
From: Stefan Wahren <wahrenst@gmx.net>
To: Thomas Gleixner <tglx@linutronix.de>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Ray Jui <rjui@broadcom.com>,
	Scott Branden <sbranden@broadcom.com>,
	Daniel Lezcano <daniel.lezcano@linaro.org>
Cc: Andrea della Porta <andrea.porta@suse.com>,
	bcm-kernel-feedback-list@broadcom.com,
	linux-arm-kernel@lists.infradead.org,
	kernel-list@raspberrypi.com,
	devicetree@vger.kernel.org,
	Stefan Wahren <wahrenst@gmx.net>
Subject: [PATCH V3 RESEND 3/4] ARM: dts: bcm2837/bcm2712: adjust local intc node names
Date: Mon, 12 Aug 2024 22:03:57 +0200
Message-Id: <20240812200358.4061-4-wahrenst@gmx.net>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20240812200358.4061-1-wahrenst@gmx.net>
References: <20240812200358.4061-1-wahrenst@gmx.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:u2FTH2ODU1p6HMaMeojYc4DUOCEdNV5hREs+21z/H10jDatXMwZ
 V6ydKOekcouJ3hbEiMYLqLdIsvAik2SHPiZeO3pnFgzRenjDbUeUYAeK7Z4ae+Nv5Pl22y4
 JA6gLlcNaA5Q7uObdgkQ7f2c8jLRBVj8y/jNV8Io2DIcY1VAJ/tmgjnO1IyUcCYWcUPSUd5
 FAh0OpLPb+0O28FSwMJLA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:ModlvcrtSxE=;sTv3LDMACqK7KptpuRtC57BMYMf
 o4juMsQSzUwiOH0YaNmrMvql1jLpRhtk1jshfcQ4+9RQlU2Uy+LuLydryFETT1VJpf1DlvWFC
 jrMUW5qoBd5kHJ5aVwKHcD4FCnvbSal/TO8kkbpnIg8FOo1kAabJ4yNBz27/UPhec+hVeRwjM
 mkBUlG7r/HrZps8iNEN3IiS8xqgtdUIR85ncEliDsdvncLiHtbAOmUxDajQHos5seFRhoa27A
 FAE+oXcnAdggEuxijpa3ggCwtOyaDC7GArEZwMYB1V149K4RhcObLC4FLVhjyuEdTxNIHK/GL
 C4IwD+dZf1aDoMsR+1UUU4IhfGMEmYDTdhbejWVwKPsDWSiiNLdAD96BIal5tMr/xarCULO1Z
 hwaLES+FJOX0Ah0bMniI9jvAAd0hmf19Vb4+qiBuDnFyXC/Us64ejNTFUWxxcRMkSuNiYyFrr
 lhe19j/WqepPehuTPo23w2wDLU9sD8muhYzGx7V/0EUT8rv7G2QJj6iEWvh1s2dZGp0INSRhF
 fLGhX8MRULx8RdnhNWMFRb6y/1umy1d+KH12tUKsQ94DBLENGVOA4pb6bHYQ3YgjZannpM4Ex
 DAbJ1u7MWtrBOacheZqZdEs0VVpNBhD+YuZP4g6OQZ0Mi9uDhNZk6j8UegmgfsQAsU0SaPzsg
 4xZFd32XLH852AzdimoYmb0bBEr5yTWeFiAFb5WPARFfjBKQN5vmLeMXpotnBHrQp3X+SxNvM
 piIG/CgZs7AqqRKBcTqg1XhyG7VgI9U3mdkjHAqlxBzocOeubqJNQyAMun3n+hsfValUl+qet
 N68NAZdKbkLWHYF1DZStYsyw==

After converting the bcm2836-l1-intc DT binding to YAML, the DT schema
checks gave warnings like:

'local_intc@40000000' does not match '^interrupt-controller(@[0-9a-f,]+)*$=
'

So fix them accordingly.

Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
=2D--
 arch/arm/boot/dts/broadcom/bcm2837.dtsi   | 2 +-
 arch/arm64/boot/dts/broadcom/bcm2712.dtsi | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/broadcom/bcm2837.dtsi b/arch/arm/boot/dts/b=
roadcom/bcm2837.dtsi
index 84c08b46519d..c281697142b1 100644
=2D-- a/arch/arm/boot/dts/broadcom/bcm2837.dtsi
+++ b/arch/arm/boot/dts/broadcom/bcm2837.dtsi
@@ -9,7 +9,7 @@ soc {
 			 <0x40000000 0x40000000 0x00001000>;
 		dma-ranges =3D <0xc0000000 0x00000000 0x3f000000>;

-		local_intc: local_intc@40000000 {
+		local_intc: interrupt-controller@40000000 {
 			compatible =3D "brcm,bcm2836-l1-intc";
 			reg =3D <0x40000000 0x100>;
 			interrupt-controller;
diff --git a/arch/arm64/boot/dts/broadcom/bcm2712.dtsi b/arch/arm64/boot/d=
ts/broadcom/bcm2712.dtsi
index bccb7318ce7e..6e5a984c1d4e 100644
=2D-- a/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
+++ b/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
@@ -221,7 +221,7 @@ mailbox: mailbox@7c013880 {
 			#mbox-cells =3D <0>;
 		};

-		local_intc: local-intc@7cd00000 {
+		local_intc: interrupt-controller@7cd00000 {
 			compatible =3D "brcm,bcm2836-l1-intc";
 			reg =3D <0x7cd00000 0x100>;
 		};
=2D-
2.34.1


