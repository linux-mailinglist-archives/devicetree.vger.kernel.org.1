Return-Path: <devicetree+bounces-226887-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C128BDC7F3
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 06:39:14 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 7749F422F39
	for <lists+devicetree@lfdr.de>; Wed, 15 Oct 2025 04:39:08 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1FF861D47B4;
	Wed, 15 Oct 2025 04:38:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VkFsP/nO"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 745E62FABF7
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 04:38:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760503139; cv=none; b=tcxG4CfH6TTjGzX37iMjOsBbcZ7/4RWivTH41F0okEFxsYIUsw9umsR5C22SBNkSHzyG3WznDnk0e7Xcr3c/1n2ne3crFvchi6m0W302hL9t9F5rVWgNkKm/k54nwX3SLboFVty32qgUV7pq+udjs0Ju19GJBmUqtXtJr2zGLf4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760503139; c=relaxed/simple;
	bh=OtVs7gPtVXV3AbZFz+D50jHX3+pXlZ1jHuc0GH75ZNs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=biAT1wKh4SjdaLWZnuf/YTQk5pwK6iK93sOI2wwCNvnQZfTviola6aKGqrNer2YLMRk4DFUVcLAXT0ki/hYywVd34RjWOsFlSKmI3FduatB2NT/SYOKvkIjHYJ14GbFWeX+iNUTBuVj9/+HR2SNxmsfGG3vzTn4OhF0qbAEEcOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VkFsP/nO; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59F2sLBj003664
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 04:38:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	vmMn16oiZkqxnrWnAxeSCVdi+UZd2TgsHXVJWSGcec8=; b=VkFsP/nOeLYBwERT
	ne610HQ5VggqFib/N1P8hd1d9wrI5DgTEDcWdgNK43E4eolKC3mXSoogtsodCsWb
	DR8MiYuYH/rI0cIRGjaeOotlfyYcDm8RsThMO/hseX0Qn05VGHXb1tRsf2/fMaO1
	YEVs4AE7xYaj1vOwLZnoq/P16fDqkyR4APoTmMWBZkyoOMcxj/HB7f8h3L5XZBGb
	i0TcpG42K8pCdcJX7UvcVPr8Du/ZYNyL+FtDDtpprlOeRXJeDT7NJQ/Dt3emUim+
	kR36BIhupdWUNg8zNOgPFF8tRyZfCodU3+phx7Un/CDBCQUo8wuB8Ix43OW4RKJ2
	QDoxWg==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49qfd93489-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 04:38:56 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-b55735710f0so13501019a12.2
        for <devicetree@vger.kernel.org>; Tue, 14 Oct 2025 21:38:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760503135; x=1761107935;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=vmMn16oiZkqxnrWnAxeSCVdi+UZd2TgsHXVJWSGcec8=;
        b=FYGROyNTayuSSSN2WHeThIjBPV6lB12fQvMQIhDdikvFhp7r0w311ZJaUHW3UAdrOq
         03HPxAeWSRAzJI6Fo7Ur+psDQQZ/iW/sFjICz1tZWyRBjK/1JVH6pNWQ5uFvPPqRY81l
         p5KoVdOs5+xOqQ+hvgYWHLUARKv21Odpj726/5eVIsuhdc8ATQlrM9yMDjMcW7Vto91P
         EhT0XA4pMJ2OhdgGwi69rtZhhJEin2BsK9HMQtLDiWZxiXVEk87Od8VaygTIyPwWwH3K
         h+uq1ukOQvRl+V/VG35dkKklAzhtAQdORPIM5ByONjwf55OT2xfDgo3fIWkeSWCPia88
         x/jg==
