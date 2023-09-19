Return-Path: <devicetree+bounces-1347-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D9EC7A5F9A
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 12:32:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 57207281B84
	for <lists+devicetree@lfdr.de>; Tue, 19 Sep 2023 10:32:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 165E32E65D;
	Tue, 19 Sep 2023 10:31:44 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A8389339B2
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 10:31:42 +0000 (UTC)
Received: from mx0b-001ae601.pphosted.com (mx0a-001ae601.pphosted.com [67.231.149.25])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9CEC2122
	for <devicetree@vger.kernel.org>; Tue, 19 Sep 2023 03:31:39 -0700 (PDT)
Received: from pps.filterd (m0077473.ppops.net [127.0.0.1])
	by mx0a-001ae601.pphosted.com (8.17.1.22/8.17.1.22) with ESMTP id 38J4RRCa031661;
	Tue, 19 Sep 2023 05:31:19 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cirrus.com; h=
	from:to:cc:subject:date:message-id:in-reply-to:references
	:mime-version:content-transfer-encoding:content-type; s=
	PODMain02222019; bh=ny+kWn1OMlivpfvutLz7uBLYoUEzNwaJVd7DQn728FU=; b=
	dVKV51Havk5/WNH/QT+i0Vnpw9LMTidMz8S21LCVuuyuDgAZl54feif4sUlfc0T7
	xM3CMZPE3a4EhHX1AZPZj+MACubTZJLaHrN0WIXOYoaZxeUw7wvDVjFQyU53CSX0
	Mm/iKKB2FkqgXqrXOytr4JgVRIcHT/+ncgQ6mrfBjT2xfUcvTFtqr1Uh8xuUjW58
	cNu5LEQ75vNmPi3FGVjbOY/9T3ZF1U1XbuWjSkOUqz5fMrHK6+XkKKmUrI97fSXE
	Ea9AXn5hfgfIF2N3OCG8ZfEgdeko6TQQGG6tx/3FB52ARKzDMjsXfl2Twqu4LF+e
	OqTse3kp9QX2K5aw66QTqg==
Received: from ediex01.ad.cirrus.com ([84.19.233.68])
	by mx0a-001ae601.pphosted.com (PPS) with ESMTPS id 3t59ry3p1h-2
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Tue, 19 Sep 2023 05:31:19 -0500 (CDT)
Received: from ediex02.ad.cirrus.com (198.61.84.81) by ediex01.ad.cirrus.com
 (198.61.84.80) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.2.1118.37; Tue, 19 Sep
 2023 11:31:16 +0100
Received: from ediswmail.ad.cirrus.com (198.61.86.93) by
 anon-ediex02.ad.cirrus.com (198.61.84.81) with Microsoft SMTP Server id
 15.2.1118.37 via Frontend Transport; Tue, 19 Sep 2023 11:31:16 +0100
Received: from algalon.ad.cirrus.com (algalon.ad.cirrus.com [198.90.251.122])
	by ediswmail.ad.cirrus.com (Postfix) with ESMTP id 594983563;
	Tue, 19 Sep 2023 10:31:16 +0000 (UTC)
From: Charles Keepax <ckeepax@opensource.cirrus.com>
To: <broonie@kernel.org>
CC: <lgirdwood@gmail.com>, <robh+dt@kernel.org>,
        <krzysztof.kozlowski+dt@linaro.org>, <alsa-devel@alsa-project.org>,
        <devicetree@vger.kernel.org>, <patches@opensource.cirrus.com>
Subject: [PATCH 1/5] dt-bindings: ASoC: cirrus,cs42l43: Update a couple of default values
Date: Tue, 19 Sep 2023 11:31:12 +0100
Message-ID: <20230919103116.580305-2-ckeepax@opensource.cirrus.com>
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
X-Proofpoint-GUID: adsKyA2nt2mWX-skmmLzAT8VMQg0zPlt
X-Proofpoint-ORIG-GUID: adsKyA2nt2mWX-skmmLzAT8VMQg0zPlt
X-Proofpoint-Spam-Reason: safe
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
	autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

The bias sense is being enabled by default in the driver, and the
default detect time is being dropped slightly. Update the binding
document to match.

Signed-off-by: Charles Keepax <ckeepax@opensource.cirrus.com>
---
 Documentation/devicetree/bindings/sound/cirrus,cs42l43.yaml | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/cirrus,cs42l43.yaml b/Documentation/devicetree/bindings/sound/cirrus,cs42l43.yaml
index 7a6de938b11d1..4fa22fa70ace5 100644
--- a/Documentation/devicetree/bindings/sound/cirrus,cs42l43.yaml
+++ b/Documentation/devicetree/bindings/sound/cirrus,cs42l43.yaml
@@ -83,7 +83,7 @@ properties:
       Current at which the headset micbias sense clamp will engage, 0 to
       disable.
     enum: [ 0, 14, 23, 41, 50, 60, 68, 86, 95 ]
-    default: 0
+    default: 14
 
   cirrus,bias-ramp-ms:
     description:
@@ -97,7 +97,7 @@ properties:
       Time in microseconds the type detection will run for. Long values will
       cause more audible effects, but give more accurate detection.
     enum: [ 20, 100, 1000, 10000, 50000, 75000, 100000, 200000 ]
-    default: 10000
+    default: 1000
 
   cirrus,button-automute:
     type: boolean
-- 
2.39.2


