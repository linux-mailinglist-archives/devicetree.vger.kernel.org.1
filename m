Return-Path: <devicetree+bounces-194889-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AFA4BAFFDAF
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 11:16:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 2457B1C28024
	for <lists+devicetree@lfdr.de>; Thu, 10 Jul 2025 09:17:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8E6DA291C3D;
	Thu, 10 Jul 2025 09:16:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="E0MRWoxp"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5465228E604
	for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 09:16:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752138999; cv=none; b=kXwlaj5gm1OHzEfPADNYIsgecJ2IQ4UMdrmR5tZI5NlQ9LDe/N/SwvEymDUOsr6BQ06J87S4Nt17gryrhWlJKexYGQHaZtml8oG4IetWA00qz+S+aGnooVNZZzozYzAHqm1mVPOCyAd8crIxeMDdHeo3CPvhPrEbxo9uNAdFk78=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752138999; c=relaxed/simple;
	bh=/04PbE8KzZdvLvxOjOoiOARkuVucI7qifPsmXoYHQkE=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=nyqRgFmxPhWjiP4grKQvwHXD3/Q+Auqnj9whFqsjgxWOQgAvS/kk70NA5782X1rNkixQVaFvgAEv8LBGwd/eeWXyh6FAw9EK9QUJY+4s4znVTMJGCGqkZsJwgcRd2gbysak7+FL8X0OYtRZt1hyMf2jxzVHafYpz5BaC2x72MBE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=E0MRWoxp; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56A8onuT016444
	for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 09:16:35 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=uXJUy9rZdcnaOTmsEO1AhC
	7sZveYMrW3FlEj7Bg7i1g=; b=E0MRWoxpQf1joZgPaUtqdhWRPmZ2+zCDsl1ug3
	0ER7CyLa1rwq3TbjjfMK/aH3ZBJd6N1vQxDxODzLywEKy3kdaOa+BUIHDDGax1p/
	qIgeVeA2ZV360UKClfWiOgbGp2bc6SbLepENuJUaNKbY9UPLAWRwiJtRPnVAsdK4
	qvvNcYTFZkDSHgjvQd6cSSASsJRJCLuKO4QQCFiEHYf1vUnvDSwh+cGNLx9AOT6r
	swl0MT4tvoLVyWt25im6k66/83DQMR6dSnmOqax7IWP7ay505iKxoNOzdH751Ocb
	pI+lsxZXzAY1Wys3q+D5VwDKsDLpFc54tmCnIwUg3HPoMQGg==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47smap4cfx-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 09:16:34 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-235e1d70d67so8803875ad.0
        for <devicetree@vger.kernel.org>; Thu, 10 Jul 2025 02:16:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752138994; x=1752743794;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uXJUy9rZdcnaOTmsEO1AhC7sZveYMrW3FlEj7Bg7i1g=;
        b=olnRQg+UUuPLK+9NuPCKg5LGtLrKTOxebmuFewBhSpckpsRpQ/pvSxUcHGDY+ToKYs
         6JZZqXtxelvkJI8Gli0qmKRYfDijKF/0MCfl2QZdkbnizo48R3qQY76tysMgRYF//7o+
         zT4R83Ir4G06k/GUEtIiN2F2riPPfKLeUDxzP/1FsiyeK073tgfZknZt0c0//0sup5kX
         8MiWemawAKYU4f5GYL2lYGFbNtcIDnc8hrn2Up2LH6SBwNcWEOvL8zYjrbyQNTi920QH
         GH28vAK/pSd7/BjZiOtO/iBu7a0mDgzr5ArdGHb91L7nF4eD6kHtPxEC+/TUJng/vbTt
         rU+Q==
X-Forwarded-Encrypted: i=1; AJvYcCVSFKwMDaHXZIGJLg/ByVirDwLvgnhEimuEo2Fmi6tD6dWIYx+sRg52hXBgyyhb8G9DD2suVYUoZUO6@vger.kernel.org
X-Gm-Message-State: AOJu0YyqbIQawzGJ84BRrv8BmB1Hx6fZOLcT5ab5jhxINQaDRB6VSF//
	OXG5hD1FcJ8JyLYvmQ6cahvYWEQsBWdr86Cuir+jTbTCP98xFpUtNFpTbkPendIW/XoLG2Qbjs+
	010vis5ZD8PYQskGU8JHv6JYuyTmeN6iSuOw4tqOVaf8CgXjCJuSFDFi70Khsicvv
