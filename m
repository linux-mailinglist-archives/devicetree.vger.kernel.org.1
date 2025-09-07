Return-Path: <devicetree+bounces-213978-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B78DB47AEA
	for <lists+devicetree@lfdr.de>; Sun,  7 Sep 2025 13:23:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CA233189ECFD
	for <lists+devicetree@lfdr.de>; Sun,  7 Sep 2025 11:23:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C74E1262FD2;
	Sun,  7 Sep 2025 11:22:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ZiWZKGoZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C05A261596
	for <devicetree@vger.kernel.org>; Sun,  7 Sep 2025 11:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757244144; cv=none; b=oCL+AEuq3tCKPS1w7qCM0+6q1WdaT3OdXOdivSwyT5bwolsPBYzTrQaeEMiq/YbXORnL+G8VuEYbJQX0RLz8K/bQMVsPeVCYOdtDtchjH+hXOYydcj0sH7B+TsZLN7M7ixYAENum0bmsRzv1aAy+zQA9n1rR6Cnk9iQQX/PjbCM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757244144; c=relaxed/simple;
	bh=HmXyaDzSyYWKVyfOvvK8VoaY3HzpzmVHwTfs57fRK7Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=KB+P3dBeWsDs5R54nXziW6Zmj6Dy5sn83pOnthIjSTMzHBmNJPZ/+RX8r90fyu5ewWqF5tsYnrl4UPczpEJ55IhsbhmXcvH9yEHJ0dWac/ic2XPwHP6yDHKOJ6bpxH0mfb8lUlxjwvKBqA8i2TJb9NFNiBOERu99FACtqujQEuU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ZiWZKGoZ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5878jelS020915
	for <devicetree@vger.kernel.org>; Sun, 7 Sep 2025 11:22:22 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=oOmSsAnlxpq
	Orq3+ovrwk8ydYShsFwbNuJh8B6XuDYY=; b=ZiWZKGoZV1M9lcxhq7xwPmnzXWm
	K5E6Y6nzy2QXnZqcL1ems66aetcXk7Xnyl9BJWoJkMkU6U4ug4IZI2i5rBkj4KaV
	GTvytP9+/+shMep1OVjIVoky85AUdTWiDVteag0/+WS9FAU+RmfYl8nf9jBzvMkg
	htpTuJlaYYzw1ohugwKb3yH1ponqHyFkUC5gxO/DSQtFv/H88e59PlE2cnrE2JdU
	Cd7Ky8ax8VHhasmzo3AWCsUzxY5BwGCMinnfjhsS96xhsrKUqDZlHgSBWoLf1H1m
	yOEY1a/nzOwOPAJ1wL1cAikrpdSt9/cGetER+KPK+6r4FRdBPzeYKoDMwyQ==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490by8t3f7-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 07 Sep 2025 11:22:22 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-728f554de59so102379686d6.0
        for <devicetree@vger.kernel.org>; Sun, 07 Sep 2025 04:22:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757244141; x=1757848941;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oOmSsAnlxpqOrq3+ovrwk8ydYShsFwbNuJh8B6XuDYY=;
        b=d9/8UdHbPDnQIHnG1BGin8+whbBKCmK6e9Q96U6RKEQHJoHSPQgThP262/MT9rhEQM
         BPYh5MmIM+xYoHOMq3VMP9iPUaSN0BAimjOaKmcDi2eS0yrHOAm+rVEc/a+xRJ9PVFbC
         mRaqkY1sFKaXwOdPXcHZWfcUwddNubdiVj2b5feIhDEtWhMO8sjZPwPbX/06bn1TWV3T
         ldDqVb3Sfm8fjddqy3GygU1qysIf3HNuYH4GNQbJIQiZaqpj0cf8iGErmFEqgqgOQmlA
         d3xKTCLzgK/l2liBPv8VM7lJP4l7/asYEKe3OqHVPqmzQTCUnuTbJ6G+lW8CmHgswk1v
         7kYA==
X-Forwarded-Encrypted: i=1; AJvYcCWLYCnfwq6lR1nI84BZRoAfEMrSxwHvQytY4+PCSWx4BPb4yZi4wZkrm4GYqMznjLadLLAtXPtWhXSM@vger.kernel.org
X-Gm-Message-State: AOJu0YzBt7PkFFVgGJxZYbHLG/7uUoStxHDMy+0o96PWedGmIQKjH6Pm
	4j0k2sVRJ+oAwLtQjXssjtUDJAYGuXEuw8n0jRr2hMJfM8Dxz370wb05eBb31qjlG3J9C1653NP
	0f9vvGKjRFrZtVwZWIbtWLME4BWFA3X1QhM87zEmb8UHKASu049uTZxHzr3nayZgB
