Return-Path: <devicetree+bounces-220941-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id DA393B9C8B2
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 01:25:56 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D99B718866F5
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 23:26:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E02B5296BB3;
	Wed, 24 Sep 2025 23:25:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="HpFtAJ5Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70D6225484D
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:25:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758756334; cv=none; b=KG1Nupu0tsWNqSs8Vp7U/ceLesNH435bTxZhiFSgFLmAxEK3/FGid/juaXfMLEtHoryGUmuDNkUc/hxzgdwkwR6InptVeodunYU9K6kjKiTF0yzy7dexTcDogemsOv7z8Q76pQqxfQmjcXnmuOL+0aatHifM0SOoZ2p929MCpT8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758756334; c=relaxed/simple;
	bh=grnL1nW0aV7OR935DYA9RYWYKNMAc5uMkWKRAdqqSkQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=IdcJbtJm2YYG9RGSJGzPUbR93ZrVKsIuehL7Li5rSrl3Qp8z950K8BI44Sccwz7ZnSqbZxuax7G8GjuZby+GuSXH533XUEDT++FEeU9myI1bT+ayqPEFfsAkyBdX1HLGenTJBtc0oy31t2AMWHohSkQM0fdUp0jDf1S0/E/Q/3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=HpFtAJ5Q; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OD5hop029706
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:25:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=V0ebCVkmE2Ghy+Rd1cTtrj
	/n09jBrOewJlCkIQnhGlI=; b=HpFtAJ5QDXOW1lrdXKuYyQH+237PfYAFnNF4Jt
	5hL+w2lyrtSEdMWprFDAbNgIT4KN1RQ42I1m5rgZLTS6aaHmbzSTktZRNGGYkP38
	jz9dW2kv0Lc2Z2QZPnGoFVouaweAcQLUigl9By/MH6WJf6cy55126FUu1aYSLOgp
	OxBgMMBdq6ORFkeDGqt4d7affJN3gu01vhRFlbRdXfkXVKD9hDMiWbCc9iQ5tDMW
	cNxGc13L1B3isH9FoNNgSBS0QK2WajFgZ02TgoshiR+XWRqJPpNwmagMvWchwgZX
	EIEtSFC2TRAqx62TxVeHKs8l98nhEMAiq5PZswl5Jbqieb1Q==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 499n1fnw9x-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:25:32 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2699ebc0319so3079095ad.3
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 16:25:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758756332; x=1759361132;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=V0ebCVkmE2Ghy+Rd1cTtrj/n09jBrOewJlCkIQnhGlI=;
        b=KjFNLGRsQ7lNN3u+5m5BydM3+H2t8q7Hmma8a/nEcIUyqCyse90WpdOmuI/YVTIznB
         0ptoH5VvkeGK8c9lV/JCeMD7qnx0H53yw8SnQ/C7KDcCLV4tVWeq3MF1Ax6ZsaqJRWaZ
         FEKMt5o/kas3KVqZdcUZoTI1MwV7hfEMOC8qk313EAP+7grSf0c9mwSB1DxZG3kD+Lbs
         rMeltc5TfVvT+LkqF9yzurEktoi6mrvS7cQoCZsDcgRL2BKMNo+woOw2sIJXCLw1nXfr
         1S9zxEwlRFUfZ5XLS9zaKkZ3UnXmdGYU20Gk0fYCS9JHesWXCb9TppW5BCDEeJzZ5ks3
         7jVA==
X-Forwarded-Encrypted: i=1; AJvYcCVzX30NMSfZlzpIHnmktx1Qeg+TNNmFJLRLSD9VMoVIaIsfJUa+9EOoaqdoxd6YqbNUAzr1/t+THGon@vger.kernel.org
X-Gm-Message-State: AOJu0Yxqh2ua7s85XycJvKZZchWQFNIo6jVWqaZbCW5oMHUo97TFzVf/
	8M8k+ErCwFVX7PY0iNjY6gPypLDmncEGPjWTejFbekwa741xueBbJFGigIuoMoTqZF0VepCWui7
	jkeZJFS+X++U8fVDH3O35CasglsoZHrvMOorZ45ep4rethnQi4t5HxZWb/IFNiy8k
X-Gm-Gg: ASbGnctzDSp8i3u4snGrGhx8fr11BQFP2neiPTJ8Yl4bqkIBxY6U2Ae7IJQgCxDKpc8
	nOZrvrHb7e+8zwfvsGdHOQQrcFLkHGZ9B7gJ9cnVQPeJivu23mnRyLnqApaU0k4U7FCzAjySiMO
	d0W6uVBOdpejQ0z2U1IpAO8iGVX6frK7zjLX5P49Wy17IZkVEtjl8VCZLi4kGQjUwHpnoTKXY7b
	HMfMVXi47bHtETubwRI/WLCQ2TlNb+3zAGuf6b6avZ72/Y3MRVik2dS+BlTqmO6rCRCp/DuqfXN
	0FC2VsBYfX++45NlFfmnQu6+xzkXuNzkUT923ndbi1gR0xrCdy+8g3eYCYK9OOjwFXAXjDtFAu6
	qRFeBIoXcNYmQTEk=
