Return-Path: <devicetree+bounces-254919-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id A9A0DD1DB3E
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 10:49:27 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0FD7C30213CB
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 09:49:00 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B7C6737C0F3;
	Wed, 14 Jan 2026 09:48:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="TMY26qLB";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="Pb1aiBuX"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4643436A037
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 09:48:58 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768384139; cv=none; b=nisYjJuEHpIyjLgw/APMj5AuNh0x/MHVTTNrOryVRRQCAyR9ZwbxGoBqegif5IecWCcv+CdxkEJ/l1a3Hsxu/iPWkEaBCiZvSwrh91+us/cGKHOD1hzd3rzrcH8pNVek9EayJ8ZAhZQ6vvXOfOhx7+GBkGT9PmUcOrClI+wFElM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768384139; c=relaxed/simple;
	bh=YXGHj0M0KECb/l1M4As17hhZ9o85bI3mLdgbI61jbeQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=lesGV0zEc49uJ9QBe+PP2m2dBVqdBxF+4KExN1q8v6RNF3AuqYOC+lX8NOntYLnlydzzZtVutuW8Q5p1gS+TzM1Fn0ao+L7fFSiEwE3VlUo5+xDLwUhW/0Rwy5JbZVUOJADITN588hRNy0qAw0pbBJXvY50hYtvS2W0AYW5zt+A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=TMY26qLB; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=Pb1aiBuX; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60E9jvxS3296429
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 09:48:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=nkwmjEpzwB4
	DfZDOapXg7vDHIv2rPiehRhdh5v5uynU=; b=TMY26qLBvAlmBUdqUWSrL/mNVoX
	opFs32JhviDYVDZ/YYBRC4ClcYBhDO/W6QCnjyKUl4MjIQhQFJRH9/x6jNmC2RM0
	rvYEb8DBGiPLtueM+nmgfil9bU0ff6q3Au3h6tqEP2esO+7QvQmGfqPYhP59LuEL
	QCWAPBlsTNG9du3qxVCgX3GuvxzmfFXOAoDVm6N0hICIrNcx+wHMIigqEgraXjKd
	X+Mhp6t2dKD1UUzgWfoyj2TDwqnGBwz+97I7bQ6lmP0caaZSH98GQyJzXe+oZfSX
	tGKftO1JmqNXrwkajcnZhVSu3/AM3BIVc4/we45Qs0j5US0YnLWHlgWffFg==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bp8t2r0n4-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 09:48:57 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-2a0a4b748a0so61117785ad.1
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 01:48:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1768384136; x=1768988936; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=nkwmjEpzwB4DfZDOapXg7vDHIv2rPiehRhdh5v5uynU=;
        b=Pb1aiBuX7xKCenZwyd/WjIs8TH8PWoLLMf4lrfHAMvwqVtRJLtUscCeigDz7CNpUmm
         WtS963YpT9we7CwGqgJPSSaoqmRbCcPDK11y5jQMbUmSHNuon7q9MMzydY6DVZNlmdSM
         seFThVdpiPfHPZWACZZN7ioT0HOayvTW/p3iFJA4VFF25x6wLxqxKl4jzsz0Qc3G43+E
         m88cWnznsVP8gdb7vINna5l5z/cAEWrWADwQ5oazqxPOI/KYwccYMUqGXrv7xxrfBeRX
         x0ZOmdVqrLySfz+pzMH8r/cLp9opiE80yOBmdypvDfMTHzDWs1DzRJCNuQOmnfnxWYBy
         pHfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768384136; x=1768988936;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=nkwmjEpzwB4DfZDOapXg7vDHIv2rPiehRhdh5v5uynU=;
        b=XWHJwpyOpz1CG5toKkYYVbP6nrvGzs99yQ7T4Pm4sqpHCB9KnxrjJwaAVXS5+keWrC
         RVbA0+jO5whUpaaZbVAHo97cuWfjjAg+WlN1fsD9ZBsJ+m7oC07f/QybM+iBpNp7Lfea
         sqsobI9iS908XZSPacnedIlsIVlg3m8SVlBSmUlUiBlYsniloyiEYaj8WahK0K9tO+Ve
         AyhNujKWvvS26piYlc+T8nnSaszVsdpWLQs06U+5aHUU6EHgUDuOpu03eXFTQGmIZXjd
         arCPdk+nyxdgzs0JfrYj0BIMi4rSyjjY5poes4dprHpxYXUJkVn8mxkU2G7GI7g6lOEF
         5CPg==
X-Forwarded-Encrypted: i=1; AJvYcCUQ0NdBef/CMvITDRvW6uaHp0WJegUMHLK0qQUQvJsV1dECr16+MbtUSZVnHXFX1+OCb6LY4CnMDTdT@vger.kernel.org
X-Gm-Message-State: AOJu0YyqFu8AcCxZnVQSxuHVEFzbPNN3V7Gu6+SW8AihFuHJl5dia/M7
	dqKSoRvpxNgXTeQPB0c/+yyGkfgOPCFaZUMHfnb6wyI61Hh3Xw7BrQVg3IA1dHvUljWYZ/Rs/o6
	0EayL+yYScLCAbUJ20ShSkovjhyGNay0fVcPLy/vnUWX0hE9FFfsSUlIhR6bn25/X
