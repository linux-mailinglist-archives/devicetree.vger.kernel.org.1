Return-Path: <devicetree+bounces-150003-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 01EFAA40F0E
	for <lists+devicetree@lfdr.de>; Sun, 23 Feb 2025 13:57:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 66DCC177CF9
	for <lists+devicetree@lfdr.de>; Sun, 23 Feb 2025 12:57:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5A5B8205E06;
	Sun, 23 Feb 2025 12:57:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmx.net header.i=wahrenst@gmx.net header.b="anBOluLL"
X-Original-To: devicetree@vger.kernel.org
Received: from mout.gmx.net (mout.gmx.net [212.227.15.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B446D204F66
	for <devicetree@vger.kernel.org>; Sun, 23 Feb 2025 12:57:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=212.227.15.18
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740315464; cv=none; b=MvwK7+Esi169yvHfmsP7YjxJy8rt4LOGVYo4Zw0HAh72Oah4yDyLL2JnqM/6GuneO+KKW8zJPeCBaPZWShPSjHoLgqcdco1Iey/I2/N095Hbf3OUaJleK7pU2QjlRPO1Z2EgmggHNDI79Up4v6Z+1J98pk2sJW/FHR+H1rbJ6mQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740315464; c=relaxed/simple;
	bh=SMn09RpxP+QNUPbSDxppteLU+IZEdHazClaEEXYseZQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=INUSuSjsZ4GHiQHf0Msx7Jc6YNZj6yR+UyBxX5IJjDR1px99o9qn3AAO3+fFgXpFkJpot5i/POMHDp95eK16ti+C70+4VU2r9OT2GZFVO4J2SOx9ToHOaQkxgrxp0FB6KOVVu1gczDhfLlXttXcnDZY96DU6SzBvRy54z2w8ycs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.net; spf=pass smtp.mailfrom=gmx.net; dkim=pass (2048-bit key) header.d=gmx.net header.i=wahrenst@gmx.net header.b=anBOluLL; arc=none smtp.client-ip=212.227.15.18
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=gmx.net
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmx.net
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmx.net;
	s=s31663417; t=1740315459; x=1740920259; i=wahrenst@gmx.net;
	bh=8J+PKjc+NReJM4/FI1A0ltbjbh5SjWAEF1Rzb2YKYsY=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:Message-Id:In-Reply-To:
	 References:MIME-Version:Content-Transfer-Encoding:cc:
	 content-transfer-encoding:content-type:date:from:message-id:
	 mime-version:reply-to:subject:to;
	b=anBOluLLuhFVb6CuqkmueMYq3eyIKNRGaiA6WZ2DUB3k5xVDdG4wJtYS7TbrYi6L
	 9JztbwPkHTU4wiTuXR+7TnW8JNuTucje2THuqBUn85bpapWbk8tNCzDPv8iwmVE+4
	 OXuA9V9R0BdKuTCqugHTk1VBNgTOXHLlQVnvqYOmwc9QxyGHrJi/JmMMYiO+mnfCt
	 21TT9z2J9f15oCPCt4ywCL3NoSTQMOiS620k7BwE+hHRSZs6+rfhD7myRTN0Z0tTm
	 b4WczasDDBK7pcN/2/ycwDzuJoBffw5TstMJAyKjQeyJ7lvf2SNBlu75XNvNG00Ep
	 TY5IYDuhzZRYghEP7Q==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from stefanw-SCHENKER ([37.4.251.153]) by mail.gmx.net (mrgmx005
 [212.227.17.190]) with ESMTPSA (Nemesis) id 1MwQT9-1tVcZT3Rcz-00zXSI; Sun, 23
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
Subject: [PATCH 2/2] arm64: dts: bcm2712: PL011 UARTs are actually r1p5
Date: Sun, 23 Feb 2025 13:56:14 +0100
Message-Id: <20250223125614.3592-3-wahrenst@gmx.net>
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
X-Provags-ID: V03:K1:t8kfKO0oF0vOc0glQ96u+r/BGafTmhu6cgmV9ethU0tDCqFDeQM
 eNos1pyd29c+CrLifsBtkqvg7z7SjSnhC/2yUML8qvS9ZHqOf1imLJj14qGgfARz2xZXI9P
 B/HlkiQ8vAC5IzSbmUxhATZHSFkCVgpqqIhxNxdHFLKXyR6qT3pS02skLn01UyXLOi+LqzS
 MDD+N6DWN6ATe+4yZF/XA==
X-Spam-Flag: NO
UI-OutboundReport: notjunk:1;M01:P0:7+vLiNj2Anw=;tgo/BHSI1E6YudW043hdjQ07MXm
 y/M++YnkolTsxfmk0OhKtVCIFsp/FzV7m8wP5FWCPRxUOaoqNl3lh9sMaKscCidHS/Pkjaaby
 Evc33SLFXdtBiLiy38VHayEyPegBUu6FjJS8ejagUYg1ROMAC9TjQ5RC+Sj1RlO3A6ILZfoh3
 wN2shnv8fLxDObd9c37L87AmtsOm0X3ND/eF8WGpL8sWXjKbLnXj3erZ0Gg8ojRnl4/HqX0jQ
 LjRh66hQnbNJPL83hHvsWE+itmr4fViNxwaDWyLKLJM4XZcFGQmwILir4y1S1KJr6wMWQLlA0
 S3rLTLehBNxy19S9pKB3/0iA397jTx0uwxyoOknpuZPwVWyiXAOu8tgkEI914Bdk5bSGpwLm0
 /W0K1IG7NXXQBpkxYJXHK8figbpMqXTGhGs+RoD17N/dimPXlc2G3rhG9RE3uwEQLur4X+NWW
 92QpUp/1pwbcD5ZORabD94/arnc5B6hnGcFcoGmDxEABbUxAXYdJAIvNBLol7P0FwPbwCN5y/
 hivYcnaP4lzhKI9MEM0EYJaPv8zjpcftx/B57aMIY37XiMYGyPfvgz0g8d+RmsevsEKMWbSzm
 9pjXN/2UApLsSU8L6ON7IEzFcgVo+5dFxZaWTNQHNd+7LnZM9ji6qYyalN6UKOqPzqCigFDzP
 Kjcd25/jbSI7sGbH4POXRphAMWfglMmoW6G2ZPxOYAOIkUgTR151m31Vfc4txgqIctODygCYr
 0wzmh9At0jIFUjBlr1pg1MbdrvmOCQy0jr7v+OXZxA1r/JdmDxWEhjRdvqPzFX5GybzglP3Do
 nxwGh1hANhVtujpt52UMyKWGh1pgVQWbcaLRvGgR/AheeY3LeGpX5GDy1zmNlfU/bpSz1zf5x
 3dMHSYxnFVIN0uuNoykb5v0h6n/AOoUNX18H/JJo+VlWSuzHt+Xe/46uKklBUB4lI07tjb6m8
 W60Dl8wVtvrbfGx535xLYtvCYCF4T0mE87/UPl+kYW0o0QoJNT3A1Qj071XS+BPNtIZ5FOTlC
 BwKjmelR4KXYDfWyqVbF7Yut6p78UFEaRmxKwLSJylAs05Y0Pdb9EERTV0H4raI99S8v2Igh/
 tZydZ/LiFq7pzTEEP8x6U3gCiQ4OBNKHHpl1O/xhFu1+BTAYaUPjf+9uBC4gTyd9vCa29Ijxz
 JnhB1//nu0lEiGsOW/B0WqjUS1/MEEOpkGv2km2MYZ/ZKGIi7a7dnUCKGf7PYSD1Xk+QkbkNR
 nTq76+a0fa+eCeUvQ2KbRESWZs3cyrbnz9QTLrhn+mYiqi0UXp0NWf6/pR3X77AVQUzGnXfQg
 buxaDGDl0ViK8EE8Df1uesQEeBBxbwwAyupMtLocvjTfZOSwS6jxAqikkKqeLBxmESliRUU0r
 RYFzuh/5oR5+wD6Y/HYfmlob/I27ixYBdQCmM0rOI3afSK8Fjn3+XNeqmN

From: Phil Elwell <phil@raspberrypi.com>

The ARM PL011 UART instances in BCM2712 are r1p5 spec, which means they
have 32-entry FIFOs. The correct periphid value for this is 0x00341011.
Thanks to N Buchwitz for pointing this out.

Signed-off-by: Phil Elwell <phil@raspberrypi.com>
Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
=2D--
 arch/arm64/boot/dts/broadcom/bcm2712.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/broadcom/bcm2712.dtsi b/arch/arm64/boot/d=
ts/broadcom/bcm2712.dtsi
index 689c82b7f596..9e610a89a337 100644
=2D-- a/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
+++ b/arch/arm64/boot/dts/broadcom/bcm2712.dtsi
@@ -227,7 +227,7 @@ uart10: serial@7d001000 {
 			interrupts =3D <GIC_SPI 121 IRQ_TYPE_LEVEL_HIGH>;
 			clocks =3D <&clk_uart>, <&clk_vpu>;
 			clock-names =3D "uartclk", "apb_pclk";
-			arm,primecell-periphid =3D <0x00241011>;
+			arm,primecell-periphid =3D <0x00341011>;
 			status =3D "disabled";
 		};

=2D-
2.34.1


