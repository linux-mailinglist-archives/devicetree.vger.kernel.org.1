Return-Path: <devicetree+bounces-220924-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DE0ADB9C7E9
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 01:19:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id DFC3A1BC3C28
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 23:19:38 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B068B298CA6;
	Wed, 24 Sep 2025 23:17:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="VJvZn3PX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D60FA23814D
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:17:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758755837; cv=none; b=DmMFVVKeECo7q8NhevFTAp4Yt3j4ZVyVXes7OVZW6MGMWXRJE8nLec85dD0xwIWywZBKmLDM+tCuFnNZ/PuLnlN1+Hqmy6G760JKcEvjdd6PWz5B2ymKtUBKwBf6evsf0FoaPGUC/doGL7fnwq2EYRYrZEmb4jrXHot/2Bnt4sQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758755837; c=relaxed/simple;
	bh=bZ7vzZyfQX5UaLwavPV3mZ1y1L64kpa5LLrsI0ThiPU=;
	h=From:Subject:Date:Message-Id:MIME-Version:Content-Type:To:Cc; b=AeWKS8pquKBi34LuLklxN/EeoW29//3lz8lbeQ5QO2mHNYb8ooBQih8ZefZLNFAO8wzvqKnApqnl1pp41dezVmNZNByTO57a5ULt3BX0OwRE9jqPk18LC9XmwtJzJaH8Ps+3rJWuSPy8S28AdG8EqEO4DgPm/siJZRgKfNp6zXY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=VJvZn3PX; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58ODGCTW002400
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:17:15 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=cYa/YlwfkAw4Rr816M6vHs
	zMvOg2HLMgmr6PGy3HUyI=; b=VJvZn3PX7oMHbG5nTdbVOKPhmKCwVpwwgybP56
	s6ihRz9UDqHms9LVrQ5SoqlWjkdKkUmV9JUwN3K4Zai1tyxqxNSEnjtPhU8OHtha
	zUKvrV6Es8I56Ia3i/lHBBnnnm4lrtIEE4v26Z9wYniX2iHcZfwA/ghSZylpUHWU
	NjgZxV4CaKqPffLmVGgsU1L3/p+M86KoPLPlPKEO60nfG615TXUsedSh3w7Kjax8
	dJgI/PDBfHzpqA9cO+JL7Zxc2BpZcIxHbYwcQ/KU/1XMK8y9tNQgZeoLCddt5grp
	EjClTpvtSD7GE7Fwt9bF5X5CNg/93lW0wL5w2e/8zStdNTZQ==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499k98p0y3-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:17:14 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-27eca7298d9so6431805ad.0
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 16:17:14 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758755833; x=1759360633;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cYa/YlwfkAw4Rr816M6vHszMvOg2HLMgmr6PGy3HUyI=;
        b=Ru/hzerc+f7gnAjH1p2D6Zj+9ziIfIciTeU+NWWuZ+wg3Nxbt/NF7mUDSbgfz7vfP4
         5hqsZHut71DQ1HxeCde16sDSx6l/0aA+F0Zye3GTdJE1ad0kWYrbXNs2VByiV5fZDfXX
         uykc3p/p8jGFWmWGQyC0uP7JTl64OK/7q8D946UIYDKWDnZK6s0G4jkYo1hqsyr+kdCj
         mU9cBwq3AVklJsqL7aPNzgdPXtK657oQcO28lS+IsRQ0XNoNnk4CwVAcLx1qyuwEzNV1
         T9OgrU9gNvgx9N+WamBmxyaYdCUCYRYnxdMcCN3aDPBSxA87L1sgxE06SINmYcFskZSt
         GNpQ==
X-Forwarded-Encrypted: i=1; AJvYcCXyP1ajsyLvVXi+DwoN51mP7UBlA+rWus3PbGZEHFqi70OeN2iXu8fb9bRBGSY8WUZWMUwxDHNPoLSL@vger.kernel.org
X-Gm-Message-State: AOJu0Yw2TzPbEVOHQR32luDsZmYza8uNxPG+v75LJT6ROBsRNuMubNQ4
	xp7ru73Wyb5a2jc/czZHFIlv4w6rfOnTxGnqSgcD06uj3nJVw5D+aj2F8tr2QYnwPvXAy2DMqGy
	74TLwb7nKWcmush61H+IttpO6x2B+PndMkR6dVBodviqqeveRqhLXpbXqRAmVPRXJ
