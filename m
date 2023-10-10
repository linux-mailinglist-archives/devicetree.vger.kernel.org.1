Return-Path: <devicetree+bounces-7173-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C56A7BF882
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 12:24:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4DC14281C96
	for <lists+devicetree@lfdr.de>; Tue, 10 Oct 2023 10:24:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0971E1804D;
	Tue, 10 Oct 2023 10:24:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cirrus.com header.i=@cirrus.com header.b="TRHWt0Ky"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56A0516431
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 10:24:44 +0000 (UTC)
Received: from mx0b-001ae601.pphosted.com (mx0b-001ae601.pphosted.com [67.231.152.168])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2155B8
	for <devicetree@vger.kernel.org>; Tue, 10 Oct 2023 03:24:41 -0700 (PDT)
Received: from pps.filterd (m0077474.ppops.net [127.0.0.1])
	by mx0b-001ae601.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 39A7lgWQ020417;
	Tue, 10 Oct 2023 05:24:27 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=
	from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding:content-type; s=PODMain02222019; bh=e
	hQDW4OCxe0t0n3Rmmo3JU4cvesPwbEw+cTH9CpbbjU=; b=TRHWt0KyfnITHppT7
	zr0DPx0XkLolwoKUXlvo2kWOBO7nP5uXj7B2py7ym9HD6qqXrAdkU7lWLfWgGst8
	RUxbPrDF0vvnszlfwEvecxV0d/uP6vuzmnxztOi961YpVh9pmvMWagGvcCJd8Fke
	JXSN5dQX8IKR73r3XMCFfv2B4IIPJg/O/5wSHL8e4PDOl6kLWBQJsl+KKVtUwxPv
	PcKbt6CMFQx+JZyVBES1Ra0r5hRif0oAzZc8iaCSeRc0IVA04jLPtYcZLuwjrRK+
	I8IbwQUeOdzHZ4ZKvYCpBGvOgruIDm2DBCqNwUAdId27Fhxfm+sNvFBBmGzexgi/
	DWxAA==
Received: from ediex02.ad.cirrus.com ([84.19.233.68])
	by mx0b-001ae601.pphosted.com (PPS) with ESMTPS id 3tkhhaj8w1-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 10 Oct 2023 05:24:27 -0500 (CDT)
Received: from ediex01.ad.cirrus.com (198.61.84.80) by ediex02.ad.cirrus.com
 (198.61.84.81) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.37; Tue, 10 Oct
 2023 11:24:26 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by ediex01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server id 15.2.1118.37 via Frontend
 Transport; Tue, 10 Oct 2023 11:24:26 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 0F69746B;
	Tue, 10 Oct 2023 10:24:26 +0000 (UTC)
From: Charles Keepax <ckeepax@opensource.cirrus.com>
To: <broonie@kernel.org>
CC: <lgirdwood@gmail.com>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <alsa-devel@alsa-project.org>, <devicetree@vger.kernel.org>,
        <patches@opensource.cirrus.com>
Subject: [PATCH v2 1/2] ASoC: dt-bindings: cirrus,cs42l43: Update values for bias sense
Date: Tue, 10 Oct 2023 11:24:24 +0100
Message-ID: <20231010102425.3662364-1-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Proofpoint-ORIG-GUID: 2sswtg7ynSaiV0-6SsqCawI4igxNZL1j
X-Proofpoint-GUID: 2sswtg7ynSaiV0-6SsqCawI4igxNZL1j
X-Proofpoint-Spam-Reason: safe
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,
	URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Due to an error in the datasheet the bias sense values currently don't
match the hardware. Whilst this is a change to the binding no devices
have yet shipped so updating the binding will not cause any issues.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Charles Keepax <ckeepax@opensource.cirrus.com>
---

Just rebased on v6.6-rc5. Worth noting the conflicting patch was:

aa7627111c68 ("ASoC: dt-bindings: ASoC: cirrus,cs42l43: Update a couple of default values")

Thanks,
Charles

 Documentation/devicetree/bindings/sound/cirrus,cs42l43.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sound/cirrus,cs42l43.yaml b/Documentation/devicetree/bindings/sound/cirrus,cs42l43.yaml
index 7a6de938b11d1..4118aa54bbd55 100644
--- a/Documentation/devicetree/bindings/sound/cirrus,cs42l43.yaml
+++ b/Documentation/devicetree/bindings/sound/cirrus,cs42l43.yaml
@@ -82,7 +82,7 @@ properties:
     description:
       Current at which the headset micbias sense clamp will engage, 0 to
       disable.
-    enum: [ 0, 14, 23, 41, 50, 60, 68, 86, 95 ]
+    enum: [ 0, 14, 24, 43, 52, 61, 71, 90, 99 ]
     default: 0
 
   cirrus,bias-ramp-ms:
-- 
2.39.2


