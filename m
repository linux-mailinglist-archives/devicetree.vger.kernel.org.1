Return-Path: <devicetree+bounces-220982-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C966B9CACF
	for <lists+devicetree@lfdr.de>; Thu, 25 Sep 2025 01:43:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id E1FAC3A6DAE
	for <lists+devicetree@lfdr.de>; Wed, 24 Sep 2025 23:43:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CC2DD296BA5;
	Wed, 24 Sep 2025 23:43:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="f4m4foyo"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56A8A258CE7
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:43:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758757394; cv=none; b=l/NAUpD9rZv1KRHyoJ5uAPo50llHJU+vkGmco7US7RpcTgaYVbdAaHFoiblIEbqVlk9P/1Nrl5HX854BqKI1GRy4M3/VKRYT2AEJNbDP1OdwAvASW3bnUscVTqGYtrlVkx0aj7q3q1I9v6xikjaUDuAi2XdZ+1wQAXlicuXkrSI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758757394; c=relaxed/simple;
	bh=F2qzhll4rnV6qp4p+iiemJejeTwjSJOcKtQj7uM8PY4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:To:Cc; b=gVALS6z4CgkoWCQv/QL4yJqRhfj8D4lWy8Vz5qwycd4wtd0kpfF57vNIKZ5lX+4AOvuDrnzclT6uUNpaP0Wc046/3Wz3Bcgf3nnY35+5tR7tGTlJhwBxpOdvAxxOSd/GQR153fc3cSfzjgq1ydhD1FmVEBz+Mkiz3yR09ZmOOYk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=f4m4foyo; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279872.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 58OCvxG1021502
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:43:12 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:message-id
	:mime-version:subject:to; s=qcppdkim1; bh=OE90dQO3EfHsg8dQTQQGWw
	3g8iNVOW0A6GZ45GxtMpI=; b=f4m4foyoqc+G0fXpjRNgXvG8a0vFSVAwIiZgGu
	L4jgAWGFVxJ/iN1ANyv7hK6DmiVrLC6TJ/1qcI//ehARIVqgrbb+Ayq8Em8wxpL7
	6Ttm9AMGrMom7w7zNidCiYd0ifAopujmEHPPz/0F8AR49/76gwcqDnHs60/Khft2
	KeNXA//jSQQLGBRYRjIdcVMPM2cQ3Xxvi6DoskZrEsKK6crr72MWBep9bHyuF1ZF
	mmY7lmUfpQU/gnutlyYNMpQxsGu7AqKzHENbFT/VDUf8qsdBCcLDaQb8v0UXo4M1
	cUGejLpDhPdiZboLFUwpZUpm3PUk37fitU8Gu4PNREFDjyQg==
