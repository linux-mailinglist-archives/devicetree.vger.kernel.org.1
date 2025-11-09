Return-Path: <devicetree+bounces-236405-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id C1B43C44076
	for <lists+devicetree@lfdr.de>; Sun, 09 Nov 2025 15:38:34 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F4209188C303
	for <lists+devicetree@lfdr.de>; Sun,  9 Nov 2025 14:38:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DD1D82FE06D;
	Sun,  9 Nov 2025 14:38:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HIoQb7Uj";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="DqKsCLBb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C31272FE06E
	for <devicetree@vger.kernel.org>; Sun,  9 Nov 2025 14:38:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762699097; cv=none; b=csfKpSygXQqyFSDD8LbOp4KEOngUl3BHNlV5q9GAs0yqJDD+mAxnelbR4hvhfCL3ylMQD3m3L4eIb4UcPtR2rHKGqKlaDlYuENDk0QFCPXWvxS7oSEG7yTCmXpMzdnFSUXzH/tAS2XueoDqEgGeOilrK7qQGIK3JnwSlx2YF+nI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762699097; c=relaxed/simple;
	bh=tSD2yNZaJDc5m1jdDRoQ2dA6oSVGR8ZTHjS4GRBmNcg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Z2VU5Mk6HYbvDWB0+9L0S1PvsqVkjo6qvPp/X+qPNjMN+O60/Ap06iK821Lt4p7pLlbG5+iTYG1deco+bol/oLho9Co0pfV0jM27LN0TVdUHurT6RKuXXgqASBw0Ec20rWyZ4dJzd8Kyi+epo5878thvI6Vhdd96AifjH/nPDQk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HIoQb7Uj; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=DqKsCLBb; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A9DUhNg853140
	for <devicetree@vger.kernel.org>; Sun, 9 Nov 2025 14:38:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	jiNDMgJ1PRczoI1657/zd47IielAoH6hCTaVhiNKpyE=; b=HIoQb7UjY9q077NI
	kVl2CpnPnEJvwugYDSyD0BYY7Ki1Ddbt4V2S12+fnDUy7cDXHr5lEwCKvV8sfzI4
	UGzOvjxgkrxhEUwljXiwKmposcK1U9CsT3eDZA48WD9edb5d24OEq03Qy3iKMW/l
	gm0pZPVbVktoSzG9zqMu1MEuAM/FnB5PduxO6LdBsEO/sSKBZO6gkjsIglsAlUl7
	ucvhr1MhO+1vPJlKDrGpgkph5Id5Xk3qpn0TgRkyaMaOmdXOHOuBCrhDfDG8nNrR
	bDGsRSZXq0NYbxd/hjscqlwJHKiOraj4NgN6QLnWQ9jauzBQkncuaBsVC+vb00o/
	irn1fg==
