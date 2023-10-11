Return-Path: <devicetree+bounces-7827-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 3C60B7C5B1F
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 20:18:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6967F1C20C24
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 18:18:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40BD322315;
	Wed, 11 Oct 2023 18:18:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=protonmail.ch header.i=@protonmail.ch header.b="DkR2C1Om"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60E423995E
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 18:18:15 +0000 (UTC)
Received: from mail-0301.mail-europe.com (mail-0301.mail-europe.com [188.165.51.139])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D311BA
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 11:18:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.ch;
	s=protonmail3; t=1697048290; x=1697307490;
	bh=ynQ1glqOOY0YVbH7mWAv/jyhEaTBs+pK+QoCHGvfw0U=;
	h=Date:To:From:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=DkR2C1Omyrv0l6cXrVNpLQfKq6s6KpCFW1FRQpyN7/O8o9fm/bxkaVhK5b72BxQK7
	 aA5OJfPskfPEJs1K3b3nWxFIi0zHM56W17OzuUm6eTofIkKkRuWiVk0Hh6g3PKfgkm
	 cpFKf0M+mb3+DmT64JQY3Igzmg2snv37v6Q43/taIzxjfIYhpss0mEdlH3sXIJnnFD
	 AIYfVHeCk0P4jDoi1TcfSe9Lt3K3Oc8x9v9ur6WIUvHgAs2WSh6Slf6tfYaW+K7ugk
	 bQ3EdylYP00NNGblRO8Y3lejV5NC1KRGjHRkipo61qoxRv5udSfTsBzcgeHddZvJmI
	 EQbD+AxmwObbA==
Date: Wed, 11 Oct 2023 18:18:05 +0000
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, Sebastian Reichel <sebastian.reichel@collabora.com>, Christopher Obbard <chris.obbard@collabora.com>, Shreeya Patel <shreeya.patel@collabora.com>, =?utf-8?Q?Tam=C3=A1s_Sz=C5=B1cs?= <tszucs@protonmail.ch>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
From: =?utf-8?Q?Tam=C3=A1s_Sz=C5=B1cs?= <tszucs@protonmail.ch>
Subject: [PATCH] arm64: dts: rockchip: Remove duplicate regulator vcc3v3_wf from rock-5b
Message-ID: <20231011181757.58047-1-tszucs@protonmail.ch>
Feedback-ID: 53029:user:proton
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,RCVD_IN_DNSWL_LOW,
	SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Regulator for VCC3V3_WF has been added as vcc3v3_pcie2x1l0 first. Clean thi=
s up.

Signed-off-by: Tam=C3=A1s Sz=C5=B1cs <tszucs@protonmail.ch>
---
 .../boot/dts/rockchip/rk3588-rock-5b.dts      | 23 +------------------
 1 file changed, 1 insertion(+), 22 deletions(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/b=
oot/dts/rockchip/rk3588-rock-5b.dts
index 8618887899d9..392ac783c3ad 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -114,21 +114,6 @@ vcc_1v1_nldo_s3: vcc-1v1-nldo-s3-regulator {
 =09=09regulator-max-microvolt =3D <1100000>;
 =09=09vin-supply =3D <&vcc5v0_sys>;
 =09};
-
-=09vcc3v3_wf: vcc3v3-wf-regulator {
-=09=09compatible =3D "regulator-fixed";
-=09=09regulator-name =3D "vcc3v3_wf";
-=09=09regulator-always-on;
-=09=09regulator-boot-on;
-=09=09regulator-min-microvolt =3D <3300000>;
-=09=09regulator-max-microvolt =3D <3300000>;
-=09=09enable-active-high;
-=09=09gpios =3D <&gpio1 RK_PD2 GPIO_ACTIVE_HIGH>;
-=09=09pinctrl-names =3D "default";
-=09=09pinctrl-0 =3D <&vcc3v3_wf_en>;
-=09=09startup-delay-us =3D <50000>;
-=09=09vin-supply =3D <&vcc5v0_sys>;
-=09};
 };
=20
 &combphy0_ps {
@@ -335,12 +320,6 @@ vcc5v0_host_en: vcc5v0-host-en {
 =09=09=09rockchip,pins =3D <4 RK_PB0 RK_FUNC_GPIO &pcfg_pull_none>;
 =09=09};
 =09};
-
-=09m2e {
-=09=09vcc3v3_wf_en: vcc3v3-wf-en {
-=09=09=09rockchip,pins =3D <1 RK_PD2 RK_FUNC_GPIO &pcfg_pull_none>;
-=09=09};
-=09};
 };
=20
 &pwm1 {
@@ -391,7 +370,7 @@ &sdio {
 =09sd-uhs-sdr25;
 =09sd-uhs-sdr50;
 =09sd-uhs-sdr104;
-=09vmmc-supply =3D <&vcc3v3_wf>;
+=09vmmc-supply =3D <&vcc3v3_pcie2x1l0>;
 =09vqmmc-supply =3D <&vcc_1v8_s3>;
 =09pinctrl-names =3D "default";
 =09pinctrl-0 =3D <&sdiom0_pins>;
--=20
2.42.0



