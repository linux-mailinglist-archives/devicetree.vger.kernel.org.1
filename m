Return-Path: <devicetree+bounces-8687-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 8217B7C9B27
	for <lists+devicetree@lfdr.de>; Sun, 15 Oct 2023 22:03:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id E2370B20BBC
	for <lists+devicetree@lfdr.de>; Sun, 15 Oct 2023 20:03:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 608CC11706;
	Sun, 15 Oct 2023 20:03:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=z3ntu.xyz header.i=@z3ntu.xyz header.b="XPnutBRu"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A261DCA4D
	for <devicetree@vger.kernel.org>; Sun, 15 Oct 2023 20:03:38 +0000 (UTC)
Received: from mail.z3ntu.xyz (mail.z3ntu.xyz [128.199.32.197])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 53540C5;
	Sun, 15 Oct 2023 13:03:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=z3ntu.xyz; s=z3ntu;
	t=1697400213; bh=2ykxA5zzNJWAE+OoTTOfsNOtoZ0RYvFAtzV34C7L8Ho=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc;
	b=XPnutBRuLZF+K0HCGwq4OvnYkOVs0vOPCn0mKcuV4sFSBJ9Iz5LC8WoNuGdk1j5lO
	 v2f7nk9aVO/u9rA+hgC4/+BSozFEish58yScozF/Qv09ZjOFc6KDGE3oj1Saai5PZs
	 Jgor3sBqz6RamxbhpeeAbXID5VBSgytZ0VKkS/lo=
From: Luca Weiss <luca@z3ntu.xyz>
Date: Sun, 15 Oct 2023 22:03:07 +0200
Subject: [PATCH 2/4] remoteproc: qcom_wcnss: Add WCN3680B compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231015-fp3-wcnss-v1-2-1b311335e931@z3ntu.xyz>
References: <20231015-fp3-wcnss-v1-0-1b311335e931@z3ntu.xyz>
In-Reply-To: <20231015-fp3-wcnss-v1-0-1b311335e931@z3ntu.xyz>
To: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Mathieu Poirier <mathieu.poirier@linaro.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Loic Poulain <loic.poulain@linaro.org>, 
 Kalle Valo <kvalo@kernel.org>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>, 
 Stephan Gerhold <stephan.gerhold@kernkonzept.com>
Cc: linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 wcn36xx@lists.infradead.org, linux-wireless@vger.kernel.org, 
 Luca Weiss <luca@z3ntu.xyz>
X-Mailer: b4 0.12.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=856; i=luca@z3ntu.xyz;
 h=from:subject:message-id; bh=2ykxA5zzNJWAE+OoTTOfsNOtoZ0RYvFAtzV34C7L8Ho=;
 b=owEBbQKS/ZANAwAIAXLYQ7idTddWAcsmYgBlLEWR1EdQQWFa0spDxB5Nq2eXKQrvzYfHimGBh
 88EaOpKOLSJAjMEAAEIAB0WIQQ5utIvCCzakboVj/py2EO4nU3XVgUCZSxFkQAKCRBy2EO4nU3X
 Vj9ZD/9+ky5IFpL9cSPvYSEDGkwX+QREqSdT7eBH+Px1+POoBQe5sLUM2/GwEZFd1vp88/2aH3S
 e3nfs+I8w39H/VZSUvZ9twVBWbzswlS6bKnlm6DaHzwc5aTbox0oTs7yIy3MFFsMz+rNbHaMg3P
 VomVU3n6qrZsDYsB3nyibYw61epBl3XFqGD39mC0BioHpc/oyXdkhWkNRwvdv0CcKZNiVGeg5YH
 vFRr/Q/HrdnH1TX8dn4URV7MFAFbtA4poBEDaHLW2RokhnOMW5xbxwVFWZ2/03IUcZ7JCdX9bi6
 zthj3sV3v2i+r3qcbIzO31JRVxLrJoM/d+z4q5v+t4IEX+5elmkNKuWDd548Sezgi1gxdERD6oR
 OdcInOZrX0lFfhzH9sivg79PufDk0GIBn8CVjSjh1fJJcPd6hFMr8wII0kmtGd3oeryTLCmu6pV
 d1MJKtcTLJ+TzVvkOgSuReXqWpz1ofDkyJrbJzaky8WumnlAaz6S+eb3TKE1abh/gQmm4+QZOgS
 LJdnh8AOVr1GCbfj+ciX6UeX35f5FE7A5/MozYbU8BvDYqaDN+h00vEF+uyqVzgBJQEGXcgVlLO
 WuUdWqlx5ZhlCz/Cx8WkGHP/H1vStUntNoeqqxUK1rWZ5NFTU86x2J6uSITf5Wr+28tFDS8mWBv
 1cyLkonatMF0K/Q==
X-Developer-Key: i=luca@z3ntu.xyz; a=openpgp;
 fpr=BD04DA24C971B8D587B2B8D7FAF69CF6CD2D02CD
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add a compatible for the WCN3680B chip used with some Qualcomm SoCs.

It shares the same regulator setup as WCN3680, so we can reuse the
driver data for that.

Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
---
 drivers/remoteproc/qcom_wcnss_iris.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/remoteproc/qcom_wcnss_iris.c b/drivers/remoteproc/qcom_wcnss_iris.c
index dd36fd077911..22acc609105f 100644
--- a/drivers/remoteproc/qcom_wcnss_iris.c
+++ b/drivers/remoteproc/qcom_wcnss_iris.c
@@ -99,6 +99,7 @@ static const struct of_device_id iris_of_match[] = {
 	{ .compatible = "qcom,wcn3660", .data = &wcn3660_data },
 	{ .compatible = "qcom,wcn3660b", .data = &wcn3680_data },
 	{ .compatible = "qcom,wcn3680", .data = &wcn3680_data },
+	{ .compatible = "qcom,wcn3680b", .data = &wcn3680_data },
 	{}
 };
 

-- 
2.42.0


