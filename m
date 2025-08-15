Return-Path: <devicetree+bounces-205149-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id BB3A8B28200
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 16:38:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D8E561CC6654
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 14:37:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 2AD382264CA;
	Fri, 15 Aug 2025 14:36:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bfxoMusV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92711227B94
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 14:36:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755268602; cv=none; b=YIx30XVA6j6T5i/zndCqrYyokFZic3nN5Z4ijMpwrHvN7zjX/cNHCR8yrbfdFV9V/mxxo0nCqHc+GHPrQUW6/0H2Qo8frhIuXzW/KQnPuN5oH0GzexIEwYp8s+m55IxEMIHP0HyxSe56ArSYBxu4zGoVtmGQNMiK7W0bFipMhMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755268602; c=relaxed/simple;
	bh=FC7RrRfjKXNVyHBQzF6uwLhcss5N7idT7lbjBm/hwDg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=qH60QlqNdhPB32Xl58kY4Iq/8UC1AhmyX1JQDcRoVpsCA0FvwQe15/JknEuQhpxNVwsyG14vEuYZ7FxsjCh8BzMYGyUvQ6Xz6Kk1slEFs5F0nsJCpC1EdQiMoFm+kOYJj4jDrfwd/Wm5AeV04DF2J1fM01DmSxnTt6JSjYXNM2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bfxoMusV; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57FEJ297018247
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 14:36:39 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	v4YCBWmY0mp9H7MQ3j2gakQJBYTosZxb2APt1bK5h/Q=; b=bfxoMusV+UeHpJYS
	tVHWrsfZOEK6xVzwa+eAnGLEM2Aqciwlq7CI4IB/UoLpjhHfbPoE84geqQpcR1Eb
	F9+4fXqNoElfeUEf9uaXJKS5XDsDnOkxLR+ecgcutM+weSBgFXlPM4nbSlJKZqls
	uQYv05X4h+nVUeqkh6n7bsQquvWvji90fYjVrnzLX09FDydmJWs0SXz2DZH01mt0
	Vs+E73FQwjQ+JO8YT1IwprMQEHiHb41mrB+0cYROltsng5+7Jr1NlRY7ggiE3jUT
	IwHtnJd3QOne8M5AQNbq1oUPoIQ67YJyeTR38pJDbkwij2/AAeKrn/lohfHNFuFJ
	m38lDQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48eqhxhfvp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 14:36:38 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-24458345f5dso20437015ad.3
        for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 07:36:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755268597; x=1755873397;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=v4YCBWmY0mp9H7MQ3j2gakQJBYTosZxb2APt1bK5h/Q=;
        b=noIntPHkizpDsnheiLqROCk3UHc4x8mAzDi6w3wRV+DeYfHBcEKrwPbNWPptJRVMUg
         sCReQAHc8S/UF4trvkE/QC75xJ0QHRcyWckZLMOomhf5WwEfH5emUu108sQrHpgRRLZg
         6bWWQVHJTRZCp7lCABmXc20PP03H4DfYS19J4ShLbI/2Uj91+xcMkysAAz99ZjkUPYve
         Av+j6W0wRww9kzjMuNnFSneRmr0KUMjsLSxbaasuma86M0mnPL0NfpiNL5K/QH4IdwEM
         26XmPOYKyARhkhg2nfuG1YI4Oz82I6rYRop6gUcFJiRTHklCYlMSR+ifNXXBnvHQApaY
         7+LQ==
X-Forwarded-Encrypted: i=1; AJvYcCWRSW/DRgk5b26ogZk2rlU2Wln5gDUWhvF2PBJTkAax83ByMGsSOsqSjCDzf1Xc3WlL4xD820vAsK+8@vger.kernel.org
X-Gm-Message-State: AOJu0Yxkfotc+y4OhgDmPRrUX5O/KE/2brkqYfUj6M5J5cAWv8vfhQmI
	zi+vcxh6VVOzPOOJ3mRV+P1VIfZOFZ3tRayJwfbrHEdoUh+quvA10zQ3gUjYqEwPXJaJ2SPZ1R3
	zn+40z6DTb/CyrpF+R11sPVNw4fVfrX//EqmCJKD4hkO51ORqdg7ycAtwm1vINolmkb6pOO4h
