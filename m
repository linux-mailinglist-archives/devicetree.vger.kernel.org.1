Return-Path: <devicetree+bounces-85876-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0E882931A30
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 20:18:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 30B201C20B75
	for <lists+devicetree@lfdr.de>; Mon, 15 Jul 2024 18:18:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id ED61C6A33A;
	Mon, 15 Jul 2024 18:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VNusSIxu"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CEFA482EF
	for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 18:18:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721067533; cv=none; b=sj++6ev7VGHOJp4zl+An3Sm7n9mbGl6/WAZj4Xd2GuZgPH4kQo6P93WLlJMoz9WGK9PG/oLT4eDBlRZAqbp1agq4jMmxHVXesJ7HZr+KnvnrrKN64cLHpRqoWl2SI9XG7hdGFzzvNr8ntq3Tl0JoyEaZZAyZI144d03NDOj2cOQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721067533; c=relaxed/simple;
	bh=8t4RfQy3P1Z1EKYBuZRc0Ktb+Ojx7hgB9B/9U4scGzE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=DpuxGoVQv9h4Xuuz6wENQW1T25lfS9Kg/ywGtnOoQ5IuaIoOHJUe5Bw85DFfFN6jwHF25DBdrqTCG4jKU01sBbNwreYtDmuXl/xumwOgAN2Z50XFWKksG5Je5bPGwqPUIga6F9sv3l4KNPEpK8KYgsDTqIoVVcB1vGuB4FaTFGA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VNusSIxu; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-52ea5dc3c66so7398956e87.3
        for <devicetree@vger.kernel.org>; Mon, 15 Jul 2024 11:18:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721067530; x=1721672330; darn=vger.kernel.org;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:from:to:cc:subject:date:message-id:reply-to;
        bh=mNnn9ne6FBNOzHrQiv0XRrAgPKUaJ4BowhgnQsLGK3Y=;
        b=VNusSIxuMs+eOcDjQslQzphKuOLyup3OlahZ4aodKdn33d5ZRyF753ocSUloatxZRT
         /OJcAwZueHKCTassuDLtzKl0NKux2Hhl94wKOvBSdTu2dZeqswmLk2dko9I6bU6gw/Yy
         zjhRV37TdZa9aFR+TOOJKbrRBIcVQk8ghFGq/p2MXyACX/5I3yJQXdF2+nnA+xTfx/dj
         dyp0oOqmMISPu8aOqkPhOyEcE59hI5l9erS6KCHjIJZtzDvvij3DSsysN/xCH/bssSI3
         CQm2h6RGEIuCij1QPbDEZCTU1sjlfvz9lkkmuKdLN3j7qRJw5brpL6KDN0ufe+1Yre7M
         JM+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721067530; x=1721672330;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mNnn9ne6FBNOzHrQiv0XRrAgPKUaJ4BowhgnQsLGK3Y=;
        b=eHVfO6gU1B/mi6Owxh8XrSGlROxCiHOwuFxspe6je1v0Lg/tRKqhBqpzfV8XrowxO9
         4ndv3V+ZPwpzwE5avgxB8ntSrpVqj2hmKNdPQzs+CfqbyZnE2Wy1St3fCVVfknafZ0Tf
         P7pHgdLMJy+EjUiIV5R5pl6HzOw2BUmyyKqjwOU5HeAWdWLAhlIEzdDsYT4IqYi+/PjK
         Ej85sTeuGlLK3yRNwCUGFEN26IMkzqyaeIxuh4nCp+itS31gGe+6gXRn9M2IVJEeivRi
         EBnbik7S+T+Zp+efZ6UXh6iumvgbc68KH//DOduT8sscV45Iir21TaLfYuT63adR1unh
         JDGw==
X-Forwarded-Encrypted: i=1; AJvYcCU5bj58PwGBgw7SBIdn2bHw03AeWqpn7traVZ6Po8Cnlsn5UsF37CcwRcBhM7a2yattjc/3K9AxGUu9jP1Jcak4kHuayOvrKAihAw==
X-Gm-Message-State: AOJu0YxyAPk+m0mu9guduURCBC3ZCORYsdwRm6doScSS2I+5HH33ZWfq
	aECK3xowQ/5A5FK/kE9xvdgABPt+/lgj3Pwfg6izSx4VB41mI/wUt3IhtYC0Q1o=
X-Google-Smtp-Source: AGHT+IFkkGxram/jBAsSoDWoc9wLHHENMyQZK8P4BmDRuJEgg+65S8JXf0gLeTGtH9lpl+K9f7O4Yg==
X-Received: by 2002:a05:6512:3b8f:b0:52c:df8e:a367 with SMTP id 2adb3069b0e04-52ede1d4519mr222874e87.53.1721067530303;
        Mon, 15 Jul 2024 11:18:50 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-52ed24e1d6esm938943e87.9.2024.07.15.11.18.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Jul 2024 11:18:49 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Mon, 15 Jul 2024 21:18:49 +0300
