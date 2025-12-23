Return-Path: <devicetree+bounces-249021-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 2DCEBCD8875
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 10:14:36 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 854D23011E01
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 09:14:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 65BA9327214;
	Tue, 23 Dec 2025 09:14:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="nP60/UFt";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="IYRNutQB"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 049583254AF
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 09:14:21 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766481266; cv=none; b=VFevpTmQtnk42ygYG6882jgdXRZ2Hg9iUsWlRABxQ86EtFiJEW1wSe+X7UZw/EGuwMDJu2vxvcyVRTQ0Lbhp+4/fhflhgtXn6W6yE/v7UWxYrxtAJgYC5cnWm1wH5lbTsmyOZVWOEii57NsQZ9J37gKProve/XnOm6OlI2Y8yn0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766481266; c=relaxed/simple;
	bh=Y6jOHq4W1u2qm06T2h+sJqsZsHdgNBpFta4hr0KK6gE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=dH+4TSLVTklwj3BS6eTOofYwvefuADGVoq7GUZ3WqrJGOHW31AKEFcM2+HgURnattQTYFnSJDOUHMVoq5faMvzRFFuGjc2DLQw7KJBaS9HFADaxBm46MnjBRMN/1xriKEbVNy22DLD0lC2Szv+QJSN1CsNOaXq4d9avbPbhRj5U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=nP60/UFt; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=IYRNutQB; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279866.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BN6jmFJ1630665
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 09:14:21 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	Ei7mDZ2q3MlVYEacUwJ85Fk1uHEmR1bOQjZfe39rkRc=; b=nP60/UFtkw9yRrNk
	Y9ECioRL3azvpMJWndtSn6ger9EGibzWQAT7sZQO7/m1Y5+qLhG2ExK+Fdu3kHmM
	pTlPL3wJMhujnCEKnbGgZohrQWrmnCvT8iq3VpF0JTA3e69acKcUof/xda9t06Qc
	eDG691XNSwXlS5dUNYAHNM017HRAjQ/xTpXs4oIo6cOjj3c/s/Azp+jeW3ObPzJP
	Gi3VO2euPU4ed3rBoMyIS4UPt9ii7E87Io0hKkU5etwXe+6LzMDMsL6GKz9YYwEe
	AmzHaR2QA+2G6xxQkT4k5IvU9y8hKREK05EJC6ZyNzzGjfhyfBwuvsNRmD7haWFI
	L+42Ag==
