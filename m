Return-Path: <devicetree+bounces-250648-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 45B39CEADEC
	for <lists+devicetree@lfdr.de>; Wed, 31 Dec 2025 00:36:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id ACEF0301AE37
	for <lists+devicetree@lfdr.de>; Tue, 30 Dec 2025 23:36:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E788C2E62A2;
	Tue, 30 Dec 2025 23:36:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="RGv1zx62";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JA1u50St"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F3F02DEA64
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 23:36:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767137772; cv=none; b=dzR1uDTGbSOR2CH7W+WVynEpaP6AiXN2S+QH2iAuIObua3EUZYM7o+vjq1wLPGWbfBnVmyP32wro8nLgOc981z6Py5jvcaw4oA87s86+kMS2BPLoaYHQ6fQItYbr1ksaKEApUWj78TLVMNIR+IfZcCMfd0b4rlODIoEhyupPjn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767137772; c=relaxed/simple;
	bh=jfQ+/qPGweFSmUYX5ResG9wJ7q+g2knAiJRbFI0KjZs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=B4bOVY6O8pRuczlC+K0/vZS9ykbnj7AgdsJ/nX22Dpu/b0y0bHsIpGn+RuPiWFZJGCVJCGih3IGVHESlMOOUfaFFmSKv65EuWfvnWMyhxSntVJeFBkIHpNdKmT4SQQwlg9G1AZRpOG4izwPiFtR7vKkxy5UOTF9QpK82CGutHDw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=RGv1zx62; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JA1u50St; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279863.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BUNZYH31286319
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 23:36:10 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	2VC9sljONxXySxZ5faFBLsjMd99t8lT05SJh169vrPI=; b=RGv1zx62vhDXAxbK
	HyZp6ZQ/yYusA2BBaz1JYdIYGN6G02a/zx5BDhtpC7mwOoHflT6KB8ZKAbHXsmAe
	MuecGDOOs/aUlA82l8mL7tle68UiZcDenQMyY1H+fz+nJaEeh7RDLaJbKS2ez2Ix
	LtwBpYuMyTS53fyODFn0jU8R5gaqZWG1YfMKO3UYHj6JBHkpa3tD4Sk4z+LMCeiD
	QEVVDbPMZCHj2MkTLn7vC7FQ0zkqxeYMwGL0qnondUw32tJaDkxfVjuET/95FePK
	h6ff/z1CSIFoirlhj7mkDVEjTlSAcyrl/pCy55KAYY/NWQphD4x/OO1IUrF3Ry9V
	sMNwzA==
Received: from mail-qv1-f71.google.com (mail-qv1-f71.google.com [209.85.219.71])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4bcdky1df1-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 23:36:09 +0000 (GMT)
Received: by mail-qv1-f71.google.com with SMTP id 6a1803df08f44-88a3822c06bso300546446d6.2
        for <devicetree@vger.kernel.org>; Tue, 30 Dec 2025 15:36:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767137769; x=1767742569; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2VC9sljONxXySxZ5faFBLsjMd99t8lT05SJh169vrPI=;
        b=JA1u50StNnXpmHmEEjZUg5RcF16ogq3Fo6xcwiHiH4h74DFDvEcWivdgIEHau8NIcl
         d7rSbUYRrQZPWdgk78J7P+w5xQM7g80EG6379MXiz/r/SKwVukg8edidax7zaqmsIBgk
         g+2hE5ve9ut1J6cG2iNhUSjktKuvheCUZ4PvGZoVcKlCMIDC5NFBdq8coXav6DLs5LtO
         vF6NJIzejyHc3SfwamEWKBeAozboX3xDcrYLQpTbCfPgGqBSsrGVVKrG3DEefi8ol5th
         onD9vN1O/qOMcG0Xf6Y6mLobbbd3ADrgpEtk/w7I9qOQbhyfPqg+t8LE8OBPrALKnjKk
         OF2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767137769; x=1767742569;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=2VC9sljONxXySxZ5faFBLsjMd99t8lT05SJh169vrPI=;
        b=aSBF0EdGDhft4fq+eTTIM1i6SWVJNHxicietHYFTz2D8e6dJqakhDzRAZQFahjj4xr
         i3T2+lBsM3msLa6BfWomGklPMKNBmam83DXiYO/x+d0sGgvwEejWrAztzpw1W61a9Zif
         dqyVQlmjU3t0rdL5Ra+bST2gGzvSVQE36FbyDgzNtBza3PP/isOUPvqFkspMkMRXoOpp
         YgbjQXvfvl84iTLpIPRQiSXC5bOiC1sRr7pqR9y77hQsCes1TWxk7z+Fhr+lzQkOMpyB
         khWD6nWc6WLUHu8rh6XywQIPgH+Oi6JOQ43jdj6vRO1P5+bkXwGJ2LSa019mAdn3TxrZ
         0h2g==
