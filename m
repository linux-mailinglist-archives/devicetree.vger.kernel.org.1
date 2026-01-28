Return-Path: <devicetree+bounces-260246-lists+devicetree=lfdr.de@vger.kernel.org>
Delivered-To: lists+devicetree@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cFs8AlHNeWnEzgEAu9opvQ
	(envelope-from <devicetree+bounces-260246-lists+devicetree=lfdr.de@vger.kernel.org>)
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 09:48:17 +0100
X-Original-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 74FE59E5FF
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 09:48:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id B7F453033E4A
	for <lists+devicetree@lfdr.de>; Wed, 28 Jan 2026 08:47:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 454CE33A9E5;
	Wed, 28 Jan 2026 08:46:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="cNxQ5JfG";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="AdEu4vU8"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A904833A70F
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 08:46:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769590017; cv=none; b=nHPhCGPHZewQzzVD2w358CVPYt5z4fOydnEfcINxwxb2cTYhjFIA5blsbImBoo3/hCAtXICXHbbaFqFhclC8A7Rg0iz+QPv/ZUIthobJlI+HZ556v+NK3CfJx8CzL+Xyc7SfdAy8eR88b53FGPGjctGcTNa6w+bBWgyHOMFxYbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769590017; c=relaxed/simple;
	bh=fmj74JXS7b3/5JPwnhbm6Z+ccfNWzkm0zWwsIkb9dMc=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=JCj427pY7WT0D5rMtqfvmTFaLmwfjldZrIeGlvH5l5p0VhMRnyiINF+RsAd57Y8IP0FWnviqy/dzHVy0L8Ew6dY//7u22jsmXnZ+FUpUNYjj9GJ5IQBg5BBEtie4X569muHIg8AGaugpB85y5qjtLwkBX8+TMt8BozHGTqFjds4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=cNxQ5JfG; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=AdEu4vU8; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 60S2lOUZ1334324
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 08:46:54 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	yfXxaOd9plb61s8TF4WmKmUfjZnHFbvBpCT+9AAgBMQ=; b=cNxQ5JfGTdFsguwq
	a+yQ6WlBN7RzFzTRD0tCyWzIPX4XOzNr2G9Y4oAvQpogqQ89P/TdJSu97PQ1P8zA
	ZLg3qx6lgKzK50lCuRKoHVnfLgENZbBSlUEzExeR7CX3VZd0Lm7hoXs9PFNvOwbG
	f+IgP9yqMZadQAXgsk0e5vvrZLLwAU1qirkRF+QpZPI6p8MM1SKf57Yvpb6pY48+
	0SPNhno2fW0eIGnrRbjCVcwPFbj7WMUOOrSkizVgIPYdCYrAjk4dAMlDC/wismbs
	aih70PHfzdVQnhGGbUVlkRyZyvOo8LD2xXuv4Cg1LR/MfT65+eDTa4SJMqvPGyoE
	uIpBLA==
