Return-Path: <devicetree+bounces-248417-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E4DDCD289F
	for <lists+devicetree@lfdr.de>; Sat, 20 Dec 2025 07:36:07 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 3068530111A3
	for <lists+devicetree@lfdr.de>; Sat, 20 Dec 2025 06:36:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBACD29AAF3;
	Sat, 20 Dec 2025 06:36:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="D3k9VYsH";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="U9atG+os"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5065A283FDF
	for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 06:36:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766212562; cv=none; b=afhacEwCKkDX1HisgIZYe1uIdY6rM52rKppnVV5ez9ppGeiJN14mvRgIbg5ShTZzIO92T87b65IudlzBKcYR9ALSPYvih9iXmG5mn4uOP1/qiBXm+7CxtllT2dShYajwpVP6bmLBdnBtk4xdSDY7N4zKrbT54cmGNid0uMHXsME=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766212562; c=relaxed/simple;
	bh=67ymz0uRLQ8a2OT6HWVGovN4SzX+mkpGMz6xQOlw8nM=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=C9unEdWvOzJ5Z2D6pQxwfUY92ma8QPqzOJZ/4j4p0wVhLxA6F1ePY+FcqF/M5IlaWekyDB7fvVmwYhtK/tuZS9PxRG45V1Ltg5XOhuwzTAgFzprl1yHtEj+LNG1ASraEmlrGs6gfCneniO1Og3On2ybYPVjPP+18w+bmAb1TmnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=D3k9VYsH; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=U9atG+os; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279868.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BK4PhdG2992761
	for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 06:36:00 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=XCo9ZKvzhnx
	n8uP/rP/f7ZO5TI60FzE+bvF7TjfCOwc=; b=D3k9VYsHxcVgnfsU3yG7qqDVKGG
	8xbR4Ym4J/LGld6ynwWzCj++Ra+FLYVnDdVMnSHf8JC9qjuNNhjkfDx3sFkUJeSh
	Ulpk2GDdduMoERfCfDrPbjP96Qf2GvqTgnd1iB+fvbuqMFYIIuU++MDhg0bYxBbg
	ldBptek0oAP12pcWuHKJgxFITlsvRTw4S+e+njr5i0wZbg+XdEgXJXeCHMsIVTmn
	AjXNJjVvz6JNY9dj9d58ozLOBjgBugE4MFXgblnXTs6+QE5NbM3e24rBhXi0p/ZA
	tl3KS7sLH+oKKJ45Uu2e8yk+B83nKxoC5mS9XHyxbjBdDnpxdwEpoZ+KBcg==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b5mry05s1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Sat, 20 Dec 2025 06:36:00 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-34c704d5d15so4846173a91.1
        for <devicetree@vger.kernel.org>; Fri, 19 Dec 2025 22:35:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766212559; x=1766817359; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XCo9ZKvzhnxn8uP/rP/f7ZO5TI60FzE+bvF7TjfCOwc=;
        b=U9atG+os5svpqAoNJsfinjFMzplFIDv13mnLbpuPo/KWteK+pboGUboFVNFkB20OkV
         +T/vM9FPFMd1xGnLtFdZCfBuK4XmIS7+joOMDwLFH9dzAI6PyIo9+ztiOCY+CoLtolOV
         pI+i+lnpvMNdxtRFQVX8pytdwGMEU8dW1EpvAvTwGrSdDSx+zSekFjcPPmKptYrNxaFb
         whm45eIF4/mqNe5pbbIOuaptpukQ/dxZY8toPdKgz14VKCru/4PbqoDfHMyEMFV59gtq
         n/NG504hFIQqvr/YJATHVAycdl36HdypuHF7srGUPYdnutg+KNunwUcA2/qWUMFrWMrs
         735A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766212559; x=1766817359;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=XCo9ZKvzhnxn8uP/rP/f7ZO5TI60FzE+bvF7TjfCOwc=;
        b=MsBHj79jAQjXV/MH3kMSXU0iQDUelP9CZhaA4sa1a/Du0HyZgPlryTGaVKVEZ2Daee
         ILbMEuwnZSC3CyONir3R27IQ30qgu2qvjBa/h7VRK0q7twMm1tsREsBcHAnN6A7bvGlH
         GYWB2an+i6itJDiXnuBDBlbxzh44Xkfrr1cF6lhTZt5aLjwFM4Kkt6OMqC+vj+ZhLQ+w
         Gxbl0ctNHZh59aDBzPGrDIvBDWZ46Cj9GY7Wd/Hx+B9RRrFzvqkSH15PmBws8iyVC1+Q
         +hr7wlStT3PT6GoxCLf1BFjE6vMu8VSwXgL9tEn/aFwpzopcM1PBdNsnwfn/u8LnMUAO
         iulg==
X-Forwarded-Encrypted: i=1; AJvYcCXXXadCNAFnEDyY7C2w5Hie5HqtWOqUiWbYQSsl+0TD5KomCfum964jUfn+U45F83umoZRcyefCon8j@vger.kernel.org
X-Gm-Message-State: AOJu0YzFgLHDa9C7/O1qkaNRtoa1L58ihH9Ltvb6a9G13F+JiZYhiyrg
	juw034bedXNst2S2A7X1/b6vxXEfuaDuxkA/NslbsSwGFU8rFTyg1pXGDb3+/nqrC2/UJr1e82o
	d3zlKMvdgIIpy7pEdRkmsDkVm+mNEu6wI7bOZL0ab3VdFHlmUa3wvCDKr12b/Hmeb
