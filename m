Return-Path: <devicetree+bounces-197324-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 32009B08D6A
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 14:49:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 97F9F4A07C6
	for <lists+devicetree@lfdr.de>; Thu, 17 Jul 2025 12:48:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 677792D6606;
	Thu, 17 Jul 2025 12:48:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="IV7TUvDR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FFC82D8376
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 12:48:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752756500; cv=none; b=QdP4yWMDvBUXb2UObx994YMM63/+rnOBMLojDbe3NU8OHWsIIUY7I1AOrv8iH5ipm2t+AjZmnkEdxmKrhidvVYbEWPEPh/iOGAvtlZsL2Lfm71hqCGpPxhw5C4kvzQJ/2SkTJGwu7e31qBCh1LuPIlWqmLIheeSFOA4LCIbEng8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752756500; c=relaxed/simple;
	bh=vRGudR+4lCF/CFjdEfDPgNRqqgAfbw6WDOCEN0Ok4b4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=MlctP2jvYhlELAPPtNxQBXS+Egn1vqLYgxjCvt/z7Qt0YslMh9FNj+dw9hmepwDzSaiaBLiYzMe1BLj6n9AeeGDjPxZtrlDmpFwvmcnZ6isBNz9SdPX4BRVhautsvtiHd5JNHvFFuRrh2ID6EQn3a8/oEx5Yvvqf/5rDVY9VW+o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=IV7TUvDR; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56H5hiL9022149
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 12:48:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	R1G5wt+CsWrcVcnaihKm5UaXqpfLNEFUHyU0bAvOqxE=; b=IV7TUvDR0s+V1EGx
	kraaD4KbPyxTSj0RoNvIiReG4qMA8GXBCM3mMZrqAICtuFzpEqKHZReV/VXHxCVK
	coM+YWcLgMwOrIJ4DtXsp+2AQGb+8+mMztTpyE3ouHHNaDOa2cYDJro/uRE3R84V
	I6QkQgeNJ2CwPl9ePb12P8ugKangaZJ18HN/d7wfBg7KvED8ih5QBnrE9/YgYNEA
	a4FW+PLV0yACunjuAkahEHN+lmkmQ01V8oC+LFk2CEiwX1h1KhUdmN90dm7UZ0xb
	r45RVK6NXjMZb/N8Wcuu7bxvNZTDYPwlhUNZF9B2ura1YcJDBedTwLB8r+vb9FyQ
	PrWjkw==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ufu8fh2d-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 12:48:17 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-311e98ee3fcso2209655a91.0
        for <devicetree@vger.kernel.org>; Thu, 17 Jul 2025 05:48:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752756496; x=1753361296;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=R1G5wt+CsWrcVcnaihKm5UaXqpfLNEFUHyU0bAvOqxE=;
        b=RjpZdrxpgj08FZ/Rg43naQgQAH4TdyRAypclByXMdnAaKhIIU+4piU2Z7FkUPryxLn
         OjExI/42kmih3nfOyG+KNUlE8X8SU3ut6Cet9rMQGc/fYf9UMRjvxlUm+I3RC+ElClih
         gFRRbLmCqyK1JN+8RpaE+oLu4zYbzTwXXcwXdOkNlbqdV+Y7OIjoOQ95u9wzbpKrWygk
         ryklQefud//4rycWS3KEi+7eGVzPbdI4FgWdfTW9nXlXHF05bx9xpoVtGfT+J7z3qmEh
         g+ojWtV6aTZP0hrJT9dcmfkMi75shUl5god9kBkjkFLmZWMM17a9X70YWkEl0CCpoPKL
         a2rQ==
X-Forwarded-Encrypted: i=1; AJvYcCWW9NoQqgY5M2+eACX0PcUY+2Grw5CrjCwxRYu1jzXQboKvCwn6JtXy66s5cu0qj1ACIWEnIUHvgdhL@vger.kernel.org
X-Gm-Message-State: AOJu0YxS1xa7Q6qUJ4CHRkOYJoZNHGrFAqqACRl+9ry3Pu80Km7tVYyd
	BsQ64Uzs30GNA2TlouXiP+v1O1F8ZwruOejC/5vM/+smzd5iaYKlIz8pCF2cMBdpm6SY9dFzPZN
	DJ4Gz+fkXwFSB0D/H63i0SfJ4STxTMF4e86uOU8B6cTuiA4H4fe+mMietx87g3+OK
X-Gm-Gg: ASbGncv8xI7qEcGh5WV8BLGP6hqOqPr1P557OXP+FyHhZt5747SVl5hENZVkdtXM8OX
	JwyYYW2MwfTNuiHxadpLa7xzcaTHZIZYyAOj22szrVkUAuNJWx6Ib3nVHucauvmQTPHK/83jrPc
	YmH4b1qElo5ziNTV80PxCsk07FtBh4XNgC9brz4qasIaV+/YFz22zCmvgCij+brl+ayAfcThC4C
	mfirWl2p9vukZGZrJxAlnkMdemWmtKOA3gYz+zQJxGzmHcDuP7j2EjwJtdTpLcnL0hvqwmAWRqt
	MjO8c51MU5F9MkJ6bSzats6ljFqA9drJ/PsCEY+eCKXnqagHZbEevEx8qKzdgPoLyWK0ZXGwfx5
	g
X-Received: by 2002:a17:90b:1d91:b0:313:d7ec:b7b7 with SMTP id 98e67ed59e1d1-31caea21192mr4833782a91.13.1752756495921;
        Thu, 17 Jul 2025 05:48:15 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH3rytw7zOtg7Xmx743LeMDSPzC+ugRsDIVSFqGgIoj+8yoPglIf7EpfOaxpi0dHqanWFp4pg==
