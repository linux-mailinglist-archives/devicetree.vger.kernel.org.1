Return-Path: <devicetree+bounces-199989-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id A0B38B1307D
	for <lists+devicetree@lfdr.de>; Sun, 27 Jul 2025 18:26:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id AD381178156
	for <lists+devicetree@lfdr.de>; Sun, 27 Jul 2025 16:26:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4875F22068A;
	Sun, 27 Jul 2025 16:25:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ll2dnarX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BE27F21E08D
	for <devicetree@vger.kernel.org>; Sun, 27 Jul 2025 16:25:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753633537; cv=none; b=qNw5nsRXN8DGShHOFnZfxmSvgh7aOLWiLvMm7MwOJD7eH+dabw9frzCxVqQpmaAu5Hc0SfTCbniRW8HLpxdcP247ObssB0WYCk7U6VMrnh3imQlENQMtdY9CR40kKTtvDpaChFBvJb/6knN10cWBdyF6xi2+ACd+112/BGf2j8A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753633537; c=relaxed/simple;
	bh=B5BLAbfGWAu1tjZeNLd2S/l/pA+itiinQJEbqhqQ7Iw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=YiXgU1nGCtas44rC4ColRmntRUWQ+rtcSVF3hCB3ApCl5+5ynL/1BsxFpQlyeIrXxAqHDEsE53xQCpOx6g4W5/K4QRC1BQAED+ZgGwu+M3eINamaXMzTNFKNjd+0WE3u3YNLqCoSuW3wOWSSkA5XvTb79VZaXjB6p9SD5RHJs6U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ll2dnarX; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56R5E1T0009485
	for <devicetree@vger.kernel.org>; Sun, 27 Jul 2025 16:25:34 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LAjdEtX3RT7zSV5WrhnDDtIT/eTrigKKIJeo9CD77g8=; b=Ll2dnarXF3tA763o
	n0D2snUMmai1xsB9hkOvnb2fifsSLg1eWkxr6LBWGPBJWONv1lc7QUlNM3CJ5E3H
	NMm/+P1jsD/L+TRxS2KeEdHs1QuQ+5eeZ/Bxyz/1Ko/TJAVN90y0DFU0kzbO7TZb
	1uazZIYQWW2I3TZJoyZconGYcOXvAs85jsqQwgeH903e71Uy8IM6YxYyE9LMN25K
	2RCMgvxVUxaIDe3Bm0tJjyp/b7K82bwNDMIheJX9tSheGicesNanxpmyUXn2PzGP
	/kc/qpXNoKhDl9WOfzHEPgFE9zdV/Ve3LVmgzyG7HiI38Rn1+tN9+5y5JkxJg5p2
	qDCFEg==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 484r6qj8hp-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sun, 27 Jul 2025 16:25:34 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b2fa1a84566so2828856a12.1
        for <devicetree@vger.kernel.org>; Sun, 27 Jul 2025 09:25:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1753633534; x=1754238334;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LAjdEtX3RT7zSV5WrhnDDtIT/eTrigKKIJeo9CD77g8=;
        b=EOfaG8IC0+UChx17eEtjWH0SO2kFpP3SlfeAsoXpetGyLmGA+/7luQIaZ6b2Ym9BYc
         K8YovwxDrcN4rD2oOYhkTycSqRkyKwCPHDW7t/qpbQm7g4slsQfZPIxxvQTxdqX3tDiA
         r1V3Wy9CBW7TNNd/E4RzWtxaKAiPiRR7dByETtyWHeUyWfpgZS/4k9lQNumZKNn1g2iW
         RobBRPhlC454Iz/525xqI3IxVMlYq5kw+9bOuRPEFyIEmPGHZE0so+jYFVLmJIejYgDu
         oIS4sNG8ag6/A3QQUz7FHfHpSzgFtu0a0KJHONVs82iK8Q0QEA+s37uKDmBziGMOLgj0
         4SRg==
