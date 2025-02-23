Return-Path: <devicetree+bounces-150005-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DD500A40F10
	for <lists+devicetree@lfdr.de>; Sun, 23 Feb 2025 13:57:59 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D2F731898E4A
	for <lists+devicetree@lfdr.de>; Sun, 23 Feb 2025 12:58:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1309A205E31;
	Sun, 23 Feb 2025 12:57:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmx.net header.i=wahrenst@gmx.net header.b="kD4TUfWZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D2EB020550B
	for <devicetree@vger.kernel.org>; Sun, 23 Feb 2025 12:57:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.227.15.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740315472; cv=none; b=Ff+zV8OVFYt+wP9DGCOE5P+cI3E/1TdlnjR17y30EPxRV6D2WsitGd1d+V5/lIBjHIrTLyykeg0NZ/Qo8zUk/nYnNZOJVRW6spX080LkLEK1CeBsJK2XvAMu8y1LBNztHOJxMYP1fjReHwcbBpClQQEvai5FEiXCPsLj4MA8p+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740315472; c=relaxed/simple;
	bh=Dwf9gb4ujmcGnNJEx5bZ/Qevkhq/j2XVCx/f7a980+g=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=IfqBtDyJisRsW5V01UsPV8aSzrXik8pDN0EUJjVav95bCXdDiVH/2MSJ65nptyBtQXoz4Uip4esL0bCzrReAOIHDoQtaQSCAtEK8WUq8Eqj4iPyWWPAHvXtySMhtPrDYkBqgCkcG0jmnGUwqKoCoFNG/0ECi1lMc0IZPmM66Mb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.net; spf=pass smtp.mailfrom=gmx.net; dkim=pass (2048-bit key) header.d=gmx.net header.i=wahrenst@gmx.net header.b=kD4TUfWZ; arc=none smtp.client-ip=212.227.15.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmx.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.net;
	s=s31663417; t=1740315458; x=1740920258; i=wahrenst@gmx.net;
	bh=zc5CpEky2NIZDfhanuWrTwGiO14SFMDkXoWyMl5EyRg=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:Message-Id:In-Reply-To:
	 References:MIME-Version:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=kD4TUfWZEP27ktDphP6TLIFtLqDAzh/XdBN1DU2rv93CzPK5PP6DzyqeH/xwBjMT
	 QVRs8mYAUtqx/DRayVHe5CAmACjLz0VvhNz13RSU7ILIHPDAkb9ZX1H0nbgke+0mM
	 wpGDHtlAFhLhJEd3BiX/BX9tVw99QIbo3JgrHFuCS5rbT/64tsKF51pta4awIWK55
	 senSMSqAngAeBuvytM8HymE1vVPxx5zgB7Nsq+kr6cxL9oeo7Q1XIKdyPYazTS/f7
	 sc+TdKnmcWElVKej1eAeVFKUgqLNANEUQL5h9YOuE+Ed8H88k1Yz4kRhXcfzf9XP6
	 MezJlKjHHt02Q5szMg==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from stefanw-SCHENKER ([37.4.251.153]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MXXuH-1tojqn1mut-00RtW8; Sun, 23
 Feb 2025 13:57:38 +0100
From: Stefan Wahren <wahrenst@gmx.net>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>
Cc: Phil Elwell <phil@raspberrypi.com>,
	linux-arm-kernel@lists.infradead.org,
	bcm-kernel-feedback-list@broadcom.com,
	devicetree@vger.kernel.org,
	Andrea della Porta <andrea.porta@suse.com>,
	Stefan Wahren <wahrenst@gmx.net>
Subject: [PATCH 1/2] ARM: dts: bcm2711: PL011 UARTs are actually r1p5
Date: Sun, 23 Feb 2025 13:56:13 +0100
Message-Id: <20250223125614.3592-2-wahrenst@gmx.net>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250223125614.3592-1-wahrenst@gmx.net>
References: <20250223125614.3592-1-wahrenst@gmx.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:tJfhFtLlSGhjDfQBOf4zyVel94Tr2+RePyIQd+wtxYdxooAheJi
 AVO1n0o1lTf1wTOOQiNNpvqnKbJva6Kge82l7FuVljgP3iNjXDqLAsuTXlrOuBtxw4sz7c3
 lfIy/xA7G20FvQclkUmd/BtU/mVe6tA2Y+YU9hS3wkBHH90JfpvXDWuKMNbHoJU0/8A5eV6
 1lbwInj8sAw6B29+NhUog==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:epv+g7wgT2U=;PxNsoeA0w2+4YjCTVlJt4Cvp+aM
 nNcR231aF95ttCymSmoY/EGQGW2uZD7kjT6ShKy7oQraX9Ae5USywcyfPXCv+GaSGNiH6rmH3
 qPrXwIMyECD9/WU8Eo8390pKx1ns7moZKhCIlruYnHLvRHsscCJDpHKpUV5kogBqyhvNIj65+
 EWQQc9FsZA46goztD97RaVH6gmpAbrrQKJP/hlUiX8v7/vnWkypzD9n7HGVwIV3UHaC1dPgZQ
 ccznzb6yufEN7sxxwjISsPTf84sdwtbXqQPh1QbsMHQI+ujYri2GV/kHSqeRqYFzpRKv7b6ti
 ueC/Q0PD53AXl2gFsZkcYbExsSBx0qAmm7R/UQYMFjzDD4KDIOEbZBXF0tTORQCJF95+oiHuy
 exLa8RaxdeHO8y4eltJz5+251i+cuUt4VkYxTTXawrEel8bes034aMjddG7K+JOBScz7+YBsg
 BMlfry9eryq7aWxhWQc8ORdENOfqh1Yoq7N4hbVLl0u5RRYbL+aYdsgloYqjyFqY4YhedOdEn
 aQ72BpmknYdvoR2bRELaOjuhjODarIRXKohXflSJOMmP+ULylpRmjTwMgLn8drfI7scsh/s1/
 6qHi8rsl5tlH5+YrP18WciuI3Bhzcj4BW77klWsk/OlcLvq6tByosctxFv+qg0EPrbVuQxhdx
 irtiHBCAgnSrPFJ2UMgobWAHFixUWLR/e7OJg8D9htP12X8NMfZVFJfBv2HKhIJ+WZHTxvxZ5
 NzrdCV5R4fWXNuHVoOaYjcGOVbVg+FcgT06/N2ndTrTBM5b29veI7jx4gVM1AtBcGp7xKCN/M
 3/4ktP9KSsSdq9Mi8SNpLNpWggpFI1FJYl0GECtylZgGjGpdcjR/wKICfdhySX9J84mp+7k4K
 nOD1bTspBmdG+7OhsqZ66QdCVSJ4XDBGD1KbeCY7FTdBzJU5kZY5z0n7rOEG8T8emuJ2Kzn/B
 PHtwb0s8qNbCXLokVF2NBY8n0qGXt7oki0Nw+tsHqtyWJ0GUo5adSdc0C/ct4p/OxBuh1GhHA
 aIta7hEUh3cssFQP8AiGn6RwTRrPLYVWzsM/lyMFKHuN88EWXwUw/O0em0oX6VO7TAnEstb+s
 XFzHczei+vuhTiuT70YRCExD+ceYxJg+BWGuxVIRZwuqFai9hpGzO2ukBnqAATpli41juyscB
 dFhxUHdRKng6yXOKeavWz+IDvqQPZ657yx1nZqeNrVKbIkqhKlUcUDN17vW26fIdK7DO/okY+
 kVjFGlK3tdW+dMumj8ILNIiHHCDF0Ac5fSe/zH6nmMGUFNhKM++p8hfQ0UOViIVcWxmc3TJi6
 5tPePqFVBmg/T3N1jCxMfB+D172Umjw5c5LAwF2jP1CpRzFf3DsaNzHtaoA2cIdn9BnQqUBAM
 d4iNNipwE0+9fcOD/+0Gk3qda11lb0xxr2K/JfsO7uD3s4SNiKuMPX7VUB

From: Phil Elwell <phil@raspberrypi.com>

The ARM PL011 UART instances in BCM2711 are r1p5 spec, which means they
have 32-entry FIFOs. The correct periphid value for this is 0x00341011.
Thanks to N Buchwitz for pointing this out.

Signed-off-by: Phil Elwell <phil@raspberrypi.com>
Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
=2D--
 arch/arm/boot/dts/broadcom/bcm2711.dtsi | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/broadcom/bcm2711.dtsi b/arch/arm/boot/dts/b=
roadcom/bcm2711.dtsi
index 7cf93fdc676c..cdccdef267f7 100644
=2D-- a/arch/arm/boot/dts/broadcom/bcm2711.dtsi
+++ b/arch/arm/boot/dts/broadcom/bcm2711.dtsi
@@ -134,7 +134,7 @@ uart2: serial@7e201400 {
 			clocks =3D <&clocks BCM2835_CLOCK_UART>,
 				 <&clocks BCM2835_CLOCK_VPU>;
 			clock-names =3D "uartclk", "apb_pclk";
-			arm,primecell-periphid =3D <0x00241011>;
+			arm,primecell-periphid =3D <0x00341011>;
 			status =3D "disabled";
 		};

@@ -145,7 +145,7 @@ uart3: serial@7e201600 {
 			clocks =3D <&clocks BCM2835_CLOCK_UART>,
 				 <&clocks BCM2835_CLOCK_VPU>;
 			clock-names =3D "uartclk", "apb_pclk";
-			arm,primecell-periphid =3D <0x00241011>;
+			arm,primecell-periphid =3D <0x00341011>;
 			status =3D "disabled";
 		};

@@ -156,7 +156,7 @@ uart4: serial@7e201800 {
 			clocks =3D <&clocks BCM2835_CLOCK_UART>,
 				 <&clocks BCM2835_CLOCK_VPU>;
 			clock-names =3D "uartclk", "apb_pclk";
-			arm,primecell-periphid =3D <0x00241011>;
+			arm,primecell-periphid =3D <0x00341011>;
 			status =3D "disabled";
 		};

@@ -167,7 +167,7 @@ uart5: serial@7e201a00 {
 			clocks =3D <&clocks BCM2835_CLOCK_UART>,
 				 <&clocks BCM2835_CLOCK_VPU>;
 			clock-names =3D "uartclk", "apb_pclk";
-			arm,primecell-periphid =3D <0x00241011>;
+			arm,primecell-periphid =3D <0x00341011>;
 			status =3D "disabled";
 		};

@@ -1175,6 +1175,7 @@ &txp {
 };

 &uart0 {
+	arm,primecell-periphid =3D <0x00341011>;
 	interrupts =3D <GIC_SPI 121 IRQ_TYPE_LEVEL_HIGH>;
 };

=2D-
2.34.1


