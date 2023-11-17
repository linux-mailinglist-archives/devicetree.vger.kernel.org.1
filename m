Return-Path: <devicetree+bounces-16766-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 2490B7EFAB0
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 22:27:23 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B7329B20D01
	for <lists+devicetree@lfdr.de>; Fri, 17 Nov 2023 21:27:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B827851C3B;
	Fri, 17 Nov 2023 21:20:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=quicinc.com header.i=@quicinc.com header.b="o9ZmKDY5"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3CCE02D6D;
	Fri, 17 Nov 2023 13:19:23 -0800 (PST)
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.17.1.19/8.17.1.19) with ESMTP id 3AHKgQv4006270;
	Fri, 17 Nov 2023 21:19:09 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=quicinc.com; h=from : subject :
 date : message-id : mime-version : content-type :
 content-transfer-encoding : to : cc; s=qcppdkim1;
 bh=udv6NyKKVwCyn6noriaiVFU15xIFM+OhIbVPIwhcJ8U=;
 b=o9ZmKDY5oAAYXnX7KcOpAEs64UyzwACMW+VWlIjRtcvY1ZLmAt8/dhyZXNaPL8Nn9sLt
 ENqnsyAe89hQ9FHZlJE6K5/+1/nlBFXkC7SjPs3pMldLspl4REsQCXtUidkwicupN5/9
 A9HzFxPLkgsP97mgI5Se/3cNGFm1p2/sJHHTngOIhyd0Ztu/VjzvzszwaeSR6P6FfCuc
 qMvWx6b/Ru99RaxXL9wYej33//Ry2C1wUsvfgNQwUshq+n3u/iuHpC0c/LN8j2nh4vge
 J/lYfHVmtRbVhXmgUsYxGGhpuMTw8ax9l7L6CmWbRJuOwrPtE0GNZk5Kj+TKGQCY2Elp nA== 
Received: from nasanppmta02.qualcomm.com (i-global254.qualcomm.com [199.106.103.254])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 3ue2na1uaj-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 17 Nov 2023 21:19:08 +0000
Received: from nasanex01b.na.qualcomm.com (nasanex01b.na.qualcomm.com [10.46.141.250])
	by NASANPPMTA02.qualcomm.com (8.17.1.5/8.17.1.5) with ESMTPS id 3AHLJ809013105
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NOT);
	Fri, 17 Nov 2023 21:19:08 GMT
Received: from hu-eberman-lv.qualcomm.com (10.49.16.6) by
 nasanex01b.na.qualcomm.com (10.46.141.250) with Microsoft SMTP Server
 (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.2.1118.40; Fri, 17 Nov 2023 13:19:07 -0800
From: Elliot Berman <quic_eberman@quicinc.com>
Subject: [PATCH 0/3] Implement vendor resets for PSCI SYSTEM_RESET2
Date: Fri, 17 Nov 2023 13:18:45 -0800
Message-ID: <20231117-arm-psci-system_reset2-vendor-reboots-v1-0-03c4612153e2@quicinc.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIALXYV2UC/5XNMQ6CQBCF4auYrR0zu4sQrbyHIQZmR50CFneQa
 Ax3F9TGTsv3iv97GOUkrGa7eJjEg6jEdhp2uTB0rtoTg4RpG4fOW7Q5VKmBTklA79pzc0is3Ds
 YuA0xQeI6xl6ByFchW+eEBZqp1SU+yu3l7Mtpn0X7mO4vdrDz+xFc9qMwWEDA3NZFQbixGe4uV
 yFpaUWxmcl3z+M/vUAh5N6vXRXsV68cx/EJ6FI4YywBAAA=
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
X-ClientProxiedBy: nalasex01a.na.qualcomm.com (10.47.209.196) To
 nasanex01b.na.qualcomm.com (10.46.141.250)
X-QCInternal: smtphost
X-Proofpoint-Virus-Version: vendor=nai engine=6200 definitions=5800 signatures=585085
X-Proofpoint-GUID: WKdL-ltEy1yibgSilSECFLnA6e2q4IS1
X-Proofpoint-ORIG-GUID: WKdL-ltEy1yibgSilSECFLnA6e2q4IS1
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.272,Aquarius:18.0.987,Hydra:6.0.619,FMLib:17.11.176.26
 definitions=2023-11-17_21,2023-11-17_01,2023-05-22_02
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 spamscore=0
 priorityscore=1501 malwarescore=0 mlxscore=0 lowpriorityscore=0
 mlxlogscore=949 phishscore=0 suspectscore=0 clxscore=1011 adultscore=0
 impostorscore=0 bulkscore=0 classifier=spam adjust=0 reason=mlx
 scancount=1 engine=8.12.0-2311060000 definitions=main-2311170159

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
Changes since RFC:
- Reference reboot-mode bindings as suggeted by Rob.
- Link to RFC: https://lore.kernel.org/r/20231030-arm-psci-system_reset2-vendor-reboots-v1-0-dcdd63352ad1@quicinc.com

---
Elliot Berman (3):
      dt-bindings: power: reset: Convert mode-.* properties to array
      dt-bindings: arm: Document reboot mode magic
      firmware: psci: Read and use vendor reset types

 Documentation/devicetree/bindings/arm/psci.yaml    | 36 ++++++++-
 .../bindings/power/reset/reboot-mode.yaml          |  7 +-
 drivers/firmware/psci/psci.c                       | 87 +++++++++++++++++++++-
 3 files changed, 125 insertions(+), 5 deletions(-)
---
base-commit: f86128050d2d854035bfa461aadf36e6951b2bac
change-id: 20231016-arm-psci-system_reset2-vendor-reboots-cc3ad456c070

Best regards,
-- 
Elliot Berman <quic_eberman@quicinc.com>


