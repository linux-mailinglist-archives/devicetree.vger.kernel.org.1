Return-Path: <devicetree+bounces-213975-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 86F47B47AE4
	for <lists+devicetree@lfdr.de>; Sun,  7 Sep 2025 13:22:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 43CD83B58BA
	for <lists+devicetree@lfdr.de>; Sun,  7 Sep 2025 11:22:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2560E264A97;
	Sun,  7 Sep 2025 11:22:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="KvTDF2ZJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7A30D261B86
	for <devicetree@vger.kernel.org>; Sun,  7 Sep 2025 11:22:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757244141; cv=none; b=KR/hKNJ019foRP4DHOVxkOCe0GID36BpmrsAdtG6RIeTKM3saCCyXJitugTmX6jtLyMjaSnia2Tq2yxudhUsS69/edML98uVtH2dNEqrs0qgsvdEC86IhdLZzILZ2DSPAWixn922JXWY+V7fD6autFy62Ko09Uooy0CKpyt0C5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757244141; c=relaxed/simple;
	bh=3K5xmPHboti1L/ErBrejTcSDf/a3Rugqu21m6y+BMzA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=borRpSkvKxixYIlh5GMOMoAS3xjO53jP0WbnkZCzIrSRBJker2NOJRXHpF/7qlq0k180RrEcadqt0hH105KrJHzQKb8u8W6XgiiYXbilvFEWMqxPs/QfPHqh3rs4VeUD2e398eNlC2qYeD8jm+w2LITcfjoJd8B48jqlphEubhw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=KvTDF2ZJ; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5878jNkT020641
	for <devicetree@vger.kernel.org>; Sun, 7 Sep 2025 11:22:18 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=lB0PeZTreDY
	Q4uFWa9S5tmFsvOqmEo73wcjiWz8cRXI=; b=KvTDF2ZJcLVrljw7rPebhZAiebp
	nzFJmMMvWd3dc5kxBQG8RL8it8O5t4PaqetQlc2kx5LrRs81Sn/CifmDHNQZK+IZ
	OfFTH+LkAlq5JOHp3eWF7yxGk92AUxIKebjSKu8v9OyiGuGZYPMK4SnXr/XunH89
	67zt0DUxm90G7/ICahQ+pBRTmjKBN4kwFCqauptzq9vA+ST+XOHHURCjMoE8Ww2x
	S72WoTHycHb761y6eiCPEqW7Ry+7GQX8Dt8bIifYn0/B4/vGSO1z7QvD4P4oOczy
	9ohSu8wEbjNYm4c8wUHjy2HAW/WLDa3nmcO1xLn/B8+TKJKnQygb8WsMwiQ==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490by8t3f0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 07 Sep 2025 11:22:18 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-720408622e2so74851356d6.0
        for <devicetree@vger.kernel.org>; Sun, 07 Sep 2025 04:22:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757244138; x=1757848938;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=lB0PeZTreDYQ4uFWa9S5tmFsvOqmEo73wcjiWz8cRXI=;
        b=dZltwfDFM0dX6PpGZ3rK8g2PatuzMvIrTCt0ZJ4Joq7++58Lo2d65WQeJeUF8Vb+t2
         ff4+SCUrQDhK9mujTDEeVb9kG8JlHXbY/aMA79ngkaJpRQLYMt61BePrBZ99AP2VKtbV
         9k9y+Gd98tbSaLqfTxqSaGcqI3O2gagUnb2pANXBQAvw+Fu+0crmxyF8QGdEw6mIIVpU
         d9sssHIAOQkwnrriTAcjbOwpZCWWoJG4MQdfl1yV/iMRc/iWviI/VMe/SJ7if3/bnQnD
         IGNUWJnj7RdWt9OhjxEuydvyPdzn4C2aH/SA3/e0bRY2MgfV1wMwRm2nPqY5wlF2ix87
         ZHbw==
