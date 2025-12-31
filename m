Return-Path: <devicetree+bounces-250754-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 428FECEB937
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 09:46:14 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id B2307300D432
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 08:46:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0BEDC292B44;
	Wed, 31 Dec 2025 08:46:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fBFIIBQZ";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="HKR8Sk5l"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E38E30F948
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 08:46:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767170771; cv=none; b=CwT0RmAoQzluvk89RR4dRTzBcWUNb63mEBttUsQVBvVrl1ym2Ls4wQ7HShjnP7C1TEbXUsdaIE6XveNFHywbqDKcqvCJW7IdTmOEeNkquc6CJX4Vx7GQ52phhctMW559S7H0vU4JCQB2LtgxuAFP1W8u3RPVkLA6StgzpDlg4Xk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767170771; c=relaxed/simple;
	bh=T0aJD33DIX3eTHbNDuhSmkpxxHoTSUhKHFqgSnJxirY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=a7vcOF2ZCW9XgV+pzQE+v06uUhGlaI/f8Wo/sTo9Vdfr87f6nw4l7b1EVvDYTOCsHhrmMTaVoHOLszrXwMcEssR7Ujqri5C+ViDrtf09ggIohGNC0H1AZ6vbfiK3zbfkgE5Qld3/1w/QkqsD5iusj1ptN8cAwN3+zm27M674T34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fBFIIBQZ; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=HKR8Sk5l; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BV78Z112733397
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 08:46:08 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	LHdgIK7rIVdHeDRXxeUpAdW6FlQ9DymFt0TcCA0atqE=; b=fBFIIBQZm4j3IfW3
	unEXOe0yc8SHr95y8bLxvyWdpxPQPk96ExGq8OEv38mNd/1L0fEJxsF/21vWUSKf
	BcC6J562dLv0MlXo7pG7AbEHYpHrvH9+3buDcRoT74GI56gCQvhWnr2mrauKaGIn
	r6hCjCdtG6dXFrdMqh7te/CnFRqwg/cOVLk15E/OAYp5DeIqpf9iDdtHdUvtReKb
	kiEjmldCAP+spTYwnzjRgsxhwObjwpeykPftxboUwRozbttFD9Jqh8LE1Tn3VUU3
	dUqSXgmrMKS8pwhIsZ9be+oD8STpV5Ju8Qp2ETEFCEkiR1uQL2mDYQ9AePmRM7FG
	5l5d9Q==
