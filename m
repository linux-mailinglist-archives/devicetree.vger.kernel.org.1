Return-Path: <devicetree+bounces-165103-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 2548BA835BE
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 03:33:52 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id EE2DF1899337
	for <lists+devicetree@lfdr.de>; Thu, 10 Apr 2025 01:34:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9C61C18A6C4;
	Thu, 10 Apr 2025 01:33:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="EQep3k1d"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6D56801
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 01:33:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744248826; cv=none; b=O6OMkrAmJg0LE4XT+3UsyPezC8YT+anLmtKQxYItZ09KXiZoFiQ3tmg5Bv78CC9vqbLH7mKkBZRyLczBoGqGWvFLMCYd3FPJdDyxHkbntC0dFQIm5hVyQzOmxBEDoJMoV2B5EK/ora72O9V0ktADyXHk2e+aLjNpUSVZGcNsnUA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744248826; c=relaxed/simple;
	bh=Vxqp2poIF7tCTr3aPD1PK/FQnPw3GoFOCm3ypF2WVpw=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=JOdNHQPjXIeoQyjoSkVmLElSNwCj1jgitau2lDP4ke4tGJfuXbPqrpOZjiXW9TBzrs+lSIhW3Uk3KCQGwow9tlEiyTTaRC+X4l9phJShUvoMhNJSj4yFb35kkbup+SN+56htSY6bCqGWjBIy6+Wc9Fp7WiiE8N+alQ8wKKizyqA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=EQep3k1d; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 539H7BbQ014998
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 01:33:43 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=o4YCBs8FmN8c+rLkfX0n/GYc/hIsRtQHN30
	6R9U8pDs=; b=EQep3k1dgrfwrP4L4bmrmLVvxPPZjS3+YIeMB+dHQN0VE0/ohvn
	MG+Frm8EO62lESL7ctAgwGEfDgoiLY4ivlXv4htAOhiQHS8TsPldcIz52ZKjwA/p
	FLIZKW2pPRY94W7U9NvtgjLEETqwSdfXOaEC/SgxabTWmt3bKc+u/Bv/JlfQP0jk
	YWYS6dlxVZL2w03o4SYALNDc6084IpYZn+TpLo3729kD6Q5rzzRar7Mgftaz/Fll
	nEAGGjZ6iE9YESgs4nGstNqv1Ydf4t5HxX6gT94C06tzPKuRERUzf9CtusyAEi/r
	hNlCSF1zHH9ZNdW+PQQHoWhCB1GqsDO/nNA==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 45twbun88k-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 10 Apr 2025 01:33:42 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-22406ee0243so2233895ad.3
        for <devicetree@vger.kernel.org>; Wed, 09 Apr 2025 18:33:42 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1744248822; x=1744853622;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=o4YCBs8FmN8c+rLkfX0n/GYc/hIsRtQHN306R9U8pDs=;
        b=KbdlgefrcLOsqC6FbsdipFSMFWKaK+pgUkBEhgVh0LDhdN8lQGSJv0kp6d48dKDPSW
         NXB1VDO7MFvDk/KJi+lKgakjBDTZqi0bP19Muv7GWBBiLLIqU4CzfzWtKT8YSoDKOtnE
         CXZelC/sjzQ8pmDqS4vsolGXqv0fGDpMNTbjhlWtd/XEAJcdUwlLQc7KiSucfcMKMBJr
         6exPGS+ziqmjbuLwUSnOssiqnFQq7efde508si5HgrNPfKOHHyU9xt3EY/xbk4HbFWog
         SajKgxY0w0yGhswl5cMLbO5bxVkz4KwMES0zP3N1YOK9cIwlRuMRXk5vT/15wtWf21/0
         o1/g==
X-Forwarded-Encrypted: i=1; AJvYcCVUwB9rsGZFxdw6CDR3bZxiT+ydKVWcCVHYr0w3JCQx9tJCb80s07GDfzloSIutfw2EPM5F5Hcw1KEF@vger.kernel.org
X-Gm-Message-State: AOJu0YyAe3s9qsj5aEtlRCZQXNC7NFUqY9UDBf4UidW/i8nFu3kuEt+E
	zsmrs1uPQBuFWD0mm7OQL5uBClqsmeT9S8quiGsSKu+PIBH7lspZNq75KtNd1XgeF1WbCriAVqe
	syXRDBVlS73nuayHkw8LxhTCjG18Cn8ASXKdNdWOyW27EPaZ8VQqEl2/dmuVc
