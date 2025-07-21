Return-Path: <devicetree+bounces-198397-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id B4E22B0CA7B
	for <lists+devicetree@lfdr.de>; Mon, 21 Jul 2025 20:29:55 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 0991E4E601E
	for <lists+devicetree@lfdr.de>; Mon, 21 Jul 2025 18:29:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EF40B2E3385;
	Mon, 21 Jul 2025 18:29:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="iaLj7WZq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0A352E2659
	for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 18:29:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753122568; cv=none; b=QLTDbTFE1oC2MLeQBh3LnAh0xvoep35Lqm0M++WbE4Xh2PfbW6/Vp+mYYWKbViHtNioL/LdQmW2sZxJ1Zo2zr/XaO18T0VJ7P6PLSsuayoaagrxU/bm7IxqQiY9330Fy45IKYWrcx9bwuUVAVdusyyQ+GCNA9D0T/KKKfBXnT3o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753122568; c=relaxed/simple;
	bh=DBN6sGXRUVDpd7vqCXSG71Zl1opGNwqmNgNJo0YmBCw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MgMu7UquNsmncPobmX1vgvUAy0WT5hRW7RqCd+HorN8LrSZHYptd0+2IOtSHluKLqa7OOTraK7CqrxhCdKNIJ2n/ECQMZOQE5/BJYqH5DEl15kqKNSdp7rJWlWdSb2IZxzFLibL35ETULXF/MqNozFdQArdiU1fXTdO2Tg0CbjQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=iaLj7WZq; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56LEf4rY012705
	for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 18:29:25 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	12+JhUW7UCD4bGTJEyOuS62N8dw9v5aLX1IdtuqMxic=; b=iaLj7WZqcuEZrYAP
	gP3J2/3cfqhfT9rP/S1IxIZZi4HcSR4xvtBYn4t8J0jgP0EDzFlOeRwS3qWdKW09
	eYSNoSM88tHsZtx5Cp0/pm9/eWZtPs87iIo8atfc7AdoPwuU2/koSGUgzoreyor/
	/OiqNdyKJ4Sp8CG8s614/yK6qQVNrCmcnrrc2VumaxewG+Iz6V/7MwKXAmS9wjF8
	vA5bT3KirgfK8FURcMify03vG+6sN8Kw3k4Yd/eL8X87Lyy7R3Zn5mIPkso7hxdf
	/8ut3G8RUa2RsTA8nEkOx0eJTwtn+19Gd6OkYUeimOE/o7rz8pxEsvKVUOVL4knA
	LglsoQ==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 481qh6h4f4-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 18:29:24 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b3f33295703so3678278a12.1
        for <devicetree@vger.kernel.org>; Mon, 21 Jul 2025 11:29:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753122563; x=1753727363;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=12+JhUW7UCD4bGTJEyOuS62N8dw9v5aLX1IdtuqMxic=;
        b=MkOWEttq1uh+D1Y2jfIbMVybB5iG1OJtgswKLLEM1k6qsAbxMoqOzGZptbRfDHQuCc
         jft+M5ptyb7dE/d2/lNgwkTJuEfo+wcUpEUUXxRVCzkyBdOZGAsPr1tcfBWV/7pRrJ+z
         VNYCPZGm2i8i2bMdGEE6VpHM083Y8SH0OKYMz5BeVsUEFbe/mweNEFO6IC1RUJDP6VV4
         wlQ7UzduifAj/PDhT/s6XJGSgUdWR8Ym4OvyX1d9O/tcGvTf9RWSq6JMPabE2l+cLy5s
         eHdmlERniWueUomIlMhg/7MziCvdNJzq0+IE9kHIvOP3uENpW0glFjq7POzjfSw33b/D
         ImXw==
X-Forwarded-Encrypted: i=1; AJvYcCVx5Qm3tPUFlt981JSHUm4C5oEh/SeFiisGhhV33U1BEYOgQsxylE7BPyYwBqiugVlJvosdgkyPA+Fl@vger.kernel.org
X-Gm-Message-State: AOJu0Yx3Rk9fBzAE/BGk6DOGh9vkQA/4WHwuIqEdpOdz+two5uiasGx1
	HfOAMcR4QN8vnZZglwZsoq01XcWnsRf4xcLP0NjlGK+WjdQCurenF+XsdltfJzWw+QPeSAXEdkj
	OZNEsjhxarzaR4eTSdcOBI8D/gyuxoZfdBFxjcqZh0hgvCdf2iMg392yK8gG9dxNv
