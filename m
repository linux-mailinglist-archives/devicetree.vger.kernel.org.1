Return-Path: <devicetree+bounces-245805-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sto.lore.kernel.org (sto.lore.kernel.org [172.232.135.74])
	by mail.lfdr.de (Postfix) with ESMTPS id 01055CB57C0
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 11:17:42 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sto.lore.kernel.org (Postfix) with ESMTP id 850663001BF1
	for <lists+devicetree@lfdr.de>; Thu, 11 Dec 2025 10:17:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0C56C2FFDC0;
	Thu, 11 Dec 2025 10:17:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="Ye5GemAu";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FoKPvWrz"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69824235C01
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 10:17:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765448259; cv=none; b=Ec+6J/N0sEN8OPPViTGCpZ3ul5QjOoSf3uGZ+wYczTD/jAie3BOKTOYWqKo452dgw/2TXC9ybJQTKHbmUWfzsYZC9a1pIh8BoeMla286mtEuC/MKR9Fz2kIPJ0jEVc9bdFW6boWtbo80rAk1os8D97Hz5Fq5zOIzcIyHpJoFEmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765448259; c=relaxed/simple;
	bh=5O6EH5DVR59pp+DlTUQCdF0vmA2VG+e9rZqfOU5g5AY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=I1rkFoyHlwq/jzJ00NAJ/oHkrrC0ED6O1Mx6una7EZa/rvf3n3x/3aBvhd+HjDVvpgX6M7YZyeqjEVQfYJesz+147paeVjO33LJKWnBmScws4tWRYNN7be1hnxZRvpWuQ24WwqB+oSRThDpJE6GcwxiDeVoBF0mEtYWhJuzrssM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=Ye5GemAu; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FoKPvWrz; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BB9ZUiL342974
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 10:17:36 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	aQM+beAzq0/PR9/1IAhbmxN4dIeCVyZh+8gDQ306rQ4=; b=Ye5GemAuJ9/jk06j
	FzzLn7WgNib1AB4Ivw3JYeosNsHgoHuT/yfM6XHI+FWoQfFp/vFuR8EEkCQIspnN
	jNEbrlpyJSUWEM7Hg+FA3aBH+IZLnltOkJpjrwri1tA5ABwXjNcX5eUgGvU2TJ7w
	dgHeuaqI/IUsHG3zG7lE2HIowTCtezu5RAUUV+/N2QvYDFQ9AYBthAWAp0wlilHn
	UGSlm1q0b9FT4fdY3QaMI8JNugIHjo0+l4Il6ySoNKaC0YUUOU8UWsSDwOCw5HB6
	9R22mWJpngeWAtGiKrcRc1wp+7uEjcR+ecMf52JGOmid+MqQS2vXlcHSomscPvjN
	IaXUmw==
Received: from mail-qt1-f198.google.com (mail-qt1-f198.google.com [209.85.160.198])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4aynpvs72e-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 10:17:36 +0000 (GMT)
Received: by mail-qt1-f198.google.com with SMTP id d75a77b69052e-4ee25cd2da3so16529881cf.2
        for <devicetree@vger.kernel.org>; Thu, 11 Dec 2025 02:17:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765448255; x=1766053055; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aQM+beAzq0/PR9/1IAhbmxN4dIeCVyZh+8gDQ306rQ4=;
        b=FoKPvWrzsTmJGBvBSo33VS2EBMqojkIG5abV7+b6WgdjycM3mOklTit5agwKL1dQpK
         roncO3t/5TYGYVi/xCDOeuklBzspInE6EVonLPnJyZiEP2Rihi/tYWto7RdEKVje9D9v
         iCpFA5xdXx+QVzESsOx6YbjVTVQHB/3iVdPBfoDFtNomqOcHQIyDlYh/8nvBF/vsqdR4
         bEscW2nkRahAzdKJDXNARuucIHSGus2ZEIudMJ0IZiJgv/DLcC3WDZAt1NqclHSGVCaB
         HHKJIUt2/tjrFTYLK8HiLntTsTs5v4Zi/rGAD/OOEKvaun3a7718Z1T1vmY75Q9tjcQS
         Azrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765448255; x=1766053055;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=aQM+beAzq0/PR9/1IAhbmxN4dIeCVyZh+8gDQ306rQ4=;
        b=HGWMWKLjiZcdz1tk5E2HcqPmoDW9Ld9fg9iL3aU2eDh/w1PHBYOvg3OiW82elbr8AX
         iOc0vQHbYcTsX2ftAItXrQo2+Q9tValcyfZY+eM0dsl92F70dtkITIDgv2QdKekprC2U
         vC5BkMhacGZejesBgnfpvVLDyPvoKRfC9/Zke/nr5ghaTz9eVhEC5MYiz9z8aFkINxTV
         DddP5XuHSJKQD9zoBNTG8hmW7zbaqqYCS3yxwfdKkwAubr4n5JnvVR2aymouUWx9ocWq
         tz6l9JVxVTe6P/WmK1TgANkvrIAI998iGymGEOWADzu25FxoDPrXAfz3+Z4CsfmmactR
         5NCg==
