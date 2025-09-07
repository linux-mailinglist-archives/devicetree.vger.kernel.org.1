Return-Path: <devicetree+bounces-213977-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 652C0B47AE7
	for <lists+devicetree@lfdr.de>; Sun,  7 Sep 2025 13:22:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id EAA6817DF9A
	for <lists+devicetree@lfdr.de>; Sun,  7 Sep 2025 11:22:54 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 87C8826A0B3;
	Sun,  7 Sep 2025 11:22:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ANQaIphG"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC952267B15
	for <devicetree@vger.kernel.org>; Sun,  7 Sep 2025 11:22:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757244143; cv=none; b=BlY1S32LqnSKu7oRc/ioR/HIr/4adG7Pj6u60mNy9bGkahUVyaLOi5W5oF/cAhnmBg9YtuiPbTLu8ETaJpdw21VNAWGcuBG9vRBeFBJTpzW8EguDM8FwiyKSuix2O1qlZXfG6WUBwojpATZVqR2a8kvbeBDijnnv4ukXoK3yqDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757244143; c=relaxed/simple;
	bh=SVUoWsmSq4cUO/z4U/2qlZs54P0s1u7ZOQr9dToLxZM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=VnLxz/S4nXwvrkze4fkymv1XIz/gxheB18WQ1FCMjjbakRJjzG9QcuKXneEow1zJ+TPVmvYBVKbFUFcSpsggobLua0l4fTW2ZMObxRzMWz1wutZxuYrRHpA2dAKiUKp4tP4Ja4MuGeKwKjgWgx21tF7UZdD6jW72DVYzlrDugOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ANQaIphG; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5879uZKl015918
	for <devicetree@vger.kernel.org>; Sun, 7 Sep 2025 11:22:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=/aX4MrtepdT
	dnJU9juLKPIRgCfBEk58eXLQDBNRQG8Q=; b=ANQaIphGDLXlfwEXoBiWUWoKv37
	ivh+R26lHsvkef3lGemWHYeKtmQK96nnGgSOt7Q67ulXzxSlNy/yf7F9DKaWLBIV
	ZxDVl0bRj/GLo6c9vLIClidFpmiV1ACdN0ZzhnFhMfSS5J7q9odQHREMF+K4dV+7
	UKeF/S4s1Ckh8dLG3IZCECFziCeE4OPGRdXoQHqqLD46Dsvgk3Mvq0Rv614xrNb8
	WANJFt4mkZBDQJ8XyRiEUvLUcLnQSFC7Aa386DY76YoySHfExI2aa5DB1EyNvtbX
	oBOncpWa0YnoLYwdO7BlkJ51xDnXKAId23M8Pl0gtsUVR4KSY+bTeTP3cLw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490db8a02t-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 07 Sep 2025 11:22:20 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b5e5f80723so73940731cf.1
        for <devicetree@vger.kernel.org>; Sun, 07 Sep 2025 04:22:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757244140; x=1757848940;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/aX4MrtepdTdnJU9juLKPIRgCfBEk58eXLQDBNRQG8Q=;
        b=TRMg6g+2RPaBUcNhd7YIwfx1+rlg2C5/V1ZbKjwdmHxr2A+gO0iDt2Za/s6b4XZnsA
         77h36FWMPN6kG/tIp2NO1w60xeFhSmZqmUq/9n8WkbKG37vY05e0TJZBkFTQch7MNqpw
         llN5+Y3/QrK6Pfly1yu87cdp/D7oQK2Xt42W7rWeulCM5OtnL13x5LpfiDCh0gek0hQB
         hNUAAJBGSt72batSezKlachGKUqycHPtYn32iXVXYYVWS/Iv3aHdluRbdXtz1EBdcGcq
         ALoZWt2U8kDYogc/HKWGg1US0fVHKqJUV/1THBHK3V5eCJUmjFkKigeFuPScQV7d0ZxO
         p3nA==
X-Forwarded-Encrypted: i=1; AJvYcCW6B/XKqA8vb423+lwMVZMbGmBNwKvYGNEgDYsSqXyFhx9ZjHHkHBNNMtrvfMFVSpNLjJB1OkEtYxv2@vger.kernel.org
X-Gm-Message-State: AOJu0Yzgb2SSfBR/Za73T1ktxObLQ14OQpmpsGS5ofoz1OhdWSjmpWC4
	mn0IFRiQDWN3+7/bBz4vIkjhAzrJ151/Pmu9fIn+3wrTiQT4swaN45gaXsuLObesMLbkudA7U10
	HBSv+fN/gb5NIaHJYdCqfKJFcpT51HbwChLhCyo0whzBMlF08lwhCKGqmj6cWKIrX