X-Received: by 2002:a17:902:ecca:b0:269:8d16:42d1 with SMTP id d9443c01a7336-27ed4aac32cmr11420225ad.50.1758756332055;
        Wed, 24 Sep 2025 16:25:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IHJ6J7fDY5Pic/eRJccWKxjHx2Ra6IqcBRO+w4mduPo4gLOtd4HvrD/wBGFrTmoXvb2WGJbmA==
X-Received: by 2002:a17:902:ecca:b0:269:8d16:42d1 with SMTP id d9443c01a7336-27ed4aac32cmr11419975ad.50.1758756331606;
        Wed, 24 Sep 2025 16:25:31 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed66d2fecsm4313305ad.12.2025.09.24.16.25.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:25:31 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 16:25:27 -0700
Subject: [PATCH] dt-bindings: interconnect: qcom-bwmon: Document Kaanapali
 BWMONs
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250924-knp-bwmon-v1-1-56a9cdda7d72@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAOZ91GgC/x3M0QqCUAzG8VeRXTc4Ghn1KtHFznHpCKdsooH47
 q0ufx8f/x2cTdjhXu1gvIrLpIH6VEEZSHtG6cLQpOaSbvUV3zpj3sZJsTtzrKlQmxPEfzZ+yef
 fejzDmZwxG2kZfoWRfGGD4/gCOUmNxHQAAAA=
To: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Georgi Djakov <djakov@kernel.org>, Rob Herring <robh@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        Amir Vajid <amir.vajid@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758756330; l=1131;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=NasTWIQxtuAN2SnlNbGqk0YKf8tGhQVZDl3ik55ZSSk=;
 b=Zpga3xyX8vht81SRVnZs0Lmfn6J45kM1HVjHjv85pOrRQi4r2F/rkDWH5g96qCSWaekSmoDbq
 FbbhMr0lv6ZBGy8dvjvJAkPjurOa+k4baBH6aUR7UOMY9/D+FQtbmkb
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-ORIG-GUID: xKgjwVOO6r4tgDdXz3jt8W54otyLG_Oj
X-Proofpoint-GUID: xKgjwVOO6r4tgDdXz3jt8W54otyLG_Oj
X-Authority-Analysis: v=2.4 cv=No/Rc9dJ c=1 sm=1 tr=0 ts=68d47dec cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=hqsPwQ9-5byHO2hE57MA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIwMDAzNyBTYWx0ZWRfX9yTIRXLEkRQY
 nhQPR5Z5UYSccZvJLzp3RJ6lFDbvyu7hZf2JrZjjtc88ZnES63ld24fgeeLir811IGShJTgUvVf
 174N3I6EDDdB0CAg4yvQXBkhzaLHtdKN2xu2rsRXuVklFADhBgQGkUzXMUd5I6Daj2WRdlIojIG
 Vadyvvp4mEkxvG5xBoeIeCS1G9t9z4yWh3TCXYBr77OCb9UTKiJxHEnha79tgLfmdp7F1wq1EjE
 mq4OXUDt7Li7FySq8sePiWWI/opZs8lLcKy6KpVkbNFAIy1SDOyg0yXDndlvMDOemADwcseRhss
 WjGgoiccblS0P6wP4hyLhHzw4f9oeeGPXkr9Cpgvx6CbRWd/pWF4UpnOxBQ8dgRNUBRM90O7PcN
 YRO81d2t
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 spamscore=0 suspectscore=0 adultscore=0 malwarescore=0
 phishscore=0 bulkscore=0 priorityscore=1501 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509200037

From: Amir Vajid <amir.vajid@oss.qualcomm.com>

Document the Kaanapali BWMONs, which have one instance per
cluster of BWMONv4.

Signed-off-by: Amir Vajid <amir.vajid@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/interconnect/qcom,msm8998-bwmon.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/interconnect/qcom,msm8998-bwmon.yaml b/Documentation/devicetree/bindings/interconnect/qcom,msm8998-bwmon.yaml
index 256de140c03d..0d1a268db921 100644
--- a/Documentation/devicetree/bindings/interconnect/qcom,msm8998-bwmon.yaml
+++ b/Documentation/devicetree/bindings/interconnect/qcom,msm8998-bwmon.yaml
@@ -25,6 +25,7 @@ properties:
       - const: qcom,msm8998-bwmon       # BWMON v4
       - items:
           - enum:
+              - qcom,kaanapali-cpu-bwmon
               - qcom,qcm2290-cpu-bwmon
               - qcom,qcs615-cpu-bwmon
               - qcom,qcs8300-cpu-bwmon

---
base-commit: ae2d20002576d2893ecaff25db3d7ef9190ac0b6
change-id: 20250917-knp-bwmon-d3e2020ca6b0

Best regards,
-- 
Jingyi Wang <jingyi.wang@oss.qualcomm.com>


