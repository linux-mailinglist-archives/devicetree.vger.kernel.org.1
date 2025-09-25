Return-Path: <devicetree+bounces-221022-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5FF9FB9CD59
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 02:17:45 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 3A84D7A9DA0
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 00:16:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E20C114E2E2;
	Thu, 25 Sep 2025 00:17:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="fWoTjdib"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A52E14AD0D
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758759455; cv=none; b=PmGP/ikN+ej0M+vzVunskpPxRnjh7i6aDD/gTmH82Gs7cuWM/hKBuRa5caB6o7NoFtNm8a9OLdAFoOgvlqifHnwR2X7Pc796oDFROrW9fzdxKOOxtkWSkWnOYbBoXVxj54jL1UKvbCnv0Y0Pp6HmJm5r1uHH9Nc/G8FBu3rkNfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758759455; c=relaxed/simple;
	bh=CD+1t7VjadwylddGJH0VCDFEMrl4ppThYBGWLrYy6dw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=tpEJsJRyPO7wUXvAe7RtP+GRJb6wUolMZ7mmdxTcDMgOeZJbDCVnyQHk5kc/U95TX1GJYhXGhz5hkxo3Xu4ORiNuX9Ta7Cc3ttn4lbjLnsQ2YC+QfrDx7nu9Xh5LvR1re37ClfDufrV6HRe4/ckIzolaiV1XAcwmEWR+SljlOgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=fWoTjdib; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58ONiZxQ022454
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:17:33 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	nU5YioCkodtgHvtkt3RuERPvJ8NSz/k3anxpiiEJffY=; b=fWoTjdibtcx8nd0G
	nXFIZB8M9teVy96vvLxE3Qyqo839FWxJ+ZIt9ndWQFBe5cym9JY09cgEhY5mvAiR
	0fckoVuABf8Frs0bJZVk/FDzYKKXXTE2yOQop1L07D/WIcg5pPL4dfTXIAxBM+AX
	kGcWVG76qwFuQxYtX6GfAChKEoxBQuKly2uzpHNUp4uid8rdHRVHJn0FCUdS8Qn3
	CxJFu8f9oLILq65MY7nE/raPlqrn5mx0TmsPrfKeXNyjU1ToJUgKaa6eZqIGsQFq
	EDAGB7GFsUTYIBnqQzpaWe4tGfPdeyAnovKD1xPkvD3nVgeuod40zvmh6zDtrLQo
	nkVYLA==
Received: from mail-pf1-f197.google.com (mail-pf1-f197.google.com [209.85.210.197])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49budadpt0-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 25 Sep 2025 00:17:33 +0000 (GMT)
Received: by mail-pf1-f197.google.com with SMTP id d2e1a72fcca58-77f5e6a324fso748530b3a.0
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 17:17:33 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758759452; x=1759364252;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nU5YioCkodtgHvtkt3RuERPvJ8NSz/k3anxpiiEJffY=;
        b=MSmosIm5jmnB/SY+cAi2wvKqlAugZaXdjOT+CATFFVb2UvucYGWbr9RoW6/eKk467e
         rHo3OtGnN6UeJD1v+Acfwx+NyvpKFwC87GXHUEAyhABInIweF+6Dn3vc9LjPTAKmqm6U
         bmt9VeGt7GYnegzSAkFu2q/NEL/8xrw+ZbUPX6a2xw1dg+oCcuipSBE/7lqFrJKEeFwQ
         kR60hn/kurG56x9XQgUL/NmYZmeHQkvD3ydLw7Mr4rKzeoq0K0tBXXu4e/SoIXGdbtI4
         AuYFBWFewsn0UbSaTmO3Ss38YDv/Yl4jj4/spmLjbttSt75Aa8x7NPnDuwtQ8XBqmEel
         rKbA==
X-Forwarded-Encrypted: i=1; AJvYcCWdmirqEQx+emyYetiY0NXJjj8Gnf/yN1FBmOuExOQqKgXv7PDPBiIRrRrj/7nriqEg2pZj3c98IXu3@vger.kernel.org
X-Gm-Message-State: AOJu0YxvVpeWoRpsSJ+o8dPaVMUuzp0OMDfJJsTPD/bTbZmcFM9+WqCS
	NODWMXohJ2A6EvAny4mVztH6NlLlq/xnVqZkuhYgBALtBaoPQsoQKWI1Sk7bJoifYHoOAMeVHAG
	vw1QWa4YPDjqDcx1gGJQIe2q6DHu+nqXRJ90uG/fyz6lUPzT74SllIA/HcyV4Digo
