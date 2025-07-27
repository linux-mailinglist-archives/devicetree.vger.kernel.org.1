Return-Path: <devicetree+bounces-199987-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B63F7B13078
	for <lists+devicetree@lfdr.de>; Sun, 27 Jul 2025 18:26:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 11FF43BADA8
	for <lists+devicetree@lfdr.de>; Sun, 27 Jul 2025 16:25:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 40260221D92;
	Sun, 27 Jul 2025 16:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="J/BytHoo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9191321D3F0
	for <devicetree@vger.kernel.org>; Sun, 27 Jul 2025 16:25:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753633523; cv=none; b=nv/WsDl8t+c9GpL70Y9aMBqllIfFh+ZHSk7GoXq7WE5T6WB6k/iHGX6mNCyyq6uTfzOthvDNU6XF3pOqif75e4xo8IHEthdt8vgbMR/HWm4hdrLYgMUad5Xc4rWyRWBwTB9K9JnBAJK3yAvf2rg9lCPOHvJFtwqYxBhHRJQQ4nQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753633523; c=relaxed/simple;
	bh=BzWfToJE3ECxETuJZ3k/sBp7q/SRF/jEhj86+u2O1rk=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=BcqMqJah2e6pObMk+2/LPdW7BWn/QBlrvmzgKBWC00eYB2AMa+4aUeeLu+fKYqNE1z1xEY1JU4G7VLemO0/Tu7Hq6ZUubysdTSfIQLwXUL4wjb3LlUPnB/ySQY9r2kVwqWthTExG2FXUQPRh9S6INuWeY7kpdLbT465aT7cUnkA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=J/BytHoo; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56RFGJq6031342
	for <devicetree@vger.kernel.org>; Sun, 27 Jul 2025 16:25:20 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	FDqwUezYGa9CZCaFbdXED7PEdoZ055Cwe3xHxx1ns7M=; b=J/BytHoonSw9xSUD
	9FUMpWgPz9gK6FghJ2oSve9fB3dXPTaQWoIwi4uo+sq4SZJ8zkLcgZcJqKR2MIZK
	PMFc0ro77zh19a58xKnV9dWNpschQe5SynxvLExHlGci9PSPGhUhXlKdAonkUYwL
	cY1ZxMD2u24cA6asaUYxmijyNP0xbxl0ag4KDzhGREZRnwGyAbumFG3Oi0myZGJL
	+jV1aJlVeBkS3rEFK6ZiPQHk62sqlRXrVkz3ZaqZ4uEI4XAYtfiJc/DN9x4evNpe
	OBp5kPanJl9IgAUz30YYYOUj4YvA7rxOmj34vIEEyix2utgUcT8HT1g7Rvm/nfVJ
	+KWMlA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484mcr2jn2-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 27 Jul 2025 16:25:20 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2400b28296fso5599845ad.1
        for <devicetree@vger.kernel.org>; Sun, 27 Jul 2025 09:25:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753633519; x=1754238319;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FDqwUezYGa9CZCaFbdXED7PEdoZ055Cwe3xHxx1ns7M=;
        b=fy32YXnYoGHzom1ydA9rCnpAwDO+9mwQPB3Q8M42ovbutKjY3Z8Dic8sPG5sL7pW/2
         fDw/7rVfVOOjvVB5s6mQtlnYX+/li2hZNoa1RmVZEgC8FQQhmB8s9eTBcFY9AnAZcSMg
         NsH12/0rRvfylSTr3n7TzgcvDw/5caUrByRDHtZpxOMKa3z8lUZeIyxUD2EgcPSb0S+6
         JtG8SYY3U1arxJUP20K8g0zY5wUTd0KTml9iXmyVkeDejWGhFSSlvlYmaZRb/xabttEE
         ysqnW9G7FQqK9apmYjuDHqyAkaDUXvqyJhFuFl9mhefSW7Jrcx+uucQU8C0J30XEZTxH
         xFIw==