X-Gm-Gg: ASbGncvU1x5eDMVLe6Ass18ECDqM7APATnUT8AAnHHxZW9U+/cNeNH3pboG1rjk7xoa
	INMnbvKPcHCLEm1UMV9VrQkwqzPIdQgkkJDys/n0cYCClEfaRu6ZS8hmXvKWkPqgukXtOGPMHQ8
	b+8drwSpB+KRB91EvnsfPSnFGGJQTjWjaBY0wU7CLh0U0Fov7cN4g3S38cTk1MhQSNH/fVZ9GBv
	vsDJahURGSlt8YxAfZCxXEc8xahsHjbDfr9RnJl69MisTYilm9ppq3c0YfMOCdr2gQ2Da0vTQ9n
	EmsJtPml5DTBxIFBSS8g3jrKDVfgFjI+GAzORW5NK3gL7K4dRXI1gaHZ/zs=
X-Received: by 2002:a17:903:22c4:b0:235:5d1:e366 with SMTP id d9443c01a7336-23de480acc0mr27776755ad.10.1752138993500;
        Thu, 10 Jul 2025 02:16:33 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFqQ4sOmk8FmROvK+C7bAz5LK1QFA2VskzQKWocL2iKHG4NPqgXx/uH3vxAssNn9Alzmkvi6g==
X-Received: by 2002:a17:903:22c4:b0:235:5d1:e366 with SMTP id d9443c01a7336-23de480acc0mr27776235ad.10.1752138992968;
        Thu, 10 Jul 2025 02:16:32 -0700 (PDT)
Received: from hu-spratap-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23de4341d51sm14837765ad.189.2025.07.10.02.16.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Jul 2025 02:16:32 -0700 (PDT)
From: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>
Subject: [PATCH v10 00/10] Implement vendor resets for PSCI SYSTEM_RESET2
Date: Thu, 10 Jul 2025 14:45:42 +0530
Message-Id: <20250710-arm-psci-system_reset2-vendor-reboots-v10-0-b2d3b882be85@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-B4-Tracking: v=1; b=H4sIAL6Eb2gC/42NUQ6CMBBEr0L67ZIFqkW/vIchppZFmliK3Uokh
 LtbiQfwZ5I3ycxbBFOwxOKULSLQZNn6IUGBu0yYXg93AtumQpRY7lHhEXRwMLKxwDNHctdATLG
 EiYbWBwh08z4yyIOpEaXUnelE+hoDdfa9iS5N4t5y9GHevFOB3/qnKPBPRZoBAiklK1VXVSvN2
 TPnz5d+GO9cnkI067p+ANBcWuvkAAAA
X-Change-ID: 20250709-arm-psci-system_reset2-vendor-reboots-46c80044afcf
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
        Srinivas Kandagatla <srini@kernel.org>,
        Elliot Berman <elliot.berman@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Konrad Dybcio <konradybcio@kernel.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752138982; l=10397;
 i=shivendra.pratap@oss.qualcomm.com; s=20250710; h=from:subject:message-id;
 bh=/04PbE8KzZdvLvxOjOoiOARkuVucI7qifPsmXoYHQkE=;
 b=qOcxH9g2kL6xzg29hstsumQnn7l37NJfnxSwOpNR2S2rQBPZ0k/v/Ab13/xYcukyIuKoSy63n
 Au7NHRtlpSpAwRo27kxCPO+ayBXy3NJTloYTw4UTPfAwIwsIYV0DhaD
X-Developer-Key: i=shivendra.pratap@oss.qualcomm.com; a=ed25519;
 pk=CpsuL7yZ8NReDPhGgq6Xn/SRoa59mAvzWOW0QZoo4gw=