X-Forwarded-Encrypted: i=1; AJvYcCU0YGNaUnUxUSgIt736as9Op2RG/JLjk1trX+qAuiKYnS0RlkohL7J2dTXMKjFXIRuTonMAFMhJAOXB@vger.kernel.org
X-Gm-Message-State: AOJu0YwzZpYux5OF4l0zS152NyV9ksj3UMEd6m8JRgIBAfa7wwSDimuo
	2CpV1QGpTaFNdyoGG+EvzZ1q090c3tN8Vsghl+6q6eLTV7WHLPmDOyPpsHNr6LKpGt0TOw0aKDx
	TQnV6eAx0jeGJF+ca4SpwI2j1KDp7Up9knQfxL95CAm/OJ9VDHVPk5j5O/XXU+dtq
X-Gm-Gg: ASbGnct/w2iGRsen0Ig2yuUoUkGi0gKwPHDWLs54SVKZDNOVAnfCDVhHxsJqnyc4HDf
	KtneV2VvaNZ1z8vh7rPFk53iTfshkbHPCoFdEbwlptqoxYLHtSxgmDluzhjsnUJcqSPouRiu0jn
	1k404PF0pxIpj7zJqxI3sSf7J7ly2a4z5iQZuCAiqY5TLw3JUXkTlQp7zVaFRAin2+cc+y7iSZ+
	s+youQ4ZsQ79ly0MVwxJVTnEK7TjNLfHnx69JtLeVK3rrXHsxpPzdAKH129vawmv92+DLo5rbR4
	6oUgwgVpBKJeMFrreNCh3gZeR5G3PwuUAbNTf4mt4ox2myaZGMHTtwQOLdWgfabY58LYmpfwW6X
	/
X-Received: by 2002:a05:6a20:2451:b0:24a:b9e:4a6c with SMTP id adf61e73a8af0-32da845e56amr36724194637.44.1760503135350;
        Tue, 14 Oct 2025 21:38:55 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGVKns+WH1b+2HA/4V6zn/xQ+uKFTYWlVwFA9Wwz9Isp6JLyOr3DJ9aSrokFcHMG4mh5b4zYA==
X-Received: by 2002:a05:6a20:2451:b0:24a:b9e:4a6c with SMTP id adf61e73a8af0-32da845e56amr36724136637.44.1760503134857;
        Tue, 14 Oct 2025 21:38:54 -0700 (PDT)
Received: from hu-spratap-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33b9787af5asm705406a91.20.2025.10.14.21.38.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Oct 2025 21:38:54 -0700 (PDT)
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
Date: Wed, 15 Oct 2025 10:08:17 +0530
Subject: [PATCH v16 02/14] power: reset: reboot-mode: Add device tree
 node-based registration
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251015-arm-psci-system_reset2-vendor-reboots-v16-2-b98aedaa23ee@oss.qualcomm.com>
References: <20251015-arm-psci-system_reset2-vendor-reboots-v16-0-b98aedaa23ee@oss.qualcomm.com>
In-Reply-To: <20251015-arm-psci-system_reset2-vendor-reboots-v16-0-b98aedaa23ee@oss.qualcomm.com>
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
        Florian Fainelli <florian.fainelli@broadcom.com>,
        Moritz Fischer <moritz.fischer@ettus.com>,
        John Stultz <john.stultz@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
Cc: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Andre Draszik <andre.draszik@linaro.org>,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org,
        Elliot Berman <quic_eberman@quicinc.com>,
        Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>,
        Srinivas Kandagatla <srini@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760503106; l=5376;
 i=shivendra.pratap@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=OtVs7gPtVXV3AbZFz+D50jHX3+pXlZ1jHuc0GH75ZNs=;
 b=v1Z3sIrJnp+p1vx3+/8x8RpA9Lq+vHLUyNUqpNTg4EMNZAbx7XlsBKBT/5Mtq2UMUUTEp50Z/
 SKgY5JUSTDCANcP1YLQ6KmboUnTGR08O6Jvbw1+3XoUPQESRgdw9tzn
X-Developer-Key: i=shivendra.pratap@oss.qualcomm.com; a=ed25519;
 pk=CpsuL7yZ8NReDPhGgq6Xn/SRoa59mAvzWOW0QZoo4gw=
