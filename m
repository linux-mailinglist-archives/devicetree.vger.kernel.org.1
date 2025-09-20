Return-Path: <devicetree+bounces-219480-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id E03ECB8BDEC
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 05:21:26 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 9BB31A05AA9
	for <lists+devicetree@lfdr.de>; Sat, 20 Sep 2025 03:21:25 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5127422425E;
	Sat, 20 Sep 2025 03:21:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="D3YmAHs1"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6877320C488
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 03:21:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758338478; cv=none; b=YnPyUQMhsrm222aMC+qSMshf9aa2QOudN8An6V4eM6XpN9N4waULV73u3MEbXV2iOFOCWurFZQCHU/vH3NaX6WJx8GVp3wb4rzHh0cn85BWdEomKfgx8d0MScSfC0upH3Xp/puSrRHL0oD0TkwxI2Fa/Hn+XWjgAvsVtUKFkSQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758338478; c=relaxed/simple;
	bh=PqUjMQNf8YZ2okXi7HcjlR0ay9cNBzPa0lh9m/FAw9A=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=FUKAKup/YjSF/eBdtZvZtbtKP4aWBLD4sVEo0OAD26L6/o9iGmF5nsw7guVSHKrZXY5L3wB9b99qw8LaBEHtuQC7KiG6ytGgIICo9PsRriH5FiaU0oAT9Bv5OqKhrJ6EBsQboyhXZVqA65n/rR73hAdHBhXr61XsFSD2TStyzxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=D3YmAHs1; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58K3FYsm006147
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 03:21:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=mN8wYVl6ESU9lxZvT+z+knTGjWTBarbi95s
	9t96uFCY=; b=D3YmAHs1L6zuwjw06urITN4y7EtDHdeq56luBVMG7I27Lr5atif
	GfJ3PrmQJH4Ag9rXbyWWQMvdgTAjLTeNJBnvG0KACRgZDiw9ranfQnZSXXXjhqaJ
	3YBn7FIVA2kkzTJGsHvLwXDLWmeMfYfEREJh2a++BH56KdStgU0rSbjRmK9/rrgc
	t1RYZaqPsjg+W313FWDVs4pzCON6CuxQhTDwximWmb7d6peYOsIqva9+aRGk4swA
	rGPQkCXBvrXgPrfKYucxbTPJYpMqFtkrozrEYxuSlo9L8D9B72W0Y2VEibD8ciEl
	OiQ4Oglhg7jTf6g/xGvjMIu6jmOmO18zjVA==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499kkhg221-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 20 Sep 2025 03:21:15 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2699ed6d43dso23196675ad.1
        for <devicetree@vger.kernel.org>; Fri, 19 Sep 2025 20:21:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758338474; x=1758943274;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mN8wYVl6ESU9lxZvT+z+knTGjWTBarbi95s9t96uFCY=;
        b=m8WiEC0t0lOQpR9k909Rns1UsrQIISAkTTLPRkG74DJyPv0P2GONn2rtsOaEyNd/lL
         NM6lGq0npUs59S1HL7guDo4OGqT2j9zOOKuUem19/z7rV4dJ7eNQGCmE7RrllPREh6vg
         cNzXr+iUfydfOOaAwHnuD2t9o+zaPCFaXW2LMJSHh2eXHBy+RkuXVtX6HGYwpK4xL5OP
         TNT0a3QM78k0bFpW3KAajwO9n3giFKiQzB+fWCX3SOvcDRtb4MiAGHv4PIV+9l0U7GOS
         MHIcBWFBrkYKhj7F1c9x4lTOitD7NxQFGnBG+7rx1Z86TRJEfD35WrUwAtUu3FtjMYCZ
         65Bg==
X-Forwarded-Encrypted: i=1; AJvYcCWrDYYUZ1h0Q2vyEeTZY7fdnWWk+9sB3VyhUwD1SsbGYPsoEseJEaLNJtSJwHKtiIgKvZSVEKa2J/wB@vger.kernel.org
X-Gm-Message-State: AOJu0YxyGrA/kCT9vDVTf/fhHrbsunpJJ4Vls18FdfxNBK4X1CjR821u
	YSvEl/40/pq/pQMPdZEdLhvyBYVFzOsiiZ5ZsSFoCgpWkvVepNESdZ5LRh1Qvj8LynqvtNwNVW3
	9zODkSPoww4gOz1FdrlEnM5zz754Rdy1kjBKLrAfthOInV7b/gOwD2C24Ng+6vEUD
X-Gm-Gg: ASbGncsVQ2ih7AhVLWwL5RfgXGn2UrmwGk2LXdk82WPYR0zl8zfrck5H90A7ELNFheo
	oHCrWCi0aAI622GcnXDpeSMiHIK/sPjgBie8sDVUXnSIxFP/XusxwdWFUeQNRtWjkc6g2LO7nTB
	0wt572Ql1i3ATAs3BV51TxiP3CyV7wpSzSvHqREsIz2jZcKQ2920KoZ/R/L5fxbj6u3ONG34ZQY
	uoHrGa64VNWq7ujWpDil7PR9HD1iJhAhhLWButP1crPKKln9nAGmnLC6Q1lhuwGWLqxg9YcBQ6B
	YWmbU3Lhsvjs+vJ8C2twxnnCGGORUm3OLXU5r5NZ1womx3+fQKqsaniKUgYGBFjUmS2201sYYap
	wFxt38TCtagPVX2j0
