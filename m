Return-Path: <devicetree+bounces-214915-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id C7A19B4FA97
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 14:20:50 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id F3EA74E5A62
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 12:20:47 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B3D03376A8;
	Tue,  9 Sep 2025 12:20:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cMBoPEsm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 433643375D4
	for <devicetree@vger.kernel.org>; Tue,  9 Sep 2025 12:20:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757420426; cv=none; b=F0AIju/zhTW5EN29iGAyb+zxRPmzths0he5k9Bptvdb5H3m4xEX8cgyb8a3F/6/G1EVOzyzzQpsoBccryeDa7nzWNpE1Zoyia+hFZ4Co1andAtHc4wmu4en6bLrBo9ezBDb7A7eYGGqpwluxlOacjrUNtpQmUHf+mok2RgbdcgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757420426; c=relaxed/simple;
	bh=ikumlZWRZ31uELt9Gx3EsqoON5ydu7Y5Jeqw2vQ5WF0=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=n0shy2EjJHjcWAjxl5hQHjyHzrxH+VJ2Mk21ikifWGGiT7uE6vshuUV6dPApBmAJWCiKQ00gjW9my7m4ii/CP2jI+2iLrJIDXq7zZ6VKzT3xGzyxPVG9UDPGSnTv7Gk7AobfTQ1g9kwTu0F+ux5vRTYbuT4MqtByDYCWT6Cz8Ck=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cMBoPEsm; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5899LTIA029178
	for <devicetree@vger.kernel.org>; Tue, 9 Sep 2025 12:20:23 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=O3dcTOpjTe1
	fHGNnpmdRKX8jenRcrbq/0mDRIoxdxMI=; b=cMBoPEsmAFFrrm0sbsp0/N3EoPw
	2IvyyE3aYjSUDBhI3GlJB5IgMm/62fZv46xxXSUIC5FWQYwraH5j0HBlAXwl1oNN
	oJdw1SeWElzNxO7PQ3U4mRFhz2e6QTHiP3/qjDdEghLwiMNO6tPIfBCQTpBiRD7P
	jKQF8u2PGh/a3glyvl6E0dgAVYbI5XFSmewIEwlHwmL5b724IdHlueolVsJI1KzQ
	HvViujHBx3ehab5Dmqj653pTdRrKtT5OkrdCFwMiNEgJC81RBnyeJSOrcW6+xJnz
	BQtEOBtfx/Bihg/4GHe4un3jCiRS1K94o+vmkigX6ulSrU5XBxfl/B44n6Q==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490db8g64b-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 12:20:22 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4b5fbf0388eso45371721cf.3
        for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 05:20:22 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757420422; x=1758025222;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=O3dcTOpjTe1fHGNnpmdRKX8jenRcrbq/0mDRIoxdxMI=;
        b=jBo/PCPfnqp+4fqGhNTMmFfLo55065+AB8dYNdZWaBo/nQV2xuO36VDnnka/wZyMh4
         0abX5hZTE4yTSE74NLHRwPLNbRvQHTzyIdnXbijNzDi9eFj15coB/VkWLxXooBLWjTro
         qqOuhULSSRONYR/GfCg7h4VWgrMyGQo8iXN7i7xzFi12Oskfu2BlwdmfT84M0XReiUmA
         QZwtyeymTH1PgGEbDgR8wtODeSnj6KDfawsVBX6O3i+oeOVdO5RxJ6gnu8RWYtfot0dT
         R2Ug/tC63PhgZeHfQR3KNzEX6nVJnxpxPrCPD+m4JSUalnbuG5xq9iojBXoJ8Re7xrSz
         k+NA==
X-Forwarded-Encrypted: i=1; AJvYcCU64LzAEF7FdJGK3dg6xeC0F2SB/v1fEMA+qQK9y7s1zkmRoGz+yy59yW7TCMPcaQyynYinDXH0HPio@vger.kernel.org
X-Gm-Message-State: AOJu0YxUtlMeSdERZa0EV+nCfMgvaQ5XgAD7lYVFvQmANvB3bzJJOPdl
	7QynYEBy/Vw1Tz6H3n/2+jkH+i6CfhaXAUnLH9TbCv8x6Acx1srnarMglR6c/zjN02+zvL4Jwz0
	2tU0Z1OiO1TL6JyPauQgwdXB4igHB4d2Y1JeIDQLvdHaPQbNWqnvd1dGXw9z5vSnh
X-Gm-Gg: ASbGncsHvpgWorJbG8ShUoqtYGW+eOhVfoGTa6x4p/kdVSps7QjB0KDU6uMU2k7qxow
	6zDDrjvwJHw8cBEd4jpoomcDD5+4WsIsasVuvQKozPVIdM1wCksELwscaJrGYBTjEzlawZZuQYL
	lh3QQq4k1diyuYS5+r4W5JJkArBqlha5Pmj7gqR6jZD/P6QpBI+C5+L2mPFi9VVDt8lM+93HIcV
	m4ZMxyE5QIXYD78zUsEvMPIQTQBl6jtRkHz1zi8qOyc0EbZAdZ7OVhTuOVzI1rFkE5zoKZkxmpF
	5S01DeUNdlaOHWfDXp9LEzbQ1kOmfP7YuZlAgpVEjIxeNu7+n6mj3w==
