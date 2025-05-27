Return-Path: <devicetree+bounces-180958-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 980D7AC5BE9
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 23:06:28 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 35A1C1BA8286
	for <lists+devicetree@lfdr.de>; Tue, 27 May 2025 21:06:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1B3C8211484;
	Tue, 27 May 2025 21:05:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="kMCED8XF"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D1A13217F34
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 21:05:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748379908; cv=none; b=BlyTGlBqil/MnboIw4KeWfRWK/AJ99oNaaztGTMEIH0p0uN134MnRF5Kwysm0jC9xruPHif8d2R83M6iG5C9t295RLWP6+QncIGrbDskpF9wm8MqTUo3spwqyJHhvIhYsIuk/ZujTzqbVYtcUFAgM4AkRW15uTs69CbQ4vJWXkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748379908; c=relaxed/simple;
	bh=PevywGGapSAG4MFE6ngkqj2YuUx5aoI0ILq2Z2idU8w=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UPgt4D6IEk6hIwImOGrymIAJwJS+uOmizV6EI77XhQwRtxC3rXi3JxKENGd8/dPES9uKxsEcfph0z18/hDnm1hWDoKa9t6wOCts/sHoGD1KH4/58H3unca7H0PV5PgNCr8SGmvaeBor831SYqNM1PRW00Jnl1iGKiwOR3TPlAxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=kMCED8XF; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 54RJteqP001972
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 21:05:04 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2/3HGUo2MtGRqntCaiBRNk9jwrbsOQcOGUX5HHY23Zo=; b=kMCED8XFAnVuLyPB
	tfN58tqCUjREwbjC9h3n4hveemLUyHrK4zxnlhGmdjxaR5Z8jAnVKT/Jq6niH4oI
	B5yn6SsEE8CU0mvStZq1ZZQAZxGU7DV8DXffV56uNXewTLscXh3yb2Owuv0FwrYw
	FciaK3an7I/tLiLq/bkaY+HaPlo/h2LrotyzqcxXVOc0iky0fhtDbhTEpfTkjF1R
	v4ZoMg9v5KO0/Po7xufxemlxqhVjJR7VUJzuVEpWIk6rP+CxUpTShX9FXPDyI2HJ
	dbfvwkGukAvt9zJwtobnYjXKVLSpqjTg7XVl6WalYxVXC0gaHdMo4Y6qrUtyI+Ju
	l5s/Jw==
