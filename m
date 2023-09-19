Return-Path: <devicetree+bounces-1348-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 31C317A5F9C
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 12:32:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id DF128281C99
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 10:32:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A18DD3D398;
	Tue, 19 Sep 2023 10:31:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EDE32E642
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 10:31:41 +0000 (UTC)
Received: from mx0b-001ae601.pphosted.com (mx0a-001ae601.pphosted.com [67.231.149.25])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 805B8119
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 03:31:39 -0700 (PDT)
Received: from pps.filterd (m0077473.ppops.net [127.0.0.1])
	by mx0a-001ae601.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 38J4RRCb031661;
	Tue, 19 Sep 2023 05:31:20 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding:content-type; s=
	PODMain02222019; bh=Owv3MGKxi43WD2sBuhitoE9k62iaoJnCTY7E9ZslEyc=; b=
	q+X/DsTjY0qdwFjSHgLivZRNEuPSlguJo7x6uRQ6ECsiu4QPFfqWrjtklP82gsIX
	5p2zdlpZRVoLCdmCE96G71TIFLzBKQ0TRYvAyssYwS6Op2QIbbO1HDdp+WmP3gra
	oOWAUfqTUr2L/yS8tJWv7wn8C/RT61jKlerAwbPfclECAp/Dkg5j2Rko0hsP8TNf
	xzH/n8z5LO998/leyKpNkthpRugIG2n2UCHObDUGpHwAsXx0svpk1rHDiKKdgoiu
	VovEjXiNNlwGYBnD2xPaJ2f2Aanv9kI+hJ6zlZJbUH3r/U22iffUFxz5FAAPYWeb
	51Tm6AQQhfBiqI1zYhxNzw==
Received: from ediex01.ad.cirrus.com ([84.19.233.68])
	by mx0a-001ae601.pphosted.com (PPS) with ESMTPS id 3t59ry3p1h-3
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 19 Sep 2023 05:31:20 -0500 (CDT)
Received: from ediex01.ad.cirrus.com (198.61.84.80) by ediex01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.37; Tue, 19 Sep
 2023 11:31:16 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by ediex01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.2.1118.37 via Frontend
 Transport; Tue, 19 Sep 2023 11:31:16 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 97D92357E;
	Tue, 19 Sep 2023 10:31:16 +0000 (UTC)
From: Charles Keepax <ckeepax@opensource.cirrus.com>
To: <broonie@kernel.org>
CC: <lgirdwood@gmail.com>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <alsa-devel@alsa-project.org>,
        <devicetree@vger.kernel.org>, <patches@opensource.cirrus.com>
Subject: [PATCH 5/5] ASoC: cs42l43: Extend timeout on bias sense timeout
Date: Tue, 19 Sep 2023 11:31:16 +0100
Message-ID: <20230919103116.580305-6-ckeepax@opensource.cirrus.com>
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
X-Proofpoint-GUID: TBnGqPNena2gfzHQHpLl-HTcDJpprhtk
X-Proofpoint-ORIG-GUID: TBnGqPNena2gfzHQHpLl-HTcDJpprhtk
X-Proofpoint-Spam-Reason: safe
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

For very slow removals the current bias sense timeout is sometimes too
short and unclamps the mic bias before the jack removal is properly
detected by the tip detect, causing a pop. As bias sense should be
tuned to deliver very few false positives, increase the timeout fairly
dramatically to cover all but the most exaggerated removals.

Signed-off-by: Charles Keepax <ckeepax@opensource.cirrus.com>
---
 sound/soc/codecs/cs42l43-jack.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/codecs/cs42l43-jack.c b/sound/soc/codecs/cs42l43-jack.c
index 66923cf2fdaff..861f9ee671cdf 100644
--- a/sound/soc/codecs/cs42l43-jack.c
+++ b/sound/soc/codecs/cs42l43-jack.c
@@ -290,7 +290,7 @@ irqreturn_t cs42l43_bias_detect_clamp(int irq, void *data)
 	struct cs42l43_codec *priv = data;
 
 	queue_delayed_work(system_wq, &priv->bias_sense_timeout,
-			   msecs_to_jiffies(250));
+			   msecs_to_jiffies(1000));
 
 	return IRQ_HANDLED;
 }
-- 
2.39.2


