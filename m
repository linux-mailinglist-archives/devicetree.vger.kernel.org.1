Return-Path: <devicetree+bounces-214922-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id DD61BB4FAA5
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 14:21:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 911F73447DA
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 12:21:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D72BC33A017;
	Tue,  9 Sep 2025 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IT8Qnq3O"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 244783376AE
	for <devicetree@vger.kernel.org>; Tue,  9 Sep 2025 12:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757420434; cv=none; b=tKYwfX25KZK2FbvDG51wfLCyXb6y+SjlOFvqyPdy1YY/2hSxvFk4ck71OtB8H26tnHuxRvK7M6wu2V+5Wx9+0CmBTYwO6hQOZguSrueDRqbt/1Q0wOXyKxVe46XTeqhRshBdlg+mSOcvf9XP1Tn/gO3tFKSH1mYd5hqewaPbG3w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757420434; c=relaxed/simple;
	bh=3K5xmPHboti1L/ErBrejTcSDf/a3Rugqu21m6y+BMzA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=PYxD8vydEAhTZHmpIDJBphwdF7PyhHaT7LP8O9J+BQ1dj08QCSKIFArZAAPRYeUnVhlvJYDPp2sL8m3oSI8TFtT23tipUiOQGzlKjB99x26BPiBwhQVdYFZj03O4EZ8W9XoeGoeVdR9Loscxd7F7zfWKX44wjRN2IfPeWwYH8vY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IT8Qnq3O; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5899Lo5B030827
	for <devicetree@vger.kernel.org>; Tue, 9 Sep 2025 12:20:32 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=lB0PeZTreDY
	Q4uFWa9S5tmFsvOqmEo73wcjiWz8cRXI=; b=IT8Qnq3O0SyQxaG76SvjknEAwao
	LUMvaDLMmKxpAUmsKQAsRV8TUyWx4C/xCZeNaW79+ha0Ke0hGtAn2NnzWCpJd2AB
	8ePamP9xbbGzTYwZ1EKWMpencTO3L/TGUhajy8t1+DJRr9cR2G2KcAwfwGdhUDRT
	jt9o+3wNCpAXbPVcDYao5yGu3lV9OFO82M1aetgzt3S3HucJgFvr3tXSQHCq9IhU
	UQ4gD9Pv2wGPeYUt+dOLZ2RpWtVRevnSQ6wgxDI20ChQpFzQpmpXIIrZhAaxxdSL
	c7iP8Xs898NN5FgSFned4Nb6sDMuRhfNw6cOdDBCPBEkF8MQbWKEpFAZSDQ==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490c9j88tu-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 12:20:32 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b5f91cdf14so145138551cf.0
        for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 05:20:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757420431; x=1758025231;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lB0PeZTreDYQ4uFWa9S5tmFsvOqmEo73wcjiWz8cRXI=;
        b=rMkYP5Z26zxnX3d9yn5hGBzJ4ZyKyrMfGK7uwlkppFZvr/a5S6Vyb3aveHypnR0okp
         hzB9z54HjdLfIbS8txkNq0kELtokwpYLxGEEB3Xcsjwete/196FN/bYEP45zao+CoKwW
         H3Y+teDo0dcxA/K9y9rLJDnDSg54ftRjm4O2IhN4PA/49p2KEEdnBTJTBSrUt6jm7eEo
         htzrVYEdyLzyy12NzJPOpzwyziZTqfXRIxxj7t9jVTAK5LpUsktwD4OT3ash+xWJR/Qn
         4y1kbVU5HdXMfaZ5+HknmzHy8moz6nLMt2yguesfsVNEyYHOn5KlVV9VrgDEBWJ23+DA
         oJKw==
