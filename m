Return-Path: <devicetree+bounces-220943-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 166F7B9C90F
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 01:29:31 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 4A6871BC3A8C
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 23:29:53 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4AF602BEFFA;
	Wed, 24 Sep 2025 23:29:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="ERR71+PS"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB74629CB4D
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:29:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758756550; cv=none; b=cOOASzS5xUp3GSkRCS3PJuQIL7I06m1MH1T7AASAf7MApUSB/h44m3XnwM2fqgtKaystmQi1SEDsOOd/j06ZE2PqLBwdMfRQg2V1C/aqZoWW4H3IDY/miI+D4oKxVjaLpFvmtiwdV7Ik31J7SfKOsnIQ8wqZ8Q2ISTSrid5r+9c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758756550; c=relaxed/simple;
	bh=jWd78DT0Fr8BpiI3OytKO/eCMLUF09XL9ggxo61EL4s=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=LgoNLLYJ9QQhkPccleGGeWAC7DAFOycgEnDi31oo68GBDJHaUkGK2/lb1wVK3BHWLN/oXaPqGSgB3C2tOy4TLrmAY3bgQkga0zqiTm6IBpGQZvEuVTeRWU8ONMd79Ag+Oq1nUGGaZWHrYynllMoP1tRfR7XQ+3DBDwZheaXYtRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=ERR71+PS; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OCUUhh001842
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:29:07 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8pW0sZS/QufsY4Bkw7D4M7tAZ8fJtgfaJSDVfDSVr74=; b=ERR71+PSYocz9mPK
	Bj6PQQMyF98CuJxkrPJ1Pc+k2wMNbxkum2EIBqoowSjaL8+koG3HJ88uvST+X5MB
	c1DP4Wf2Ha9i+uUKLaCbBfgY6qPewYPOnJ9pLIkckP0xPMLQqaH9XX5m7NYOblwx
	9o+2e+ZUqUPUBEYSAicVG5NLU4DfcQ82XQkd7/Udu1bF6UGGQPi7iavrPC8owJW7
	QICJPQceWasjXk42wsLu38MxX/0VHotvCm0aLU78a9/JXpyZNFHwmbEhrwevfmFV
	bKjldap3TvXpzUpZwRlXc2snM393yLzBbMsrC3F5Zu33wJ0ZivUkwf+dLMVsA9k1
	4rNuQg==
