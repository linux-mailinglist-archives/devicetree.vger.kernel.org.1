Return-Path: <devicetree+bounces-194892-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id CECCEAFFDBF
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 11:18:07 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3F33D1C28614
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 09:18:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8B79D291C1C;
	Thu, 10 Jul 2025 09:17:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VMahjaXq"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F32CC1EF39F
	for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 09:17:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752139029; cv=none; b=gVk7MUCEzAFRcDPvILz/IwpjOwNwEIU3doj3TzDZ3HoGnATWPwIZYT/HnlHhwbuuL4Q8nQNJbIyDRsTIBQKGdUwUYrTUSzuqMIT9Ct6EdTQrZWbbwix6RN0xjYP2mtUkOGG/WiqQMfNHKwyXaqAjWAzJbQ2s8z5n+oymY/p6Lqs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752139029; c=relaxed/simple;
	bh=Ybw+njJawUkDJ2EQIbedFhNekca67Tu3POKilli7L+k=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=g7e/4wr0waHcHLVdKtcWg5Stln6zkrnaAmpIFS+snGXox4+1+49ER1HZF0liBn6GtzjA9gwbbWih/i8w1NQvda1RPkifrP/wvbq32ACEPs8cFnzZN9TzHDReoHtXjunBRWZpDgGcI97RiAQ1Hd9/JXgHM9JO3HhglWKePbjpX8I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VMahjaXq; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56A0n4PC017174
	for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 09:17:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	+Mf1tUCyPlRBD7uh7eZr0NKbyyezdmIRIQMRpteYEvo=; b=VMahjaXqgpX68aY8
	Lb/ksRM5tnwkuGncVOPSKi/u1EmtxqbncDxA6/Jc7xl4hg5136BZtkBeKoBeXqZG
	QHyUDI25izQBtZSk/2FI45c8ypXLZAM1fkF3VYdAkjnBNJtekmLwnL2MSz1SeIf7
	Jm2eWkdg46hQ0rp9qt9d9vYF+PebWBD5h8/kMzdcU3dd6o+KihZ0lpu/dQ4nzkUN
	2mYf7Ne8VIzw1U/pIVDIzd4pByM+X/guU0AXAPmFeSy6l0A+nhCUmbIJEvZwFDg5
	XfpaS/w2SGcWuHY4ZWTe/bCTDGwfW2xehETqrEbu9oILa1ohGINfF7UTVsJRWvim
	WpFzeg==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47smbnvba0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 09:17:06 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b31c38d4063so643537a12.3
        for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 02:17:06 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752139024; x=1752743824;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+Mf1tUCyPlRBD7uh7eZr0NKbyyezdmIRIQMRpteYEvo=;
        b=UOOntKdSpAEJUqCk3RQtd9x6FHEdXcBP+QWQ88RlRe+quckfpO012IpWsg6KMfzzin
         +xFS3dAD4FGot2516mtUietmO5BexVhVwLUsqyXdJScEZq5umnGDE+nK18CVqSV8pMcC
         OaXrZUWJfihZoTXIt5LiZEIxm1oKhzKYw8XDmHj3I3BxpzHYkW7F7LaJTyJFmFeVPnBa
         fWJn5K06RRE7lTZHvh787jgYNtrUEP2Da1GfRhiPUcqRQlEJGWdBGBVTTUS9HzDm4j1m
         95DS6nrqUcHWk/sh9c5LCcviRB/rHDCTa1g0ZE57APF1cDDovshqb//XzRPXQe/IQlWt
         oGUA==
X-Forwarded-Encrypted: i=1; AJvYcCWMwy2CXXirt0VLPVpljVBgWoqx5fpmm8vg6mQZhSyCZFTzRnbUOyho873XS29zMe+ug7KJWD+PrxKb@vger.kernel.org
X-Gm-Message-State: AOJu0Yzql/BvPuWWyU0mLU8p3qVGaREi9cKsus3GeifS9Z7DfhiawYdF
	l70qqGSyXPbZaHaAkSnDi+UVFq+RfyN5DxJNqDrhh59pX3Vp1nYKbCH/7oZx/7pKGrbjy+x+7q/
	suULXqK+Phbf4KqVUaudfSavfzDxU8MDXyGMeqLRRWRfOufi1tS1tKNDJouF7BDQNUbhmmdJW
X-Gm-Gg: ASbGncuF6ffR34bbUNrvNzr/yZmJsQgI80wK0oZ4sfFZBzhYtBnLbbvMyrb4pmL7WgI
	SMYBeEhbbmWP/jM0NU0cQSmRpbeYLdDk0nAYCOZ+xvX7zlYDo8fR7Jdxj/KnciICE0u/Xii4L/k
	b+nO6mmcUpHyfhEzPDsOfmqk1BX1IkvYhDXhjbcLshKpLv6zE4EQ78eTIUDBTzc8bPufMgOLmUz
	miq2p4/fIqU2VA0r6v66x+IOpHFeCKlczgOepLJliQlbbnXnqLWXfNei5ba11MxgvAMcoOeRWbn
	r/UgNnXVMV4ydt8xEuY0oBMKyRRmcaD2tjWkHVBCiJkrD5xT1rk4mieY48c=
