Return-Path: <devicetree+bounces-56839-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 997F189AA8A
	for <lists+devicetree@lfdr.de>; Sat,  6 Apr 2024 13:15:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C99F71C20D3B
	for <lists+devicetree@lfdr.de>; Sat,  6 Apr 2024 11:15:04 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 123D42C6B8;
	Sat,  6 Apr 2024 11:14:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b="Bi96cy62"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-40140.protonmail.ch (mail-40140.protonmail.ch [185.70.40.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A3592C1A7
	for <devicetree@vger.kernel.org>; Sat,  6 Apr 2024 11:14:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.40.140
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712402095; cv=none; b=S3rRqQk2mB5O2qGmrdgrGhe93otE7KoiuPCzAW0YFCeNAiAkrHxXGNQuydSG8IhI8HnICp1LPBFcZNQaM+k1brsglcerOxY07TvFZjjd0CV+FLMonzw6D/MYskjt82VihmyCqT4mfHfckNTPB47Wya28GzyPyrg3dIVEqImJoAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712402095; c=relaxed/simple;
	bh=QPouy+txxaEadd0avJYA4wF5PBAXuT97/zgLOuEIY4c=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=qxwFAwec/ofo4OdLuUN+Y3tD5jWs30/xz8VIzNeMYwq1oyWM08mZVTKhZ1NCxYxSN7qapNbyPOvZRXOXMC4PTXl1eXuBvwFOr06zuvmm3d0WFGhmZyfIUjWwfmAQ43U1l3Wz3VkPuE5ixtwbrfCmF3i0RwSoU0v82XRQAK2hdF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com; spf=pass smtp.mailfrom=protonmail.com; dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b=Bi96cy62; arc=none smtp.client-ip=185.70.40.140
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=protonmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1712402090; x=1712661290;
	bh=LiT0RkSN1jYcw0F40PEh3I31dVargIaYKG8utpP8rWI=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=Bi96cy62m5/WXXOh2IMomjvLWA64PkESFO25kr95ZW5w5bEuD8S1iN1lVR79h5Gz/
	 n6Uzffs80bTYz7EAOl3IqsCnGBV1RL6azFWwNjYNIVXR2C17X3oaKgBZYUVz3BEYbw
	 UserCgYKKaQvmb2n57nDb9clXvXLuav6+vS3AXf1I88sFE/CbslbdQ17565Cf8/vE+
	 vmWY20kuUvcN5VwezBVgU592XrFAuaCK5TGfUGgzyEqt8wApKOHTXB4pqF0KdKj8T4
	 1Tmp5yVoqY3780Ux1bQMs4dfA7+ByElFCBakY7yJc56vo0NMOKtc7NLked95hkf2v9
	 2Cf6sq3XzBEJQ==
Date: Sat, 06 Apr 2024 11:14:45 +0000
To: linux-kernel@vger.kernel.org
From: Raymond Hackley <raymondhackley@protonmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Stephan Gerhold <stephan@gerhold.net>, Nikita Travkin <nikita@trvn.ru>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, Siddharth Manthan <siddharth.manthan@gmail.com>
Subject: [PATCH v2 2/3] arm64: dts: qcom: msm8916-samsung-fortuna: Add LSM303C accelerometer/magnetometer
Message-ID: <20240406111348.14358-3-raymondhackley@protonmail.com>
In-Reply-To: <20240406111348.14358-1-raymondhackley@protonmail.com>
References: <20240406111348.14358-1-raymondhackley@protonmail.com>
Feedback-ID: 49437091:user:proton
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

From: Siddharth Manthan <siddharth.manthan@gmail.com>

Some Grand Prime use a ST LSM303C accelerometer/magnetometer combo.
Add support for it.

Signed-off-by: Siddharth Manthan <siddharth.manthan@gmail.com>
[Stephan: Move sensors to common dtsi (disabled by default)]
Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
[Raymond: Use interrupts-extended]
Signed-off-by: Raymond Hackley <raymondhackley@protonmail.com>
---
 .../dts/qcom/msm8216-samsung-fortuna3g.dts    |  8 +++++
 .../qcom/msm8916-samsung-fortuna-common.dtsi  | 33 +++++++++++++++++++
 2 files changed, 41 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/msm8216-samsung-fortuna3g.dts b/arch/=
arm64/boot/dts/qcom/msm8216-samsung-fortuna3g.dts
index 366914be7d53..e7f6df229f9a 100644
--- a/arch/arm64/boot/dts/qcom/msm8216-samsung-fortuna3g.dts
+++ b/arch/arm64/boot/dts/qcom/msm8216-samsung-fortuna3g.dts
@@ -9,3 +9,11 @@ / {
 =09compatible =3D "samsung,fortuna3g", "qcom,msm8916";
 =09chassis-type =3D "handset";
 };
+
+&st_accel {
+=09status =3D "okay";
+};
+
+&st_magn {
+=09status =3D "okay";
+};
diff --git a/arch/arm64/boot/dts/qcom/msm8916-samsung-fortuna-common.dtsi b=
/arch/arm64/boot/dts/qcom/msm8916-samsung-fortuna-common.dtsi
index b6e1fe8b0056..17d21949dfec 100644
--- a/arch/arm64/boot/dts/qcom/msm8916-samsung-fortuna-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8916-samsung-fortuna-common.dtsi
@@ -152,6 +152,39 @@ bosch_magn: magnetometer@12 {
=20
 =09=09status =3D "disabled";
 =09};
+
+=09st_accel: accelerometer@1d {
+=09=09compatible =3D "st,lsm303c-accel";
+=09=09reg =3D <0x1d>;
+=09=09interrupts-extended =3D <&tlmm 115 IRQ_TYPE_LEVEL_HIGH>;
+
+=09=09vdd-supply =3D <&pm8916_l17>;
+=09=09vddio-supply =3D <&pm8916_l5>;
+
+=09=09pinctrl-0 =3D <&accel_int_default>;
+=09=09pinctrl-names =3D "default";
+
+=09=09st,drdy-int-pin =3D <1>;
+=09=09mount-matrix =3D "0", "-1",  "0",
+=09=09=09       "1",  "0",  "0",
+=09=09=09       "0",  "0", "-1";
+
+=09=09status =3D "disabled";
+=09};
+
+=09st_magn: magnetometer@1e {
+=09=09compatible =3D "st,lsm303c-magn";
+=09=09reg =3D <0x1e>;
+
+=09=09vdd-supply =3D <&pm8916_l17>;
+=09=09vddio-supply =3D <&pm8916_l5>;
+
+=09=09mount-matrix =3D "0", "-1",  "0",
+=09=09=09       "1",  "0",  "0",
+=09=09=09       "0",  "0", "-1";
+
+=09=09status =3D "disabled";
+=09};
 };
=20
 &blsp_i2c4 {
--=20
2.39.2



