Return-Path: <devicetree+bounces-214916-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 161C6B4FA99
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 14:20:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AB9F0344580
	for <lists+devicetree@lfdr.de>; Tue,  9 Sep 2025 12:20:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7C42C3376B2;
	Tue,  9 Sep 2025 12:20:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VFM/HQRW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BA01B3375D9
	for <devicetree@vger.kernel.org>; Tue,  9 Sep 2025 12:20:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757420426; cv=none; b=KscT+U21z1jfdJr9pRHdpJD7NUYG3CG4olj4i+4w1H1mIxCZjcpuOubeg1sOIhwwK9nX1P2e2ATAzuXP6cdBRmiC44aTkxajcwLP+troX/gwQtPKf9prMQ4xLD6f2ClO+Vl9+cgbLhNrWAyJWQ41rYw0i3dDmQp/plhmdHB2Ewo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757420426; c=relaxed/simple;
	bh=PhB2wEGrckuh+HShGhmgklly6y1CfiMHr/vjqDHdiKM=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GojKymEZHWOMZq+1PwUrfnh/VwbtXGfRU6m+FK+6+6DQdggMoxn0sgiIwvaW8HgbxVrzdvzPKB0vc/G/tUzzbGkbLgjiKO/EUinuEGW4keFkPRDHRtSuJGuu9jtwCu357oUKz0LPdeJG119Z4d/teAEkxqPJDFq5dgA63Qi6jWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VFM/HQRW; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 5899Ldts031614
	for <devicetree@vger.kernel.org>; Tue, 9 Sep 2025 12:20:24 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=ZHK+TaiHSdo
	0i2W1eF6c5y+ExVot/td708SwKzVcklc=; b=VFM/HQRWMGJdywAHGJTpi37ZUr9
	6meXcoZgtWvYwi5ck7swsNxf3AZaVugO3EHoFlgoGv/iM+DOWME9hCPZRXSg2gl9
	O1hDLDNxGw2WrTh5oRZUtL3TCAkyOd5ZfNLGjjyVidyDEpIDvzBzkriKOQxK5IL9
	rsSoYGuel9Y+UpRJ6DGJGDNNiSTj6szr08lHgIVSybEjdf8jd9bSou+T+w7lDprB
	sda2DiMeYnfnQzhV0Xczt01kzbqLH8LT3eH3yXKYhcWIW0IXz2QT0HX1V7WPyfLs
	GUJPLwC8I7qIjnAGkVc8p8qxRHIP+jSuImfFy0/ShOxc/4Vfc7fjA7cm1dg==