Received: from mail-pf1-f200.google.com (mail-pf1-f200.google.com [209.85.210.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bcy6ag5v3-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 08:46:07 +0000 (GMT)
Received: by mail-pf1-f200.google.com with SMTP id d2e1a72fcca58-7b9090d9f2eso19650825b3a.0
        for <devicetree@vger.kernel.org>; Wed, 31 Dec 2025 00:46:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767170767; x=1767775567; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=LHdgIK7rIVdHeDRXxeUpAdW6FlQ9DymFt0TcCA0atqE=;
        b=HKR8Sk5lWfjvHZA58ISoijuOJth8Le/MLXnv+PuKIToaMPUUPaO2VxGSkELR8Yghsw
         dR4lsNXqdLsLQeuwQPrvVWiVNJBC5+dVoFYELc20o+6TpK6pbqkARKAyaOLqY3yJ1POm
         MVib84HVeWOG07W/lbncOiRPm/vE5ZJX0OylIG6Kqsg80yrF1+k8BcyAumDpxzQ40Lfu
         lOyasMFyRF0EaNmQCwFgd4s0mNyzY4P7METVw504KzOJyd+yWGJjcLBOrA6SQYExyZSr
         QX9kDvsyifWx9eV88zd56enJ1QzcjAqz2EDIX9ORPsZs7eGOK/Lh3utkInryscYOnxIK
         cT1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767170767; x=1767775567;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=LHdgIK7rIVdHeDRXxeUpAdW6FlQ9DymFt0TcCA0atqE=;
        b=dmhAofi7y+fsz/igw+SPY0rf9H8ZHkxTEGNF5KPh3wagJoHnH7xmQTcqtw3Y51D/jK
         y/FgIeyeaJ+RKHOxl711zWBB8b0HHcBBu7F0/pyJGFH1ODzc03JBJmKcOEuL6sf57q6s
         xFFT4EaK4FEeNPRe6w9SXOJ3+9VxdadIU9nUL16TVPMWd8491tT8F2kc+qz8R6po24tC
         e+DJuE+QSIXF3R5179LhXGORDSbOVYywMyuHHur7mBG0ThOdWJPpUk41ZYbtsxrx6gB1
         RLxeqVKRK1pNdKXJb2ixSUMQdCSvgQKv/ZQMlTrUBBqM8wjk1YmN3ZfHn+9TuflGEUPK
         24Nw==
X-Forwarded-Encrypted: i=1; AJvYcCUI3IerdS0uSFbnNe7Nqb0xEbCB7wzKF5FM93a6wDbciILl+TlD/pejKM/XmG17Dqh1pV4oBY6C/c/n@vger.kernel.org
X-Gm-Message-State: AOJu0YzrcHjwMIenFNbPWinf8tzZHJhdNCiCrBq5fTBoVoidZo4S1h0B
	UPN+dCqiVVzDbucxdUXG8F1iheHcCPkIVxpCDvUIRe+db7abq8kJw8r0BC6GibMhr8yDn6Pqu32
	qDuRCegsT1/8FiiGGj3yHoMhkDayHl3B6yHbo6+6iuq07/mmdi+xvEpueVWstvwL2
X-Gm-Gg: AY/fxX4NGnk1SCkhIdV6Gswt+MhUf0ZdEZ5jkiVhwc+fs6Hi1RUeU2NdxhcVygdhCxf
	v5GSBNso64nw1MGZHF/9su+uYwbH8hX5Ww7K8JYQEtE8YcAx9jGvA0oL5WnHFE4DW8kgS40AuQd
	T41HYljO27NZHQ9ewIpE87007hKrdHbRe0H5XD2ETT5Q522Gl8r2/QY7iJHUp5Z2NAbtyTSn24q
	CgzO2oVV7KYFfrg5fCezEf5ysRooK/o6iqgvcnZq6fVOvwj38OISi/Oln9BiX0tNfQvOXkwdj50
	BQLeVbIqENJMHcudUyGK0jFBhIOl0Jj0jZPY77qBM7d9qlUsUepz7n7yeA1mtXLxspYxQX3syT+
	ktWmWWbEVuzpIMluV4ht8C3gPiKLL0uswfQ==
X-Received: by 2002:a05:6a20:3ca2:b0:344:a607:5548 with SMTP id adf61e73a8af0-376aa8f3946mr36073238637.58.1767170766829;
        Wed, 31 Dec 2025 00:46:06 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEaGppZIEcNFj7h+K5+adlAthXR0ANkOoGwkAkNm/WxOfY7fMuAjR6d2+dVPJ5qc03dhZ4wOA==
X-Received: by 2002:a05:6a20:3ca2:b0:344:a607:5548 with SMTP id adf61e73a8af0-376aa8f3946mr36073221637.58.1767170766327;
        Wed, 31 Dec 2025 00:46:06 -0800 (PST)
Received: from hu-akhilpo-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-c1e7a018eb5sm31356070a12.16.2025.12.31.00.46.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 31 Dec 2025 00:46:06 -0800 (PST)
From: Akhil P Oommen <akhilpo@oss.qualcomm.com>
Date: Wed, 31 Dec 2025 14:15:24 +0530
Subject: [PATCH v6 3/8] dt-bindings: display/msm: gpu: Document A612 GPU
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251231-qcs615-spin-2-v6-3-da87debf6883@oss.qualcomm.com>
References: <20251231-qcs615-spin-2-v6-0-da87debf6883@oss.qualcomm.com>
In-Reply-To: <20251231-qcs615-spin-2-v6-0-da87debf6883@oss.qualcomm.com>
To: Rob Clark <robin.clark@oss.qualcomm.com>, Sean Paul <sean@poorly.run>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Dmitry Baryshkov <lumag@kernel.org>,
        Abhinav Kumar <abhinav.kumar@linux.dev>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>, Simona Vetter <simona@ffwll.ch>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>,
        Thomas Zimmermann <tzimmermann@suse.de>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Jessica Zhang <jesszhan0024@gmail.com>,
        Gaurav Kohli <gaurav.kohli@oss.qualcomm.com>
Cc: Dan Carpenter <dan.carpenter@linaro.org>, linux-arm-msm@vger.kernel.org,
        dri-devel@lists.freedesktop.org, freedreno@lists.freedesktop.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Jie Zhang <jie.zhang@oss.qualcomm.com>,
        Akhil P Oommen <akhilpo@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767170740; l=1808;
 i=akhilpo@oss.qualcomm.com; s=20240726; h=from:subject:message-id;
 bh=T0aJD33DIX3eTHbNDuhSmkpxxHoTSUhKHFqgSnJxirY=;
 b=RchQq5wGsT96YNkpPSE1H7vENdCVRpxN4zehwiDWyIAOB1DybAjhppVLFYlLjna0sCObQVg0j
 291CczjEsrlB8J1o/dgJ/NLiq0pVuTFAyvrbJ6Ubhq08VTPPmegw02G
X-Developer-Key: i=akhilpo@oss.qualcomm.com; a=ed25519;
 pk=lmVtttSHmAUYFnJsQHX80IIRmYmXA4+CzpGcWOOsfKA=
X-Proofpoint-ORIG-GUID: 9gpt5oca3zvzFMum-pDt2Iv5lJTbY0GQ
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMxMDA3NCBTYWx0ZWRfX9/COTKfmwZV/
 ZjuPMu+DdAUCuz+U+puB/ysVRqDwlsx1ikjSIImqF0WValXxnyoGkj5qDUUWezg83fpkhZ9cpFm
 oGBor6iJZIJEWjh48xcvE41ROnCALOhBBKIKr8Qw6hsBSCsOzhdqh1KqSr9+gDRfyyQ2I1HXm6T
 L3ksxY3Q87UIuti8yl2ePcpTYxBxLUKxPPzSI/QAr9iu6y0zq40euy2SaSdTCZBbBLxC3qWI1hn
 xtxLp+U4EN/cNWotbajkRfTkcHMEi5Pta8BEp2eQBCGN+q+KZTlqz649KqTu03CI6caOmPNmO5W
 4gvVekvCDFnGAJNqX/mbNngdOamgsIiul6pt2chJ0swW5rTiFI26LBgUaSaiakPZ8c/VNEDgkNR
 g/AUGl3Zxvr2nAfnvIatkketSs3yzfHETpp247ijhMFm8+sLkyR16VvMJ99HJBG2iILk5LoAUBv
 qNcfl+sWmJ+zhbgthmw==
X-Proofpoint-GUID: 9gpt5oca3zvzFMum-pDt2Iv5lJTbY0GQ
X-Authority-Analysis: v=2.4 cv=J9GnLQnS c=1 sm=1 tr=0 ts=6954e2cf cx=c_pps
 a=mDZGXZTwRPZaeRUbqKGCBw==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=SkoZtctDx9gcCqASqUMA:9
 a=QEXdDO2ut3YA:10 a=zc0IvFSfCIW2DFIPzwfm:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-31_02,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 lowpriorityscore=0 phishscore=0 adultscore=0 impostorscore=0 spamscore=0
 suspectscore=0 bulkscore=0 malwarescore=0 priorityscore=1501 clxscore=1015
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512310074

A612 GPU has a new IP called RGMU (Reduced Graphics Management Unit)
which replaces GMU. But it doesn't do clock or voltage scaling. So we
need the gpu core clock in the GPU node along with the power domain to
do clock and voltage scaling from the kernel. Update the bindings to
describe this GPU.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Signed-off-by: Akhil P Oommen <akhilpo@oss.qualcomm.com>
---
 .../devicetree/bindings/display/msm/gpu.yaml       | 33 ++++++++++++++++++++--
 1 file changed, 31 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/msm/gpu.yaml b/Documentation/devicetree/bindings/display/msm/gpu.yaml
index 5c12b5aacf8f..27ce88766dc5 100644
--- a/Documentation/devicetree/bindings/display/msm/gpu.yaml
+++ b/Documentation/devicetree/bindings/display/msm/gpu.yaml
@@ -45,11 +45,11 @@ properties:
           - const: amd,imageon
 
   clocks:
-    minItems: 2
+    minItems: 1
     maxItems: 7
 
   clock-names:
-    minItems: 2
+    minItems: 1
     maxItems: 7
 
   reg:
@@ -388,6 +388,35 @@ allOf:
         - clocks
         - clock-names
 
+  - if:
+      properties:
+        compatible:
+          contains:
+            const: qcom,adreno-612.0
+    then:
+      properties:
+        clocks:
+          items:
+            - description: GPU Core clock
+
+        clock-names:
+          items:
+            - const: core
+
+        reg:
+          minItems: 3
+          maxItems: 3
+
+        reg-names:
+          items:
+            - const: kgsl_3d0_reg_memory
+            - const: cx_mem
+            - const: cx_dbgc
+
+      required:
+        - clocks
+        - clock-names
+
   - if:
       properties:
         compatible:

-- 
2.51.0


