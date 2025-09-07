Return-Path: <devicetree+bounces-213968-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 41C0AB47AD6
	for <lists+devicetree@lfdr.de>; Sun,  7 Sep 2025 13:22:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CC9B217C3AD
	for <lists+devicetree@lfdr.de>; Sun,  7 Sep 2025 11:22:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE4F725FA3B;
	Sun,  7 Sep 2025 11:22:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="He5UVYVg"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 96EC72609E3
	for <devicetree@vger.kernel.org>; Sun,  7 Sep 2025 11:22:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757244132; cv=none; b=C0uuH2xN7ShACP+/VkRk3DEAymOYZb8iw3962nIhHt53ow4oSBAgnYGMgf3c31s4cgvQEsh9qkKpI3QlDCn/aPv6lrOYN3jLKBRyV0E5pokmth1L/dbwTT9Ii33vIy7UTI2MQ4AkN2cN+Xvd1d+J4VctEPvzkS3l4jkEmua4Qjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757244132; c=relaxed/simple;
	bh=Y67OeXOkwjcW/WgRDCaa4+GVWkV3DnYW2b1CZ9RDeD4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=sT2PY9zXawCXKeP4qulh14/qHtX7rlIhptbhcJ6OvBL+3vUNMhFQYXoCRIJrU/YKAU+lxVpewQPsOQLI6NVVKW/E8cV4m5EhY2lv1tj2z1yaGhjXl4xKwy9jlSa5v98Q4FIiLDrIkkk6jt+MIN4QQgkF83iMoMEP3VCR2djwWx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=He5UVYVg; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5878jP5O002719
	for <devicetree@vger.kernel.org>; Sun, 7 Sep 2025 11:22:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=Jw6p4thKtOG
	Ii/duK9Bwui939to4NPczh9FQMtKLRgs=; b=He5UVYVgzFSPSHyrXkl6dcmoMAq
	yi/iz8se6Vdqr3NKuNZmha2s2KUP3ql+FTZB2nAzdJePQJSPLH3XU/oYEeUb6Pab
	z1PW52eNrSWujywPLV4uDAK2EYtwlrbbcuvKgNVl+8E33cjoUI2a5tXwZvN/bdPG
	WCrGQebyzeLCHQw1F1hFIzVqOZo/Xo4t3xefMMIw4Wwt+mRpcP/jxFcp9J/drTTs
	uJ24rvR4pV/Wyz6yKFnXpJkb+VtYD67Az+tCioDhzqNx/RkxDCY6mUdbxjGl0XzG
	rr0A0SlheOFGe0zMi4LWnsmKC9Tp4cxKF4ds+gFVQA2RdcVu925xuqWD/qw==
