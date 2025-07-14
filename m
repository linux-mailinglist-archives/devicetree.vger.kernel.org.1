Return-Path: <devicetree+bounces-195877-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 401C8B03719
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 08:31:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 549C51892A96
	for <lists+devicetree@lfdr.de>; Mon, 14 Jul 2025 06:31:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4D7CD2264B5;
	Mon, 14 Jul 2025 06:31:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="XhAP8100"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EDF11F2BA4
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 06:31:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752474683; cv=none; b=g3PhlEAonqq7kkNWCuOodQ+ucjeMoaDjLgj3HYkrt12tVauR94HM2gz8pWocwgy6RQDQ8AW8ob/wvLTpYn29jYA8hlG4qf6aatWsZi2zk6M3miKFqVDBF2sD9WPFRmNTD97gfCl06oEEhyj+OUhstehrKFYka+EmSt0IdOn4FEg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752474683; c=relaxed/simple;
	bh=+wPOWYKwugoIf8mklL3U53Tn8gBLZL7yLlWIIj4mpnw=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=DQH6BqOWTRep4HLNtB3bXv4Kx7I2/0oqNtHOd87HhmIMT4vEbXIxh+mwf9RTSUrow8p7WUZ7XsTI1dF3zH6zjxrfO2uXj7kQg+ap6W1i/dTeO07s6BAa8cfLPuo3qZ8YLOIeoVXUIyT84tgiUGK8tVqomnOnhCV0djo1Hfr53js=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=XhAP8100; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56DMONgt013628
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 06:31:19 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=0wqXPJCmIO0vUREoCEbzWcWX5UzhT3+oWJ/
	3YK7SaqA=; b=XhAP8100rPlBQ50pSDQ+lHvfwHFkb6Xjs//lS5nBhJig58p/NQJ
	tLektCMGsNISv8FI8PfXqecQ+u4Pis2ZpCbAJSVmqnmYkBqjDTC4NaO5YeUT9LOv
	X7IL5F9NZiMGzHYaloCMbUYTs742r+5JcwtHEvznLVre9IGhylOVRKq6JTP+clin
	6a9t0Y5scbsiznIU8VK/reUGVNp57qeFf76jimiVkyw9g7PxR7mnTAvuztGjA2w8
	bGJR4GY5vYU8a7JX1AoRrCVOMmXiPanziqGoIdLxKTHoaKHfqYMSo07NToSbKnsR
	ejmjqQhn/3ZqPeH9tSgeCJtvO/A28TfyQow==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47ufxauh41-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 14 Jul 2025 06:31:18 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2356ce66d7cso68799065ad.1
        for <devicetree@vger.kernel.org>; Sun, 13 Jul 2025 23:31:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752474678; x=1753079478;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0wqXPJCmIO0vUREoCEbzWcWX5UzhT3+oWJ/3YK7SaqA=;
        b=E4HDdM7NWW5l0HXMlltU1BcJoraygsOjGajEcOpl4g+/XZAatP/Bb8ryZ/Jr/OmKLO
         JXJsCLtJKM3kwIhUF/fd66zePsMuTqmufqO/VqTJQEj9jbfjcjM2vxQqylhjCvPaGUOr
         ERPQUSeSqYQ5Qf7KIF+X18M5WaiKPZmZnIJ/o14aJi+S5gbdJptPXY0wEmfSQWYNB1Jo
         bto1QIkmre6Q/P3Jj3vFkWwI9p4N1LhPpj/8wbYQ0GN9NAKTDVlIOOzlBPru1o2TVUvM
         YMbodiyQLxe+Rknw6yvXMayl+F4cTy4yjmYIBZtRQtKxoIRi6ARKCGgygVWZ0dYURVsp
         CKyQ==
X-Forwarded-Encrypted: i=1; AJvYcCUFPOYqKSfE73K1sICj2yrmOmpJIghvmfFXfqpAhef5Y1nO3ECp+GURyLO2klut/klc2Xik2lNp2zTB@vger.kernel.org
X-Gm-Message-State: AOJu0Yxfa1JUV9phHtKY56ruMPczuBrrJcQW0j1rhzOOzS2XfoTizga8
	+sEKvrWkMYLDJ0pQAVIV87fJsjVzBXcoXuT09OCyerr+JjZUm38QnQxaIQ50K/4sqwn14FQJTnf
	oS38k6hN3OsQL04rJAYtJ6TSqGsY4Wat7te5mPufiXKzY8yMsaoScoipPWyK0PgAM