X-Proofpoint-ORIG-GUID: UCQXQWPAw4AvBNhX0NrOOwxJskFHcKEM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDExMDAxOCBTYWx0ZWRfXwDuXtkZLtmUm
 isrfnmXjISTvLF5MY7VW5SeVuZK3XlGWb/8uyJ2VhHuPnwqznwvAFaxj7WbB9nXtKQfixchzv9S
 rAkb97ssXfVzmoSws+e2jc78ULReUHEzHCxsNTkcVvXhRzDXW0dtmlBaF7nOFFjBtILWZPur3bg
 PqbnMcrxg8gwDqds1AZW7gv1M/rF/9SWCcvFqgcgv29FLyQ8yenRRZsJw3csizqwQ/o/UzbJ0Rg
 /8Nfj0jQ1XyPzZDwPGDhpXd3V2aDjk2eWEV/YCK2bDsq6+RYZpOgziNNdATKbp5I/ViNG5urZzy
 +ClvyAAUV+uVzEP6tr4VWif4EOY29ym9x3nZf4HU9TnIYIcOBaGuy6vWCSBMBACqYOqoDUl+tKO
 Z0xrPRJcWuYiLKTY74Iw0Hc3tSJplg==
X-Proofpoint-GUID: UCQXQWPAw4AvBNhX0NrOOwxJskFHcKEM
X-Authority-Analysis: v=2.4 cv=PdTyRyhd c=1 sm=1 tr=0 ts=68ef2560 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=239sejjMsMoxT4pUUhgA:9 a=QEXdDO2ut3YA:10
 a=3WC7DwWrALyhR5TkjVHa:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-15_01,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 phishscore=0 bulkscore=0 clxscore=1015 adultscore=0
 lowpriorityscore=0 impostorscore=0 priorityscore=1501 spamscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510110018

The reboot-mode driver does not have a strict requirement for
device-based registration. It primarily uses the device's of_node
to read mode-<cmd> properties and the device pointer for logging.

Remove the dependency on struct device and introduce support for
firmware node (fwnode) based registration. This enables drivers
that are not associated with a struct device to leverage the
reboot-mode framework.

Signed-off-by: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
---
 drivers/power/reset/reboot-mode.c | 45 +++++++++++++++++++++++++++++----------
 include/linux/reboot-mode.h       |  3 ++-
 2 files changed, 36 insertions(+), 12 deletions(-)

diff --git a/drivers/power/reset/reboot-mode.c b/drivers/power/reset/reboot-mode.c
index 8fc3e14638ea757c8dc3808c240ff569cbd74786..c8f71e6f661ae14eb72bdcb1f412cd05faee3dd9 100644
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
 