X-Gm-Gg: ASbGncvCyKoGfprINJnWzIrKbox/qTkEpLLhXVxQEIitkhfb2kf7AftFwjSxOaSB5GU
	w6AjyjO2JgSN27mHbztqtlVFmw6beJ2DLNuph9x1iDawFwIlWPt1/aY/8GbPQWgVvPMJOQVw+j+
	Ytd8C00J0BhFWVH2cer2G/+pyCBh7ZCB95o5Vds1cInkDm0GrlIpWKBvsIeOfpC5RBDFnjGEHDe
	zY8pysGSytzLUbnKnb7eTvWZQnHA88gSdCW4IPWMQJEslllB/E27g8M6jScBMmOXS5HS8JL+ur8
	46k//pP7918Tlo1CKVhJ2cVfPFaG/6bT18FWEnn+zEccg43yiB63qA==
X-Received: by 2002:ad4:5ba8:0:b0:70d:ff7a:34de with SMTP id 6a1803df08f44-7393ca9adbdmr60234946d6.33.1757244141306;
        Sun, 07 Sep 2025 04:22:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHbwMJmgf1oVOVVeL0AGbEaug+ceP0L8sBb/2UOe/KEvnQmT3R8vUXM1gRsJI54zSTpmJ5N3A==
X-Received: by 2002:ad4:5ba8:0:b0:70d:ff7a:34de with SMTP id 6a1803df08f44-7393ca9adbdmr60234756d6.33.1757244140888;
        Sun, 07 Sep 2025 04:22:20 -0700 (PDT)
Received: from debian ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3cf34494776sm37523289f8f.61.2025.09.07.04.22.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Sep 2025 04:22:20 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: broonie@kernel.org
Cc: lgirdwood@gmail.com, tiwai@suse.com, vkoul@kernel.org,
        yung-chuan.liao@linux.intel.com, pierre-louis.bossart@linux.dev,
        srini@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-sound@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH v4 13/13] ASoC: codecs: wcd937x: get regmap directly
Date: Sun,  7 Sep 2025 12:22:00 +0100
Message-ID: <20250907112201.259405-14-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.50.0
In-Reply-To: <20250907112201.259405-1-srinivas.kandagatla@oss.qualcomm.com>
References: <20250907112201.259405-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=Yv8PR5YX c=1 sm=1 tr=0 ts=68bd6aee cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=5pqs-Pqnn3KeH4UlXPsA:9
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-GUID: R-j6UsuyLfX2vUIGEd-1HABa-tl7mh0r
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAxOCBTYWx0ZWRfX31oukngwYzKz
 xz6DjWlQmSXcfQzoLKP6pKKoDHkZvzj2v5gkodOpDprvHzB0eQ2TYZpZmOGU8cNMNUx5dlYaveP
 WHdqlgr8i47CH4g9KOHi2LSUIGCvvrNXvBUoU0J/C/P+zDqjISKxCbd5AOdB745QAiPP5Kvm6bk
 INioe0CcYbZ44nq0XV+s0WbliEAmheI6QnFpZV5AbcPsJKyBqvv1GV3TxLfW3MWtDZWoDqA7Hyu
 SFSqRFBoxSDsS8EeECLZ54SmAWupWA4LhjhW0afvcFCSz+Gb9EExGRxJvQZDSOqwK4DZ5Ud6XBl
 L26pBglAKTYldLMCjwhfeAZQTDEecnTBz5MJjX66T8gTLl0z/S9zCKGkIzgKRU3U/uWT3NQBhhd
 n8Lt/QnG
X-Proofpoint-ORIG-GUID: R-j6UsuyLfX2vUIGEd-1HABa-tl7mh0r
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-07_04,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 suspectscore=0 phishscore=0 clxscore=1015
 spamscore=0 priorityscore=1501 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060018

Remove usage of dev_get_regmap, as this its more efficient to directly
reference the pointer.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 sound/soc/codecs/wcd937x.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/codecs/wcd937x.c b/sound/soc/codecs/wcd937x.c
index 4c040e3862f4..421ec7a2d6bd 100644
--- a/sound/soc/codecs/wcd937x.c
+++ b/sound/soc/codecs/wcd937x.c
@@ -2790,7 +2790,7 @@ static int wcd937x_bind(struct device *dev)
 		return -EINVAL;
 	}
 
-	wcd937x->regmap = dev_get_regmap(&wcd937x->tx_sdw_dev->dev, NULL);
+	wcd937x->regmap = wcd937x->sdw_priv[AIF1_CAP]->regmap;
 	if (!wcd937x->regmap) {
 		dev_err(dev, "could not get TX device regmap\n");
 		return -EINVAL;
-- 
2.50.0