Received: from mail-pg1-f198.google.com (mail-pg1-f198.google.com [209.85.215.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 46u549g7c8-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 27 May 2025 21:05:04 +0000 (GMT)
Received: by mail-pg1-f198.google.com with SMTP id 41be03b00d2f7-b26e0fee53eso2341916a12.1
        for <devicetree@vger.kernel.org>; Tue, 27 May 2025 14:05:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1748379903; x=1748984703;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=2/3HGUo2MtGRqntCaiBRNk9jwrbsOQcOGUX5HHY23Zo=;
        b=WydIUHtwcqvCDzAOqaPI9uxtn//DB99L+sFDwnH/CJAYRWElHzEGq88aOpr3uvt0vD
         ra7633IzUecEo0VeDGQdCi2cUl39b2euYxeAXMRSRzXiOsJDhxW1pltbJfQ1XWxbq0vu
         7Lys1GPfWBIW+5VFekgz//HvMRCo6/UzK0b3c/XxtFwxyCPDTyNDNY8uOjFW4QAokQxG
         P8S+bkeeNywsP4VF1gu82rpPO4INUpJeJyCtJl/yj1hQy6wJW1NcldqEbT5+gxsN8TKB
         Qco4Df3uNHEIm9JjO85gRyGUdvvJcchtlWaCjrepDhtijjXMZaYwKaAUagCgAJNgwc+X
         xJYg==
X-Forwarded-Encrypted: i=1; AJvYcCUtC18WKuYuhgiZipc8ixI6ypJ/yIU1ZjRwQ0Pu5BgWcv5KKiz40z04N4Y4aLTqg7XMZ2nD2fU/fa0S@vger.kernel.org
X-Gm-Message-State: AOJu0Yy55BsXZnRX6dYHOr6ZVQjUSUvRopOaCTBycQquKECEk0PVU9Jx
	6kpstENdHX4t4aAbCkdKdexIcvJHGZ9ISAl1i01Ju9yW3Cf1tS/XwaeETMnuiTRs1Lzl87/KOWm
	mlQgxH483Q09/rBBp4TtteGqNTwnHasbycKIl0tkTS2d9GuRs5mbvxeoG9PEDXv6R
X-Gm-Gg: ASbGncvxRIwV/OR71lRNa8VyRcfdRrfNspeWc+wqyloKxm1jJGVvATBwFapMMknZ70Y
	R3EC8wg1LeoYOiIZ5g9Cgvk2RkrWAjFRToflkVuphWao8NNshdVvRPb+MmwLw3bX6YSY9PvDtbV
	rj4pgQuQTTm2YhRaUAmaJgM04mtRElVeOKbbNEMerskJvNhQXRYw4i3sZ3M05huDdZ1d76R/YFY
	gQEGOWyxfvtyjs0Qa9708tAOKDFNFqtf0Mab6fyMGVFLszqEOPFCRYh5NIJE65IHM3970z+b483
	pqkTGdSeuFgdEFmaH72JZodUU7vezHuQusKNV7sm+CS8oRsW+WT5Irc58pBtFZfqIiM=
X-Received: by 2002:a05:6a21:3984:b0:215:e9aa:7fff with SMTP id adf61e73a8af0-2188c37406fmr24798611637.31.1748379903117;
        Tue, 27 May 2025 14:05:03 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGuurhrHN/MihCxAPYTt/pZCO41LXo0pEoLKI4JOXeYxLDBNhJJpMdGYa1LTYB3X3egWHfeDg==
X-Received: by 2002:a05:6a21:3984:b0:215:e9aa:7fff with SMTP id adf61e73a8af0-2188c37406fmr24798572637.31.1748379902642;
        Tue, 27 May 2025 14:05:02 -0700 (PDT)
Received: from hu-molvera-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7465e64836fsm29167b3a.26.2025.05.27.14.05.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 May 2025 14:05:02 -0700 (PDT)
From: Melody Olvera <melody.olvera@oss.qualcomm.com>
Date: Tue, 27 May 2025 14:04:42 -0700
Subject: [PATCH v6 06/10] phy: qcom: Add M31 based eUSB2 PHY driver
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250527-sm8750_usb_master-v6-6-d58de3b41d34@oss.qualcomm.com>
References: <20250527-sm8750_usb_master-v6-0-d58de3b41d34@oss.qualcomm.com>
In-Reply-To: <20250527-sm8750_usb_master-v6-0-d58de3b41d34@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-usb@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Melody Olvera <melody.olvera@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1748379891; l=11792;
 i=melody.olvera@oss.qualcomm.com; s=20241204; h=from:subject:message-id;
 bh=B3fZATkj/ziFzRb18Hgq8kVogJTvn4JD0AIEU8tIdnM=;
 b=zFyHvhCZ7aXG2CwY/nglEMlUman9JRTGJ/BSwri+Fbn04n3KSWVnV/pKaZXUU4xKn3TSsP64W
 r6ntTRoeT5/DOrSt0IPODchwE9Kv1fBy1r/eUsUs6QXX/ZwJRgjJtvZ
X-Developer-Key: i=melody.olvera@oss.qualcomm.com; a=ed25519;
 pk=1DGLp3zVYsHAWipMaNZZTHR321e8xK52C9vuAoeca5c=
X-Proofpoint-GUID: imMazg6UxJ8PuzaSTFd5oJyXWeEQBuaj
X-Authority-Analysis: v=2.4 cv=E9nNpbdl c=1 sm=1 tr=0 ts=68362900 cx=c_pps
 a=Qgeoaf8Lrialg5Z894R3/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=dt9VzEwgFbYA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8
 a=SaPFg9MOAsmIOgfY5tUA:9 a=QEXdDO2ut3YA:10 a=x9snwWr2DeNwDh03kgHS:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNTI3MDE3OCBTYWx0ZWRfX+2C86gn1QqIX
 Z/kzz1cLaPw8TFa9c8HZCp5tigIj5tzvDrAYp70/vUDPuZriuS0xHk8YpVrXo/+aG0LhEfwyA0c
 m7wRdbonuDpsZXjMAsRkfcHERXWemIBKNs/Asn7LLRHjpTSsHXBqAtXLOEx4ogxIRWHIFIv6QQu
 Op/FRnlDG2d2nCGeT6r7ZdXgfsFnSfVeaCsvxlA4F9QFDzJhRASB0DVjdRA+bfcuxQzSdtvzfq+
 ssZsYw/L9OH/jL+AdeLEql4RnFUkVpfVnIkfVZYkIhXvJCqwGQG8V1mqYw/TLgGO/KGr7eH5GcH
 9ynalPexkg6CzvG32UuZbc5qGfOwew2CFJ5SPmcQbBZMMwVvmuOqF4BbMehDLh384FAE9UIZYKs
 Hk5Tx5f1cz/F64MLEN+fuWZdM8HrY73W0/DbpcfdvThETrN7nA+3aVA1SPr12+4G1j5ykLa+
X-Proofpoint-ORIG-GUID: imMazg6UxJ8PuzaSTFd5oJyXWeEQBuaj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-05-27_10,2025-05-27_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 mlxscore=0 mlxlogscore=999 spamscore=0 malwarescore=0 priorityscore=1501
 adultscore=0 phishscore=0 impostorscore=0 lowpriorityscore=0 suspectscore=0
 clxscore=1015 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505160000
 definitions=main-2505270178

From: Wesley Cheng <quic_wcheng@quicinc.com>

SM8750 utilizes an eUSB2 PHY from M31. Add the initialization
sequences to bring it out of reset and into an operational state. This
differs to the M31 USB driver, in that the M31 eUSB2 driver will
require a connection to an eUSB2 repeater. This PHY driver will handle
the initialization of the associated eUSB2 repeater when required.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Wesley Cheng <quic_wcheng@quicinc.com>
Signed-off-by: Melody Olvera <melody.olvera@oss.qualcomm.com>
---
 drivers/phy/qualcomm/Kconfig              |  10 +
 drivers/phy/qualcomm/Makefile             |   1 +
 drivers/phy/qualcomm/phy-qcom-m31-eusb2.c | 325 ++++++++++++++++++++++++++++++
 3 files changed, 336 insertions(+)

diff --git a/drivers/phy/qualcomm/Kconfig b/drivers/phy/qualcomm/Kconfig
index 85581b40e598814cb27d954e8c63eba809702622..60a0ead127fa9f08749e1bc686e15cc5eb341c28 100644
--- a/drivers/phy/qualcomm/Kconfig
+++ b/drivers/phy/qualcomm/Kconfig
@@ -158,6 +158,16 @@ config PHY_QCOM_UNIPHY_PCIE_28LP
 	  handles PHY initialization, clock management required after
 	  resetting the hardware and power management.
 
+config PHY_QCOM_M31_EUSB
+	tristate "Qualcomm M31 eUSB2 PHY driver support"
+	depends on USB && (ARCH_QCOM || COMPILE_TEST)
+	select GENERIC_PHY
+	help
+	  Enable this to support M31 EUSB2 PHY transceivers on Qualcomm
+	  chips with DWC3 USB core. It supports initializing and cleaning
+	  up of the associated USB repeater that is paired with the eUSB2
+	  PHY.
+
 config PHY_QCOM_USB_HS
 	tristate "Qualcomm USB HS PHY module"
 	depends on USB_ULPI_BUS
diff --git a/drivers/phy/qualcomm/Makefile b/drivers/phy/qualcomm/Makefile
index 3851e28a212d4a677a5b41805868f38b9ab49841..b71a6a0bed3f1489b1d07664ecd728f1db145986 100644
--- a/drivers/phy/qualcomm/Makefile
+++ b/drivers/phy/qualcomm/Makefile
@@ -5,6 +5,7 @@ obj-$(CONFIG_PHY_QCOM_EDP)		+= phy-qcom-edp.o
 obj-$(CONFIG_PHY_QCOM_IPQ4019_USB)	+= phy-qcom-ipq4019-usb.o
 obj-$(CONFIG_PHY_QCOM_IPQ806X_SATA)	+= phy-qcom-ipq806x-sata.o
 obj-$(CONFIG_PHY_QCOM_M31_USB)		+= phy-qcom-m31.o
+obj-$(CONFIG_PHY_QCOM_M31_EUSB)		+= phy-qcom-m31-eusb2.o
 obj-$(CONFIG_PHY_QCOM_PCIE2)		+= phy-qcom-pcie2.o
 
 obj-$(CONFIG_PHY_QCOM_QMP_COMBO)	+= phy-qcom-qmp-combo.o phy-qcom-qmp-usbc.o
diff --git a/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
new file mode 100644
index 0000000000000000000000000000000000000000..9f02b8a78f6e2ffde9149bc5cf1a454c8f0a2563
--- /dev/null
+++ b/drivers/phy/qualcomm/phy-qcom-m31-eusb2.c
@@ -0,0 +1,325 @@
+// SPDX-License-Identifier: GPL-2.0-only
+/*
+ * Copyright (c) 2024-2025 Qualcomm Innovation Center, Inc. All rights reserved.
+ */
+
+#include <linux/clk.h>
+#include <linux/delay.h>
+#include <linux/err.h>
+#include <linux/io.h>
+#include <linux/kernel.h>
+#include <linux/module.h>
+#include <linux/of.h>
+#include <linux/phy/phy.h>
+#include <linux/platform_device.h>
+#include <linux/reset.h>
+#include <linux/slab.h>
+
+#include <linux/regulator/consumer.h>
+
+#define USB_PHY_UTMI_CTRL0		(0x3c)
+#define SLEEPM				BIT(0)
+
+#define USB_PHY_UTMI_CTRL5		(0x50)
+#define POR				BIT(1)
+
+#define USB_PHY_HS_PHY_CTRL_COMMON0	(0x54)
+#define SIDDQ_SEL			BIT(1)
+#define SIDDQ				BIT(2)
+#define FSEL				GENMASK(6, 4)
+#define FSEL_38_4_MHZ_VAL		(0x6)
+
+#define USB_PHY_HS_PHY_CTRL2		(0x64)
+#define USB2_SUSPEND_N			BIT(2)
+#define USB2_SUSPEND_N_SEL		BIT(3)
+
+#define USB_PHY_CFG0			(0x94)
+#define UTMI_PHY_CMN_CTRL_OVERRIDE_EN	BIT(1)
+
+#define USB_PHY_CFG1			(0x154)
+#define PLL_EN				BIT(0)
+
+#define USB_PHY_FSEL_SEL		(0xb8)
+#define FSEL_SEL			BIT(0)
+
+#define USB_PHY_XCFGI_39_32		(0x16c)
+#define HSTX_PE				GENMASK(3, 2)
+
+#define USB_PHY_XCFGI_71_64		(0x17c)
+#define HSTX_SWING			GENMASK(3, 0)
+
+#define USB_PHY_XCFGI_31_24		(0x168)
+#define HSTX_SLEW			GENMASK(2, 0)
+
+#define USB_PHY_XCFGI_7_0		(0x15c)
+#define PLL_LOCK_TIME			GENMASK(1, 0)
+
+#define M31_EUSB_PHY_INIT_CFG(o, b, v)	\
+{				\
+	.off = o,		\
+	.mask = b,		\
+	.val = v,		\
+}
+
+struct m31_phy_tbl_entry {
+	u32 off;
+	u32 mask;
+	u32 val;
+};
+
+struct m31_eusb2_priv_data {
+	const struct m31_phy_tbl_entry	*setup_seq;
+	unsigned int			setup_seq_nregs;
+	const struct m31_phy_tbl_entry	*override_seq;
+	unsigned int			override_seq_nregs;
+	const struct m31_phy_tbl_entry	*reset_seq;
+	unsigned int			reset_seq_nregs;
+	unsigned int			fsel;
+};
+
+static const struct m31_phy_tbl_entry m31_eusb2_setup_tbl[] = {
+	M31_EUSB_PHY_INIT_CFG(USB_PHY_CFG0, UTMI_PHY_CMN_CTRL_OVERRIDE_EN, 1),
+	M31_EUSB_PHY_INIT_CFG(USB_PHY_UTMI_CTRL5, POR, 1),
+	M31_EUSB_PHY_INIT_CFG(USB_PHY_CFG1, PLL_EN, 1),
+	M31_EUSB_PHY_INIT_CFG(USB_PHY_FSEL_SEL, FSEL_SEL, 1),
+};
+
+static const struct m31_phy_tbl_entry m31_eusb_phy_override_tbl[] = {
+	M31_EUSB_PHY_INIT_CFG(USB_PHY_XCFGI_39_32, HSTX_PE, 0),
+	M31_EUSB_PHY_INIT_CFG(USB_PHY_XCFGI_71_64, HSTX_SWING, 7),
+	M31_EUSB_PHY_INIT_CFG(USB_PHY_XCFGI_31_24, HSTX_SLEW, 0),
+	M31_EUSB_PHY_INIT_CFG(USB_PHY_XCFGI_7_0, PLL_LOCK_TIME, 0),
+};
+
+static const struct m31_phy_tbl_entry m31_eusb_phy_reset_tbl[] = {
+	M31_EUSB_PHY_INIT_CFG(USB_PHY_HS_PHY_CTRL2, USB2_SUSPEND_N_SEL, 1),
+	M31_EUSB_PHY_INIT_CFG(USB_PHY_HS_PHY_CTRL2, USB2_SUSPEND_N, 1),
+	M31_EUSB_PHY_INIT_CFG(USB_PHY_UTMI_CTRL0, SLEEPM, 1),
+	M31_EUSB_PHY_INIT_CFG(USB_PHY_HS_PHY_CTRL_COMMON0, SIDDQ_SEL, 1),
+	M31_EUSB_PHY_INIT_CFG(USB_PHY_HS_PHY_CTRL_COMMON0, SIDDQ, 0),
+	M31_EUSB_PHY_INIT_CFG(USB_PHY_UTMI_CTRL5, POR, 0),
+	M31_EUSB_PHY_INIT_CFG(USB_PHY_HS_PHY_CTRL2, USB2_SUSPEND_N_SEL, 0),
+	M31_EUSB_PHY_INIT_CFG(USB_PHY_CFG0, UTMI_PHY_CMN_CTRL_OVERRIDE_EN, 0),
+};
+
+static const struct regulator_bulk_data m31_eusb_phy_vregs[] = {
+	{ .supply = "vdd" },
+	{ .supply = "vdda12" },
+};
+
+#define M31_EUSB_NUM_VREGS		ARRAY_SIZE(m31_eusb_phy_vregs)
+
+struct m31eusb2_phy {
+	struct phy			 *phy;
+	void __iomem			 *base;
+	const struct m31_eusb2_priv_data *data;
+	enum phy_mode			 mode;
+
+	struct regulator_bulk_data	 *vregs;
+	struct clk			 *clk;
+	struct reset_control		 *reset;
+
+	struct phy			 *repeater;
+};
+
+static int m31eusb2_phy_write_readback(void __iomem *base, u32 offset,
+				       const u32 mask, u32 val)
+{
+	u32 write_val;
+	u32 tmp;
+
+	tmp = readl(base + offset);
+	tmp &= ~mask;
+	write_val = tmp | val;
+
+	writel(write_val, base + offset);
+
+	tmp = readl(base + offset);
+	tmp &= mask;
+
+	if (tmp != val) {
+		pr_err("write: %x to offset: %x FAILED\n", val, offset);
+		return -EINVAL;
+	}
+
+	return 0;
+}
+
+static int m31eusb2_phy_write_sequence(struct m31eusb2_phy *phy,
+				       const struct m31_phy_tbl_entry *tbl,
+				       int num)
+{
+	int i;
+	int ret;
+
+	for (i = 0 ; i < num; i++, tbl++) {
+		dev_dbg(&phy->phy->dev, "Offset:%x BitMask:%x Value:%x",
+			tbl->off, tbl->mask, tbl->val);
+
+		ret = m31eusb2_phy_write_readback(phy->base,
+						  tbl->off, tbl->mask,
+						  tbl->val << __ffs(tbl->mask));
+		if (ret < 0)
+			return ret;
+	}
+
+	return 0;
+}
+
+static int m31eusb2_phy_set_mode(struct phy *uphy, enum phy_mode mode, int submode)
+{
+	struct m31eusb2_phy *phy = phy_get_drvdata(uphy);
+
+	phy->mode = mode;
+
+	return phy_set_mode_ext(phy->repeater, mode, submode);
+}
+
+static int m31eusb2_phy_init(struct phy *uphy)
+{
+	struct m31eusb2_phy *phy = phy_get_drvdata(uphy);
+	const struct m31_eusb2_priv_data *data = phy->data;
+	int ret;
+
+	ret = regulator_bulk_enable(M31_EUSB_NUM_VREGS, phy->vregs);
+	if (ret) {
+		dev_err(&uphy->dev, "failed to enable regulator, %d\n", ret);
+		return ret;
+	}
+
+	ret = phy_init(phy->repeater);
+	if (ret) {
+		dev_err(&uphy->dev, "repeater init failed. %d\n", ret);
+		goto disable_vreg;
+	}
+
+	ret = clk_prepare_enable(phy->clk);
+	if (ret) {
+		dev_err(&uphy->dev, "failed to enable cfg ahb clock, %d\n", ret);
+		goto disable_repeater;
+	}
+
+	/* Perform phy reset */
+	reset_control_assert(phy->reset);
+	udelay(5);
+	reset_control_deassert(phy->reset);
+
+	m31eusb2_phy_write_sequence(phy, data->setup_seq, data->setup_seq_nregs);
+	m31eusb2_phy_write_readback(phy->base,
+				    USB_PHY_HS_PHY_CTRL_COMMON0, FSEL,
+				    FIELD_PREP(FSEL, data->fsel));
+	m31eusb2_phy_write_sequence(phy, data->override_seq, data->override_seq_nregs);
+	m31eusb2_phy_write_sequence(phy, data->reset_seq, data->reset_seq_nregs);
+
+	return 0;
+
+disable_repeater:
+	phy_exit(phy->repeater);
+disable_vreg:
+	regulator_bulk_disable(M31_EUSB_NUM_VREGS, phy->vregs);
+
+	return 0;
+}
+
+static int m31eusb2_phy_exit(struct phy *uphy)
+{
+	struct m31eusb2_phy *phy = phy_get_drvdata(uphy);
+
+	clk_disable_unprepare(phy->clk);
+	regulator_bulk_disable(M31_EUSB_NUM_VREGS, phy->vregs);
+	phy_exit(phy->repeater);
+
+	return 0;
+}
+
+static const struct phy_ops m31eusb2_phy_gen_ops = {
+	.init		= m31eusb2_phy_init,
+	.exit		= m31eusb2_phy_exit,
+	.set_mode	= m31eusb2_phy_set_mode,
+	.owner		= THIS_MODULE,
+};
+
+static int m31eusb2_phy_probe(struct platform_device *pdev)
+{
+	struct phy_provider *phy_provider;
+	const struct m31_eusb2_priv_data *data;
+	struct device *dev = &pdev->dev;
+	struct m31eusb2_phy *phy;
+	int ret;
+
+	phy = devm_kzalloc(dev, sizeof(*phy), GFP_KERNEL);
+	if (!phy)
+		return -ENOMEM;
+
+	data = device_get_match_data(dev);
+	if (IS_ERR(data))
+		return -EINVAL;
+	phy->data = data;
+
+	phy->base = devm_platform_ioremap_resource(pdev, 0);
+	if (IS_ERR(phy->base))
+		return PTR_ERR(phy->base);
+
+	phy->reset = devm_reset_control_get_exclusive(dev, NULL);
+	if (IS_ERR(phy->reset))
+		return PTR_ERR(phy->reset);
+
+	phy->clk = devm_clk_get(dev, NULL);
+	if (IS_ERR(phy->clk))
+		return dev_err_probe(dev, PTR_ERR(phy->clk),
+				     "failed to get clk\n");
+
+	phy->phy = devm_phy_create(dev, NULL, &m31eusb2_phy_gen_ops);
+	if (IS_ERR(phy->phy))
+		return dev_err_probe(dev, PTR_ERR(phy->phy),
+				     "failed to create phy\n");
+
+	ret = devm_regulator_bulk_get_const(dev, M31_EUSB_NUM_VREGS,
+					    m31_eusb_phy_vregs, &phy->vregs);
+	if (ret)
+		return dev_err_probe(dev, ret,
+				"failed to get regulator supplies\n");
+
+	phy_set_drvdata(phy->phy, phy);
+
+	phy->repeater = devm_of_phy_get_by_index(dev, dev->of_node, 0);
+	if (IS_ERR(phy->repeater))
+		return dev_err_probe(dev, PTR_ERR(phy->repeater),
+				     "failed to get repeater\n");
+
+	phy_provider = devm_of_phy_provider_register(dev, of_phy_simple_xlate);
+	if (!IS_ERR(phy_provider))
+		dev_info(dev, "Registered M31 USB phy\n");
+
+	return PTR_ERR_OR_ZERO(phy_provider);
+}
+
+static const struct m31_eusb2_priv_data m31_eusb_v1_data = {
+	.setup_seq = m31_eusb2_setup_tbl,
+	.setup_seq_nregs = ARRAY_SIZE(m31_eusb2_setup_tbl),
+	.override_seq = m31_eusb_phy_override_tbl,
+	.override_seq_nregs = ARRAY_SIZE(m31_eusb_phy_override_tbl),
+	.reset_seq = m31_eusb_phy_reset_tbl,
+	.reset_seq_nregs = ARRAY_SIZE(m31_eusb_phy_reset_tbl),
+	.fsel = FSEL_38_4_MHZ_VAL,
+};
+
+static const struct of_device_id m31eusb2_phy_id_table[] = {
+	{ .compatible = "qcom,sm8750-m31-eusb2-phy", .data = &m31_eusb_v1_data },
+	{ },
+};
+MODULE_DEVICE_TABLE(of, m31eusb2_phy_id_table);
+
+static struct platform_driver m31eusb2_phy_driver = {
+	.probe = m31eusb2_phy_probe,
+	.driver = {
+		.name = "qcom-m31eusb2-phy",
+		.of_match_table = m31eusb2_phy_id_table,
+	},
+};
+
+module_platform_driver(m31eusb2_phy_driver);
+
+MODULE_AUTHOR("Wesley Cheng <quic_wcheng@quicinc.com>");
+MODULE_DESCRIPTION("eUSB2 Qualcomm M31 HSPHY driver");
+MODULE_LICENSE("GPL");

-- 
2.48.1


