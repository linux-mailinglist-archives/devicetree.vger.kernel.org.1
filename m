Return-Path: <devicetree+bounces-245482-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 948A7CB1642
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 00:10:11 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 0735630DD63C
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 23:09:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC4DB301020;
	Tue,  9 Dec 2025 23:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="d8OTHAip";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="CgK5LDK4"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AA8EB2EBB9E
	for <devicetree@vger.kernel.org>; Tue,  9 Dec 2025 23:09:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765321794; cv=none; b=KxQWLvQ+/QySAZX4DiDLhUdS2zdRvivA4d/Y4apMi3WroPpN/CnYMQofv4FSf6kXew5xYs2BEI9giQ0WyYThDZwYU5ycWNnyJ+w/91E4WdxHiQ3WA4IvSz6aneG8OH68y5pXBk/mKOmBMtaWNFN97OsFpOaiwOvjBa5XMhgteuE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765321794; c=relaxed/simple;
	bh=qDZiN8qWhPOK1kIHAnER1P55PF/9q+q+Ql2QMO5Jsjc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=jnPnWywo9x/eYFsQ/EZT4ErJn6h/bATQGTeUriZxUjvX4lrmgwY2L0jCLFG4Tud9tzer0OgtpHVFv5MNxOn8bZwL2i+AURwLGJlY8BPXuaR2UmCzEyT3LEC1pZvV3UO+2V4iks/0j8IusETA8QZ8QLDIcWE+MMViYNMifISffVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=d8OTHAip; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=CgK5LDK4; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B9Mlpap672745
	for <devicetree@vger.kernel.org>; Tue, 9 Dec 2025 23:09:52 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Nun6PcARzgeWFRQT6VB65C6yjfRHuUsre9hbMWhcbgA=; b=d8OTHAipTdNEPapE
	rBI8BnU/DgwW4bUGjsrU9WemKU6jpVbQAR/PbOlm2GpuLJ53/vx9IBZ/P1JEeM/A
	9QRwU/nkXmpMyyOvOmKW1sxbaj+lt/qoKydO3u4xfvYojaFwQtRAMWNVU5Sr00k1
	h/E54xbWX+Uw+4/HsL+KX74dCLyDLMBft/ezabX6adjWUw6PyVmUJcKNj1Xvjmws
	7FUCV5nCJPKiW2U3HR3zB513rf4f1jsQERuS9QluJDKqNBO6br782MtfrKVaX57U
	2EbODzQg0OGTYrApCNDtLnQU7aVklCukytoWLPsc6TKj98nKIq3iMgrR7dD2pyEP
	v7YPKA==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4axqqn12tq-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 23:09:51 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-340bc4ef67fso6788789a91.3
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 15:09:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765321791; x=1765926591; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Nun6PcARzgeWFRQT6VB65C6yjfRHuUsre9hbMWhcbgA=;
        b=CgK5LDK4KD1hPGufZxNZYKc9g9vP6KwH01s+Aw+enfnfewWVui3IolEZ65J8gwOBO6
         Wi07QijJFtshovnOWr4gQRVEsObZZrZvM3CpylMCnlHnttSZpEeNzGrPfKJMLdd4e1+t
         O/xB1Kyvg0xLQQvBq/tjVkrpCnRQv2bWUzS9kECqErB+LsIbT9pOgWKFCrbc+jF1ZUt5
         iWxkW5vW+OceN26TAXigAjcNgxSOxB99nQJ2hIWKQGqt2AovIdF8B+6HS8AUg/cYGjCx
         B5r0vDYNUXvG1g8j5gsQORpFBsjiD1jBrN/jq00UQokP1QvKaw6rk28plTuai9t6wA28
         M7tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765321791; x=1765926591;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=Nun6PcARzgeWFRQT6VB65C6yjfRHuUsre9hbMWhcbgA=;
        b=J43XmhFlBjjUCexebZBCREcOtFjafNUQIImUwRW35gqFgCqSU+r0jCwJH4ho2y9bTj
         vsK1sUM4b2AkTLpapDJN0R10wUmRHZXsivMA2J4HzulFSGdkqU3Vt4WDTodmsDxxE32b
         1Hm0aRwHsiwPBSs/529SAQUXPShKB1/OrOV5yHAUSozQzWYWyXEBVfLaVvQw9j+C/eYH
         i2jBc/M4UIqHbTmaLRSDfUauz0I25vhr4l3nNrNJokEKWnhEIlSCN/6bPJhAtnnDIIrx
         4dK176NIf7d3NgZGzlLVPbNB0qUX/D/yO0oIqTZ3TWzHgwpX7ShWzk0i5+d8FbtmMEze
         a4ow==
X-Forwarded-Encrypted: i=1; AJvYcCUU28Io127JdkX3Uwgl3ADOlFkkrXf0vDZD7EwpD3W5IYQMOKKdZFwFUM8y+TpenytZ7CAeakOJNnDR@vger.kernel.org
X-Gm-Message-State: AOJu0YyRsov80Aw9PVYcqOE6AM30YMt9/kddWRdUE1wfuAN6xUE3UsM+
	giheJkIaCiSf2r/XodLnMHydiMl5t2vK/EM6cOJRj75HIMjlT39yTMnJuk1q3ZKE6L/suY9+PGN
	sdYKbtFUh4nRiTzsDBrQ7l38lL3KR0aWfeGteUCD+2JSmpX551BrG1mSIRJUu8I7i
