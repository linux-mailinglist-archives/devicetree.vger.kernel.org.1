Return-Path: <devicetree+bounces-77411-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 1157090E91A
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 13:15:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 2540C1C20FB3
	for <lists+devicetree@lfdr.de>; Wed, 19 Jun 2024 11:15:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4792784FAD;
	Wed, 19 Jun 2024 11:15:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=proton.me header.i=@proton.me header.b="L2Dh1tet"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-40141.protonmail.ch (mail-40141.protonmail.ch [185.70.40.141])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48C1247A40
	for <devicetree@vger.kernel.org>; Wed, 19 Jun 2024 11:15:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=185.70.40.141
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718795745; cv=none; b=gas0bHgC67/Nupj7jHzFsyts5z5or4KaqbIuX+fPG37WVEZ+9AGASLrt9purIsoBIkb5/GSWZDJfN0fNMTIYREnrj5FDx9UXAwniB5qONRnIoW+d2nErUqwT04zs1i//P5CjEZOuFemUMwr+OhjneqleaBUvFf6V8LBv0uYvbCo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718795745; c=relaxed/simple;
	bh=mcTvzLdXuEy/Dp9EJLVgfwKz+iNqvo/eDWKMG+qUySw=;
	h=Date:To:From:Cc:Subject:Message-ID:MIME-Version:Content-Type; b=NUwpVIgwLjdu3QfKg/qO0TQLzMAS0eeV/SM8WPJxnMYKTjLwJkEnkK8+moYZAjvS6cRSuCC/W9GCEXGwut6bKu0cl4RAvAVrpCZogq1nK371a7mtWhvlvOEddmjn7i/Kc8B+pBC7dhLY/5hKp7SInQHy1Xh11unRYg6/6fx0p/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=proton.me; spf=pass smtp.mailfrom=proton.me; dkim=pass (2048-bit key) header.d=proton.me header.i=@proton.me header.b=L2Dh1tet; arc=none smtp.client-ip=185.70.40.141
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=proton.me
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=proton.me
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=proton.me;
	s=protonmail; t=1718795735; x=1719054935;
	bh=pUljz4y2HKJetYfMJe70iGCMPlncjaDiR1toauc/Lok=;
	h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
	 Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
	b=L2Dh1tetMCpAPDJXNqoHcD9aDMg2NoyIu5x+I2FbULxGjH7VdhRJQIPKv+xHGElXx
	 XUuOttFCE/7NWP8BcOkvZbc8VMnC9+WPtOai9JavL+VJOgtXRFWViMW/XqzJ9K8upF
	 +TkT7Z0q56ePar1SRL7OwAPItiPbrypomtpZvE6rjZxu0ukEdkrNcMPd0qoC7uB4CN
	 UQmShHkUMETZn9k6+P6aoqcZqE5DWKR5tglbmOOXgnKTnmO/B/xSWonPbepaqne2bY
	 JiwcLIfCDM1LnnKBP1vCzpSids8vuXd0PgNu1a2uZw0FSPlQA+zQvrjz56wnUv0w+F
	 5aTfwYoqTTmsw==
Date: Wed, 19 Jun 2024 11:15:29 +0000
To: linux-kernel@vger.kernel.org
From: "Lin, Meng-Bo" <linmengbo06890@proton.me>
Cc: Bjorn Andersson <andersson@kernel.org>, Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley <conor+dt@kernel.org>, Stephan Gerhold <stephan@gerhold.net>, Nikita Travkin <nikita@trvn.ru>, linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht
Subject: [PATCH] arm64: dts: qcom: msm8916-gplus-fl8005a: Add sound and modem
Message-ID: <20240619111523.54301-1-linmengbo06890@proton.me>
Feedback-ID: 112742687:user:proton
X-Pm-Message-ID: d2bc8f875f084c6ffe3960435ad450ce22129386
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Enable sound and modem for the GPLUS FL8005A.
The setup is similar to most MSM8916 devices, i.e.:

 - QDSP6 audio
 - Earpiece/headphones/microphones via digital/analog codec in
   MSM8916/PM8916
 - WWAN Internet via BAM-DMUX

Signed-off-by: "Lin, Meng-Bo" <linmengbo06890@proton.me>
---
 .../boot/dts/qcom/msm8916-gplus-fl8005a.dts   | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/msm8916-gplus-fl8005a.dts b/arch/arm6=
4/boot/dts/qcom/msm8916-gplus-fl8005a.dts
index b748d140b52e..e6ed5544a11b 100644
--- a/arch/arm64/boot/dts/qcom/msm8916-gplus-fl8005a.dts
+++ b/arch/arm64/boot/dts/qcom/msm8916-gplus-fl8005a.dts
@@ -3,6 +3,7 @@
 /dts-v1/;
=20
 #include "msm8916-pm8916.dtsi"
+#include "msm8916-modem-qdsp6.dtsi"
=20
 #include <dt-bindings/gpio/gpio.h>
 #include <dt-bindings/input/input.h>
@@ -111,6 +112,17 @@ &blsp_uart2 {
 =09status =3D "okay";
 };
=20
+&mpss_mem {
+=09reg =3D <0x0 0x86800000 0x0 0x5000000>;
+};
+
+&pm8916_codec {
+=09qcom,micbias-lvl =3D <2800>;
+=09qcom,mbhc-vthreshold-low =3D <150 180 237 450 500>;
+=09qcom,mbhc-vthreshold-high =3D <150 180 237 450 500>;
+=09qcom,hphl-jack-type-normally-open;
+};
+
 &pm8916_resin {
 =09linux,code =3D <KEY_VOLUMEDOWN>;
 =09status =3D "okay";
@@ -141,6 +153,14 @@ &sdhc_2 {
 =09status =3D "okay";
 };
=20
+&sound {
+=09model =3D "msm8916-1mic";
+=09audio-routing =3D
+=09=09"AMIC1", "MIC BIAS External1",
+=09=09"AMIC2", "MIC BIAS Internal2",
+=09=09"AMIC3", "MIC BIAS External1";
+};
+
 &usb {
 =09extcon =3D <&usb_id>, <&usb_id>;
 =09status =3D "okay";
--=20
2.39.2



