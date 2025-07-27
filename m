Return-Path: <devicetree+bounces-199992-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1BD76B13086
	for <lists+devicetree@lfdr.de>; Sun, 27 Jul 2025 18:27:19 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id C0D9C17831D
	for <lists+devicetree@lfdr.de>; Sun, 27 Jul 2025 16:27:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B02821D3E9;
	Sun, 27 Jul 2025 16:26:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RpdS1mly"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C5542248AE
	for <devicetree@vger.kernel.org>; Sun, 27 Jul 2025 16:25:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753633559; cv=none; b=VHKajkCiN1sNqs+m/SZK3fodeL9EY7vDUCoeNy8n/XJ22j5MMj3uHpASjosDLvdQcU0Z8wvGwPYXx+T7sqAMNRrRnbR6h8TDNe1O8bETfIXwCS+uA71HsIUguf1O2IfyG3MzsoKa0b03jXhgYPZyvv8NlnalocMVH4qcCKgrniY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753633559; c=relaxed/simple;
	bh=+KHfR7YYD+HrcoWjVGljO4mWJmBVgezl4q//08Hz/cA=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=DzF5k4+HFAcVJfEuedO1pwF9HzuNsBPf/tX3vxiP4b1j1wsyulF/V3Nbi3dWTP+hW88KEwcan3OYYnRbopCIJnw8KAvmZL3QmAO2hxaZwQ9OASyDh0e4Q2LZQeSZMjR5VKDdMyAbBZSU7AdfixX2AOIHsxlYpV2oAc0FEfGC0Fo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RpdS1mly; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56RCpvW2029754
	for <devicetree@vger.kernel.org>; Sun, 27 Jul 2025 16:25:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Gc7Yk0tdJEh2i043+CGDqIsAu2bVqNeh81O1rVbonp4=; b=RpdS1mlymp2idYha
	E4d1zbOJta6tFlbE8A8sQAawxgBHCK+MwVNgjnmz8MTi3R64v3Z8Eohnd5L89uzB
	lw5oHluHZNb+MhkKzhr9rCu/qtt0hPnnwaBXL27nPN/BFSvk3TXEEV2A3+/PI/zo
	pdPgTSYhVqMCsd804qXnWEtp740OjV++9ThLfjzESs8M9DY+eyZ71TYDo7g5Y126
	46qpSum4HdetuQJzKcj1gCU40rPyqIwXqQMP3FHTa0PmcamafDdtthfXnIMxDpvp
	1e2iyHU4ql8emTyU6y0yMORGJv3WH9prDkIoCP49DBBjRTRJb1DyULRv8Leu2/9w
	miSV6w==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484racj9m3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 27 Jul 2025 16:25:57 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-24004ac2ecdso7947985ad.0
        for <devicetree@vger.kernel.org>; Sun, 27 Jul 2025 09:25:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753633557; x=1754238357;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Gc7Yk0tdJEh2i043+CGDqIsAu2bVqNeh81O1rVbonp4=;
        b=GWzV+tiWuAv7gnNonqTFLwuZKsqcncb9yPPkXGeQcBkajo2Hc5XwvwOn7mADQt6Hn8
         XwRwVBlZFwZ2GApCrsaedgPJst7g1dFzy5jqFeEUjDpHyM4KJUC4MMPClrn+EIHdXNAz
         3W1WKwYfISmFWiInh81vTm4oN7fIEw/gaBn25oBEsu5GyQ1Fj3F9M1RMyneSi/ZzysSg
         0JEGKIk7erxJ3j1LBq2iJnwbGJEYB0HLrv3TR88whJqydnS74EqrrR+558FVU55lBqyI
         BCFmHq33daZs3EQzraIIQ1RP0qROzcwvqRJnV6hN3AZG7s+q7cNdAXYZN5hnrydOS3iM
         M3Bw==
X-Forwarded-Encrypted: i=1; AJvYcCXHdZcFxhfOBDDpn2JJzaFY/qGZ+jQdYrXQq4kYgf+lVFMLO9e9LShGmX5HsPR7p0mt5yyVOVdCPrv0@vger.kernel.org
X-Gm-Message-State: AOJu0YweA8snTmsIlbH2fWfEEW+Ee2IhS9wNbs7xrcKhl6pVpvlFYhdK
	prb2+97pYvcEwUQlsA6VYLOQKAtgntY11rH1VWGI8XpTDPEvCgQX+mDGJcGNo5m++9N6YG7Lkmy
	ZVm6SUKnNMAoSbiRIco+Jb526iupwjzXCM5FdqL1neDwli/8gkyHkEk36L9yHyI+9
