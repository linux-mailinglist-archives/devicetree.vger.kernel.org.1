Return-Path: <devicetree+bounces-220033-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 0297CB9170A
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 15:41:08 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id CFECE2A32CF
	for <lists+devicetree@lfdr.de>; Mon, 22 Sep 2025 13:41:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5AA6330E0F2;
	Mon, 22 Sep 2025 13:40:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="NYGtS06H"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B67D30E854
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 13:40:47 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758548449; cv=none; b=OokWZ9hOIZ9Z61+M3wo98BzmZLZL6cQj5tpulPqy4LyjmmKLEHMF6VrL6yHpktj/2AK5htV2Ta3W3M3iNVZEXjBHctRtYYVFr4Nh8FfhqnDrl5JOSs9tEAChQ804elyWsWc9DfTBrvL2m48mG8Jx7kc2Pdas5nnzW/e1OMVYt3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758548449; c=relaxed/simple;
	bh=+LF5Rl/5f5znpMQv1GLZ4NG0dpObtQwZ7SckbxZ5OJg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=LVqZ8LRxEjlPw4nNI9zV40JsrWRhw4FN5NO6ip88odoWJ3rXev89GoRZRfFlgXKmp5yOPFlhxM/e0DwYcuG0Q3+ewMCVf8MlqhsiVyeIsdZeA+E89cR1JEMjWzznEfq4gfbccG8Wvj6TokGcauo9Cbt+egOlkjSLIpTbFzgDTiY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=NYGtS06H; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58M8vloL022855
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 13:40:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	wck1RFL3Etc5iANJFBisnl6A9QEEqYSWtMuEcnVHG7E=; b=NYGtS06HtujpjOy7
	EaoMP5NEqsjM5+zsN1ce45OXw/3Z9TlNtgIumlgKxHX//KFHHzHW+xmQr28/ArdH
	0Whc8vUWcy0pgIrlBvaqAsDmfJfyv7WciT6wvZeROXDrRCyEr8BpIzr7tm4PRsGy
	+7S9JnKlXrX68Y5kTbKezzUPPCoDQJh9cHAUTIrX+fdDAfZ8RRD379r8TVhkknKD
	aGpDMz1l9xnB6/sKJa6gFskwBkXQaKVAKbjBBasf+CizCXLByRl+tUcFAvfLX2pA
	TlYTDfdaY8+NFfq2nNxMzjosgWykffDR3DrQIPYRA8iembPFe4H1EkHlK7Pv7xvO
	n/T50A==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499hmnn675-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 13:40:41 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-244581ce13aso81279265ad.2
        for <devicetree@vger.kernel.org>; Mon, 22 Sep 2025 06:40:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758548440; x=1759153240;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=wck1RFL3Etc5iANJFBisnl6A9QEEqYSWtMuEcnVHG7E=;
        b=Hi4Jk3oLgodtIv1nBDHk6AF71zW9EP11qhPc5SXE8e1ITHd8G7Bg96z5vTWXW+q+4/
         9NTfIWuWnIFF8tc0iJpIcVcHVrWgeGbVkoi3i5FaGGWNCTsdVh6wfAEf2Y4yhJqpx+p/
         gRvg2/lC6o29YbyChvr5DLPsYcBm/7mpmTWKBoOyTYbLzadFjqji8uVN7vzC3x0fWeOP
         a9hdVJe8kf/1p2NXGjgV4FXkmMsQlHNpTzJwbYTMxzAnDAGWprHj3kTWQDmqcRj5X3At
         0XeS8APrqPZ8bOjpynToOXFlUdkQCBuvBfRZt0t1WIFircdzX6F9TZsyKY/0AKarl/sb
         8SNg==
X-Forwarded-Encrypted: i=1; AJvYcCUasSf5fpRIM0I3Uri4rZEuOiUrFCxLh3MIdioF8MRrAapPnRLXhzkcHcLbr1OhT/XBHRU1z1euj8P5@vger.kernel.org
X-Gm-Message-State: AOJu0YynKLWOIIYi6X5fBAjkZt9sEp+AcuERr9fQ4wj5vEhCZmBFxuH2
	F/yIr5Y/gOwqqPPn3RalDjSSnd8Jm/sccgl5JFhkMmb6XVynR08u5KW8WI0DL06EZDAW9yJ3k3s
	ebz6JcyIlEkWvEcVaNoa6UiDkJoT3Pi9873W4qAKtGwUakVvJDdK/5rkw+Gj88Gud
X-Gm-Gg: ASbGncs8Fd2p+7kouMLBS9zX4EYu5Wbpzo5qF4y1h170af9AR99rIXV2fE1nz4BDtS/
	Rkm6SazskqF252vTzr+HhBu3SY2fu8gTxTvR2RtBFaxWV+xpdr/cT/76DyEJEUUB0hXA9wIORc6
	JJJ8DWaEZsZ3V9yhm6LklRJuuiBuPxdAmAVh9CFMYQepU9qOnykCbB1+lrB4ibh74PsQ7H3riAP
	CmIpae8ZjkjSFNqyxZqKeV84FLzDMxK8h6ehlIee+vb4rksxaaT+7WvcrVjyR60eIHtb2Ayy47W
	jFv6q6TJpDsjPQK2k3ySwAcNC1VKzrOG5uipwpzBlUboPliM4ns2GAez/7AeRBRDaP8R8rsKNJL
	K
