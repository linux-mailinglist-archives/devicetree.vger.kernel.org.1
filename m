Return-Path: <devicetree+bounces-6112-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1047E7B9DCA
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 15:56:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by ny.mirrors.kernel.org (Postfix) with ESMTP id 14E931C20863
	for <lists+devicetree@lfdr.de>; Thu,  5 Oct 2023 13:56:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CD4F526E30;
	Thu,  5 Oct 2023 13:56:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=cirrus.com header.i=@cirrus.com header.b="UnAH0sPk"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3794E26E20
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 13:56:23 +0000 (UTC)
Received: from mx0b-001ae601.pphosted.com (mx0a-001ae601.pphosted.com [67.231.149.25])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 941D97EEF
	for <devicetree@vger.kernel.org>; Thu,  5 Oct 2023 06:56:21 -0700 (PDT)
Received: from pps.filterd (m0077473.ppops.net [127.0.0.1])
	by mx0a-001ae601.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 3951p8YT007187;
	Thu, 5 Oct 2023 08:56:02 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=
	from:to:cc:subject:date:message-id:mime-version
	:content-transfer-encoding:content-type; s=PODMain02222019; bh=w
	sRzsqS86v9R2io/BREZgZukOLd/Xh+KnitIp3oeSoM=; b=UnAH0sPkSxTewImPI
	ixdmOh80k1bZYcAT7i9LUIK/BRFw3zr/i7bjvZahlSxQj72B2LrQog6reIXgYkHs
	JBIYaDbhE4gaf3nwEq7RlHVcT6Y52IyC+ymumGlgbZr56Q430OceZQm+ZsyVGmPH
	T5TjdVwRXJ3DE6AtongtGXwPmxFMUbqQ52LP4q8iNCsif0OJALKwIJ4SGHLSumFH
	9Vz2tIkv6Kz1e7DfeMtFGppP06NlPJIz24Y4/rMuoFm+I+s9Vp6AeRJYArrjU3j4
	dI8cDLPtW5989WrRn6qTHr5pv46h3gw2woFBI9a/SxqvMXHsFQhYqhDdWnLCrJ5C
	9sjsw==
Received: from ediex01.ad.cirrus.com ([84.19.233.68])
	by mx0a-001ae601.pphosted.com (PPS) with ESMTPS id 3th2dta81a-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Thu, 05 Oct 2023 08:56:02 -0500 (CDT)
Received: from ediex02.ad.cirrus.com (198.61.84.81) by ediex01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.37; Thu, 5 Oct
 2023 14:55:59 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by
 anon-ediex02.ad.cirrus.com (198.61.84.81) with Microsoft SMTP Server id
 15.2.1118.37 via Frontend Transport; Thu, 5 Oct 2023 14:55:59 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id D056B15B9;
	Thu,  5 Oct 2023 13:55:59 +0000 (UTC)
From: Charles Keepax <ckeepax@opensource.cirrus.com>
To: <broonie@kernel.org>
CC: <lgirdwood@gmail.com>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <conor+dt@kernel.org>,
        <alsa-devel@alsa-project.org>, <devicetree@vger.kernel.org>,
        <patches@opensource.cirrus.com>
Subject: [PATCH 1/2] ASoC: dt-bindings: cirrus,cs42l43: Update values for bias sense
Date: Thu, 5 Oct 2023 14:55:58 +0100
Message-ID: <20231005135559.3117994-1-ckeepax@opensource.cirrus.com>
X-Mailer: git-send-email 2.39.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Content-Type: text/plain
X-Proofpoint-ORIG-GUID: 6bYxe0ZonFxfqaawcLpN3SzVYUHHu6Id
X-Proofpoint-GUID: 6bYxe0ZonFxfqaawcLpN3SzVYUHHu6Id
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
 Documentation/devicetree/bindings/sound/cirrus,cs42l43.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/sound/cirrus,cs42l43.yaml b/Documentation/devicetree/bindings/sound/cirrus,cs42l43.yaml
index 4fa22fa70ace5..7f9d8c7a635a6 100644
--- a/Documentation/devicetree/bindings/sound/cirrus,cs42l43.yaml
+++ b/Documentation/devicetree/bindings/sound/cirrus,cs42l43.yaml
@@ -82,7 +82,7 @@ properties:
     description:
       Current at which the headset micbias sense clamp will engage, 0 to
       disable.
-    enum: [ 0, 14, 23, 41, 50, 60, 68, 86, 95 ]
+    enum: [ 0, 14, 24, 43, 52, 61, 71, 90, 99 ]
     default: 14
 
   cirrus,bias-ramp-ms:
-- 
2.39.2


