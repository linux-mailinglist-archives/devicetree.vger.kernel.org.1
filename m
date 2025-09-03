Return-Path: <devicetree+bounces-212297-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id A1657B424B3
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 17:15:21 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 7ADDB584FCE
	for <lists+devicetree@lfdr.de>; Wed,  3 Sep 2025 15:14:30 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 52D8E320387;
	Wed,  3 Sep 2025 15:14:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Km/12yOc"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AD61331576D
	for <devicetree@vger.kernel.org>; Wed,  3 Sep 2025 15:14:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756912442; cv=none; b=Ta/14QYGlujgUyv/60EfArk7pbhh6iSTt8DN0jK9FUKvgd8Ref+QAIHkp0+ZMAuyX9DSw30N49GxvMx6RTxxmUlz52XfyLTxQfymgKAePyYtJxHs/sk4nKNyicld5BMqabfbYf6CK0UZlrryfcMDhUurBTnm3caPQ5INfqjEea0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756912442; c=relaxed/simple;
	bh=XFm/BadHDzadfJbe7CFKN0imNyFqdCDjXz6VuEFz8Vw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=Y4aUfRBFhT+mopuSHHvAbns4ULTg1uSkG1M0oKwjtWVe525KO5Liyi4jy90ch7Vszl8tbi26X8JflaCYKQIfF+ggeyhLiq6PRqnV04Vuz2+0C81SXKQAztF6gHQfDlRMdOSd/RB/udkVuw7UIJpMFutprGdMqYnvCc67qSW681A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Km/12yOc; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 583DwxxP008347
	for <devicetree@vger.kernel.org>; Wed, 3 Sep 2025 15:13:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:date:from:in-reply-to:message-id
	:mime-version:references:subject:to; s=qcppdkim1; bh=RzL4kYDIxuH
	5s4GrG8w0rRMRXppv6MYJkkpGNs4+K8A=; b=Km/12yOcEbyfKQ8OskOzsEjhsTW
	3ejAHzA25uMh1rrBnurCAaHl3DyaY9eFx2fDEKGkz8CR2OjfK8a+gLHXILetdc0M
	qa2QZN6x2LPo1QMWpEL0gXJmKmvrXYQOVxD9ocEwmpA01YNwVCRyA0pYM+GWG0og
	YcOakpN/gA5y5nrlYrkHb6rimfirybcgaOEpaioqHgFCbGvWSzltNMwA6YpZG2T4
	3QT2lPrQMiAJxWDvkiayP693LaNYw1Hj8Pb1RQ4EAdNIr0/pdvofjqg++pr0lCfW
	QY+0ayf5niylzgD6E9kE8J7ow5UKBwqlv1dH6WgKhblV5Yzs37QGsGvgrqQ==