X-Gm-Gg: ASbGncvNvzCPRcDsU9eWEiK4/HKyW0oM9gD4N4A5g6DEcRzsJTxSCYIMdWVuJDPdvsq
	17Gau4MdjgwNk5DHpMBGqqHPBNoVZAMSqoLKZ8MiWQ7U41a9itgD14N1BPR7lDVu2yGYPsSoBpl
	SsxfcfVyqcRywLBy6sLoyNHnvtP6nqWAo4SRfo6MLA6Noxj907PHYSR5MjaBW0xRo3TWctcoVjL
	Tiqiyki4RAP9kmiB62SalC+uSqkz6PKSQhi4/fdH4B6yxp53W3p0/dF2d27y61ZQR/Z07wRZr5h
	0vThEYbcC9W9zLtyFkz1qCVugkBJC2AiMnCyVhTdwRaKsWuLQnS7GsyvMz4bYnr390G08N8rkvk
	9wEPhUp6zoGrG/8c=
X-Received: by 2002:a05:6a00:1acf:b0:77e:81fb:709d with SMTP id d2e1a72fcca58-780fce9ed1emr1694422b3a.16.1758759452029;
        Wed, 24 Sep 2025 17:17:32 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFCmnC6D9ub8La7o73W6rswraBVe5NAYIjSRFJAf8tJOpz+cXdZ3JTyqDPDyYMWBgKksUL+sw==
X-Received: by 2002:a05:6a00:1acf:b0:77e:81fb:709d with SMTP id d2e1a72fcca58-780fce9ed1emr1694403b3a.16.1758759451636;
        Wed, 24 Sep 2025 17:17:31 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-7810238e6fasm262748b3a.1.2025.09.24.17.17.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 17:17:31 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 17:17:18 -0700
Subject: [PATCH 01/20] dt-bindings: arm: qcom: Document Kaanapali SoC and
 its reference boards
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250924-knp-dts-v1-1-3fdbc4b9e1b1@oss.qualcomm.com>
References: <20250924-knp-dts-v1-0-3fdbc4b9e1b1@oss.qualcomm.com>
In-Reply-To: <20250924-knp-dts-v1-0-3fdbc4b9e1b1@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758759448; l=903;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=CD+1t7VjadwylddGJH0VCDFEMrl4ppThYBGWLrYy6dw=;
 b=GuSRx/ozZ/Ihssh4Bfgjn1sIS6Uwjt7Wp6oR1Ivkie4ZHTS6QdQbw36+FWA4AYwykUCnZFsdI
 T840aEw1GOsBKkNONJpSELvKTwpf+7idCW9qGGc3dBtU0SxDEd1fCQd
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-GUID: ZhUvTmMrHbpvI6K9nnvqf-TESmLBm1TF
X-Proofpoint-ORIG-GUID: ZhUvTmMrHbpvI6K9nnvqf-TESmLBm1TF
X-Authority-Analysis: v=2.4 cv=Yaq95xRf c=1 sm=1 tr=0 ts=68d48a1d cx=c_pps
 a=rEQLjTOiSrHUhVqRoksmgQ==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=-z8ZePDt8oiYOmukcGMA:9
 a=QEXdDO2ut3YA:10 a=2VI0MkxyNR6bbpdq8BZq:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDExMyBTYWx0ZWRfX73FdoIw7MSn8
 Ff9l7Ed0KZSZo+czTRQxm+JFQn9Nc4d5rTtzcDzpzMnyicnBR7/DkC0a/oOOiBo211l6ZjtreO9
 nh/f8FBL6Gi/ai+M2tVF5anYw1VrQkp9NCvg1agp+U+IVZuqWGLRd36GoIkCTu13NLnpSc82DYq
 bpcyKaSsLOPsME7GWCP0eYNj8ke3G9FrEc6Cjo9TLfJYgjUtD8bpaKm0n2iZPh23RdOYhgJvL4N
 tJnjRSorpIYOLuRaJUTS3Q8gqTL/AvanMN91EEJWlomc4kmckWGBNpkOUsjxnWzRDxNMXIYFhu+
 IEPnVntyq0KjXjGfs7SERzQzgyJjgCZimpP+3MtmOouRoh62r3fvtbJC6eH2QAlfBaKFvEUEqqg
 V0SdJUrQ
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 suspectscore=0 priorityscore=1501 phishscore=0
 adultscore=0 malwarescore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509230113

Document the Kaanapali SoC binding and the boards which use it.

Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 838e3d4bb24a..0e84220e835c 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -321,6 +321,12 @@ properties:
               - qcom,ipq9574-ap-al02-c9
           - const: qcom,ipq9574
 
+      - items:
+          - enum:
+              - qcom,kaanapali-mtp
+              - qcom,kaanapali-qrd
+          - const: qcom,kaanapali
+
       - description: Sierra Wireless MangOH Green with WP8548 Module
         items:
           - const: swir,mangoh-green-wp8548

-- 
2.25.1