X-Forwarded-Encrypted: i=1; AJvYcCUXss9uNvbvF9ETFes1scqXsApRXOQZ0Ssa5VdzsJxMaPCJB9FP9+IOgUPjFqcx9xUH5OuZsF2G8eC4@vger.kernel.org
X-Gm-Message-State: AOJu0Yx93SKt+UXyuMl9kJk25M10ZFncDE7BEJ6nKuJkEs3QGOx72icy
	7HEdUfXd5OWXxDQsSD+IcqqTM5px1zfZOYSLrDom47R/XXM3W19THrXhVdlpNpynkY4WzOKv/FZ
	+2kd89Vz8rXdY0hj7lLTxxE7s2pdXX0UojmgXxwNwpGLtq/u7Gz1G7lH8BKSI0kyp
X-Gm-Gg: ASbGnctkMxpHkNXS3obmA6ccbBSUS3UsJSJGTOEg1B6iWujIHpk3uLuJHknO+la09Jj
	+GbwBTXoBDuq7Abxrp9YZTcKDe8ncZgSeftgiNsFTRqac58SQsGGcH4DF3cO3jIWR2gLrCry93G
	J0becQDpWrEWm7esOHcWMKAHdmGk2Gg455KXB+nxNzGutr9xm9xFj76p7jFh9fWPaaSFm0NbgDY
	e1Xk1WJPd2x/x0rfw2u9rZFmhMeCyjYgBdr8NDYVrX7jjVlIhVE0/3GgDQkKpZA7Y2t6BXgtcRY
	d7SMdYFo5TDQ2v6ocPsFJSJ1OW6wY6A8m1MRICY26iNpBvHWGWZBQr5rjscsLdU6OHaHItm9f1E
	p
X-Received: by 2002:a17:902:d2c7:b0:23f:8df8:e7b1 with SMTP id d9443c01a7336-23fb30b3224mr145314785ad.32.1753633533688;
        Sun, 27 Jul 2025 09:25:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IH7X/a1NVbBv9ysYl7a3wo9LMuxbvZnRFcCXyu7AESYMzqbL9vACORQwwTa7YynJTdngrt2rw==
X-Received: by 2002:a17:902:d2c7:b0:23f:8df8:e7b1 with SMTP id d9443c01a7336-23fb30b3224mr145314215ad.32.1753633533214;
        Sun, 27 Jul 2025 09:25:33 -0700 (PDT)
Received: from hu-spratap-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23fd9397ebbsm29110325ad.210.2025.07.27.09.25.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Jul 2025 09:25:32 -0700 (PDT)
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
Date: Sun, 27 Jul 2025 21:54:47 +0530
Subject: [PATCH v13 04/10] Documentation: ABI: Add
 sysfs-class-reboot-mode-reboot_modes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250727-arm-psci-system_reset2-vendor-reboots-v13-4-6b8d23315898@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1753633495; l=2307;
 i=shivendra.pratap@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=B5BLAbfGWAu1tjZeNLd2S/l/pA+itiinQJEbqhqQ7Iw=;
 b=pgH9mIPi7GA0ayDqkKnR2+E/P0dq3sd1IZAeVGSFF5+JaYFGGS/XBZthLHPT9KAF1UJ/RpQH4
 Hoy706MVMLNDID9ZV+MW3XmZWBEhJJ0oZVWXtccIrzCMNUZQ3rPFPly
