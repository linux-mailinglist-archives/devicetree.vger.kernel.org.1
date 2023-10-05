Return-Path: <devicetree+bounces-6111-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 01A1F7B9DBD
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 15:56:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id A1365281D16
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 13:56:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2E96126E39;
	Thu,  5 Oct 2023 13:56:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cirrus.com header.i=@cirrus.com header.b="muxLXexF"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7085F26E20
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 13:56:19 +0000 (UTC)
Received: from mx0b-001ae601.pphosted.com (mx0b-001ae601.pphosted.com [67.231.152.168])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A5F537ECA
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 06:56:17 -0700 (PDT)
Received: from pps.filterd (m0077474.ppops.net [127.0.0.1])
	by mx0b-001ae601.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 395B5dCC026417;
	Thu, 5 Oct 2023 08:56:01 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding:content-type; s=
	PODMain02222019; bh=B/JJ0o25OMiXh7ZKoyzaRdrsMaOHfw5utqUGnF502pg=; b=
	muxLXexFQVaTYS+OUnvK+vD3ePXj5MQNUN2XBNgkrDRrFPVVrN3ako5UbCtH6NjX
	32FUqjFQvsP9n1UFGThiuoKX5e8h0CKPi7b3bUEy4ST29eOgV8dQvPPDfv4ZKAUg
	230V/zLzHQble3AuLa5ICZT47+qjqXMcNYCD3PNyrqvAFl4IPosut2ZYbzld8SRf
	q6pDBhwg0xqPlMQijO/cpQbChqFWcdx2/ggoXv3Pu1i6hr7+Rrp5JcPeOUg36hTG
	Xl3yAWv5DSDPGBtR7WAcHUdGt1CRNnxRQ2OEwmgtbLiJe80oOV2FuV941Yh4Ck+V
	rF58WUtAnsUOwHQdJ4ezVw==
Received: from ediex02.ad.cirrus.com ([84.19.233.68])
	by mx0b-001ae601.pphosted.com (PPS) with ESMTPS id 3teg3k6uxw-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 05 Oct 2023 08:56:01 -0500 (CDT)
Received: from ediex01.ad.cirrus.com (198.61.84.80) by ediex02.ad.cirrus.com
 (198.61.84.81) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.37; Thu, 5 Oct
 2023 14:56:00 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by ediex01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.2.1118.37 via Frontend
 Transport; Thu, 5 Oct 2023 14:55:59 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id DDDB9356C;
	Thu,  5 Oct 2023 13:55:59 +0000 (UTC)
From: Charles Keepax <ckeepax@opensource.cirrus.com>
To: <broonie@kernel.org>
CC: <lgirdwood@gmail.com>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <alsa-devel@alsa-project.org>, <devicetree@vger.kernel.org>,
        <patches@opensource.cirrus.com>
Subject: [PATCH 2/2] ASoC: cs42l43: Update values for bias sense
Date: Thu, 5 Oct 2023 14:55:59 +0100
Message-ID: <20231005135559.3117994-2-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20231005135559.3117994-1-ckeepax@opensource.cirrus.com>
References: <20231005135559.3117994-1-ckeepax@opensource.cirrus.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Proofpoint-GUID: 2cXeees9VrZ9_8QpEIge3kkBQw2I4eKL
X-Proofpoint-ORIG-GUID: 2cXeees9VrZ9_8QpEIge3kkBQw2I4eKL
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
 sound/soc/codecs/cs42l43-jack.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/codecs/cs42l43-jack.c b/sound/soc/codecs/cs42l43-jack.c
index 861f9ee671cdf..73454de068cf8 100644
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