X-Gm-Gg: AY/fxX4iOGE4Q0GzcMdQcD1a08ke12N74UuKIgrWMokwhtkyWb0gpXNmjWS0OTSeEw/
	yC/FLB9vjZ9eRJINfSWOVLoHD3T4Tt5jBSYavG8uQShH4hnqSd8X1Aik9Q8tetsIC/PVzjE+xxj
	DGvHrN4LLIxNnxD8Oy9heRj/DcoTH9zI6UNaaL36BYqbhYP2EoNUXifY1fSNF82847H5qgoJsz5
	KIs8XdhibriqRIsq0+vSlt97ykUp6OO1TjrviYfg8xk6EmcPqOi+nEjwMoPMEeeuUdbYmpRc5i1
	p0TZE7xg70bbfza3QXG7bYD09U8b75VWRbXo9DMVTmN4lc7D789jsRz2GjbV5gMgtIgkoCjNK3X
	eGf/6TLM586y4AJyUlb3ANFurQlSoamHM+jVvmA0E
X-Received: by 2002:a17:903:2f83:b0:2a0:a484:6b87 with SMTP id d9443c01a7336-2a59bc4396dmr16745675ad.47.1768384136184;
        Wed, 14 Jan 2026 01:48:56 -0800 (PST)
X-Received: by 2002:a17:903:2f83:b0:2a0:a484:6b87 with SMTP id d9443c01a7336-2a59bc4396dmr16745405ad.47.1768384135739;
        Wed, 14 Jan 2026 01:48:55 -0800 (PST)
Received: from hu-neersoni-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a3e3cb2d93sm225335075ad.63.2026.01.14.01.48.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 01:48:55 -0800 (PST)
From: Neeraj Soni <neeraj.soni@oss.qualcomm.com>
To: ulf.hansson@linaro.org, robh@kernel.org, krzk+dt@kernel.org,
        conor+dt@kernel.org, andersson@kernel.org, konradybcio@kernel.org
Cc: linux-mmc@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, neeraj.soni@oss.qualcomm.com
Subject: [PATCH v2 1/2] dt-bindings: mmc: sdhci-msm: Add ICE phandle
Date: Wed, 14 Jan 2026 15:18:47 +0530
Message-Id: <20260114094848.3790487-2-neeraj.soni@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260114094848.3790487-1-neeraj.soni@oss.qualcomm.com>
References: <20260114094848.3790487-1-neeraj.soni@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=YPaSCBGx c=1 sm=1 tr=0 ts=69676689 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=NK9fTQKdxr_acBLSYI4A:9 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTE0MDA3OSBTYWx0ZWRfX/tHuw0qHnPLe
 OjqXZ/waHd9MvBC2jlGsYQZuB1uE3NTJEAv/Ait+oXFyIo2Vm9MJnrKw1Ansr/qRdHf0nUMRays
 ef1i0EG8jZ3YhN+ubgyZP4Ab48j8XdpDnkAXwc1HR7n9QU/6ioN2rhmILTJymsnADRcwswzqFjw
 7qz+5lQ2XdYv22FFzKtb8r7TFp1im7z+2XoA01o3iAL/BevMif6dkSlIna4tk3zlkliTbBRKj8B
 Xz9AkadrgltU5niZBEsz9WBGzfL1Yk28Y8XcnGeROK6PGr+rALCMypN2uQ0rQLb1TwfAl39V76T
 YABHmqH0zLqqn0aV7iUMD8ZKi89UkrY2U2oZfnuZ0YJur7fyPRtLnx9zHCRttnuf+S7FlxtGc3F
 sqUO0cws12M96AMndRZbWbtmPGcBB/1GE1JhFl8uKJ5f4pNQ4sarS5+81L8CVxMQ6oU6LzfO8Uv
 FcYTgGfySgAls5zLlFQ==
X-Proofpoint-GUID: UZJ5UJp2XCB7Udu6lw9_iB1sB3-rAvIu
X-Proofpoint-ORIG-GUID: UZJ5UJp2XCB7Udu6lw9_iB1sB3-rAvIu
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-14_03,2026-01-09_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 bulkscore=0 impostorscore=0 suspectscore=0 malwarescore=0
 phishscore=0 lowpriorityscore=0 priorityscore=1501 spamscore=0 adultscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601140079

Starting with sc7280(kodiak), the ICE will have its own device-tree node.
So add the qcom,ice property to reference it.

Signed-off-by: Neeraj Soni <neeraj.soni@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/mmc/sdhci-msm.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
index 938be8228d66..8a6a25ceabe1 100644
--- a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
+++ b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
@@ -140,6 +140,10 @@ properties:
     $ref: /schemas/types.yaml#/definitions/uint32
     description: platform specific settings for DLL_CONFIG reg.
 
+  qcom,ice:
+    $ref: /schemas/types.yaml#/definitions/phandle
+    description: phandle to the Inline Crypto Engine node
+
   iommus:
     minItems: 1
     maxItems: 8
-- 
2.34.1