X-Gm-Gg: ASbGncuFdT4cNdHY07xpIb5aJQv9J5MwfvNYKVjVQeDgA0GyVsJU5eEmcDcP2ifer2v
	Q95P9KjoZXBnRd+jV3JhMGioo9UsaAdWDBuyBZFu7qFSBsbZHfMZoPH0hGoDdmKESPS1ulHlLl4
	tBI2a5VZyiYoOKXgAdH5NW+0jaCkPOZSXaGUlszvsI60mP/EbGGR103dKvIJk39AynLWNLGHSdz
	XqUbomJz6eV5CeWWbIVy3GNkp/+7mX53fKOshjx3PLj0WqcC6iv/jOtb079kfPZq1lfJbZtdt1z
	HhsgAJ77RvXNuGbQCgoMWnkvID0zr5WOLL8k+FgG3BxQaEItAl8cSgTMb55G10u8DDahvl5Ts4/
	vfxfLJwD4o5pZPypTqJ3u
X-Received: by 2002:a17:902:e54d:b0:235:f078:4746 with SMTP id d9443c01a7336-23dee263c53mr150587395ad.42.1752474677597;
        Sun, 13 Jul 2025 23:31:17 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFPLKAuifJqLzIISS3WOtiE7PpBWt3Y0U9Des4cLciVFaSNQhBO1Bz9VSSEWj3nEmc8jMwwxA==
X-Received: by 2002:a17:902:e54d:b0:235:f078:4746 with SMTP id d9443c01a7336-23dee263c53mr150587005ad.42.1752474677123;
        Sun, 13 Jul 2025 23:31:17 -0700 (PDT)
Received: from jiegan.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23de4334005sm86138255ad.158.2025.07.13.23.31.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Jul 2025 23:31:16 -0700 (PDT)
From: Jie Gan <jie.gan@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Tingwei Zhang <quic_tingweiz@quicinc.com>,
        Yuanfang Zhang <quic_yuanfang@quicinc.com>,
        Mao Jinlong <quic_jinlmao@quicinc.com>,
        Jie Gan <quic_jiegan@quicinc.com>
Cc: coresight@lists.linaro.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH v3 RESEND 00/10] coresight: ctcu: Enable byte-cntr function for TMC ETR
Date: Mon, 14 Jul 2025 14:30:59 +0800
Message-Id: <20250714063109.591-1-jie.gan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: OYFtljvpJdSvhOXfjhFFdihhajjLXldF
X-Proofpoint-ORIG-GUID: OYFtljvpJdSvhOXfjhFFdihhajjLXldF
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE0MDAzNyBTYWx0ZWRfXyL0xKFer4aRT
 y3o7F/VPHf3mJrfo66r7wHQNhylZ9ll+znxBp1hK2SZQbCrWW54H6vxDaMoo9QKBz1ASUfcCEmc
 IA44YZZsI1Whmmaf0gzLN4JyCEK2WeNRS0gLIMqUq0COKnVDU4ENPy735Ty1T/vcnERXLqNLxMf
 1YzOy0vE1O6BVH3ZmYj3l+H0g4VlooX76e1ucgzoXyqDQd34DIU9qAbcbfROuUu2NnKaUuDKesL
 9m/0a6q5yy/ctwpfqCzrQ1UVO0olveWobLDxsWlWuPMnPjGvHNHQctPKsACHEr5Y5FLkcfqSp7y
 CTE4t6P5bdhISA8cydLi98ForV1qEvGvbFjgCSG8N5/b3y4cRQPytkvhKk2ZtNjQbWvb/o8kOuZ
 UjujrRpVgGUOjUMoeiN6qOca7Ifmz2vblU9QJdTkzShJjIxtOVPpza7VfHB1asXulqDiUPOI
X-Authority-Analysis: v=2.4 cv=Xc2JzJ55 c=1 sm=1 tr=0 ts=6874a436 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=Wb1JkmetP80A:10 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=COk6AnOGAAAA:8
 a=nBcv9sv72UtkhE4thMQA:9 a=uG9DUKGECoFWVXl0Dc02:22 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-07-14_01,2025-07-09_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 bulkscore=0 mlxscore=0 priorityscore=1501 adultscore=0 mlxlogscore=999
 phishscore=0 suspectscore=0 spamscore=0 lowpriorityscore=0 impostorscore=0
 clxscore=1015 malwarescore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2507140037

