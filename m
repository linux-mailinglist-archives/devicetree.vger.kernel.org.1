Return-Path: <devicetree+bounces-220935-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6D923B9C867
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 01:23:23 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 6E700189FAFB
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 23:23:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 27D66288517;
	Wed, 24 Sep 2025 23:23:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="CvEFPhSK"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A713517B418
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:23:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758756195; cv=none; b=bTjVf5hjzHe14wcHy6WVZliMt3Cv2RR/zvqmG84NU6hYTSP9T2VLlGca1R1n9DHx/xxK+3F9Rmeb4DmC7c/EX/T+fPJgo3sRn1ihIyzIh06/q9bEJZqJr5debjOv87k1t41Ga/qxJv+kpxEgPPpiLTJJuUf2membl8sJpk1BB0E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758756195; c=relaxed/simple;
	bh=gFCePsoPbzM0W7ILRRpK1/MIcPC3NfbicImFa/pze/I=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=LjxY4OlqIxvfGaDqqKZF+AndjdnrcvEhwTJnY12oxV3/EKuLts5hojNprCTu1/v6m8UDfFTrttO732LJmXrE1OItIYgpeM/GAcv1q1TaQkO4SfBWJs0cRhjoNiAHz8lxcD0z46Ga217R1Er6f1QBHJM0WQ5KnofRJmwyyCQf2Lk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=CvEFPhSK; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58ODMWEg023756
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:23:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=t+4IWnHke+FbZXG2BMohmw
	IxnzVqYF1Hh5Q4vtTVF14=; b=CvEFPhSKrrUhj+GRR6fC+xUvy/vJMkmFKKmQeH
	GKtoHahug2qzX0EwPmHrtQk8pMt6KvdIYTgPbflkrO4Usc94OakuQ7pz6FpJ8ZD4
	yS23wRPdTxevF3Iy3fYziUmNHJBRdc7fCmaFaX3kkKmMbC3hlLviYBBlDvliO50a
	Ed5j274sF9FRmyTJJslGAAK7deWhjyn1D6MthELa0gsAJJTwMiz3FK/6w3WX3W+g
	kIAC+gCJuZtiPRetLCVmPDL6fwuDY5PYWlQ0j0WD5/cCqgxyI50U/x73PRYG4t4d
	B54dG5mZqxPqbOHsDY8FEhV9ylOnBAStd7PMLM6iG7v+sS2w==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49bwp0d24q-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:23:12 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-269a2b255aaso5534935ad.3
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 16:23:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758756191; x=1759360991;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=t+4IWnHke+FbZXG2BMohmwIxnzVqYF1Hh5Q4vtTVF14=;
        b=UKFZQ4FN0/Kfff3a/s8bBEh19Yi+/9nN6uNlUx2By0iNs5WSjtpuk4OdpAp3fDIXe6
         JITfPnTc24opSdYHGIpVR9D1sSBfHxNeyNSEf8JUWu5bzDIz5bkolSRfiMjrXJUhE9Zy
         6AfR4GgSWKqScQQce0z38kvhquqcIVY1WZwCzpHPOgZ58mWqKqxhVPCQnd7PSRcAvJ0z
         UGDYtss3QiV6r3faiyM6vKovRj9wwVcjnZoLlrKvR3uKOn8JT1hZd7x1JXomolG/xsw6
         lXIGfPb+3jEbZ21xaug6mSD1+6ewDOdrawFCmztNbCEFCheUcTII/917kxVSY2vwuIq7
         kY0A==
X-Forwarded-Encrypted: i=1; AJvYcCXo78GzXT9R5RIoEeuOJ6bjW1cjQL6GyqKCee/Qi9wy0WTNBk10fuJxiBH/98G6DrCpDgOH4e1hmDrf@vger.kernel.org
X-Gm-Message-State: AOJu0YyTFvhOZHMoJkcB86EWIwSY26Vi1R54hgp9Q4zNJmKxtZ0OJkVG
	ra2ezt3GFAhcc2eJPNgt9Qxlv/ySIfRb6u4F4ag1i7MAhpqom6Svx2h38YwXb9UFajQMGOedYQt
	lqTPQODUaMgEy9i0ysJBgixAu4e5ZNMXz0erQC9AczjyssBfILBYy03/KJf2fsyhTCEl0RkgnzG
	k=
X-Gm-Gg: ASbGncvPY+aimxnUSfJvvqz/mwuWokb2mteFYy/CotNCy0FHlAR1MG7IGXJYFPPCHGj
	wseRTidDtRu88yexi254NgaxeRyhn7KWkI5QTFDeIhXEtGxmI/YpEZxCNmFYsZodX0kejccC7tj
	f34fXgNrs+BuigDyC9TvytwzZfOavkQHWfNu0uuw7I9Qp4Tlk9mO/Bgn2u9TgUqsdgwvCfY5JVP
	S9xYxcWzFKpYeVWGywJZxgDXl5SWjP+tI+j+4kHkhDZD543GrWvAzsHqyTnA5fy3KriGb+AggKY
	gLpcBeq8SDTe0iDAgFWdUheMLY9gGb3ltmi3vaL+n/75W3lJ0xOpIXIyFETQ85EI0rev0iAqeJw
	gMq5bPAaTKR1Ll4s=