X-Received: by 2002:ad4:5f4e:0:b0:70d:fcaf:e76d with SMTP id 6a1803df08f44-73940035b50mr145175556d6.31.1757420421765;
        Tue, 09 Sep 2025 05:20:21 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGr8d1koaoi/dwZkFJYZO1phqDXAgj+fx4Vh5IgV9S1JEkZsTrG8xXVKjuxZnSjq6DxTm+Z9g==
X-Received: by 2002:ad4:5f4e:0:b0:70d:fcaf:e76d with SMTP id 6a1803df08f44-73940035b50mr145175126d6.31.1757420421222;
        Tue, 09 Sep 2025 05:20:21 -0700 (PDT)
Received: from debian ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e75224db20sm2414629f8f.60.2025.09.09.05.20.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 05:20:20 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: broonie@kernel.org
Cc: lgirdwood@gmail.com, tiwai@suse.com, vkoul@kernel.org, srini@kernel.org,
        yung-chuan.liao@linux.intel.com, pierre-louis.bossart@linux.dev,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, linux-sound@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v5 04/13] soundwire: bus: add sdw_slave_get_current_bank helper
Date: Tue,  9 Sep 2025 13:19:45 +0100
Message-ID: <20250909121954.225833-5-srinivas.kandagatla@oss.qualcomm.com>
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
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAzMSBTYWx0ZWRfX+J1jS9sFMpIo
 uY6lrzXpO33In/pHlhyN0oj1gmklta5zLLdWSePqPx+X5p460YonRryAzm/yMMhA8Dq225B804O
 4nwkMZ7HSAnZUxO0AAWAMagDd5R0kIjmCaHQZy96/UF95BtqtfkXPyBkzbe7lXHe95lYFzeANU5
 14ouPClgAcS3R1nnz55uJWOtUfzMpt+PUTfAibiuFLjTjS9vnzKd38+bJKLE0IvI6VDVv54Y3tJ
 o1+H6K6YkMIOztp/mA4ojfvRMdJ6JDl7klvhjNbmF2KUC4Aenp19aFJ/eXHsPZt4eNkKPAiRz/O
 X0uLEGAlAvto/al4kYvtEGGemZdYU7itekgRVWaTAb7So81jaubKEEA3fmRfjo2rmmslkQulZ3L
 8P071Ori
X-Proofpoint-ORIG-GUID: SMwsvigdCmsLFqOWSPhh14qccYpJr38p
X-Proofpoint-GUID: SMwsvigdCmsLFqOWSPhh14qccYpJr38p
X-Authority-Analysis: v=2.4 cv=VIDdn8PX c=1 sm=1 tr=0 ts=68c01b86 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=G7Fn18kybrAXfbFeA2QA:9
 a=dawVfQjAaf238kedN5IG:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-09_01,2025-09-08_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 malwarescore=0 spamscore=0 suspectscore=0 bulkscore=0
 phishscore=0 adultscore=0 clxscore=1015 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060031

There has been 2 instances of this helper in codec drivers,
it does not make sense to keep duplicating this part of code.

Lets add a helper sdw_get_current_bank() for codec drivers to use it.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Acked-by: Vinod Koul <vkoul@kernel.org>
---
 drivers/soundwire/bus.c       | 12 ++++++++++++
 include/linux/soundwire/sdw.h |  8 ++++++++
 2 files changed, 20 insertions(+)

diff --git a/drivers/soundwire/bus.c b/drivers/soundwire/bus.c
index 4fd5cac799c5..55c1db816534 100644
--- a/drivers/soundwire/bus.c
+++ b/drivers/soundwire/bus.c
@@ -1360,6 +1360,18 @@ int sdw_slave_get_scale_index(struct sdw_slave *slave, u8 *base)
 }
 EXPORT_SYMBOL(sdw_slave_get_scale_index);
 
+int sdw_slave_get_current_bank(struct sdw_slave *slave)
+{
+	int tmp;
+
+	tmp = sdw_read(slave, SDW_SCP_CTRL);
+	if (tmp < 0)
+		return tmp;
+
+	return FIELD_GET(SDW_SCP_STAT_CURR_BANK, tmp);
+}
+EXPORT_SYMBOL_GPL(sdw_slave_get_current_bank);
+
 static int sdw_slave_set_frequency(struct sdw_slave *slave)
 {
 	int scale_index;
diff --git a/include/linux/soundwire/sdw.h b/include/linux/soundwire/sdw.h
index 096213956d31..e6a3476bcef1 100644
--- a/include/linux/soundwire/sdw.h
+++ b/include/linux/soundwire/sdw.h
@@ -1089,6 +1089,8 @@ int sdw_stream_remove_slave(struct sdw_slave *slave,
 
 struct device *of_sdw_find_device_by_node(struct device_node *np);
 
+int sdw_slave_get_current_bank(struct sdw_slave *sdev);
+
 int sdw_slave_get_scale_index(struct sdw_slave *slave, u8 *base);
 
 /* messaging and data APIs */
@@ -1128,6 +1130,12 @@ static inline struct device *of_sdw_find_device_by_node(struct device_node *np)
 	return NULL;
 }
 
+static inline int sdw_slave_get_current_bank(struct sdw_slave *sdev)
+{
+	WARN_ONCE(1, "SoundWire API is disabled");
+	return -EINVAL;
+}
+
 /* messaging and data APIs */
 static inline int sdw_read(struct sdw_slave *slave, u32 addr)
 {
-- 
2.50.0