X-Gm-Gg: ASbGncvFEGKTwxrIwXdW1J8bh0z79XbeIiByhJadnyPMhhA2oO4SnPeDNoBgzjkUdVi
	03gv8hxlXFUr+p26YIprO6cbrIczCVOEXlGycPbMKIIdV5NFKBvxW8giwtx059WOW7ZBNX9Jq/2
	oYZKh9P0bT9pcZ2netNDcN+XW7+EEKaepNmvX3HaLbHLVJEkI9keMM0CJy82nYN7LBxN0DgIHJZ
	t/TCz/5U4nT9dLu4jkh9MYyZKxbUmRClDL9ICeZkl3/ER6CKiJGUo75GTTj2SWM6uZLR6eNeAEE
	yRuTHe3oW/yoncKb5WgK56/uSkh8/uoIfc9MDApMrs3tjhlaAPFQcCOw++IIT4xJAQmJvOYvCJS
	k
X-Received: by 2002:a17:902:db12:b0:240:1441:1263 with SMTP id d9443c01a7336-240144115f8mr27743745ad.50.1753633556665;
        Sun, 27 Jul 2025 09:25:56 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHn1iTzmUSFNFbd3ipwa4rZSJcimOt/VUock6+Z1tVlZwgy+X3u+ZNaz/MM8wr2kq1viBngjg==
X-Received: by 2002:a17:902:db12:b0:240:1441:1263 with SMTP id d9443c01a7336-240144115f8mr27743135ad.50.1753633556115;
        Sun, 27 Jul 2025 09:25:56 -0700 (PDT)
Received: from hu-spratap-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23fd9397ebbsm29110325ad.210.2025.07.27.09.25.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Jul 2025 09:25:55 -0700 (PDT)
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
Date: Sun, 27 Jul 2025 21:54:50 +0530
Subject: [PATCH v13 07/10] firmware: psci: Implement vendor-specific resets
 as reboot-mode
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250727-arm-psci-system_reset2-vendor-reboots-v13-7-6b8d23315898@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1753633495; l=4777;
 i=shivendra.pratap@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=+KHfR7YYD+HrcoWjVGljO4mWJmBVgezl4q//08Hz/cA=;
 b=dlmeEc85Tf8+gvzUvKK1aMpV+xuClWa/Th4ihsRT8Ezne4CvP1qA7JZdX5O1gHgnHKHU7hkOo
 zgSfl1Qjv44C6njn1gnhNTZqnu2HRx/cdPpRXp3S6baG3nW52Dqo4nU
X-Developer-Key: i=shivendra.pratap@oss.qualcomm.com; a=ed25519;
 pk=CpsuL7yZ8NReDPhGgq6Xn/SRoa59mAvzWOW0QZoo4gw=
X-Authority-Analysis: v=2.4 cv=WqsrMcfv c=1 sm=1 tr=0 ts=68865315 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=EdS2NIbk_1D2FrBATFAA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: OPkUhi49VStFSE39hXuM9V0WjmhyrkvJ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI3MDE0NiBTYWx0ZWRfX57XAp/bmS9QX
 G81tu6DKmulc2sJIpsmdUbWSHvdMTXlhUAtupXMUZJcbjwRvz3JGg22PHBswwjeN3Jngj+Frf5L
 jL83fr5CdUZU+cIV58znmELODXiKmk86FJSLJk1bO7UrHfnB/qRXIZkqCS02N5c0hzjxPCBaKga
 zbTHvJVBm14FSqLhG1t8DDiYjU1FoS7YPNu9g97TOtwpXC2Vupm0r04iB5ZJEUMTzDQHa/9SB50
 0sPnKfYO1GbPc69x6YdbTPg5oBbeohRigKCSpMhtTnc3zTbGDoIe2idUVqQ0K0qB8O9XXZw9MpR
 MPo1B8sALn8SKpqEa0d9W5p75qOobBlMVl8FkT9iBH8dMaYTJ33r1oZ5y4kUh9lyF206UxCiGLo
 aHEmjWsdZOFhQX/9mWC9Hv646vLoSg1U8tQKsUR86AlPwthp11siUn9GQzMWMWCNY6PbzQxR
X-Proofpoint-ORIG-GUID: OPkUhi49VStFSE39hXuM9V0WjmhyrkvJ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-27_05,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 suspectscore=0 lowpriorityscore=0
 clxscore=1015 mlxlogscore=999 impostorscore=0 mlxscore=0 malwarescore=0
 adultscore=0 bulkscore=0 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507270146

SoC vendors have different types of resets which are controlled
through various hardware registers. For instance, Qualcomm SoC
may have a requirement that reboot with “bootloader” command
should reboot the device to bootloader flashing mode and reboot
with “edl” should reboot the device into Emergency flashing mode.
Setting up such reboots on Qualcomm devices can be inconsistent
across SoC platforms and may require setting different HW
registers, where some of these registers may not be accessible to
HLOS. These knobs evolve over product generations and require
more drivers. PSCI spec defines, SYSTEM_RESET2, vendor-specific
reset which can help align this requirement. Add support for PSCI
SYSTEM_RESET2, vendor-specific resets and align the implementation
to allow user-space initiated reboots to trigger these resets.

