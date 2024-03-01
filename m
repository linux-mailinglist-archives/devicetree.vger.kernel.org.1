Return-Path: <devicetree+bounces-47721-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id DA19686E524
	for <lists+devicetree@lfdr.de>; Fri,  1 Mar 2024 17:19:39 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 8BF421F25CC1
	for <lists+devicetree@lfdr.de>; Fri,  1 Mar 2024 16:19:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 33B3C40BE3;
	Fri,  1 Mar 2024 16:19:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=debian.org header.i=@debian.org header.b="gmow9JDw"
X-Original-To: devicetree@vger.kernel.org
Received: from master.debian.org (master.debian.org [82.195.75.110])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8956441E4E
	for <devicetree@vger.kernel.org>; Fri,  1 Mar 2024 16:19:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=82.195.75.110
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1709309971; cv=none; b=u29FUjRUDTbippi8wmaYiS9t2PdOtHB4SiFZQiHzMXyogHRaaq8DaJ1zg7Gl6WYj3p7NQsA332e0bebd0s9xYnkxMwP2ftuNSNlbO2u67Tu06xRZjoqOfA1c5I0OEgcPROmfJaKI/Em+3JjZqTbEc7zsOyLogwn1/ZudSw2lmlI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1709309971; c=relaxed/simple;
	bh=BxfXF7N/PpOIsKgeQQq9QzSICzrigsYszswaL8R9Lr8=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version:Content-Type; b=pwtfnHJkBBSSw4THcGwmeWtQe1aFHNHFvXITnEkRlHxaW3uuO/l8ikX7Q1RnrOiq8sE3L9LomJbpnfIoSd+lCPnuD3h6b7iVCBubNl0lJsDP3FU5TASZRDM/GJzgkqe2O6xlQFq4mVdRTFJTE5sxPqmQH8h1E9AwEfe8T2+ie6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org; spf=none smtp.mailfrom=master.debian.org; dkim=pass (2048-bit key) header.d=debian.org header.i=@debian.org header.b=gmow9JDw; arc=none smtp.client-ip=82.195.75.110
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=debian.org
Authentication-Results: smtp.subspace.kernel.org; spf=none smtp.mailfrom=master.debian.org
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=debian.org;
	s=smtpauto.master; h=Content-Transfer-Encoding:Content-Type:MIME-Version:
	Message-ID:Date:Subject:Cc:To:From:Reply-To:Content-ID:Content-Description:
	In-Reply-To:References; bh=IpAWeoNur8XPIpmTyfMcESNz/wRzFONQ9VyIf7SnmZw=; b=gm
	ow9JDwFHI4VWSStlrK5k5F00kB8UFc1afFSwxQGhv26C797k7Zamku37cYgDTzR+LS6+xQM4jUqfW
	zlhTwkLX69P+MsisjUewPR30VOhbNDkule9/DVElZ5NKOkUgtVZjqBYs4e8AQ5VhX+OwKE1aZ8XTX
	fDZYnfX2RVRhlr963mBCiwbdl9sVZt+bnvTvRlwuGGCOIDZk+JEEIRTe2V1GiBXqo7fKp2yivfYhw
	6P3tsotZVC2K4WDOxAJLEWsS55ZmmjhwTls++a33IhDshZszgkHfzOgQQ3uie/YLzYaTtkvXgjNro
	es21vMSTXyG47MRZBYjmhnlqjoO2RJKQ==;
Received: from ukleinek by master.debian.org with local (Exim 4.94.2)
	(envelope-from <ukleinek@master.debian.org>)
	id 1rg5bP-00AnHs-MQ; Fri, 01 Mar 2024 16:19:15 +0000
From: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <ukleinek@debian.org>
To: Heiko Stuebner <heiko@sntech.de>
Cc: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-rockchip@lists.infradead.org,
	=?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <u.kleine-koenig@pengutronix.de>
Subject: [PATCH] arm64: dts: rockchip: qnap-ts433: Fix name for UART pin header
Date: Fri,  1 Mar 2024 17:19:11 +0100
Message-ID: <20240301161911.558982-2-ukleinek@debian.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
X-Developer-Signature: v=1; a=openpgp-sha256; l=911; i=ukleinek@debian.org; h=from:subject; bh=BxfXF7N/PpOIsKgeQQq9QzSICzrigsYszswaL8R9Lr8=; b=owEBbQGS/pANAwAKAY+A+1h9Ev5OAcsmYgBl4f//Qh1JlbqOm+AmJNZ07ajDTSmWSAvFY+53r +Mb5KQse7GJATMEAAEKAB0WIQQ/gaxpOnoeWYmt/tOPgPtYfRL+TgUCZeH//wAKCRCPgPtYfRL+ TptxB/9+7OFndy9pHJP9co/+LGWLjI73BcfyCn3fYlN0eXLT2qhe3DaUCq8SvLxXMDm2Lv9kmTL tffTYsVL1EVEntBGvaww73CA4aO5c7o0jj2OIjRnVNvKOH1CV4po2oiHE3/ofpzXoso4r4bohyu Z31B93BjcFz7R7a2EF0r061voQ5NfrHhMIJ69KC2FvegtDzmBZZTH0P7neBsCP6j9Uo6+If+sEU vJ3GMDorV0dxt/MoGTHjLj6Q0AN0u4NjJU6t6Hj1iLcvvhJJ8PobT92vlkP82VnBe13Nvxd0eiJ R4Tm5ZnFGBSPQeavU6CT/fBtEuDKU9H2dHvL/h7IPQfeOYa8
X-Developer-Key: i=ukleinek@debian.org; a=openpgp; fpr=0D2511F322BFAB1C1580266BE2DCDD9132669BD6
Content-Transfer-Encoding: 8bit

I typoed the pin header name when copying it from my notes on paper.

Fixes: 9da1c0327d58 ("arm64: dts: rockchip: Add basic support for QNAP TS-433")
Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
---
 arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts b/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
index 2908486bc924..6a998166003c 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-qnap-ts433.dts
@@ -76,7 +76,7 @@ &sdhci {
 };
 
 /*
- * Pins available on CN2 connector at TTL voltage level (3V3).
+ * Pins available on CN3 connector at TTL voltage level (3V3).
  * ,_  _.
  * |1234|  1=TX 2=VCC
  * `----'  3=RX 4=GND

base-commit: 1870cdc0e8dee32e3c221704a2977898ba4c10e8
-- 
2.43.0


