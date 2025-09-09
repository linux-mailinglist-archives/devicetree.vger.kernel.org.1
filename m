Return-Path: <devicetree+bounces-214917-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 10EE0B4FA9A
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 14:20:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id BB2654E5E03
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 12:20:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F139C308F15;
	Tue,  9 Sep 2025 12:20:27 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="LJAcIMDR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DF4B3376AB
	for <devicetree@vger.kernel.org>; Tue,  9 Sep 2025 12:20:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757420427; cv=none; b=IB3pzSh0HMa4whHlHv4pA+YDr3vGfPpS9HGLhAS8YMEjC+AKjuGgQlltvkyb6fT4oeWKOexmbfJj45Cl07ps+s5HbzoWudtRDHGwp1Kbjt6wBQFBpDXuSARHwZWHDaW34/IXLDWCwfE9+5mpbyApX4kNacv/mD27Wx5ZmlE+zRQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757420427; c=relaxed/simple;
	bh=4NDb3BHQkI2X3E5eiL6I24at9ebSdCFIXHWDhEFcgdg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=r4iQJTOhCYS8AnfqJPW7BqyDe1fr5tkUI8Fwbw7kc5Xzcn9jeYpexx/PmdMwqCXlrAWS2BB8yQQbtg+EhzMwMJnwKI8lUtdV8CG+t7Td3BZlD+3NxuXYShwZ+0blrdvvBIubpmjud0IfTp093xhBNI95ofril/1TGgWceOjnZkk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=LJAcIMDR; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5899LRMt029821
	for <devicetree@vger.kernel.org>; Tue, 9 Sep 2025 12:20:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=C34AfntxGUQ
	tcgOzSpdk0iKg2eP3zakUjCy6JAxDmas=; b=LJAcIMDRofWTMIwTHdbsR4ojTuD
	QjtkNENFmJBirNGNPtrk1+EEFg0y+7gynDLxkh7YxIbuF6Bv6DsLmxJ02FqHOoPy
	4CYyi1q4NIIXt3mK3YvwG1o4YmYdOYyYj/j44RUCO/2L4Sy9a4bdlZ8n97zxpXCP
	/aBfxeSNUgeswg5qwmqq2fXYGwHTKi9eUEV3zds2AU3fWEREW1Let9ijzbhNHSKr
	rjW7Q1xNVpZ9u1djhvFCrgNK7tuAIFiHWns+XsuyMqxn8SEgP7aLNHgCV3pzDisG
	rMpouVeQaxv/uE5VS16JcpuXI5Twi0l+Vh2AhYbiJhegt6LsJw0JatsiKHA==