Introduce a late_initcall to register PSCI vendor-specific resets
as reboot modes. Implement a reboot-mode write function that sets
reset_type and cookie values during the reboot notifier callback.
Introduce a firmware-based call for SYSTEM_RESET2 vendor-specific
reset in the psci_sys_reset path, using reset_type and cookie if
supported by secure firmware.

By using the above implementation, userspace will be able to issue
such resets using the reboot() system call with the "*arg"
parameter as a string based command. The commands can be defined
in PSCI device tree node as “reset-types” and are based on the
reboot-mode based commands.

Signed-off-by: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
---
 drivers/firmware/psci/Kconfig |  2 ++
 drivers/firmware/psci/psci.c  | 57 ++++++++++++++++++++++++++++++++++++++++++-
 2 files changed, 58 insertions(+), 1 deletion(-)

diff --git a/drivers/firmware/psci/Kconfig b/drivers/firmware/psci/Kconfig
index 97944168b5e66aea1e38a7eb2d4ced8348fce64b..93ff7b071a0c364a376699733e6bc5654d56a17f 100644
--- a/drivers/firmware/psci/Kconfig
+++ b/drivers/firmware/psci/Kconfig
@@ -1,6 +1,8 @@
 # SPDX-License-Identifier: GPL-2.0-only
 config ARM_PSCI_FW
 	bool
+	select POWER_RESET
+	select REBOOT_MODE
 
 config ARM_PSCI_CHECKER
 	bool "ARM PSCI checker"
diff --git a/drivers/firmware/psci/psci.c b/drivers/firmware/psci/psci.c
index 38ca190d4a22d6e7e0f06420e8478a2b0ec2fe6f..e14bcdbec1750db8aa9297c8bcdb242f58cc420e 100644
--- a/drivers/firmware/psci/psci.c
+++ b/drivers/firmware/psci/psci.c
@@ -17,6 +17,7 @@
 #include <linux/printk.h>
 #include <linux/psci.h>
 #include <linux/reboot.h>
+#include <linux/reboot-mode.h>
 #include <linux/slab.h>
 #include <linux/suspend.h>
 
@@ -51,6 +52,14 @@ static int resident_cpu = -1;
 struct psci_operations psci_ops;
 static enum arm_smccc_conduit psci_conduit = SMCCC_CONDUIT_NONE;
 
+struct psci_vendor_sysreset2 {
+	u32 reset_type;
+	u32 cookie;
+	bool valid;
+};
+
+static struct psci_vendor_sysreset2 vendor_reset;
+
 bool psci_tos_resident_on(int cpu)
 {
 	return cpu == resident_cpu;
@@ -309,7 +318,10 @@ static int get_set_conduit_method(const struct device_node *np)
 static int psci_sys_reset(struct notifier_block *nb, unsigned long action,
 			  void *data)
 {
-	if ((reboot_mode == REBOOT_WARM || reboot_mode == REBOOT_SOFT) &&
+	if (vendor_reset.valid && psci_system_reset2_supported) {
+		invoke_psci_fn(PSCI_FN_NATIVE(1_1, SYSTEM_RESET2), vendor_reset.reset_type,
+			       vendor_reset.cookie, 0);
+	} else if ((reboot_mode == REBOOT_WARM || reboot_mode == REBOOT_SOFT) &&
 	    psci_system_reset2_supported) {
 		/*
 		 * reset_type[31] = 0 (architectural)
@@ -547,6 +559,49 @@ static const struct platform_suspend_ops psci_suspend_ops = {
 	.enter          = psci_system_suspend_enter,
 };
 
+static int psci_set_vendor_sys_reset2(struct reboot_mode_driver *reboot, u64 magic)
+{
+	u32 magic_32;
+
+	if (psci_system_reset2_supported) {
+		magic_32 = magic & 0xFFFFFFFF;
+		vendor_reset.reset_type = PSCI_1_1_RESET_TYPE_VENDOR_START | magic_32;
+		vendor_reset.cookie = (magic >> 32) & 0xFFFFFFFF;
+		vendor_reset.valid = true;
+	}
+
+	return NOTIFY_DONE;
+}
+
+static int __init psci_init_vendor_reset(void)
+{
+	struct reboot_mode_driver *reboot;
+	struct device_node *np;
+	int ret;
+
+	np = of_find_node_by_path("/psci/reboot-mode");
+	if (!np)
+		return -ENODEV;
+
+	reboot = kzalloc(sizeof(*reboot), GFP_KERNEL);
+	if (!reboot) {
+		of_node_put(np);
+		return -ENOMEM;
+	}
+
+	reboot->write = psci_set_vendor_sys_reset2;
+
+	ret = reboot_mode_register(reboot, np, "psci");
+	if (ret) {
+		of_node_put(np);
+		kfree(reboot);
+		return ret;
+	}
+
+	return 0;
+}
+late_initcall(psci_init_vendor_reset)
+
 static void __init psci_init_system_reset2(void)
 {
 	int ret;

-- 
2.34.1