X-Gm-Gg: ASbGncsu/rSCzTJoOUeo/CAgWGKP5xk66+C054sg3uWQJn3CgHrAa6QdUCAUL2OczhL
	1/SNRuM7W/JLfJPka/iWpbUSt8wGKYB6unQx8gl/lcEisAdbZSiKnooLOfceJHWxXkaZ3MAc24Y
	IwSu4+ieQdywQ0EVrK3PS6Q7p81Pph4AFDXfyxjGcKbLd/xwlP6i2Tcy5OmUdxe1Kd3nsEYtPYP
	bQNceKivGxfsSDL5Kz9l0wYOZvSuHcArNOSxgKCxONhffRbpNxxmvr5ex7vWBaFWT+9aUHD+PZA
	AMtcW28izX0aMqaAJ2E4PW+OIbTcaSFQNpva7HdttO7+0rp8ESkLgOCr4QmqSgfvEn5KOzu6kZ4
	nFbxz9y0w4C6jTBY=
X-Received: by 2002:a17:903:78e:b0:269:9ae5:26af with SMTP id d9443c01a7336-27ed49d2c58mr9052765ad.13.1758755833498;
        Wed, 24 Sep 2025 16:17:13 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHRkzT6M07G9l1gLomwbTaMNgnrfjjd3aHGRwNGyWdAz1cnH5Pua65v227ovxIpszjWLy8YkQ==
X-Received: by 2002:a17:903:78e:b0:269:9ae5:26af with SMTP id d9443c01a7336-27ed49d2c58mr9052555ad.13.1758755832995;
        Wed, 24 Sep 2025 16:17:12 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed699cbfesm3892125ad.108.2025.09.24.16.17.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:17:12 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Subject: [PATCH 0/3] power: qcom,rpmpd: Add support for Kaanapali
Date: Wed, 24 Sep 2025 16:17:05 -0700
Message-Id: <20250924-knp-pd-v1-0-b78444125c91@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAPF71GgC/x3MQQqDMBCF4avIrB3QaFviVcRFTCZ1KMYwI6Ug3
 t3Y5Qf/ewcoCZPCUB0g9GXlLRW0dQV+celNyKEYTGMejTUGPyljDhifnW1tH8PL91DiLBT59z8
 ap+LZKeEsLvnlnq9OdxI4zwvzzlfRcQAAAA==
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758755831; l=819;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=bZ7vzZyfQX5UaLwavPV3mZ1y1L64kpa5LLrsI0ThiPU=;
 b=bfdzGlAywR+6gVqy6RQiPTKGLFSjSfgL0KX0z9Lctgj3wlXQev4gxSq+0wcBd49uQbszgp+0K
 nD2JAyMCZL+AvFue+GYBn8KeJafTFqikUg7E9OiyoWopFccU4STBZ6S
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-GUID: q9SZTLACAv5qGCeosTiFFLOn6YcYOAUQ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAxOCBTYWx0ZWRfX+Jfk8cPJ5+70
 4aDDehV2ZDzRCpf2gSLdILmyYo+ruwn9Gm2R+c8M0dvepwz9/+FFPkzG/De4H6yGHRuYxs4pup0
 xknDCPYAgXLmmOLhb52G8jdgv9sfftZHLglMflnMjo/AOb3XJSJlEMIaC5NqWcAtofe368374ZI
 bDqzICtBJvCwccYFuDHGRBCEUWJbc/yAZ3DFKoUTBgsiT4UtEixeymzGVAAETxE4zWmVFOcw6Bi
 kk4XyfyYHURktHo/zcAUzuPVT2JztVPyJ52EyNGzLFfi6f59G+qB6jJUORO3r7cTzTHvpYY+ot0
 26LT2fzEr+CMQp0Al9lUf/L747pxb5le25QNurEffMkGm1ihLshZ2Lt3powuSsa6jCzm0EbEoju
 CIePVBAq
X-Proofpoint-ORIG-GUID: q9SZTLACAv5qGCeosTiFFLOn6YcYOAUQ
X-Authority-Analysis: v=2.4 cv=Dp1W+H/+ c=1 sm=1 tr=0 ts=68d47bfa cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=hsnQhQ_IG91HmfWgDXAA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 adultscore=0 bulkscore=0 impostorscore=0
 phishscore=0 spamscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200018

Add rpmpd support for Kaannapali Platform including RPMh power domains
and new RPMh levels.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
Jishnu Prakash (3):
      dt-bindings: power: qcom,rpmpd: document the Kaanapali RPMh Power Domains
      dt-bindings: power: qcom,rpmpd: add new RPMH levels
      pmdomain: qcom: rpmhpd: Add RPMh power domain support for Kaanapali

 .../devicetree/bindings/power/qcom,rpmpd.yaml      |  1 +
 drivers/pmdomain/qcom/rpmhpd.c                     | 28 +++++++++++++++++++++-
 include/dt-bindings/power/qcom,rpmhpd.h            |  3 +++
 3 files changed, 31 insertions(+), 1 deletion(-)
---
base-commit: ae2d20002576d2893ecaff25db3d7ef9190ac0b6
change-id: 20250922-knp-pd-f639194fd7c4

Best regards,
-- 
Jingyi Wang <jingyi.wang@oss.qualcomm.com>