Received: from mail-pf1-f198.google.com (mail-pf1-f198.google.com [209.85.210.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 49budadmgb-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 23:43:12 +0000 (GMT)
Received: by mail-pf1-f198.google.com with SMTP id d2e1a72fcca58-77f14f6a553so1364792b3a.1
        for <devicetree@vger.kernel.org>; Wed, 24 Sep 2025 16:43:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1758757391; x=1759362191;
        h=cc:to:message-id:content-transfer-encoding:mime-version:subject
         :date:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OE90dQO3EfHsg8dQTQQGWw3g8iNVOW0A6GZ45GxtMpI=;
        b=G/3Wy5HQlTBfn9ADDXmwBseSrIa/k4seoNBuD4YEbSBDwmNcwaSnd1uLQHjAM/yH3I
         UWq3EUOjlcG9i9SXFIhO2PhVyxh7wTaEoCXL1pTdiOnGrjAfV6k+dotf0BsG6hCzW7ah
         6mzmHwmC8B5gddLxWga5PyMY3gLSGw1A02xLNISEWzHLhjS0r7YZH3fXh6QpFtdKf2vF
         GmH/2AmSiqXWv2lhXWjbY1dVU8KuJYBeKJcQ4HKoDTX40uYgyHpMjc1a8kIu91xvkEqB
         2RwDC7Zg8+j0tgKV8KXgXGD7TLGs6I1WYptvZ/wBRg7+aZHGfWvotQeEn0PLqERFPTiA
         J1BA==
X-Forwarded-Encrypted: i=1; AJvYcCXRNsagAsW/jph+yaw4PwZD48rrfUdmSTYXlp88mhDooVLfSW4pa8Sqa6J+KlpcQ2jCLAxfBpb/MuoD@vger.kernel.org
X-Gm-Message-State: AOJu0YxrhwFPAStLROclKKsYWt7WNyAUhp1msZsauuSuN+sLWwRT43kk
	VRB2hw2Hv/4/N8X7J7OGz/W/fV+ilYupbn6MGdpJvYKf9eVpVxhCGkzf+TvegrIbzFxxtliSkeR
	lyvpESPOTp7PP4NQqcgLuQSouCBvw+5PhSk0q0eAibNDsdM+7UC+p/53NKSHFqX7r
X-Gm-Gg: ASbGncsGp60KV8GDio8MJrNMJmj1rTFYHF1yN+PBrSYeDqu+l7YkaBaJm03ySyMlTUy
	cr8/M0q8VZSWe0fO7Xa/o9tJ1tUupHrrULaPd7FRn9jRo9t0+OIM/hooYRa/Dog9hgnasujergI
	dGr7DTWhf0CjWI9nuxbKUEoCjEbFBcE8tV9vRB3nQk+3HSs0gBtbiOK+p7ElqfTt21mBaGLctG8
	YjgUnJgLxzBuR2YV3GFf7tm3s9JYlMxga6s1IuGCQ5ORywomXL0r4zxDDsp6JX/MCqfs/B1AhfO
	7g1QP3Ibop+1iBPafIc2UXHDo3oJAd9O7Xej8qjLL/tWtTxIX1NdInxpSvotPKoNx+39iRPdTW+
	q+acOi6MGs7nhZfI=
X-Received: by 2002:a05:6a20:12c5:b0:2c2:f61b:5ffd with SMTP id adf61e73a8af0-2e9a3aac3damr690806637.10.1758757390970;
        Wed, 24 Sep 2025 16:43:10 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IEdM4ijDgDGRv0rYQ1+JtfSlIAWMcIT/CoFmlBklSjquUqoOjfg/bMsMSIQAlO9tyRIZe25IA==
X-Received: by 2002:a05:6a20:12c5:b0:2c2:f61b:5ffd with SMTP id adf61e73a8af0-2e9a3aac3damr690775637.10.1758757390530;
        Wed, 24 Sep 2025 16:43:10 -0700 (PDT)
Received: from hu-jingyw-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id d2e1a72fcca58-78102c2733fsm183430b3a.94.2025.09.24.16.43.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 24 Sep 2025 16:43:10 -0700 (PDT)
From: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
Date: Wed, 24 Sep 2025 16:43:06 -0700
Subject: [PATCH] dt-bindings: mfd: qcom,spmi-pmic: Document PMICs present
 on Kaanapali
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250924-knp-pmic-binding-v1-1-b9cce48b8460@oss.qualcomm.com>
X-B4-Tracking: v=1; b=H4sIAAmC1GgC/x3MwQrCMAyA4VcZORuYLRvEVxEPbZdtQRZLIiKMv
 bt1x+/w/zs4m7DDrdvB+CMuL224Xjooa9KFUaZmCH0YegoRn1qxblIwi06iC9JYKMaBaGaGllX
 jWb7n8v5ozskZsyUt63+0JX+zwXH8ALob7q97AAAA
To: Lee Jones <lee@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Stephen Boyd <sboyd@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, aiqun.yu@oss.qualcomm.com,
        tingwei.zhang@oss.qualcomm.com, trilok.soni@oss.qualcomm.com,
        yijie.yang@oss.qualcomm.com,
        Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>,
        Jingyi Wang <jingyi.wang@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-99b12
X-Developer-Signature: v=1; a=ed25519-sha256; t=1758757389; l=1296;
 i=jingyi.wang@oss.qualcomm.com; s=20250911; h=from:subject:message-id;
 bh=veyw1AffRHwKPZqeOLxkvoQHic8p84t5kQzNdVCN5bg=;
 b=pqB9lAf+wUUmxxd20vqrwB/ZnE0I7HxGq5hp/VrP2fLjSw04F5rzW+wbuau5E0nOG2rApbvIm
 IbrLWuCbZYdCHSJdwHRhT/G2j915pwIbZ78vPVHARa7sJxPVj64MWBr
X-Developer-Key: i=jingyi.wang@oss.qualcomm.com; a=ed25519;
 pk=PSoHZ6KbUss3IW8FPRVMHMK0Jkkr/jV347mBYJO3iLo=
X-Proofpoint-GUID: g08hpxB01a2M5fSYjb6qfTPLn1hYx4_y
X-Proofpoint-ORIG-GUID: g08hpxB01a2M5fSYjb6qfTPLn1hYx4_y
X-Authority-Analysis: v=2.4 cv=Yaq95xRf c=1 sm=1 tr=0 ts=68d48210 cx=c_pps
 a=m5Vt/hrsBiPMCU0y4gIsQw==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=yJojWOMRYYMA:10 a=EUspDBNiAAAA:8 a=s4ALIw3xRCdf1ZLDqIgA:9
 a=QEXdDO2ut3YA:10 a=IoOABgeZipijB_acs4fv:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwOTIzMDExMyBTYWx0ZWRfX3BvBp1Jg0Joc
 Gq3+sU/WjBKELskRl0bRu90MQP/YxKTnxpge5Kivy9zR1U/RD6FJkqs8RMf45RUgRTEujX5CT/T
 2KbDbNqBvZhCTDmCt81HCO1x3U7eZqe+SmUuXsejP3lOqzecsjFHd8cQ6lAY+ymILSNAsWr+5Le
 cair+xdT6JyDZTG0k4aYDkdFRVqrLH9+RlBER1WXdNrhDXawNnx/x0xcuCV+UWdiA2xMAKDCJgW
 h5Tn8y50FxE9x/ttH4R74Lhws9CHD6CdHd2HjfdXl9XslWAd3vYj3tFtkaQGCkpwpCCibkfTRRz
 jMmrBW/0F6QKWYyMBAGk6gqm2NqrESWPoUGOba0LtuJZ1l+OMLY2152MBMdxVlG1tDl8Z2lgYKH
 MvrRpcIj
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1117,Hydra:6.1.9,FMLib:17.12.80.40
 definitions=2025-09-24_07,2025-09-24_01,2025-03-28_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 clxscore=1015 suspectscore=0 priorityscore=1501 phishscore=0
 adultscore=0 malwarescore=0 impostorscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.19.0-2507300000 definitions=main-2509230113

From: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>

Document compatibles for the pmh0101, pmh0104, pmh0110 and pmk8850
SPMI PMICs.

Signed-off-by: Jishnu Prakash <jishnu.prakash@oss.qualcomm.com>
Signed-off-by: Jingyi Wang <jingyi.wang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
index 078a6886f8b1..427023cb11c5 100644
--- a/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
+++ b/Documentation/devicetree/bindings/mfd/qcom,spmi-pmic.yaml
@@ -78,6 +78,9 @@ properties:
           - qcom,pmc8380
           - qcom,pmd8028
           - qcom,pmd9635
+          - qcom,pmh0101
+          - qcom,pmh0104
+          - qcom,pmh0110
           - qcom,pmi632
           - qcom,pmi8950
           - qcom,pmi8962
@@ -87,6 +90,7 @@ properties:
           - qcom,pmk8002
           - qcom,pmk8350
           - qcom,pmk8550
+          - qcom,pmk8850
           - qcom,pmm8155au
           - qcom,pmm8654au
           - qcom,pmp8074

---
base-commit: ae2d20002576d2893ecaff25db3d7ef9190ac0b6
change-id: 20250923-knp-pmic-binding-96c933599fee

Best regards,
-- 
Jingyi Wang <jingyi.wang@oss.qualcomm.com>


