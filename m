Return-Path: <devicetree+bounces-8531-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 7004A7C884C
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 17:07:46 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 29C1D282D18
	for <lists+devicetree@lfdr.de>; Fri, 13 Oct 2023 15:07:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 48ECB18C2A;
	Fri, 13 Oct 2023 15:07:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=collabora.com header.i=@collabora.com header.b="gNe5ra6S"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C300E29A9
	for <devicetree@vger.kernel.org>; Fri, 13 Oct 2023 15:07:40 +0000 (UTC)
Received: from madras.collabora.co.uk (madras.collabora.co.uk [IPv6:2a00:1098:0:82:1000:25:2eeb:e5ab])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A0E4BD;
	Fri, 13 Oct 2023 08:07:37 -0700 (PDT)
Received: from notapiano.myfiosgateway.com (zone.collabora.co.uk [167.235.23.81])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
	(No client certificate requested)
	(Authenticated sender: nfraprado)
	by madras.collabora.co.uk (Postfix) with ESMTPSA id 02377660731E;
	Fri, 13 Oct 2023 16:07:33 +0100 (BST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=collabora.com;
	s=mail; t=1697209655;
	bh=KENb6WnDrYEIv2tlDoQvqvhs4xHUGs9UXkMbd8bq8HE=;
	h=From:To:Cc:Subject:Date:From;
	b=gNe5ra6S/GCUHQiYbmDocwcriA4LrHATwxyGJWNY9fFpxT3CIgJdlrKcY0Uy0Khvw
	 djPpT82RXWmws+oEHWKvrTMRhRjXmcxW2D6guBRX2nfRTatZGqYw7+6tKPSDyn3MSO
	 2J8qVXPOGft/KwQahO9ffeE5TrL33P87geTiqf0JqfekkrdkmWKormxIzzXn/6Kub1
	 e1yPci12wiV2so5j1xGqDkAiziV711S4ue0TGDWlaUAi3yPrYgJhmdbhbsm/T2V9H5
	 L+bRkuSuTVfy0FmFtdC3Y+JEcepB0BaG7EiQk8ThtbIAMsLsfcqcnKlWCZp5LsUT6m
	 JWKmBgnm8ekQw==
From: =?UTF-8?q?N=C3=ADcolas=20F=2E=20R=2E=20A=2E=20Prado?= <nfraprado@collabora.com>
To: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
	Matthias Brugger <matthias.bgg@gmail.com>
Cc: Chen-Yu Tsai <wenst@chromium.org>,
	kernel@collabora.com,
	=?UTF-8?q?N=C3=ADcolas=20F=2E=20R=2E=20A=2E=20Prado?= <nfraprado@collabora.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-mediatek@lists.infradead.org
Subject: [PATCH] arm64: dts: mediatek: mt8192-asurada: Remove CrosEC base detection node
Date: Fri, 13 Oct 2023 11:06:38 -0400
Message-ID: <20231013150729.750609-1-nfraprado@collabora.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The commit adding the ChromeOS EC to the Asurada Devicetree mistakenly
added a base detection node. While tablet mode detection is supported by
CrosEC and used by Hayato, it is done through the cros-ec-keyb driver.
The base detection node, which is handled by the hid-google-hammer
driver, also provides tablet mode detection but by checking base
attachment status on the CrosEC, which is not supported for Asurada.

Hence, remove the unused CrosEC base detection node for Asurada.

Fixes: eb188a2aaa82 ("arm64: dts: mediatek: asurada: Add ChromeOS EC")
Signed-off-by: Nícolas F. R. A. Prado <nfraprado@collabora.com>

---
Chen-Yu,
if you could test this on Hayato just to be extra sure tablet mode
detection still works fine, that'd be appreciated as I don't have access
to one. That said, I've tested on Tomato which should behave exactly the
same so I'm confident this node was entirely unused.

Thanks,
Nícolas

 arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi b/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi
index f2281250ac35..02ce05bc151a 100644
--- a/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi
@@ -1336,10 +1336,6 @@ cros_ec: ec@0 {
 		#address-cells = <1>;
 		#size-cells = <0>;
 
-		base_detection: cbas {
-			compatible = "google,cros-cbas";
-		};
-
 		cros_ec_pwm: pwm {
 			compatible = "google,cros-ec-pwm";
 			#pwm-cells = <1>;
-- 
2.42.0