X-Forwarded-Encrypted: i=1; AJvYcCWnIlT1+uIhW9t+gmYBU34zLyZDuI++aadc2dNJg1ueDmUphUPlCnyebq7WtR0kSTQtDXgKMFQaPeVk@vger.kernel.org
X-Gm-Message-State: AOJu0YwAXGpFYbSOFzfe3rO9p9RAQ7mjFesnvRzvhrfsWAo1FZW5j1Fv
	FrCck94MJsVCQA3S0AwQ6P9OvCd0+wjgBUKMxl65pI/iXj4T1yE9zmsMAbRe85GnuvrWgL3hwrE
	cuTyGvXR2d4QnKSZisO5HupganGVC7mCr58bAB4uzN95oAXIZsf6u9nLahlZzk+us
X-Gm-Gg: AY/fxX4nUg64kgwyv1GcSGMOugZtIT3tpXFE+ggBFdJGUZh5zYKN6z9ATSrYzV5ZMX1
	NFCkq8rb/vX+IeaPJZ6gERLNK1HEOitVgVgmzyEb94LmJdrHAyKhF/zq0tfRmvdHKaKEPpcM0xF
	1C0RuvgtZRM6mgJfdI1eFgEGyYTriIP/nGsgP1ExiQFq0ypoalmulpU0uUNFOUxHVhFwVuF2Rgd
	ovQYaCjpqf1zui2Osv8LQiQjnt7AvK+1PDw/GhbSvrF6r8xtfLxeqlHvw7QGqVbCsX5A32Q9Ome
	12jVNw/L6evSoIrE4oRzQrccFrxTQ0lWf/aaygVRmpBFIBjJ3SrVnOTGtw4T2P/Wn1MFpxPIyAa
	2C9WZY8UWAp9A/K/DbUd9MMOrWbl7rKPXGdQg4tKS0zzWLadAsTjsuteygCxkiliB9hGdjtt+uE
	ldvNhcUb4yL6qcsGHqojpwwSM=
X-Received: by 2002:a05:622a:7506:b0:4f4:ee07:91b9 with SMTP id d75a77b69052e-4f4ee07921emr180397971cf.47.1767137768817;
        Tue, 30 Dec 2025 15:36:08 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFlBVfMEzLDzQI3LEOKbITeufy2b4hcGo237iBWEci59bAC4PLtF8ByBtf6K2+ozbQJPRmFew==
X-Received: by 2002:a05:622a:7506:b0:4f4:ee07:91b9 with SMTP id d75a77b69052e-4f4ee07921emr180397771cf.47.1767137768382;
        Tue, 30 Dec 2025 15:36:08 -0800 (PST)
