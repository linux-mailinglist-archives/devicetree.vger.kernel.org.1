Return-Path: <devicetree+bounces-205152-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 1070FB2821E
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 16:41:00 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9B996B05866
	for <lists+devicetree@lfdr.de>; Fri, 15 Aug 2025 14:37:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 932CF2472B1;
	Fri, 15 Aug 2025 14:37:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="bevyjEe1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E03FE233159
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 14:37:03 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755268625; cv=none; b=uyPDSzSPg/NsJ4YHkjWHLq5RaTUCh4a0qqPz/pkEIWoHv3RW5pLJKAPq7xnOw27KocRE3GOJwSWPXTdUJmCtuxM29wlk2J7QJaVsCKCh8W7Kldg217vzaDnzpUFSR33l0V/o6LScMENL0I60t/UgMxDN6mF/KqFOReVX/eKYd34=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755268625; c=relaxed/simple;
	bh=6UpIHQY3njE1j0TJ0MawV6xPKXDH8pCRBbCtZv/uOBU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=DMZi777Gl7EWxTeTAllIb7j9zuzDcmxlt/+sgKPn9KBlunCbQF6ps1oUAYLLSz+Ly9WfUahXb4RNzPUHoBFIU8uKlR1gOJVjmqa6d0P0AIiK/5edplMWZ4wKjtqc9np4hl0822enNkEcFKhS++t2k4A7yMzEK3sNVyRmAVN0gnU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=bevyjEe1; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57FEInuT017502
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 14:37:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	pcKQYC44F7/HHxcJTpRMsYVL1XCMKVcn/AI2FZIwK50=; b=bevyjEe1jwPxZDjU
	co+Z1yg48mvM4gR5g1/hLZR7nCxGHFzQPnmmWJS/jMuLs1emYPNrJnn8QySNmg+R
	QdT3Rrtzndmv22skEBf2Ysp9vh4V1azFsYDLq0Fl/DEjhJWSsZBjLOfNItU+UwKe
	XP6kVVrldoMQ8oraGGjIVW/pk2T3mNKzLjxXv6XZX6Ag3bS5YIPs5iD+D0Cjh3C8
	Q35pq8PeYKg2KsluX/XgQruLdSH0UDmC3aVf/CSqlqmJ6kn//cBXVpqJI8O6Nx1n
	a/DNSUAW+sZ7JFOKwgqFlgb36I6rUV3zskhT6ZS8cwDmXpQjlVKWEfFNVsv5nl6Q
	98ZWhQ==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48eqhxhfws-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 14:37:02 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-24457f42254so43305875ad.0
        for <devicetree@vger.kernel.org>; Fri, 15 Aug 2025 07:37:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755268621; x=1755873421;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=pcKQYC44F7/HHxcJTpRMsYVL1XCMKVcn/AI2FZIwK50=;
        b=Ft8YoSniU3Xmky69Lj3Ojj1Old+9x1thE4iIF5pQLfryLWOMYy1T8UjYBv9mzFASlP
         cNbSsB4wih8n3IZS1jen7SHbBn0sKPNIDAtGH7XBajZF9K4v6tmiG+a9K7h+jXd2/X8f
         ALiPKvA02bv0CoPneSgxS8+OEFWAkQNe/2W3OyPcefQF8aoxiYhRvtMFMdG+K28RoEyn
         batKYHdbggzoE4J4HUl3f/KyCOqUmHCc1JBdvW0+qap7GafppTK562gCrBkz4gu/70Q6
         YQLR9Ztd0saiGB/P5KSxmEWXZV+5gRXsIgZx8tKgyajXY9aJcV1Yp5EELq/Nbuj5OYGd
         KxNw==
X-Forwarded-Encrypted: i=1; AJvYcCVZK1EhmTToAerXeOKBU8CbdXcTHt7LkNEtdLJTOZtBYBqHOPpGTB9Q/z9WhoT7XkTxZbuYqHOvoLvg@vger.kernel.org
X-Gm-Message-State: AOJu0YwTAA5SOJmJDDNho7ju8I1pNGPxy2b4ve0uKf6wGhRT6drepKg9
	BiWvnzPfpXnoS0hU7QEGMrg7Hhb5NEl/QMcphipQr7fvBeSbc3kCFbRvLjLFGo5XWQfUVzqg/kb
	DjwQFLCvRzmh+evfXmKgfdw+PDuTqVZQKNt0Udhj432vZJEHfQzhcwQNZHt+rzvZkn8wcUfuf
