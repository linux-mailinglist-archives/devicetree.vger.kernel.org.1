Return-Path: <devicetree+bounces-196929-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 3E7F0B07955
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 17:16:04 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C818D4E50BD
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 15:15:26 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 518ED2EF9C1;
	Wed, 16 Jul 2025 15:15:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QUHsk7sR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B5A492EF646
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 15:15:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752678948; cv=none; b=q/WpII1vFYnrxBe+8qYQXCgAGINfd4Uf81sAj3Uv6OWuwhwwTQRLiOguvBQIjMfHmLkj7PgEj8kkeEoRddrKn5lz3xxjEaqZWLYhcsGcXEwQ9se7K0YKkvh10NGeR+P8NxOYMVlWfmDc6WvkaCbtUzn7tAxep0/XEY3JU2rPlpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752678948; c=relaxed/simple;
	bh=3fiJEtG0OZw7lMsiKQs4Z8Qo7rCMvsROE29oSVR+jLw=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=X6Zc6l0ILuksr1hE9t5Dr6qsysJ+jY0/86L601t2sU/jy9lkBgCYnd30bqoMkoFRUqzogCpSiO0ABSTZ4z9W5cMNnNQBEzXgCCzOfV6nC5G0N0ouGFqkLhV8wj/O3vxXy55Tza5EoO/y46thKoxZ993x93UDyIYdBCvQjfnEWrE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QUHsk7sR; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56GDc7cK003273
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 15:15:46 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=VtVpGvVZrct32JIcBjOhQXZk+GPq1hNjUqV
	+7EdjMl0=; b=QUHsk7sR5rim9L/y3GkRbdMOhD+zJW9W9mtfQqyptdjIaHI4RMM
	M4QqcAo3xIPUJ804M7FIc41mYCNILyutNmy93flIWCurMt29wHDVnZTzD5pQKndv
	SGVWVA2uji7qR8XhdLJ+kE7HqH2ATwzVx6XQwpRfVkqM4a+CYa/M6yfA3HahbwIS
	9jvOt93xV2SH15v3PL1nPZi08yFnMHLzmAoFgNkHdlMe9jalQ9EuB3gUy9JoNL+R
	RkDdWj7EHjT1YBa7axlWL0KUohZMRTkimwbENBYWyMF3fmsjaFKpRfil92X4+VZv
	QXjIEBD4ncA5OjdlVaEAgEjyYX5uVPU7nRQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47w5drqdqb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 15:15:46 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-2363bb41664so198325ad.0
        for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 08:15:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752678945; x=1753283745;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VtVpGvVZrct32JIcBjOhQXZk+GPq1hNjUqV+7EdjMl0=;
        b=E2mjTkELfR4j8uDBLFgfftkPLafA3DshaMeGemMQjsHxjQQqVad+Hb49O/hljrJ/Sz
         kB7jkLa3F4SCdNJTcp5pygNqoVLo1v8weX4cjEpsc1p2ldpd2ShdyEuItjQ3ojWjupO6
         Pt7beNa7y+pTQo7473trg2DkVlk8nNt39SMcJf5QZwzF6irP9Sq+ZZQcVR/WiYvccAXQ
         V1AxmGGNbZca4TOec6tNy2WyeWVKhlpDxLbgkYMdORz9qdvxsv6oPhzzvNTFyAX2Lqmk
         xyuETuzBi81ZUkI93RjnGzZcuGH5IhXIQf6lgmiXIp3rEokAAhpXvDmYh/u4qaJee/Fj
         8+9Q==
X-Forwarded-Encrypted: i=1; AJvYcCUUWlmuMrXcl1VsdepZ7ETLsnQqsig3aAPuyL7DZw13UwZeeacJX1VBVjUQsHysYznY+nQdsJDlDmD9@vger.kernel.org
X-Gm-Message-State: AOJu0YwZ/AkBqR3miP6kmQHEO8+cmRZDW6SN4+32yXNZgl5T7FCszfDA
	nvX4lhdCGjQhQi/kYMBZiTUnrSFrI5NB3IpbGug7DKr/JhlkYaTs85XHgxRREH5il9T2p2YwZlm
	hJM/d7cWVzcANStwiogMZQ1t4m1jgES4WSomx30GaIMuIAgqKqbzQOL8tK0k3uekQ
X-Gm-Gg: ASbGnctN1nykiVHsrzPc5wsgDkwBwPFL18I7qBOj6+Si3vyo6YY0DDyWGsyBBqOu+L1
	HNz/2wFEEq6uFt9SA38ETovtcczsGuTD0fpQIbMc1PpYCpMEvJ25tvEjbw5yiGX6QOsb2b3slJL
	Crn3qRUrkNYXwf6JcJuqzwwaN3xa9y49nnaYhxrpVkOIoSH4OLkSCR+docVFGvoEwah+QfKuIBV
	ALgPFz1YQa0F+GgkWeJesyipWgKOOwXVciv5MA2ZG4DQMgUIsx1EG3GyyBCcBSHipBicKak6FA3
	BOX5HJtQhGcW8YWkyuzaW+89BroUjLZOjxQXL2QhBTVYQbffXPWd3yQWPJjdUqln/9aJycNftfY
	AoMbcr5C0lqmB9UznU7e7NXPPUR5rc832PVhwJALo6xwspn9ALYopmhfUetSA
