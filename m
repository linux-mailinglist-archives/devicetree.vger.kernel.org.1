Return-Path: <devicetree+bounces-1344-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B7E657A5F96
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 12:31:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 72D96281E16
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 10:31:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A10B1339B1;
	Tue, 19 Sep 2023 10:31:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23D1F2E64E
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 10:31:41 +0000 (UTC)
Received: from mx0b-001ae601.pphosted.com (mx0a-001ae601.pphosted.com [67.231.149.25])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B8C9100
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 03:31:39 -0700 (PDT)
Received: from pps.filterd (m0077473.ppops.net [127.0.0.1])
	by mx0a-001ae601.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 38J4KMBx022193;
	Tue, 19 Sep 2023 05:31:18 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding:content-type; s=
	PODMain02222019; bh=XWaDlUm1G2+lS5Ldj7tMDOZUpoSf6T1n5pH2Bcq1VbM=; b=
	gj0IaAdgfDJwXjEaX/MNjQEs6BVcWvypoLElxQRWDKIo+5ksxEsmxbWXMXloamot
	bRyBA0owMAMuYcIC9tePcnFBTOBQXf6ldA50X3CsEhbKlVGHb8xr0NyIFv2o1u+y
	5fY0cSrAP2Yb5ovcGGD+VUp6k1bgGBkoOKbJBSSLHTMQq3BZywpciAq2QD4ADZV+
	TCEa2h4SA+qTTYbXsWxD4ZVrS48i3XLvh0GufePH5P3mvwUAZbjDIwjiQcuulcGL
	jzLLTDUoi+izjgkHcLaAJe34k3NYbvmuAR5VBg0AES4jVS3LttLRsGqswff4mYq0
	4/yT6voj0ACNHuwBLZusUw==
Received: from ediex02.ad.cirrus.com ([84.19.233.68])
	by mx0a-001ae601.pphosted.com (PPS) with ESMTPS id 3t59ry3p1j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 19 Sep 2023 05:31:18 -0500 (CDT)
Received: from ediex02.ad.cirrus.com (198.61.84.81) by ediex02.ad.cirrus.com
 (198.61.84.81) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.37; Tue, 19 Sep
 2023 11:31:16 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by
 anon-ediex02.ad.cirrus.com (198.61.84.81) with Microsoft SMTP Server id
 15.2.1118.37 via Frontend Transport; Tue, 19 Sep 2023 11:31:16 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 687AA11AB;
	Tue, 19 Sep 2023 10:31:16 +0000 (UTC)
From: Charles Keepax <ckeepax@opensource.cirrus.com>
To: <broonie@kernel.org>
CC: <lgirdwood@gmail.com>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <alsa-devel@alsa-project.org>,
        <devicetree@vger.kernel.org>, <patches@opensource.cirrus.com>
Subject: [PATCH 2/5] ASoC: cs42l43: Lower default type detect time
Date: Tue, 19 Sep 2023 11:31:13 +0100
Message-ID: <20230919103116.580305-3-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230919103116.580305-1-ckeepax@opensource.cirrus.com>
References: <20230919103116.580305-1-ckeepax@opensource.cirrus.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Proofpoint-GUID: Vb5_nkygpPqi3BLsPa2oIiMbceG1AAnS
X-Proofpoint-ORIG-GUID: Vb5_nkygpPqi3BLsPa2oIiMbceG1AAnS
X-Proofpoint-Spam-Reason: safe
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The current default is a little excessive, reduce the pop on insertion
by reducing the time a little. The new value of 1000uS is still pretty
conservative.

Signed-off-by: Charles Keepax <ckeepax@opensource.cirrus.com>
---
 sound/soc/codecs/cs42l43-jack.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/codecs/cs42l43-jack.c b/sound/soc/codecs/cs42l43-jack.c
index 92e37bc1df9dc..7008e50eded96 100644
--- a/sound/soc/codecs/cs42l43-jack.c
+++ b/sound/soc/codecs/cs42l43-jack.c
@@ -110,7 +110,7 @@ int cs42l43_set_jack(struct snd_soc_component *component,
 		priv->buttons[3] = 735;
 	}
 
-	ret = cs42l43_find_index(priv, "cirrus,detect-us", 10000, &priv->detect_us,
+	ret = cs42l43_find_index(priv, "cirrus,detect-us", 1000, &priv->detect_us,
 				 cs42l43_accdet_us, ARRAY_SIZE(cs42l43_accdet_us));
 	if (ret < 0)
 		goto error;
-- 
2.39.2


