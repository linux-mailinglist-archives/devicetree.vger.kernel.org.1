Return-Path: <devicetree+bounces-229659-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 65FDBBFA8DC
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 09:29:53 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 54F424F39AD
	for <lists+devicetree@lfdr.de>; Wed, 22 Oct 2025 07:29:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 795D32FB610;
	Wed, 22 Oct 2025 07:29:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nbmhU2yt"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E4BF2FABF8
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 07:29:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761118146; cv=none; b=hIDlq9gcK9W5dpzWcyKAuy8MC9v+9IG4Ts0WuBnCBWvXQqa8QB4ieKHrF8Nx4Y+SQhAsSblQ5yrdl3uX30Ru4sv5WY6/b/CwG5Ecjjma2+feyW+9q5mMDEyAA80DkgRyAbYs570AwELscDg4v1jRK0opnSSYCKn9vcxZ27tAfaw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761118146; c=relaxed/simple;
	bh=GvkHRIdYVLe77R0ZY9NDb/kKn2TWXxRRo7L7n8igm6Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=rJMSVg3VGtSuwShqOtZXnDSSG2xA0B+QclQJLb1aqQRLmdbNXtz56p5IyLeOKXc/gEl3sTF5L3gxZBUFO5y1U6sGUIYmOERtiaPpzzFLVRzOdFjZQuHPzjTLPug0fqkdZSIBwJ94ypwzEKbbvg5qeCWXBljq4psSTuAUwyDSqxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nbmhU2yt; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 59M366dC031133
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 07:29:03 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8pAfJ4YrVrXXN0p5roas6qTfq3KICUipgTwtkvr89nQ=; b=nbmhU2yt5d7Gdy2J
	w/CfvZTdagQddRBtD0pS/j/BljwZuqTZYvCqhJ8g22FZu0px1QMKNF6HO0nX7nhY
	NA3bKWI80yjIi4fB2zpZqpeiNXjxloHaoc0YfcRC0lzRWh0qGiEzYOn7GhoB06+U
	z3Hw/LMuosMSVCHbry1IdWT4bNzogkya50+CtjCYqHtxD9OC8WX5qDn+VPGduslF
	VYVFzTrH2yy5ouZhSeJsLKmynvuZPVp6U6i5jEYde+i83YtVns746Zc2XB1OBqhe
	G6b8P4hfXXup7IkU2F3oBy9umyAQ7oua1kno+7koH9plkSGNv/pMd6PorsaWNhcO
	0YCl7w==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49v42kbgy5-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 07:29:03 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-33428befbbaso7488036a91.0
        for <devicetree@vger.kernel.org>; Wed, 22 Oct 2025 00:29:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761118143; x=1761722943;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8pAfJ4YrVrXXN0p5roas6qTfq3KICUipgTwtkvr89nQ=;
        b=Qo5LAJxmryBibmCtQMAWGXaryqGx9EkDfUy5TCH3LOnm9JEujnAB2xuJYl3xHzpFtT
         AEmbtehQZUvJrO4eb61cxvan+VNtBD6o/I4l5sr51n+GViAKM4+Cu+7RxgxkFTrMatiB
         UMsgEQrdfSNsWvCeQLM8oXgv2ABQOJNREmAox871XlozXi0wnapelXCabVMizHjrChxi
         McT6XF3tmgZjxHudLwRa0EopTEPuiOkXSLzssD4ju1/vpMcl8+7X67uxcsfn85a1/K7w
         44vmxeU+1Q+pJhdh7YPIoZVnnfFft4byOaQ1PwSjkYv9iL0W64EcpHu80gBTDw9CdmZE
         UleA==
X-Forwarded-Encrypted: i=1; AJvYcCWnsyAvvsma3ZL+Zfz1U2FdR9DvCahZyoXtWzX92XVEDMsT9vtuTGLSGbeL/LHS6+CDWK34Wa8bIP7N@vger.kernel.org
X-Gm-Message-State: AOJu0YyJHT2/kWagz+WfiC5LfcmLg7e/+/GFRZxmtEUC8Luz3vgr0zug
	DPDTT4r39PYfLWE0qnljT4T/87mxVLV6XU1z6GCtTc6u0PivqNZO4SOofO1nZmEpeR8Km8ik2DR
	GYu1gIa6yjNdGuPBLJJexyGaMkYIBlCc5U5ZcrsnYyEEfsgCOnkXxRDcXXpyn8Yrs
X-Gm-Gg: ASbGncuyRypNIU4PDiKI0GnfS7qc0WKhP/4+AkjSzN22l/E4psBsErOOLwWiOk6iDY1
	bsyqDmuyyiS/nOdH6GxTFBCGJRssCAKyK938JbovRvEI1FircfoJqnL8GjywHcH0nLyDtMvMSs8
	n1+4ISawyNOo9lnrx5ntRbOnGZhV5W55cAnrlatAgLen9+uQi1tF7G6cErgnjXIHFY4VIU8cnLg
	CwNvYTeUD2OTcg6ud8Fd+IfGjYu3JIO/NsIEJdhi2z1l5ZSSFq8eVNyElzSWjjpVLsbFPJnk1vk
	vHs8DIV/idK11UvZxbWbcFRXtr5Mh7gGOz8hjwwf71xM0IJVzRRBQpCRkPVcGaAYLaIExpTtyCQ
	GZmfgIiFSUz2yUUZT7VyEpJYit6hIBx0tv4i7RhB77FmXI959GQ==
