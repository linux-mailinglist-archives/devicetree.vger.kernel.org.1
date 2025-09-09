Return-Path: <devicetree+bounces-214925-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id AD49DB4FAAB
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 14:21:25 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 66FB51C26B57
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 12:21:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0EA1533A039;
	Tue,  9 Sep 2025 12:20:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="L5DXRPLR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D6B2338F42
	for <devicetree@vger.kernel.org>; Tue,  9 Sep 2025 12:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757420436; cv=none; b=QSCf3EU4wZ16Me5j0VNrYB4CFuJPVjxlrnNR2A4p/uBgkDDsuD8YCbwggtDMvq4ZLivBlkzDn0y7/7BVWQ2SzpO9clPpXrAfDJNwZozC/xVpn9bQ/yrMKbseRknwbSmJacNJzmrzlS53vOHsae8oUjrPQbh1B8MqtWzbLhHkBjY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757420436; c=relaxed/simple;
	bh=HmXyaDzSyYWKVyfOvvK8VoaY3HzpzmVHwTfs57fRK7Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=XGk+1pr4M2WmNHG8Y3NK3qOepUcsps+Psr68TJ1FZRRqM2CSZEQJVL01RxeFC1x6F9fIg9GcosWrxxMTs9Bu7aRJZOigXuvulibGlA5BZNZtK9e7aeLgeV84qF9mFfTSX/nCzjkYzhFwUw+p2nNkyxHh4wE3H9sTIvdkRQ6u/QU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=L5DXRPLR; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5899LQj5029766
	for <devicetree@vger.kernel.org>; Tue, 9 Sep 2025 12:20:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=oOmSsAnlxpq
	Orq3+ovrwk8ydYShsFwbNuJh8B6XuDYY=; b=L5DXRPLR3OjN03nOD4GLtIgaS39
	nT4AGl02owqfL3J/mWro2xbldiKRy3NSTUyfZgLpEIpmua/k83vVaUpeBG+ooH2o
	AO7l4+EdesubTiRFpws8aumc89Ke/0M7oM/CYYQPFWIk3revcqzNtq20VvJX8KFX
	YeIBpTmiYEtLOOGAiER4Bobx+LGgyAxc9G7hP9nZ5fpVP+55QQmAUOnmVj5rw4Ot
	bSCnOdNkObennWUhMB3nORsSYfXFgSHh4uQnlLyxqfWqLVlQUOXiIPF5fDSQMyyf
	CaRwnrRKUEf3M08r2/TC2tF2/yQrF5Ki5bvKOP6QtcCSszxUyxN9NHzwBOQ==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 491t37vn1j-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 12:20:34 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-70d7c7e972eso120082886d6.3
        for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 05:20:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757420433; x=1758025233;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=oOmSsAnlxpqOrq3+ovrwk8ydYShsFwbNuJh8B6XuDYY=;
        b=LxAYEFrmnP83c8MAjS48IMaQX2myqXr83FlKsAkXD0QUwVt2u60zdkVsVa5WS/BqEo
         mWCKUWoqyA4I3+jw5FZthgQyuE62u8Ud7TNb5xExhpqebE9r/82lT61Eb4yQZtzcrQqx
         15dLNovoOk6LIwPNe9ILcm92LJ0k5HSolhEvihtv4cYVOy1akd8UQK2kG7NJASHKddH0
         PQkl869zvPDU+LaQ0XsY6P65thwoCe0t7mqVdquEkR1JbyxE1DoK0+BVm9sVwaWJ/RuZ
         nb3EXfV/W0yvWONYZnIYREGLufVqDRgTpm98ra9oFHniTthVx3c0s1nqdjBFNfm37ju2
         3fNg==
X-Forwarded-Encrypted: i=1; AJvYcCXTgICkGmiWh7cAulfBKYBN2WDgYDYtUOrAe0ljgzZevxjKgx9XBu0D6/VL6b1qZJXyUY1nYZw9iqrX@vger.kernel.org
X-Gm-Message-State: AOJu0YwRk0dOImq8uwpvjxdoXIeuRW45A5cGRuAXB7Q/dazEvdSn03zN
	+hZKVf4VnEcgdUE5fWQ3fYt1919hoQ5lCb8HqByuZklk7yQ7DLrZFSd8YKwhAGe0KpwlfNIoXII
	DqLe74ldjq3j9ADct1nl+grhS/CFwjKOw2T9ZzlnR+ld2lwr8E7gGGp9oCmTA0Xhq