X-Gm-Gg: ASbGnctN6NV+sW2BqodKUsWRwv4I9yI/amodmSzrajeLGgYzYbm4tSh5CHes1qPDNyQ
	7sHXYxutypN+8CYRrhseALxJVz8YtUg02OMFWbSI8iuGw+2XGMSbIgAAxlCfQNqs8xh4s64Gbqp
	QQOtB1bYg8CdXO1LRM0f8N2GHVztL1NdcoMMgmBCIFUZxRaO4rZbF8RrEXFGG7umlEqkWPuA7Q3
	5c+lOb6arp0ncsIzGlLBCKaij5nQX4DBFvW29fFcxZ8ExwuFtQUUTnPcYyt1GK4A+J5+djeIGCQ
	VJLkau9S62+vRdxNeomvcmVaLxL2bdnZljfCiC/Kz5Y4mBYyNagd5MZyFN8+/CWkVb+FXURX/Yv
	d
X-Received: by 2002:a17:902:e848:b0:23d:d348:4567 with SMTP id d9443c01a7336-23e302bed21mr232781075ad.19.1753122562753;
        Mon, 21 Jul 2025 11:29:22 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFdol/SpmgrRISFDHgOMwYJFgwvsPFVeex1hB/4yuIO2bTcUrO01dBTuiyWXMA2+1WINN2eUA==
X-Received: by 2002:a17:902:e848:b0:23d:d348:4567 with SMTP id d9443c01a7336-23e302bed21mr232780645ad.19.1753122562167;
        Mon, 21 Jul 2025 11:29:22 -0700 (PDT)
Received: from hu-spratap-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23e3b6ef4b8sm61414545ad.194.2025.07.21.11.29.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Jul 2025 11:29:21 -0700 (PDT)
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
Date: Mon, 21 Jul 2025 23:58:49 +0530
Subject: [PATCH v12 2/8] power: reset: reboot-mode: Add support for 64 bit
 magic
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250721-arm-psci-system_reset2-vendor-reboots-v12-2-87bac3ec422e@oss.qualcomm.com>
References: <20250721-arm-psci-system_reset2-vendor-reboots-v12-0-87bac3ec422e@oss.qualcomm.com>
In-Reply-To: <20250721-arm-psci-system_reset2-vendor-reboots-v12-0-87bac3ec422e@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1753122539; l=6942;
 i=shivendra.pratap@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=DBN6sGXRUVDpd7vqCXSG71Zl1opGNwqmNgNJo0YmBCw=;
 b=uthIovqgz1rMdV4O6xqp1c1Lo2davyxxmHP0SgklsKRbeQH8BbaMQebhR1bZ4i5Nf/1G5rwvl
 iPXmBxueTjHATm68va0+MbN1O3gmpMrXn/u2oHEr2IYgJbFrkBz7krn
X-Developer-Key: i=shivendra.pratap@oss.qualcomm.com; a=ed25519;
 pk=CpsuL7yZ8NReDPhGgq6Xn/SRoa59mAvzWOW0QZoo4gw=
X-Authority-Analysis: v=2.4 cv=CZ4I5Krl c=1 sm=1 tr=0 ts=687e8704 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=bqVjg2-MoX4cBg1ZSeQA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-ORIG-GUID: boxJm1FbOhRVmNavFJC-FDGt1TraKODc
X-Proofpoint-GUID: boxJm1FbOhRVmNavFJC-FDGt1TraKODc
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzIxMDE2NCBTYWx0ZWRfX20eOLXrO+e17
 weYeAgKp+GspIkh7ZtWnYUA8tyAUeVJS+vEuqvLuIIDIdcw3kJNLEnh4I1kng5o79NzwHtoEtoQ
 2ceZjzE1BLlfz4Eoe89UweG+AOiGLuhOm9qtQE8gnQXI9AlV3F8k9SVrrfttwyv6m9Ssnc2Y/Sl
 32+T2PxdI12cvctiDcoycvRj48YzEN01LhxLksXTiJTXZ2iarAabl9TrQiDu+uaF5N0qxmdrqcB
 RKXFXdZrrp4SLb4bk/QBMuYjWXsyS8G9/cw6+CNEl/L54W/pMt7FMVUWEyLKFxLkmfa0vYokVIg
 DpqLVsmuO4w90fxOHZgLLlKdPH9M8NATyFhCKD9jxmGNyhzQvkHZ/i+Y8Cz46pOQ66O2k8UKZpO
 VQ/feZw+4XJgpCrKUeCjHczAYhKVpKVG2tlhbrc8TdjUiOcKlQHDDFIurnW9SkFFInNVRuZY
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-21_05,2025-07-21_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 suspectscore=0 mlxlogscore=999 impostorscore=0
 clxscore=1015 mlxscore=0 lowpriorityscore=0 phishscore=0 adultscore=0
 bulkscore=0 spamscore=0 malwarescore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507210164