X-Authority-Analysis: v=2.4 cv=Ar7u3P9P c=1 sm=1 tr=0 ts=686f84f3 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8
 a=EUspDBNiAAAA:8 a=LQ4SgkHdnCmFo4IeYfsA:9 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-ORIG-GUID: do6lxHDbQzHMD6ZBbSFfzlbBRhuKHn2y
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzEwMDA3OCBTYWx0ZWRfX5UGIRH9LygVQ
 iKwJqErPJO+zXysmSEPtpr3llq3aQiapHue5JW5laCkGViJxnOT6Odb+qN608NTfKZAPopdH1jT
 nzXzNjrpXd4yBTc2Pb4MsAvNrif6oI5hZaswC29rQmQMdjwzoeND4FP5MCwVXiNHu27RV/NKfZP
 nf8dQhDpeoKdhXMpnQ+muluBKcV0m8qCrsOBZZrb3LztSdXU3qzuApO+xdWwvLeh3ldgHPK1/Z2
 TT5SakCe9ziq36fQ+aFI/LJpGtMOXqvV2n7ccyS0MxIzqmFX6FXuf6RKYcwOdYyS1iOOl1tprwF
 rFC/ZHGG7zhnPJFpw9/hlTdVEwHSzw18q/ndFNnQ2ZI1nuzA5q+jtjxKe7wtIlAgSePGR5J9oOo
 55CeBVfNMLISHJ7ikm+nVywvivBRZan157CCc1vtSqZpy8M4At9EfNcuscX09vSHvx1OTXhL
X-Proofpoint-GUID: do6lxHDbQzHMD6ZBbSFfzlbBRhuKHn2y
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-10_01,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 malwarescore=0 bulkscore=0 lowpriorityscore=0 spamscore=0
 impostorscore=0 suspectscore=0 mlxlogscore=999 clxscore=1011 adultscore=0
 phishscore=0 priorityscore=1501 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507100078

The PSCI SYSTEM_RESET2 call allows vendor firmware to define
additional reset types which could be mapped to the reboot
argument.
 
User-space should be able to reboot a device into different
operational boot-states supported by underlying bootloader and
firmware. Generally, some HW registers need to be written, based
on which the bootloader and firmware decide the next boot state
of device, after the reset. For example, a requirement on
Qualcomm platforms may state that reboot with "bootloader"
command, should reboot the device into bootloader flashing mode
and reboot with “edl” command, should reboot the device into an
Emergency flashing mode.  Setting up such reboots on Qualcomm
devices can be inconsistent across SoC platforms and may require
setting different HW registers, where some of these registers may
not be accessible to HLOS. These knobs evolve over product
generations and require more drivers.  PSCI defines a
vendor-specific reset in SYSTEM_RESET2 spec, which enables the
firmware to take care of underlying setting for any such
supported vendor-specific reboot. Qualcomm firmwares are
beginning to support and expose PSCI SYSTEM_RESET2
vendor-specific reset types to simplify driver requirements from
Linux. With such support added in the firmware, we now need a
Linux interface which can make use of the firmware calls for PSCI
vendor-specific resets. This will align such reboot requirement
across platforms and vendors.
 
The current psci driver supports two types of resets –
SYSTEM_RESET2 Arch warm-reset and SYSTEM_RESET cold-reset. The
patchset introduces the PSCI SYSTEM_RESET2 vendor-specific reset
into the reset path of the psci driver and aligns it to work with
reboot system call - LINUX_REBOOT_CMD_RESTART2, when used along
with a supported string-based command in “*arg”.

The patchset uses reboot-mode based commands, to define the
supported vendor reset-types commands in psci device tree node
and registers these commands with the reboot-mode framework.

The PSCI vendor-specific reset takes two arguments, being,
reset_type and cookie as defined by the spec. As the
vendor-specific reset needs two arguments reset_type and cookie
to be passes to the firmware, enhance the reboot-mode framework
to support two arguments (magic and cookie), for each reboot-mode
command, where cookie will be optional.

Along this line, the patchset also extends the reboot-mode
framework to add a non-device-based registration function which
will allow drivers to register using DT node, while keeping
backward compatibility for existing users of reboot-mode. This
will enable psci driver to register for reboot-mode and implement
a write_with_cookie function which will save the
magic(reset_type) and cookie and then use it in psci reset path
to make a vendor-specific reset call into the firmware. In
addition, the patchset will expose a sysfs entry interface within
reboot-mode which can be used by userspace to view the supported
reboot-mode commands.

The list of vendor-specific reset commands remains open due to
divergent requirements across vendors, but this can be
streamlined and standardized through dedicated device tree
bindings.

Currently three drivers register with reboot-mode framework -
syscon-reboot-mode, nvmem-reboot-mode and qcom-pon. Consolidated
list of commands currently added across various vendor DTs:
 mode-loader
 mode-normal 
 mode-bootloader
 mode-charge
 mode-fastboot
 mode-reboot-ab-update
 mode-recovery
 mode-rescue
 mode-shutdown-thermal
 mode-shutdown-thermal-battery