X-Gm-Gg: ASbGncuETzm9BEEEow7MCGXNwZ/cHVMtGDvzdkqMmjBkPJJJlijQ2oOco72AZeNy81R
	Gzx+jsTfVvZ9BUNMFF7Y/jeKUbUkmCqz0aubRUkURqSkEThU4A/E9QOmecCTbbPTRKlMfZVRehF
	zXT4/O7+5ri6p/YrcHrrTez+nHe+S0ZZfLdXK7ra0jawW0zft3ioY9VxuAWEEddvstqg0++JQF5
	7y7sKpna6CMTt6z/vp0Igttv6jVDW7cVCeoeoQKQKy7Z4innLzSn7wVcRpTf5/0K0uOVBP4W4+i
	VZyEVgOMarJ4XEEDM4vTPp1FImNTsw2L5QHHg5wEX8C/EmsRukOHcAUUKEbEKHIZR1tXoDo=
X-Received: by 2002:a17:903:2341:b0:21f:61a9:be7d with SMTP id d9443c01a7336-22b42c43ec6mr17770735ad.49.1744248821371;
        Wed, 09 Apr 2025 18:33:41 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFrJkqX4uEGOsPxZGHknz/7ZYzO+UEvc0pWxjPjlCLTKvbNT3cRK56FqUF1D3OsFviQrio7Tw==
X-Received: by 2002:a17:903:2341:b0:21f:61a9:be7d with SMTP id d9443c01a7336-22b42c43ec6mr17770205ad.49.1744248820641;
        Wed, 09 Apr 2025 18:33:40 -0700 (PDT)
Received: from jiegan-gv.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-22ac7ccb596sm18801815ad.220.2025.04.09.18.33.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Apr 2025 18:33:39 -0700 (PDT)
From: Jie Gan <jie.gan@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: Tingwei Zhang <quic_tingweiz@quicinc.com>,
        Jinlong Mao <quic_jinlmao@quicinc.com>, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH v2 0/5] coresight: ctcu: Enable byte-cntr function for TMC ETR
Date: Thu, 10 Apr 2025 09:33:25 +0800
Message-Id: <20250410013330.3609482-1-jie.gan@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-GUID: xYa4v3kzWCFkEXDSJOdEf3I-qlB6sHFE
X-Proofpoint-ORIG-GUID: xYa4v3kzWCFkEXDSJOdEf3I-qlB6sHFE
X-Authority-Analysis: v=2.4 cv=dbeA3WXe c=1 sm=1 tr=0 ts=67f71ff6 cx=c_pps a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17 a=XR8D0OoHHMoA:10 a=VwQbUJbxAAAA:8 a=COk6AnOGAAAA:8 a=ZTg50iMYVFS0dohvRPoA:9 a=GvdueXVYPmCkWapjIL-Q:22
 a=TjNXssC_j7lpFel5tvFf:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1095,Hydra:6.0.680,FMLib:17.12.68.34
 definitions=2025-04-09_06,2025-04-08_04,2024-11-22_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 suspectscore=0 mlxlogscore=999 phishscore=0 mlxscore=0 spamscore=0
 malwarescore=0 clxscore=1015 adultscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2502280000 definitions=main-2504100010

The byte-cntr function provided by the CTCU device is used to transfer data
from the ETR buffer to the userspace. An interrupt is tiggered if the data
size exceeds the threshold set in the BYTECNTRVAL register. The interrupt
handler counts the number of triggered interruptions and the read function
will read the data from the ETR buffer if the IRQ count is greater than 0.
The read work will be conducted ASAP after the byte-cntr is started.
Each successful read process will decrement the IRQ count by 1.

The byte cntr function will start when the device node is opened for reading,
and the IRQ count will reset when the byte cntr function has stopped. When
the file node is opened, the w_offset of the ETR buffer will be read and
stored in byte_cntr_data, serving as the original r_offset (indicating
where reading starts) for the byte counter function.

The work queue for the read operation will wake up once when ETR is stopped,
ensuring that the remaining data in the ETR buffer has been flushed based on
the w_offset read at the time of stopping.

The byte-cntr read work has integrated with the file node tmc_etr, e.g.
/dev/tmc_etr0
/dev/tmc_etr1

There are two scenarios for the ETR file nodes with byte-cntr function:
1. BYTECNTRVAL register has configured -> byte-cntr read
2. BYTECNTRVAL register is disabled -> original behavior, flush the etr_buf

We still can flush the etr buffer once after the byte-cntr function has
triggered.
1. Enable byte-cntr
2. Byte-cntr read
3. Disable byte-cntr
4. Flush etr buffer

Since the ETR operates in circular buffer mode, we cannot fully guarantee
that no overwrites occur when the byte-cntr read function reads the data.
The read function will read the data ASAP when the interrupt is
triggered and we should not configure a threshold greater than the
buffer size of the ETR buffer.

The following shell commands write threshold to BYTECNTRVAL registers.