X-Forwarded-Encrypted: i=1; AJvYcCXL3GnH/kRAwiW0Aq27/B3ETrfHSDvuG5X1R1xhhWCLQkrZCa1s4JYWABn1PTtwCx0gIUlWESyqBtuL@vger.kernel.org
X-Gm-Message-State: AOJu0Yy0BMxl88rYmiyVSuR3jTnjKXDZSAr8AT5lIIMuNmf3OeJP3uI2
	nERPcrcFAb1o7dWLQs1kHyeYzziimhbYevgUHRnOJckm0bSI+2cFAYaV+vSLo626328Ic9K8PER
	iUxRFAM0Dz71A588RKnSwJyoQ04BEyoemvnMYcWAF4iHN7dSJ5mePX6myNjJKAXmm
X-Gm-Gg: ASbGncsyaI8vZQ9T50lABFwk//XjxCvjqEsXZeSxHjIHY/8+4OFx3grQ6UhYmYjd/vh
	2DCTa6szmp6mUSqRVo5/qd1HpmATvFuFns8SHBURLJpW53bCcrV0SsBznmxrNCrZsSZW4XIVhtV
	6UN5nIxR8yOGWoEE5XCsCTPDfOrXHm1MVkZkTRKVwuNWEAJ7XsWn9pNyK7hJGbDimQ3Z0fYmIFg
	y4Ou0rN84Mq5d6vTuIdRJLZmbH5sAe+PALpTIvm1QB2pJdwN4I4wLArZfHNa9KfgkRTyVcWSPTw
	ry1NenfsGuRYOa5V9a+HJXAT0+0iLh2Kud+kGLujrUoLvdINCNc+8HDvXsz/A3tuBIzga7lwoUa
	D
X-Received: by 2002:a17:902:c7cd:b0:23f:df36:5f0c with SMTP id d9443c01a7336-23fdf366308mr55454995ad.29.1753633518999;
        Sun, 27 Jul 2025 09:25:18 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IElN+SPhw8k792Rzn0TYr1j23uV/PBVvafh2zJyXG1hP+afi01ZKCrh30mmgw+pZFEK3C4rbw==
X-Received: by 2002:a17:902:c7cd:b0:23f:df36:5f0c with SMTP id d9443c01a7336-23fdf366308mr55454455ad.29.1753633518447;
        Sun, 27 Jul 2025 09:25:18 -0700 (PDT)
Received: from hu-spratap-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23fd9397ebbsm29110325ad.210.2025.07.27.09.25.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Jul 2025 09:25:18 -0700 (PDT)
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
Date: Sun, 27 Jul 2025 21:54:45 +0530
Subject: [PATCH v13 02/10] power: reset: reboot-mode: Add device tree
 node-based registration
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250727-arm-psci-system_reset2-vendor-reboots-v13-2-6b8d23315898@oss.qualcomm.com>
References: <20250727-arm-psci-system_reset2-vendor-reboots-v13-0-6b8d23315898@oss.qualcomm.com>
In-Reply-To: <20250727-arm-psci-system_reset2-vendor-reboots-v13-0-6b8d23315898@oss.qualcomm.com>
To: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Souvik Chakravarty <Souvik.Chakravarty@arm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Andy Yan <andy.yan@rock-chips.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Arnd Bergmann <arnd@arndb.de>, Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Vinod Koul <vkoul@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Florian Fainelli <florian.fainelli@broadcom.com>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Andre Draszik <andre.draszik@linaro.org>, linux-pm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        Elliot Berman <quic_eberman@quicinc.com>,
        Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>,
        Srinivas Kandagatla <srini@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1753633495; l=4877;
 i=shivendra.pratap@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=BzWfToJE3ECxETuJZ3k/sBp7q/SRF/jEhj86+u2O1rk=;
 b=GE6STsqGX975fKj8Z1KrwsY62SN2T3Ty4HgdyhnwjO42V4WyuNyRkjHVvNq3UY4UsFHB+HdQi
 rEVqNY7DrZ5AQkVVZqOBQUd4giAmSraiKzKugXbVhvKrIpJAQNPgyan
