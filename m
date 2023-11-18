Return-Path: <devicetree+bounces-16796-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A60837EFC6D
	for <lists+devicetree@lfdr.de>; Sat, 18 Nov 2023 01:06:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id BE5151C20986
	for <lists+devicetree@lfdr.de>; Sat, 18 Nov 2023 00:06:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE39F363;
	Sat, 18 Nov 2023 00:06:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=denx.de header.i=@denx.de header.b="IT+0Lpmm"
X-Original-To: devicetree@vger.kernel.org
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2F54B4;
	Fri, 17 Nov 2023 16:06:39 -0800 (PST)
Received: from tr.lan (ip-86-49-120-218.bb.vodafone.cz [86.49.120.218])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	(Authenticated sender: marex@denx.de)
	by phobos.denx.de (Postfix) with ESMTPSA id B83FB8082A;
	Sat, 18 Nov 2023 01:06:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
	s=phobos-20191101; t=1700265992;
	bh=TJd1jk2yMzMPxmvwDor3yFWaILErSR1YeuSpu23qXnk=;
	h=From:To:Cc:Subject:Date:From;
	b=IT+0LpmmaX+aqxl5Bf32dfMFJkw/2iVzyzXLWRTiNuj0y2koxKhqbapn+NrNmtZjI
	 8c8O6Bo/z1jG1ztoNiVh0vBXP1LtiVU7clItxn7nrsh+hfxyE8G66CzxrSJiBF+mrW
	 U2SK+uKoVj0POpR3Y/rZ/ryxO8MF8URoh2GL8p7rmv9ivipS7NKPKw7GD5oZevOLZZ
	 Lav032/ectz0h2u4Np+9F8XFm7mCljnm131XfXlyq69CmOOxPdGe2QUaSjxzsWAoL9
	 f+1oZqD67pbPt2ofknuanBZiLQcqTOnaSdHWeBSo9pilNFPJrNFI0Hzdm5k7pN0jr7
	 mDj07YbIty6nw==
From: Marek Vasut <marex@denx.de>
To: linux-iio@vger.kernel.org
Cc: Marek Vasut <marex@denx.de>,
	Conor Dooley <conor.dooley@microchip.com>,
	Alexander Stein <alexander.stein@ew.tq-group.com>,
	Andre Werner <andre.werner@systec-electronic.com>,
	Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
	Bjorn Helgaas <bhelgaas@google.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@denx.de>,
	Guenter Roeck <linux@roeck-us.net>,
	Jonathan Cameron <jic23@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Luca Ceresoli <luca.ceresoli@bootlin.com>,
	Mark Brown <broonie@kernel.org>,
	Matti Vaittinen <mazziesaccount@gmail.com>,
	Naresh Solanki <naresh.solanki@9elements.com>,
	Patrick Rudolph <patrick.rudolph@9elements.com>,
	Rob Herring <robh+dt@kernel.org>,
	Stefan Windfeldt-Prytz <stefan.windfeldt-prytz@axis.com>,
	Vincent Tremblay <vincent@vtremblay.dev>,
	devicetree@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: iio: light: isl76682: Document ISL76682
Date: Sat, 18 Nov 2023 01:06:09 +0100
Message-ID: <20231118000614.186558-1-marex@denx.de>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.8 at phobos.denx.de
X-Virus-Status: Clean

The ISL76682 is very basic ALS which only supports ALS or IR mode
in four ranges, 1k/4k/16k/64k LUX. There is no IRQ support or any
other fancy functionality. Document it as trivial device.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Alexander Stein <alexander.stein@ew.tq-group.com>
Cc: Andre Werner <andre.werner@systec-electronic.com>
Cc: Andy Shevchenko <andriy.shevchenko@linux.intel.com>
Cc: Bjorn Helgaas <bhelgaas@google.com>
Cc: Conor Dooley <conor+dt@kernel.org>
Cc: Fabio Estevam <festevam@denx.de>
Cc: Guenter Roeck <linux@roeck-us.net>
Cc: Jonathan Cameron <jic23@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: Lars-Peter Clausen <lars@metafoo.de>
Cc: Luca Ceresoli <luca.ceresoli@bootlin.com>
Cc: Mark Brown <broonie@kernel.org>
Cc: Matti Vaittinen <mazziesaccount@gmail.com>
Cc: Naresh Solanki <naresh.solanki@9elements.com>
Cc: Patrick Rudolph <patrick.rudolph@9elements.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Stefan Windfeldt-Prytz <stefan.windfeldt-prytz@axis.com>
Cc: Vincent Tremblay <vincent@vtremblay.dev>
Cc: devicetree@vger.kernel.org
Cc: linux-iio@vger.kernel.org
---
V2: Add AB from Conor
---
 Documentation/devicetree/bindings/trivial-devices.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/trivial-devices.yaml b/Documentation/devicetree/bindings/trivial-devices.yaml
index c3190f2a168a2..27164e9219276 100644
--- a/Documentation/devicetree/bindings/trivial-devices.yaml
+++ b/Documentation/devicetree/bindings/trivial-devices.yaml
@@ -179,6 +179,8 @@ properties:
           - isil,isl29030
             # Intersil ISL68137 Digital Output Configurable PWM Controller
           - isil,isl68137
+            # Intersil ISL76682 Ambient Light Sensor
+          - isil,isl76682
             # Linear Technology LTC2488
           - lineartechnology,ltc2488
             # 5 Bit Programmable, Pulse-Width Modulator
-- 
2.42.0


