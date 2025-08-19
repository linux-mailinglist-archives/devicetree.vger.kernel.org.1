Return-Path: <devicetree+bounces-206463-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 14536B2C53A
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 15:21:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id C5C497BA418
	for <lists+devicetree@lfdr.de>; Tue, 19 Aug 2025 13:19:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D7E06341ABD;
	Tue, 19 Aug 2025 13:18:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="KU5Luvsp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43FF3341AB4
	for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 13:18:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755609488; cv=none; b=cRMzahxoOuADulLEaZ5Oo8jV0BDDuQfN2yxj/m/YINRHhBJ6kIwnoVPpSoZ62mnBTvi5UxeQDWqaB1hoW1dNYYuwmlS89iyggw9Npfz/ebmb2DnJ/VIggyZ8isvzLCYzBjLUf3kesly2VSU/ceq04UfIE1F4idfUcL5GKPp85ZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755609488; c=relaxed/simple;
	bh=xtnDCv4eFzy5ACNTqpXuFQnkdvi4l046jdxQ272mGQw=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=XUzV+I7KZxmtwQvQY3pkstzlGKhaot3dHSME+sDklKCce/u9j9LsdHKuP1GDtmxf7D6k9BbukVvabYoz+2LRPVQc7ttXfZ3+2N8ySaaLrh5zVzDVoEro2hZcJxRMXi85L8oXD3zw5H81veYo56smSQTaqtHbhtO2wEh+hoEIb+I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=KU5Luvsp; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-afcb7a96309so69388466b.3
        for <devicetree@vger.kernel.org>; Tue, 19 Aug 2025 06:18:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755609486; x=1756214286; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=A2jIqckmzmL31HAyK5saMTVF8f6NQtPgJyovhg4/VOc=;
        b=KU5LuvspIbrM8968ErVH/Q51iTRyrS9tXBBILJxFhIMf4GnJ++8PzyCDG+yffX2X4A
         NlPt1nBG1uKmjEQGoIKiPjhgvh+LNGCuolOkSwa1OKTQtiV9GMpprNRWlYHn7yhaltJq
         hsckiX44FbAxzgC3j9iO00zIGuqGQCaHFj/HTJjScjIn0j9bZbXadoj8ZaZ5qXXw44qY
         5ne6FfxMlw4KTEhnQBVDLkjk5siVqHYN313HecFJ4i1Q7vcqKoKICvIaFjzdD1+jNME6
         ccNWZPw93u0nyzejGvksT3QekoINPqNBqWJq1GKU2kHKOayGUYid+gzq0H2tb/z3sBi0
         Lsqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755609486; x=1756214286;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=A2jIqckmzmL31HAyK5saMTVF8f6NQtPgJyovhg4/VOc=;
        b=iWIx741US+HoOLFVlfZxpaZrTmDW4Holu3MVouV2wxDZdzCje3OBH5NpEqRl/ZLIFl
         Hoicg9Lh3ztn/gK3ME1nWDOk8HNrENi0QMez0+u1Q+NUzGgMBPLZCY9hLlmVDJ2TpjyS
         8Ioq89b3xIeKvj/cbGYOT2z6uqXxL6rq2C2brVEzzPQkRvM6AGsQ77S4NQrM2ljYr+iA
         OpiCLffQ4C8qJ7xtMfY8NCs/EWU9LoK7dj2I9Ln+aufcCCsKkgwWfKwcejx0xQWM5sGE
         YSSN2Af70NAxQolJf3XZ04U5tzKreF19K/kYB5gIH8zEchNXxQIOnThCv4LgF77dIHuG
         w6Mw==
X-Forwarded-Encrypted: i=1; AJvYcCVbgma9ia/P0sxreUO/Xnvk9IVEJ/I2Fn+hdWhOoiFejd9np5RtOuIVNxjcjB+nmrp+zXZk5wG/wCe0@vger.kernel.org
X-Gm-Message-State: AOJu0Yxbp77X5yFo8G/ta6uUnAZeDRMDtvAEoabK4zuU9GiCjeU/Nn0c
	7hDObWQFSV1+geqPYvaprbjcVwH3CLDMc4pr+iAZnMeYfhrVXR71WJbgEo+a5lO6OhI=
