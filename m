Return-Path: <devicetree+bounces-204112-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id C9F1FB241FF
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 08:56:03 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id B9037189693A
	for <lists+devicetree@lfdr.de>; Wed, 13 Aug 2025 06:56:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 77F452D12E3;
	Wed, 13 Aug 2025 06:55:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="GxQbe5gb"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E84442BE02C
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 06:55:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755068144; cv=none; b=V7k4j1X0Tf9lefXQHBTkMAzbXcfJYQjc4b900BtE7up9yJnQuWUxTZnQmax5G43GBfdTV8smeXqk/3XIzMl1MM5mEphBVtau1k5HoGh1K3iDUfvIODFQkuR6ilKQfWBud1gs8Zow/uiF3X+9RtWermsS5otfbxkHO5aRUn1TdDY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755068144; c=relaxed/simple;
	bh=NT3OXZ+6VFZb8CMe4L1nzdruLP5ekCY4F22ZMO9+lwc=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=DNQyRq+Nay3HB7joVsT8bIMMVzIEBxlM3AYea+W5qB2Ef23BrTBLB8iZ4d4jBKZZ4y7kLyYQnEnu7WAfkDhX1Me92NhZtRPBdqduaAlJWts8SjxRGuKsmSle+yT0/GfkZd89uTFxd2uOfKQbdAesya8aLXJPnI0Up9ExFuIEngM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=GxQbe5gb; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 57D6mSVW027154
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 06:55:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=v89RUCwFdyomRq93Seq/cCar3eyic7DgZed
	XTAI4uzg=; b=GxQbe5gbpLOK9bhiBmB5lyEEGQEQ7ItuzcZg167xiPgvg67eGwy
	1O+dSkpAak+F8DwahEiDpb/Qybc4Db8uRnWUcAvuQrcMZ/2OZKPvUhH42BT6sSRT
	6qCTP0N2KjJAHJskku51iFXTp9S+WA7H0hKwCaS2jw6TcPen6AU1T//u0Jq3riSi
	AIVQj21tsOLWyxxGd4e8Da3etLVjEnGw0t1WHbcKzk5pCPKWEjUYA+B3fnv2E4X2
	d7r4QQJPCbP43xdCAykfowvXRW/TUuHNLxqOb6yjMSVdGh71TjGTKyYRKfPu+dn5
	xy0D4psnMDm6VXneJsaIjXn5fTUXgfPnChg==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48g5hmaqwk-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 13 Aug 2025 06:55:41 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-23fe28867b7so85450365ad.2
        for <devicetree@vger.kernel.org>; Tue, 12 Aug 2025 23:55:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755068141; x=1755672941;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=v89RUCwFdyomRq93Seq/cCar3eyic7DgZedXTAI4uzg=;
        b=to70fsF72KUwwoyYjAfuUNtmIGyCYC0GGi+B8y+f9m9R2a7cs/U0tqoKUkaRd8D26p
         F5qhcfRXkT243ZM6nvaijmXjkhrLddTM5dZHNSr/b2jDDCIKvvTtPR1y5DWME1YDDkGL
         51wg36EKAFCD65UBC9iNmmQdzKnHwkamgjcgZrSpsbCr7dzhPRu130W/JqV5T9t/kRXx
         3d5I5Z3sHR62shmGkANofvG8pE9lHN18gPQwhyVDM6M4AJK8/hk8rH+He+xx2u/S2QAr
         CCK8Xsl/ReKN2NgnBe9JEzTjxfKPSiI/F3KcWdjowKBMoZ8n3Huw1YvZcEjHrESRYCNx
         9pNA==
X-Forwarded-Encrypted: i=1; AJvYcCW23cYj3cKHFyfdAlmcKyPy46whdw1yH1vBk0MHZfx0lsyl4S4zpezq9g/WgxaQemr1fFvrexDEmpHP@vger.kernel.org
X-Gm-Message-State: AOJu0YzhvVi3OEvuSPo5CLicLTSfsualKLUuMORhY84w+Lg+ReRJ9al5
	zD0XenaD/cFdy5Vu2tOUM0gBCcme6VC5EfPRlgbdwPMs7TLogqZG7lhUDbrnYODUfx+kgmAmEyW
	VTtI6JWQfSEYJxFrvu1o3LYtM6mBQEH8oNToBStL7OjDaIajx6+T/82QHvhsTo5W2