X-Received: by 2002:a17:903:2342:b0:265:982a:d450 with SMTP id d9443c01a7336-269ba533c6cmr153441565ad.40.1758548440178;
        Mon, 22 Sep 2025 06:40:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHo2/a4BVdjp6tjYR2Y07Siikp43uvotxG3p+AwbYTvOOPwZqz5VaSP3wBnmdNsJoZXYNxiFg==
X-Received: by 2002:a17:903:2342:b0:265:982a:d450 with SMTP id d9443c01a7336-269ba533c6cmr153440945ad.40.1758548439664;
        Mon, 22 Sep 2025 06:40:39 -0700 (PDT)
Received: from hu-spratap-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2698016c13asm134246755ad.46.2025.09.22.06.40.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Sep 2025 06:40:39 -0700 (PDT)
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
Date: Mon, 22 Sep 2025 19:10:11 +0530
Subject: [PATCH v15 01/14] power: reset: reboot-mode: Synchronize list
 traversal
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250922-arm-psci-system_reset2-vendor-reboots-v15-1-7ce3a08878f1@oss.qualcomm.com>
References: <20250922-arm-psci-system_reset2-vendor-reboots-v15-0-7ce3a08878f1@oss.qualcomm.com>
In-Reply-To: <20250922-arm-psci-system_reset2-vendor-reboots-v15-0-7ce3a08878f1@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758548419; l=5404;
 i=shivendra.pratap@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=+LF5Rl/5f5znpMQv1GLZ4NG0dpObtQwZ7SckbxZ5OJg=;
 b=yzvvk3xOQzGRIfbypo337GvXrt2u9sEAEj3aA6MIS0LHEOylzx77NGaQMiaatRSoiCZG1XFdY
 RBTwjziAxJgBmHAO5r5GKKjyxKj4zbZtbDfuYZM8V2wAKDMIVJwAOq8
X-Developer-Key: i=shivendra.pratap@oss.qualcomm.com; a=ed25519;
 pk=CpsuL7yZ8NReDPhGgq6Xn/SRoa59mAvzWOW0QZoo4gw=
X-Authority-Analysis: v=2.4 cv=YPqfyQGx c=1 sm=1 tr=0 ts=68d151d9 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=gP18aZtcJwKeVuiPoooA:9
 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-ORIG-GUID: S1gn53WQff1m_hlL2sNmL447qbO9jGbW
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAwMCBTYWx0ZWRfXws/Rve+g6Jfa
 x/0JQZs+Gkhk1SaIulWSXzuLI+qf1WlCeEQ2S8LUd7v0gTb92Ff8SgvEJCBSWkKSASuPLr0e7d3
 uXsdcz0Q4UhoTIRxzhNcPhiuwRKRoczl7nj7Gede0y1iDIwVH98oH32p92907nkOYngYUs+18hj
 OczQlrASnabAdkUgjKUpI3w+WrkOWsHjkvNjUAfK2IwFxUrF14HNfF6tEt5eLS0iwrMYXGsb8UE
 jWH3pfSA2CTPcC6iKNMhz9PkqDjQWtzi7BmtR+s9Tta6SOXanaRAsM/Jkc++bwTXBTSKNJyb4Iy
 aiUkq5392Roeb0UMJrJZEkXf/OjDIAic7J7IabD6RjYg8fvhwCSZfknv+OGdd8Tb85ZDq7QlBbY
 oylCvbnW
X-Proofpoint-GUID: S1gn53WQff1m_hlL2sNmL447qbO9jGbW
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-22_01,2025-09-22_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0 adultscore=0
 clxscore=1015 impostorscore=0 spamscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200000

List traversals must be synchronized to prevent race conditions
and data corruption. The reboot-mode list is not protected by a
lock currently, which can lead to concurrent access and race.

Introduce a mutex lock to guard all operations on the reboot-mode
list and ensure thread-safe access. The change prevents unsafe
concurrent access on reboot-mode list.

Fixes: 4fcd504edbf7 ("power: reset: add reboot mode driver")
Fixes: ca3d2ea52314 ("power: reset: reboot-mode: better compatibility with DT (replace ' ,/')")

Signed-off-by: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
---
 drivers/power/reset/reboot-mode.c | 96 +++++++++++++++++++++------------------
 include/linux/reboot-mode.h       |  4 ++
 2 files changed, 57 insertions(+), 43 deletions(-)