X-Forwarded-Encrypted: i=1; AJvYcCXD24GZfu40BVYkhfCMQ6vPza2ngxm+7Ko4vLfS+wX3qvW9wYMjPXy+nOTZr0O/jgZ+1spFaTjA2Z1Q@vger.kernel.org
X-Gm-Message-State: AOJu0YyNdrJE3An76ss0xYGyfDxk6HzIEjZhA5y6Y82nHcOezh7rhJva
	OjrLJF/w3aVsj8wPHyjilIOQhELg7+QV7kUjwidcCoBMtLPSyTv4AtqrMG+CRcfhTUnOZa6vlnE
	PiQMiJKveCeWUxXZRvF02MNSQUz8ZPSV2ingrjTGCK9Lnbq4c/2qjXMDxNDdxh19V
X-Gm-Gg: ASbGncsEzCc5R/h1y1ErO6xpR8dKfv1e9joCnQDfZiNUJzDJPs4qaDYj8KoaPygXirH
	BfkfXSe2WPKTbfwFUCpHnbK4OHEoyLi4Qc8z5T/Uce7AdZMqRXO6nORlkvYo+vmTDkry5j78GaU
	k+vGKZQcNtaUd7GwVlFaxFZ6IObWzTOt42UST5xNMxQH0gD73gU6/sWGlXDgJIsHe6pvkDnQJYh
	fF3/CFwHCbXY0Z/SXCmZ5buAaMvGmuH7eHWl10Y1l6tsjjmeHbjsBhh94SGSswNqKzEQLH8WnR6
	4nxG8gCeehw7ZJQd5UY9k6E16oCdLh8/agKrr/wu84Isw6BfQ7tUXw==
X-Received: by 2002:a05:6214:409:b0:705:16d9:16d8 with SMTP id 6a1803df08f44-73921a43c71mr54310386d6.6.1757244137736;
        Sun, 07 Sep 2025 04:22:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH5eBODkSZVURMQjCWR3pl6xanbPUigNJP388aG1AvYCAc5ryRdK1uW5UH1WPpUVEq9eQbSMA==
X-Received: by 2002:a05:6214:409:b0:705:16d9:16d8 with SMTP id 6a1803df08f44-73921a43c71mr54310126d6.6.1757244137322;
        Sun, 07 Sep 2025 04:22:17 -0700 (PDT)
Received: from debian ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3cf34494776sm37523289f8f.61.2025.09.07.04.22.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Sep 2025 04:22:15 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: broonie@kernel.org
Cc: lgirdwood@gmail.com, tiwai@suse.com, vkoul@kernel.org,
        yung-chuan.liao@linux.intel.com, pierre-louis.bossart@linux.dev,
        srini@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-sound@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Subject: [PATCH v4 10/13] ASoC: codecs: wcd939x: get regmap directly
Date: Sun,  7 Sep 2025 12:21:57 +0100
Message-ID: <20250907112201.259405-11-srinivas.kandagatla@oss.qualcomm.com>
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
X-Authority-Analysis: v=2.4 cv=Yv8PR5YX c=1 sm=1 tr=0 ts=68bd6aea cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=jWMDT5uzmWzhJut3sAYA:9
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-GUID: Ad8TUSTDHkknPg8Y0N6iTSE81WN5S-8O
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAxOCBTYWx0ZWRfX6qxWRE9WU6dg
 eoB3X6lFlux+B4YlctYzd9nTT2OCs3kxVwOvNjI/PiAkafJV3qU4WzBpZCZZBi86n67LdmPJdYH
 Lqm/u0oVBapU+Wsd7XSQxUcU7D/Ph5uVypzrBnlj/3OVgv5J7R1aMfslR0iSmheF0L3BOlrznxF
 5ZvFU+2vWy9E0pIqklGpER+JA8KuWdT/Q1voAmonw6Kn+umxDN6KfAtGzofa+49/44QNqpMnEol
 pUW9wa9i67zc0MSnrOXInLKhpW0aGHEdKJ0oXG0UftFALu+FG9xY1v0iAd/P1VVXd1iD//zZZIZ
 LsGbU0T0dpWOKc2cYLmRNpF4EaRoH94mOjL3gCfyvefUx04Z5dr7VNUEXNfy32LZSNl3+/jGFTS
 SinxZUWD
X-Proofpoint-ORIG-GUID: Ad8TUSTDHkknPg8Y0N6iTSE81WN5S-8O
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-07_04,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 malwarescore=0 suspectscore=0 phishscore=0 clxscore=1015
 spamscore=0 priorityscore=1501 impostorscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060018

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


