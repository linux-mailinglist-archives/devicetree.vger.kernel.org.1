Return-Path: <devicetree+bounces-10968-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 70B637D39D4
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 16:42:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2BEB1281245
	for <lists+devicetree@lfdr.de>; Mon, 23 Oct 2023 14:42:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E232818032;
	Mon, 23 Oct 2023 14:42:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E17F414A84
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 14:42:02 +0000 (UTC)
Received: from andre.telenet-ops.be (andre.telenet-ops.be [IPv6:2a02:1800:120:4::f00:15])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0ED592126
	for <devicetree@vger.kernel.org>; Mon, 23 Oct 2023 07:41:40 -0700 (PDT)
Received: from ramsan.of.borg ([IPv6:2a02:1810:ac12:ed40:375d:2b56:c03f:d72d])
	by andre.telenet-ops.be with bizsmtp
	id 1Shd2B00U3CbNjd01ShdCU; Mon, 23 Oct 2023 16:41:38 +0200
Received: from rox.of.borg ([192.168.97.57])
	by ramsan.of.borg with esmtp (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1quw7W-007KKf-NH;
	Mon, 23 Oct 2023 16:41:37 +0200
Received: from geert by rox.of.borg with local (Exim 4.95)
	(envelope-from <geert@linux-m68k.org>)
	id 1quw7d-007tac-Iq;
	Mon, 23 Oct 2023 16:41:37 +0200
From: Geert Uytterhoeven <geert+renesas@glider.be>
To: Rob Herring <robh+dt@kernel.org>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Nicolas Ferre <nicolas.ferre@microchip.com>,
	Alexandre Belloni <alexandre.belloni@bootlin.com>,
	Claudiu Beznea <claudiu.beznea@tuxon.dev>,
	devicetree@vger.kernel.org,
	linux-renesas-soc@vger.kernel.org,
	Geert Uytterhoeven <geert+renesas@glider.be>
Subject: [PATCH dt-schema] schemas: gpio: gpio-consumer: Fix false positives on nodes named gpio
Date: Mon, 23 Oct 2023 16:41:34 +0200
Message-Id: <20231023144134.1881973-1-geert+renesas@glider.be>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable

Just like for "gpio", nodes can be named "gpios" or
"<something>-gpio(s)", causing false positive failures.

See also commit 80120fccde170902 ("schemas: gpio: fix false positive
failures on nodes named 'gpio'").

Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
---
Seen on Linux, e.g.:

    arch/arm/boot/dts/renesas/r8a7779-marzen.dtb: /: keyboard-gpio: {'compa=
tible': ['gpio-keys-polled'], 'poll-interval': [[50]], 'pinctrl-0': [[29]],=
 'pinctrl-names': ['default'], 'key-3': {'gpios': [[28, 19, 1]], 'linux,cod=
e': [[4]], 'label': ['SW1-3'], 'debounce-interval': [[20]]}, 'key-4': {'gpi=
os': [[28, 20, 1]], 'linux,code': [[5]], 'label': ['SW1-4'], 'debounce-inte=
rval': [[20]]}} is not of type 'array'
	    from schema $id: http://devicetree.org/schemas/gpio/gpio-consumer.yaml#
    arch/arm/boot/dts/renesas/r8a7779-marzen.dtb: pinctrl@fffc0000: keyboar=
d-gpio: {'pins': ['GP_0_19', 'GP_0_20'], 'bias-pull-up': True, 'phandle': [=
[29]]} is not of type 'array'
	    from schema $id: http://devicetree.org/schemas/gpio/gpio-consumer.yaml#

    arch/arm/boot/dts/microchip/at91-kizbox3-hs.dtb: /: gpios: {'compatible=
': ['gpio'], 'status': ['okay'], 'rf_on': {'label': ['rf on'], 'gpio': [[38=
, 83, 0]], 'output': True, 'init-low': True}, 'wifi_on': {'label': ['wifi o=
n'], 'gpio': [[38, 84, 0]], 'output': True, 'init-low': True}, 'zbe_test_ra=
dio': {'label': ['zbe test radio'], 'gpio': [[38, 53, 0]], 'output': True, =
'init-low': True}, 'zbe_rst': {'label': ['zbe rst'], 'gpio': [[38, 57, 0]],=
 'output': True, 'init-low': True}, 'io_reset': {'label': ['io reset'], 'gp=
io': [[38, 62, 0]], 'output': True, 'init-low': True}, 'io_test_radio': {'l=
abel': ['io test radio'], 'gpio': [[38, 73, 0]], 'output': True, 'init-low'=
: True}, 'io_boot_0': {'label': ['io boot 0'], 'gpio': [[38, 75, 0]], 'outp=
ut': True, 'init-low': True}, 'io_boot_1': {'label': ['io boot 1'], 'gpio':=
 [[38, 81, 0]], 'output': True, 'init-low': True}, 'verbose_bootloader': {'=
label': ['verbose bootloader'], 'gpio': [[38, 43, 0]], 'input': True}, 'nai=
l_bed_detection': {'label': ['nail bed detection'], 'gpio': [[38, 44, 0]], =
'input': True}, 'id_usba': {'label': ['id usba'], 'gpio': [[38, 64, 1]], 'i=
nput': True}} is not of type 'array'
	    from schema $id: http://devicetree.org/schemas/gpio/gpio-consumer.yaml#

For marzen, the alternative fix would be to
s/keyboard-gpio/keyboard-polled/g.
---
 dtschema/schemas/gpio/gpio-consumer.yaml | 10 ++++++++--
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/dtschema/schemas/gpio/gpio-consumer.yaml b/dtschema/schemas/gp=
io/gpio-consumer.yaml
index 1ac35244de7317bc..9572a9cd0febef19 100644
--- a/dtschema/schemas/gpio/gpio-consumer.yaml
+++ b/dtschema/schemas/gpio/gpio-consumer.yaml
@@ -17,7 +17,10 @@ select:
=20
 properties:
   gpios:
-    $ref: /schemas/types.yaml#/definitions/phandle-array
+    # 'gpios' can appear as a property or node name
+    oneOf:
+      - type: object
+      - $ref: /schemas/types.yaml#/definitions/phandle-array
=20
   gpio:
     # 'gpio' can appear as a property or node name
@@ -28,6 +31,9 @@ properties:
=20
 patternProperties:
   "(?<!,nr)-gpios?$":
-    $ref: /schemas/types.yaml#/definitions/phandle-array
+    # these can appear as properties or node names
+    oneOf:
+      - type: object
+      - $ref: /schemas/types.yaml#/definitions/phandle-array
=20
 additionalProperties: true
--=20
2.34.1


