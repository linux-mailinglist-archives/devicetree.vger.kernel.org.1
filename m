Return-Path: <devicetree+bounces-227414-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id AF3A7BE18FF
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 07:49:43 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id E971C34E44C
	for <lists+devicetree@lfdr.de>; Thu, 16 Oct 2025 05:49:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5928223D7F0;
	Thu, 16 Oct 2025 05:49:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CnD6QQF8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9B55ECA4E
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 05:49:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760593780; cv=none; b=h1bbpthacRNMUk1zI3XNXc0pM4XZ6SxSMKF7YbNi+HQJrvverK8+TxifpcQEOv1clwHtzUhMDmS5AWjIuLOrlrr/nVqeuOxf/JrIUxFLd9kFyPBJgpWVsCVx26MlP8nWRjXa8F1QeyVdtgDUOY2y3HisFjxmwIT4B+kxqjwsRgw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760593780; c=relaxed/simple;
	bh=tBet7xd9Ix+7i7/6lFaf25DY48b+0wTDWRETSg/THcQ=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=GM/B8dYcmgGyQDVEvaWSWtzzFh+6Nqq0NV/Cnzwre+iK7NYeVuDTQDU6W4Bbbv/fupXLwRwBGbUGvXnQYdWI2zoJ1X/cvfagmXXGrtnFNI0vSCDzSBz5M+djZn+kue/CnBsIJTdMI2pGWXYdh/f3GlR+dqZhqnIR08MfQhGJE1k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CnD6QQF8; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59FIW8CN003414
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 05:49:37 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=I0tZsr+X9rb2BkuKPKohL8
	wWGapUv709og7lMSnyxu8=; b=CnD6QQF8FLP6PSSuQz7seslyPRmsm7yJz2mbfZ
	d1yESe+nLBhWcj8HvqsIufGA0lUGP8IP7rpHOEpG6zB8vWbnm/HuFu00Q7E5vfhm
	Zak5EwNKfnh+f33ceb3EJq0Jlu/p+rfpD7RJjHiqIhVqq5UyI/m7cWLUCPVxey8X
	vKdNO4A97UMdYxdk/JeBgCkQEVcJ+xw6Dg4eVql0ZlKdyNlZzc+LGNFs5Cs0DgxZ
	veM79BT07k2Nl+slYSJxzOEcZWOlKg/KMb6RMM6J534kpdGx7gWZJvHnIkyofEQr
	nPwME65qaYAWBQbyoBq8FEJHuAqrJKRCbmmNHOmRmxJaeVeQ==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49sua8nqwm-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 16 Oct 2025 05:49:37 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-780d26fb6b4so341727b3a.0
        for <devicetree@vger.kernel.org>; Wed, 15 Oct 2025 22:49:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1760593776; x=1761198576;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=I0tZsr+X9rb2BkuKPKohL8wWGapUv709og7lMSnyxu8=;
        b=w73S4d681q0FDzEbBSiisUpDJoK0kp1hTjcoezPPdRRhIrcA4i46uQMIxeyLNzhx29
         vPkukzO+0HZhZHSRZPzjoeffoV9X1VnSEAVUmAfzOOfOqGqLVYBENyKDBv8R1is+8OCg
         tqNFd1IwTxzd77SJVifFJwOMeF2tNxr6ZpjdPpbk+4T8xpTs9TrMorm3bHZVV0xPRy+w
         VFZk0r7nElecfIJxXtow6XC8Kp11tCrjR50l4qcyjV1jY7g6swXzMJ/ZmhFLgPQahE7b
         jINsVdlFPd+7jaUzbNDUTYVnQnsuaLpb0a0bbjDn4ateQiyUS5C4WXVgUHXrwNMMnLAA
         ahfQ==
X-Forwarded-Encrypted: i=1; AJvYcCWhzQydfi9iQFG5iyMTjNRntlDr4hc0utfrCghUGYt3pHV57qGknU5xz5CytS3xrFHeIQkTd+8orQyR@vger.kernel.org
X-Gm-Message-State: AOJu0YzrZuTcGpl7q3D1ck8J+zWP498jFT1++Drteuo66XgQGKYBO31M
	gKIkPsKmzvvSVt/ptHG5Jdhfh1Ucu9MBkQUY49J2oAY7DH+60ImaDhENHZs3Tcf350n7j9hRQ1W
	1Iu2ytN4wBZfmxWw1oDQtw32iYthfueOcSOXZggetQVqn8yZX2zT0uHeU0H5hTeKn
