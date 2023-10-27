Return-Path: <devicetree+bounces-12508-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4662F7D9BDE
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 16:43:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 76B791C20B6C
	for <lists+devicetree@lfdr.de>; Fri, 27 Oct 2023 14:43:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 470D517990;
	Fri, 27 Oct 2023 14:43:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=trvn.ru header.i=@trvn.ru header.b="0TKezU14"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4986518049
	for <devicetree@vger.kernel.org>; Fri, 27 Oct 2023 14:43:37 +0000 (UTC)
Received: from box.trvn.ru (box.trvn.ru [194.87.146.52])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AE5A9C4;
	Fri, 27 Oct 2023 07:43:35 -0700 (PDT)
Received: from authenticated-user (box.trvn.ru [194.87.146.52])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
	(No client certificate requested)
	by box.trvn.ru (Postfix) with ESMTPSA id 8279B40553;
	Fri, 27 Oct 2023 19:42:48 +0500 (+05)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=trvn.ru; s=mail;
	t=1698417769; bh=/wvspNZ6UnwHBJSoNffLyGijS/yc+9Bx1gjik/P77pE=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=0TKezU14dvQYvmZVCGhrOkT0XMcQVoePyWFa1I3rRm6mX4nIMDQkDiluXU7Jy+xjo
	 5b/L/FgM0buo9gOBYyYQcJ9diV0i55P2iwvM2ByaMHUZj5uudoONCyJUSKUbC7KuCN
	 PAyHpkQ+WUrDvkVYgCreFW4JCU8XFe0KCrycBlJZaw4toIVjZi7IFsoKCwfaao5DIr
	 sbvcDPg1Tm/+LDEEMTmIsv7Yf0yOWj9uygWUSsmWPQd+IpxHQuZFL+sf1IE6dsEfoq
	 RS/KkKO1QhFH1HHNm4hnCPfOV31Nh7GIWcKuP62bg+OpO+HGwb60otqk7xY2YcmUOh
	 HWS2tuk+XdVIA==
From: Nikita Travkin <nikita@trvn.ru>
Date: Fri, 27 Oct 2023 19:42:21 +0500
Subject: [PATCH 1/3] arm64: dts: qcom: acer-aspire1: Enable RTC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231027-aspire1-sound-v1-1-5ff3cf8b5701@trvn.ru>
References: <20231027-aspire1-sound-v1-0-5ff3cf8b5701@trvn.ru>
In-Reply-To: <20231027-aspire1-sound-v1-0-5ff3cf8b5701@trvn.ru>
To: cros-qcom-dts-watchers@chromium.org, Andy Gross <agross@kernel.org>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Nikita Travkin <nikita@trvn.ru>
X-Developer-Signature: v=1; a=openpgp-sha256; l=693; i=nikita@trvn.ru;
 h=from:subject:message-id; bh=/wvspNZ6UnwHBJSoNffLyGijS/yc+9Bx1gjik/P77pE=;
 b=owEBbQKS/ZANAwAIAUMc7O4oGb91AcsmYgBlO8xbT/dr4P0OR1A/Mcg7Izk15NCEbz2Ss101B
 ClTp7VwQNaJAjMEAAEIAB0WIQTAhK9UUj+qg34uxUdDHOzuKBm/dQUCZTvMWwAKCRBDHOzuKBm/
 de0FD/sGSQp699iOGnsKkb4UdbmDIxMt8Iwx4iwbvxX3zqcano/O6E8lu9tmB+ZXUMRR874ni3Q
 ZaysymuK1cCXW02SL2Kq14OzUj/o+hw9kYpHstfGS5dZjxErMPMcHwhn3xl+63C9yEdi61cElBY
 9hZ69fmLwbGzUYxcu/2Ed3janX1ee42nYa49iTA2TklbczxFY/RFCrEOzBBL5yckqFcYD/z4Ry/
 l0/lRlcmiypWpNX+rVDO3l0VwbmuOvXGm6cmk8qzWOtDH86/lIPtFb17IAo1pgdgPmdLxCbMAyN
 Zomz6AbKBmVDtFiLbBnqNAVRp72VF1jbjQaNX/J7fE1bjg2qq60Intb9LshPCXYklW0wm/illaa
 cCXREzzvHgTO+7oZ9tzgPT4K+FRqnGFxeMlfhb9CfWpIW2t+R0+AZXo4amdPJrpowe0RPddm0W2
 ScZbpYQGxYMiUR3/t81JH2fV9ynRL8VtqqiGvbGafMyN3lOauIy5ws4d3BLheCjZcGnuP8czll1
 nSQENoP1olh46Hiut5DZbji7iGN+l/gF7W3G23u2LI6sqXuyqleO2qdtDpTNsxz1o2mofXsSUZ+
 x26pEBIus5bkFChiV8q4YpDUwUSX/vAdFs6dJmwTJs3R7NP/Zp0LT4I4BPOMQcAPskO06JNGalH
 Y5jXKc9ZqA3o72Q==
X-Developer-Key: i=nikita@trvn.ru; a=openpgp;
 fpr=C084AF54523FAA837E2EC547431CECEE2819BF75

pm6150 has a read-only RTC that can be used to keep the time with some
extra userspace tools. Enable it.

Signed-off-by: Nikita Travkin <nikita@trvn.ru>
---
 arch/arm64/boot/dts/qcom/sc7180-acer-aspire1.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sc7180-acer-aspire1.dts b/arch/arm64/boot/dts/qcom/sc7180-acer-aspire1.dts
index dbb48934d499..cfde8cd47107 100644
--- a/arch/arm64/boot/dts/qcom/sc7180-acer-aspire1.dts
+++ b/arch/arm64/boot/dts/qcom/sc7180-acer-aspire1.dts
@@ -351,6 +351,10 @@ &pm6150_pon {
 	status = "disabled";
 };
 
+&pm6150_rtc {
+	status = "okay";
+};
+
 &qupv3_id_0 {
 	status = "okay";
 };

-- 
2.41.0