Received: from mail-pl1-f199.google.com (mail-pl1-f199.google.com [209.85.214.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4by1dftq9n-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 08:46:54 +0000 (GMT)
Received: by mail-pl1-f199.google.com with SMTP id d9443c01a7336-29f25e494c2so10873115ad.0
        for <devicetree@vger.kernel.org>; Wed, 28 Jan 2026 00:46:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1769590013; x=1770194813; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yfXxaOd9plb61s8TF4WmKmUfjZnHFbvBpCT+9AAgBMQ=;
        b=AdEu4vU83H6CuuMdwpaVK4nj0g/nkmOA3bDrmNJTOJAJlNZjB5eulSFTbiIjhBdBsV
         IsKGRiJHx+nbZP3dXgUPtbMNK76Jea08gpXIHvTpUlwx9Oo6F9wwQgpR3xHr57HaElOh
         KJ0M5p2e31PWKlH9zTRJlKU1pLZgMLwgNnsvSvRLwbfjoqM7QSi6w/3OxGiYpCahd3pS
         CRD6LiiRJDFKpF5h8AtqAhGJMFOrZqRaj6uANy8zvMKLxasISVFrh6T4XCkHx+FwJ5nb
         NKbe8WIaGYJvWbhNH2ccaR/NHBui/DQ+qk1YmWnL7GS3kV9fJU8y6p5L6GiuOHbcKMu7
         MInQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1769590013; x=1770194813;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=yfXxaOd9plb61s8TF4WmKmUfjZnHFbvBpCT+9AAgBMQ=;
        b=ohPDv7dPVv4Mb42qzQnFxTGdSq1KAUJq8aMPTdw7yvkzc6PP3B842L6LJkZq+owBX/
         6mEqSlIrS4XZn5/XYpxApPt188BQWkjHMHNq6vZfyeerG0/ItloXCoKoGG76lkl2MzJn
         r6d3zQYzkyT3lB3n0HbNN4DTq1u34jK2lkoFMqntbRq1GyLASdjFzmoYUv8MJQ1TdXRh
         e+hw9fX+DHybh7mSNb0ZgzjzAR0IYz2BUzssLSmLFWM0iRVbowv/ZaR8KThXq3YFoL5/
         6r7ptRMCkMa1WBEGJaUomVGItbfXG9q9hsUBZJdssdUY7vcaFwIkL7Ff0jw8DW2HMm0o
         r1FQ==
X-Forwarded-Encrypted: i=1; AJvYcCVGYIrNBvVrmO9NqkJ4xUUrDW6ObXcDbFbN9/zL+8n1bPQy3X49uS6UR2tRRSP4gA9o2iMUWaNtgr8s@vger.kernel.org
X-Gm-Message-State: AOJu0YysSWz3WpEzsVia6If7RpGacKXA9d7l+Ma2tgZOZBtSPg1Dxdik
	gniRlsHLwiKZvnoMT1mCAjErz5y41uCR7Jij/zDXRDQFof+rykSnyz1PvvlZlawDReIkyAb91Oz
	pS1a2IGyagh9pqt53lzqkLVk8JRLzRFDf0Ba4GLIywHsqWVbhNJYBdz1oAennI8d3
X-Gm-Gg: AZuq6aLzEwEWx47Gg6XB16UxL1YfEE5/LT6vIfsV/MTJGxx2+VfP9G9e5+46kFW/wtb
	OhbVb+uIVE2h72WYqC8++ch4XqAif3bemIf87N7AAAIk1fi06F41uOzuN+oCzfngwb+0xEDdSdx
	8vZ5IxnPErTGxtx/azhAEZLa1aZoSmFLfuOlncVMjEQAqiYvfluc6BdKu2mQcmjVvM1K99oB9a3
	0FFkObE6Uzy92fB2V2Sv1/ZWuWjkFKGr6SnV59AcQlOl1CjAIAvzKJ1kc5+E1lFyOvM8xEZDxvY
	C20VnZYr4nHNb359IpWnH1i+ltt0MZJp3YfUmAjTDHbI04EcPjVJV/MPZIGNIQOEAiRHyiM9fZs
	2UeE/CSpMS56e/wFtEZzeGJRP0fIuMVUBLdKKF2JZ2BKEjn0=
X-Received: by 2002:a17:902:e881:b0:2a7:8486:ef13 with SMTP id d9443c01a7336-2a87134ea8fmr48957315ad.29.1769590013394;
        Wed, 28 Jan 2026 00:46:53 -0800 (PST)
X-Received: by 2002:a17:902:e881:b0:2a7:8486:ef13 with SMTP id d9443c01a7336-2a87134ea8fmr48956775ad.29.1769590012783;
        Wed, 28 Jan 2026 00:46:52 -0800 (PST)
Received: from hu-arakshit-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-2a88b4c3b1esm16263075ad.63.2026.01.28.00.46.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Jan 2026 00:46:52 -0800 (PST)
From: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
Date: Wed, 28 Jan 2026 14:16:40 +0530
Subject: [PATCH v4 1/4] dt-bindings: crypto: ice: add operating-points-v2
 property for QCOM ICE
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260128-enable-ufs-ice-clock-scaling-v4-1-260141e8fce6@oss.qualcomm.com>
References: <20260128-enable-ufs-ice-clock-scaling-v4-0-260141e8fce6@oss.qualcomm.com>
In-Reply-To: <20260128-enable-ufs-ice-clock-scaling-v4-0-260141e8fce6@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>,
        "James E.J. Bottomley" <James.Bottomley@HansenPartnership.com>,
        "Martin K. Petersen" <martin.petersen@oracle.com>,
        Neeraj Soni <neeraj.soni@oss.qualcomm.com>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        "David S. Miller" <davem@davemloft.net>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, linux-crypto@vger.kernel.org,
        devicetree@vger.kernel.org,
        Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
X-Mailer: b4 0.14.2
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTI4MDA3MCBTYWx0ZWRfX8VzMLjcgVIGu
 bxlWFUdtIHgfxBkcZQNzT+Xx7Lo9fP4tOHmubsfbE051hUfOTjFvCiCV+UGBpiRc8t2bCTLtpZ8
 4jb6v6+OdBNwJDimAo0ocdGseMzHO0U3w6IyLmGTnRxzA3zdDRx1CjCZ97N3nzRAidGYzGC1pcf
 ILmZ3bek0aWb5v4+uAsBoA19cnX7JIbp8cuJEZoSKL243DAbTaidC8GpXZwAL6FHz8/itFGyWKP
 o+5d2clzpqUgMN1hlSaHjV92lqwSNYo/HwDekK1dmW5j+V3gWiIfi4tTK0Z80rZo+7hywtDf+0m
 0Bteie3naq8V1+5dRts/GlkvPxzq4TKPQF/pc+aERPyJM352RJoPn0M7Q7v0WqXS9lbDCdoxDII
 C8eIDe3w1T6kbGcObY0U4DP+8fy+IYJbga0pJGD1Ib2AUH3q7dkYwLobQmXiS3H5ikrED0bD5S4
 ZQ32yqhGt9uECCNFEZw==
X-Proofpoint-GUID: L3m1Ub-bI5vzr_Xkn6jGntAXkaCPk039
X-Proofpoint-ORIG-GUID: L3m1Ub-bI5vzr_Xkn6jGntAXkaCPk039
X-Authority-Analysis: v=2.4 cv=YeuwJgRf c=1 sm=1 tr=0 ts=6979ccfe cx=c_pps
 a=JL+w9abYAAE89/QcEU+0QA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=nchbEs_9QIawOzQC_EQA:9
 a=QEXdDO2ut3YA:10 a=324X-CrmTo6CU4MGRt3R:22
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.51,FMLib:17.12.100.49
 definitions=2026-01-28_01,2026-01-27_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 bulkscore=0 adultscore=0 priorityscore=1501
 suspectscore=0 phishscore=0 clxscore=1015 impostorscore=0 lowpriorityscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2601150000 definitions=main-2601280070
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [-0.66 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	ARC_ALLOW(-1.00)[subspace.kernel.org:s=arc-20240116:i=1];
	DMARC_POLICY_ALLOW(-0.50)[qualcomm.com,reject];
	R_SPF_ALLOW(-0.20)[+ip6:2600:3c04:e001:36c::/64:c];
	R_DKIM_ALLOW(-0.20)[qualcomm.com:s=qcppdkim1,oss.qualcomm.com:s=google];
	MAILLIST(-0.15)[generic];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_TWELVE(0.00)[17];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_FROM(0.00)[bounces-260246-lists,devicetree=lfdr.de];
	DKIM_TRACE(0.00)[qualcomm.com:+,oss.qualcomm.com:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[oss.qualcomm.com:mid,oss.qualcomm.com:dkim,qualcomm.com:email,qualcomm.com:dkim,tor.lore.kernel.org:helo,tor.lore.kernel.org:rdns];
	TO_DN_SOME(0.00)[];
	PRECEDENCE_BULK(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[abhinaba.rakshit@oss.qualcomm.com,devicetree@vger.kernel.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:63949, ipnet:2600:3c04::/32, country:SG];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[devicetree,dt];
	MID_RHS_MATCH_FROM(0.00)[];
	RCVD_VIA_SMTP_AUTH(0.00)[];
	RCVD_COUNT_SEVEN(0.00)[7]
X-Rspamd-Queue-Id: 74FE59E5FF
X-Rspamd-Action: no action

Add support for specifying OPPs for the Qualcomm Inline Crypto Engine
by allowing the use of the standard "operating-points-v2" property in
the ICE device node. OPP-tabel is kept as an optional property.

Signed-off-by: Abhinaba Rakshit <abhinaba.rakshit@oss.qualcomm.com>
---
 .../bindings/crypto/qcom,inline-crypto-engine.yaml | 29 ++++++++++++++++++++++
 1 file changed, 29 insertions(+)

diff --git a/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml b/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml
index c3408dcf5d2057270a732fe0e6744f4aa6496e06..1e849def1e0078feb45874a436411188d26cf37f 100644
--- a/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml
+++ b/Documentation/devicetree/bindings/crypto/qcom,inline-crypto-engine.yaml
@@ -30,6 +30,14 @@ properties:
   clocks:
     maxItems: 1
 
+  operating-points-v2:
+    description:
+      Each OPP entry contains the frequency configuration for the ICE device
+      clock(s).
+
+  opp-table:
+    type: object
+
 required:
   - compatible
   - reg
@@ -46,5 +54,26 @@ examples:
                    "qcom,inline-crypto-engine";
       reg = <0x01d88000 0x8000>;
       clocks = <&gcc GCC_UFS_PHY_ICE_CORE_CLK>;
+
+      operating-points-v2 = <&ice_opp_table>;
+
+      ice_opp_table: opp-table {
+        compatible = "operating-points-v2";
+
+        opp-100000000 {
+          opp-hz = /bits/ 64 <100000000>;
+          required-opps = <&rpmhpd_opp_low_svs>;
+        };
+
+        opp-201500000 {
+          opp-hz = /bits/ 64 <201500000>;
+          required-opps = <&rpmhpd_opp_svs_l1>;
+        };
+
+        opp-403000000 {
+          opp-hz = /bits/ 64 <403000000>;
+          required-opps = <&rpmhpd_opp_nom>;
+        };
+      };
     };
 ...

-- 
2.34.1