X-Gm-Gg: ASbGncv4Lv8oLJL4krpqZwvYlzpCNuPrRxM+qqWGoXl7N/gD3uKujg5FQwGmkUKtVb0
	7fpgAiagxc5kHA6ouc6cqlk6eTgG0dTakQedMSx2V/m7GnpKLk51SpDAW9hzX0IEZMad42Q1DwR
	rENdzZoKlh0o5u3CGgF0vlAr6RzHKst8d/Ez7Tq9HdQLPDm3o+nspStWPmO04gIL1i4IkdsFqyk
	deullg+EE7yhAp6rzzYblj5M1olVTOBANrbu9Ju9TBjQBKep/P7+Q1NVIWivWsrAt0d+KDkLwyu
	JpV6DRcDrPochZoMl7r12cEbXpfsViQcmJPIEUQVa328DUct53TPt81uRFD4Yc9oSJG5kCIjlty
	pDqe4tGgQ8LY3MYbP4jBkT6FlCjJnGG7TPYfkmqypBE5X19uyvDaRSoVl
X-Received: by 2002:a05:6a00:1741:b0:781:239d:f2da with SMTP id d2e1a72fcca58-793881ed30emr38449565b3a.31.1760593776129;
        Wed, 15 Oct 2025 22:49:36 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEOEd8rbHYWJ4eDFljVCyqfTRjJpdU/axG94GWTg9wQOR3qSxhEvQY8QQFNQQjxay2ed5LGew==
X-Received: by 2002:a05:6a00:1741:b0:781:239d:f2da with SMTP id d2e1a72fcca58-793881ed30emr38449528b3a.31.1760593775634;
        Wed, 15 Oct 2025 22:49:35 -0700 (PDT)
Received: from hu-yuanfang-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7992d0e1336sm20657931b3a.59.2025.10.15.22.49.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Oct 2025 22:49:35 -0700 (PDT)
From: Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
Subject: [PATCH v5 0/3] coresight-tnoc: Add support for Interconnect TNOC
Date: Wed, 15 Oct 2025 22:49:29 -0700
Message-Id: <20251015-itnoc-v5-0-d7ca2b1cc6df@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAGmH8GgC/3XM0QrCIBTG8VcZXmfoUTfrqveILpweS2iz5hrF2
 LvngsGIuhE+Ob//SBJ2ARPZFyPpcAgpxDYPtSmIvZj2jDS4vAkwUExzRUPfRktlyaASjteaWZJ
 vbx368Px0jqe8LyH1sXt9sgOff78LA6eMlmA1Sl8ZJ+AQU9reH+ZqY9Ns80Pm0ABrvFswZAyOY
 VmjlAj+DxYrDHrBImPPa6UcmspA9QfLFRZ8wXLGzNcMvQYw6geepukNutT3HVgBAAA=
X-Change-ID: 20250815-itnoc-460273d1b80c
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Alexander Shishkin <alexander.shishkin@linux.intel.com>
Cc: kernel@oss.qualcomm.com, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>,
        Leo Yan <leo.yan@arm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1760593774; l=2209;
 i=yuanfang.zhang@oss.qualcomm.com; s=20250814; h=from:subject:message-id;
 bh=tBet7xd9Ix+7i7/6lFaf25DY48b+0wTDWRETSg/THcQ=;
 b=RnRTpb6h4DuPTqsO4yzM0bLovGuaYSg4CV2VXLkDeCrzyef6OtHsSZnX/b+LiQSpbecFSzirM
 zZUkt9VJfKVBAN6+piSxOV0Aw0ILK4ICDei1gMGApxtmXJVIvXynMfA
X-Developer-Key: i=yuanfang.zhang@oss.qualcomm.com; a=ed25519;
 pk=9oS/FoPW5k0CsqSDDrPlnV+kVIOUaAe0O5pr4M1wHgY=
