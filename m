Return-Path: <devicetree+bounces-9231-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DDF97CC3DD
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 15:00:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DA3C6B2103F
	for <lists+devicetree@lfdr.de>; Tue, 17 Oct 2023 13:00:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B769442BF4;
	Tue, 17 Oct 2023 13:00:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b="shA30GZ5"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1425441AB0
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 13:00:28 +0000 (UTC)
X-Greylist: delayed 9795 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Tue, 17 Oct 2023 06:00:27 PDT
Received: from mail-40132.protonmail.ch (mail-40132.protonmail.ch [185.70.40.132])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AD888F1
	for <devicetree@vger.kernel.org>; Tue, 17 Oct 2023 06:00:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1697547624; x=1697806824;
	bh=ud8aoJQUYksiupgPEfkQsDvGulNvE1B6CwckXIHptaU=;
	h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=shA30GZ5XLfUWUS4KlbKaTu2qR8MCmOEek2rZcyPtgSGYuV+g1+D7fjcWLEqVVP8a
	 hr2K7xTsS3sZ1qxO4FF1BOBTjMZYEseuwxToS53UgaKgN4K/cM4ZkBDcR3zz8VyIzA
	 6QGmSdSvU5EkC3RjRHKjaID8XXe/MeTxR1wgqb7uHapcudet9ErPZULZfNEE6Kx8vs
	 W2BRTQzINKB5Ou+M/n1iPR3Z0LoqziiGLqPaT7026mZKNiHxTRAlcpLGqPYGKVrvy8
	 S1LCzwYPbe1kaqf2IEOmF7K8FhlKpHMWTUr+ssTzXIQ9g7SG/5p/v2bKGdCtEXUG1D
	 AE2ySYrRbmt+A==
Date: Tue, 17 Oct 2023 13:00:11 +0000
To: linux-kernel@vger.kernel.org
From: Raymond Hackley <raymondhackley@protonmail.com>
Cc: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Stephan Gerhold <stephan@gerhold.net>, Nikita Travkin <nikita@trvn.ru>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, Raymond Hackley <raymondhackley@protonmail.com>
Subject: [PATCH] arm64: dts: qcom: msm8916-acer-a1-724: Add notification LED
Message-ID: <20231017125848.84311-1-raymondhackley@protonmail.com>
Feedback-ID: 49437091:user:proton
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
	RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H4,RCVD_IN_MSPIKE_WL,
	SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Acer Iconia Talk S A1-724 uses KTD2026 LED driver. However, there is
no blue LED on it. Add it to the device tree.

Signed-off-by: Raymond Hackley <raymondhackley@protonmail.com>
---
 .../boot/dts/qcom/msm8916-acer-a1-724.dts     | 24 +++++++++++++++++++
 1 file changed, 24 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/msm8916-acer-a1-724.dts b/arch/arm64/=
boot/dts/qcom/msm8916-acer-a1-724.dts
index 84723c9b73b4..b0f0f9f59cb3 100644
--- a/arch/arm64/boot/dts/qcom/msm8916-acer-a1-724.dts
+++ b/arch/arm64/boot/dts/qcom/msm8916-acer-a1-724.dts
@@ -7,6 +7,7 @@
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
 #include <dt-bindings/interrupt-controller/irq.h>
+#include <dt-bindings/leds/common.h>
=20
 /*
  * NOTE: The original firmware from Acer can only boot 32-bit kernels.
@@ -83,6 +84,29 @@ magnetometer@12 {
 =09};
 };
=20
+&blsp_i2c4 {
+=09status =3D "okay";
+
+=09led-controller@30 {
+=09=09compatible =3D "kinetic,ktd2026";
+=09=09reg =3D <0x30>;
+=09=09#address-cells =3D <1>;
+=09=09#size-cells =3D <0>;
+
+=09=09led@0 {
+=09=09=09reg =3D <0>;
+=09=09=09function =3D LED_FUNCTION_STATUS;
+=09=09=09color =3D <LED_COLOR_ID_RED>;
+=09=09};
+
+=09=09led@1 {
+=09=09=09reg =3D <1>;
+=09=09=09function =3D LED_FUNCTION_STATUS;
+=09=09=09color =3D <LED_COLOR_ID_GREEN>;
+=09=09};
+=09};
+};
+
 &blsp_i2c5 {
 =09status =3D "okay";
=20
--=20
2.39.2