X-Gm-Gg: ASbGncuVM2MjWc/TG+1jUOVClJLEr+52Ih5uJ2dR6F3rZ3I26Koa7cUk6RvljmGTwU7
	rYeOceymD27YVOjtQjRbmV1duaAa/oarlGp2CfnAyM/oyz60cgquHruE0aG1cYabpKheGxiiMh8
	gVY1urUWt7izT141fxU3jZyHjfkgb6vL45rvbJyciGVNmww3P0Hn/qKsxmb/hzaB3taPxHPOSaB
	QhCwKEdB8CZVCpJSpB5R3N4GH4AckCx1TKbDrQu5OKYQ7tJKNwumXd1gvLeB/wls52IiBB76Z+C
	M5zBecEWlzdrBYPxnWggnfmRVXfhe+HZY91RK5ooaUnBbZN44wCNrkRlcOt2keaXZ0JFbsgAt+x
	hKmW/qocHo1BJiQY6q5tWIHK5Slz/IgCEgw==
X-Google-Smtp-Source: AGHT+IGyvvSsYmBOqUpNPKJ0n3bvvP0DcDCulcG/syIt2wzsfbzAt0lyKnerC5YPY0kHA2qlG+r2Mw==
X-Received: by 2002:a17:907:7e9d:b0:ade:902e:7b4b with SMTP id a640c23a62f3a-afddd1f8b4bmr100763666b.7.1755609485345;
        Tue, 19 Aug 2025 06:18:05 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afcdd01ab3fsm1006508966b.102.2025.08.19.06.18.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 19 Aug 2025 06:18:04 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/2] ARM: dts: nxp: imx6ull: Minor whitespace cleanup
Date: Tue, 19 Aug 2025 15:18:01 +0200
Message-ID: <20250819131800.86990-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=833; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=xtnDCv4eFzy5ACNTqpXuFQnkdvi4l046jdxQ272mGQw=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBopHmIdIih5hgjFKYVXkgjYOmgK6x+Rs7p3ybX3
 j/4k1od8vWJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaKR5iAAKCRDBN2bmhouD
 15GYEACDpblDVOMuoKN4y9jt8cF4hJgLK9fli2s9chrgNEGKFUVpYq6K4M+iWYmXrBBPvZ2Kw2t
 CCjeHxVNkOM2PcH9C/3h5Xz4Aft/0XIK+EdQugnDfaYQr46cwlJ8C75O9KMtes/hR8llTh3qLIZ
 M26wOApvdXKMkvl4GKfHB6tdyQmW0xhLW+VB6BuY0TKWnsWfAkYr/tslhGE7URwyDbhEo3T43Gz
 ifcSgZeURLeyjrgztlS/HGjOb+Uh5XDBkxi2IWrVe0U+05Gv0TTJEv/HXIMok0oGwInp3JPnAcT
 UweplIcOEfh4A34gX+ZwtQ5RgycMcv+fwFgFNPbV0idAEtIsbljzAid19ikRmgi5vb6W3Sm0xyu
 joCSm4o9dg5PL0aYjcBIfDh6u17YJKhcYqvOrKDcFvTRUAOjEx8P+wJLFoPMOrtsamyxxaJZnTe
 2bmECOATOzSM9afaIO6irt1G7C4ocQUoF+OvFTbunP4XihRxHq1xcYCqJ/z+j8lERvCh9INlttD
 vAcAOl0CnNNL9FTOCQ7UM8xu5ovV/ssTxNXhZOT8RItS0Ze4RJj1jI3mDtZratMYt4qv4rQI4WQ
 Ep+Ez9WVUXvf2YKA4/ivB4fhn0bCLghsu6zIrVmbe7gVPCqrUb5QFlyMIIjgQ4zYNn6Sr36Rosp Q6PdBrAfYq3+2Mg==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

The DTS code coding style expects exactly one space around '='
character.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea-rmm.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea-rmm.dts b/arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea-rmm.dts
index 5d1cc8a1f555..107b00b9a939 100644
--- a/arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea-rmm.dts
+++ b/arch/arm/boot/dts/nxp/imx/imx6ull-engicam-microgea-rmm.dts
@@ -129,7 +129,7 @@ &i2c1 {
 	status = "okay";
 
 	touchscreen: touchscreen@38 {
-		compatible ="edt,edt-ft5306";
+		compatible = "edt,edt-ft5306";
 		reg = <0x38>;
 		pinctrl-names = "default";
 		pinctrl-0 = <&pinctrl_touchscreen>;
-- 
2.48.1