Detailed list of commands being used by syscon-reboot-mode:
    arm64/boot/dts/exynos/exynosautov9.dtsi:
	mode-bootloader = <EXYNOSAUTOV9_BOOT_BOOTLOADER>;
	mode-fastboot = <EXYNOSAUTOV9_BOOT_FASTBOOT>;
	mode-recovery = <EXYNOSAUTOV9_BOOT_RECOVERY>;

    arm64/boot/dts/exynos/google/gs101.dtsi:
    	mode-bootloader = <0xfc>;
    	mode-charge = <0x0a>;
    	mode-fastboot = <0xfa>;
    	mode-reboot-ab-update = <0x52>;
    	mode-recovery = <0xff>;
    	mode-rescue = <0xf9>;
    	mode-shutdown-thermal = <0x51>;
    	mode-shutdown-thermal-battery = <0x51>;

    arm64/boot/dts/hisilicon/hi3660-hikey960.dts:
    	mode-normal = <0x77665501>;
    	mode-bootloader = <0x77665500>;
    	mode-recovery = <0x77665502>;

    arm64/boot/dts/hisilicon/hi6220-hikey.dts:
    	mode-normal = <0x77665501>;
    	mode-bootloader = <0x77665500>;
    	mode-recovery = <0x77665502>;

    arm64/boot/dts/rockchip/px30.dtsi:
    	mode-bootloader = <BOOT_BL_DOWNLOAD>;
    	mode-fastboot = <BOOT_FASTBOOT>;
    	mode-loader = <BOOT_BL_DOWNLOAD>;
    	mode-normal = <BOOT_NORMAL>;
    	mode-recovery = <BOOT_RECOVERY>;

    arm64/boot/dts/rockchip/rk3308.dtsi:			
    	mode-bootloader = <BOOT_BL_DOWNLOAD>;
    	mode-loader = <BOOT_BL_DOWNLOAD>;
    	mode-normal = <BOOT_NORMAL>;
    	mode-recovery = <BOOT_RECOVERY>;
    	mode-fastboot = <BOOT_FASTBOOT>;

    arm64/boot/dts/rockchip/rk3566-lckfb-tspi.dts:
    	mode-normal = <BOOT_NORMAL>;
    	mode-loader = <BOOT_BL_DOWNLOAD>;
			mode-recovery = <BOOT_RECOVERY>;
			mode-bootloader = <BOOT_FASTBOOT>;

Detailed list of commands being used by nvmem-reboot-mode:
    arm64/boot/dts/qcom/pmXXXX.dtsi:(multiple qcom DTs)
			mode-recovery = <0x01>;
			mode-bootloader = <0x02>;

Previous discussions around SYSTEM_RESET2:
- https://lore.kernel.org/lkml/20230724223057.1208122-2-quic_eberman@quicinc.com/T/
- https://lore.kernel.org/all/4a679542-b48d-7e11-f33a-63535a5c68cb@quicinc.com/

Signed-off-by: Elliot Berman <quic_eberman@quicinc.com>
Signed-off-by: Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>

Changes in V10:
- Change in reset-type binding to make cookie as a mandatory
  argument.
- Change reboot-mode binding to support additional argument
  "cookie".
 From Lorenzo:
- Use reboot-mode framework for implementing vendor-resets.  
- Modify reboot-mode framework to support two arguments
  (magic and cookie).
- Expose sysfs for supported reboot-modes commands.
- List out all existing reboot-mode commands and their users.
   - Added this to cover letter.
 From Dmitry:
- Modify reboot-mode to support non-device based registration.
- Modify reboot-mode to create a class and device to expose
  sysfs interface.
- Link to v9: https://lore.kernel.org/all/20250303-arm-psci-system_reset2-vendor-reboots-v9-0-b2cf4a20feda@oss.qualcomm.com/

Changes in v9:
- Don't fallback to architecturally defined resets from Lorenzo.
- Link to v8: https://lore.kernel.org/r/20241107-arm-psci-system_reset2-vendor-reboots-v8-0-e8715fa65cb5@quicinc.com

Changes in v8:
- Code style nits from Stephen
- Add rb3gen2
- Link to v7: https://lore.kernel.org/r/20241028-arm-psci-system_reset2-vendor-reboots-v7-0-a4c40b0ebc54@quicinc.com

