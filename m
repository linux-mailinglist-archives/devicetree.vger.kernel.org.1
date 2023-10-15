Return-Path: <devicetree+bounces-8697-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 38C3C7C9B74
	for <lists+devicetree@lfdr.de>; Sun, 15 Oct 2023 22:26:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 5FA721C209B2
	for <lists+devicetree@lfdr.de>; Sun, 15 Oct 2023 20:26:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E05D125C1;
	Sun, 15 Oct 2023 20:26:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=z3ntu.xyz header.i=@z3ntu.xyz header.b="Yt/tecon"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C55BE11731
	for <devicetree@vger.kernel.org>; Sun, 15 Oct 2023 20:26:10 +0000 (UTC)
Received: from mail.z3ntu.xyz (mail.z3ntu.xyz [128.199.32.197])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BEAC0E5;
	Sun, 15 Oct 2023 13:26:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=z3ntu.xyz; s=z3ntu;
	t=1697401566; bh=CRuF/liPUhNN5c5DuAg2ZYTNkQ2T6KZbPNHUyMEfqNY=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=Yt/teconabEkOeHd+bDc4D60MsiL75ISlJ9BYz7poEM9pe9qw44pKEiwo+KklCaq2
	 sdWYgwzeUedoe5GBIq/u/lXykQTh41/ZEPyMRhuKPj8OqZ0xvH1dVbaeMYDVtmQxe4
	 CSPHb/7ZNcy2wAOoEDCtzKPHS9Cc1o8dHNrdCTZs=
From: Luca Weiss <luca@z3ntu.xyz>
Date: Sun, 15 Oct 2023 22:26:02 +0200
Subject: [PATCH 2/2] arm64: dts: qcom: msm8953: Use non-deprecated
 qcom,domain in LPASS
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231015-msm8953-misc-fixes-v1-2-b800deca9e46@z3ntu.xyz>
References: <20231015-msm8953-misc-fixes-v1-0-b800deca9e46@z3ntu.xyz>
In-Reply-To: <20231015-msm8953-misc-fixes-v1-0-b800deca9e46@z3ntu.xyz>
To: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, Luca Weiss <luca@z3ntu.xyz>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=785; i=luca@z3ntu.xyz;
 h=from:subject:message-id; bh=CRuF/liPUhNN5c5DuAg2ZYTNkQ2T6KZbPNHUyMEfqNY=;
 b=owEBbQKS/ZANAwAIAXLYQ7idTddWAcsmYgBlLErcZNnGQ3cULk1wyRP00UnGnFyYR/G1qKmDW
 c2vbm2K23mJAjMEAAEIAB0WIQQ5utIvCCzakboVj/py2EO4nU3XVgUCZSxK3AAKCRBy2EO4nU3X
 Vo+sEACNhUz/14Pa00iSt33hmZzCXyHRnTgbYeMXkruc7oovQ6qPExI2XPM7zXAaFS+VPWG1hWy
 T7SWA8629CTNh1wLW9sHPt0k+drDENYzO1Dwhv2gE3CbosprkqIo3ZPZHKaDbUGW1P+YC+iFGtZ
 qN3C+FUc5XlIJh4NHBIExEp8lLsb58AGrNbSkX3PQiuQ4DEbweiiWphcdZap5HLchlnpcuMNC12
 RH7xY8/HDMrTk4TrVC+2fyqKvQJw75vdSOD+XdGo68Og/x5NApDzwLSp6y54plhqIsTt4ToBT94
 4L+OPI2ZNPLqH7m6Lm7qsTyfGfzooBRNDr2kjUfLjBzxuJFcwQusVGd6FfjbeEAvGoQxXgK2d/q
 ZV03XCCj/yybchX+hY8UZ9YLA6knZAYlP2uvAgzsawihitsFlWb3CovcUyzdeAcFihgraMa2DM2
 hHo9qcwIKQXDay60DFmzN1AShwFtWWpenRmT/hUqA/1G1TLxpwZ/qlWN46k4sklM3XDw/TX6hFD
 OGp10RQQWfY0gj7bl/EaGnTkwjGN8DOKQ8JHb7O01R7r3YU1t6sOD+eXr4giNhz8UAwkK/6Ayva
 fp2pKrpWIH6IpaOdNPRxAaoMB7oo2rgerLKhDvYr+uH9cQNtTXG3V/mrvE5uNjmW0i/fiV7m5Cr
 tbd0tBb8FwUOziw==
X-Developer-Key: i=luca@z3ntu.xyz; a=openpgp;
 fpr=BD04DA24C971B8D587B2B8D7FAF69CF6CD2D02CD
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Use the qcom,domain property instead of the deprecated qcom,apr-domain,
which in turn also fixes a bunch of dtbs_checks warnings.

Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
---
 arch/arm64/boot/dts/qcom/msm8953.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/msm8953.dtsi b/arch/arm64/boot/dts/qcom/msm8953.dtsi
index a3ba24ca599b..8374f9af8273 100644
--- a/arch/arm64/boot/dts/qcom/msm8953.dtsi
+++ b/arch/arm64/boot/dts/qcom/msm8953.dtsi
@@ -1645,7 +1645,7 @@ smd-edge {
 				apr {
 					compatible = "qcom,apr-v2";
 					qcom,smd-channels = "apr_audio_svc";
-					qcom,apr-domain = <APR_DOMAIN_ADSP>;
+					qcom,domain = <APR_DOMAIN_ADSP>;
 					#address-cells = <1>;
 					#size-cells = <0>;
 

-- 
2.42.0


