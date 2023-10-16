Return-Path: <devicetree+bounces-9028-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0A0107CB482
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 22:18:57 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 9EB1DB20ED6
	for <lists+devicetree@lfdr.de>; Mon, 16 Oct 2023 20:18:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AEECE37165;
	Mon, 16 Oct 2023 20:18:51 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; dkim=none
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F030B358BB
	for <devicetree@vger.kernel.org>; Mon, 16 Oct 2023 20:18:49 +0000 (UTC)
Received: from smtprelay04.ispgateway.de (smtprelay04.ispgateway.de [80.67.18.16])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B404EB0;
	Mon, 16 Oct 2023 13:18:47 -0700 (PDT)
Received: from [92.206.139.21] (helo=note-book.lan)
	by smtprelay04.ispgateway.de with esmtpsa  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
	(Exim 4.96.1)
	(envelope-from <git@apitzsch.eu>)
	id 1qsU31-0007dx-1R;
	Mon, 16 Oct 2023 22:18:43 +0200
From: =?utf-8?q?Andr=C3=A9_Apitzsch?= <git@apitzsch.eu>
Date: Mon, 16 Oct 2023 22:18:08 +0200
Subject: [PATCH] arm64: dts: qcom: msm8939-longcheer-l9100: Add
 proximity-near-level
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20231016-bqm5_prox-v1-1-2acdc732be9d@apitzsch.eu>
X-B4-Tracking: v=1; b=H4sIAH+aLWUC/6tWKk4tykwtVrJSqFYqSi3LLM7MzwNyDHUUlJIzE
 vPSU3UzU4B8JSMDI2NDA0Mz3aTCXNP4gqL8Cl0TS1OLtDQzAyMLU1MloPqCotS0zAqwWdGxtbU
 ArB1bPFsAAAA=
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht, 
 phone-devel@vger.kernel.org, 
 =?utf-8?q?Andr=C3=A9_Apitzsch?= <git@apitzsch.eu>
X-Mailer: b4 0.12.3
X-Df-Sender: YW5kcmVAYXBpdHpzY2guZXU=
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE,
	RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Consider an object near to the sensor when their distance is about 4 cm
or below.

Signed-off-by: André Apitzsch <git@apitzsch.eu>
---
 arch/arm64/boot/dts/qcom/msm8939-longcheer-l9100.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/qcom/msm8939-longcheer-l9100.dts b/arch/arm64/boot/dts/qcom/msm8939-longcheer-l9100.dts
index 6802714fda3f..43cadc826121 100644
--- a/arch/arm64/boot/dts/qcom/msm8939-longcheer-l9100.dts
+++ b/arch/arm64/boot/dts/qcom/msm8939-longcheer-l9100.dts
@@ -139,6 +139,7 @@ magnetometer@d {
 	light-sensor@23 {
 		compatible = "liteon,ltr559";
 		reg = <0x23>;
+		proximity-near-level = <75>;
 
 		vdd-supply = <&pm8916_l17>;
 		vddio-supply = <&pm8916_l5>;

---
base-commit: 4d0515b235dec789578d135a5db586b25c5870cb
change-id: 20231016-bqm5_prox-4958ff602855

Best regards,
-- 
André Apitzsch <git@apitzsch.eu>


