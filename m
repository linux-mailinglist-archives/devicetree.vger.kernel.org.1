Return-Path: <devicetree+bounces-1343-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E8217A5F94
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 12:31:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 819171C20C4F
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 10:31:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1F88B1381;
	Tue, 19 Sep 2023 10:31:42 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C97C92E652
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 10:31:40 +0000 (UTC)
Received: from mx0b-001ae601.pphosted.com (mx0a-001ae601.pphosted.com [67.231.149.25])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6CC91F2
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 03:31:38 -0700 (PDT)
Received: from pps.filterd (m0077473.ppops.net [127.0.0.1])
	by mx0a-001ae601.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 38J4RRCZ031661;
	Tue, 19 Sep 2023 05:31:18 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=
	from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding:content-type; s=PODMain02222019; bh=a
	VqstsaBSD2K7gIVkXXt0j+hccLECROHmsTT3NOhKeI=; b=XfjOqRrC5hsESJzQI
	RX0WZBsOue44L8ArhsOvc+Tmi3/nLFuJFFbmqMCKwJgyVWLwTn7QSz5fvDR/c9yV
	HTyaL4Dq/X3GHa2ta4ft2WXnY/2kK4Y1ykpK69XwgAEgd0JEje2SZM41OJa+nHuv
	TX+7oiCy3pJa5cfGxyv6mmjXPUrVgXk349BwdhD31Vlz8PY9uk16omx9uNVBq4Ae
	roLeorHG/4LIJAJVlaef+GFH5s3DKZB3IZywCK+AYqCvVvUGKgGHFkwEVxP2eRpu
	JOZG4gxixugGbe8tNoy7PvtHN7xCopJy84QaZ/s3y58U9RDP36hs0pcuAyvaWt91
	LwsYA==
Received: from ediex01.ad.cirrus.com ([84.19.233.68])
	by mx0a-001ae601.pphosted.com (PPS) with ESMTPS id 3t59ry3p1h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 19 Sep 2023 05:31:18 -0500 (CDT)
Received: from ediex01.ad.cirrus.com (198.61.84.80) by ediex01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.37; Tue, 19 Sep
 2023 11:31:16 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by ediex01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.2.1118.37 via Frontend
 Transport; Tue, 19 Sep 2023 11:31:16 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 4B50D11AA;
	Tue, 19 Sep 2023 10:31:16 +0000 (UTC)
From: Charles Keepax <ckeepax@opensource.cirrus.com>
To: <broonie@kernel.org>
CC: <lgirdwood@gmail.com>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <alsa-devel@alsa-project.org>,
        <devicetree@vger.kernel.org>, <patches@opensource.cirrus.com>
Subject: [PATCH 0/5] Minor default jack pop performance updates
Date: Tue, 19 Sep 2023 11:31:11 +0100
Message-ID: <20230919103116.580305-1-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Proofpoint-GUID: N3nK7fLmcEH4KA41Fb4LgyXwu73fLjEV
X-Proofpoint-ORIG-GUID: N3nK7fLmcEH4KA41Fb4LgyXwu73fLjEV
X-Proofpoint-Spam-Reason: safe
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Some small updates to the driver defaults to ensure a good pop
performance on jack insert and removal.

Thanks,
Charles

Charles Keepax (5):
  dt-bindings: ASoC: cirrus,cs42l43: Update a couple of default values
  ASoC: cs42l43: Lower default type detect time
  ASoC: cs42l43: Enable bias sense by default
  ASoC: cs42l43: Move headset bias sense enable earlier in process
  ASoC: cs42l43: Extend timeout on bias sense timeout

 .../bindings/sound/cirrus,cs42l43.yaml        |  4 +-
 sound/soc/codecs/cs42l43-jack.c               | 38 +++++++++----------
 2 files changed, 21 insertions(+), 21 deletions(-)

-- 
2.39.2