Received: from mail-pj1-f71.google.com (mail-pj1-f71.google.com [209.85.216.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a9xwfj84n-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 09 Nov 2025 14:38:13 +0000 (GMT)
Received: by mail-pj1-f71.google.com with SMTP id 98e67ed59e1d1-34385d7c4a7so470822a91.0
        for <devicetree@vger.kernel.org>; Sun, 09 Nov 2025 06:38:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762699093; x=1763303893; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=jiNDMgJ1PRczoI1657/zd47IielAoH6hCTaVhiNKpyE=;
        b=DqKsCLBbFDQft/ZoGsDbfSkzCNmoOhIn+rQjC7NCEHqAshONiYsT6cuUhZsfhcFQs0
         WRqF7iwG0cZRrMtvevOukeUEzaqhbwQ7wfUtRWhsnwwNNxAHQDE22WuOqyef1nte4Ue6
         Z3QL/GAHMi/h17jO4dhzEpicBbZu07CXmJKsdNQ4C+gts1rI5ZvdUJ5lEMkFHTr2Iez3
         A8skSGTo8bmWWXWm8s37LjRYmvT/pqPAJEf1Q2DeSs8rfgL1qKtcAzuVLbjdqJ7lmr0D
         0CgzYxFhBmfdcc5ZJrY8f2VEflbEWmaE8aqx076ILATG9m2uTXlKCwQAMLABE+J3gNC7
         9CJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762699093; x=1763303893;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=jiNDMgJ1PRczoI1657/zd47IielAoH6hCTaVhiNKpyE=;
        b=o5dCDbUR0eVGAYGYqtkYo5MlR1hpa7Ns6LJPsRPZMA9p4vJAEJOq0lAmaOmGIwRtTz
         LaRFlFLikC5PzUfNjdzwkuz/e8iauyUp7ys90zO1Tlv8C9gjfjfjvH3J3IFwsW8BtbJk
         Rqr+Tj2ggoRCbQ4v8RL08loNPfOXx/cW5biNBaWkkLl6MCfWg/ueTJSw9YeYPer/3Ugn
         nIwT0RZovavEWFnC3XFkP1n4BEQoD8BSQcWtYAoIeofkLlLUlgCe13Lvsl8yLU/Lz6Wx
         MY1gHknTzdysPlpZUH1W6r0B7XdyOtWYj5co71LSo62EVpRJK3Mt7VAx3r9d0mDUL8jG
         SFLw==
X-Forwarded-Encrypted: i=1; AJvYcCV384oaB1HWKUWmpqrTJT6Zx7BMvLZSD+jBYeqiQS30sJ1OGJK43TXUBk9D0pDDnVRn+OATlAp6itpw@vger.kernel.org
X-Gm-Message-State: AOJu0YzbGnjbNf7t5aRHdU6LDeRL6E3cR5OELfUvlGnPkUisKvjCP0jn
	gTci5YXmf4ZWUZ8QwH5ieS4+yBiqDLgoPwVNV4UEYJRBePYTLS7Dk8ECvuzkABMmQ6WJN4S9MI7
	iZR40RSjwa9BV4Eq1LJzD+Au+66vqOXia9LJQpDVREG2ppr/M6oyffTT4M9UWWJgQ
X-Gm-Gg: ASbGncuoMfvHXrS6pjL2wnAKMVRkHakkDA6CqQQuIqnS647TeKBv8NRLugcIMWvyvTy
	TMQWgsSvM52NagmabJfxEncgUEIM8KuLOujRE/lSYpUuDc5ISa6BYLQMc1OQ5WOkV+dTsvIkpvq
	EeO6OjQZFvUCVbPepae64i8GiueKEwjjT6r8wzJCubOF9syih20XDuXpeEadTHPhZWJfbMQh7GK
	Fk5vRt7fDDb3SKk/fIzHm0UeXQHd5NSlxDhXY1TSeEgKSTvr8MaFSzM0y3HL1LTxFJHUIAnFGWj
	zt9g9hSExyhVOhYt+9aLo82LRZb1oqVL1i+CZgoJH0cWg4mBoMJwg98tNaK4VZgPkVyHogA7/ot
	3a3GtmuTsO4asCvnOcP3dcxu96SPjPcr2GzQ=
X-Received: by 2002:a17:90b:2e50:b0:32e:8ff9:d124 with SMTP id 98e67ed59e1d1-3436acc10b1mr6325896a91.15.1762699092553;
        Sun, 09 Nov 2025 06:38:12 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFsz33mCu2I9XufPajBf7LFsiT4u4peJwvXKj1MW+NqngdPeP21HWE8OBRYf1Aie7N1TK+YOA==
X-Received: by 2002:a17:90b:2e50:b0:32e:8ff9:d124 with SMTP id 98e67ed59e1d1-3436acc10b1mr6325873a91.15.1762699092004;
        Sun, 09 Nov 2025 06:38:12 -0800 (PST)
Received: from hu-spratap-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-341a68a68e6sm14845401a91.4.2025.11.09.06.38.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 Nov 2025 06:38:11 -0800 (PST)
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
Date: Sun, 09 Nov 2025 20:07:14 +0530
Subject: [PATCH v17 01/12] power: reset: reboot-mode: Remove devres based
 allocations
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251109-arm-psci-system_reset2-vendor-reboots-v17-1-46e085bca4cc@oss.qualcomm.com>
References: <20251109-arm-psci-system_reset2-vendor-reboots-v17-0-46e085bca4cc@oss.qualcomm.com>
In-Reply-To: <20251109-arm-psci-system_reset2-vendor-reboots-v17-0-46e085bca4cc@oss.qualcomm.com>
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
        Xin Liu <xin.liu@oss.qualcomm.com>,
        Srinivas Kandagatla <srini@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762699073; l=3273;
 i=shivendra.pratap@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=tSD2yNZaJDc5m1jdDRoQ2dA6oSVGR8ZTHjS4GRBmNcg=;
 b=bUjyq9xpjS9KUiS6+Nw78zrsSxHqaWYFJL0jGHwwWaOkVhD0IIgjEAY5Z0HoEPo/CcR3Xz4oA
 IulwmmBv4T4A9e0Vrji+SnFgsZO+5ByFEtY5OaqNKYLzIpwTq8pESLl
X-Developer-Key: i=shivendra.pratap@oss.qualcomm.com; a=ed25519;
 pk=CpsuL7yZ8NReDPhGgq6Xn/SRoa59mAvzWOW0QZoo4gw=
X-Proofpoint-GUID: yNeoH6r_lTFJuShKOnYt7t13Xy1wQWiW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTA5MDEyOSBTYWx0ZWRfXxgb2OrNGCAzW
 CND0ltJr5WBMBUlZGlu28cRY0v5CeSPSzG78uuDHETgCJqRBiZfUd5o+734PQJcSX6PxSHvALRI
 ICzF57tLcKEpgv6F6FTuqhS67GUV06B/fqBYFwzIdxkJ7/izmoyqNLPVcLirBlaqIT67kYT527f
 cJZUwhUncpNO9GfGNq8La2tr+meC6t30Y3Utd+I6Y0Ao7Qv3m7FGBEO712aVtv+2OS8Mm9qdIcz
 M06JvnMT+gK+4mvRsBcCtGysfv9wjrA3yMbjw4uEit5aA0uLj302QXtsfqTWBRn5hcXe26v4AeF
 kU0ttRyjfdS6tFtyUvofuLwtHDu0NAsAvwgQ97VxKERpIrRr/74QJGZdWkJUBbcHlWDU9DnuQGn
 7kjyNFUJj2oITjZUOhEE/YuqzDRJiQ==
X-Authority-Analysis: v=2.4 cv=LaoxKzfi c=1 sm=1 tr=0 ts=6910a755 cx=c_pps
 a=UNFcQwm+pnOIJct1K4W+Mw==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=wx_w4_m59dWKJ5at3RkA:9
 a=QEXdDO2ut3YA:10 a=uKXjsCUrEbL0IQVhDsJ9:22
X-Proofpoint-ORIG-GUID: yNeoH6r_lTFJuShKOnYt7t13Xy1wQWiW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-09_06,2025-11-06_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 lowpriorityscore=0 malwarescore=0
 impostorscore=0 spamscore=0 adultscore=0 suspectscore=0 bulkscore=0
 clxscore=1015 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511090129

Devres APIs are intended for use in drivers, and they should be
avoided in shared subsystem code which is being used by multiple
drivers. Avoid using devres based allocations in the reboot-mode
subsystem and manually free the resources.

Replace devm_kzalloc with kzalloc and handle memory cleanup
explicitly.

Fixes: 4fcd504edbf7 ("power: reset: add reboot mode driver")
Signed-off-by: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
---
 drivers/power/reset/reboot-mode.c | 30 ++++++++++++++++++++----------
 1 file changed, 20 insertions(+), 10 deletions(-)

diff --git a/drivers/power/reset/reboot-mode.c b/drivers/power/reset/reboot-mode.c
index fba53f638da04655e756b5f8b7d2d666d1379535..ac4223794083f36960b2bd37a601b7e1f1872de5 100644
--- a/drivers/power/reset/reboot-mode.c
+++ b/drivers/power/reset/reboot-mode.c
@@ -3,6 +3,8 @@
  * Copyright (c) 2016, Fuzhou Rockchip Electronics Co., Ltd
  */
 
+#define pr_fmt(fmt)	"reboot-mode: " fmt
+
 #include <linux/device.h>
 #include <linux/init.h>
 #include <linux/kernel.h>
@@ -71,6 +73,7 @@ static int reboot_mode_notify(struct notifier_block *this,
 int reboot_mode_register(struct reboot_mode_driver *reboot)
 {
 	struct mode_info *info;
+	struct mode_info *next;
 	struct property *prop;
 	struct device_node *np = reboot->dev->of_node;
 	size_t len = strlen(PREFIX);
@@ -82,29 +85,27 @@ int reboot_mode_register(struct reboot_mode_driver *reboot)
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
-			goto error;
+			goto err_info;
 		} else if (info->mode[0] == '\0') {
 			kfree_const(info->mode);
 			ret = -EINVAL;
-			dev_err(reboot->dev, "invalid mode name(%s): too short!\n",
-				prop->name);
-			goto error;
+			pr_err("invalid mode name(%s): too short!\n", prop->name);
+			goto err_info;
 		}
 
 		list_add_tail(&info->list, &reboot->head);
@@ -115,9 +116,14 @@ int reboot_mode_register(struct reboot_mode_driver *reboot)
 
 	return 0;
 
+err_info:
+	kfree(info);
 error:
-	list_for_each_entry(info, &reboot->head, list)
+	list_for_each_entry_safe(info, next, &reboot->head, list) {
+		list_del(&info->list);
 		kfree_const(info->mode);
+		kfree(info);
+	}
 
 	return ret;
 }
@@ -130,11 +136,15 @@ EXPORT_SYMBOL_GPL(reboot_mode_register);
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