Received: from mail-qv1-f72.google.com (mail-qv1-f72.google.com [209.85.219.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 491t37vn0g-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 12:20:25 +0000 (GMT)
Received: by mail-qv1-f72.google.com with SMTP id 6a1803df08f44-718c2590e94so154107776d6.1
        for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 05:20:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757420424; x=1758025224;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=C34AfntxGUQtcgOzSpdk0iKg2eP3zakUjCy6JAxDmas=;
        b=XdecKfykTIFb1QN4CD7PXYnSmiEtFtfgQTATNNMXOUW3Q32mMFdDUPajnKEYNs9fEN
         Inw1ehLv1qLGRQhn2u8P/5mnMY1+pNCK2sMA8COKWsn6Qczoqind5K+kjX2vLE2mqRMq
         Vlhrnd0POd4bK+4Tkz07TodO8IzNFZgv9oQ3D7LEx+NuBnXmDxWmajncCn4CqbPKB6k/
         MwUnLN4hrP13ZmXKqHEN32cPWKzBmO36HUZySd/kcBr2DkhjzvYAMoKX67OWMaoehWNl
         jvgNKNJmQf9tkRb1jFzKY6CXbT9Z5Ekdp+9jIVED/KmQbfjUpYs2tzBXC+PoJt8qTTlM
         owWQ==
X-Forwarded-Encrypted: i=1; AJvYcCUYDMF5Z4wmevOaP7EppYnqVwd06QEGdmFZuXrIObc+Ts3zPkOiM57aY1TDBXfYWn/h9hPEwG4sb+k8@vger.kernel.org
X-Gm-Message-State: AOJu0Yzvd44SG/Uvxf0qVofmtFQHxxUTLgtI07IvdVUz9WCYGYwEfDmW
	QlNNuMs3ZY7kqxOGtxMQM27gENwefsdikDHI26m/+5Ph0eexdA3Wx8BRWPWhD4FD3q0Z0X356o+
	WsE9ijdRwKnZ5NGiF7VzJR7mOFmfRRKkAOi4Fo9a7BJmpLZFJ5bQhNo+8np092klt
X-Gm-Gg: ASbGncvM5pQkIsuTgw059nbgysWj8SfayM0WS5/6hsKGw+xcVMFdGJW4Q3V/5qPvO8H
	9IuvlEE/p6cCh8q9yuOTeXX4Jr7nkjtHvGP02L/Wb5KRBRiS4nCxcn13qV3fkD37+OuLeN8ZUgH
	ofwW9UvPy/89B5ivY6/bfKur1/pBf0BmeawHU2BSf64iPLhaX331xtpmkwJV6qdE9hSxj5u94SB
	z934C0/othlFOtntxicQAi/dnw9aCTRT9PPj3ZDjZ0UEAaiwEEwySUQ1jzZY0HWONV1WP9AdkLN
	Bzth4LE2Wx+spfpeJLShRw9Za0XpAvYTcotLN/1TH0mmBMRl49X43A==
X-Received: by 2002:ad4:5be4:0:b0:70d:dbb8:2a08 with SMTP id 6a1803df08f44-72bbdceb182mr156038076d6.3.1757420423896;
        Tue, 09 Sep 2025 05:20:23 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHRLHhHYhnAnZgwOz6EmXo53Q0xNjmylA1B23jjIxeH/FjfAFEZIkqOuOd5Hjm9+D1oYLRV/g==
X-Received: by 2002:ad4:5be4:0:b0:70d:dbb8:2a08 with SMTP id 6a1803df08f44-72bbdceb182mr156037706d6.3.1757420423308;
        Tue, 09 Sep 2025 05:20:23 -0700 (PDT)
Received: from debian ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e75224db20sm2414629f8f.60.2025.09.09.05.20.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 05:20:22 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: broonie@kernel.org
Cc: lgirdwood@gmail.com, tiwai@suse.com, vkoul@kernel.org, srini@kernel.org,
        yung-chuan.liao@linux.intel.com, pierre-louis.bossart@linux.dev,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, linux-sound@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v5 06/13] ASoC: codecs: wcdxxxx: use sdw_slave_get_current_bank helper
Date: Tue,  9 Sep 2025 13:19:47 +0100
Message-ID: <20250909121954.225833-7-srinivas.kandagatla@oss.qualcomm.com>
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
X-Proofpoint-ORIG-GUID: 1Bwlv7l8PwxgMCEQsB4ca9PecjpBPEi8
X-Proofpoint-GUID: 1Bwlv7l8PwxgMCEQsB4ca9PecjpBPEi8
X-Authority-Analysis: v=2.4 cv=NdLm13D4 c=1 sm=1 tr=0 ts=68c01b89 cx=c_pps
 a=7E5Bxpl4vBhpaufnMqZlrw==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=WmG1VI7HpiTX60UEcG8A:9
 a=pJ04lnu7RYOZP9TFuWaZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA4MDA2NiBTYWx0ZWRfX/WsxZxJgj34X
 4Wjp0/uvwY7+H80wbyJOeDXXExQ4hsDJCeoPfFUikHWHl+ymQlJHYiHQngNTrZvGflFoIKEH9OX
 AzlX46AY+SM9HK3XeURo3EG4liiFbZWbfnlGbHC6l0JdGqXwDnxs3yonJc+li5qiiw1if90cP0i
 Y/hziWYARPniZuFhespzWZIvQt3esds6bd/Z0js7BqL7t/4EHPso6wYTkebzo4Mn707yQ08ApwF
 rgC8fOauFCPDISDo/rYZWhVIOxVaBS6KqWdKvhDc7tm7x0QDX7i38n8MoJ6v7wxbL7CVRMZCr8Y
 0NpzF6L9Zi9dPcGJS5wP6hJ1gKOTWhYYRcFPEa10FRs2g7NweXhDyfXEflmho1aQtvYek0UVaPl
 rAjecFeu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-09_01,2025-09-08_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 adultscore=0 suspectscore=0 phishscore=0
 clxscore=1015 impostorscore=0 spamscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509080066

use sdw_slave_get_current_bank() helper function, rather than duplicating
this function in every codec driver.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Acked-by: Vinod Koul <vkoul@kernel.org>
---
 sound/soc/codecs/wcd938x-sdw.c | 10 ----------
 sound/soc/codecs/wcd938x.c     |  3 +--
 sound/soc/codecs/wcd938x.h     |  7 -------
 sound/soc/codecs/wcd939x-sdw.c |  7 -------
 sound/soc/codecs/wcd939x.c     |  2 +-
 sound/soc/codecs/wcd939x.h     |  7 -------
 6 files changed, 2 insertions(+), 34 deletions(-)

diff --git a/sound/soc/codecs/wcd938x-sdw.c b/sound/soc/codecs/wcd938x-sdw.c
index a7514d716086..8bcd8396f375 100644
--- a/sound/soc/codecs/wcd938x-sdw.c
+++ b/sound/soc/codecs/wcd938x-sdw.c
@@ -82,16 +82,6 @@ static struct sdw_dpn_prop wcd938x_dpn_prop[WCD938X_MAX_SWR_PORTS] = {
 	}
 };
 
