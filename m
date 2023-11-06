Return-Path: <devicetree+bounces-14125-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 918C17E20F5
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 13:09:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C259F1C209E4
	for <lists+devicetree@lfdr.de>; Mon,  6 Nov 2023 12:09:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6EE9A1EB45;
	Mon,  6 Nov 2023 12:09:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=riseup.net header.i=@riseup.net header.b="bGHp5Ycb"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 095DA1EB36
	for <devicetree@vger.kernel.org>; Mon,  6 Nov 2023 12:09:24 +0000 (UTC)
Received: from mx1.riseup.net (mx1.riseup.net [198.252.153.129])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10B0710C2;
	Mon,  6 Nov 2023 04:09:23 -0800 (PST)
Received: from mx0.riseup.net (mx0-pn.riseup.net [10.0.1.42])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx1.riseup.net (Postfix) with ESMTPS id 4SP9BV4r8gzDqqs;
	Mon,  6 Nov 2023 12:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=riseup.net; s=squak;
	t=1699272562; bh=q692EMLiwWELVU5OazHP7MapPL7Sxk2dJzZRLS2Ag4c=;
	h=From:Date:Subject:References:In-Reply-To:To:Cc:From;
	b=bGHp5YcbbstwN543CYfC65ybVr9InUDIKqnsXV1M1wxD+lLArDlCCEzYjfT01FVKD
	 vsqSyarspdyguFt1lfOCrshyGpY17M+iXKVRbFl3h9IMYgO2ZZ86TJnCsjOkOEiy7H
	 Sqr1iXj0dVwn6N1TdoeW51EfxCrETU1E6cPZjOxc=
Received: from fews01-sea.riseup.net (fews01-sea-pn.riseup.net [10.0.1.109])
	(using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
	 key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
	(No client certificate requested)
	by mx0.riseup.net (Postfix) with ESMTPS id 4SP9BT481Fz9t68;
	Mon,  6 Nov 2023 12:09:21 +0000 (UTC)
X-Riseup-User-ID: 770E6A4A8EF85EF28666735B757F63337B5306E8D98DDF1F13F0AD2D57CFE857
Received: from [127.0.0.1] (localhost [127.0.0.1])
	 by fews01-sea.riseup.net (Postfix) with ESMTPSA id 4SP9BQ1y1XzJmtY;
	Mon,  6 Nov 2023 12:09:18 +0000 (UTC)
From: Dang Huynh <danct12@riseup.net>
Date: Mon, 06 Nov 2023 19:08:36 +0700
Subject: [PATCH 8/8] soc: qcom: socinfo: Add PM8937 Power IC
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231106-pm8937-v1-8-ec51d9eeec53@riseup.net>
References: <20231106-pm8937-v1-0-ec51d9eeec53@riseup.net>
In-Reply-To: <20231106-pm8937-v1-0-ec51d9eeec53@riseup.net>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, Lee Jones <lee@kernel.org>, 
 Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>, 
 Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>, 
 Robert Marko <robimarko@gmail.com>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org, 
 devicetree@vger.kernel.org, Dang Huynh <danct12@riseup.net>

The PM8917 and PM8937 uses the same SUBTYPE ID.

The PM8937 is found in boards with MSM8917, MSM8937 and MSM8940
and APQ variants.

Signed-off-by: Dang Huynh <danct12@riseup.net>
---
 drivers/soc/qcom/socinfo.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/soc/qcom/socinfo.c b/drivers/soc/qcom/socinfo.c
index 51e05bec5bfc..37692fc1aefb 100644
--- a/drivers/soc/qcom/socinfo.c
+++ b/drivers/soc/qcom/socinfo.c
@@ -93,7 +93,7 @@ static const char *const pmic_models[] = {
 	[22] = "PM8821",
 	[23] = "PM8038",
 	[24] = "PM8005/PM8922",
-	[25] = "PM8917",
+	[25] = "PM8917/PM8937",
 	[26] = "PM660L",
 	[27] = "PM660",
 	[30] = "PM8150",

-- 
2.42.1