Changes in v7:
- Code style nits from Stephen
- Dropped unnecessary hunk from the sa8775p-ride patch
- Link to v6: https://lore.kernel.org/r/20241018-arm-psci-system_reset2-vendor-reboots-v6-0-50cbe88b0a24@quicinc.com

Changes in v6:
- Rebase to v6.11 and fix trivial conflicts in qcm6490-idp
- Add sa8775p-ride support (same as qcm6490-idp)
- Link to v5: https://lore.kernel.org/r/20240617-arm-psci-system_reset2-vendor-reboots-v5-0-086950f650c8@quicinc.com

Changes in v5:
- Drop the nested "items" in prep for future dtschema tools
- Link to v4: https://lore.kernel.org/r/20240611-arm-psci-system_reset2-vendor-reboots-v4-0-98f55aa74ae8@quicinc.com

Changes in v4:
- Change mode- properties from uint32-matrix to uint32-array
- Restructure the reset-types node so only the restriction is in the
  if/then schemas and not the entire definition
- Link to v3: https://lore.kernel.org/r/20240515-arm-psci-system_reset2-vendor-reboots-v3-0-16dd4f9c0ab4@quicinc.com

Changes in v3:
- Limit outer number of items to 1 for mode-* properties
- Move the reboot-mode for psci under a subnode "reset-types"
- Fix the DT node in qcm6490-idp so it doesn't overwrite the one from
  sc7820.dtsi
- Link to v2: https://lore.kernel.org/r/20240414-arm-psci-system_reset2-vendor-reboots-v2-0-da9a055a648f@quicinc.com

Changes in v2:
- Fixes to schema as suggested by Rob and Krzysztof
- Add qcm6490 idp as first Qualcomm device to support
- Link to v1: https://lore.kernel.org/r/20231117-arm-psci-system_reset2-vendor-reboots-v1-0-03c4612153e2@quicinc.com

Changes in v1:
- Reference reboot-mode bindings as suggeted by Rob.
- Link to RFC: https://lore.kernel.org/r/20231030-arm-psci-system_reset2-vendor-reboots-v1-0-dcdd63352ad1@quicinc.com

---
Elliot Berman (4):
      dt-bindings: arm: Document reboot mode magic
      arm64: dts: qcom: qcm6490-idp: Add PSCI SYSTEM_RESET2 types
      arm64: dts: qcom: qcs6490-rb3gen2: Add PSCI SYSTEM_RESET2 types
      arm64: dts: qcom: sa8775p-ride: Add PSCI SYSTEM_RESET2 types

Shivendra Pratap (6):
      power: reset: reboot-mode: Add device tree node-based registration
      dt-bindings: power: reset: Document reboot-mode cookie
      power: reset: reboot-mode: Add optional cookie argument
      firmware: psci: Implement vendor-specific reset-types as reboot-mode
      Documentation: ABI: Add sysfs-class-reboot-mode-reboot_modes
      power: reset: reboot-mode: Expose sysfs for registered arguments

 .../testing/sysfs-class-reboot-mode-reboot_modes   |  39 ++++++
 Documentation/devicetree/bindings/arm/psci.yaml    |  41 ++++++
 .../bindings/power/reset/reboot-mode.yaml          |  12 +-
 arch/arm64/boot/dts/qcom/qcm6490-idp.dts           |   7 ++
 arch/arm64/boot/dts/qcom/qcs6490-rb3gen2.dts       |   7 ++
 arch/arm64/boot/dts/qcom/sa8775p-ride.dtsi         |   7 ++
 arch/arm64/boot/dts/qcom/sa8775p.dtsi              |   2 +-
 arch/arm64/boot/dts/qcom/sc7280.dtsi               |   2 +-
 drivers/firmware/psci/Kconfig                      |   1 +
 drivers/firmware/psci/psci.c                       |  53 +++++++-
 drivers/power/reset/reboot-mode.c                  | 140 +++++++++++++++++----
 include/linux/reboot-mode.h                        |   5 +-
 12 files changed, 280 insertions(+), 36 deletions(-)
---
base-commit: 58ba80c4740212c29a1cf9b48f588e60a7612209
change-id: 20250709-arm-psci-system_reset2-vendor-reboots-46c80044afcf

Best regards,
-- 
Shivendra Pratap <shivendra.pratap@oss.qualcomm.com>