The byte-cntr function provided by the CTCU device is used to count the
trace data entering the ETR. An interrupt is triggered if the data size
exceeds the threshold set in the BYTECNTRVAL register. The interrupt
handler counts the number of triggered interruptions.

Based on this concept, the irq_cnt can be used to determine whether
the etr_buf is full. The ETR device will be disabled when the active
etr_buf is nearly full or a timeout occurs. The nearly full buffer will
be switched to background after synced. A new buffer will be picked from
the etr_buf_list, then restart the ETR device.

The byte-cntr reading functions can access data from the synced and
deactivated buffer, transferring trace data from the etr_buf to userspace
without stopping the ETR device.

The byte-cntr read operation has integrated with the file node tmc_etr,
for example:
/dev/tmc_etr0
/dev/tmc_etr1

There are two scenarios for the tmc_etr file node with byte-cntr function:
1. BYTECNTRVAL register is configured and byte-cntr is enabled -> byte-cntr read
2. BYTECNTRVAL register is reset or byte-cntr is disabled -> original behavior

Shell commands to enable byte-cntr reading for etr0:
echo 0x10000 > /sys/bus/coresight/devices/ctcu0/irq_val
echo 1 > /sys/bus/coresight/devices/tmc_etr0/enable_sink
echo 1 > /sys/bus/coresight/devices/etm0/enable_source
cat /dev/tmc_etr0

Reset the BYTECNTR register for etr0:
echo 0 > /sys/bus/coresight/devices/ctcu0/irq_val

Changes in V3 resend:
1. rebased on next-20250711.
Link to V3 - https://lore.kernel.org/all/20250624060438.7469-1-jie.gan@oss.qualcomm.com/

Changes in V3:
1. The previous solution has been deprecated.
2. Add a etr_buf_list to manage allcated etr buffers.
3. Add a logic to switch buffer for ETR.
4. Add read functions to read trace data from synced etr buffer.
Link to V2 - https://lore.kernel.org/all/20250410013330.3609482-1-jie.gan@oss.qualcomm.com/

Changes in V2:
1. Removed the independent file node /dev/byte_cntr.
2. Integrated the byte-cntr's file operations with current ETR file
   node.
3. Optimized the driver code of the CTCU that associated with byte-cntr.
4. Add kernel document for the export API tmc_etr_get_rwp_offset.
5. Optimized the way to read the rwp_offset according to Mike's
   suggestion.
6. Removed the dependency of the dts patch.
Link to V1 - https://lore.kernel.org/all/20250310090407.2069489-1-quic_jiegan@quicinc.com/

Jie Gan (10):
  coresight: core: Refactoring ctcu_get_active_port and make it generic
  coresight: core: add a new API to retrieve the helper device
  dt-bindings: arm: add an interrupt property for Coresight CTCU
  coresight: ctcu: enable byte-cntr for TMC ETR devices
  coresight: tmc: add etr_buf_list to store allocated etr_buf
  coresight: tmc: add create/delete functions for etr_buf_node
  coresight: tmc: add prepare/unprepare functions for byte-cntr
  coresight: tmc: add a switch buffer function for byte-cntr
  coresight: tmc: add read function for byte-cntr
  arm64: dts: qcom: sa8775p: Add interrupts to CTCU device

 .../testing/sysfs-bus-coresight-devices-ctcu  |   5 +
 .../bindings/arm/qcom,coresight-ctcu.yaml     |  17 ++
 arch/arm64/boot/dts/qcom/sa8775p.dtsi         |   5 +
 drivers/hwtracing/coresight/Makefile          |   2 +-
 drivers/hwtracing/coresight/coresight-core.c  |  54 ++++
 .../coresight/coresight-ctcu-byte-cntr.c      | 102 +++++++
 .../hwtracing/coresight/coresight-ctcu-core.c | 113 ++++++--
 drivers/hwtracing/coresight/coresight-ctcu.h  |  49 +++-
 drivers/hwtracing/coresight/coresight-priv.h  |   4 +
 .../hwtracing/coresight/coresight-tmc-core.c  |  70 ++++-
 .../hwtracing/coresight/coresight-tmc-etr.c   | 270 ++++++++++++++++++
 drivers/hwtracing/coresight/coresight-tmc.h   |  29 ++
 12 files changed, 688 insertions(+), 32 deletions(-)
 create mode 100644 Documentation/ABI/testing/sysfs-bus-coresight-devices-ctcu
 create mode 100644 drivers/hwtracing/coresight/coresight-ctcu-byte-cntr.c

-- 
2.34.1