Received: from mail-pg1-f197.google.com (mail-pg1-f197.google.com [209.85.215.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b7ck8j3vk-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 09:14:20 +0000 (GMT)
Received: by mail-pg1-f197.google.com with SMTP id 41be03b00d2f7-b630b4d8d52so4828186a12.3
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 01:14:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766481260; x=1767086060; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ei7mDZ2q3MlVYEacUwJ85Fk1uHEmR1bOQjZfe39rkRc=;
        b=IYRNutQBw240YKCnevtiorS6TPMlnjGhn5P50IZAeqQwintyDBiWcBC2LQUE3lsyjd
         Flpoif4y737bzQKj0gCrGy/56l2B7Yq4Vul311KIkXsEOp49B8X/OZaKH650U7jraEuW
         4OnYqy7o5SrZyJOfQipo1m2x2Qo4dCG9kH0SR3jhEVuv9dPSKSxXnOUBKKEV4wcvVcL0
         h5xbUSDwTQmWcebQup9u78mZ5FSODa3utkWd5Y0VmtmNORtN05pwj05VabcKobfbUqQB
         cllocYkPHfgZDCQ9wKe25Ok+Ev9yZZ2Zcd0b+NuusOhmfvwg/eVP5nszO9vPDHETtXt8
         cNmw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766481260; x=1767086060;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=Ei7mDZ2q3MlVYEacUwJ85Fk1uHEmR1bOQjZfe39rkRc=;
        b=m6pmDj6cSZJGWs/13SPn2O6Eo/n2Ue8RHt4Y9XOjpPkHNsq1s/1+kcWB4vkcFq8tFD
         Uoqe4YyX+XnFlpGleeSonz799NTU1evc8EJCm4Wr2tlWxvoIgJ4mkG9bD1LyM0ncN3yX
         jAy8BFdNDUvR2mXZ88eVDkXpdwcFZVLIKhbKlX/g8Z5WCuwDgc4EbbQthUJ6MxR6ut8B
         hC4fmxz65fDAEZQBswZXMW1ButP+00SnAwabPKfjXbJEl1Whb8ed7GNCFmeYz0CxlXpk
         rPMGpR9VULf+Cp86Y4ox8DBih0DDF4/mPF0myEbR359iYkKllhePIw0GXt0MNzlZCmJx
         Jihw==
X-Forwarded-Encrypted: i=1; AJvYcCXphl6sUrErRNqEX7uh52iffLZ4lPydRqZNSMx3NUR7HXpUW1l2gt4vdu+BIAQHH0N1+u0VwtQcE++6@vger.kernel.org
X-Gm-Message-State: AOJu0YySZ+fMVG7DOArkGUkDQFGI6YpxL+w2M189BwlHTBOY+mMEbJ6B
	9W+HVZDS9ltijxvdFRyeAzh/JqYqmxe/2dSoj++384nNrgcY6ISXZsOdQ4kemm1lZUeuFzSOgNi
	Etc6pNbL0pQcI+kptN1vKT2bX2CzPqrhJTAUHB2bcWUVF1txNGz2pWIPdbiujKLmo
X-Gm-Gg: AY/fxX5X1GcpFnToy1vsceoQN4655/5jWdyTcFufn1AJjigDMU4XpjN5OFCwEpV5bo6
	DWR/NoIMLEHQ2Z0eGaf6IkrH8bcxAfLs+cmNkkYA3MmBSuANpPtEK1SmbbdLPtJ4ey53i3oR2Sg
	M26bdF8E4RTBuUPatgcxl0ukwLDIGwe4ga0xsRNbzDKHbyrH709LfIxOc3A30Q0ZCBM+E4k3Hxs
	dlOpyAMU21H/5nQHe3PPmv0MaGsuv49QVQ8XdR2PDlRQ06NVZQ9bfYrhy6knw7y0pNmGgi3C1Ib
	CLq9P6YvmWo85GXLijRH9CyOtgMy083G9GfxXGbfK4Gj22WfQm8evb/ydEyQaOuy1FOyUeuEEnP
	Y2apBmfM+o1EqHqkHt7vEaPQ8/8nMQ+I6RyJ3JDe014vssg2GxLmcqEJeAf0/
X-Received: by 2002:a05:7022:6886:b0:11d:fc64:9562 with SMTP id a92af1059eb24-121721aabfemr15308104c88.1.1766481260241;
        Tue, 23 Dec 2025 01:14:20 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEig7H4Sj/NNpGtkeBj3J0vNaMeTY8cvFUplTk03xO27LlR4uZBaFqyfuST076f3uY+IqdPxw==
X-Received: by 2002:a05:7022:6886:b0:11d:fc64:9562 with SMTP id a92af1059eb24-121721aabfemr15308053c88.1.1766481259627;
        Tue, 23 Dec 2025 01:14:19 -0800 (PST)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1217254cd77sm56931833c88.14.2025.12.23.01.14.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 01:14:19 -0800 (PST)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Tue, 23 Dec 2025 01:13:48 -0800
Subject: [PATCH v3 2/5] dt-bindings: remoteproc: qcom,sm8550-pas: Add
 Kaanapali CDSP
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251223-knp-remoteproc-v3-2-5b09885c55a5@oss.qualcomm.com>
References: <20251223-knp-remoteproc-v3-0-5b09885c55a5@oss.qualcomm.com>
In-Reply-To: <20251223-knp-remoteproc-v3-0-5b09885c55a5@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>
Cc: aiqun.yu@oss.qualcomm.com, tingwei.zhang@oss.qualcomm.com,
        trilok.soni@oss.qualcomm.com, yijie.yang@oss.qualcomm.com,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1766481257; l=1361;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=Y6jOHq4W1u2qm06T2h+sJqsZsHdgNBpFta4hr0KK6gE=;
 b=L7fombA41fBJTWgLYam9k58LNXz3ZFDMLBftWxE+qd8jNjAZcwtGvPbnYJbs/yhdn1BvU2wj5
 nQvU0KE9rNmBz3mz607okeyIRhgg0SNCWNZ69qn/en5yG+3Qe6nErNu
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-ORIG-GUID: EcbgnnGu0u3Y83SkxgkFyCwKw9vrj_FL
X-Proofpoint-GUID: EcbgnnGu0u3Y83SkxgkFyCwKw9vrj_FL
X-Authority-Analysis: v=2.4 cv=asi/yCZV c=1 sm=1 tr=0 ts=694a5d6c cx=c_pps
 a=rz3CxIlbcmazkYymdCej/Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=JO5o7z23AXsBd-kSPjkA:9
 a=QEXdDO2ut3YA:10 a=bFCP_H2QrGi7Okbo017w:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIzMDA3NCBTYWx0ZWRfX2rCFhDApLdaj
 4nVNlCOS4yY5ZCC+s/cnALTLwEsU7u9agkvD/IHXPyiilb8Zg33WR0x09pdc4jFoaJRlIScDwlL
 d1SC/V/cBUfSdzvObPZWW13lM0IlhGUDJBishTz8oBxIIcVT/Vr1IDM6yQtgV88NGwLlBakp3Vy
 KcpKxtX2flzl/QhEuZLRiyfG6c1pon5JgCtrYgEXsvv/Y2onIe/KCuUH9JDcVjv015rQ/i3LWnB
 Rx8AOtaEOsmHszkDXY+sGRBgDueq/R78YG8rG/5poNJ8BZ0HdSqGsxwKLxJ8A00vy+ud6BOJXIl
 GTAD1mzMRAdXDh81Vfk0Olp6MOW6aWl6hX3mmgAkE7vCJKVq+uYeSx3T4Mjolhgysy4+FLRozFQ
 SNodnTF1y9/3oAL7/OLFtNCJsdYhMEEKasqam1o7cAvfufDNaCSwnO9xYe+T2H5790JpzjmkPRk
 zSIn4qs3qwhrgpYVE/A==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-23_02,2025-12-22_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 malwarescore=0 adultscore=0 spamscore=0
 phishscore=0 lowpriorityscore=0 impostorscore=0 bulkscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512230074

Add remote processor PAS loader for Kaanapali CDSP processor, compatible
with earlier SM8550 with minor difference: one more sixth "shutdown-ack"
interrupt. It is not compatible with SM8650 because one memory region
"global_sync_mem" is not managed by kernel on Kaanapali so it is removed
in the remoteproc cdsp node.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
index 31dffd02125a..3b66bd106737 100644
--- a/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
+++ b/Documentation/devicetree/bindings/remoteproc/qcom,sm8550-pas.yaml
@@ -35,6 +35,10 @@ properties:
       - items:
           - const: qcom,sm8750-cdsp-pas
           - const: qcom,sm8650-cdsp-pas
+      - items:
+          - enum:
+              - qcom,kaanapali-cdsp-pas
+          - const: qcom,sm8550-cdsp-pas
 
   reg:
     maxItems: 1
@@ -98,6 +102,7 @@ allOf:
           contains:
             enum:
               - qcom,kaanapali-adsp-pas
+              - qcom,kaanapali-cdsp-pas
               - qcom,sm8750-adsp-pas
     then:
       properties:

-- 
2.25.1