Received: from mail-pl1-f198.google.com (mail-pl1-f198.google.com [209.85.214.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 48w8wy81cd-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 15:13:59 +0000 (GMT)
Received: by mail-pl1-f198.google.com with SMTP id d9443c01a7336-24b2b347073so562295ad.1
        for <devicetree@vger.kernel.org>; Wed, 03 Sep 2025 08:13:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756912438; x=1757517238;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=RzL4kYDIxuH5s4GrG8w0rRMRXppv6MYJkkpGNs4+K8A=;
        b=lwom8tjQoJF8q26QqmEkIf7Ks/WPTmMXtXnak70Gl2B6HSHECj6t1C+vP58IMJA8aA
         k7ONO3af4sCkGKbwm5Mw7le4ZpgasIwixQ8m14/Gsa/eXzo3MgQhu6BsvoVv8BNDC+Sx
         8dePVT2v4jZ7y9HhxgaouraV5lAbNvYLqEN9VicXgcR/Ev0pbULsIHZdMjsG5SRvSi0K
         TP3lWONEy6+h7lRVIxd1WO1rfauH79DNUCttNmnVVKKBX9sRixFVaEjlrg3dyxKYf/Xs
         abcItCDJsUnEifc1Atm6GTKKN20lLKrgo+h/ygaJX+UdPyClr0Ietv/W3Vd46A/vJyzy
         zG8g==
X-Forwarded-Encrypted: i=1; AJvYcCXG1TEV1nxrHfkvP7M5xGVw1J6dyeWSJ7bEjARrEHF0xhVyx7UB7aQR92/+/tlWWyoa+heeh8mnUMIs@vger.kernel.org
X-Gm-Message-State: AOJu0YxFhB3REwi90QF/P++tjbSrc7lZj5hHWfRoPnw0na3Rfp7oKn2u
	ZvHKOBKNLHdh/lXJLbSMhApW0Poi7T1R1quqpi+LMFGDT1MtRzgJ2PnsT8c/jTJItyvRg0Dw3bU
	YwGLyQ2fSOy224KKJXIh1hUzlpJhaJ6BKAmF3DAGRVHUNnAxCfCWE+q4DQz1ELVNl
X-Gm-Gg: ASbGncsnuOjFRByCFg2srIEMNTzRrUKLJ9xkAa4nzIdpS6ZMm87HnD2d6oOdeu4kmnY
	2vdaH2AK4g+X+N43XYMFXRzTyovejzRuyYTGpCvRRrKSf/tBYPo+Kin56fn2eduI4Os7DrOUu2n
	ZnIYWrk2aMbg35gUznZJNBQfiuNnpEpPM34HOYn+Z2aKA57mdyDzSTnsdpfcfct6bgcLrQpFSoo
	kthNMRmT6mToqTFqzlm8w+EAEeo1HAq6+XHbEDbHf9DDjza8n1GcWc8ZsnzAvG8cupYwhOg8hsq
	RAEANh4a9dNtl/INL1NQJ9DK/RHiyab/mAu7F++82utSjDec65W1T9vTbcyFV4KWc1WOBtlIyJP
	N
X-Received: by 2002:a17:903:350d:b0:24b:299a:a8c8 with SMTP id d9443c01a7336-24b299aab5fmr72552285ad.20.1756912438224;
        Wed, 03 Sep 2025 08:13:58 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFTvTSzNvtnYATXSFnYQsCvI8SPhdcYHjrUO+5N2sNnL4YMyS9bz/HRtJJrkQSDQo1/PcpV5g==
X-Received: by 2002:a17:903:350d:b0:24b:299a:a8c8 with SMTP id d9443c01a7336-24b299aab5fmr72551665ad.20.1756912437706;
        Wed, 03 Sep 2025 08:13:57 -0700 (PDT)
Received: from hu-mohs-hyd.qualcomm.com ([202.46.23.25])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-24903758b89sm164818945ad.59.2025.09.03.08.13.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 03 Sep 2025 08:13:57 -0700 (PDT)
From: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
To: Srinivas Kandagatla <srini@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: cros-qcom-dts-watchers@chromium.org, linux-arm-msm@vger.kernel.org,
        linux-sound@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, kernel@oss.qualcomm.com,
        prasad.kumpatla@oss.qualcomm.com,
        Prasad Kumpatla <quic_pkumpatl@quicinc.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v9 1/8] ASoC: dt-bindings: qcom,lpass-va-macro: Update bindings for clocks to support ADSP
Date: Wed,  3 Sep 2025 20:43:30 +0530
Message-Id: <20250903151337.1037246-2-mohammad.rafi.shaik@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20250903151337.1037246-1-mohammad.rafi.shaik@oss.qualcomm.com>
References: <20250903151337.1037246-1-mohammad.rafi.shaik@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=Ycq95xRf c=1 sm=1 tr=0 ts=68b85b37 cx=c_pps
 a=MTSHoo12Qbhz2p7MsH1ifg==:117 a=ZePRamnt/+rB5gQjfz0u9A==:17
 a=yJojWOMRYYMA:10 a=COk6AnOGAAAA:8 a=EUspDBNiAAAA:8 a=KKAkSRfTAAAA:8
 a=iKSB4sV-3DizVrPEodAA:9 a=GvdueXVYPmCkWapjIL-Q:22 a=TjNXssC_j7lpFel5tvFf:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: WqDBBo_D2Suo6yFNz-jrFKZDpYyIE92a
X-Proofpoint-ORIG-GUID: WqDBBo_D2Suo6yFNz-jrFKZDpYyIE92a
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTAxMDEwMSBTYWx0ZWRfX+ZbwhXuiNOZd
 wESVyJ40moNdLwxG0ZNHypu/s3ZpDFrgn3/7P3iOSmlMUh3n0ufqgrV/CRxJ07VQw3/TmZmcscK
 0qQo4RFiZzUeKuwwElZaYr90rgNay5Ypum7I5TnBy9faItAfuv8MWkUXNbFf4VNyaZPD2FVxNTZ
 I/pAZIOVDo5pFdhnCYmFZfSrEdrb4qZbFUZwlels98LoWNF41b3Lj+gA6Tq0/n37Srx3gwaQMbC
 TpSPJv1nu0TdmAckEtUzlHAUijf2SDhJzds8snQwBNoU/qNCmA6Ve6UZBDEQy1g53u4Pjks5VrH
 jal40l4dwvrQYTl6d153M9dtUazAbHOPqvZWM6x9TG18CX1qrlDkyITENWpYATNFzsPMCtdEcDQ
 fn/o686T
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-03_08,2025-08-28_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 clxscore=1015 priorityscore=1501 adultscore=0 phishscore=0 malwarescore=0
 bulkscore=0 suspectscore=0 impostorscore=0 spamscore=0 classifier=typeunknown
 authscore=0 authtc= authcc= route=outbound adjust=0 reason=mlx scancount=1
 engine=8.19.0-2507300000 definitions=main-2509010101

Manage clock settings for ADSP solution. On Existing ADSP bypass
solutions, the macro and dcodec GDSCs are enabled using power domains
in lpass-va-macro which is not applicable for ADSP based platform.

Co-developed-by: Prasad Kumpatla <quic_pkumpatl@quicinc.com>
Signed-off-by: Prasad Kumpatla <quic_pkumpatl@quicinc.com>
Signed-off-by: Mohammad Rafi Shaik <mohammad.rafi.shaik@oss.qualcomm.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../bindings/sound/qcom,lpass-va-macro.yaml   | 23 +++++++++++++++----
 1 file changed, 18 insertions(+), 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/sound/qcom,lpass-va-macro.yaml b/Documentation/devicetree/bindings/sound/qcom,lpass-va-macro.yaml
index dd549db6c841..3bfb0538dba2 100644
--- a/Documentation/devicetree/bindings/sound/qcom,lpass-va-macro.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,lpass-va-macro.yaml
@@ -79,12 +79,25 @@ allOf:
         compatible:
           contains:
             const: qcom,sc7280-lpass-va-macro
+
     then:
-      properties:
-        clocks:
-          maxItems: 1
-        clock-names:
-          maxItems: 1
+      if:
+        required:
+          - power-domains
+      then:
+        properties:
+          clocks:
+            maxItems: 1
+          clock-names:
+            maxItems: 1
+      else:
+        properties:
+          clocks:
+            minItems: 3
+            maxItems: 3
+          clock-names:
+            minItems: 3
+            maxItems: 3
 
   - if:
       properties:
-- 
2.34.1