X-Gm-Gg: ASbGncs3WOsQZ4GPbea4damkeHGJYqA2NN754Fl6S3yS7EuW294BSh9my94skKEmsy6
	QsAxD1ij1Ql7qOC6EsiEH/2FwTIAQWgbqg1ZJFEPdRWhnYrcAI0B7tSa2FkMCodyftJMc2SG9df
	ATDYLkN1DdNgCX1HQlZhAXtLpkRSJXIzt2Bt1x/yVAWFszSLflVR3LpPAMdv0sA8hoQPPSBQxMT
	5FAstxzZHQjfGgHpQMpAafiy/kArkQP/x0/Kp1LcgfKSv06fKZ48BlBjBhyEYya7PB19OJ6XkVo
	6Grr4nOdwdFBrlCZuXd0wXGgypWel546IEHSZyjA118gaS0UCkuMqGNqW/Qhyeg6eGWM0JVVYeN
	AO78yWY3arKK3wiVGzUGo5jX/wFq2kjybsyLtuU3Cox7W/eleySQcQIAbUdIw9Q==
X-Received: by 2002:a05:7022:e998:b0:11d:c22e:a131 with SMTP id a92af1059eb24-11f29669d4dmr307565c88.3.1765321791163;
        Tue, 09 Dec 2025 15:09:51 -0800 (PST)
X-Google-Smtp-Source: AGHT+IF7byTyjv4Ds7LevZmPLqhvm4PeiTpKdD5Ma4epPiMUe1vU0jkIRGeREHdvLRx8BdXVG/TeIA==
X-Received: by 2002:a05:7022:e998:b0:11d:c22e:a131 with SMTP id a92af1059eb24-11f29669d4dmr307530c88.3.1765321790659;
        Tue, 09 Dec 2025 15:09:50 -0800 (PST)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11f283d4811sm3338933c88.11.2025.12.09.15.09.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 15:09:50 -0800 (PST)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, abel.vesa@linaro.org, conor+dt@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, vkoul@kernel.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>
Subject: [PATCH v8 2/9] dt-bindings: phy: qcom,qmp-usb: Add Glymur USB UNI PHY compatible
Date: Tue,  9 Dec 2025 15:09:38 -0800
Message-Id: <20251209-linux-next-12825-v8-2-42133596bda0@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251209-linux-next-12825-v8-0-42133596bda0@oss.qualcomm.com>
References: <20251209-linux-next-12825-v8-0-42133596bda0@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: Ks8HiLDKQSlKueo2iJ7jz5vi09tOrEOB
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA5MDE4MSBTYWx0ZWRfX1JpdYna5hXP6
 fpJe0xA8KwWmrNE2L5xMmqe50uoHtB6LwfhStq27JSOixkup0Oko3korLbHwr3FB2Fb/AZfJVHc
 BTo3bdaXjJ4XfK0aZqwrK8V6chTi+FqtjnIhj700kXzH4evCPQeMdalFUNbihkso25mRxnh6Nkv
 n62Ulfh4x+KwFlQsy3yAg+7oAg8SHdS1SJAUigswiypNvHVNP7JfmjtnWZGgpw4YnjkPGhRWuW8
 vPyimKAnOaAO6+vUZrr+gdyWtN2m/6CpIZrzr9aJ14PpRB4J09iqdAHR1QAboROoXo+a8CrMsXU
 Ks2bE+HX+g+s5szkDt+33FYuSvE5iXhYQ6Uc5+rTpb7jONg0fFEs01KDmHaiM0+SyS3AbRF0Qyx
 2E7Ej3KRhP/XCtQKKkmLZDrYBUb3WQ==
X-Authority-Analysis: v=2.4 cv=A5Jh/qWG c=1 sm=1 tr=0 ts=6938ac3f cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=y38mCk_zKuY8i2H3vSwA:9
 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-GUID: Ks8HiLDKQSlKueo2iJ7jz5vi09tOrEOB
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-09_05,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 spamscore=0 suspectscore=0 bulkscore=0 phishscore=0
 adultscore=0 clxscore=1015 lowpriorityscore=0 priorityscore=1501
 malwarescore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2512090181

The Glymur USB subsystem contains a multiport controller, which utilizes
two QMP UNI PHYs.  Add the proper compatible string for the Glymur SoC, and
the required clkref clock name.

Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
 .../bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml   | 18 ++++++++++++++++++
 1 file changed, 18 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
index 863a1a446739..623c2f8c7d22 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb3-uni-phy.yaml
@@ -16,6 +16,7 @@ description:
 properties:
   compatible:
     enum:
+      - qcom,glymur-qmp-usb3-uni-phy
       - qcom,ipq5424-qmp-usb3-phy
       - qcom,ipq6018-qmp-usb3-phy
       - qcom,ipq8074-qmp-usb3-phy
@@ -61,6 +62,8 @@ properties:
 
   vdda-pll-supply: true
 
+  refgen-supply: true
+
   "#clock-cells":
     const: 0
 
@@ -113,6 +116,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-qmp-usb3-uni-phy
               - qcom,qcs8300-qmp-usb3-uni-phy
               - qcom,qdu1000-qmp-usb3-uni-phy
               - qcom,sa8775p-qmp-usb3-uni-phy
@@ -156,6 +160,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,glymur-qmp-usb3-uni-phy
               - qcom,sa8775p-qmp-usb3-uni-phy
               - qcom,sc8180x-qmp-usb3-uni-phy
               - qcom,sc8280xp-qmp-usb3-uni-phy
@@ -164,6 +169,19 @@ allOf:
       required:
         - power-domains
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,glymur-qmp-usb3-uni-phy
+    then:
+      required:
+        - refgen-supply
+    else:
+      properties:
+        refgen-supply: false
+
 additionalProperties: false
 
 examples:

-- 
2.34.1