X-Developer-Key: i=shivendra.pratap@oss.qualcomm.com; a=ed25519;
 pk=CpsuL7yZ8NReDPhGgq6Xn/SRoa59mAvzWOW0QZoo4gw=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI3MDE0NCBTYWx0ZWRfXwf1SYJErU26z
 kyxCUXyccXwwQIhws6BaUxxy+W6S1itZcfERzAgnBmKJ75jR09QCMXlnTjcA63MhH0ZyvOukA3n
 uhz0/2OL40EsjZF9UQqIrVPyfwb+kKA1GQbP5mesoYgIxVoFfDnZyFX46HB1EGvMpK9iCV8UISb
 GcS/Ho7DREOZpkPdwhKeFCFcLrxwG9VwjVDv+Hsa5wYHk1QuQA4ZgrnaLHeuIT/chqacvR4947D
 ERI8zikkbCgmB36wN3J0jwQqstxRz9iKRFYNArQR1+jJ7qn/sRhV4g6IubzaVcyCazv8AfC6gav
 sz9rjj4y7eTQ+Bl21S/22xjQ5vh7qmGrf1TIpc+L0ZbQQYgx0LtmC3b5VvwI2FvIOJOECCa8Zc7
 k/ywSjcql7agphgC9uTRfMzTZOPlk0mYClMWChy+06fT9bjRVNmPHoMcg7ZJuTQcBt7WiDFr
X-Authority-Analysis: v=2.4 cv=Hth2G1TS c=1 sm=1 tr=0 ts=688652f0 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=IcmTHOqSNbDvJ54L4SUA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: xdQIV1SnDe3ATfbGNDPoU37-RLVtCpY2
X-Proofpoint-ORIG-GUID: xdQIV1SnDe3ATfbGNDPoU37-RLVtCpY2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-27_05,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 phishscore=0 mlxscore=0 priorityscore=1501 impostorscore=0
 lowpriorityscore=0 adultscore=0 malwarescore=0 mlxlogscore=999 clxscore=1015
 spamscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507270144

The reboot-mode driver does not have a strict requirement for
device-based registration. It primarily uses the device's of_node
to read mode-<cmd> properties and the device pointer for logging.

Remove the dependency on struct device and introduce support for
Device Tree (DT) node-based registration. This enables drivers
that are not associated with a struct device to leverage the
reboot-mode framework.

Signed-off-by: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
---
 drivers/power/reset/reboot-mode.c | 37 ++++++++++++++++++++++++++-----------
 include/linux/reboot-mode.h       |  2 +-
 2 files changed, 27 insertions(+), 12 deletions(-)

diff --git a/drivers/power/reset/reboot-mode.c b/drivers/power/reset/reboot-mode.c
index 42bb99128ed3846d4bff62416dc31135ddeaeb90..9bb97bcd33cd3d58c75c791e9b568024e810e5b0 100644
--- a/drivers/power/reset/reboot-mode.c
+++ b/drivers/power/reset/reboot-mode.c
@@ -3,13 +3,17 @@
  * Copyright (c) 2016, Fuzhou Rockchip Electronics Co., Ltd
  */
 
+#define pr_fmt(fmt)	"reboot-mode: " fmt
+
 #include <linux/device.h>
 #include <linux/init.h>
 #include <linux/kernel.h>
+#include <linux/list.h>
 #include <linux/module.h>
 #include <linux/of.h>
 #include <linux/reboot.h>
 #include <linux/reboot-mode.h>
+#include <linux/slab.h>
 
 #define PREFIX "mode-"
 
