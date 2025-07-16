Return-Path: <devicetree+bounces-196681-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 8B892B06AA5
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 02:40:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 4AA9E3BB0DD
	for <lists+devicetree@lfdr.de>; Wed, 16 Jul 2025 00:40:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DB585188713;
	Wed, 16 Jul 2025 00:40:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ivJzNZCW"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63010199EAD
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 00:40:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752626415; cv=none; b=YwS7hT+TLRkiVQp+IULoenZuiNbXLqO0T75knIYP458trb3NLQ2KibVFsOcILho4kA/Q0x6t7FyHMo8nYDE4RyOvM/oNGCNJdjltm/a9Futj/VGmetX7fdZO6TcUsGtvh0SBSrOcwOjI6UmTJLw9JyniXMYXaaOHY68yNmvVaPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752626415; c=relaxed/simple;
	bh=DmMC5bCJ9CWUiX4p10MCxK/dY96FoqUa8x52jrnCqLE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=oQfOLxtClFHLvcTXrjD+mGODlKWMKaMNbKM0rnDqCAz0ItnJ00s0lVajY4PHSYBruMFk8/VIyJZPe7WL2J7twHoJluL51DutacHMUz0FGf34EDua25fAYbqw4vCKNHEGwnBjdONLuvlHPQgq4pPSps/WPQvbKWnUr85yqANln10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ivJzNZCW; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279865.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 56FGDKIt003436
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 00:40:13 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=GCF416+VOtu
	BXP/dynqOe3kMJwo5Rxbt8eiqcDIlK5I=; b=ivJzNZCWSFYVYHZkhoM1WbpWeAg
	zEExV7vyf094wYQwoPs8Y23OEIH/euhDNXJUwuRD/L2BtMdERS2ePlkbFawZJOvR
	yl8txOkn0kLGSrH2ovYu5nxaNLhM282ySKONsxGXmUN/adfrlf02e4j5qX7PfRhS
	uDNJIpjtsYPnW/jPS44QantUn7qbsvBicao3ZL3kzrQbDqoaDO02Li3p9Qu67ECE
	v/ipWlUnhnHtQdCPZWOYL/1gt5F+s8NVYo4/Yv8K8/jHqu3RmZVFDJwsGl38FurX
	BmtugrM6zQA+kIwYhZ123GKAiUeMwZ+AUXafeHB5gcNxPymoBlz6UjqusSw==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 47w5drmwx0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 16 Jul 2025 00:40:13 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-2369261224bso65584815ad.0
        for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 17:40:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752626408; x=1753231208;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=GCF416+VOtuBXP/dynqOe3kMJwo5Rxbt8eiqcDIlK5I=;
        b=m4Cr7lJAwCd1o6NXoc6Cej7W2CmX6qRQYT5a0LeIGn5kjMJ1B+ifatboL4TBYHZWv5
         iQq7kvvlgCez2Pc2Ubj86vZrtbD/R9egy6Baypjwr6KiEy1qAx+yJuwfd5OwebNSi2fF
         MgPGrKZxADpAFfW7IwEd5xs8v/AF1jh/NQDPJBxLr33BnMNa6Mt/PIzXrAg/c4GpoIIU
         Hr0cQoHYc2j2QPdt7j62ZeDHi9V6P3Zh5WWkBOp84fhj0Oaylbb2aWe5mbcNhAt/5+mm
         VzMHY9Mvr2R+agffZjDmhodLsV1s/bI4hDwFExle808xix9PYNzWYzpjDRogAUmI7HZ3
         WW6w==
X-Forwarded-Encrypted: i=1; AJvYcCUHaGkvnSgZ6qclDKQChiCVPIn+E6IWEkIDaBHTnLuROqR8XE6quDxzYTH6KGRTkFGa9R8yDU31XOg6@vger.kernel.org
X-Gm-Message-State: AOJu0Yy3faEGM3NtUfjg3OaCvXaFdOIUfWxLzKzwRA5rXfnsWy076W8z
	aga5yNM0/oD6mgF/uzs5dV+Psc77RvpcysdLmmReETFyPZxIUSXXILZFj4R8ZE0N7uBU1T60/AU
	N3+1KJkPPf7XCnGhXhRmObfos8MD/PP8TdsmjBakdu5NNqsccBc747v4iQFekXXKUd5cdHnNZ
