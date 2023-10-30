Return-Path: <devicetree+bounces-12987-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 65AE47DC1F4
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 22:32:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A0926281668
	for <lists+devicetree@lfdr.de>; Mon, 30 Oct 2023 21:32:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 18E931CA95;
	Mon, 30 Oct 2023 21:32:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="GngQwqwP"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AA281C6AF
	for <devicetree@vger.kernel.org>; Mon, 30 Oct 2023 21:32:23 +0000 (UTC)
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF431129;
	Mon, 30 Oct 2023 14:32:14 -0700 (PDT)
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 39UKJgQu004489;
	Mon, 30 Oct 2023 21:31:56 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : subject :
 date : message-id : mime-version : content-type :
 content-transfer-encoding : to : cc; s=qcppdkim1;
 bh=PKPLpEmu3bSIQ05Y3PAuzbbTWkoBfmxS7boEVntcA80=;
 b=GngQwqwP3Xki62VVNO3XdZPzxs6FQqn2wFf07xrfHK1N5eWPfzkiWJlXR8SdJ8BRE0BF
 3BEEUQV4/gWIhpaxP18DW9cSfaikTl941MBw3ejwk6XUgjMOh9WA2cniRkc8nrJCE6xO
 DuvESMdQmDMk9DcawdjMoAgXFNGeISSBDQnmwOGt4Ai72WOxiB8kdB0dzRkoiccu5qGT
 Mw9k79lN5c8tKHZwCoJOIkHEkpc2V4CxN6ngA2jigoZi3iIoQ0P/nEIL70K4ydTAIQ4T
 HkhqaTP4L1to1Rr0hu/e73VjLLhqxFSdTajqabDjytk2ubVWI0J5AN3ajO42UQj/fx41 pg== 
Received: from nasanppmta04.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3u0sw7w13h-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 30 Oct 2023 21:31:56 +0000
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA04.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 39ULVtLF021815
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Mon, 30 Oct 2023 21:31:55 GMT
Received: from hu-eberman-lv.qualcomm.com (10.49.16.6) by
 nasanex01b.na.qualcomm.com (10.46.141.250) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.39; Mon, 30 Oct 2023 14:31:54 -0700
From: Elliot Berman <quic_eberman@quicinc.com>
Subject: [PATCH RFC 0/2] Implement vendor resets for PSCI SYSTEM_RESET2
Date: Mon, 30 Oct 2023 14:31:32 -0700
Message-ID: <20231030-arm-psci-system_reset2-vendor-reboots-v1-0-dcdd63352ad1@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIALQgQGUC/43N0QqCQBAF0F+ReW5iV02ppyDoA3oNCR2nmgd3b
 WeTRPz3xH6gx3sv3DOBchBWOCQTBB5Exbsl2E0C9Kzdg1HaJUNq0swaW2AdOuyVBHXUyN0tsHJ
 McWDX+oCBG++jIlFWt/muIFMaWL76wHf5rM4VLucTVEv5FI0+jKs92HX6MWn+JzNYNGgK25Qlm
 b3NzfH1FhJHW/IdVPM8fwEbkar34QAAAA==
To: Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski
	<krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lorenzo Pieralisi <lpieralisi@kernel.org>,
        Mark Rutland
	<mark.rutland@arm.com>
CC: Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>,
        Melody Olvera
	<quic_molvera@quicinc.com>,
        <devicetree@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        Florian Fainelli <florian.fainelli@broadcom.com>,
        Elliot Berman
	<quic_eberman@quicinc.com>
X-Mailer: b4 0.13-dev
X-Originating-IP: [10.49.16.6]
X-ClientProxiedBy: nalasex01b.na.qualcomm.com (10.47.209.197) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-ORIG-GUID: kqHzloOp2CuJnR2kmU4V27W7PMCy_8Yh
X-Proofpoint-GUID: kqHzloOp2CuJnR2kmU4V27W7PMCy_8Yh
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-10-30_13,2023-10-27_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 mlxlogscore=727 clxscore=1015
 phishscore=0 lowpriorityscore=0 spamscore=0 malwarescore=0
 priorityscore=1501 adultscore=0 bulkscore=0 impostorscore=0 suspectscore=0
 mlxscore=0 classifier=spam adjust=0 reason=mlx scancount=1
 engine=8.12.0-2310240000 definitions=main-2310300168

The PSCI SYSTEM_RESET2 call allows vendor firmware to define additional
reset types which could be mapped to the reboot argument.

Setting up reboot on Qualcomm devices can be inconsistent from chipset
to chipset.  Generally, there is a PMIC register that gets written to
decide the reboot type. There is also sometimes a cookie that can be
written to indicate that the bootloader should behave differently than a
regular boot. These knobs evolve over product generations and require 
more drivers. Qualcomm firmwares are beginning to expose vendor
SYSTEM_RESET2 types to simplify driver requirements from Linux.

Add support in PSCI to statically wire reboot mode commands from
userspace to a vendor reset and cookie value using the device tree. The
DT bindings are similar to reboot mode framework except that 2
integers are accepted (the type and cookie). Also, reboot mode framework
is intended to program, but not reboot, the host. PSCI SYSTEM_RESET2
does both. I've not added support for reading ACPI tables since I don't
have any device which provides them + firmware that supports vendor
SYSTEM_RESET2 types.

Previous discussions around SYSTEM_RESET2:
- https://lore.kernel.org/lkml/20230724223057.1208122-2-quic_eberman@quicinc.com/T/
- https://lore.kernel.org/all/4a679542-b48d-7e11-f33a-63535a5c68cb@quicinc.com/

This RFC approach differs from the one sent in July by:
- Not using the reboot mode framework
- Added support to control both reset type and cookie
- Implicitly dropped "normal" reboot command, which is always just
  SYSTEM_RESET anyway.

Signed-off-by: Elliot Berman <quic_eberman@quicinc.com>
---
Elliot Berman (2):
      dt-bindings: arm: Document reboot mode magic
      firmware: psci: Read and use vendor reset types

 Documentation/devicetree/bindings/arm/psci.yaml | 13 ++++
 drivers/firmware/psci/psci.c                    | 87 ++++++++++++++++++++++++-
 2 files changed, 99 insertions(+), 1 deletion(-)
---
base-commit: 22e877699642285c47f5d7d83b2d59815c29ebe8
change-id: 20231016-arm-psci-system_reset2-vendor-reboots-cc3ad456c070

Best regards,
-- 
Elliot Berman <quic_eberman@quicinc.com>


