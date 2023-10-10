Return-Path: <devicetree+bounces-7172-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 4046D7BF881
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 12:24:47 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 702FD1C20B35
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 10:24:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 712811802A;
	Tue, 10 Oct 2023 10:24:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cirrus.com header.i=@cirrus.com header.b="WQjsiKww"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D58E315AEA
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 10:24:42 +0000 (UTC)
Received: from mx0b-001ae601.pphosted.com (mx0b-001ae601.pphosted.com [67.231.152.168])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B8839E
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 03:24:41 -0700 (PDT)
Received: from pps.filterd (m0077474.ppops.net [127.0.0.1])
	by mx0b-001ae601.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 39A7lgWR020417;
	Tue, 10 Oct 2023 05:24:28 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding:content-type; s=
	PODMain02222019; bh=w3b3+6R0F1QShjM+MNfhDHhJ14lnXJRd0dtRxOHVNgc=; b=
	WQjsiKww/WM27AwPCANzMRLvw6hfjWL3ILGqBB83l+REtbGMfc7AWmPv7uN4kIMH
	/YnGtXCnIIhWJCk9RWQZwG5QU024KaCmm8rpyHMYWxdcUCnrHC3V/M0ZxORMJtmk
	UhH+CMO00HL1ydz9C6MTJJCyAyZNAD/ov4EseApOHoCnNHL/549nAEYTk5OUrLAW
	uQlsNQ/pQkgMwGr9SmAyl20PzmTXEk5Ig8O6NE04GJcX+veiXUAU7Qjzfei0ng7y
	PGrslwDXFFkAP2PS4prJaEVEvKnykyJsDxtpY6/cKDqoUY4Nac558+sAzV+JVd92
	xnf82B95DR5nvi34vmSFLA==
Received: from ediex02.ad.cirrus.com ([84.19.233.68])
	by mx0b-001ae601.pphosted.com (PPS) with ESMTPS id 3tkhhaj8w1-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 10 Oct 2023 05:24:28 -0500 (CDT)
Received: from ediex01.ad.cirrus.com (198.61.84.80) by ediex02.ad.cirrus.com
 (198.61.84.81) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.37; Tue, 10 Oct
 2023 11:24:26 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by ediex01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.2.1118.37 via Frontend
 Transport; Tue, 10 Oct 2023 11:24:26 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 1F61911AC;
	Tue, 10 Oct 2023 10:24:26 +0000 (UTC)
From: Charles Keepax <ckeepax@opensource.cirrus.com>
To: <broonie@kernel.org>
CC: <lgirdwood@gmail.com>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <alsa-devel@alsa-project.org>, <devicetree@vger.kernel.org>,
        <patches@opensource.cirrus.com>
Subject: [PATCH v2 2/2] ASoC: cs42l43: Update values for bias sense
Date: Tue, 10 Oct 2023 11:24:25 +0100
Message-ID: <20231010102425.3662364-2-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231010102425.3662364-1-ckeepax@opensource.cirrus.com>
References: <20231010102425.3662364-1-ckeepax@opensource.cirrus.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Proofpoint-ORIG-GUID: Hp2yAx6ccrLF2oxyPrSAfKjc2JmtXXU8
X-Proofpoint-GUID: Hp2yAx6ccrLF2oxyPrSAfKjc2JmtXXU8
X-Proofpoint-Spam-Reason: safe
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Due to an error in the datasheet the bias sense values currently don't
match the hardware. Whilst this is a change to the binding no devices
have yet shipped so updating the binding will not cause any issues.

Signed-off-by: Charles Keepax <ckeepax@opensource.cirrus.com>
---

Just rebased on v6.6-rc5.

Thanks,
Charles

 sound/soc/codecs/cs42l43-jack.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/codecs/cs42l43-jack.c b/sound/soc/codecs/cs42l43-jack.c
index 92e37bc1df9dc..9f5f1a92561d1 100644
--- a/sound/soc/codecs/cs42l43-jack.c
+++ b/sound/soc/codecs/cs42l43-jack.c
@@ -34,7 +34,7 @@ static const unsigned int cs42l43_accdet_db_ms[] = {
 static const unsigned int cs42l43_accdet_ramp_ms[] = { 10, 40, 90, 170 };
 
 static const unsigned int cs42l43_accdet_bias_sense[] = {
-	14, 23, 41, 50, 60, 68, 86, 95, 0,
+	14, 24, 43, 52, 61, 71, 90, 99, 0,
 };
 
 static int cs42l43_find_index(struct cs42l43_codec *priv, const char * const prop,
-- 
2.39.2


