Return-Path: <devicetree+bounces-12510-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 593947D9BE1
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 16:44:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id BAA0BB21494
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 14:44:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0D30236AF4;
	Fri, 27 Oct 2023 14:43:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=trvn.ru header.i=@trvn.ru header.b="l9Byw6iu"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 498C7182CE
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 14:43:37 +0000 (UTC)
Received: from box.trvn.ru (box.trvn.ru [194.87.146.52])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AEE62DE;
	Fri, 27 Oct 2023 07:43:35 -0700 (PDT)
Received: from authenticated-user (box.trvn.ru [194.87.146.52])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	by box.trvn.ru (Postfix) with ESMTPSA id 8156640554;
	Fri, 27 Oct 2023 19:42:49 +0500 (+05)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=trvn.ru; s=mail;
	t=1698417769; bh=eqmIkkJoEX4wLBmCVriM0QlbehXiI4/GaHNwKQsh75Q=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=l9Byw6iupejRMmwhEuuQ+u91/S+6UohNmC0/Mmt5FjV/RqZaioBBWCMJYR0sGLjVe
	 lV8NgyAtXfXTknoJPUOOoP7fAukroF/8gwBmuB+CPk3NTmbE5Il/bVVWRZ6lmvdCgJ
	 pl9jYSW9SdRbKCU47GbGqHGcAKJw0MQL7bR9AVBHwpqZ4CpevBua+13lXUzEPGADjN
	 YPua+mecjMhTNhx+fgVrX350lU0+4Om/zfNBc6kB7v6cDcYu8jCVw1bKwfalQnz9Ih
	 uGyHKlye0LSv8HRpj5BJKaFIdA62DgTCNyLUawSI54UQbTrK10zrhV5029mV72EUGb
	 GuE2lvhKGXchA==
From: Nikita Travkin <nikita@trvn.ru>
Date: Fri, 27 Oct 2023 19:42:22 +0500
Subject: [PATCH 2/3] arm64: dts: qcom: acer-aspire1: Correct audio codec
 definition
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231027-aspire1-sound-v1-2-5ff3cf8b5701@trvn.ru>
References: <20231027-aspire1-sound-v1-0-5ff3cf8b5701@trvn.ru>
In-Reply-To: <20231027-aspire1-sound-v1-0-5ff3cf8b5701@trvn.ru>
To: cros-qcom-dts-watchers@chromium.org, Andy Gross <agross@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Nikita Travkin <nikita@trvn.ru>
X-Developer-Signature: v=1; a=openpgp-sha256; l=1892; i=nikita@trvn.ru;
 h=from:subject:message-id; bh=eqmIkkJoEX4wLBmCVriM0QlbehXiI4/GaHNwKQsh75Q=;
 b=owEBbQKS/ZANAwAIAUMc7O4oGb91AcsmYgBlO8xbnO705dHZXG80e25iSYMqO/brPSmEW7Yce
 CG/57QRmiSJAjMEAAEIAB0WIQTAhK9UUj+qg34uxUdDHOzuKBm/dQUCZTvMWwAKCRBDHOzuKBm/
 dWGiEACoEd3tGoQuYmuisQ+9VXeRW4qCM3ITZGPmnxCX51TBFacSFh40cjqsMtFDSE3Unbcr4Tt
 /p88GxcD0xm2NBNNKgd5Xc7NHf+uQ+fjmkXXE/ZF2lKmknwG/Ifk3BxnoomAA6p7SaltffqYzxI
 cBz1DTGiqPmTWtqsFrUFoPZ5B1gU0IhLKpc0ukfm/iFPruyGIkMGsIoKaLrsC09+S7FzhdW8tcQ
 7FsklhElnboV7fvH29NW2D1oQU/SzIB4N+EbFJE7Zn+Bu8OU+Hl+2tPKh3hsjZ4K8sKKK7GOSAO
 4ghnMcCM14nQap02k2HP5JDG6TonB1RadIPVbop3+lDb5DWbk06bW4uUuUPQt5mC7Ng/gxasm7g
 ZYg5ScczRUXhSeXTo3x4D85j4ffL7LPbk9ZLebrvwo2/NhEfaGWhdTM747SqylZklRYC4aRiyJ0
 9m+4oKbt0Y+RxcLV5MRn11ajDZ2c+FwOD4FRSx3kK4pe52gdXLTQd0gHtY5Q/JQCnRNYiEoA6q8
 1qJNAjxhGbKXkTK0jqcvSNnEx8+oDZHu0JjGH+MUu53wAol3WI8Vbt4k2IfNdg7oux7+p/wLhrD
 ghB4GsjirzMxbRfz3so2SGvchK4ZN4AGMoTX/hbCIGSICbGfkJKyglo/HVIxc0q3xj7liKpII+/
 Bk1BRxCXRIJXMjw==
X-Developer-Key: i=nikita@trvn.ru; a=openpgp;
 fpr=C084AF54523FAA837E2EC547431CECEE2819BF75

When initially added, a mistake was made in the definition of the codec.

Despite the fact that the DMIC line is connected on the side of the
codec chip, and relevant passive components, including 0-ohm resistors
connecting the dmics, are present, the dmic line is still cut in
another place on the board, which was overlooked.

Correct this by replacing the dmic configuration with a comment
describing this hardware detail.

While at it, also add missing regulators definitions. This is not a
functional change as all the relevant regulators were already added via
the other rail supplies.

Fixes: 4a9f8f8f2ada ("arm64: dts: qcom: Add Acer Aspire 1")
Signed-off-by: Nikita Travkin <nikita@trvn.ru>
---
 arch/arm64/boot/dts/qcom/sc7180-acer-aspire1.dts | 17 +++++++++++++++--
 1 file changed, 15 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7180-acer-aspire1.dts b/arch/arm64/boot/dts/qcom/sc7180-acer-aspire1.dts
index cfde8cd47107..00b442696618 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-acer-aspire1.dts
+++ b/arch/arm64/boot/dts/qcom/sc7180-acer-aspire1.dts
@@ -209,9 +209,22 @@ alc5682: codec@1a {
 		AVDD-supply = <&vreg_l15a_1p8>;
 		MICVDD-supply = <&reg_codec_3p3>;
 		VBAT-supply = <&reg_codec_3p3>;
+		DBVDD-supply = <&vreg_l15a_1p8>;
+		LDO1-IN-supply = <&vreg_l15a_1p8>;
+
+		/*
+		 * NOTE: The board has a path from this codec to the
+		 * DMIC microphones in the lid, however some of the option
+		 * resistors are absent and the microphones are connected
+		 * to the SoC instead.
+		 *
+		 * If the resistors were to be changed by the user to
+		 * connect the codec, the following could be used:
+		 *
+		 * realtek,dmic1-data-pin = <1>;
+		 * realtek,dmic1-clk-pin = <1>;
+		 */
 
-		realtek,dmic1-data-pin = <1>;
-		realtek,dmic1-clk-pin = <1>;
 		realtek,jd-src = <1>;
 	};
 };

-- 
2.41.0