X-Forwarded-Encrypted: i=1; AJvYcCVVEWkx7seN8EG7D3unj60tUGPFAcQSZyE1FpZkJZMQkfhVWJeZNbYh/y1Wx+KLKpGWLhZ0fggmFRZP@vger.kernel.org
X-Gm-Message-State: AOJu0YzJoeghZr4BE52v3hrASJX8IJya6anlnx72iuUEAir/jPHOsEOE
	wpOfHOyU4Hq0X86x9T4I/UhoOBTcIdtWJLeuFHV2nPKruuqDa39KS+LDCj7TRKslJHD6t/0hLSi
	Qqr02QElKoi/leZVuXHEvh0KM0Gnv7aQ/wKo8osKay6MtwFBHqedywChl4SlyqwB6
X-Gm-Gg: AY/fxX7/dHBYdH0Pq4ygWogu9zu6ByfUi6Fx4lNIVVEXnwl26ndN3ocGLbWsvgjxPME
	dpA976HwdHQxB5fiPHHKHqz6uExAdJGb553ZRRtm7whZRcG60eoMymldP15rgfrWLivHoJT7UOX
	kd/o5Pkstqce60a///qjsGd7+GQEUGvhBR+AR8IRWaHHn+Dw+BThwVqn2Vm2OHVLD8J+vBEDG1v
	4wPf07MSoY0yZIVlcGXbHm+hOBCCEtJbOjM5sFmEz/EHLy6qjhWn/OLF1COFekjDIIxhX2/5sol
	Aq3ef3iuE6fn0iVlxCVhPMNuilQO6825GhNDcBlBYqgOWPGuS+HXQ9N8Bg19pumP7bt3n4nDqAz
	bQpU/QlQfd/otNQ8=
X-Received: by 2002:a05:622a:4c12:b0:4ed:67ea:1e5d with SMTP id d75a77b69052e-4f1b1aca8d2mr79837121cf.53.1765448255413;
        Thu, 11 Dec 2025 02:17:35 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGhD02uI6mM+u3czMWURWU+Rf8X0X6cahpz7x7+b6jAm0cqjI776Kjkc4GRHr8s2czxtBq7lA==
X-Received: by 2002:a05:622a:4c12:b0:4ed:67ea:1e5d with SMTP id d75a77b69052e-4f1b1aca8d2mr79836771cf.53.1765448254970;
        Thu, 11 Dec 2025 02:17:34 -0800 (PST)
Received: from hackbox.lan ([86.121.7.169])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-b7cfa5191efsm225381766b.40.2025.12.11.02.17.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 Dec 2025 02:17:34 -0800 (PST)
From: Abel Vesa <abel.vesa@oss.qualcomm.com>
Date: Thu, 11 Dec 2025 12:17:23 +0200
Subject: [PATCH v6 2/4] phy: qcom: edp: Fix the DP_PHY_AUX_CFG registers
 count
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251211-phy-qcom-edp-add-glymur-support-v6-2-5be5b32762b5@oss.qualcomm.com>
References: <20251211-phy-qcom-edp-add-glymur-support-v6-0-5be5b32762b5@oss.qualcomm.com>
In-Reply-To: <20251211-phy-qcom-edp-add-glymur-support-v6-0-5be5b32762b5@oss.qualcomm.com>
To: Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc: Dmitry Baryshkov <lumag@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>,
        Neil Armstrong <neil.armstrong@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Abel Vesa <abel.vesa@linaro.org>,
        Abel Vesa <abel.vesa@oss.qualcomm.com>,
        Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>,
        Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