X-Gm-Gg: ASbGncsG2sRBX6uVqVpEEPbypNQJI6tWKa5gY1VOq4bRI9J6zjeEjJcqVwe8vtLfbMs
	rqUB9MOoP+3Q6WLKMeU36hcUGmkMI9cBH6Wc0+J6CXc1BLmyBU6PLgnb47GXM8BSLs5yp3rGdgE
	DTIpw+wdAuM1zSaDh6/+xJ+9Y9Q0Nlu16jfVoOFSFw39loyY2dOPQMRoZIoLIuyANmdF0pqrwKU
	XsLK0WLKflJEL8Jo+r1lIl1OglgOL3/aZRqlKmrZIfuMentPe/KMcQcqeAXToCGt0o7Mcj3c78i
	TjabJq8qWDC0hWZsMhr0X6XyO8BV0no1NwbKBF2Y9orVYT34eTpA0c99ojBn2sCW6FcEn2FK75+
	JIHunraWuiwpM/qrU/46bsPwKVjY=
X-Received: by 2002:a17:902:ef45:b0:223:619e:71da with SMTP id d9443c01a7336-23e2579d9e0mr11121695ad.49.1752626407751;
        Tue, 15 Jul 2025 17:40:07 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGZqyh5zhn7aZGpW6wWxn9yXi7t+g6XSOjNdJRS6cnNteJ4YgcV0/RNZrkd+8/jUrZRoleGmg==
X-Received: by 2002:a17:902:ef45:b0:223:619e:71da with SMTP id d9443c01a7336-23e2579d9e0mr11121395ad.49.1752626407364;
        Tue, 15 Jul 2025 17:40:07 -0700 (PDT)
Received: from hu-amelende-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-23de42aeadcsm117015525ad.78.2025.07.15.17.40.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Jul 2025 17:40:06 -0700 (PDT)
From: Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: dmitry.baryshkov@oss.qualcomm.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/2] dt-bindings: soc: qcom: qcom,pmic-glink: Add qcom,subsys-restart property
Date: Tue, 15 Jul 2025 17:40:03 -0700
Message-Id: <20250716004004.311001-2-anjelique.melendez@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250716004004.311001-1-anjelique.melendez@oss.qualcomm.com>
References: <20250716004004.311001-1-anjelique.melendez@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: 4Idjcv4yZs3xhjsH81sIQZ6BVepjyf6G
X-Authority-Analysis: v=2.4 cv=D4xHKuRj c=1 sm=1 tr=0 ts=6876f4ed cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=Wb1JkmetP80A:10 a=EUspDBNiAAAA:8 a=EnJsE7tHsB2WQhtf5zMA:9
 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-GUID: 4Idjcv4yZs3xhjsH81sIQZ6BVepjyf6G
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNzE2MDAwNCBTYWx0ZWRfXy9vtKc6O5Oyb
 VTFbOcUq2N5bwmnwdEe8JTcYd4MN+57RdSsJo697dDAiXC5f24C9hAPTEsDmVRakRqwjo1czht5
 TpO8OqQ5CiHZx/gn3qEw2l97UXuJJMq/KF3IJPYU5P+44zSz+9ngIvzyY3anHXtKQWrNSNe0x2r
 nieBvlovaPk+xMwHQr/n1/QcjJCQru1Ck0WoFnQdqsP5aTypFlHlYE5lZGOJLNstyUAVSNy1sXH
 ddrYey9kTFzY8fB0IU3Wo56OSV/IywvFiAHdBu5WMbqcfyrvS9aAje7e639Z7Hqh9Wkc5SfswvG
 wj9hVhYUKO9ECyyMeZl60kHZXasJvp9ri4uJF4+87i4iGJcb81ngnO3fA6OeABBExnB0RKV0rqF
 BDdCOf2UYd9PdNHqnXskSq2LitoSFieUwXQn4kwD5zoGHK2TOzznypXo6VQkg0DtP1wryZKU
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-07-15_05,2025-07-15_02,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 adultscore=0 mlxlogscore=999 impostorscore=0 spamscore=0 clxscore=1015
 lowpriorityscore=0 malwarescore=0 suspectscore=0 bulkscore=0 mlxscore=0
 priorityscore=1501 phishscore=0 classifier=spam authscore=0 authtc=n/a
 authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2505280000 definitions=main-2507160004

Add new "qcom,subsys-restart" property to enable subsystem restart (SSR)
notifications.

Signed-off-by: Anjelique Melendez <anjelique.melendez@oss.qualcomm.com>
---
 .../devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml         | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml
index 4c9e78f29523..90011096894e 100644
--- a/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml
+++ b/Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml
@@ -49,6 +49,10 @@ properties:
   '#size-cells':
     const: 0
 
+  qcom,subsys-restart:
+    description: If property is specified subsystem restart (SSR) notifications will be enabled.
+    type: boolean
+
   orientation-gpios:
     description: Array of input gpios for the Type-C connector orientation indication.
       The GPIO indication is used to detect the orientation of the Type-C connector.
-- 
2.34.1


