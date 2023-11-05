Return-Path: <devicetree+bounces-13904-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 243297E1427
	for <lists+devicetree@lfdr.de>; Sun,  5 Nov 2023 16:50:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2F6E21C209CB
	for <lists+devicetree@lfdr.de>; Sun,  5 Nov 2023 15:50:35 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 73F3C1119D;
	Sun,  5 Nov 2023 15:50:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmx.net header.i=wahrenst@gmx.net header.b="qyxjDqzT"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AAB2EFC06
	for <devicetree@vger.kernel.org>; Sun,  5 Nov 2023 15:50:29 +0000 (UTC)
Received: from mout.gmx.net (mout.gmx.net [212.227.17.22])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 255ECEB;
	Sun,  5 Nov 2023 07:50:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
	s=s31663417; t=1699199407; x=1699804207; i=wahrenst@gmx.net;
	bh=uE3UgaMWX691oAfqe3827yIFDo67qS1ai4DImMS0WyQ=;
	h=X-UI-Sender-Class:From:To:Cc:Subject:Date:In-Reply-To:
	 References;
	b=qyxjDqzTe6CkwKH4t4pExQHehM3dRSOJGYz1DuFAg1szidA/2FdA/jPzL0RgVkbV
	 pJ1AitIcwVQiEG7yvEvLwmJLZgayT/M4F1O8HqD4ukVTnQ295gmFfUQ8EesIvv449
	 aMitE43e4IsMRox4Ek8Y4kh3PscUDZNdGuXyLebe6xmzN7aWETGQYtMwpr6/mTvNP
	 zQzWiakoYY9lMrasfEcICgbg0YJUU41voA7uP+IvS9bhJsT2yzCCZv2GVqv1r8L9y
	 awxTnFQ9TzuDgQ8rmNhq1uKe0PTEX1r6fsK6LjvtUuwVL/bio4MtdWv8Iz+pQhuhI
	 xmSZLkcqMkvggyIEeg==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from stefanw-SCHENKER ([37.4.248.43]) by mail.gmx.net (mrgmx104
 [212.227.17.168]) with ESMTPSA (Nemesis) id 1McH5Q-1rZp110qa4-00cgRM; Sun, 05
 Nov 2023 16:50:07 +0100
From: Stefan Wahren <wahrenst@gmx.net>
To: Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Florian Fainelli <florian.fainelli@broadcom.com>,
	Pavel Machek <pavel@ucw.cz>,
	Lee Jones <lee@kernel.org>
Cc: bcm-kernel-feedback-list@broadcom.com,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-leds@vger.kernel.org,
	Stefan Wahren <wahrenst@gmx.net>
Subject: [PATCH 2/2] ARM: dts: bcm2711-rpi-400: Fix delete-node of led_act
Date: Sun,  5 Nov 2023 16:49:40 +0100
Message-Id: <20231105154940.97688-3-wahrenst@gmx.net>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20231105154940.97688-1-wahrenst@gmx.net>
References: <20231105154940.97688-1-wahrenst@gmx.net>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:yE+EMzZ0PR2YLKgEndDFQodmVFovqB414WbBD1C9qQ+A+8/gjuo
 //PQfm6b4pGhNkJ6xcoUQSWVy3uLFzZvcnT63BdTH5Fd8gN9faaScbM/xIBa/zhk5KAZGUz
 DWhZiSKXl222Gc3CWBPBycSd4vAD+lM2SxeHBMxzjDPhgoUxGpNVlHS9BijMTCn/Zpr/hgD
 CIucu/YEjdlM1zBvk8X9Q==
UI-OutboundReport: notjunk:1;M01:P0:oox4eGqyIoE=;IAyfsC81YxD0LyoyaNG9SZs4sP4
 0eG2SjqnHL39KzNxpbBjDp9yJWMBcp5pDtsLh1vmJ3MEJOqEnEMv0tcrc9ZIbAtBxv5x+4jje
 Jv0wB8uW4flpAiHTAto3HAb2pwWzMEsTyzNfiR19bKKoRrMA9aUfIEubI+ovoJUGDBHsYsbr4
 N7c/juyeSgwBFyD4cCkzJhpOlEMIsYIgWsNgLJrDPJLx3t5nNioRfJbIle57KXN9dQ9muNLwk
 GBFzXd5uPGJp46oTRBQXBySie/CwMETyN1Rg/PMgfKiBYk28S4ixq3kYFgUl8Lfdbg1eD5vY9
 mkVA8wx5QeRXi5NNtYdeMYFrJrOKDBDSTreCPYKVlF5+/yjd3A2yMiO9KiDsCSCmMLM8obwGx
 6CHvZdBMNsqpEg+IpdfVQMP5b+2p6YYRxSfmI75MwEpIeC0EtjFtSSESiHTBJ3wJcIo5Bjt21
 vwX56VhUd3/poeduxVzSGc8i91uLqhcrZERnQfP7q+o1wjn7o9BKqVP2UXIMD8yz/EzaDucMg
 3d4RazkXyLl84xKMoTK/u0rbbs4GwtzUqQNpazLwvJHCiAzlT+rbeKIJqayCgrw/dL/+e9H7Q
 4VbU82L0khL4ih4qW+JbFc1gZdYJefN7h39A5L5DN3ozFaRpVwyKfafToQR1CK+4U3bbmpS2N
 ObWaqISNoonJZvtqE+pUP3QtXiF02wHA6VeAj5zkbpGMFXCRCqR2crllePk/AqLdJ6QsQ+bax
 EIBRGJzOTqBPGvBZ7+TYC+NA1rj9//B7V6+eMUbdM4DIhvlrGya36txUCBFIehKy24ZWhA/od
 wXjNPVNi7UYOylsDCdzUs3SKEwv9KiSAFWRI/EGzKjmLrR6Df/KhcGrajfokmYbBDefgbNARj
 qjPIPm1jJPviVUHiFmVbovuix4cuUTD0alyvt9ygHoFmgsYazNTXcsLzdAIup5813DrPBfpSg
 G/AoIg==

The LED ACT which is included from bcm2711-rpi-4-b doesn't exists
on the Raspberry Pi 400. So the bcm2711-rpi-400.dts tries to
use the delete-node directive in order to remove the complete
node. Unfortunately the usage get broken in commit 1156e3a78bcc
("ARM: dts: bcm283x: Move ACT LED into separate dtsi")
and now ACT and PWR LED using the same GPIO and this prevent
probing of led-gpios on Raspberry Pi 400:

    leds-gpio: probe of leds failed with error -16

So fix the delete-node directive.

Fixes: 1156e3a78bcc ("ARM: dts: bcm283x: Move ACT LED into separate dtsi")
Signed-off-by: Stefan Wahren <wahrenst@gmx.net>
=2D--
 arch/arm/boot/dts/broadcom/bcm2711-rpi-400.dts | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/arch/arm/boot/dts/broadcom/bcm2711-rpi-400.dts b/arch/arm/boo=
t/dts/broadcom/bcm2711-rpi-400.dts
index 1ab8184302db..5a2869a18bd5 100644
=2D-- a/arch/arm/boot/dts/broadcom/bcm2711-rpi-400.dts
+++ b/arch/arm/boot/dts/broadcom/bcm2711-rpi-400.dts
@@ -36,9 +36,7 @@ &led_pwr {
 	gpios =3D <&gpio 42 GPIO_ACTIVE_HIGH>;
 };

-&leds {
-	/delete-node/ led_act;
-};
+/delete-node/ &led_act;

 &pm {
 	/delete-property/ system-power-controller;
=2D-
2.34.1