X-Gm-Gg: AY/fxX6CCm6u3Efv2iX3JzEWiv7xUvxOTyTAv9rm3MiOHr9IyZZrbFqI+j9u+n0rGOU
	2wEX1o/mEfchZwDPuBrdsJTIk0nQJdsRfM4PUhfZxV3PF4NzuVE8tNlESu0ABlPVaSKbGtIDVgw
	Lft4rV5cWx2snhUQFTJb+12sbuWnO2gxZ5ge/EusD74MqiwaDQP0FJcsQF8cjkeVFcfEIveBmCb
	QBZk/fSn1znbX56kj/OA+7T6j5LTEVHVAZNGd0TWmZVV/+usLvbcNI8DE1b3/dTB/XQo7xFL/aT
	zU2kexD4aeflvi6TZ383ikeOkWnUlDKDcvmADEIkdWgnUwqQazvSB47FrLuyXYJ6CPnVJHV5MGL
	jK7AdO0fu1ZPhN0Y3SMXM44kXdOIoE0cJmX5q1y4dEgk=
X-Received: by 2002:a17:90b:548c:b0:343:60ab:ca8e with SMTP id 98e67ed59e1d1-34e921bec08mr5128301a91.17.1766212559055;
        Fri, 19 Dec 2025 22:35:59 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFAz0kDlHXa6b2CJrtkRwIoFM+vRVXnlz5QSmNbZCl+uxK97syHgH+dC6pp+LY93l/ciCy2Pw==
X-Received: by 2002:a17:90b:548c:b0:343:60ab:ca8e with SMTP id 98e67ed59e1d1-34e921bec08mr5128285a91.17.1766212558566;
        Fri, 19 Dec 2025 22:35:58 -0800 (PST)
Received: from hu-swatagar-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e7723b3a8sm2847143a91.3.2025.12.19.22.35.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Dec 2025 22:35:58 -0800 (PST)
From: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Icenowy Zheng <uwu@icenowy.me>,
        Matthias Kaehlcke <mka@chromium.org>,
        =?UTF-8?q?J=20=2E=20Neusch=C3=A4fer?= <j.ne@posteo.net>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>,
        Jens Glathe <jens.glathe@oldschoolsolutions.biz>,
        Mike Looijmans <mike.looijmans@topic.nl>,
        Catalin Popescu <catalin.popescu@leica-geosystems.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Pin-yen Lin <treapking@chromium.org>
Cc: linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        Swati Agarwal <swati.agarwal@oss.qualcomm.com>
Subject: [PATCH v3 1/4] dt-bindings: usb: Add binding for Genesys Logic GL3590 hub
Date: Sat, 20 Dec 2025 12:05:34 +0530
Message-Id: <20251220063537.3639535-2-swati.agarwal@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251220063537.3639535-1-swati.agarwal@oss.qualcomm.com>
References: <20251220063537.3639535-1-swati.agarwal@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=cbbfb3DM c=1 sm=1 tr=0 ts=694643d0 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=hRDnhHrYu6Pt9KVU6J8A:9 a=mQ_c8vxmzFEMiUWkPHU9:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIwMDA1MCBTYWx0ZWRfX2IpijvRUzh8e
 pK7c5kOA23dKOWsNFp0jsg+tADtRQ9m3iRFnvzWm6eMn4rhMuy8kwi1soKLQ2ol9P5swO7u4tOJ
 m/kThX2rPNbjIeksHVXRrjQu9sff6MDPgeUUG7AuTXSTHBID2DqK44m0Bi0/u4jk0R5HURI0eVM
 lx8h96xhWJkXlrMCN2WxU0VGN6r4tXMH+hYzXIuoJI5AaYnx9h47WMv8mvp6kp5h0WiwL0WdxOi
 f60gyRPJbtrxfXvjnSIQqZqEegHQ5dyfgnU5sN2MXO+G9SO+L3CqpVpn5QvAS+CQAjRu74xay8V
 uhsRRo9b+KN1jTEC2t15FwzZHdm4g6YNDLmXt4dI8IKCyLDeZSebcfyifMI5k+N0sxVDRZDCSpd
 bYdAx5IeZ8xamUivLFAK/QHKZUapUpUM4/8Wc5gtbemhLAuvfxma2PkfBNfXZv5vC6KIHwzpyhZ
 CrON81uDfZD3koDA7/A==
X-Proofpoint-GUID: rEWDv5ZpWrOMiLzkRiEjctfd5nM73rfL
X-Proofpoint-ORIG-GUID: rEWDv5ZpWrOMiLzkRiEjctfd5nM73rfL
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-20_01,2025-12-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 clxscore=1015 phishscore=0 malwarescore=0 adultscore=0
 lowpriorityscore=0 impostorscore=0 bulkscore=0 suspectscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512200050

Add the binding for the USB3.2 Genesys Logic GL3590 hub.

Signed-off-by: Swati Agarwal <swati.agarwal@oss.qualcomm.com>
---
 .../devicetree/bindings/usb/genesys,gl850g.yaml      | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/genesys,gl850g.yaml b/Documentation/devicetree/bindings/usb/genesys,gl850g.yaml
index 9a94b2a74a1e..a184e1074c7c 100644
--- a/Documentation/devicetree/bindings/usb/genesys,gl850g.yaml
+++ b/Documentation/devicetree/bindings/usb/genesys,gl850g.yaml
@@ -15,6 +15,7 @@ properties:
       - usb5e3,608
       - usb5e3,610
       - usb5e3,620
+      - usb5e3,625
       - usb5e3,626
 
   reg: true
@@ -69,6 +70,17 @@ allOf:
         peer-hub: true
         vdd-supply: true
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - usb5e3,625
+    then:
+      properties:
+        peer-hub: true
+        vdd-supply: false
+
 unevaluatedProperties: false
 
 examples:
-- 
2.34.1


