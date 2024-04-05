Return-Path: <devicetree+bounces-56566-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D7B84899C68
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 14:09:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 8F6F8283B52
	for <lists+devicetree@lfdr.de>; Fri,  5 Apr 2024 12:09:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8997116C842;
	Fri,  5 Apr 2024 12:09:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b="ff7jRve3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-40140.protonmail.ch (mail-40140.protonmail.ch [185.70.40.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 913B916C458;
	Fri,  5 Apr 2024 12:09:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.40.140
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712318951; cv=none; b=PNE8tQh+QPmKlJEu/yzpi0MNnJtwJgfA2s/uZ/R826vOzmrihiwF7/sv4MG0obi/584v5yEmM4oIOMksIlWjUf+ffEHHtvjgNF1O1g98xfVfPocPbqeRf3+a/1/jr/6jGG9cudVlOMjBYhbLXpuZ/uKVkXztWau5ukfKKGenET8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712318951; c=relaxed/simple;
	bh=pJc4/jf0PFlwsIdcAIRexnTe64XtHIYH2HV2IEn40jQ=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 MIME-Version:Content-Type; b=LBQgQyqu4FDFsLY3FhYcZ1S4RbI+R517B+CjdJ2IXAN+74LUBm2nHN921GiymI4EFCgpdwQAVhDsmRerU3Bu2C7CKotf8hqEz+ltNX5Lc6RO8Zx9jAyivQzFNzXVEMu2FovxBRqpx+X4HUBydoXJt2TJpc0NUfV3cJFeZ+G3RvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com; spf=pass smtp.mailfrom=protonmail.com; dkim=pass (2048-bit key) header.d=protonmail.com header.i=@protonmail.com header.b=ff7jRve3; arc=none smtp.client-ip=185.70.40.140
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=protonmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=protonmail.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
	s=protonmail3; t=1712318941; x=1712578141;
	bh=m7pYILs7yFgTClwOKJdvPDTNK5p8LzvChuFPPm/5hkE=;
	h=Date:To:From:Cc:Subject:Message-ID:In-Reply-To:References:
	 Feedback-ID:From:To:Cc:Date:Subject:Reply-To:Feedback-ID:
	 Message-ID:BIMI-Selector;
	b=ff7jRve3OKzseIbe5MnxW4Iijl5KA1glKA13DdrSVPAWke5/V3eYqUXcSz/wOyHOm
	 vZFg4vXi0mtpVlScvpEaV91X61EZOt0owzxq463aCfFXqSOlJdwag8uU/vQC8/UGge
	 CcaelWWaIpl0wF0zUouP3zkoPkT6on1vSzOoRxPvSSiIiABRrjulNMA/T8K1ofdp2u
	 CET2A9y6qhwP024BWa9653csmxGp2IpeLCsRmI6Pq+CfTkK6Du1m38d0mkw70creWX
	 2dF/mYOS5O6+OyDdaw4sqldzL/haqSb64IvipGhznJD51Lc9//GlIL4QQhRUD99yrN
	 WNHpmIkIcozoA==
Date: Fri, 05 Apr 2024 12:08:55 +0000
To: linux-kernel@vger.kernel.org
From: Raymond Hackley <raymondhackley@protonmail.com>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Stephan Gerhold <stephan@gerhold.net>, Nikita Travkin <nikita@trvn.ru>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, Siddharth Manthan <siddharth.manthan@gmail.com>, Raymond Hackley <raymondhackley@protonmail.com>
Subject: [PATCH 2/3] arm64: dts: qcom: msm8916-samsung-fortuna: Add LSM303C accelerometer/magnetometer
Message-ID: <20240405120803.20754-3-raymondhackley@protonmail.com>
In-Reply-To: <20240405120803.20754-1-raymondhackley@protonmail.com>
References: <20240405120803.20754-1-raymondhackley@protonmail.com>
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
 .../qcom/msm8916-samsung-fortuna-common.dtsi  | 34 +++++++++++++++++++
 2 files changed, 42 insertions(+)

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
index b6e1fe8b0056..1c3e3b860d44 100644
--- a/arch/arm64/boot/dts/qcom/msm8916-samsung-fortuna-common.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8916-samsung-fortuna-common.dtsi
@@ -152,6 +152,40 @@ bosch_magn: magnetometer@12 {
=20
 =09=09status =3D "disabled";
 =09};
+
+=09st_accel: accelerometer@1d {
+=09=09compatible =3D "st,lsm303c-accel";
+=09=09reg =3D <0x1d>;
+=09=09interrupts-extended =3D <&tlmm 115 IRQ_TYPE_LEVEL_HIGH>;
+=09=09interrupt-names =3D "INT1";
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