X-Received: by 2002:a17:903:950:b0:234:5ea1:6041 with SMTP id d9443c01a7336-23e1a43e5b2mr121925075ad.10.1752678944890;
        Wed, 16 Jul 2025 08:15:44 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEx4lYicAxy/akPMh6VffbDUsZkyKqrnhemzyMQuz11i7usIVNVimaeetdH9/tTmv63a9jbew==
X-Received: by 2002:a17:903:950:b0:234:5ea1:6041 with SMTP id d9443c01a7336-23e1a43e5b2mr121924305ad.10.1752678944243;
        Wed, 16 Jul 2025 08:15:44 -0700 (PDT)
Received: from hu-pankpati-blr.qualcomm.com (blr-bdr-fw-01_GlobalNAT_AllZones-Outside.qualcomm.com. [103.229.18.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23de42ad9efsm132769455ad.58.2025.07.16.08.15.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Jul 2025 08:15:43 -0700 (PDT)
From: Pankaj Patil <pankaj.patil@oss.qualcomm.com>
To: djakov@kernel.org, lumag@kernel.org, a39.skl@gmail.com, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org, quic_rjendra@quicinc.com,
        raviteja.laggyshetty@oss.qualcomm.com
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] Add interconnect support for Glymur SoC
Date: Wed, 16 Jul 2025 20:45:33 +0530
Message-Id: <20250716151535.4054172-1-pankaj.patil@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: ieuZogtPWAymGhvd3qWRRy6McJL25yTM
X-Authority-Analysis: v=2.4 cv=D4xHKuRj c=1 sm=1 tr=0 ts=6877c222 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=Ou0eQOY4+eZoSc0qltEV5Q==:17
 a=Wb1JkmetP80A:10 a=kNru7P6y79U7mb-8zXEA:9 a=GvdueXVYPmCkWapjIL-Q:22
X-Proofpoint-GUID: ieuZogtPWAymGhvd3qWRRy6McJL25yTM
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE2MDEzOCBTYWx0ZWRfX6EClSvM+ctvE
 i2PBNdWjTRSzMwjic/Yg5zQ2F8kwybYHG0PipuAc5+p1uKQ02I0craIH579IeRmDCCmSAPlt+Z8
 o/jwX/y/Gn4VXnxyPUoCT5FPjUYIT4tBY9+4JZe0l1YRVrpwE9opDtn82aoYRdJp3EvC7OQWSuA
 o4T/AI2bPoyU2lYb9RP4ZLzvM6JYk4G8pK9/J8suw2kB2GZ0yAzqwyNB8xGVy/rIkzLOh3JeCuO
 n43dD2mjZO3sz/D5XnC7R32wEGyd3DEw4uaWAmdYTUGkQYmMazvWXbha6njgt+uQWDCbObARzWe
 7ENQABaGOieHEuciYLH6eECsmMqDOZOyINLaWsdhsuivLFmaDwDaCsYozRSWqPmtKHSM8aBoChB
 6QhY61LsU+F5qg9w+iGh7BL2ba8W0HnHK7NleE6hlWCmS7xHoHeB6qhcgRPMUday4eUr95FS
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-16_02,2025-07-16_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 mlxlogscore=890 impostorscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 malwarescore=0 suspectscore=0 bulkscore=0 mlxscore=0
 priorityscore=1501 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507160138

Add interconnect dt-bindings and driver support for Qualcomm Glymur SoC.

Raviteja Laggyshetty (2):
  dt-bindings: interconnect: document the RPMh Network-On-Chip
    interconnect in Glymur SoC
  interconnect: qcom: add glymur interconnect provider driver

 .../interconnect/qcom,glymur-rpmh.yaml        |   84 +
 drivers/interconnect/qcom/Kconfig             |    9 +
 drivers/interconnect/qcom/Makefile            |    2 +
 drivers/interconnect/qcom/glymur.c            | 2259 +++++++++++++++++
 drivers/interconnect/qcom/glymur.h            |  185 ++
 .../interconnect/qcom,glymur-rpmh.h           |  205 ++
 6 files changed, 2744 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/interconnect/qcom,glymur-rpmh.yaml
 create mode 100644 drivers/interconnect/qcom/glymur.c
 create mode 100644 drivers/interconnect/qcom/glymur.h
 create mode 100644 include/dt-bindings/interconnect/qcom,glymur-rpmh.h

-- 
2.34.1