Received: from mail-qt1-f199.google.com (mail-qt1-f199.google.com [209.85.160.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 490bws890w-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 12:20:23 +0000 (GMT)
Received: by mail-qt1-f199.google.com with SMTP id d75a77b69052e-4b49666c8b8so119398011cf.3
        for <devicetree@vger.kernel.org>; Tue, 09 Sep 2025 05:20:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757420422; x=1758025222;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZHK+TaiHSdo0i2W1eF6c5y+ExVot/td708SwKzVcklc=;
        b=DBurfwkMsbHOQmsXf6vjJkxZ8KwGHUbjW1/9uoHtmY0OdRbrPGaiBjY20f0Bci6mxn
         nmdBm3tXAFOyTDKeNfFaWW+hg2ku185DAIgLevd2I5/FADpAYzUT1FCFmyXDs0XMjSVM
         0o0AirN1o2d/NWpj/TVgHhpLZNpjgwxNPx7FYzXnf/NOhmu4WXbayv7e1bLN1eW0CpIi
         ifXVTNo37laJjy73NIB0aLhfnD5x5DPNl8FNV4xrMIX9VHmUmXBjHksndxw/fJg2lIEL
         cikHZZHnS9PFVfRvGAiUZGt1c+LId3Y1R6WQ5UQkJAedRgIsyy+sj2ZfQz1Aen2Hc9a+
         /LhQ==
X-Forwarded-Encrypted: i=1; AJvYcCUGWbKcnoIztNCX0WzRHvS+jPXDBjBc3bNu6HDFo8ju1c0gGmN7EfaJzgGZ+U9u2WeNxWl2kCBdLjZq@vger.kernel.org
X-Gm-Message-State: AOJu0YyPhxZaadtzn4PriNHu0t0K4r+rd/kxHDX9iDWkENfPqQLAw+Ki
	o0UpkFxzzNarNviLim8AYOGawVryhZGxHUt7wdQGqt4l+dloHt2F8ILk56WWLkOwfB/pwmVaOPc
	ghxTZk4F4VP4WAIGWBeJM4VYwr2fBa9e1y90RoilTdGuWjWXciTCaIHqU3D3x9KqM+L5jXZMW
X-Gm-Gg: ASbGncu7ihbNn/VTvHVzMFola0IZX1HzMKVNhdxLqeeIBM2rwr+lqeBeH528YRWA8zY
	zcFq5mNo7/karxEE4ZWkDH/rVAKODf7K6ULwhUEGqhGLCd+ZHl22PjPvoNUpUqeeiQLUKncTkoF
	eDNi/+ImdFgbNANV7z2UURw75NbGglsV7OE3hk1MnVPefCxzPS5OW39HxuEa4dG7CRz0PWPTGPd
	BZ22JqOSwYsaxxiR8kogZHa76RDEAbCuwCE7unnXbzDEiaZCGAgGb0PSoKUJZY6yHG7vZjCYCSp
	nHGcFSHji/t/bQ2Z6AnQTq0meU0XXoob2yKLAN1YKy7Swc9DhUVMZg==
X-Received: by 2002:a05:622a:1207:b0:4b5:e344:2238 with SMTP id d75a77b69052e-4b5f84854a5mr122850991cf.66.1757420420937;
        Tue, 09 Sep 2025 05:20:20 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGMoY0xoETxBaCFi7Ptq14Jrth0iFyOEnu4PH9NM0c/GGJJIt5VqKgJPg30ywYGkxPCWm/D3w==
X-Received: by 2002:a05:622a:1207:b0:4b5:e344:2238 with SMTP id d75a77b69052e-4b5f84854a5mr122850571cf.66.1757420420197;
        Tue, 09 Sep 2025 05:20:20 -0700 (PDT)
Received: from debian ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3e75224db20sm2414629f8f.60.2025.09.09.05.20.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Sep 2025 05:20:19 -0700 (PDT)
From: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
To: broonie@kernel.org
Cc: lgirdwood@gmail.com, tiwai@suse.com, vkoul@kernel.org, srini@kernel.org,
        yung-chuan.liao@linux.intel.com, pierre-louis.bossart@linux.dev,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, linux-sound@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Subject: [PATCH v5 03/13] soundwire: bus: add of_sdw_find_device_by_node helper
Date: Tue,  9 Sep 2025 13:19:44 +0100
Message-ID: <20250909121954.225833-4-srinivas.kandagatla@oss.qualcomm.com>
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
X-Proofpoint-ORIG-GUID: TiHQEcgCQy4P7OxL2GyyjfUo3VsFgNdM
X-Proofpoint-GUID: TiHQEcgCQy4P7OxL2GyyjfUo3VsFgNdM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTA2MDAxOCBTYWx0ZWRfX27AdrAIu0EDP
 9veeMu/9TlfiGI/mpcPN+k4FNdymz/cPV5CcfC0nDTQ9hZaQmFQKlbcZLAAF3sAbX4J3Br+4MPy
 oNelCajmzc4KbyHCoi0jzO1egSUxxSs/FJlQ8qz0+IRkbr3mtaqMcuec9D7B+z75fjtLE6rnYLs
 SO3RTA2B6DEC2Iyze+BKxgWJtHae4Fx0JNpphPX50OHoZ4q2lC0VvJdy7at0uaBYRsHMlK2OGGu
 ZzTKUotLZ6jStjpRGCSwdylN5qlSnzKqY16oekgF7VMfyvvvqBLNjB5qSmiaUrDZywpBj4g3ui9
 lyJ5dZhaCccunI9l7PZ0+YWiL51qb1LCniLnPth870vVze0xenjxPBNRfSx135sV3CqRMCfoqSz
 wZo1p0ub
X-Authority-Analysis: v=2.4 cv=G4kcE8k5 c=1 sm=1 tr=0 ts=68c01b87 cx=c_pps
 a=WeENfcodrlLV9YRTxbY/uA==:117 a=ZsC4DHZuhs/kKio7QBcDoQ==:17
 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8 a=Ogeiovxhkh_6Bnox_XcA:9
 a=kacYvNCVWA4VmyqE58fU:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-09_01,2025-09-08_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 bulkscore=0 suspectscore=0 clxscore=1015
 malwarescore=0 adultscore=0 impostorscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509060018

There has been more than 3 instances of this helper in multiple codec
drivers, it does not make sense to keep duplicating this part of code.

Lets add a helper of_sdw_find_device_by_node for codec drivers to use it.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Acked-by: Vinod Koul <vkoul@kernel.org>
---
 drivers/soundwire/slave.c     | 6 ++++++
 include/linux/soundwire/sdw.h | 9 +++++++++
 2 files changed, 15 insertions(+)

diff --git a/drivers/soundwire/slave.c b/drivers/soundwire/slave.c
index d2d99555ec5a..3d4d00188c26 100644
--- a/drivers/soundwire/slave.c
+++ b/drivers/soundwire/slave.c
@@ -273,4 +273,10 @@ int sdw_of_find_slaves(struct sdw_bus *bus)
 	return 0;
 }
 
+struct device *of_sdw_find_device_by_node(struct device_node *np)
+{
+	return bus_find_device_by_of_node(&sdw_bus_type, np);
+}
+EXPORT_SYMBOL_GPL(of_sdw_find_device_by_node);
+
 MODULE_IMPORT_NS("SND_SOC_SDCA");
diff --git a/include/linux/soundwire/sdw.h b/include/linux/soundwire/sdw.h
index 0832776262ac..096213956d31 100644
--- a/include/linux/soundwire/sdw.h
+++ b/include/linux/soundwire/sdw.h
@@ -19,6 +19,7 @@
 
 struct dentry;
 struct fwnode_handle;
+struct device_node;
 
 struct sdw_bus;
 struct sdw_slave;
@@ -1086,6 +1087,8 @@ int sdw_stream_add_slave(struct sdw_slave *slave,
 int sdw_stream_remove_slave(struct sdw_slave *slave,
 			    struct sdw_stream_runtime *stream);
 
+struct device *of_sdw_find_device_by_node(struct device_node *np);
+
 int sdw_slave_get_scale_index(struct sdw_slave *slave, u8 *base);
 
 /* messaging and data APIs */
@@ -1119,6 +1122,12 @@ static inline int sdw_stream_remove_slave(struct sdw_slave *slave,
 	return -EINVAL;
 }
 
+static inline struct device *of_sdw_find_device_by_node(struct device_node *np)
+{
+	WARN_ONCE(1, "SoundWire API is disabled");
+	return NULL;
+}
+
 /* messaging and data APIs */
 static inline int sdw_read(struct sdw_slave *slave, u32 addr)
 {
-- 
2.50.0