X-Received: by 2002:a17:90b:1d91:b0:313:d7ec:b7b7 with SMTP id 98e67ed59e1d1-31caea21192mr4833737a91.13.1752756495409;
        Thu, 17 Jul 2025 05:48:15 -0700 (PDT)
Received: from hu-spratap-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-31caf828a0esm1505283a91.42.2025.07.17.05.48.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 17 Jul 2025 05:48:15 -0700 (PDT)
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
Date: Thu, 17 Jul 2025 18:16:50 +0530
Subject: [PATCH v11 4/8] firmware: psci: Implement vendor-specific resets
 as reboot-mode
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Message-Id: <20250717-arm-psci-system_reset2-vendor-reboots-v11-4-df3e2b2183c3@oss.qualcomm.com>
References: <20250717-arm-psci-system_reset2-vendor-reboots-v11-0-df3e2b2183c3@oss.qualcomm.com>
In-Reply-To: <20250717-arm-psci-system_reset2-vendor-reboots-v11-0-df3e2b2183c3@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752756455; l=4666;
 i=shivendra.pratap@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=vRGudR+4lCF/CFjdEfDPgNRqqgAfbw6WDOCEN0Ok4b4=;
 b=OKh/pjXrYEArit7zr7m33XcTU+HzHx1vsKq5fDIex79NvYaBydSHXdfZ/6HqRxS8LAxhfcoeB
 qdpS62xMdWeDv1FlHwDj6hA1ZEKsrTAid1BW/6NnYjepSdI2QniynAr
X-Developer-Key: i=shivendra.pratap@oss.qualcomm.com; a=ed25519;
 pk=CpsuL7yZ8NReDPhGgq6Xn/SRoa59mAvzWOW0QZoo4gw=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE3MDExMiBTYWx0ZWRfXwGJaa4hZu89Z
 P92PLNfoYP6eCDwOlVBGptu3Y4F9l6iapYKRKLxjxA18v4Z/VxyHRSX2hKYxOCsOS8HubTeQfoo
 XEgT8f2yIG0m3jKsMUqlTBdJQGtovskxp7EbkKJk3Qf6GWIFmgeo/Xen8wihyRsjTbrYJwtyhTs
 1iwE0fbIru/vSej6xdlQoMsHHDP+J4t+rA0cCaqsEhUAHYgYSiDydGrSPz625B0qRzc7cugK+1/
 +jl/7vMfT1hN6SHznFEDhUBBjdnbQI/Fgy1IjE4EPG4MKhZMSvJ1oeduyCAU7/P7j4yo3FR61TM
 PclWI4iQdc3nTXz2aWqpOmj+6ZcYWeIVRL/SBGVyVQKWUdEhsC56BQkTC8hFlVnFxg4Aj6Oj5Rt
 ytqLiOm/KPWgwqMYt9k/m+7nmAc45kd4e/7C3cF0G7fwwK2DSgPpsWIAHbF5wiw/+STe0L+o
X-Proofpoint-ORIG-GUID: Kq5EQ1zESG70v2eI09SD0iPFt-5CkqvZ
X-Proofpoint-GUID: Kq5EQ1zESG70v2eI09SD0iPFt-5CkqvZ
X-Authority-Analysis: v=2.4 cv=f59IBPyM c=1 sm=1 tr=0 ts=6878f111 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=ppK30-iitoQuh3faNGMA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-17_01,2025-07-17_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 lowpriorityscore=0 malwarescore=0 spamscore=0 mlxscore=0
 bulkscore=0 suspectscore=0 impostorscore=0 adultscore=0 priorityscore=1501
 mlxlogscore=999 phishscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507170112

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
 drivers/firmware/psci/Kconfig |  1 +
 drivers/firmware/psci/psci.c  | 53 ++++++++++++++++++++++++++++++++++++++++++-
 2 files changed, 53 insertions(+), 1 deletion(-)

diff --git a/drivers/firmware/psci/Kconfig b/drivers/firmware/psci/Kconfig
index 97944168b5e66aea1e38a7eb2d4ced8348fce64b..9d65fe7b06a6429de8a26d06f9384e5c93f36e5f 100644
--- a/drivers/firmware/psci/Kconfig
+++ b/drivers/firmware/psci/Kconfig
@@ -1,6 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 config ARM_PSCI_FW
 	bool
+	select REBOOT_MODE
 
 config ARM_PSCI_CHECKER
 	bool "ARM PSCI checker"
diff --git a/drivers/firmware/psci/psci.c b/drivers/firmware/psci/psci.c
index 38ca190d4a22d6e7e0f06420e8478a2b0ec2fe6f..28018c283eb627bcb4ce6223c56899a43ed56399 100644
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
@@ -547,6 +559,45 @@ static const struct platform_suspend_ops psci_suspend_ops = {
 	.enter          = psci_system_suspend_enter,
 };
 
+static int psci_set_vendor_sys_reset2(struct reboot_mode_driver *reboot, u64 magic)
+{
+	if (psci_system_reset2_supported) {
+		vendor_reset.reset_type = PSCI_1_1_RESET_TYPE_VENDOR_START | (u32)magic;
+		vendor_reset.cookie = (u32)(magic >> 32);
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
+	ret = reboot_mode_register(reboot, np);
+	if (ret) {
+		of_node_put(np);
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