X-Gm-Gg: ASbGncuc1tr+bWeh50PBqkFrhjX5AfdFzoqT4UQB7K7PiWCKwQJ//NQk3xdOhVzUoAg
	uzzCu8uHtFrN7rviSGsCPVfeWZ6QuLTkfqrk/sVp0aQpjkMegN+AFFIILX/tzUAMrfWt7KaoVi+
	GHYLtfc3X8s+YUqJi6cVndx7fL35k+5FLtH0c2bSGU8naZuRqZbt/BJ3PuXN2YP1FnrN8HuCUsh
	vDkwG4L5zHr6OBqkosjKHSPJIfnQTRT9pUt4qlXKf77WmRl5GNOzUU218IYczJ9QzLhY+6wGUk4
	GCvIZ1mQNJMMugpzHkuBtSHEdayHl4DjGuYtYEkCYoemd8B0yenDUA==
X-Received: by 2002:a05:6214:f66:b0:722:970:3af1 with SMTP id 6a1803df08f44-73924e25c64mr48223156d6.22.1757244140081;
        Sun, 07 Sep 2025 04:22:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHZsw8nfk2wEUFy1R5sDtoXTxDWWeotu9Ny5Hm1V8/xZCSSNEEcWT8jL2YnaanIb9iQapti2Q==
X-Received: by 2002:a05:6214:f66:b0:722:970:3af1 with SMTP id 6a1803df08f44-73924e25c64mr48222936d6.22.1757244139637;
        Sun, 07 Sep 2025 04:22:19 -0700 (PDT)
Received: from debian ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3cf34494776sm37523289f8f.61.2025.09.07.04.22.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Sep 2025 04:22:19 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: broonie@kernel.org
Cc: lgirdwood@gmail.com, tiwai@suse.com, vkoul@kernel.org,
        yung-chuan.liao@linux.intel.com, pierre-louis.bossart@linux.dev,
        srini@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-sound@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH v4 12/13] ASoC: codecs: wcd938x: get regmap directly
Date: Sun,  7 Sep 2025 12:21:59 +0100
Message-ID: <20250907112201.259405-13-srinivas.kandagatla@oss.qualcomm.com>
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
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzMSBTYWx0ZWRfX6ChRyTVx+6SF
 xMhe+WEd14LV41YP+tpcuz8prYJ3iarBO/je4UlGrU7i/v03kcUS3qjNQXtOPUOw9O080xfTyOF
 TaYyj1fCMNaJ41OtflpmWwBOK4tvsRbnXr6PnqsqNcJpF7bsEi3LR5EtQBGTH8wyfwBtoSqLkDG
 d1ZbSdWZDQvzyoV8lRPAAJ8vBjV8IZBGBOXzwrVyuewYbx6gMBmf7ibz7gW5IFfoO7mX4uxhOTE
 FpL6xcFGUGYtyWZtNd/cf0dmm94mGUkk6UNriHcz1JLKyrOtgfkHUhiJ/N/Cs0Sv4g/ahQoxSP5
 dhxQCNdCYnA+H/plgmZbkhrTb845vQrjNTZhZ3/vp4WCz0Hb1lA2pS/YZE4/pDPOgHjlZ+8zBoO
 aXhGIwVT
X-Proofpoint-ORIG-GUID: zLqW8Q7czfXYZE1WYtzHWHxPOh-xHDxS
X-Proofpoint-GUID: zLqW8Q7czfXYZE1WYtzHWHxPOh-xHDxS
X-Authority-Analysis: v=2.4 cv=VIDdn8PX c=1 sm=1 tr=0 ts=68bd6aec cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=AeW90Tct3s7Q8B8mPpwA:9
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-07_04,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 spamscore=0 suspectscore=0 bulkscore=0
 phishscore=0 adultscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060031

Remove usage of dev_get_regmap, as this its more efficient to directly
reference the pointer.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 sound/soc/codecs/wcd938x.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/sound/soc/codecs/wcd938x.c b/sound/soc/codecs/wcd938x.c
index e495f98972f1..e1a4783b984c 100644
--- a/sound/soc/codecs/wcd938x.c
+++ b/sound/soc/codecs/wcd938x.c
@@ -3389,7 +3389,7 @@ static int wcd938x_bind(struct device *dev)
 		goto err_remove_tx_link;
 	}
 
-	wcd938x->regmap = dev_get_regmap(&wcd938x->tx_sdw_dev->dev, NULL);
+	wcd938x->regmap = wcd938x->sdw_priv[AIF1_CAP]->regmap;
 	if (!wcd938x->regmap) {
 		dev_err(dev, "could not get TX device regmap\n");
 		ret = -EINVAL;
-- 
2.50.0