Current reboot-mode supports a single 32-bit argument for any
supported mode. Some reboot-mode based drivers may require
passing two independent 32-bit arguments during a reboot
sequence, for uses-cases, where a mode requires an additional
argument. Such drivers may not be able to use the reboot-mode
driver. For example, ARM PSCI vendor-specific resets, need two
arguments for its operation – reset_type and cookie, to complete
the reset operation. If a driver wants to implement this
firmware-based reset, it cannot use reboot-mode framework.

Introduce 64-bit magic values in reboot-mode driver to
accommodate dual 32-bit arguments when specified via device tree.
In cases, where no second argument is passed from device tree,
keep the upper 32-bit of magic un-changed(0) to maintain backward
compatibility.

Update the current drivers using reboot-mode for a 64-bit magic
value.

Signed-off-by: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
---
 drivers/power/reset/nvmem-reboot-mode.c  | 13 +++++++++----
 drivers/power/reset/qcom-pon.c           | 11 ++++++++---
 drivers/power/reset/reboot-mode.c        | 19 +++++++++++++------
 drivers/power/reset/syscon-reboot-mode.c | 11 ++++++++---
 include/linux/reboot-mode.h              |  3 ++-
 5 files changed, 40 insertions(+), 17 deletions(-)

diff --git a/drivers/power/reset/nvmem-reboot-mode.c b/drivers/power/reset/nvmem-reboot-mode.c
index 41530b70cfc48c2a83fbbd96f523d5816960a0d1..5d73dde585b1fd438b1847f884feb37cd9e4dd5c 100644
--- a/drivers/power/reset/nvmem-reboot-mode.c
+++ b/drivers/power/reset/nvmem-reboot-mode.c
@@ -16,15 +16,20 @@ struct nvmem_reboot_mode {
 	struct nvmem_cell *cell;
 };
 