Only enable byte-cntr for ETR0:
echo 0x10000 > /sys/devices/platform/soc@0/4001000.ctcu/ctcu0/byte_cntr_val

Enable byte-cntr for both ETR0 and ETR1(support both hex and decimal values):
echo 0x10000 4096 > /sys/devices/platform/soc@0/4001000.ctcu/ctcu0/byte_cntr_val

Setting the BYTECNTRVAL registers to 0 disables the byte-cntr function.
Disable byte-cntr for ETR0:
echo 0 > /sys/devices/platform/soc@0/4001000.ctcu/ctcu0/byte_cntr_val

Disable byte-cntr for both ETR0 and ETR1:
echo 0 0 > /sys/devices/platform/soc@0/4001000.ctcu/ctcu0/byte_cntr_val

There is a minimum threshold to prevent generating too many interrupts.
The minimum threshold is 4096 bytes. The write process will fail if user try
to set the BYTECNTRVAL registers to a value less than 4096 bytes(except
for 0).

Way to enable and start byte-cntr for ETR0:
echo 0x10000 > /sys/devices/platform/soc@0/4001000.ctcu/ctcu0/byte_cntr_val
echo 1 > /sys/bus/coresight/devices/tmc_etr0/enable_sink
echo 1 > /sys/bus/coresight/devices/etm0/enable_source
cat /dev/tmc_etr0

Testing case has conducted for the byte-cntr read work:
1. Setting the buffer_size of the ETR as large as possile, here is for ETR0
   echo 0x1000000 > /sys/bus/coresight/devices/tmc_etr0/buffer_size
2. Setting the threshold for the ETR0 to 0x10000
   echo 0x10000 > /sys/bus/coresight/devices/ctcu0/byte_cntr_val
3. Enable ETR0
   echo 1 > /sys/bus/coresight/devices/tmc_etr0/enable_sink
4. Enable ETM0 as source and enable byte-cntr to read data
   echo 1 > /sys/bus/coresight/devices/etm0/enable_source;
   cat /dev/tmc_etr0 > /tmp/file_byte_cntr.bin &
5. Disable ETM0
   echo 0 > /sys/bus/coresight/devices/etm0/enable_source
6. Disable byte-cntr and flush the etr buffer
   echo 0 > /sys/bus/coresight/devices/ctcu0/byte_cntr_val;
   cat /dev/tmc_etr0 > /tmp/file_etr0.bin
   ls -l /tmp

-rw-r--r--    1 root     root      12628960 Apr 28 17:44 file_byte_cntr.bin
-rw-r--r--    1 root     root      12669296 Apr 28 17:45 file_etr0.bin

7. Deal with the file_etr0.bin with following command:
   dd if=/tmp/file_etr0.bin of=/tmp/file_etr0_aligned.bin bs=1
count=12628960 skip=40336
   ls -l /tmp

-rw-r--r--    1 root     root      12628960 Apr 28 17:44 file_byte_cntr.bin
-rw-r--r--    1 root     root      12669296 Apr 28 17:45 file_etr0.bin
-rw-r--r--    1 root     root      12628960 Apr 28 17:49 file_etr0_aligned.bin

8. Compared file_byte_cntr.bin with file_etr0_aligned.bin and identified
they are competely same.
   diff file_byte_cntr.bin file_etr0_aligned.bin

=======================
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

Jie Gan (5):
  coresight: tmc: Introduce new APIs to get the RWP offset of ETR buffer
  dt-bindings: arm: Add an interrupt property for Coresight CTCU
  coresight: ctcu: Enable byte-cntr for TMC ETR devices
  coresight: tmc: add functions for byte-cntr operation
  arm64: dts: qcom: sa8775p: Add interrupts to CTCU device

 .../bindings/arm/qcom,coresight-ctcu.yaml     |  17 ++
 arch/arm64/boot/dts/qcom/sa8775p.dtsi         |   5 +
 drivers/hwtracing/coresight/Makefile          |   2 +-
 .../coresight/coresight-ctcu-byte-cntr.c      | 119 ++++++++++++
 .../hwtracing/coresight/coresight-ctcu-core.c |  88 ++++++++-
 drivers/hwtracing/coresight/coresight-ctcu.h  |  49 ++++-
 .../hwtracing/coresight/coresight-tmc-core.c  |  29 ++-
 .../hwtracing/coresight/coresight-tmc-etr.c   | 175 ++++++++++++++++++
 drivers/hwtracing/coresight/coresight-tmc.h   |  10 +-
 9 files changed, 483 insertions(+), 11 deletions(-)
 create mode 100644 drivers/hwtracing/coresight/coresight-ctcu-byte-cntr.c

-- 
2.34.1