X-Received: by 2002:a17:902:f645:b0:269:a4c5:f442 with SMTP id d9443c01a7336-269ba527e9emr74545435ad.47.1758338473684;
        Fri, 19 Sep 2025 20:21:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGeReC8gmZ5NxVSWhUvUGV0oy+A6Sr9TpiqHXGqgd1xFA4p7XvnSQnBO/UwfTe45cPbjeV1ew==
X-Received: by 2002:a17:902:f645:b0:269:a4c5:f442 with SMTP id d9443c01a7336-269ba527e9emr74545085ad.47.1758338473178;
        Fri, 19 Sep 2025 20:21:13 -0700 (PDT)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-b54ff448058sm6178807a12.54.2025.09.19.20.21.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Sep 2025 20:21:12 -0700 (PDT)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, conor+dt@kernel.org, kishon@kernel.org,
        vkoul@kernel.org, gregkh@linuxfoundation.org, robh@kernel.org
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-usb@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH 0/9] Introduce Glymur USB support
Date: Fri, 19 Sep 2025 20:20:59 -0700
Message-Id: <20250920032108.242643-1-wesley.cheng@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: rQvEVNZyEaPIMufvqA9SaPST0s2txTBq
X-Proofpoint-GUID: rQvEVNZyEaPIMufvqA9SaPST0s2txTBq
X-Authority-Analysis: v=2.4 cv=JMo7s9Kb c=1 sm=1 tr=0 ts=68ce1dab cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=yJojWOMRYYMA:10 a=KpXeH89YwCTRUSzem1gA:9 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAyMiBTYWx0ZWRfX4cvL7v4Mzfwi
 QVumCGdVzJgc5FkDLnE64+xmTCIiB76Rfsvl9KzlQpDKQNW2/1PNp3TeotOC9V8hn7/nHMet7BE
 k6ssX3ciuwCxvMviRyGpXuMhujbGH9spYo1AIyvGBzDJugaVatn/sDcyNKDhwGyp2AF8mdMsoxo
 zSFEdQDQZLPmpAv/SK5DKOcju3Cyj6AU2CSGSfK/vtWKy+Em+Lyt2aYaqwhRrzERjaOCt4R8Cwt
 f/Z//Yn9Q3EDf7HAZfeCsx3zGwVg8lLhM1SEbjjDsHecYCfQEabXdvQGIl/xmQwi97DQXApkodf
 LVTR1qFJvlSMtRBbP4LIoEiLxlv1UogKFfP42gBmITO4Va3gn/nlMtez1FeuB2TtobphY3POdUv
 r9MBPj9Q
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-20_01,2025-09-19_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 suspectscore=0 bulkscore=0 priorityscore=1501 phishscore=0
 clxscore=1011 adultscore=0 spamscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509200022

This series enables the PHY level changes that are required to support
the type C based controllers and the multiport controller.  The typeC
ports utilize a usb43dp based QMP PHY for the SSUSB path, while using
the M31 eUSB2 PHY for the HSUSB path.  For the multiport controller,
it will utilize two QMP UNI PHYs for the SSUSB path, and two M31 eUSB2
PHYs for the HSUSB path.

Elson Roy Serrao (1):
  phy: qualcomm: Update the QMP clamp register for V6

Wesley Cheng (8):
  dt-bindings: phy: qcom,sc8280xp-qmp-usb43dp-phy: Add Glymur compatible
  dt-bindings: phy: qcom,qmp-usb: Add Glymur USB UNI PHY compatible
  dt-bindings: phy: qcom-m31-eusb2: Add Glymur compatible
  dt-bindings: usb: qcom,snps-dwc3: Add Glymur compatible
  phy: qualcomm: qmp-combo: Update QMP PHY with Glymur settings
  phy: qualcomm: qmp-usb: Add support for Glymur USB UNI PHY
  phy: qualcomm: m31-eusb2: Make clkref an optional resource
  phy: qualcomm: m31-eusb2: Make USB repeater optional

 .../bindings/phy/qcom,m31-eusb2-phy.yaml      |  11 +-
 .../phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml   |   7 +-
 .../phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml    |  45 +-
 .../bindings/usb/qcom,snps-dwc3.yaml          |  26 +
 drivers/phy/qualcomm/phy-qcom-m31-eusb2.c     |   4 +-
 drivers/phy/qualcomm/phy-qcom-qmp-combo.c     | 347 +++++++++-
 .../phy/qualcomm/phy-qcom-qmp-pcs-aon-v6.h    |  12 +
 .../phy/qualcomm/phy-qcom-qmp-pcs-aon-v8.h    |  17 +
 .../phy/qualcomm/phy-qcom-qmp-pcs-misc-v5.h   |  12 +
 .../qualcomm/phy-qcom-qmp-qserdes-lalb-v8.h   | 639 ++++++++++++++++++
 drivers/phy/qualcomm/phy-qcom-qmp-usb.c       | 163 +++++
 .../phy/qualcomm/phy-qcom-qmp-usb43-pcs-v8.h  |  33 +
 .../phy-qcom-qmp-usb43-qserdes-com-v8.h       | 224 ++++++
 drivers/phy/qualcomm/phy-qcom-qmp.h           |   4 +
 14 files changed, 1513 insertions(+), 31 deletions(-)
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v6.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-aon-v8.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-pcs-misc-v5.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-qserdes-lalb-v8.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-usb43-pcs-v8.h
 create mode 100644 drivers/phy/qualcomm/phy-qcom-qmp-usb43-qserdes-com-v8.h