X-Proofpoint-GUID: GCDsAYXY57WxtE57Mh9KKv3R8zcE8tQi
X-Authority-Analysis: v=2.4 cv=e5MLiKp/ c=1 sm=1 tr=0 ts=68f08771 cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=VwQbUJbxAAAA:8 a=EUspDBNiAAAA:8 a=G-CQVniXWX8y_UMPSkYA:9 a=QEXdDO2ut3YA:10
 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE0MDEzNCBTYWx0ZWRfX5X8p3BZ+TiLz
 16IkDfE0eHM4NSLa3uZ1UZpG3Xq0LF6Cg4Ta1gy/z5H9avgu236bG7RYYDq1v2Z6WfDbC+30Kuq
 GcA1CTvnW3wo5/nsmnHmCmg15Ik8qOWHCTe3JxKM0QK6NNSSyiz8/OXf+r+y1jbAaFUYuIokHhF
 J3gdHjRoG1fVJ7VYY5upvnoYGFx6PrVj3w4hgzPB4kw2vhRcKU82a26jw7ZUrfQRyqm3EAmSQZN
 g99RR1fpgWFm8NjYRrykKOwNBryWhTIDmo2cfUvyil/IzsmPnfMRfVBHnrp4mp6MX4udSBl7n2k
 PwxStgmJvR51AdPpRCp0rEepemtVsyNxVenvqdSQHIKr+AURu006rYKOQazuNRZK+x+Ks3632n0
 dtvOGh4+c4KA+DbrQG41nFBe0L4atA==
X-Proofpoint-ORIG-GUID: GCDsAYXY57WxtE57Mh9KKv3R8zcE8tQi
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-15_07,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 suspectscore=0 spamscore=0 adultscore=0 clxscore=1015
 priorityscore=1501 impostorscore=0 malwarescore=0 bulkscore=0
 lowpriorityscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2510020000
 definitions=main-2510140134

This patch series adds support for the Qualcomm CoreSight Interconnect TNOC
(Trace Network On Chip) block, which acts as a CoreSight graph link forwarding
trace data from subsystems to the Aggregator TNOC. Unlike the Aggregator TNOC,
this block does not support aggregation or ATID assignment.

Signed-off-by: Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>
---
Changes in v5:
- Add the missing review-by tag for patch 3.
- Link to v4: https://lore.kernel.org/r/20250831-itnoc-v4-0-f0fb0ef822a5@oss.qualcomm.com

Changes in v4:
- Fix unintended blank line removals in trace_noc_enable_hw.
- Link to v3: https://lore.kernel.org/r/20250828-itnoc-v3-0-f1b55dea7a27@oss.qualcomm.com

Changes in v3:
- Add detail for changes in V2.
- Remove '#address-cells' and '#size-cells' properties from in-ports field.
- Fix comment indentation for packet description.
- Link to v2: https://lore.kernel.org/r/20250819-itnoc-v2-0-2d0e6be44e2f@oss.qualcomm.com

Changes in v2:
- Removed the trailing '|' after the description in qcom,coresight-itnoc.yaml.
- Dropped the 'select' section from the YAML file.
- Updated node name to use a more generic naming convention.
- Removed the 'items' property from the compatible field.
- Deleted the description for the reg property.
- Dropped clock-names and adjusted the order of clock-names and clocks.
- Moved additionalProperties to follow the $ref of out-ports.
- Change "atid" type from u32 to int, set it as "-EOPNOTSUPP" for non-AMBA device.
- Link to v1: https://lore.kernel.org/r/20250815-itnoc-v1-0-62c8e4f7ad32@oss.qualcomm.com

---
Yuanfang Zhang (3):
      dt-bindings: arm: qcom: Add Coresight Interconnect TNOC
      coresight-tnoc: add platform driver to support Interconnect TNOC
      coresight-tnoc: Add runtime PM support for Interconnect TNOC

 .../bindings/arm/qcom,coresight-itnoc.yaml         |  90 ++++++++++++++
 drivers/hwtracing/coresight/coresight-tnoc.c       | 136 +++++++++++++++++++--
 2 files changed, 215 insertions(+), 11 deletions(-)
---
base-commit: 2b52cf338d39d684a1c6af298e8204902c026aca
change-id: 20250815-itnoc-460273d1b80c

Best regards,
-- 
Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>