X-Mailer: b4 0.15-dev-47773
X-Developer-Signature: v=1; a=openpgp-sha256; l=1313;
 i=abel.vesa@oss.qualcomm.com; h=from:subject:message-id;
 bh=z/5gvRTWmoFviOJ7wu81OY1UNYIgxJ8SEI5ecSWoHm0=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBpOpo2dof+aL3rnK2jdg73vC/yentnjZqhl8hiI
 FDLBJ65lVaJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCaTqaNgAKCRAbX0TJAJUV
 VlguD/9LaKBZT1psoiQmykvCq3WkPzD4uhm/rHiBdU2h9d4OVfCJTW63LDiDppII9DyyXkfIkZp
 ODAbhKK4yzE+qTFZ7kQj/qymVUomu4rmzaTUzPZeD4hsNPtdG2/JBXA+Fr6pFnJepMgPUEIgb8e
 s51Qo47DKUm8h4lX69LeG4ul6grBGFEmQ6NPAz1BkZoSV+KX/bOtN84Sw8dL9NfJEpklxy5C9U8
 k8Ph4ReAdbhOmHnkRulkLC+TJ/N9JI31IsrENWIBvzzv9N1usdYWsKV9VMJPOXBeAsgMZxV5p1L
 GGndflrYjW933j6v8sAvO1Ubm3Psssc8rR5vyWMfc3u8fX9h/ad9HY/Sta5z/VbxB26Z5KZr82y
 b+0Jm/KOX7OqZenUYbgvbJtV/Fo6eNnQyjvs4dsSMIyTVjviNsTtxkyZpKEdMa/IcAeGL2pwN3z
 4k6HwpP6bWdMBAvssohB6BxczNMqNl0gXg6z7t3lcUOEYboNjARUsFnjimREhuMnDvOms2M/1ja
 4OAGQ7jDTZAPefr8DAlSEaGiQCA/SfMT6ZvGCY/sVLMeHNg5hOwQbqq0Uz/Mjw2Xmn6PesQIO9w
 Qeb7xzLxoiNlPq2kYyMBOE7pE/Th+ilqYNfASJJtlG3rWHI0X9RLq4si0zLdTPc8w1t6kJ0odTr
 cpgHdkqvHAqWnEg==
X-Developer-Key: i=abel.vesa@oss.qualcomm.com; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjExMDA3OCBTYWx0ZWRfX0jAMgIuwAQBd
 AsI/ox7FozqQuCzRJbOieupl50uGldKU9v9F1f4mX8cMY0ikcWbQYDpxUhQsWCKV2MMu8Zz9aVj
 wZ63m31vPWT5ZikKsCSZyI1WSkGkhRWb4EbM8eVGXPjaC0FzG9IvDxgz7YCloLsN4432iwEdUza
 sdsJ5aDxdNVgll/e03dLVghUaUIuuBKbJsRMgT0+62cgbuYDCDs7da1U0kD5YIS/tVJZyLIzQGq
 z+PTmW1ep48moBi9EdnktLQa20xsjIGX8XbYm8vFbjfZr8RIh7WN2iJSuavloWvfX7Ox+SzjlJe
 lNSVnuFjkoGbhKO+vn0Vw7SRb7tP0vEwtxB0y+UykdSzSAYliMjINRVuFAIIaLVxDN6wNchYozx
 RoD7QNsHhjXPtPfiKFXOZIneY+ENXw==
X-Proofpoint-GUID: BxfnpxttfQXQgvgitcu_ITtKBPHZfUXb
X-Authority-Analysis: v=2.4 cv=C6nkCAP+ c=1 sm=1 tr=0 ts=693a9a40 cx=c_pps
 a=mPf7EqFMSY9/WdsSgAYMbA==:117 a=DdBtMnqNxkYIvXj6ev4VzQ==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=EnfBGAjIh6IkBJmaZGcA:9 a=QEXdDO2ut3YA:10 a=dawVfQjAaf238kedN5IG:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: BxfnpxttfQXQgvgitcu_ITtKBPHZfUXb
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-10_03,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 adultscore=0 lowpriorityscore=0 malwarescore=0 clxscore=1015
 priorityscore=1501 impostorscore=0 phishscore=0 suspectscore=0 bulkscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512110078

From: Abel Vesa <abel.vesa@linaro.org>

On all platforms supported by this driver, there are 13 DP_PHY_AUX_CFGx
registers. This hasn't been an issue so far on currently supported
platforms, because the init sequence never spanned beyond DP_PHY_AUX_CFG9.

However, on the new upcoming Glymur platform, these are updated along
with the rest of the init sequence.

So update the size of the array holding the config to 13.

Reviewed-by: Konrad Dybcio <konrad.dybcio@oss.qualcomm.com>
Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
Signed-off-by: Abel Vesa <abel.vesa@oss.qualcomm.com>
---
 drivers/phy/qualcomm/phy-qcom-edp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/phy/qualcomm/phy-qcom-edp.c b/drivers/phy/qualcomm/phy-qcom-edp.c
index 06a08c9ea0f7..f98fe83de42e 100644
--- a/drivers/phy/qualcomm/phy-qcom-edp.c
+++ b/drivers/phy/qualcomm/phy-qcom-edp.c
@@ -32,7 +32,7 @@
 #define DP_PHY_PD_CTL                           0x001c
 #define DP_PHY_MODE                             0x0020
 
-#define DP_AUX_CFG_SIZE                         10
+#define DP_AUX_CFG_SIZE                         13
 #define DP_PHY_AUX_CFG(n)                       (0x24 + (0x04 * (n)))
 
 #define DP_PHY_AUX_INTERRUPT_MASK		0x0058

-- 
2.48.1


