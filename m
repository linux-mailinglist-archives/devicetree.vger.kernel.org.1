Return-Path: <devicetree+bounces-7872-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 0987E7C5D7D
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 21:15:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id B795028216E
	for <lists+devicetree@lfdr.de>; Wed, 11 Oct 2023 19:15:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E48412E57;
	Wed, 11 Oct 2023 19:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=protonmail.ch header.i=@protonmail.ch header.b="TaUooCrL"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 664C912E49
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 19:15:21 +0000 (UTC)
Received: from mail-0301.mail-europe.com (mail-0301.mail-europe.com [188.165.51.139])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02CC48F
	for <devicetree@vger.kernel.org>; Wed, 11 Oct 2023 12:15:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.ch;
	s=protonmail3; t=1697051713; x=1697310913;
	bh=EBTFFd6IGBPeF9S/93E4EoonIWn2TeNSGVG4hjiL2XI=;
	h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=TaUooCrLMZjJ5emzXcPY2dspBqoyKGE0bp3KQHTFObjQeEE6MgTt0ypDzZLjcpvon
	 KKugtgLjchsQE/B7Pi4ZUDAQ4TRz9ippAIqqKglzgVuGngs1xWN/OZbKF1xKLp7LfZ
	 DK9Gn9eBsi5n4MHOEES7zdX7nxcDL2Ecl9bn7RisDoOkPcz11zIKe8a5D6ZQy93jOK
	 r3J0zfi5qJWrYJs/W4j5OSDCuVemPulClxNhVMZZd19AGpI0+OISzCOBObICf2Mnq/
	 pXK68/GjQVkN3w6oyXyJuf6g935Yzq+Sbeh0/BalAuJMgea/kXx2bxiBuEPJZiCVw0
	 6bULNdJPDy1ug==
Date: Wed, 11 Oct 2023 19:14:56 +0000
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Michael Riesch <michael.riesch@wolfvision.net>, Chukun Pan <amadeus@jmu.edu.cn>, Anand Moon <linux.amoon@gmail.com>, Jonas Karlman <jonas@kwiboo.se>, Shengyu Qu <wiagn233@outlook.com>, Jagan Teki <jagan@amarulasolutions.com>, Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, Sebastian Reichel <sebastian.reichel@collabora.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
From: =?utf-8?Q?Tam=C3=A1s_Sz=C5=B1cs?= <tszucs@protonmail.ch>
Cc: =?utf-8?Q?Tam=C3=A1s_Sz=C5=B1cs?= <tszucs@protonmail.ch>
Subject: [PATCH] arm64: dts: rockchip: Add missing sdmmc2 SDR rates to rock-3a
Message-ID: <20231011191448.58936-1-tszucs@protonmail.ch>
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

Add missing UHS-I SDR rates to sdmmc2. Add explicit alias as mmc2 while at =
it.
It would be good to have matching timings enabled in case slower SDIO devic=
es
are encountered.

Signed-off-by: Tam=C3=A1s Sz=C5=B1cs <tszucs@protonmail.ch>
---
 arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/b=
oot/dts/rockchip/rk3568-rock-3a.dts
index e05ab11981f5..a5e974ea659e 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
@@ -15,6 +15,7 @@ aliases {
 =09=09ethernet0 =3D &gmac1;
 =09=09mmc0 =3D &sdhci;
 =09=09mmc1 =3D &sdmmc0;
+=09=09mmc2 =3D &sdmmc2;
 =09};
=20
 =09chosen: chosen {
@@ -747,6 +748,9 @@ &sdmmc2 {
 =09non-removable;
 =09pinctrl-names =3D "default";
 =09pinctrl-0 =3D <&sdmmc2m0_bus4 &sdmmc2m0_cmd &sdmmc2m0_clk>;
+=09sd-uhs-sdr12;
+=09sd-uhs-sdr25;
+=09sd-uhs-sdr50;
 =09sd-uhs-sdr104;
 =09vmmc-supply =3D <&vcc3v3_sys>;
 =09vqmmc-supply =3D <&vcc_1v8>;
--=20
2.42.0