X-Gm-Gg: ASbGncvoQ/qT2Dkm+sV+gUYBl2H3mpxwTpD1pdAb4zqRfI8s7kfVDkefGRmcybtczIA
	zhkOHu9X8VMQ6icYIPeoOEoI0eFSXfcauslMqXB8jZNwwAl8i8zQQlqskocWNzVWGTpqDtuiDqj
	ne5gf2wXEjC75pmebR1hZeTv0z4kNohfHubm654zdhApWr5FHsvkr5cbMumD2FN9DOUbb7i0lqC
	AG3ygfQns2cmOfixijLhuHZFiwk2kXC0MZabqNxk6qRJ4PKh/79yntzonRq/gFg7OUJR8PovbVn
	zW0hZyyP8OCioIHPD1lzIOOPjlTjmq05VSvnuTs9VdLwIKPs6EHYVw==
X-Received: by 2002:ad4:5cec:0:b0:728:7749:26e4 with SMTP id 6a1803df08f44-7394276ffa4mr117056806d6.57.1757420433271;
        Tue, 09 Sep 2025 05:20:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFGXF+ftxU8ZDSlhD2HodezUk/i4BybgQlaMQPM/WXTVJmY4zEZIOZUrPopisD1hK+pGViISw==
X-Received: by 2002:ad4:5cec:0:b0:728:7749:26e4 with SMTP id 6a1803df08f44-7394276ffa4mr117056186d6.57.1757420432633;
        Tue, 09 Sep 2025 05:20:32 -0700 (PDT)
Received: from debian ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e75224db20sm2414629f8f.60.2025.09.09.05.20.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 05:20:32 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: broonie@kernel.org
Cc: lgirdwood@gmail.com, tiwai@suse.com, vkoul@kernel.org, srini@kernel.org,
        yung-chuan.liao@linux.intel.com, pierre-louis.bossart@linux.dev,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, linux-sound@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v5 13/13] ASoC: codecs: wcd937x: get regmap directly
Date: Tue,  9 Sep 2025 13:19:54 +0100
Message-ID: <20250909121954.225833-14-srinivas.kandagatla@oss.qualcomm.com>
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
X-Proofpoint-ORIG-GUID: jsG4WkTnSuyypLuEexj97HRkGwOxGn3J
X-Proofpoint-GUID: jsG4WkTnSuyypLuEexj97HRkGwOxGn3J
X-Authority-Analysis: v=2.4 cv=NdLm13D4 c=1 sm=1 tr=0 ts=68c01b92 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=5pqs-Pqnn3KeH4UlXPsA:9
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA4MDA2NiBTYWx0ZWRfX2ulzKoARz/xR
 YBU+NqZx6H9Px4Z1IbRcHuwradNZI7tpj8Jl+RQhRf9gAcljEI8cpxSGtPqVZIuFQVGuGB4Kevx
 wVF3yQAVMn6L8JP+AbYUtGIvVzSicV6vkl2t/KrKf3pl/W97pBZBXFRqtFPLD7pKOpKhHbafAaU
 rtJuh4O9uDHvV/pPs6ALjJPmQUsr4aHAfYeqbLthoksH7NP0KNLmwLSYS3CPIO9iUr/ac9Imdg4
 36X5VivFv7VMU1BQuyaPJdXGpbvDqrepLsIiYAkfiyz8tOnRswHQcMR3pb/71jJqmgKqJVq2ZfX
 tG14I0/dgI/CP8HXl5CoC6FOXXUHU13We8l0LM4cwSAGwjeZRYF/UiLmC2UYlazSWgp9Lm7q8k+
 Xnl/1RPk
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-09_01,2025-09-08_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 bulkscore=0 adultscore=0 suspectscore=0 phishscore=0
 clxscore=1015 impostorscore=0 spamscore=0 priorityscore=1501
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509080066

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