X-Forwarded-Encrypted: i=1; AJvYcCU1C3HvHRoZFh8y0GqxgwpUSEXlVlAcaJBPjGC9PWO+25g2CJ10RqWso2YarHPP3/Bgy/TmevwdYpD+@vger.kernel.org
X-Gm-Message-State: AOJu0YxneIZSbfXa0El3ZRQfRdLNmhSxwFRL0N8/XWOkpJjGxPRodWYt
	oIr98xi+zh7up5eOUWigTqhcB1Ofun2Y0vhbgjOKovQxr5KD+WmS4BIBcSnlnJdAtNPKtksPgMe
	98KA0Cvw9TqzGWKkHRpQ6nSglSEzcq/pu5inCMke6kOU3iY0Pq6e0n+1SYSqsIWBJ
X-Gm-Gg: ASbGncuBBXIP5EBIo6ScFbJoZHBwAgYNr3hYOA34tV4wIiAgmJhpp9xPCxf5tWVgQej
	woI2RaXPiEe4hb3BFFiFemKWPlMpJmbwm+drnMsQcsPy7UqBYrjMYqQYar+O2UchWW+siyJISu8
	ly7C5fkXhnijhVoAfFvGKkskrPGEp4uo7ZWIWDluvQ+YHugNKrgFf6K06lgv0UoY2d55AY5rbWU
	RHeEFC2eQkGyBih1hpaiYMG+WOU72K8DH6ae3y4wO2Wl6AF0mEhnLGUk82zgTdUJ6HLTFUTOnBE
	W9HfzT8PjtipXJ2KtJbKH83ZCGJsslb/iMkrUFJA1y4bqbYs6YJvTA==
X-Received: by 2002:a05:6214:1d22:b0:713:eb89:2d83 with SMTP id 6a1803df08f44-7393ca97d6cmr108893966d6.35.1757420431031;
        Tue, 09 Sep 2025 05:20:31 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGIkqRPqZ80G2kS2sZppCLlkzHqKSS7y8bRlsnibaLdSQA0Ndi1sbn9C8H832lif8DyRXP1Sw==
X-Received: by 2002:a05:6214:1d22:b0:713:eb89:2d83 with SMTP id 6a1803df08f44-7393ca97d6cmr108892886d6.35.1757420429603;
        Tue, 09 Sep 2025 05:20:29 -0700 (PDT)
Received: from debian ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e75224db20sm2414629f8f.60.2025.09.09.05.20.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 05:20:27 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: broonie@kernel.org
Cc: lgirdwood@gmail.com, tiwai@suse.com, vkoul@kernel.org, srini@kernel.org,
        yung-chuan.liao@linux.intel.com, pierre-louis.bossart@linux.dev,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, linux-sound@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v5 10/13] ASoC: codecs: wcd939x: get regmap directly
Date: Tue,  9 Sep 2025 13:19:51 +0100
Message-ID: <20250909121954.225833-11-srinivas.kandagatla@oss.qualcomm.com>
X-Mailer: git-send-email 2.50.0
In-Reply-To: <20250909121954.225833-1-srinivas.kandagatla@oss.qualcomm.com>
References: <20250909121954.225833-1-srinivas.kandagatla@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAyMiBTYWx0ZWRfX4vDT6qOfpXNs
 5JY/LSE6qTplnyMxUjEqyww2/irj9fx2e+O2ecdN8W+xXhMjeHXXdWnSjnqIwx2ZrlxJc2DINu2
 7iZPtGNokkyOK1/c2mEd8V5+HZ+mzLewbmxIHXZtJQjI5d5AX04+bDoT3Vlbc/Ut25wg/45SEU4
 B8OUv+Kw/+sCTyikEqooW36DKtzaHn7bYhPS/M7Ved5AK76mIwL4iQTwH1sZ75odVPnrYgov50O
 MZ1mD4Id5RP2FZgj3s3LIueTSqj4t7XzpGp0q192rTabxlesAKenNq5dYLYA24G9iP9QZRehhc2
 EEAzT6TuGfZliEO/IEzVLx0UsnLEkug9G+FqiVkJjx7G6uvBPym75RBpTKibgwxL96sHHaAIUkz
 +D544TJv