X-Received: by 2002:a17:90b:1d88:b0:32b:df0e:9283 with SMTP id 98e67ed59e1d1-33bcf90e86cmr26048942a91.34.1761118142594;
        Wed, 22 Oct 2025 00:29:02 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEIMO6d7zAOPgfCMZwZKqFbhQZ1V3768KfUIrEE5Dg9T9Yv30w2Pj+u0Fx38etiZsyYsQlxOA==
X-Received: by 2002:a17:90b:1d88:b0:32b:df0e:9283 with SMTP id 98e67ed59e1d1-33bcf90e86cmr26048920a91.34.1761118142167;
        Wed, 22 Oct 2025 00:29:02 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-33dff4498d0sm1687342a91.11.2025.10.22.00.29.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Oct 2025 00:29:01 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 22 Oct 2025 00:28:44 -0700
Subject: [PATCH v2 4/4] dt-bindings: soc: qcom,aoss-qmp: Document the
 Glymur AOSS side channel
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251022-knp-soc-binding-v2-4-3cd3f390f3e2@oss.qualcomm.com>
References: <20251022-knp-soc-binding-v2-0-3cd3f390f3e2@oss.qualcomm.com>
In-Reply-To: <20251022-knp-soc-binding-v2-0-3cd3f390f3e2@oss.qualcomm.com>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Robert Marko <robimarko@gmail.com>,
        Das Srinagesh <quic_gurus@quicinc.com>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1761118135; l=848;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=QlU4swPOtMyVnMly1EPGcYn4f1CqtJk6gC1HvBg/Spg=;
 b=uDXfTnComZRzOmtSJSvtsrOS4zxYWzyuufJG9+frDHW/icoJKt1XneC/Cqsa15kiaVvUByhug
 VX4tFJqzxkwBMvCqvI0vbCOvkn7jsa7d/icywcNoEO2CpO4deDp1sGz
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-GUID: QR5ENJ9KXuQEv13Jrt9rNA8xAIeJKmP4
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMDE4MDAzMSBTYWx0ZWRfX8oUeOlY76D7z
 QHwm/iHHbWCalO3VrEeh+VcC9kKq61aAgPBOKNE/e0+0zZYNDiWb4oyJLTS/DMmw3cPmLAlXQ36
 QVTXATjvks9x2eW7E9O/uVYLl49Xmbqy7YiWsijvC5ubGhFDsBsvNHPa609CZLBUAdsKa6deKWG
 SK8xFmwTFOH4XW7qkgzT1CJzcVKtQgORuHQ1GdpgPIWnV5VIsZuoBdYQZxLqJ+aDtlpvaUsfaQw
 df4KRkcEswpyoWm/M+pDCTdlBAGNpXYhRhqsvt7vbJCSIR9Pcz2dKUVJVKawxBk9F96T1tBflF6
 pL1ZJaivEye2IaxvnzB+dU/BMtLq7Of3qqQPWXupRL4zgcPI5UWguqy7qT5PVL/8xbkce5b78jX
 KTiIDv+OnYdI5um0z75RdLL+WwEpUQ==
X-Authority-Analysis: v=2.4 cv=QYNrf8bv c=1 sm=1 tr=0 ts=68f887bf cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=x6icFKpwvdMA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=3zIzYcw04eZ5cjS3wW4A:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-ORIG-GUID: QR5ENJ9KXuQEv13Jrt9rNA8xAIeJKmP4
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-10-22_02,2025-10-13_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 phishscore=0 malwarescore=0 clxscore=1015 impostorscore=0
 spamscore=0 bulkscore=0 suspectscore=0 adultscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2510020000 definitions=main-2510180031

From: Sibi Sankar <sibi.sankar@oss.qualcomm.com>

Document the Always-on Subsystem side channel on the Glymur SoC.

Signed-off-by: Sibi Sankar <sibi.sankar@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/soc/qcom/qcom,aoss-qmp.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,aoss-qmp.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,aoss-qmp.yaml
index 57aa819939f0..c5c1bac2db01 100644
--- a/Documentation/devicetree/bindings/soc/qcom/qcom,aoss-qmp.yaml
+++ b/Documentation/devicetree/bindings/soc/qcom/qcom,aoss-qmp.yaml
@@ -25,6 +25,7 @@ properties:
   compatible:
     items:
       - enum:
+          - qcom,glymur-aoss-qmp
           - qcom,kaanapali-aoss-qmp
           - qcom,milos-aoss-qmp
           - qcom,qcs615-aoss-qmp

-- 
2.25.1