X-Gm-Gg: ASbGnctKb/vqd5WN5PizgEXaCUeoReQcSmxY+sG40oLOa2fp3rlLPY15u+5CdG1mpTX
	X7t4F4uy1llZgGzNbTyz/WYF11snAojiYRDcn4dqX9zjIB0+7G99NdTV36tG+gFZ+Sg2YKwQyQD
	Q/HWQmChwaHur9oOlilp/IOsDWjVG++OBJe3Cay/nWMAM7UXPfKB9o0Outcg78QexT6LPAAhFXb
	C1f3mFS1Zqjc1OvVrRAPAfHtTNmLnicoS5phZoxyeHJoIWdEllAxgmV5A0056dEs+KfUQwtlmH0
	i8rd5D7344vPdvY6CpGfeDtR3w1RKSoLbLUIsrLk/n517euiVSkiY7q9RIqSCLGT2l3AGzuGJRb
	Lej3Dic9R0jtlJFWdDEhs+WUu2acGlSqBzrxiQ0l/6nejN0c89B8QduU0tIkU
X-Received: by 2002:a17:903:b8d:b0:242:9bbc:c773 with SMTP id d9443c01a7336-2430d21de4cmr30253755ad.54.1755068140551;
        Tue, 12 Aug 2025 23:55:40 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHjoz7s/dXHcA7mFMizX3dudhJwmJQlObOlwhL9SP3pNoUbNrgFVCMigCH22Xet8aYtZ6XYew==
X-Received: by 2002:a17:903:b8d:b0:242:9bbc:c773 with SMTP id d9443c01a7336-2430d21de4cmr30253325ad.54.1755068140008;
        Tue, 12 Aug 2025 23:55:40 -0700 (PDT)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-241e899aa1asm315958875ad.122.2025.08.12.23.55.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Aug 2025 23:55:39 -0700 (PDT)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
To: andersson@kernel.org, linus.walleij@linaro.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org,
        rajendra.nayak@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v5 0/2] pinctrl: qcom: Introduce Pinctrl for Glymur
Date: Wed, 13 Aug 2025 12:25:31 +0530
Message-Id: <20250813065533.3959018-1-pankaj.patil@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwODEyMDExOSBTYWx0ZWRfX/WnTbVEYtgOn
 /Dy4iqQHhhgNnVARawAZhFJWnLmF92JBfu204qrvjTfTPRvJHvNnZBqUCr7XcBRBK/Pel2GnjzS
 FIRUjN6cHQ2JnTjFZ+hwv28XeNCMp6tRo54fUEPV4gh/Z0YInau+S846DEngvrakColF3TiEhCW
 2E+91y/Dz+BsELZEifmxPKSC+eZjolO/M6X6lHuIz4T13piJUBbx1NLRLMvnUJ1WzxejLa4l2PI
 VaLsWD8ux8lddzs74dqyxC6iMFtHP1ygA3ZntloLY3SX9n1Tjst4zEZ0aDrVWI2jsdBdoLyuoYY
 C3qOGXhav88ugYmJlIR8d+2p8znuKfug5pnC70nWTLRqzulUhP8ruMkbSEmxnzBXj875P6Gwzkw
 UdV3kem0
X-Proofpoint-GUID: yl-pbkbiZZIA8jQGB3Be5stna-TY9LPH
X-Proofpoint-ORIG-GUID: yl-pbkbiZZIA8jQGB3Be5stna-TY9LPH
X-Authority-Analysis: v=2.4 cv=d4b1yQjE c=1 sm=1 tr=0 ts=689c36ee cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=2OwXVqhp2XgA:10 a=ne6LWfaJPpk26Hbpmm8A:9 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-08-12_08,2025-08-11_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 malwarescore=0 spamscore=0 phishscore=0 adultscore=0
 bulkscore=0 priorityscore=1501 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2508120119

Introduce Top Level Mode Multiplexer dt-binding and driver for
Qualcomm's next gen compute SoC - Glymur.
Device tree changes aren't part of this series and will be posted separately after the official announcement of the Glymur SoC

Changes in v5:
Rebased on top of v6.17-rc1
RESOUT_GPIO_N changed to lowercase in bindings and driver

Changes in v4:
Updated bindings to column length of 80 char

Changes in v3:
Fixed indentation for example tlmm node in bindings file
Fixed s-o-b and review comments in the driver

Changes in v2:
Fixed dt-bindings error from example node's reg propery
Fixed gpio-line-name maxItems
Driver UFS_RESET macro updated
Removed obsolete comment for pingroups
Updated ngpio to include ufs_reset pin

Pankaj Patil (2):
  dt-bindings: pinctrl: qcom: Add Glymur pinctrl bindings
  pinctrl: qcom: Add glymur pinctrl driver

 .../bindings/pinctrl/qcom,glymur-tlmm.yaml    |  133 ++
 drivers/pinctrl/qcom/Kconfig.msm              |   10 +
 drivers/pinctrl/qcom/Makefile                 |    1 +
 drivers/pinctrl/qcom/pinctrl-glymur.c         | 1777 +++++++++++++++++
 4 files changed, 1921 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/pinctrl/qcom,glymur-tlmm.yaml
 create mode 100644 drivers/pinctrl/qcom/pinctrl-glymur.c

-- 
2.34.1