diff --git a/drivers/power/reset/reboot-mode.c b/drivers/power/reset/reboot-mode.c
index fba53f638da04655e756b5f8b7d2d666d1379535..8fc3e14638ea757c8dc3808c240ff569cbd74786 100644
--- a/drivers/power/reset/reboot-mode.c
+++ b/drivers/power/reset/reboot-mode.c
@@ -29,9 +29,11 @@ static unsigned int get_reboot_mode_magic(struct reboot_mode_driver *reboot,
 	if (!cmd)
 		cmd = normal;
 
-	list_for_each_entry(info, &reboot->head, list)
-		if (!strcmp(info->mode, cmd))
-			return info->magic;
+	scoped_guard(mutex, &reboot->rb_lock) {
+		list_for_each_entry(info, &reboot->head, list)
+			if (!strcmp(info->mode, cmd))
+				return info->magic;
+	}
 
 	/* try to match again, replacing characters impossible in DT */
 	if (strscpy(cmd_, cmd, sizeof(cmd_)) == -E2BIG)
@@ -41,9 +43,11 @@ static unsigned int get_reboot_mode_magic(struct reboot_mode_driver *reboot,
 	strreplace(cmd_, ',', '-');
 	strreplace(cmd_, '/', '-');
 
-	list_for_each_entry(info, &reboot->head, list)
-		if (!strcmp(info->mode, cmd_))
-			return info->magic;
+	scoped_guard(mutex, &reboot->rb_lock) {
+		list_for_each_entry(info, &reboot->head, list)
+			if (!strcmp(info->mode, cmd_))
+				return info->magic;
+	}
 
 	return 0;
 }
@@ -78,46 +82,50 @@ int reboot_mode_register(struct reboot_mode_driver *reboot)
 
 	INIT_LIST_HEAD(&reboot->head);
 
-	for_each_property_of_node(np, prop) {
-		if (strncmp(prop->name, PREFIX, len))
-			continue;
-
-		info = devm_kzalloc(reboot->dev, sizeof(*info), GFP_KERNEL);
-		if (!info) {
-			ret = -ENOMEM;
-			goto error;
-		}
-
-		if (of_property_read_u32(np, prop->name, &info->magic)) {
-			dev_err(reboot->dev, "reboot mode %s without magic number\n",
-				info->mode);
-			devm_kfree(reboot->dev, info);
-			continue;
-		}
-
-		info->mode = kstrdup_const(prop->name + len, GFP_KERNEL);
-		if (!info->mode) {
-			ret =  -ENOMEM;
-			goto error;
-		} else if (info->mode[0] == '\0') {
-			kfree_const(info->mode);
-			ret = -EINVAL;
-			dev_err(reboot->dev, "invalid mode name(%s): too short!\n",
-				prop->name);
-			goto error;
+	mutex_init(&reboot->rb_lock);
+
+	scoped_guard(mutex, &reboot->rb_lock) {
+		for_each_property_of_node(np, prop) {
+			if (strncmp(prop->name, PREFIX, len))
+				continue;
+
+			info = devm_kzalloc(reboot->dev, sizeof(*info), GFP_KERNEL);
+			if (!info) {
+				ret = -ENOMEM;
+				goto error;
+			}
+
+			if (of_property_read_u32(np, prop->name, &info->magic)) {
+				dev_err(reboot->dev, "reboot mode %s without magic number\n",
+					info->mode);
+				devm_kfree(reboot->dev, info);
+				continue;
+			}
+
+			info->mode = kstrdup_const(prop->name + len, GFP_KERNEL);
+			if (!info->mode) {
+				ret =  -ENOMEM;
+				goto error;
+			} else if (info->mode[0] == '\0') {
+				kfree_const(info->mode);
+				ret = -EINVAL;
+				dev_err(reboot->dev, "invalid mode name(%s): too short!\n",
+					prop->name);
+				goto error;
+			}
+
+			list_add_tail(&info->list, &reboot->head);
 		}
 
-		list_add_tail(&info->list, &reboot->head);
-	}
-
-	reboot->reboot_notifier.notifier_call = reboot_mode_notify;
-	register_reboot_notifier(&reboot->reboot_notifier);
+		reboot->reboot_notifier.notifier_call = reboot_mode_notify;
+		register_reboot_notifier(&reboot->reboot_notifier);
 
-	return 0;
+		return 0;
 
 error:
-	list_for_each_entry(info, &reboot->head, list)
-		kfree_const(info->mode);
+		list_for_each_entry(info, &reboot->head, list)
+			kfree_const(info->mode);
+	}
 
 	return ret;
 }
@@ -133,8 +141,10 @@ int reboot_mode_unregister(struct reboot_mode_driver *reboot)
 
 	unregister_reboot_notifier(&reboot->reboot_notifier);
 
-	list_for_each_entry(info, &reboot->head, list)
-		kfree_const(info->mode);
+	scoped_guard(mutex, &reboot->rb_lock) {
+		list_for_each_entry(info, &reboot->head, list)
+			kfree_const(info->mode);
+	}
 
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