X-Proofpoint-ORIG-GUID: 2Ahtw2QjYF4KDoeg5-8-N5o2mUnNO9b2
X-Authority-Analysis: v=2.4 cv=PpOTbxM3 c=1 sm=1 tr=0 ts=68c01b90 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=jWMDT5uzmWzhJut3sAYA:9
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-GUID: 2Ahtw2QjYF4KDoeg5-8-N5o2mUnNO9b2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-09_01,2025-09-08_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 spamscore=0 bulkscore=0 clxscore=1015
 malwarescore=0 adultscore=0 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060022

for some reason we ended up with a boiler plate for dev_get_regmap in
wcd939x codec and started exporting a symbol for this. Remove this
redundant wrapper and direclty get regmap.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 sound/soc/codecs/wcd939x-sdw.c | 9 ---------
 sound/soc/codecs/wcd939x.c     | 6 +++---
 sound/soc/codecs/wcd939x.h     | 6 ------
 3 files changed, 3 insertions(+), 18 deletions(-)

diff --git a/sound/soc/codecs/wcd939x-sdw.c b/sound/soc/codecs/wcd939x-sdw.c
index 6aecad2a28aa..38da706d80be 100644
--- a/sound/soc/codecs/wcd939x-sdw.c
+++ b/sound/soc/codecs/wcd939x-sdw.c
@@ -187,15 +187,6 @@ int wcd939x_sdw_set_sdw_stream(struct wcd939x_sdw_priv *wcd,
 }
 EXPORT_SYMBOL_GPL(wcd939x_sdw_set_sdw_stream);
 
-struct regmap *wcd939x_swr_get_regmap(struct wcd939x_sdw_priv *wcd)
-{
-	if (wcd->regmap)
-		return wcd->regmap;
-
-	return ERR_PTR(-EINVAL);
-}
-EXPORT_SYMBOL_GPL(wcd939x_swr_get_regmap);
-
 static int wcd9390_update_status(struct sdw_slave *slave,
 				 enum sdw_slave_status status)
 {
diff --git a/sound/soc/codecs/wcd939x.c b/sound/soc/codecs/wcd939x.c
index a414cd99b946..e74e6f013131 100644
--- a/sound/soc/codecs/wcd939x.c
+++ b/sound/soc/codecs/wcd939x.c
@@ -3374,10 +3374,10 @@ static int wcd939x_bind(struct device *dev)
 	}
 
 	/* Get regmap from TX SoundWire device */
-	wcd939x->regmap = wcd939x_swr_get_regmap(wcd939x->sdw_priv[AIF1_CAP]);
-	if (IS_ERR(wcd939x->regmap)) {
+	wcd939x->regmap = wcd939x->sdw_priv[AIF1_CAP]->regmap;
+	if (!wcd939x->regmap) {
 		dev_err(dev, "could not get TX device regmap\n");
-		ret = PTR_ERR(wcd939x->regmap);
+		ret = -ENODEV;
 		goto err_remove_rx_link;
 	}
 
diff --git a/sound/soc/codecs/wcd939x.h b/sound/soc/codecs/wcd939x.h
index ca6353222ea0..6bd2366587a8 100644
--- a/sound/soc/codecs/wcd939x.h
+++ b/sound/soc/codecs/wcd939x.h
@@ -918,8 +918,6 @@ int wcd939x_sdw_hw_params(struct wcd939x_sdw_priv *wcd,
 			  struct snd_pcm_substream *substream,
 			  struct snd_pcm_hw_params *params,
 			  struct snd_soc_dai *dai);
-
-struct regmap *wcd939x_swr_get_regmap(struct wcd939x_sdw_priv *wcd);
 #else
 
 static inline int wcd939x_sdw_free(struct wcd939x_sdw_priv *wcd,
@@ -944,10 +942,6 @@ static inline int wcd939x_sdw_hw_params(struct wcd939x_sdw_priv *wcd,
 	return -EOPNOTSUPP;
 }
 
-struct regmap *wcd939x_swr_get_regmap(struct wcd939x_sdw_priv *wcd)
-{
-	return PTR_ERR(-EINVAL);
-}
 #endif /* CONFIG_SND_SOC_WCD939X_SDW */
 
 #endif /* __WCD939X_H__ */
-- 
2.50.0


