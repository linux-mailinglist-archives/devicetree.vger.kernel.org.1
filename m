Return-Path: <devicetree+bounces-271199-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id qPW2I693qGnpugAAu9opvQ
	(envelope-from <devicetree+bounces-271199-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 19:19:27 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 2B48D20629F
	for <lists+devicetree@lfdr.de>; Wed, 04 Mar 2026 19:19:26 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 8D8713069D51
	for <lists+devicetree@lfdr.de>; Wed,  4 Mar 2026 18:07:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id F2D8C3DEAE0;
	Wed,  4 Mar 2026 18:03:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GTl/xsZh";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="h/313gp3"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A80C13DEAD1
	for <devicetree@vger.kernel.org>; Wed,  4 Mar 2026 18:03:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772647418; cv=none; b=FUWqVr39JSRvy/tZrtL9Z+sGoUz04WALT2bgFcS8igr8QN6w0zQJabc9XizauEaMNWdCya6MNBna/y33tL2sDvYIQezmbv0AMWAX4QAG+S9kDYXc/DLWiro4OUS1wK4OL6FkAoMlg65GU3iOQLVQv4j2BLwDp2XGBjDwcpM5Hc4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772647418; c=relaxed/simple;
	bh=nI413mpH4Vny/jDMl6dShEe8rWIdtCh49blRabGf3jA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=komBIZB9Pg9ExxgoKCNPzBb1ADIr4Z/mSCFc87KvbskXwiSds24I2twcLhZ/F/iaZsmKbeWedeDox1RiPN6yKFFYsqlFAKB4L2D1ldWaPEVfqhMMNSXA0UlZe6IKseJotXJQqTbNp6K6RBjsK0N8738ecmm1Fi/noIfux3cB0Ps=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GTl/xsZh; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=h/313gp3; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 624E0apM029424
	for <devicetree@vger.kernel.org>; Wed, 4 Mar 2026 18:03:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	R3mGKt2hZAc1/fLOvPOaHv4o+LhU4pbbCYTJr7cvoC0=; b=GTl/xsZhfZm+uECM
	Cdv2UOoxCyv/FNB5aHi0HOMmTs/tdFSMn+u+2HlMSZcdsQsaoIGdoXX5CUfXM3nU
	RbuKM5FoBt/MY9FodKAiOT3Ah8/frxa4ewWsP1Ve14Ud9k3gXNQsP6GWTVnyDQcs
	r9RgSDhnO/yaIaP8RdeB03NzWHdqxgVyZIDzKt3iqly4GvRVRVHPf8htg6/lT9w4
	q9L5smyFl9f/16FvcbSpURF7f6MZdvGmkXeZNv+ktHQipQHeonV3fQ4QWt3tUEqp
	ePM72MVA3rFC8+Ivu/UGmegFrg6voFc11bgULVPnMY/O86SEOUY5SQFRAT9sK9Vd
	8Rw9kg==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4cpp4fgv0c-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 18:03:36 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-c70ea91bfe1so4495669a12.1
        for <devicetree@vger.kernel.org>; Wed, 04 Mar 2026 10:03:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1772647416; x=1773252216; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=R3mGKt2hZAc1/fLOvPOaHv4o+LhU4pbbCYTJr7cvoC0=;
        b=h/313gp32WINqznyLbeaP1Qi0hOHQNX3HBWS45oPsG0S77qSQdWQhRXoXWQKwo19eM
         EhNsGGPFjBTNKqRbF80qStnAyXkslP2SLbitglbt3oV0uH4v1G7bPFLfaqNgz2jUjSVE
         SnUWBnI14CHFJAtV1K+HexiWDTcizXsQgCXell7+TR73hlx1TcKIzsLISQycVKHZWs35
         AXpPnZM9tmAOGg0ZJG2eenGkEj3SDz4LD5SQC4Yv9vgWTJYM9hf1aLYY5HvMxxhHRpbv
         mYQ5w0IQr1TKYOfVr0w7lsSNTf/RzBM2eOsNbngyTZASjzlYJKb7ZSUxH06ZrK5v5fnw
         VOrQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1772647416; x=1773252216;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=R3mGKt2hZAc1/fLOvPOaHv4o+LhU4pbbCYTJr7cvoC0=;
        b=B7sQddJm5Bika/naMe8BcGgb/R5T492U5mxGXZ8MAPzc1ruxYmu5uNcG0CizU69IwH
         OCUZfAIpFpNCdz7sbl+zceJpPjuLmbCvWUYzSpIPLdaQEMJqgwer9JFm0nqoHJEchL5g
         NtfP/Dq1M3WlVvwJDP59HGanpodaF6khl3+GG2k0V10BLWXhE+MejYKBZKgfYMeP28rA
         Kz33jc5VnUr24IOY0pKFPnJhIIvXYlF+PvWKoJwOG0qxaInSoKAVLCsa0rCYKiBU1ZaQ
         6Kk6JzPvcYVVeQTWrAW7kw3gNDgtIwI3pvZ7dC+lFEJYMLSRdp1ZlCdz0ljVxl+XL1nT
         WUNg==
X-Forwarded-Encrypted: i=1; AJvYcCXtMNXkmplAfS83uePT+8EjR8qhJ9HEF9LlWSjajLJXELIzUeUh/PdQV5p7m9Zqfd8tw886WlGFwdMV@vger.kernel.org
X-Gm-Message-State: AOJu0YweqbRrWHe5JkUEcUbymfnvqFaTNmnoErzXtxx/QavKfaOPd58I
	z6qOowsMqE9ZPLZIyvQ0PLyMOJuPcX2aV7jNmxonO9Hw3AIona7FBrO+3MlEYOU/EkIPL1wRRyE
	dLN6YynyCMuI/cVXNBg8JuGgwqhBE9saMUF+AveExDFVJZXzFteyYRh1Vt3auBGNM
X-Gm-Gg: ATEYQzyC2xelFFRfHYS9JVBb35VGzjxebAhDLM3uQkUH3J/x+PyRQI9SLIiZrXX5Ns8
	8eIUYMN+rNDtXjiYjKZiMJJ35ZZQVkFHTRZur0qAnJZB/BGsBXP/md28LdK1kIYmXEugkcgfTP4
	WH11RbU7R9Y6LCA2OXN6FPn78Poxv2XW13JXm2El12uzCOvi6Tfo2z5iRuAv3BnnVX99wUGMv1V
	W4905hxQoCRKNTMWcasItctpCCyyoxXb1HB3eBV8OY5nYBgG82X136LWLGoXC5ONCtYj6ju6xUc
	fmSh2FkRCFyKjz4U4jBpwNCb2peSn6y71fyv8Jb0eCKeQ3aREdSLnvTuEcaAhdzSMlixWp3miP8
	JjNy2oxeVz7H6nHda4bUBDF7wmoYla/7BUeyV84lHK/3MRKld8aJFCNmgUQ==
X-Received: by 2002:a17:90b:1e0b:b0:359:2d1c:9206 with SMTP id 98e67ed59e1d1-359a6a97876mr2870354a91.33.1772647416141;
        Wed, 04 Mar 2026 10:03:36 -0800 (PST)
X-Received: by 2002:a17:90b:1e0b:b0:359:2d1c:9206 with SMTP id 98e67ed59e1d1-359a6a97876mr2870305a91.33.1772647415618;
        Wed, 04 Mar 2026 10:03:35 -0800 (PST)
Received: from hu-spratap-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-359a8f22062sm1080606a91.1.2026.03.04.10.03.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Mar 2026 10:03:35 -0800 (PST)
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
Date: Wed, 04 Mar 2026 23:33:01 +0530
Subject: [PATCH v20 01/10] power: reset: reboot-mode: Remove devres based
 allocations
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260304-arm-psci-system_reset2-vendor-reboots-v20-1-cf7d346b8372@oss.qualcomm.com>
References: <20260304-arm-psci-system_reset2-vendor-reboots-v20-0-cf7d346b8372@oss.qualcomm.com>
In-Reply-To: <20260304-arm-psci-system_reset2-vendor-reboots-v20-0-cf7d346b8372@oss.qualcomm.com>
To: Lorenzo Pieralisi <lpieralisi@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
        Souvik Chakravarty <Souvik.Chakravarty@arm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Andy Yan <andy.yan@rock-chips.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Conor Dooley <conor+dt@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        John Stultz <john.stultz@linaro.org>,
        Moritz Fischer <moritz.fischer@ettus.com>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Sudeep Holla <sudeep.holla@kernel.org>
Cc: Florian Fainelli <florian.fainelli@broadcom.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Mukesh Ojha <mukesh.ojha@oss.qualcomm.com>,
        Andre Draszik <andre.draszik@linaro.org>,
        Kathiravan Thirumoorthy <kathiravan.thirumoorthy@oss.qualcomm.com>,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org,
        Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>,
        Srinivas Kandagatla <srini@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1772647398; l=3628;
 i=shivendra.pratap@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=nI413mpH4Vny/jDMl6dShEe8rWIdtCh49blRabGf3jA=;
 b=tmuPFucdwo0CFgiVjaW74q0jpCSADUah6j2tcoEU889L00rSI3hCZWyRg9lYeuJLkbzcgUbMl
 lLhJoaewZdSC5aD3/VNXRx2t/86PDFYYBGaT//NQg9dHrzNMmUC8aZ3
X-Developer-Key: i=shivendra.pratap@oss.qualcomm.com; a=ed25519;
 pk=CpsuL7yZ8NReDPhGgq6Xn/SRoa59mAvzWOW0QZoo4gw=
X-Proofpoint-ORIG-GUID: wlOzlm6SModX74UPdjQAnPWoBEOWhG2d
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzA0MDE0NyBTYWx0ZWRfX27mMrGksZ/vV
 aE503NhgZoeDKIBnoeL8g6Q0lVv1rRHhsWrj0ggHEXjmVE3HLPbeI+ziJlGAiE6nqq5J/haPpbG
 vtQITgTMCrj84/zxmTtE5PdXZkN+C7fYBN929AOywmRSHRvoJo0Sw/N4WpKOTJYRHSDwdIsqD0x
 JlJBVY1wY4KGaNG9cPp7b73ru0gwaH+fMMQuJs0kqOZG3Z+VeOvGYqaQGOBLNi9h98KFtGRxpVV
 8IX+2mWrwa85GXVnoaliQrupWQm8lvrvfy+EfPUA0CR/+W4v5IppS/jW1zPws1qYlB5niNHJJc4
 fqPtWXIv2Lw6l8C5S1FHgJR7WWDW9yH8wtBTuWUtG/ooHRDWFjVmhbZKJlh4Vre7vBv1ffghprN
 cylfiS244kcsoeobuNO5LkzORTuwc+UpGDeHrTHpGCEwArcl3ONY6Cpvr2fB6BZ4602u0Bsrw+A
 ha+o6LBjNmMvLaDY3Wg==
X-Authority-Analysis: v=2.4 cv=CdMFJbrl c=1 sm=1 tr=0 ts=69a873f8 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=QIdouwm7mKRySFGJXRQA:9 a=QEXdDO2ut3YA:10
 a=x9snwWr2DeNwDh03kgHS:22
X-Proofpoint-GUID: wlOzlm6SModX74UPdjQAnPWoBEOWhG2d
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-04_07,2026-03-04_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 spamscore=0 lowpriorityscore=0 malwarescore=0
 clxscore=1015 adultscore=0 impostorscore=0 bulkscore=0 phishscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2602130000
 definitions=main-2603040147
X-Rspamd-Queue-Id: 2B48D20629F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	R_SPF_ALLOW(-0.20)[+ip4:172.234.253.10:c];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TAGGED_FROM(0.00)[bounces-271199-lists,devicetree=lfdr.de];
	DBL_BLOCKED_OPENRESOLVER(0.00)[qualcomm.com:dkim,qualcomm.com:email,sea.lore.kernel.org:rdns,sea.lore.kernel.org:helo,oss.qualcomm.com:dkim,oss.qualcomm.com:mid];
	FREEMAIL_TO(0.00)[kernel.org,arndb.de,arm.com,rock-chips.com,gmail.com,linaro.org,ettus.com];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[29];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	ASN(0.00)[asn:63949, ipnet:172.234.224.0/19, country:SG];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[shivendra.pratap@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Action: no action

Devres APIs are intended for use in drivers, where the managed lifetime
of resources is tied directly to the driver attach/detach cycle. In
shared subsystem code, there is no guarantee that the subsystem
functions will only be called after a driver has been attached, nor that
they will not be referenced after the managed resources have been
released during driver detach.

To ensure correct lifetime handling, avoid using devres-based
allocations in the reboot-mode and explicitly handle allocation and
cleanup of resources.

Fixes: 4fcd504edbf7 ("power: reset: add reboot mode driver")
Signed-off-by: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
---
 drivers/power/reset/reboot-mode.c | 33 ++++++++++++++++++++-------------
 1 file changed, 20 insertions(+), 13 deletions(-)

diff --git a/drivers/power/reset/reboot-mode.c b/drivers/power/reset/reboot-mode.c
index fba53f638da04655e756b5f8b7d2d666d1379535..d033043f5250a4de152a7786ef37e88a0ace3bbb 100644
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
 #include <linux/module.h>
 #include <linux/of.h>
+#include <linux/property.h>
 #include <linux/reboot.h>
 #include <linux/reboot-mode.h>
+#include <linux/slab.h>
 
 #define PREFIX "mode-"
 
@@ -74,6 +78,7 @@ int reboot_mode_register(struct reboot_mode_driver *reboot)
 	struct property *prop;
 	struct device_node *np = reboot->dev->of_node;
 	size_t len = strlen(PREFIX);
+	u32 magic;
 	int ret;
 
 	INIT_LIST_HEAD(&reboot->head);
@@ -82,19 +87,18 @@ int reboot_mode_register(struct reboot_mode_driver *reboot)
 		if (strncmp(prop->name, PREFIX, len))
 			continue;
 
-		info = devm_kzalloc(reboot->dev, sizeof(*info), GFP_KERNEL);
+		if (device_property_read_u32(reboot->dev, prop->name, &magic)) {
+			pr_debug("reboot mode %s without magic number\n", prop->name);
+			continue;
+		}
+
+		info = kzalloc(sizeof(*info), GFP_KERNEL);
 		if (!info) {
 			ret = -ENOMEM;
 			goto error;
 		}
 
-		if (of_property_read_u32(np, prop->name, &info->magic)) {
-			dev_err(reboot->dev, "reboot mode %s without magic number\n",
-				info->mode);
-			devm_kfree(reboot->dev, info);
-			continue;
-		}
-
+		info->magic = magic;
 		info->mode = kstrdup_const(prop->name + len, GFP_KERNEL);
 		if (!info->mode) {
 			ret =  -ENOMEM;
@@ -102,8 +106,7 @@ int reboot_mode_register(struct reboot_mode_driver *reboot)
 		} else if (info->mode[0] == '\0') {
 			kfree_const(info->mode);
 			ret = -EINVAL;
-			dev_err(reboot->dev, "invalid mode name(%s): too short!\n",
-				prop->name);
+			pr_err("invalid mode name(%s): too short!\n", prop->name);
 			goto error;
 		}
 
@@ -116,8 +119,8 @@ int reboot_mode_register(struct reboot_mode_driver *reboot)
 	return 0;
 
 error:
-	list_for_each_entry(info, &reboot->head, list)
-		kfree_const(info->mode);
+	kfree(info);
+	reboot_mode_unregister(reboot);
 
 	return ret;
 }
@@ -130,11 +133,15 @@ EXPORT_SYMBOL_GPL(reboot_mode_register);
 int reboot_mode_unregister(struct reboot_mode_driver *reboot)
 {
 	struct mode_info *info;
+	struct mode_info *next;
 
 	unregister_reboot_notifier(&reboot->reboot_notifier);
 
-	list_for_each_entry(info, &reboot->head, list)
+	list_for_each_entry_safe(info, next, &reboot->head, list) {
+		list_del(&info->list);
 		kfree_const(info->mode);
+		kfree(info);
+	}
 
 	return 0;
 }

-- 
2.34.1


