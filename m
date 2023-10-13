Return-Path: <devicetree+bounces-8589-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E532D7C8DCE
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 21:37:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 219591C20ABF
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 19:37:55 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0C2A2374F;
	Fri, 13 Oct 2023 19:37:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=protonmail.ch header.i=@protonmail.ch header.b="k5wbz9In"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DDD7522EED
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 19:37:49 +0000 (UTC)
Received: from mail-0201.mail-europe.com (mail-0201.mail-europe.com [51.77.79.158])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D21ED95
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 12:37:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.ch;
	s=protonmail3; t=1697225864; x=1697485064;
	bh=wPzipRewpW3dUMQiQ9R1lRpOCZ11YqKIXflefzzg4qc=;
	h=Date:To:From:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=k5wbz9InWJKvgw8yUIQlXlx36hd27bzK76LimxvxnOAo9MO7DrwrR+DxK4qMi4QJD
	 iXBEftVD81gU+B1jBpovrZ5HNcJu6PqVjz8cFvwPtNQJXs07s9G/K6lubClsJ/EZLP
	 exk6GBDtFv/L0V9TxzDNs8eslI2AXRLtEkdkBKnBMIUc6hWx4P6ebEjyviw8VRBC46
	 OE87wwUc6bEOeNxWQlGr2IOHUrCN99UgUqu/uhqv5WDmV1GgAfjYo9hKlwsW8sqbda
	 x2O8LpRxyGhFV5pEMVlSpTtOKFlmCHQzEbmeUmMyCkBdG+odEzVpS6FGbUfLHV/EeL
	 wrQcgZuen6pcQ==
Date: Fri, 13 Oct 2023 19:37:30 +0000
To: Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Heiko Stuebner <heiko@sntech.de>, Cristian Ciocaltea <cristian.ciocaltea@collabora.com>, Sebastian Reichel <sebastian.reichel@collabora.com>, Christopher Obbard <chris.obbard@collabora.com>, =?utf-8?Q?Tam=C3=A1s_Sz=C5=B1cs?= <tszucs@protonmail.ch>, Shreeya Patel <shreeya.patel@collabora.com>, devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
From: =?utf-8?Q?Tam=C3=A1s_Sz=C5=B1cs?= <tszucs@protonmail.ch>
Subject: [PATCH] arm64: dts: rockchip: Enable UART6 on rock-5b
Message-ID: <20231013193722.78630-1-tszucs@protonmail.ch>
Feedback-ID: 53029:user:proton
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
	RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
	autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Enable UART lines on Radxa ROCK 5 Model B M.2 Key E.

Signed-off-by: Tam=C3=A1s Sz=C5=B1cs <tszucs@protonmail.ch>
---
 arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts b/arch/arm64/b=
oot/dts/rockchip/rk3588-rock-5b.dts
index 392ac783c3ad..ea1e3d09ea62 100644
--- a/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3588-rock-5b.dts
@@ -377,6 +377,12 @@ &sdio {
 =09status =3D "okay";
 };
=20
+&uart6 {
+=09pinctrl-names =3D "default";
+=09pinctrl-0 =3D <&uart6m1_xfer &uart6m1_ctsn &uart6m1_rtsn>;
+=09status =3D "okay";
+};
+
 &spi2 {
 =09status =3D "okay";
 =09assigned-clocks =3D <&cru CLK_SPI2>;
--=20
2.42.0