X-Received: by 2002:a17:903:11d0:b0:235:7c6:ebdb with SMTP id d9443c01a7336-23de47cd531mr27606155ad.10.1752139024256;
        Thu, 10 Jul 2025 02:17:04 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFaTKG1M836vj85DWnJt0R7I4oMnJq5iahq76ixet4o2OdBW9MxUH5ZENGIwQnEllXEhSYfyQ==
X-Received: by 2002:a17:903:11d0:b0:235:7c6:ebdb with SMTP id d9443c01a7336-23de47cd531mr27605765ad.10.1752139023772;
        Thu, 10 Jul 2025 02:17:03 -0700 (PDT)
Received: from hu-spratap-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23de4341d51sm14837765ad.189.2025.07.10.02.16.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jul 2025 02:17:03 -0700 (PDT)
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
Date: Thu, 10 Jul 2025 14:45:45 +0530
Subject: [PATCH v10 03/10] power: reset: reboot-mode: Add optional cookie
 argument
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250710-arm-psci-system_reset2-vendor-reboots-v10-3-b2d3b882be85@oss.qualcomm.com>
References: <20250710-arm-psci-system_reset2-vendor-reboots-v10-0-b2d3b882be85@oss.qualcomm.com>
In-Reply-To: <20250710-arm-psci-system_reset2-vendor-reboots-v10-0-b2d3b882be85@oss.qualcomm.com>
To: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Sebastian Reichel <sre@kernel.org>, Rob Herring <robh@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Souvik Chakravarty <Souvik.Chakravarty@arm.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Andy Yan <andy.yan@rock-chips.com>,
        Mark Rutland <mark.rutland@arm.com>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        Konrad Dybcio <konradybcio@kernel.org>,
        cros-qcom-dts-watchers@chromium.org, Vinod Koul <vkoul@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Florian Fainelli <florian.fainelli@broadcom.com>,
        Elliot Berman <elliotb317@gmail.com>
Cc: Stephen Boyd <swboyd@chromium.org>, linux-pm@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        Andre Draszik <andre.draszik@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        linux-samsung-soc@vger.kernel.org, Wei Xu <xuwei5@hisilicon.com>,
        linux-rockchip@lists.infradead.org,
        Baolin Wang <baolin.wang@linux.alibaba.com>,
        Sen Chu <sen.chu@mediatek.com>, Sean Wang <sean.wang@mediatek.com>,
        Macpaul Lin <macpaul.lin@mediatek.com>,
        AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>,
        Ray Jui <rjui@broadcom.com>, Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        Elliot Berman <quic_eberman@quicinc.com>,
        Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>,
        Srinivas Kandagatla <srini@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752138982; l=4147;
 i=shivendra.pratap@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=Ybw+njJawUkDJ2EQIbedFhNekca67Tu3POKilli7L+k=;
 b=YFgAo1XczR69Kp0uIrUveOMYfDOdwaOYVutqLUFprgRmdRqIgHvcUhdeVirp5t0t+SejIfQMq
 ReHm/DNkrNjBb1zWeD+v46tG3Z6QZCEZi2q4dlboOoqyuJ8ZGkvyl9N
X-Developer-Key: i=shivendra.pratap@oss.qualcomm.com; a=ed25519;
 pk=CpsuL7yZ8NReDPhGgq6Xn/SRoa59mAvzWOW0QZoo4gw=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzEwMDA3OSBTYWx0ZWRfXzfMo9uQngW1j
 xXcLS3Nn8ZI6g/PjYA5DqGUOAAWsvanD5i9LaZ//Uv54IO0NNUhQiF7PLJYHBpwjVg1SbZ5Zumf
 Dg7h2oFvGedGZdpBbmopr+4taodHu1m1mE960zaTIqa2CBaxwkVyouNPqJdANfRid7mBF4hoAju
 JGJkvcFdm1Fvj9YoG8bSp0qkHRXs9OsBSdIXO+6J1sQmnhlAl4OxbWZhG6eW10gq9sgFEAtngOH
 22iKCOnpdrjsHlI1LZdbLhDCeJHBj9MWUlI8iqAQeg2djL4gKBVQghWhR+p9KFiiYDl3hacJ2x1
 86trviAtUXac7LjYgmgHBZ0T4/TdF791IjdpRaTu7Nku5TRYsu5NSt0I6DB4Z9fA1uZLrFvomfV
 uuuoWu5GhOl1h6rt8g98TLl/imrXAloeg8uNET12tCFo1u0CgMX5ZAzZLfuSE7kQH5jgaXtP
X-Authority-Analysis: v=2.4 cv=QM1oRhLL c=1 sm=1 tr=0 ts=686f8512 cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=VUHD6Ma6yzaK34Q8qnAA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-ORIG-GUID: xMlQGhf8kV9aTLNYb917Z5bAACKRcA31
X-Proofpoint-GUID: xMlQGhf8kV9aTLNYb917Z5bAACKRcA31
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-10_01,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1011 impostorscore=0 malwarescore=0 suspectscore=0
 lowpriorityscore=0 priorityscore=1501 bulkscore=0 adultscore=0 mlxscore=0
 phishscore=0 mlxlogscore=999 spamscore=0 classifier=spam authscore=0
 authtc=n/a authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507100079