Received: from mail-qv1-f70.google.com (mail-qv1-f70.google.com [209.85.219.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490c9j22qg-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 07 Sep 2025 11:22:08 +0000 (GMT)
Received: by mail-qv1-f70.google.com with SMTP id 6a1803df08f44-729751964dcso68130506d6.3
        for <devicetree@vger.kernel.org>; Sun, 07 Sep 2025 04:22:08 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757244128; x=1757848928;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Jw6p4thKtOGIi/duK9Bwui939to4NPczh9FQMtKLRgs=;
        b=oIEqaAHNI1Jx3+ekc9+71pKF08kYmvyD20Crfjf2EIStQUlYrbz3/NdjheG8XjEJ/u
         PqvRVJrBhQNMJ2EDDxQXt8kivhsssx5AeC9eT/dAOUmIxt/s2GnliIjv9pEt5nL9RXpF
         RiCk6sL8hPPW3KpPlvfSUN69o9HLBp/8DXbMXtzviznDYu1A9oKO11YXJ19sxHt/8g6J
         yzs0uAFYqAv/tjXl7wj6yjbNO10u4vj5x/dt/dRP9g1ixcxTgZjUV36TkXYeGZtkseDT
         PNZ2Hj+4SZGZhW6VLi2JYiQ96B5Eipl/+eOAqF4BoK3mrPiGDfNRy/FDRuEHnYz194hy
         AbYA==
X-Forwarded-Encrypted: i=1; AJvYcCVR4579ydB39SPE7TqEexeLaze2IemUUgfc43D7uvpE+eJbTyASh8WdrIEEA5ZZr5E/qBGaJ8wmNfmI@vger.kernel.org
X-Gm-Message-State: AOJu0YyaqcF27w5nP6mL2ggxeFeylXn42Q8GKCOAtHPlno7Bmq4kZvA+
	cVq+zvGzTxn/l8g4AmtkVmPK5O9DVkO8SyyjTqWFdEFuhCzZ34vmFlK/4YTOgdtLPNlZfW2dDS2
	NWF1zqybk3hKA4bB2kHkfR/3zbHA+s15JrGMoz99M6lB2xn1AjR7s00/G1in1Lv/b
X-Gm-Gg: ASbGncsGqtk9koy+xiveUjO1DMGURML+2PVfYzfW8j8LBeXdeOVV4YL0Tf/+hVo5Yfo
	LMkuGxGX2JqFAXDmcbVg4CIQlGwEShSH6u+wsX0oTmdL0xY9U6Z3CXiTUUz8Y5y7B6bZyWCTsvv
	ii4b5T1smR+J8vVhSEsq5ybYBxCIs5PdZEWs0ukZiLcJMbMNFrEkBlUB1OZaX/ipjMslwyzroYb
	BejzlOzhCrabEwAyoUwY6xpizY2By+JM4YMHDOqIbFTab+YhQnOjMRv1toCN8kauCAjHy0RfgHc
	S5KomJbvJUt1dyt7ngLiwWy3OhseCCgBX8w1iueHCh9x9KaUfeLuTQ==
X-Received: by 2002:a05:6214:130d:b0:71f:85bf:6386 with SMTP id 6a1803df08f44-739453b8593mr51717206d6.59.1757244127736;
        Sun, 07 Sep 2025 04:22:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEUK7tyWynSX9vOFGSp5aznUiforb8jjvNd8bvncFpn2AcSchHoh7Woa5kC+0D8QEz8w1rZxA==
X-Received: by 2002:a05:6214:130d:b0:71f:85bf:6386 with SMTP id 6a1803df08f44-739453b8593mr51716966d6.59.1757244127332;
        Sun, 07 Sep 2025 04:22:07 -0700 (PDT)
Received: from debian ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3cf34494776sm37523289f8f.61.2025.09.07.04.22.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 07 Sep 2025 04:22:06 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: broonie@kernel.org
Cc: lgirdwood@gmail.com, tiwai@suse.com, vkoul@kernel.org,
        yung-chuan.liao@linux.intel.com, pierre-louis.bossart@linux.dev,
        srini@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-sound@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>,
        Stable@vger.kernel.org
Subject: [PATCH v4 02/13] ASoC: codecs: wcd937x: make stub functions inline
Date: Sun,  7 Sep 2025 12:21:49 +0100
Message-ID: <20250907112201.259405-3-srinivas.kandagatla@oss.qualcomm.com>
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
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAyMiBTYWx0ZWRfXwf8pNJLoYv7/
 8PzqiIjvnlTbegAdUXKCPP/nu5xeayX/Ja4OG1pItkDdlKa+2fMcbdWgRS4EXxeCcaA0INgkOto
 XaU1kccGbjf5TQ5EQfJwFb02WwZfX4T+OcXZhMwxvLDwlU6GrwAolR+KfbpFD0SWLe1k8x25ls5
 tZ39UGik5vNlIz3ecamJkntFgDkyRB8t8E5JsyusqClcIqlK3xQnkLDlIWz4wN98v7vN729+C2W
 EG4iYrp0An9/qTTKL9rFl0BRFVbEVaCaplQ1v0Iu9wIT3HIJagAemVmRYJnyxDpo2gXHukBg2II
 BKa69imDOIRVhtUmKUzA13HuSWDCUAq11PTLZUZvpxW+eajxDYIDpSda/l0Pim4OtxXRG8+oT/q
 5Wv/wKM1
X-Proofpoint-ORIG-GUID: 6dpG6dj2oTEUeqP1E90EiVxYfnY2YlL-
X-Authority-Analysis: v=2.4 cv=PpOTbxM3 c=1 sm=1 tr=0 ts=68bd6ae0 cx=c_pps
 a=oc9J++0uMp73DTRD5QyR2A==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=yJojWOMRYYMA:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=SV47_qJM1wkz75m2VG8A:9
 a=iYH6xdkBrDN1Jqds4HTS:22
X-Proofpoint-GUID: 6dpG6dj2oTEUeqP1E90EiVxYfnY2YlL-
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-07_04,2025-09-04_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 spamscore=0 bulkscore=0 clxscore=1015
 malwarescore=0 adultscore=0 impostorscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060022

For some reason we ended up with stub functions that are not inline,
this can result in build error if its included multiple places, as we will
be redefining the same function

Fixes: c99a515ff153 ("ASoC: codecs: wcd937x-sdw: add SoundWire driver")
Cc: <Stable@vger.kernel.org>
Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
---
 sound/soc/codecs/wcd937x.h | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/sound/soc/codecs/wcd937x.h b/sound/soc/codecs/wcd937x.h
index 3ab21bb5846e..d20886a2803a 100644
--- a/sound/soc/codecs/wcd937x.h
+++ b/sound/soc/codecs/wcd937x.h
@@ -552,21 +552,21 @@ int wcd937x_sdw_hw_params(struct wcd937x_sdw_priv *wcd,
 struct device *wcd937x_sdw_device_get(struct device_node *np);
 
 #else
-int wcd937x_sdw_free(struct wcd937x_sdw_priv *wcd,
+static inline int wcd937x_sdw_free(struct wcd937x_sdw_priv *wcd,
 		     struct snd_pcm_substream *substream,
 		     struct snd_soc_dai *dai)
 {
 	return -EOPNOTSUPP;
 }
 
-int wcd937x_sdw_set_sdw_stream(struct wcd937x_sdw_priv *wcd,
+static inline int wcd937x_sdw_set_sdw_stream(struct wcd937x_sdw_priv *wcd,
 			       struct snd_soc_dai *dai,
 			       void *stream, int direction)
 {
 	return -EOPNOTSUPP;
 }
 
-int wcd937x_sdw_hw_params(struct wcd937x_sdw_priv *wcd,
+static inline int wcd937x_sdw_hw_params(struct wcd937x_sdw_priv *wcd,
 			  struct snd_pcm_substream *substream,
 			  struct snd_pcm_hw_params *params,
 			  struct snd_soc_dai *dai)
-- 
2.50.0