-int wcd938x_swr_get_current_bank(struct sdw_slave *sdev)
-{
-	int bank;
-
-	bank  = sdw_read(sdev, SDW_SCP_CTRL);
-
-	return ((bank & 0x40) ? 1 : 0);
-}
-EXPORT_SYMBOL_GPL(wcd938x_swr_get_current_bank);
-
 int wcd938x_sdw_hw_params(struct wcd938x_sdw_priv *wcd,
 			  struct snd_pcm_substream *substream,
 			  struct snd_pcm_hw_params *params,
diff --git a/sound/soc/codecs/wcd938x.c b/sound/soc/codecs/wcd938x.c
index e2cb0758bca7..f8d7bf27a6ed 100644
--- a/sound/soc/codecs/wcd938x.c
+++ b/sound/soc/codecs/wcd938x.c
@@ -1094,8 +1094,7 @@ static int wcd938x_tx_swr_ctrl(struct snd_soc_dapm_widget *w,
 	int bank;
 	int rate;
 
-	bank = (wcd938x_swr_get_current_bank(wcd938x->sdw_priv[AIF1_CAP]->sdev)) ? 0 : 1;
-	bank = bank ? 0 : 1;
+	bank = sdw_slave_get_current_bank(wcd938x->sdw_priv[AIF1_CAP]->sdev);
 
 	switch (event) {
 	case SND_SOC_DAPM_PRE_PMU:
diff --git a/sound/soc/codecs/wcd938x.h b/sound/soc/codecs/wcd938x.h
index dbafcae247f4..54ee56b7fbd6 100644
--- a/sound/soc/codecs/wcd938x.h
+++ b/sound/soc/codecs/wcd938x.h
@@ -669,9 +669,6 @@ int wcd938x_sdw_hw_params(struct wcd938x_sdw_priv *wcd,
 			  struct snd_pcm_substream *substream,
 			  struct snd_pcm_hw_params *params,
 			  struct snd_soc_dai *dai);
-
-int wcd938x_swr_get_current_bank(struct sdw_slave *sdev);
-
 #else
 
 static inline int wcd938x_sdw_free(struct wcd938x_sdw_priv *wcd,
@@ -696,9 +693,5 @@ static inline int wcd938x_sdw_hw_params(struct wcd938x_sdw_priv *wcd,
 	return -EOPNOTSUPP;
 }
 
-static inline int wcd938x_swr_get_current_bank(struct sdw_slave *sdev)
-{
-	return 0;
-}
 #endif /* CONFIG_SND_SOC_WCD938X_SDW */
 #endif /* __WCD938X_H__ */
diff --git a/sound/soc/codecs/wcd939x-sdw.c b/sound/soc/codecs/wcd939x-sdw.c
index e487a1bb0194..477d6cf27d32 100644
--- a/sound/soc/codecs/wcd939x-sdw.c
+++ b/sound/soc/codecs/wcd939x-sdw.c
@@ -128,13 +128,6 @@ static struct sdw_dpn_prop wcd939x_tx_dpn_prop[WCD939X_MAX_TX_SWR_PORTS] = {
 	}
 };
 
-unsigned int wcd939x_swr_get_current_bank(struct sdw_slave *sdev)
-{
-	return FIELD_GET(SDW_SCP_STAT_CURR_BANK,
-			 sdw_read(sdev, SDW_SCP_CTRL));
-}
-EXPORT_SYMBOL_GPL(wcd939x_swr_get_current_bank);
-
 int wcd939x_sdw_hw_params(struct wcd939x_sdw_priv *wcd,
 			  struct snd_pcm_substream *substream,
 			  struct snd_pcm_hw_params *params,
diff --git a/sound/soc/codecs/wcd939x.c b/sound/soc/codecs/wcd939x.c
index 5a56c79a8922..85730ae40c2c 100644
--- a/sound/soc/codecs/wcd939x.c
+++ b/sound/soc/codecs/wcd939x.c
@@ -1017,7 +1017,7 @@ static int wcd939x_tx_swr_ctrl(struct snd_soc_dapm_widget *w,
 	int bank;
 	int rate;
 
-	bank = wcd939x_swr_get_current_bank(wcd939x->sdw_priv[AIF1_CAP]->sdev);
+	bank = sdw_slave_get_current_bank(wcd939x->sdw_priv[AIF1_CAP]->sdev);
 
 	switch (event) {
 	case SND_SOC_DAPM_PRE_PMU:
diff --git a/sound/soc/codecs/wcd939x.h b/sound/soc/codecs/wcd939x.h
index 3f189e5cafd5..e70445b1a4bc 100644
--- a/sound/soc/codecs/wcd939x.h
+++ b/sound/soc/codecs/wcd939x.h
@@ -930,8 +930,6 @@ int wcd939x_sdw_hw_params(struct wcd939x_sdw_priv *wcd,
 			  struct snd_pcm_hw_params *params,
 			  struct snd_soc_dai *dai);
 
-unsigned int wcd939x_swr_get_current_bank(struct sdw_slave *sdev);
-
 struct regmap *wcd939x_swr_get_regmap(struct wcd939x_sdw_priv *wcd);
 #else
 
@@ -957,11 +955,6 @@ static inline int wcd939x_sdw_hw_params(struct wcd939x_sdw_priv *wcd,
 	return -EOPNOTSUPP;
 }
 
-static inline unsigned int wcd939x_swr_get_current_bank(struct sdw_slave *sdev)
-{
-	return 0;
-}
-
 struct regmap *wcd939x_swr_get_regmap(struct wcd939x_sdw_priv *wcd)
 {
 	return PTR_ERR(-EINVAL);
-- 
2.50.0


