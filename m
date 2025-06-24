Return-Path: <devicetree+bounces-189216-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id AAB25AE72B1
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 00:56:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 698FA188DC96
	for <lists+devicetree@lfdr.de>; Tue, 24 Jun 2025 22:56:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 98B3A25BEE5;
	Tue, 24 Jun 2025 22:55:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="DGU662D7"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E29F625B667
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 22:55:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750805741; cv=none; b=Ow52QKiyQniOfE4+pn8+6SLZTV7g/SbjZpdMOALwBTm1Pq7iiaJOtnZMeSoAGdH0KtKRS452CAnFvwsBPIANaVOM57tx5ZFlpj3zami4TVUdfBlS0xdKfwZYoaFn3DNGgoLBMIndwR7i4ZDMMdBq/AavZE7fH5i+z/Bx8hncr28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750805741; c=relaxed/simple;
	bh=GKgbBRhzEz04QuaakUJXbQIvwgTsuH+O20uET/6koFE=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=fK9lFu0wG0MsjmaJMHvIzmxyvkyIwUDAZKSrhWX96ofXHQJpnL5UFUn51832PrJ56wMI86HI21G8H+0sgJe8mmMHeTvHGPt2IWtniJrRsyS7vV47OkcAszpiwCpZU5y+xf2JHkOHdJai2iaKOhyBx3KO2l+cuY1/0gS9dKFFnE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=DGU662D7; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 55OGiDh4015342
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 22:55:38 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:message-id:mime-version
	:subject:to; s=qcppdkim1; bh=yDujKkp9EGhxEGJXr7U2EwrKJpZFzJFRRW0
	Cx8wz8PY=; b=DGU662D7YSlzrw/iONvswLf1zxNUXnsgS/u4pN0xNsYT05C45PT
	WBbqyTfcnKeLnlP8JRTWm+uOcEBxIKDANO+QLVudbEpswX0s5qWVxXjhwOrT08w+
	LDuc2orao/xlMO+RVvJy6lPkcHf98daoQQEdRJX1zj7ude4RKNK3AdCmcJwArhjc
	PYcZNvMnpzWeauFPBCIqLAlW/InGT5tvG5uTuDk2dAiiP6nr1osHQNzbygXQNlKx
	LRd5brwO2eYLoknpbFSR03THdMHOR1I6+cJU44E4oGFZnPKuDOHgSY0lYyXkwweK
	2yaQb04fJkCPdb9wxbhSNSLt4H6V9F+bS2w==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47fbhqmayf-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 22:55:38 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2349498f00eso2554385ad.0
        for <devicetree@vger.kernel.org>; Tue, 24 Jun 2025 15:55:38 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750805737; x=1751410537;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yDujKkp9EGhxEGJXr7U2EwrKJpZFzJFRRW0Cx8wz8PY=;
        b=So1ixnzkU+lcut7HDVEYuDm3CuwKC1MRVWJUe17BW48yNJx9bSTI1lIylVHBzI5Qgz
         io311UcmfeOAgbOAZ3+UVGiXPAKpWvae9h1HH0hmvVrAZ9ossQrQjD+aO9yuNz9lozUq
         2CFLuLXweTLs11egVYSwGVVx0uQY3Qi8HVoFtMA1QrfG7OPMKPTvx7WQ+iDCychWzgSl
         ZAAuH5iaNdrCxK9EsQGjOaN2rH5FRLVmqOg9jE5ij1HALWKNdMIJOWHGwbp4PW9pUieZ
         KnLy9FIwbuvcCG2bYHTj0LQPBLjplWA3lcamuUY/5XOuKbTmYB2j4Kr0TiJpwgAPpObR
         p6fw==
X-Forwarded-Encrypted: i=1; AJvYcCVy8zKTLvIIjtzFh4w0HRLLu4MNA90P+OjVb4CPA/s8Abf3TuWS4hdUHWKT5OPzKM2SG1Mh+jGcud5Y@vger.kernel.org
X-Gm-Message-State: AOJu0YyywpVkUOmETruqEqtTFIC8j/RCJc8mLVyVheC7sE17L7I6xEVN
	YHdpYDOkoiieciLn/MNJ1tdsQVCUKkN3Hxk28RpJDKyJ1f3fKclkpH/kCUoih+4pBjBnYsJ7JVZ
	ezbdTyXisiApgUBwVXhvkYfcpbnaU/mEr4QZy0ThIAVyKOPM2OMgX8QD2mNF8AiRaaZ+iILpy