Current reboot-mode driver supports a single argument(magic) for
each reboot-mode. There may be uses-cases where a mode requires
an additional argument and hence may not be able to use the
reboot-mode driver. For example, ARM PSCI vendor-specific resets,
need two arguments for its operation – reset_type and cookie, to
complete the reset operation. If a driver wants to implement this
firmware-based reset, it cannot use reboot-mode framework.

Add support for storing an additional optional argument (cookie)
for each reboot-mode and introduce a write function in
reboot-mode that writes two arguments for each reboot-mode
command. Implement the read and store of additional cookie value
for each reboot-mode defined in the device tree. In case there is
no cookie specified in the reboot-mode device tree, mark the
cookie as invalid to support backward compatibility.

Signed-off-by: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
---
 drivers/power/reset/reboot-mode.c | 32 ++++++++++++++++++++++----------
 include/linux/reboot-mode.h       |  2 ++
 2 files changed, 24 insertions(+), 10 deletions(-)

diff --git a/drivers/power/reset/reboot-mode.c b/drivers/power/reset/reboot-mode.c
index 61f647b23959789a313f3af0bd967abcad45fa43..afadd823d62d0f7e7e645746b978cc8fecfb9ac4 100644
--- a/drivers/power/reset/reboot-mode.c
+++ b/drivers/power/reset/reboot-mode.c
@@ -17,11 +17,12 @@
 struct mode_info {
 	const char *mode;
 	u32 magic;
+	u32 cookie;
+	bool is_cookie_valid;
 	struct list_head list;
 };
 
-static unsigned int get_reboot_mode_magic(struct reboot_mode_driver *reboot,
-					  const char *cmd)
+static struct mode_info *get_reboot_mode_info(struct reboot_mode_driver *reboot, const char *cmd)
 {
 	const char *normal = "normal";
 	struct mode_info *info;
@@ -32,11 +33,11 @@ static unsigned int get_reboot_mode_magic(struct reboot_mode_driver *reboot,
 
 	list_for_each_entry(info, &reboot->head, list)
 		if (!strcmp(info->mode, cmd))
-			return info->magic;
+			return info;
 
 	/* try to match again, replacing characters impossible in DT */
 	if (strscpy(cmd_, cmd, sizeof(cmd_)) == -E2BIG)
-		return 0;
+		return NULL;
 
 	strreplace(cmd_, ' ', '-');
 	strreplace(cmd_, ',', '-');
@@ -44,21 +45,27 @@ static unsigned int get_reboot_mode_magic(struct reboot_mode_driver *reboot,
 
 	list_for_each_entry(info, &reboot->head, list)
 		if (!strcmp(info->mode, cmd_))
-			return info->magic;
+			return info;
 
-	return 0;
+	return NULL;
 }
 
 static int reboot_mode_notify(struct notifier_block *this,
 			      unsigned long mode, void *cmd)
 {
 	struct reboot_mode_driver *reboot;
-	unsigned int magic;
+	struct mode_info *info;
 
 	reboot = container_of(this, struct reboot_mode_driver, reboot_notifier);
-	magic = get_reboot_mode_magic(reboot, cmd);
-	if (magic)
-		reboot->write(reboot, magic);
+	info = get_reboot_mode_info(reboot, cmd);
+	if (info) {
+		if (info->is_cookie_valid) {
+			reboot->write_with_cookie(reboot, info->magic, info->cookie);
+		} else {
+			if (info->magic)
+				reboot->write(reboot, info->magic);
+		}
+	}
 
 	return NOTIFY_DONE;
 }
@@ -95,6 +102,11 @@ int reboot_mode_register(struct reboot_mode_driver *reboot, struct device_node *
 			continue;
 		}
 
+		if (of_property_read_u32_index(np, prop->name, 1, &info->cookie))
+			info->is_cookie_valid = false;
+		else
+			info->is_cookie_valid = true;
+
 		info->mode = kstrdup_const(prop->name + len, GFP_KERNEL);
 		if (!info->mode) {
 			ret =  -ENOMEM;
diff --git a/include/linux/reboot-mode.h b/include/linux/reboot-mode.h
index 36f071f4b82e1fc255d8dd679a18e537655c3179..cfe18cdc2559be249969bba6c022940a508dd188 100644
--- a/include/linux/reboot-mode.h
+++ b/include/linux/reboot-mode.h
@@ -6,6 +6,8 @@ struct reboot_mode_driver {
 	struct device *dev;
 	struct list_head head;
 	int (*write)(struct reboot_mode_driver *reboot, unsigned int magic);
+	int (*write_with_cookie)(struct reboot_mode_driver *reboot,
+				 unsigned int magic, unsigned int cookie);
 	struct notifier_block reboot_notifier;
 };
 

-- 
2.34.1