Subject: [PATCH v2] arm64: dts: qcom: disable GPU on x1e80100 by default
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240715-x1e8-zap-name-v2-1-a82488e7f7c1@linaro.org>
X-B4-Tracking: v=1; b=H4sIAAholWYC/3XMQQ6CMBCF4auQWTumLQXElfcwLAoMMIm2pDUNS
 np3K3uX/0vet0MgzxTgWuzgKXJgZ3OoUwHDYuxMyGNuUEJp0cgKN0kX/JgVrXkSNn05NK0qtRY
 S8mf1NPF2ePcu98Lh5fz74KP8rf+kKFFiX9fjJNpR9HV1e7A13p2dn6FLKX0BgB52t6sAAAA=
To: Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Akhil P Oommen <quic_akhilpo@quicinc.com>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=2274;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=8t4RfQy3P1Z1EKYBuZRc0Ktb+Ojx7hgB9B/9U4scGzE=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmlWgJU2FHIHovyrQZGHxcu0wF6Ze4+yiPMLqcJ
 0naRxhVN0iJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZpVoCQAKCRCLPIo+Aiko
 1dYDB/4y1k+neVwbpxO7yiZBRb8UX3qWw9aG5RITGWb2Gl27Z596lCCwjNx1wV3qqLEeyFWc7s1
 nAXFNVYbC/D9ASfKbbY+ef/QAiulb5tWZPjJ9nFaMunTWTFO8qjFXpfXM9bV7lqU4FFXlhu4egv
 S2EQ+XBLTylJV62G3COXdEcQNbi4BmExgSgv6waiafspwzPk3ITFqU8kJIn9ngpGNMJ87Ln/MfY
 NO5w6W6mb9/w0urTvmGWmhF840ibY0HPhEBXwAEfUKTjoiNCQwHVdxBLeqAp6lQJVKpykkcAFJm
 CUxa9ZIBmHBcvur+q9gU0KYg4eu4HK9fjDuVudwC013NqPVg
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The GPU on X1E80100 requires ZAP 'shader' file to be useful. Since the
file is signed by the OEM keys and might be not available by default,
disable the GPU node and drop the firmware name from the x1e80100.dtsi
file. Devices not being fused to use OEM keys can specify generic
location at `qcom/x1e80100/gen70500_zap.mbn` while enabling the GPU.

The CRD was lucky enough to work with the default settings, so reenable
the GPU on that platform and provide correct firmware-name (including
the SoC subdir).

Fixes: 721e38301b79 ("arm64: dts: qcom: x1e80100: Add gpu support")
Cc: Akhil P Oommen <quic_akhilpo@quicinc.com>
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
Changes in v2:
- Keep GPU enabled for X1E80100-CRD (Johan)
- Link to v1: https://lore.kernel.org/r/20240715-x1e8-zap-name-v1-1-b66df09d0b65@linaro.org
---
 arch/arm64/boot/dts/qcom/x1e80100-crd.dts | 8 ++++++++
 arch/arm64/boot/dts/qcom/x1e80100.dtsi    | 3 ++-
 2 files changed, 10 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
index 6152bcd0bc1f..8f4e238f014f 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
+++ b/arch/arm64/boot/dts/qcom/x1e80100-crd.dts
@@ -637,6 +637,14 @@ vreg_l3j_0p8: ldo3 {
 	};
 };
 
+&gpu {
+	satus = "okay";
+
+	zap-shader {
+		firmware-name = "qcom/x1e80100/gen70500_zap.mbn";
+	};
+};
+
 &i2c0 {
 	clock-frequency = <400000>;
 
diff --git a/arch/arm64/boot/dts/qcom/x1e80100.dtsi b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
index 7bca5fcd7d52..8df90d01eba8 100644
--- a/arch/arm64/boot/dts/qcom/x1e80100.dtsi
+++ b/arch/arm64/boot/dts/qcom/x1e80100.dtsi
@@ -3155,9 +3155,10 @@ gpu: gpu@3d00000 {
 			interconnects = <&gem_noc MASTER_GFX3D 0 &mc_virt SLAVE_EBI1 0>;
 			interconnect-names = "gfx-mem";
 
+			status = "disabled";
+
 			zap-shader {
 				memory-region = <&gpu_microcode_mem>;
-				firmware-name = "qcom/gen70500_zap.mbn";
 			};
 
 			gpu_opp_table: opp-table {

---
base-commit: 3fe121b622825ff8cc995a1e6b026181c48188db
change-id: 20240715-x1e8-zap-name-7b3c79234401

Best regards,
-- 
Dmitry Baryshkov <dmitry.baryshkov@linaro.org>