X-Developer-Key: i=shivendra.pratap@oss.qualcomm.com; a=ed25519;
 pk=CpsuL7yZ8NReDPhGgq6Xn/SRoa59mAvzWOW0QZoo4gw=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzI3MDE0NCBTYWx0ZWRfX6SIBuNJV+MeB
 HV9+JP8hyHUUKBZ8wlH1+cNG0DEHdXmtI7otHFRr/OW6Y9ta2dn/TCArClEhkqUGCriNsIIcuS/
 l/T9M2V6dMQvZg7IXvJSqKNYWyvHwwlPRJR6IcGL1Olp3K+HluXlmclZXhetpuxdznUoVWiJGG4
 mkHzft5mwrcLgGbIVM9wNi5MA+ki0+c5ooNjhCrdihAVdPnWweSwAv81U+5OThhCloSZ8D9eI/L
 2bTUDPCSsmDit+nM7FstMxdjgr0kYoIbWz4hS2q80xwe8jI68RXAhr4loUawlruJuInUz8h+Fmu
 uqHkxqN486Qp5W28k32YVESXGIL9D7CmpHCq2hKZp/jaemYrDMbf52VtGxPj22tq7CO1jZqYqF+
 Lt3hROMfnxM+rUzncsxoNuUsoDaKkpuKvoxwYQegC3UGBHRrpyL+ykeW2j9b1069l+C5IRZM
X-Proofpoint-ORIG-GUID: b0MaN-e7S3Wo6FyNyonzNA7lwZYy0_fd
X-Authority-Analysis: v=2.4 cv=ea89f6EH c=1 sm=1 tr=0 ts=688652fe cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=5CgfHzhl2afHKY-Ush4A:9 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-GUID: b0MaN-e7S3Wo6FyNyonzNA7lwZYy0_fd
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-27_05,2025-07-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 priorityscore=1501 impostorscore=0 lowpriorityscore=0 phishscore=0
 malwarescore=0 suspectscore=0 bulkscore=0 adultscore=0 clxscore=1015
 spamscore=0 mlxlogscore=999 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507270144

Add ABI documentation for /sys/class/reboot-mode/*/reboot_modes,
a read-only sysfs attribute exposing the list of supported
reboot-mode arguments. This file is created by reboot-mode
framework and provides a user-readable interface to query
available reboot-mode arguments.

Signed-off-by: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
---
 .../testing/sysfs-class-reboot-mode-reboot_modes   | 39 ++++++++++++++++++++++
 1 file changed, 39 insertions(+)

diff --git a/Documentation/ABI/testing/sysfs-class-reboot-mode-reboot_modes b/Documentation/ABI/testing/sysfs-class-reboot-mode-reboot_modes
new file mode 100644
index 0000000000000000000000000000000000000000..7147a781e5d4d11977c3a156bf4308aa13310e39
--- /dev/null
+++ b/Documentation/ABI/testing/sysfs-class-reboot-mode-reboot_modes
@@ -0,0 +1,39 @@
+What:		/sys/class/reboot-mode/<driver>/reboot_modes
+Date:		July 2025
+KernelVersion:	6.16
+Contact:	linux-pm@vger.kernel.org
+		Description:
+		This interface exposes the reboot-mode arguments
+		registered with the reboot-mode framework. It is
+		a read-only interface and provides a comma
+		separated list of reboot-mode arguments supported
+		on the current platform.
+		Example:
+		 recovery,fastboot,bootloader
+
+		The exact sysfs path may vary depending on the
+		name of the driver that registers the arguments.
+		Example:
+		 /sys/class/reboot-mode/nvmem-reboot-mode/reboot_modes
+		 /sys/class/reboot-mode/syscon-reboot-mode/reboot_modes
+		 /sys/class/reboot-mode/qcom-pon/reboot_modes
+
+		The supported arguments can be used by userspace
+		to invoke device reset using the reboot() system
+		call, with the "argument" as string to "*arg"
+		parameter along with LINUX_REBOOT_CMD_RESTART2.
+		Example:
+		 reboot(LINUX_REBOOT_MAGIC1, LINUX_REBOOT_MAGIC2,
+		        LINUX_REBOOT_CMD_RESTART2, "bootloader");
+
+		A driver can expose the supported arguments by
+		registering them with the reboot-mode framework
+		using the property names that follow the
+		mode-<argument> format.
+		Example:
+		 mode-bootloader, mode-recovery.
+
+		This attribute is useful for scripts or initramfs
+		logic that need to programmatically determine
+		which reboot-mode arguments are valid before
+		triggering a reboot.

-- 
2.34.1


