Return-Path: <devicetree+bounces-17303-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 457EE7F1FB4
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 22:48:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 011A8281E84
	for <lists+devicetree@lfdr.de>; Mon, 20 Nov 2023 21:48:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 94C1238FAA;
	Mon, 20 Nov 2023 21:48:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=email.cz header.i=@email.cz header.b="u2/Ex8R9"
X-Original-To: devicetree@vger.kernel.org
X-Greylist: delayed 121 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Mon, 20 Nov 2023 13:47:52 PST
Received: from mxe-1-ab7.seznam.cz (mxe-1-ab7.seznam.cz [IPv6:2a02:598:128:8a00::1000:ab7])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3A9DED;
	Mon, 20 Nov 2023 13:47:52 -0800 (PST)
Received: from email.seznam.cz
	by smtpc-mxe-b7dc65f8c-crqsd
	(smtpc-mxe-b7dc65f8c-crqsd [2a02:598:128:8a00::1000:ab7])
	id 6abd72749449c0de6a33fc6c;
	Mon, 20 Nov 2023 22:47:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=email.cz;
	s=szn20221014; t=1700516871;
	bh=tV7rRu+hZULtUAqYXJOLdln7sRyZoCRG7oXpFuJMw7s=;
	h=Received:From:To:Cc:Subject:Date:Message-Id:References:
	 In-Reply-To:Mime-Version:X-Mailer:Content-Type:
	 Content-Transfer-Encoding;
	b=u2/Ex8R98G1Iz3VLJ9XczTtmYftQsCfeX3Zur2QyOqaN/Toh88WdGQjYSj5isUdb7
	 WZ6FDaUE9l/2jlwQC4lc3LbjUIqqy3t2ptgIhoFCNKCUF75/s2oKEiCa8ILwtuFf/M
	 8fButrOQJRynUJGudnWB6cfyJO6Frp813NSUZdmaICaElw+vFnB0HTpuPRdi+K76sy
	 QZNn1ZmHh5xBPYB9Y24vem8bQk13AzBxMMd5rRig+urQt1CYk6iChniRgasIIDJxDy
	 /+cQof90rmZwCiHsMpK3FDftA47T7bNkCoZsxgrDi85rN2yf3o2x1Z8z/E1ZiJ+MAE
	 EWN07MR3JFzFg==
Received: from 184-143.gtt-net.cz (184-143.gtt-net.cz [82.144.143.184])
	by email.seznam.cz (szn-UNKNOWN-unknown) with HTTP;
	Mon, 20 Nov 2023 22:45:23 +0100 (CET)
From: "Tomas Paukrt" <tomaspaukrt@email.cz>
To: "Krzysztof Kozlowski" <krzk@kernel.org>,
	"Rob Herring" <robh+dt@kernel.org>,
	"Conor Dooley" <conor+dt@kernel.org>,
	"Greg Kroah-Hartman" <gregkh@linuxfoundation.org>,
	"Jiri Slaby" <jirislaby@kernel.org>
Cc: <linux-serial@vger.kernel.org>,
	"Lino Sanfilippo" <LinoSanfilippo@gmx.de>,
	<linux-kernel@vger.kernel.org>,
	<devicetree@vger.kernel.org>
Subject: =?utf-8?q?Re=3A_=5BPATCH_v3_2/2=5D_dt-bindings=3A_serial=3A_Add_o?=
	=?utf-8?q?ption_to_enable_RS485_mode_via_GPIO_?=
Date: Mon, 20 Nov 2023 22:45:23 +0100 (CET)
Message-Id: <3Nk.ZZrp.5w3Yn0Ecy5C.1bMzDp@seznam.cz>
References: <VY.ZZnz.2Km1cHBSh2}.1bLIJa@seznam.cz>
	<476876ca-806f-a5ad-1eeb-435c8a3111a2@gmx.de>
	<2cZ.ZZqF.1YADr1CLFoQ.1bMn3d@seznam.cz>
	<5a0321ac-e1e6-45e9-9faf-153db8d34980@kernel.org>
In-Reply-To: <5a0321ac-e1e6-45e9-9faf-153db8d34980@kernel.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
Mime-Version: 1.0 (szn-mime-2.1.33)
X-Mailer: szn-UNKNOWN-unknown
Content-Type: text/plain;
	charset=utf-8
Content-Transfer-Encoding: quoted-printable

Add the device tree property "rs485-mode-gpio".

Signed-off-by: Tomas Paukrt <tomaspaukrt@email.cz>
---
 Documentation/devicetree/bindings/serial/rs485.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/serial/rs485.yaml b/Documen=
tation/devicetree/bindings/serial/rs485.yaml
index 9418fd6..7a72f37 100644
--- a/Documentation/devicetree/bindings/serial/rs485.yaml
+++ b/Documentation/devicetree/bindings/serial/rs485.yaml
@@ -47,6 +47,10 @@ properties:
       later with proper ioctl.
     $ref: /schemas/types.yaml#/definitions/flag
 
+  rs485-mode-gpio:
+    description: GPIO pin to enable RS485 mode at boot time.
+    maxItems: 1
+
   rs485-rx-during-tx:
     description: enables the receiving of data even while sending data.=

     $ref: /schemas/types.yaml#/definitions/flag
-- 
2.7.4
 