X-Gm-Gg: ASbGncu1OIzmqiJMiMS2B+QWadPZc63FrTxwVAV08UYuLQi1YSWqxAtYcpbQETWPRFw
	jck+dYVnmbTcTmSI0zDJvqGZbCn+h2Zk/GqqxNoKxLqGn88ghghPFC8f7Zqg4F4OiOUtJX03ndM
	Zr9TpvLWr0YZUafFC8b0uNg+FTV8s377HI/eo70Mi8eIDUpjZ5Z7zR/IXiaBAlIDmwQ5W8Obcj9
	mkhEcZDoNGMfr1phFKmFs6mBDFquq+Q9IqRQqh+Jkt0k2koxYnfz2UshLxtdXj/jx96auNOPWgI
	Ll4kCma0geWb7F1Vb2ZKUgV5ATA6jUSS5PKoWPGy3wgS/K/fa6dFcx8QQQYdatvQJZL2YyOf716
	4
X-Received: by 2002:a17:902:cccb:b0:240:a430:91d with SMTP id d9443c01a7336-2446d6d389cmr30088415ad.10.1755268621243;
        Fri, 15 Aug 2025 07:37:01 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGQkvO8cZ+sj/6HskI8jsjG4+3pCl14X8qRamDdNfNjEematfPmBfjPeAC5kVjtjoUPPQXU+Q==
X-Received: by 2002:a17:902:cccb:b0:240:a430:91d with SMTP id d9443c01a7336-2446d6d389cmr30087955ad.10.1755268620832;
        Fri, 15 Aug 2025 07:37:00 -0700 (PDT)
Received: from hu-spratap-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b472d73619fsm1437576a12.39.2025.08.15.07.36.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 15 Aug 2025 07:37:00 -0700 (PDT)
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
Date: Fri, 15 Aug 2025 20:05:09 +0530
Subject: [PATCH v14 04/10] Documentation: ABI: Add
 sysfs-class-reboot-mode-reboot_modes
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250815-arm-psci-system_reset2-vendor-reboots-v14-4-37d29f59ac9a@oss.qualcomm.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1755268580; l=2315;
 i=shivendra.pratap@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=6UpIHQY3njE1j0TJ0MawV6xPKXDH8pCRBbCtZv/uOBU=;
 b=XeumJxHHSQYddSy6MNLQxD92Q3Za8c4lIAtTOM08N/hqVoheKPVBZa/SltPTQWNExalssa0Qn
 QigkEEeOxnIB/yuhy3wZ9mBC4A+f3iDZA76ZIqaST67YodcJl1HgDMC
X-Developer-Key: i=shivendra.pratap@oss.qualcomm.com; a=ed25519;
 pk=CpsuL7yZ8NReDPhGgq6Xn/SRoa59mAvzWOW0QZoo4gw=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODEwMDA1NyBTYWx0ZWRfXzBqzkNZcrKCz
 oxY5+j6INdu90aEgqcJednaulKCiIREBWdRDswolQGs1XtjMuvmMjDXG50XTN5+Y1mqrNFeeNb+
 ab0McILsGQKWV+g5H0g/S63LbQpJHV5LGxTPdznE0kmy/owN/kaqA+0mRhKrSKYEAryHlPFLdoC
 ayf2oHQ9joxVUK82AfQOJM97fHVjHsfdZy85I4jfvf45QxzigWGTG68MaTxqb6+iQIB490kqr7o
 WeC01GcBJIeoD2RaVaXKSOIb3QeyAkmvd8snRikS4mAdeiFhwprMdbkTMjovNSSbhkb0wkvb0I7
 rLriHpuGCR7G4TVCCOgqdLzd6fywR+r1V7E0zdrgpdTPM3KGWeAXTjCIJK+/pHsVuGrzTqUaRR5
 J7w4ooGI
X-Proofpoint-GUID: I04G91ttSQ4DB55qe_1I7rF7oZYYNczi
X-Authority-Analysis: v=2.4 cv=aYNhnQot c=1 sm=1 tr=0 ts=689f460e cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=2OwXVqhp2XgA:10 a=EUspDBNiAAAA:8 a=VwQbUJbxAAAA:8
 a=5CgfHzhl2afHKY-Ush4A:9 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-ORIG-GUID: I04G91ttSQ4DB55qe_1I7rF7oZYYNczi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-15_05,2025-08-14_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 priorityscore=1501 suspectscore=0 phishscore=0
 impostorscore=0 bulkscore=0 malwarescore=0 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508100057

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
index 0000000000000000000000000000000000000000..6a3fc379afae3a6caf56ad0b73b1c06c43a9fee7
--- /dev/null
+++ b/Documentation/ABI/testing/sysfs-class-reboot-mode-reboot_modes
@@ -0,0 +1,39 @@
+What:		/sys/class/reboot-mode/<driver>/reboot_modes
+Date:		August 2025
+KernelVersion:	6.17.0-rc1
+Contact:	linux-pm@vger.kernel.org
+		Description:
+		This interface exposes the reboot-mode arguments
+		registered with the reboot-mode framework. It is
+		a read-only interface and provides a space
+		separated list of reboot-mode arguments supported
+		on the current platform.
+		Example:
+		 recovery fastboot bootloader
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