X-Received: by 2002:a17:903:b8f:b0:267:bd8d:1ca with SMTP id d9443c01a7336-27ed4a6e8dbmr17494315ad.43.1758756191151;
        Wed, 24 Sep 2025 16:23:11 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IGcViyIgc/11XVapybWYXt7+h+ARrhm5NS+/jC2pUC+Hh+STkUep9GhTZoOG6ot9Z7n+IN+bA==
X-Received: by 2002:a17:903:b8f:b0:267:bd8d:1ca with SMTP id d9443c01a7336-27ed4a6e8dbmr17493985ad.43.1758756190697;
        Wed, 24 Sep 2025 16:23:10 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-27ed68821aesm4048915ad.90.2025.09.24.16.23.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:23:10 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 16:23:06 -0700
Subject: [PATCH] dt-bindings: mailbox: qcom: Add CPUCP mailbox controller
 bindings for Kaanapali
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250924-knp-cpufreq-v1-1-1bda16702bb1@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAFl91GgC/x3MwQqDMAyA4VeRnBeodSLuVcYOsaYziF2XbCKI7
 26343f4/x2MVdjgVu2gvIrJKxXUlwrCROnJKGMxeOdb19cdziljyN+o/MZr17jomtD7lqAUWTn
 K9r/dH8UDGeOglML0eyxkH1Y4jhMG/iSYdgAAAA==
To: Sibi Sankar <quic_sibis@quicinc.com>,
        Jassi Brar <jassisinghbrar@gmail.com>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758756189; l=1188;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=gFCePsoPbzM0W7ILRRpK1/MIcPC3NfbicImFa/pze/I=;
 b=VZHuxitp5BD5mBW/K7gCz7zoYBjX1GT1qVkD7uakOrEFz5fRHBnj0g4pKPiDPAKTCfCfe0ITC
 lDAN8jWU+sjCPkQGlwK2Nyu2IEx2iA8oRnD+/8LhqNY54i8/ta/irJk
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Authority-Analysis: v=2.4 cv=KNxaDEFo c=1 sm=1 tr=0 ts=68d47d60 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=8jNUSCxD5SpwfXmMkmYA:9
 a=QEXdDO2ut3YA:10 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-GUID: IV9XYtfHHbw3GwSnB4SkJdwegGQ4RSeg
X-Proofpoint-ORIG-GUID: IV9XYtfHHbw3GwSnB4SkJdwegGQ4RSeg
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDEzOCBTYWx0ZWRfX5z8eKuQmyDZy
 zd9jzfW9oktgJTblx0MSE8JRLcOIspLxyPEZd4/toimACdEJFc9ys7Z/KcpFDuXOkXq6zuzBrX2
 s7XRyNEHjFTWb9MN0J6RClaG8XgOVsMULdfKMi3EyPnVNVoLeBegCQIzTQZ+aqEjQmpCVuIpim8
 ZhJDfPN0FeTEDhtd23Cy+dt2WJnwJkU+DIkBkaqsc2UexRr+rjRqIdstB5/UnooYXiwM7U0Tgbn
 E3xDsF1kQv1l5SbRyOHahEM5+JbwD8JSKe+IRWdS/X5nB2EWelBp9Zsc6Ec5Os7Pz7H+QcMhn0s
 WClX0B0EMDkG2ECNk5AJxJGfOaWundhXfiodUE/Cmkhw9ehq1V4w75Rmyggi6ybHveU1YQGaq9v
 oLCmUb+r
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 priorityscore=1501 clxscore=1015 phishscore=0 suspectscore=0
 adultscore=0 bulkscore=0 spamscore=0 malwarescore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509230138

Document CPUSS Control Processor (CPUCP) mailbox controller for Qualcomm
Kaanapali, which is compatible with X1E80100, use fallback to indicate
this.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/mailbox/qcom,cpucp-mbox.yaml | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/mailbox/qcom,cpucp-mbox.yaml b/Documentation/devicetree/bindings/mailbox/qcom,cpucp-mbox.yaml
index f7342d04beec..6f72f78e4b72 100644
--- a/Documentation/devicetree/bindings/mailbox/qcom,cpucp-mbox.yaml
+++ b/Documentation/devicetree/bindings/mailbox/qcom,cpucp-mbox.yaml
@@ -15,8 +15,13 @@ description:
 
 properties:
   compatible:
-    items:
-      - const: qcom,x1e80100-cpucp-mbox
+    oneOf:
+      - items:
+          - enum:
+              - qcom,kaanapali-cpucp-mbox
+          - const: qcom,x1e80100-cpucp-mbox
+      - enum:
+          - qcom,x1e80100-cpucp-mbox
 
   reg:
     items:

---
base-commit: ae2d20002576d2893ecaff25db3d7ef9190ac0b6
change-id: 20250917-knp-cpufreq-4730f03c925a

Best regards,
-- 
Jingyi Wang <jingyi.wang@oss.qualcomm.com>