@@ -75,17 +79,21 @@ static int reboot_mode_notify(struct notifier_block *this,
 /**
  * reboot_mode_register - register a reboot mode driver
  * @reboot: reboot mode driver
+ * @np: Pointer to device tree node
  *
  * Returns: 0 on success or a negative error code on failure.
  */
-int reboot_mode_register(struct reboot_mode_driver *reboot)
+int reboot_mode_register(struct reboot_mode_driver *reboot, struct device_node *np)
 {
 	struct mode_info *info;
+	struct mode_info *next;
 	struct property *prop;
-	struct device_node *np = reboot->dev->of_node;
 	size_t len = strlen(PREFIX);
 	int ret;
 
+	if (!np)
+		return -EINVAL;
+
 	INIT_LIST_HEAD(&reboot->head);
 	mutex_init(&reboot->rb_lock);
 
@@ -94,28 +102,28 @@ int reboot_mode_register(struct reboot_mode_driver *reboot)
 		if (strncmp(prop->name, PREFIX, len))
 			continue;
 
-		info = devm_kzalloc(reboot->dev, sizeof(*info), GFP_KERNEL);
+		info = kzalloc(sizeof(*info), GFP_KERNEL);
 		if (!info) {
 			ret = -ENOMEM;
 			goto error;
 		}
 
 		if (of_property_read_u32(np, prop->name, &info->magic)) {
-			dev_err(reboot->dev, "reboot mode %s without magic number\n",
-				info->mode);
-			devm_kfree(reboot->dev, info);
+			pr_err("reboot mode %s without magic number\n", info->mode);
+			kfree(info);
 			continue;
 		}
 
 		info->mode = kstrdup_const(prop->name + len, GFP_KERNEL);
 		if (!info->mode) {
 			ret =  -ENOMEM;
+			kfree(info);
 			goto error;
 		} else if (info->mode[0] == '\0') {
 			kfree_const(info->mode);
+			kfree(info);
 			ret = -EINVAL;
-			dev_err(reboot->dev, "invalid mode name(%s): too short!\n",
-				prop->name);
+			pr_err("invalid mode name(%s): too short!\n", prop->name);
 			goto error;
 		}
 
@@ -129,8 +137,11 @@ int reboot_mode_register(struct reboot_mode_driver *reboot)
 	return 0;
 
 error:
-	list_for_each_entry(info, &reboot->head, list)
+	list_for_each_entry_safe(info, next, &reboot->head, list) {
+		list_del(&info->list);
 		kfree_const(info->mode);
+		kfree(info);
+	}
 
 	mutex_unlock(&reboot->rb_lock);
 	return ret;
@@ -144,12 +155,16 @@ EXPORT_SYMBOL_GPL(reboot_mode_register);
 int reboot_mode_unregister(struct reboot_mode_driver *reboot)
 {
 	struct mode_info *info;
+	struct mode_info *next;
 
 	unregister_reboot_notifier(&reboot->reboot_notifier);
 
 	mutex_lock(&reboot->rb_lock);
-	list_for_each_entry(info, &reboot->head, list)
+	list_for_each_entry_safe(info, next, &reboot->head, list) {
+		list_del(&info->list);
 		kfree_const(info->mode);
+		kfree(info);
+	}
 	mutex_unlock(&reboot->rb_lock);
 
 	return 0;
@@ -178,7 +193,7 @@ int devm_reboot_mode_register(struct device *dev,
 	if (!dr)
 		return -ENOMEM;
 
-	rc = reboot_mode_register(reboot);
+	rc = reboot_mode_register(reboot, reboot->dev->of_node);
 	if (rc) {
 		devres_free(dr);
 		return rc;
diff --git a/include/linux/reboot-mode.h b/include/linux/reboot-mode.h
index b73f80708197677db8dc2e43affc519782b7146e..98f68f95c9e8460be23282c51ef7fcbed73887bd 100644
--- a/include/linux/reboot-mode.h
+++ b/include/linux/reboot-mode.h
@@ -13,7 +13,7 @@ struct reboot_mode_driver {
 	struct mutex rb_lock;
 };
 
-int reboot_mode_register(struct reboot_mode_driver *reboot);
+int reboot_mode_register(struct reboot_mode_driver *reboot, struct device_node *np);
 int reboot_mode_unregister(struct reboot_mode_driver *reboot);
 int devm_reboot_mode_register(struct device *dev,
 			      struct reboot_mode_driver *reboot);

-- 
2.34.1