X-Gm-Gg: ASbGncukCxSG8xbQ9yXyF5q59MFZapr/yHh0bTPrWtujaP13yeoODkhzzfS/SMCMTpP
	lmuxeH+4TrrSe9cCjqcKg0/nSLwuEDeMA68LYqQEPVxhs07vEkWOmeS3s8+o1xyeayZRnoyByrp
	9V2oab7nKyRqafUg3XSCTZYFKNfsqlcuECtOrEYzcS0D2NRHm0R3FomD97GQdsWyBH5lgspJedE
	AsmfjBiePIFPuFgzuYL6Aa2tnDQy3Xxv5G+Pro7V+oRaI4mD8wRP6ZCsbFw3V7W0X92Y9bzBbGj
	XnJxln9Jt9VAj2ncnLw1lDoHLuWGrCo2T/F7RUDtff2dy/kbCvK0k+gg+VVpI0XK9zUfzNikqo4
	jnoFyxcRE+w==
X-Received: by 2002:a17:903:1aef:b0:234:24a8:bee9 with SMTP id d9443c01a7336-2380243286cmr84876705ad.4.1750805737367;
        Tue, 24 Jun 2025 15:55:37 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHZQUxECsK0cz7E0Wf1H/BLEGfMGaA5fxjMnQoJMUXwdAmehx6B3JOrs6qWDXwa6Rp/SniUtw==
X-Received: by 2002:a17:903:1aef:b0:234:24a8:bee9 with SMTP id d9443c01a7336-2380243286cmr84876515ad.4.1750805737005;
        Tue, 24 Jun 2025 15:55:37 -0700 (PDT)
Received: from hu-amelende-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-315f53a65adsm154949a91.11.2025.06.24.15.55.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Jun 2025 15:55:36 -0700 (PDT)
From: Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: dmitry.baryshkov@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 0/2] soc: qcom: pmic_glink: Add support for subsystem restart (SSR)
Date: Tue, 24 Jun 2025 15:55:33 -0700
Message-Id: <20250624225535.2013141-1-anjelique.melendez@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: O5URTh7PFuBPBjaMaMCkiV55UTM_gNgL
X-Authority-Analysis: v=2.4 cv=Id+HWXqa c=1 sm=1 tr=0 ts=685b2cea cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=6IFa9wvqVegA:10 a=RMJmDFgMWbxiTDYyVGQA:9 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: O5URTh7PFuBPBjaMaMCkiV55UTM_gNgL
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNjI0MDE4MyBTYWx0ZWRfX7oPJKcwX90VC
 /8keBfpGZFeuO34u+ySzdz/YiKhKJP5VIGsQt8gJBgSXntcP1TNO7/6M/m1BchEK9Cs9XSYO3tV
 clvcjexHY0iGb8JFA+V3E16UfDzxsgH/YI6QyvNJ+icqBw3cuob5q9fkTvtEuiIPKsNyT7hS5WS
 PfY3xvgj3wSMvg8ytzrOOgGpnNfbfH7Lk0i0FrO+KS7V7j2Y+stPkqZe+f5e255MYminGC/Ec6t
 Ia+QXFXARgXT05E92J+f0OI//tZ+4RRigqzYyxMiMbY1o42IBRnu2FkeDZvIKyfN6dItbqfsqnQ
 Y0PyGCh6v4rzXWfY2V92xYPhiPzUKEbQSn55suVtHyWyf6tEYBiKh7gQJsGfrujVQnZXpVPajNQ
 5sUyBUzwzAga4e/Ijc4HPmLLXyH6/QJ9Azcq7HTiJVxR97LoVstyrVGDeH+Plrd7vJRl8uQF
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.7,FMLib:17.12.80.40
 definitions=2025-06-24_06,2025-06-23_07,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 priorityscore=1501 mlxlogscore=999 phishscore=0 bulkscore=0
 clxscore=1011 impostorscore=0 mlxscore=0 lowpriorityscore=0 malwarescore=0
 suspectscore=0 adultscore=0 classifier=spam authscore=0 authtc=n/a authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.19.0-2505280000
 definitions=main-2506240183

Add support for PMIC Glink subsystem restart (SSR) so that PMIC Glink
clients are aware of when subsytem come up or down. If SSR is available,
the subsytem name can be defined with the optional "qcom,subsys-name"
property. 

Anjelique Melendez (2):
  dt-bindings: soc: qcom: qcom,pmic-glink: Add qcom,subsys-name property
  soc: qcom: pmic_glink: Add support for subsystem restart (SSR)

 .../bindings/soc/qcom/qcom,pmic-glink.yaml    |  4 ++
 drivers/soc/qcom/pmic_glink.c                 | 43 ++++++++++++++++++-
 2 files changed, 45 insertions(+), 2 deletions(-)

-- 
2.34.1