X-Gm-Gg: ASbGnctiXgQwMX3psr9QxZqwCaVz+yiQfHouhm5ZKvCwmWdxWBhm4Qxla6sFItf/iyH
	wpWNL2hAr1KDfEP/uA+PrfDLGk/uAz1PYSnSk/gmlb5lsIrI8rOS4D1noSWQtFOtlxntMwNP+nx
	CUW1m39/f6ZdSTZf6791MGgKyCcNv8OxzI+P1/COVBBwe1Q53WpiSSPwjC9Bz9LsG0OXXXYqxcP
	hnHi3vIB5JaTJeZeNvTXo/s3jlOTShVAyiObLjOvhkvJsGMDw4/HLjEjxxcctOzP6s6l4uO398K
	6jVYFXhpkY+r/bnCa7umdjgL5YGTSHzn27NNqD+HULWnxY/drlCQ2K31PKQH7hiwfk+Dd+7isFZ
	N
X-Received: by 2002:a17:902:c404:b0:240:2145:e526 with SMTP id d9443c01a7336-2446d5bced9mr33643355ad.6.1755268597522;
        Fri, 15 Aug 2025 07:36:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IE8j2DBTSDu5n5h8GFZmi+daS6bzM/R0ejhF0k7J+060Go5g2KE+vK8hO6LMHELOHeOiEIIIg==
X-Received: by 2002:a17:902:c404:b0:240:2145:e526 with SMTP id d9443c01a7336-2446d5bced9mr33642895ad.6.1755268597056;
        Fri, 15 Aug 2025 07:36:37 -0700 (PDT)
Received: from hu-spratap-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b472d73619fsm1437576a12.39.2025.08.15.07.36.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Aug 2025 07:36:36 -0700 (PDT)
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
Date: Fri, 15 Aug 2025 20:05:06 +0530
Subject: [PATCH v14 01/10] power: reset: reboot-mode: Synchronize list
 traversal
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250815-arm-psci-system_reset2-vendor-reboots-v14-1-37d29f59ac9a@oss.qualcomm.com>
References: <20250815-arm-psci-system_reset2-vendor-reboots-v14-0-37d29f59ac9a@oss.qualcomm.com>
In-Reply-To: <20250815-arm-psci-system_reset2-vendor-reboots-v14-0-37d29f59ac9a@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755268580; l=3679;
 i=shivendra.pratap@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=FC7RrRfjKXNVyHBQzF6uwLhcss5N7idT7lbjBm/hwDg=;
 b=g4yjAP/BCuktcWiGQdYaKnjeQsltqIlsf61mfAvCUxLEzZySADm+zJuHV9ye2qZLIB3RDyx0V
 W/C8BqZAcwoDo313Sw6zzqFi+iyDxtUYtypSJx0xwxb8KDxTU93zSzF
X-Developer-Key: i=shivendra.pratap@oss.qualcomm.com; a=ed25519;
 pk=CpsuL7yZ8NReDPhGgq6Xn/SRoa59mAvzWOW0QZoo4gw=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODEwMDA1NyBTYWx0ZWRfXz0fwDaumabDo
 GYTOm64k3dpXOADNIiD8pGBgT2ZfylXlC1tW4jUJ+2157mqTU6yZAxYkiQgMV285KApFuYA94xZ
 Nl+dXiW7oILkTMMYF0O0G+DiX/oa0HQWgFa2zPp0rsAapBDoObnxC0P4ueb1tlzWXDJB6ncS7ve
 oyru8prvYW3ED6PNCqPLLa/OJTiw4uCvrVR56vKMoxuKt0CpdgnFfVAR9U4skn7FxXrL0HkYi0u
 i/1aDiD600vpJaqpKEzJE3nJFYUipqYKkb50sfID8W7mhAB6gL3PbgwXQjkYJlJWPBnML600eXQ
 OmBTFWyrpYhXxoPsHnKSVySCPMU80iYDHQuD+u76muf8W/33gHkxVFLWyBTF/pokldODUZv4FY+
 XRDqX+vA
X-Proofpoint-GUID: kGtaDUf1jKHC0eJNnM3nGmLTUICAXmTT
X-Authority-Analysis: v=2.4 cv=aYNhnQot c=1 sm=1 tr=0 ts=689f45f7 cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=iWTyA_h5fkyOTIp6uasA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: kGtaDUf1jKHC0eJNnM3nGmLTUICAXmTT
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-15_05,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 priorityscore=1501 suspectscore=0 phishscore=0
 impostorscore=0 bulkscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508100057

List traversals must be synchronized to prevent race conditions
and data corruption. The reboot-mode list is not protected by a
lock currently, which can lead to concurrent access and race.