@@ -69,17 +73,26 @@ static int reboot_mode_notify(struct notifier_block *this,
 /**
  * reboot_mode_register - register a reboot mode driver
  * @reboot: reboot mode driver
+ * @fwnode: Firmware node with reboot-mode configuration
  *
  * Returns: 0 on success or a negative error code on failure.
  */
-int reboot_mode_register(struct reboot_mode_driver *reboot)
+int reboot_mode_register(struct reboot_mode_driver *reboot, struct fwnode_handle *fwnode)
 {
 	struct mode_info *info;
+	struct mode_info *next;
+	struct device_node *np;
 	struct property *prop;
-	struct device_node *np = reboot->dev->of_node;
 	size_t len = strlen(PREFIX);
 	int ret;
 
+	if (!fwnode)
+		return -EINVAL;
+
+	np = to_of_node(fwnode);
+	if (!np)
+		return -EINVAL;
+
 	INIT_LIST_HEAD(&reboot->head);
 
 	mutex_init(&reboot->rb_lock);
@@ -89,28 +102,28 @@ int reboot_mode_register(struct reboot_mode_driver *reboot)
 			if (strncmp(prop->name, PREFIX, len))
 				continue;
 
-			info = devm_kzalloc(reboot->dev, sizeof(*info), GFP_KERNEL);
+			info = kzalloc(sizeof(*info), GFP_KERNEL);
 			if (!info) {
 				ret = -ENOMEM;
 				goto error;
 			}
 
 			if (of_property_read_u32(np, prop->name, &info->magic)) {
-				dev_err(reboot->dev, "reboot mode %s without magic number\n",
-					info->mode);
-				devm_kfree(reboot->dev, info);
+				pr_err("reboot mode %s without magic number\n", info->mode);
+				kfree(info);
 				continue;
 			}
 
 			info->mode = kstrdup_const(prop->name + len, GFP_KERNEL);
 			if (!info->mode) {
 				ret =  -ENOMEM;
+				kfree(info);
 				goto error;
 			} else if (info->mode[0] == '\0') {
 				kfree_const(info->mode);
+				kfree(info);
 				ret = -EINVAL;
-				dev_err(reboot->dev, "invalid mode name(%s): too short!\n",
-					prop->name);
+				pr_err("invalid mode name(%s): too short!\n", prop->name);
 				goto error;
 			}
 
@@ -123,8 +136,11 @@ int reboot_mode_register(struct reboot_mode_driver *reboot)
 		return 0;
 
 error:
-		list_for_each_entry(info, &reboot->head, list)
+		list_for_each_entry_safe(info, next, &reboot->head, list) {
+			list_del(&info->list);
 			kfree_const(info->mode);
+			kfree(info);
+		}
 	}
 
 	return ret;
@@ -138,12 +154,16 @@ EXPORT_SYMBOL_GPL(reboot_mode_register);
 int reboot_mode_unregister(struct reboot_mode_driver *reboot)
 {
 	struct mode_info *info;
+	struct mode_info *next;
 
 	unregister_reboot_notifier(&reboot->reboot_notifier);
 
 	scoped_guard(mutex, &reboot->rb_lock) {
-		list_for_each_entry(info, &reboot->head, list)
+		list_for_each_entry_safe(info, next, &reboot->head, list) {
+			list_del(&info->list);
 			kfree_const(info->mode);
+			kfree(info);
+		}
 	}
 
 	return 0;
@@ -168,11 +188,14 @@ int devm_reboot_mode_register(struct device *dev,
 	struct reboot_mode_driver **dr;
 	int rc;
 
+	if (!reboot->dev || !reboot->dev->of_node)
+		return -EINVAL;
+
 	dr = devres_alloc(devm_reboot_mode_release, sizeof(*dr), GFP_KERNEL);
 	if (!dr)
 		return -ENOMEM;
 
-	rc = reboot_mode_register(reboot);
+	rc = reboot_mode_register(reboot, of_fwnode_handle(reboot->dev->of_node));
 	if (rc) {
 		devres_free(dr);
 		return rc;
diff --git a/include/linux/reboot-mode.h b/include/linux/reboot-mode.h
index b73f80708197677db8dc2e43affc519782b7146e..7f05fd873e95ca8249bc167c21aa6b76faba7849 100644
--- a/include/linux/reboot-mode.h
+++ b/include/linux/reboot-mode.h
@@ -2,6 +2,7 @@
 #ifndef __REBOOT_MODE_H__
 #define __REBOOT_MODE_H__
 
+#include <linux/fwnode.h>
 #include <linux/mutex.h>
 
 struct reboot_mode_driver {
@@ -13,7 +14,7 @@ struct reboot_mode_driver {
 	struct mutex rb_lock;
 };
 
-int reboot_mode_register(struct reboot_mode_driver *reboot);
+int reboot_mode_register(struct reboot_mode_driver *reboot, struct fwnode_handle *fwnode);
 int reboot_mode_unregister(struct reboot_mode_driver *reboot);
 int devm_reboot_mode_register(struct device *dev,
 			      struct reboot_mode_driver *reboot);

-- 
2.34.1


