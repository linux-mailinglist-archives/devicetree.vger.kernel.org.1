Return-Path: <devicetree+bounces-277652-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 2CK3JeTAu2n1ngIAu9opvQ
	(envelope-from <devicetree+bounces-277652-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 10:24:52 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 177F42C894F
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 10:24:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 54981303C589
	for <lists+devicetree@lfdr.de>; Thu, 19 Mar 2026 09:24:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 428EE3B8920;
	Thu, 19 Mar 2026 09:24:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nDwTTRQD";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="fGPAR/EU"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAD583B530D
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 09:24:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773912251; cv=none; b=U6DdnujVk94nvnYVwqTpK1YhAkdZyZEYu3gKwuxqh6II022Ntj+hdbrzAcLkYHwG96E86MZawXgEd+/S7SsnH5FAR59U3t3VUlaWjTxP90hC5fS9qoEwdd6oyRK/ruxYDERYWqyRdRZvZLeMTo/7V8wVmkrBAiw51oOpN5s9dBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773912251; c=relaxed/simple;
	bh=r8Tgvpa2d+Xn1Psyxnelj9bMdjEJROkkSXYVPZse0P4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ZmkXyvza0lKNfAOPxmkqDW55ysPD1ugFYeW74qVrdiHDMdPh/g5YKvO0CG4NwAYq/TaAtMvkBMANx/nC2XDOacKE5wdcFWbvx8tJZR13t35qwuRyFrqzb/O2upRgekLwhy36oouCP8ONYXZRSoQxWNaBn2Avc23Itr3csbSy5qc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nDwTTRQD; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=fGPAR/EU; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279862.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 62J73wLr3771122
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 09:24:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yeZ2p6pnbvPRS5fxuEOq9YZdbLaM0p/9+jaxW+EiW3c=; b=nDwTTRQDMfsYpwsG
	hW6isvuWGDkEQfJzxqsIczWvsn5dbJ1sSsvU/IjRiiWf3QrbEX+GPmd3Veq5um+G
	D5RsQLVzjMLnaUNNBKrHFwfcEHgLKNnAzACUbdAQ/mJ/Hg+WQk/N2wYjmJfK4sPk
	+GqqJJZJk0NWnRdSopbnwwVZmrozCErDsCE9Kc/mGhOiZ4It9xhFIZVIO0DJDTOx
	Xh+KUzCvdQ0ETMZOn2l+g90GCHwlC8OP8vItDxLyyR5aWXyJSZIRmHEOsHQLuTCY
	I0/bQnu1k6LdGQpNf1YQbCkotsjXa+F5QBv38/vaF8B63Xh8u9I/8/YUM2rx+pQC
	NM2WfQ==
Received: from mail-pl1-f200.google.com (mail-pl1-f200.google.com [209.85.214.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4d083r96du-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 09:24:07 +0000 (GMT)
Received: by mail-pl1-f200.google.com with SMTP id d9443c01a7336-2b04911610fso9391415ad.3
        for <devicetree@vger.kernel.org>; Thu, 19 Mar 2026 02:24:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1773912247; x=1774517047; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yeZ2p6pnbvPRS5fxuEOq9YZdbLaM0p/9+jaxW+EiW3c=;
        b=fGPAR/EUKec9pGeQ6AGrv4K3T97heIp+SzKNiX99sjWe8uDnOtoegJnLhq0o5zPXlE
         bjviEtSuwAsmBRh8CaCQHWbJiC5hNvy1MHuZUyymSjp9+/ls2VJrL3D6Ohb2dl3KPNpe
         R9u/M7SNLSz0lJ/vc8t18tmbzM1VJDGg+eDUgQZUj2ElXVLGQiFfbCVqEhUKnHh4SYfl
         857MKMH8LXn/Ky80fYMLUsaVshfUU1/ZgbU7Et8OlVbdzUFFlkmXe65u7hUiQ3ElNF2y
         4ZTx9b1B2DY7M6YQC/vyO9fftYErMouTxJjvrLadDgUZ6D7cLyDFDQmyK11pK6thSMD7
         6ADw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20251104; t=1773912247; x=1774517047;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yeZ2p6pnbvPRS5fxuEOq9YZdbLaM0p/9+jaxW+EiW3c=;
        b=cXB5YIG1BqaRTBJyeILogvDxhexESOZ75E4rX9F2RXSKdDQIIG9n98uniCF7ORN5HC
         zw0os1zdLpQ73GM8Ds4vAug2TWO77FH/NVF6x6XOUBVlpw56sboeAJr1mIMpLwAC4vEE
         9zs/cyEHJ4kNriDvRvY7WDdz09JCrv7/qLOYNzJd1IAT3b36VexYlkpVMEafOUUjVqij
         zK9DePB2lNf5mKmc3+lewhViIDsh+3omwBe3/OpqElJsfhoPb+MLq+Oi+uvgfhtP7eE9
         bY95AkwDt+hQQ7cx1163wn2i781jQiL9RLVDb/njmT16L44IWFqjVKy4dFY6m0hreaYw
         7/8A==
X-Forwarded-Encrypted: i=1; AJvYcCVl00QAnZbPMj1x07gTdvYFA8smu3DrfLnwjqfKGMxP4/H3Wqg+FZzzaROyX0Do57wCHeW9skQCq7RB@vger.kernel.org
X-Gm-Message-State: AOJu0Yw7c+pvexv4X3WzpqwJHcjC8PbWqVrT8rsU1XMV5CbhebTO3bhh
	K2EJvp5KYxnQ3Jk9LbcE2u4FjHCHkQBuB4LOCvtO6gqveo1aDUShUFzoyt79CdxNRvMAgp5VBF4
	mB4pPW3Jc9hZmMf5gxEkhi+nsIMynsEi42A4ConMUCV+fF1c4WTLA8u1lAM8HyVOF
X-Gm-Gg: ATEYQzz88u+AjANb+QoAenakWYXtsioW+lSXrT8PF/104pWpDlZ3s8nRVdOQp8/Cc9P
	qPLCbGc5sTM9flL2VB+1xZ2URppJqLJAx6LH9t3/rbo3xkAikfYRLTFds/NlLu6BF3tjEKFzGEL
	qRBSZRuRihQA87wCmCH/uzJzc7j+qWPHYsBKxQetZuEWq9N01P4Jz9bDSuBg11srYkGBAajKvSy
	wjlpLOf2w44bD+VV2zD/ekrfQuG1TG89XVxnYmbVQfDPFA/pJTgq1CPnKs5DHJy3fooRZdCs1Ua
	HIpopM4FQvNnOBFEgOUZ55MZr1uXDzaOxW0f4njkPp34wiBhMuWC8Tz6KO4BWVTINr4NFKGe+5O
	VGXcMM6SD0u3T39077QSsqvZtxqJttRewnaQZA0jr5gRevLMti5uciK1tOizwdcz353hwRIHUZY
	t1nLy0BVdVr75AC2lvO/fM
X-Received: by 2002:a17:903:4b47:b0:2b0:64c4:34a0 with SMTP id d9443c01a7336-2b06e320b56mr63912535ad.10.1773912247314;
        Thu, 19 Mar 2026 02:24:07 -0700 (PDT)
X-Received: by 2002:a17:903:4b47:b0:2b0:64c4:34a0 with SMTP id d9443c01a7336-2b06e320b56mr63912155ad.10.1773912246761;
        Thu, 19 Mar 2026 02:24:06 -0700 (PDT)
Received: from WANGAOW-LAB01.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2b0704ccc67sm48391035ad.15.2026.03.19.02.24.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Mar 2026 02:24:06 -0700 (PDT)
From: Wangao Wang <wangao.wang@oss.qualcomm.com>
Date: Thu, 19 Mar 2026 17:23:53 +0800
Subject: [PATCH v3 1/5] dt-bindings: media: qcom,sm8550-iris: Add X1P42100
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260319-enable_iris_on_purwa-v3-1-bf8f3e9a8c9c@oss.qualcomm.com>
References: <20260319-enable_iris_on_purwa-v3-0-bf8f3e9a8c9c@oss.qualcomm.com>
In-Reply-To: <20260319-enable_iris_on_purwa-v3-0-bf8f3e9a8c9c@oss.qualcomm.com>
To: Bryan O'Donoghue <bod@kernel.org>,
        Vikash Garodia <vikash.garodia@oss.qualcomm.com>,
        Dikshita Agarwal <dikshita.agarwal@oss.qualcomm.com>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-media@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Wangao Wang <wangao.wang@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1773912238; l=2030;
 i=wangao.wang@oss.qualcomm.com; s=20251021; h=from:subject:message-id;
 bh=r8Tgvpa2d+Xn1Psyxnelj9bMdjEJROkkSXYVPZse0P4=;
 b=/3SUyIFkuit/x/G5/ShYlCum1wBPDyEB+nxkUSRDrjJgjHV+r+aMur2hIiq5mV74AF+1c33O4
 mz8Io5FtidDAc73G80ktHlv3w8dndZn9UCA4dtdu3u0xHT00jiVy4cC
X-Developer-Key: i=wangao.wang@oss.qualcomm.com; a=ed25519;
 pk=bUPgYblBUAsoPyGfssbNR7ZXUSGF8v1VF4FJzSO6/aA=
X-Proofpoint-GUID: 80Tta1KhxbnLtp-RmK9n18hMUjnWJ-VI
X-Proofpoint-ORIG-GUID: 80Tta1KhxbnLtp-RmK9n18hMUjnWJ-VI
X-Authority-Analysis: v=2.4 cv=ApTjHe9P c=1 sm=1 tr=0 ts=69bbc0b7 cx=c_pps
 a=IZJwPbhc+fLeJZngyXXI0A==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=Yq5XynenixoA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=u7WPNUs3qKkmUXheDGA7:22 a=_K5XuSEh1TEqbUxoQ0s3:22
 a=EUspDBNiAAAA:8 a=TePBmaU8FEUBdnlTSP4A:9 a=QEXdDO2ut3YA:10
 a=uG9DUKGECoFWVXl0Dc02:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMzE5MDA3NCBTYWx0ZWRfX1Vgz9Gqpz1Wk
 +9yl2ZUCBJe8hkcaENS94E0IlsM4MxiANRYpm9p1/JgNV+9AbsEitfF1GpasdhJhof0CLYh/+pz
 DtMpjV7aydRfQetHy2EuHLUGKI1vKpxAGu3jxd4Dj9WSC4qd1elASG8QGZ3JML/PWpQIorEYcXy
 X8vbFamB5sKaqXgbQx7vMke/ZtOudIcemNbp+9aOggOEQVL/k2Vd0AVOWP3nX8V8xenfQ0BkTWP
 OxjDS6xBwHAC8bJtHMHQQhk9st8MwOoc+s65UbVVYMBQugF/bixxryhaAbgmv/IweVk6FmiTE35
 +8cBC8hyoP57oOKMCbs/ysY9wQEd8vLqiPBbwkoIHdW/mrjP4a68jhwKp/WODaf+GYgfVzxRAtX
 lo+ET/4GUYWYcmPd7/tGZ7t2lGMGR7bN7WO2RLHQqbh7y4Y2fNHFXtU+pZvC2stX1E03wPO2N9l
 cUgdzDL9uIhbN6TDFoQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1143,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-03-19_01,2026-03-17_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 lowpriorityscore=0 adultscore=0 malwarescore=0 suspectscore=0
 clxscore=1015 impostorscore=0 priorityscore=1501 spamscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2603050001 definitions=main-2603190074
X-Spamd-Result: default: False [-2.16 / 15.00];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip4:172.105.105.114:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[15];
	TAGGED_FROM(0.00)[bounces-277652-lists,devicetree=lfdr.de];
	FORGED_SENDER_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns,oss.qualcomm.com:dkim,oss.qualcomm.com:mid,qualcomm.com:dkim,qualcomm.com:email];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[wangao.wang@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:172.105.96.0/20, country:SG];
	NEURAL_HAM(-0.00)[-0.999];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 177F42C894F
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Document the new compatible string "qcom,x1p42100-iris".

The hardware shares the same IP block and binding as SM8550, but is
described by a separate compatible string due to differences in the
clock topology.

In particular, x1p42100 adds an additional clock for the Bitstream
Engine (BSE), which is not present on SM8550. This clock requires
explicit enable/disable handling and frequency configuration, so it
cannot fall back to sm8550.

Signed-off-by: Wangao Wang <wangao.wang@oss.qualcomm.com>
---
 .../bindings/media/qcom,sm8550-iris.yaml           | 23 +++++++++++++++++++++-
 1 file changed, 22 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/media/qcom,sm8550-iris.yaml b/Documentation/devicetree/bindings/media/qcom,sm8550-iris.yaml
index 9c4b760508b50251ac467ad44a366689260bfc0d..0400ca1bff05dcef6b742c3fbf77e38adca9f280 100644
--- a/Documentation/devicetree/bindings/media/qcom,sm8550-iris.yaml
+++ b/Documentation/devicetree/bindings/media/qcom,sm8550-iris.yaml
@@ -26,6 +26,7 @@ properties:
           - qcom,qcs8300-iris
           - qcom,sm8550-iris
           - qcom,sm8650-iris
+          - qcom,x1p42100-iris
 
   reg:
     maxItems: 1
@@ -41,13 +42,16 @@ properties:
       - const: mmcx
 
   clocks:
-    maxItems: 3
+    minItems: 3
+    maxItems: 4
 
   clock-names:
+    minItems: 3
     items:
       - const: iface
       - const: core
       - const: vcodec0_core
+      - const: vcodec0_bse
 
   firmware-name:
     maxItems: 1
@@ -115,6 +119,23 @@ allOf:
           maxItems: 1
         reset-names:
           maxItems: 1
+  - if:
+      properties:
+        compatible:
+          enum:
+            - qcom,x1p42100-iris
+    then:
+      properties:
+        clocks:
+          minItems: 4
+        clock-names:
+          minItems: 4
+    else:
+      properties:
+        clocks:
+          maxItems: 3
+        clock-names:
+          maxItems: 3
 
 unevaluatedProperties: false
 

-- 
2.43.0