Introduce a mutex lock to guard all operations on the reboot-mode
list and ensure thread-safe access. The change prevents unsafe
concurrent access on reboot-mode list.

Signed-off-by: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
---
 drivers/power/reset/reboot-mode.c | 24 ++++++++++++++++++++----
 include/linux/reboot-mode.h       |  4 ++++
 2 files changed, 24 insertions(+), 4 deletions(-)

diff --git a/drivers/power/reset/reboot-mode.c b/drivers/power/reset/reboot-mode.c
index fba53f638da04655e756b5f8b7d2d666d1379535..42bb99128ed3846d4bff62416dc31135ddeaeb90 100644
--- a/drivers/power/reset/reboot-mode.c
+++ b/drivers/power/reset/reboot-mode.c
@@ -29,9 +29,14 @@ static unsigned int get_reboot_mode_magic(struct reboot_mode_driver *reboot,
 	if (!cmd)
 		cmd = normal;
 
-	list_for_each_entry(info, &reboot->head, list)
-		if (!strcmp(info->mode, cmd))
+	mutex_lock(&reboot->rb_lock);
+	list_for_each_entry(info, &reboot->head, list) {
+		if (!strcmp(info->mode, cmd)) {
+			mutex_unlock(&reboot->rb_lock);
 			return info->magic;
+		}
+	}
+	mutex_unlock(&reboot->rb_lock);
 
 	/* try to match again, replacing characters impossible in DT */
 	if (strscpy(cmd_, cmd, sizeof(cmd_)) == -E2BIG)
@@ -41,9 +46,14 @@ static unsigned int get_reboot_mode_magic(struct reboot_mode_driver *reboot,
 	strreplace(cmd_, ',', '-');
 	strreplace(cmd_, '/', '-');
 
-	list_for_each_entry(info, &reboot->head, list)
-		if (!strcmp(info->mode, cmd_))
+	mutex_lock(&reboot->rb_lock);
+	list_for_each_entry(info, &reboot->head, list) {
+		if (!strcmp(info->mode, cmd_)) {
+			mutex_unlock(&reboot->rb_lock);
 			return info->magic;
+		}
+	}
+	mutex_unlock(&reboot->rb_lock);
 
 	return 0;
 }
@@ -77,7 +87,9 @@ int reboot_mode_register(struct reboot_mode_driver *reboot)
 	int ret;
 
 	INIT_LIST_HEAD(&reboot->head);
+	mutex_init(&reboot->rb_lock);
 
+	mutex_lock(&reboot->rb_lock);
 	for_each_property_of_node(np, prop) {
 		if (strncmp(prop->name, PREFIX, len))
 			continue;
@@ -113,12 +125,14 @@ int reboot_mode_register(struct reboot_mode_driver *reboot)
 	reboot->reboot_notifier.notifier_call = reboot_mode_notify;
 	register_reboot_notifier(&reboot->reboot_notifier);
 
+	mutex_unlock(&reboot->rb_lock);
 	return 0;
 
 error:
 	list_for_each_entry(info, &reboot->head, list)
 		kfree_const(info->mode);
 
+	mutex_unlock(&reboot->rb_lock);
 	return ret;
 }
 EXPORT_SYMBOL_GPL(reboot_mode_register);
@@ -133,8 +147,10 @@ int reboot_mode_unregister(struct reboot_mode_driver *reboot)
 
 	unregister_reboot_notifier(&reboot->reboot_notifier);
 
+	mutex_lock(&reboot->rb_lock);
 	list_for_each_entry(info, &reboot->head, list)
 		kfree_const(info->mode);
+	mutex_unlock(&reboot->rb_lock);
 
 	return 0;
 }
diff --git a/include/linux/reboot-mode.h b/include/linux/reboot-mode.h
index 4a2abb38d1d612ec0fdf05eb18c98b210f631b7f..b73f80708197677db8dc2e43affc519782b7146e 100644
--- a/include/linux/reboot-mode.h
+++ b/include/linux/reboot-mode.h
@@ -2,11 +2,15 @@
 #ifndef __REBOOT_MODE_H__
 #define __REBOOT_MODE_H__
 
+#include <linux/mutex.h>
+
 struct reboot_mode_driver {
 	struct device *dev;
 	struct list_head head;
 	int (*write)(struct reboot_mode_driver *reboot, unsigned int magic);
 	struct notifier_block reboot_notifier;
+	/*Protects access to reboot mode list*/
+	struct mutex rb_lock;
 };
 
 int reboot_mode_register(struct reboot_mode_driver *reboot);

-- 
2.34.1