Received: from umbar.lan (2001-14ba-a073-af00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a073:af00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-59a18620337sm10349574e87.86.2025.12.30.15.36.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Dec 2025 15:36:07 -0800 (PST)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Wed, 31 Dec 2025 01:35:51 +0200
Subject: [PATCH 01/14] regulator: dt-bindings: qcom,qca6390-pmu: describe
 PMUs on WCN39xx
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251231-wcn3990-pwrctl-v1-1-1ff4d6028ad5@oss.qualcomm.com>
References: <20251231-wcn3990-pwrctl-v1-0-1ff4d6028ad5@oss.qualcomm.com>
In-Reply-To: <20251231-wcn3990-pwrctl-v1-0-1ff4d6028ad5@oss.qualcomm.com>
To: Liam Girdwood <lgirdwood@gmail.com>, Mark Brown <broonie@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bartosz Golaszewski <brgl@kernel.org>,
        Marcel Holtmann <marcel@holtmann.org>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Jeff Johnson <jjohnson@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Manivannan Sadhasivam <mani@kernel.org>, Vinod Koul <vkoul@kernel.org>,
        Balakrishna Godavarthi <quic_bgodavar@quicinc.com>,
        Matthias Kaehlcke <mka@chromium.org>
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-bluetooth@vger.kernel.org,
        linux-wireless@vger.kernel.org, ath10k@lists.infradead.org,
        linux-pm@vger.kernel.org, Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=2272;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=jfQ+/qPGweFSmUYX5ResG9wJ7q+g2knAiJRbFI0KjZs=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBpVGHj1fMH3UB6gpXfhbLP8H2wwG2BrpPCWb2KN
 W14PxzmW4KJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCaVRh4wAKCRCLPIo+Aiko
 1aS6B/0WaxFzceLPR9rYkNcOBfiwsm3KXXTCqJFMZCoo7hzgtl31MTKK1YmnJmrglbnTplPzDaq
 Pyu0OtP8hln83ySBB0iANbOdhH/AgCV0aO1b+W1sp5lBpmrylJ6Oh8ruEnJen0A/eTE1NIDDPBH
 hISbmUKX7ppK83kFZFin4NwSrcY3w0WXP37WsgQsh585d77vqaYfjmXOwuX5Lf2gUSThmG3hPRa
 fey+VdGjt/g1yKHvVHt4Q2gfJ2dwTE8eSyTDuER8B8tNqyGkMMwaqf1JDVOVJBzUqXDKDVNNtGC
 IiakNaP++kNmYQifz0jHznau96e65Bq4orSg7400+Knic4Z2
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjMwMDIxMSBTYWx0ZWRfXxt867UaEF1Di
 7iRrjQbbvrxlmyZrV+OcaqUrKwnTDnBiVjwYFGfbkCOmZGr/sK7r5L1VeOj4KGpGIuxd2cLRtza
 X9CVy9EJbXuSk/ho+5ZwWZ8JMUqcU8tl5FpMcifAO/REhgnowKlp3EXFyzrxZPkBF6WXx43ebd0
 c2z4c1tvN5cwjQe+m45OLVYjloq5A7jp10vNnAv8cDHJW0RxIEb1e3iFl2TDZTA7z4y0V0ZJSY/
 SEBNRQ/l1m/yrVoxYQaqTo8GinMLBIdfPi7gnA2Tj3mNYrZPoxTZPklhcYWEbiqeImnUwd62OAv
 SIX+4XHjRYcaLj+Xn0ymsKEs2YXUkSZVGzFfZExeM1xE1PYzWuK6GKETk2CAI29s6sNN1YzwxAn
 6SIOGVse+LJHuXcLMPEpiDLTESJx5NtPfFA9sJfj2vMn40vhGniU5i3LoVXc7gNweaZAQcBRt/o
 HSDPA2yzaHxkv1+isQg==
X-Authority-Analysis: v=2.4 cv=Wskm8Nfv c=1 sm=1 tr=0 ts=695461e9 cx=c_pps
 a=UgVkIMxJMSkC9lv97toC5g==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10
 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10 a=VkNPw1HP01LnGYTKEx00:22
 a=EUspDBNiAAAA:8 a=FaKla9bQ5TyOH8GUl7IA:9 a=QEXdDO2ut3YA:10
 a=1HOtulTD9v-eNWfpl4qZ:22
X-Proofpoint-GUID: WdEJOQbq03wCnPwX6Lu1GLmSKEB4q3b7
X-Proofpoint-ORIG-GUID: WdEJOQbq03wCnPwX6Lu1GLmSKEB4q3b7
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-30_04,2025-12-30_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 malwarescore=0 spamscore=0 lowpriorityscore=0 priorityscore=1501
 impostorscore=0 clxscore=1015 adultscore=0 bulkscore=0 phishscore=0
 suspectscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2512120000
 definitions=main-2512300211

WCN3990 and other similar WiFi/BT chips incorporate a simple on-chip PMU
(clearly described as such in the documentation). Extend DT schema
covering other Qualcomm WiFi/BT chips to cover these devices too.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 .../bindings/regulator/qcom,qca6390-pmu.yaml       | 36 ++++++++++++++++++++++
 1 file changed, 36 insertions(+)

diff --git a/Documentation/devicetree/bindings/regulator/qcom,qca6390-pmu.yaml b/Documentation/devicetree/bindings/regulator/qcom,qca6390-pmu.yaml
index 47c425c9fff1..dc88523f46f8 100644
--- a/Documentation/devicetree/bindings/regulator/qcom,qca6390-pmu.yaml
+++ b/Documentation/devicetree/bindings/regulator/qcom,qca6390-pmu.yaml
@@ -18,6 +18,11 @@ properties:
   compatible:
     enum:
       - qcom,qca6390-pmu
+      - qcom,wcn3950-pmu
+      - qcom,wcn3988-pmu
+      - qcom,wcn3990-pmu
+      - qcom,wcn3991-pmu
+      - qcom,wcn3998-pmu
       - qcom,wcn6750-pmu
       - qcom,wcn6855-pmu
       - qcom,wcn7850-pmu
@@ -76,9 +81,18 @@ properties:
   vddpcie1p9-supply:
     description: VDD_PCIE_1P9 supply regulator handle
 
+  vddch0-supply:
+    description: chain 0 supply regulator handle
+
+  vddch1-supply:
+    description: chain 1 supply regulator handle
+
   vddio-supply:
     description: VDD_IO supply regulator handle
 
+  vddxo-supply:
+    description: VDD_XTAL supply regulator handle
+
   wlan-enable-gpios:
     maxItems: 1
     description: GPIO line enabling the ATH11K WLAN module supplied by the PMU
@@ -132,6 +146,28 @@ allOf:
         - vddpcie1p3-supply
         - vddpcie1p9-supply
         - vddio-supply
+
+  - if:
+      properties:
+        compatible:
+          contains:
+            enum:
+              - qcom,wcn3950-pmu
+              - qcom,wcn3988-pmu
+              - qcom,wcn3990-pmu
+              - qcom,wcn3991-pmu
+              - qcom,wcn3998-pmu
+    then:
+      properties:
+        wlan-enable-gpios: false
+        bt-enable-gpios: false
+      required:
+        - vddio-supply
+        - vddxo-supply
+        - vddrfa1p3-supply
+        - vddch0-supply
+        - vddch1-supply
+
   - if:
       properties:
         compatible:

-- 
2.47.3