-static int nvmem_reboot_mode_write(struct reboot_mode_driver *reboot,
-				    unsigned int magic)
+static int nvmem_reboot_mode_write(struct reboot_mode_driver *reboot, u64 magic)
 {
-	int ret;
 	struct nvmem_reboot_mode *nvmem_rbm;
+	u32 magic_32;
+	int ret;
+
+	if (magic > U32_MAX)
+		return -EINVAL;
+
+	magic_32 = magic;
 
 	nvmem_rbm = container_of(reboot, struct nvmem_reboot_mode, reboot);
 
-	ret = nvmem_cell_write(nvmem_rbm->cell, &magic, sizeof(magic));
+	ret = nvmem_cell_write(nvmem_rbm->cell, &magic_32, sizeof(magic_32));
 	if (ret < 0)
 		dev_err(reboot->dev, "update reboot mode bits failed\n");
 
diff --git a/drivers/power/reset/qcom-pon.c b/drivers/power/reset/qcom-pon.c
index 7e108982a582e8243c5c806bd4a793646b87189f..d0ed9431a02313a7bbaa93743c16fa1ae713ddfe 100644
--- a/drivers/power/reset/qcom-pon.c
+++ b/drivers/power/reset/qcom-pon.c
@@ -27,17 +27,22 @@ struct qcom_pon {
 	long reason_shift;
 };
 
-static int qcom_pon_reboot_mode_write(struct reboot_mode_driver *reboot,
-				    unsigned int magic)
+static int qcom_pon_reboot_mode_write(struct reboot_mode_driver *reboot, u64 magic)
 {
 	struct qcom_pon *pon = container_of
 			(reboot, struct qcom_pon, reboot_mode);
+	u32 magic_32;
 	int ret;
 
+	if (magic > U32_MAX || (magic << pon->reason_shift) > U32_MAX)
+		return -EINVAL;
+
+	magic_32 = magic << pon->reason_shift;
+
 	ret = regmap_update_bits(pon->regmap,
 				 pon->baseaddr + PON_SOFT_RB_SPARE,
 				 GENMASK(7, pon->reason_shift),
-				 magic << pon->reason_shift);
+				 magic_32);
 	if (ret < 0)
 		dev_err(pon->dev, "update reboot mode bits failed\n");
 
diff --git a/drivers/power/reset/reboot-mode.c b/drivers/power/reset/reboot-mode.c
index 5dd3f06ca88cb28606d9fd2100ce03383c14d215..a17851a303171fd04a47e240f80687541cc85a24 100644
--- a/drivers/power/reset/reboot-mode.c
+++ b/drivers/power/reset/reboot-mode.c
@@ -19,12 +19,11 @@
 
 struct mode_info {
 	const char *mode;
-	u32 magic;
+	u64 magic;
 	struct list_head list;
 };
 
-static unsigned int get_reboot_mode_magic(struct reboot_mode_driver *reboot,
-					  const char *cmd)
+static u64 get_reboot_mode_magic(struct reboot_mode_driver *reboot, const char *cmd)
 {
 	const char *normal = "normal";
 	struct mode_info *info;
@@ -56,7 +55,7 @@ static int reboot_mode_notify(struct notifier_block *this,
 			      unsigned long mode, void *cmd)
 {
 	struct reboot_mode_driver *reboot;
-	unsigned int magic;
+	u64 magic;
 
 	reboot = container_of(this, struct reboot_mode_driver, reboot_notifier);
 	mutex_lock(&reboot->rb_lock);
@@ -81,6 +80,8 @@ int reboot_mode_register(struct reboot_mode_driver *reboot, struct device_node *
 	struct mode_info *next;
 	struct property *prop;
 	size_t len = strlen(PREFIX);
+	u32 magic_arg1;
+	u32 magic_arg2;
 	int ret;
 
 	if (!np)
@@ -100,12 +101,18 @@ int reboot_mode_register(struct reboot_mode_driver *reboot, struct device_node *
 			goto error;
 		}
 
-		if (of_property_read_u32(np, prop->name, &info->magic)) {
-			pr_err("reboot mode %s without magic number\n", info->mode);
+		if (of_property_read_u32(np, prop->name, &magic_arg1)) {
+			pr_err("reboot mode without magic number\n");
 			kfree(info);
 			continue;
 		}
 
+		if (of_property_read_u32_index(np, prop->name, 1, &magic_arg2))
+			magic_arg2 = 0;
+
+		info->magic = magic_arg2;
+		info->magic = (info->magic << 32) | magic_arg1;
+
 		info->mode = kstrdup_const(prop->name + len, GFP_KERNEL);
 		if (!info->mode) {
 			ret =  -ENOMEM;
diff --git a/drivers/power/reset/syscon-reboot-mode.c b/drivers/power/reset/syscon-reboot-mode.c
index e0772c9f70f7a19cd8ec8a0b7fdbbaa7ba44afd0..3cbd000c512239b12ec51987e900d260540a9dea 100644
--- a/drivers/power/reset/syscon-reboot-mode.c
+++ b/drivers/power/reset/syscon-reboot-mode.c
@@ -20,16 +20,21 @@ struct syscon_reboot_mode {
 	u32 mask;
 };
 
-static int syscon_reboot_mode_write(struct reboot_mode_driver *reboot,
-				    unsigned int magic)
+static int syscon_reboot_mode_write(struct reboot_mode_driver *reboot, u64 magic)
 {
 	struct syscon_reboot_mode *syscon_rbm;
+	u32 magic_32;
 	int ret;
 
+	if (magic > U32_MAX)
+		return -EINVAL;
+
+	magic_32 = magic;
+
 	syscon_rbm = container_of(reboot, struct syscon_reboot_mode, reboot);
 
 	ret = regmap_update_bits(syscon_rbm->map, syscon_rbm->offset,
-				 syscon_rbm->mask, magic);
+				 syscon_rbm->mask, magic_32);
 	if (ret < 0)
 		dev_err(reboot->dev, "update reboot mode bits failed\n");
 
diff --git a/include/linux/reboot-mode.h b/include/linux/reboot-mode.h
index 98f68f95c9e8460be23282c51ef7fcbed73887bd..370228b5161963aac1d75af752ada0e8282b1078 100644
--- a/include/linux/reboot-mode.h
+++ b/include/linux/reboot-mode.h
@@ -3,11 +3,12 @@
 #define __REBOOT_MODE_H__
 
 #include <linux/mutex.h>
+#include <linux/types.h>
 
 struct reboot_mode_driver {
 	struct device *dev;
 	struct list_head head;
-	int (*write)(struct reboot_mode_driver *reboot, unsigned int magic);
+	int (*write)(struct reboot_mode_driver *reboot, u64 magic);
 	struct notifier_block reboot_notifier;
 	/*Protects access to reboot mode list*/
 	struct mutex rb_lock;

-- 
2.34.1