Received: from mail-pl1-f197.google.com (mail-pl1-f197.google.com [209.85.214.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499k98p1rr-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:29:07 +0000 (GMT)
Received: by mail-pl1-f197.google.com with SMTP id d9443c01a7336-26e4fcc744dso2315925ad.3
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 16:29:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758756546; x=1759361346;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8pW0sZS/QufsY4Bkw7D4M7tAZ8fJtgfaJSDVfDSVr74=;
        b=XIoUkx5ySGiVIDk5w3MUwu4Cps6FVYasvhOA3ciz63McgPwvphGxt4eOUVcvLFdhyE
         IJOGQduEhoBZdcQ5X2D/r8SLSV3etVC0qTuI72SlUGoCeL6Jfv0USwsj2r7Iwx5H6D6h
         t4oyNbygNYgYhqSYkOmic7Y7ZguvB7zD6PMLwKy9noI0aKE8aJlFpX8PjXT3zGEfXE04
         YuRd7FLaSu0Yf5yJ/2XR29hR0q6eBtL2EnqyJhna9VhJaHMr3EqemMROfiALFqR6ED0M
         XKoQhYkoUmu7SIUoWor7M4A3jv/JMza8nl2HwUCj9thB7SnEkjuSiwjVN3RndJkkrG9f
         OXow==
X-Forwarded-Encrypted: i=1; AJvYcCWbU0UnikDzH/B7lBjhfP2SPOdGeyJxPzwSWsC7ANvKaw7FYPLBTKCxLOBuUzCW58b2zwzWV7QrLMbX@vger.kernel.org
X-Gm-Message-State: AOJu0YwVvjydLsKHex3RpLhwTPSgdpb4y6CWCPoajMPVsLgQ/l1/ZbqB
	+H9WxjaluQnJN1oYB0DaTqqfna8Rg0v/NEbfd8VVG/BaXm+eG5UzZ33hunax2vUad+l8KtWFo01
	Pgh1e5btLKvYAuySWbWb+/WFVt7cpKNYWJVdN//wP57zMeuVKw1eWzj7ex8SC3PhY
X-Gm-Gg: ASbGncseRyBQHiIrep+7BBSYzodrs48Wot1k4ilTJ3f+SfNKlp0GK+e1ngqExNxFc8S
	NhwfBl7VYjXqvljr2yF8D21q9IuvHUjHPusI3aJq/nYJyiqKqzRvjwQOpB3Xp7guQ58szz8u8d7
	RtDHTKs9C/gPVZZ+39OqPHmFPH09ZzBaAMaU+LEveKubzOW5eF7wDbTwOTmT8B+OHBMLasTfy0A
	9pvNzw7PLZfunWQSIKFIjXspGiqoay7uMy0LTGxOmZBgXsKka5MgevwqR725m/ZMVv129mxWH2b
	qj9oiNTSdWSvzHOPBX9O4e8K+ZUNl94CrypoZj5zHBr0gFUg63BB/0G33HoEkiN/spjOYo+yNYv
	abJh/1si2nV671Tw=
X-Received: by 2002:a17:903:334c:b0:27d:6f49:feb8 with SMTP id d9443c01a7336-27ed49d2f57mr11599815ad.16.1758756546175;
        Wed, 24 Sep 2025 16:29:06 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFxjctrlKrupwMa7wpsVyrsKMoSCGPHZ4ZD641kuuwi66f9z3YNEOdmo3Cj0DuJRXVNnpmF+Q==
X-Received: by 2002:a17:903:334c:b0:27d:6f49:feb8 with SMTP id d9443c01a7336-27ed49d2f57mr11599475ad.16.1758756545741;
        Wed, 24 Sep 2025 16:29:05 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed66cdfafsm4292825ad.30.2025.09.24.16.29.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:29:05 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 16:29:00 -0700
Subject: [PATCH 1/2] dt-bindings: ufs: qcom: Document the Kaanapali UFS
 controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250924-knp-ufs-v1-1-42e0955a1f7c@oss.qualcomm.com>
References: <20250924-knp-ufs-v1-0-42e0955a1f7c@oss.qualcomm.com>
In-Reply-To: <20250924-knp-ufs-v1-0-42e0955a1f7c@oss.qualcomm.com>
To: Alim Akhtar <alim.akhtar@samsung.com>, Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-scsi@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com,
        Nitin Rawat <nitin.rawat@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758756543; l=1012;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=pm/rXrJyIy7XydqwV6FEZ9WPS3qV2+bd7t1bjxFXOAk=;
 b=JwWRgROgUEpSUj6UpssTKoS/1MyfEY7uBpbjqPNCyj68/xra0OlfcuEiDWPV6Of9aGUgY/84b
 +4p9VK5nutBArNoK4nJDG5akkvvsxan9LprulGdCmzNS4GrVxuFbmao
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-GUID: 4qeVmRyT08dwxBaGkocJkcOjfd0OPlJ6
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAxOCBTYWx0ZWRfX5Lac6ZAW9+g4
 gOW2dfXQp/Q4s/vokXRVdS3SDsJBmTSBNLoDPRD42+tpT2kUpaeOSNlaemdiiFv5rvolbSlCL4o
 ciRIJAUXkNHnYQ+uCAYiIHaF+WrGsUgYvQzKzpIymvZYMcbHEXpKGRSOkL2r+1z7Lwh6C7RlJjb
 Bck3Xn+a/Dh/h3UdnxAUZ3AbZicKWv5607EHXrpn2WigQ9mVDcagm9E3PhaEVPlN7TqzWNDC8HF
 +vHq7RJKK8CJxjGxN+YocfAQSyAnuaqMBpCkfo4MOalS9U/8tPzM5leC4wLx1aDNbPn9XWuMW4I
 L7j5s9loXtL+OiGrcpkK4TQHwooopmoP8w9OoaJFa/OcBeeBuizATh794xkq3zbIzUel1lj1t/p
 56mhmeqT
X-Proofpoint-ORIG-GUID: 4qeVmRyT08dwxBaGkocJkcOjfd0OPlJ6
X-Authority-Analysis: v=2.4 cv=Dp1W+H/+ c=1 sm=1 tr=0 ts=68d47ec3 cx=c_pps
 a=cmESyDAEBpBGqyK7t0alAg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=dkR0I6OD3irOzcp_LXMA:9
 a=QEXdDO2ut3YA:10 a=1OuFwYUASf3TG4hYMiVC:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 clxscore=1015 adultscore=0 bulkscore=0 impostorscore=0
 phishscore=0 spamscore=0 priorityscore=1501 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200018

From: Nitin Rawat <nitin.rawat@oss.qualcomm.com>

Document the UFS Controller on the Kaanapali Platform.

Signed-off-by: Nitin Rawat <nitin.rawat@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/ufs/qcom,sm8650-ufshc.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/ufs/qcom,sm8650-ufshc.yaml b/Documentation/devicetree/bindings/ufs/qcom,sm8650-ufshc.yaml
index aaa0bbb5bfe1..cea84ab2204f 100644
--- a/Documentation/devicetree/bindings/ufs/qcom,sm8650-ufshc.yaml
+++ b/Documentation/devicetree/bindings/ufs/qcom,sm8650-ufshc.yaml
@@ -15,6 +15,7 @@ select:
     compatible:
       contains:
         enum:
+          - qcom,kaanapali-ufshc
           - qcom,sm8650-ufshc
           - qcom,sm8750-ufshc
   required:
@@ -24,6 +25,7 @@ properties:
   compatible:
     items:
       - enum:
+          - qcom,kaanapali-ufshc
           - qcom,sm8650-ufshc
           - qcom,sm8750-ufshc
       - const: qcom,ufshc

-- 
2.25.1


