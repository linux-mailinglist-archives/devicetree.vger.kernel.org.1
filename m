Return-Path: <devicetree+bounces-247552-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 83DF0CC8B66
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 17:15:10 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 46BCD30E59B3
	for <lists+devicetree@lfdr.de>; Wed, 17 Dec 2025 16:05:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CDA77346AD9;
	Wed, 17 Dec 2025 15:57:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="X2h6+79B";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="dJMvuR9e"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AEBC347BCB
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 15:57:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765987027; cv=none; b=UvM1rXjwzIdfxm2WMed7mChaI9uys6rUTFmTb08mBJLQJj5xCQO+1AOD5/PfNZ4om/49n/K+14JHRT176gZufxb5j1QBNraQpxGyLOzGsQdprViJj+8tOfFzcS+2VXD33ZtWffMbJIr86jp61aqieZRSqKqAiLhQS46KL3iPxeg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765987027; c=relaxed/simple;
	bh=l5WGbsKtHf21iM8+oa+/d0NWfC+n/Ku6l80th50BuO8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=mGk8kwI+eI1EwdCwJtDl8fg0Cu7WQe/spKovc/DvGQ9QVCib7h1+0cYjDzEHJU3Uf1tKYsxGdDBZqdZQXF8VPMymNjKUDVb0yABtaAGdbqxz01jsrMR1zhZGvfBiCoKfTd8yBVd3tZWLvn2nbYJYbqWVJaSshs7kouZQoeAcS9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=X2h6+79B; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=dJMvuR9e; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279869.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BHCKoud3329733
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 15:56:57 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	gZtPShKRE9enhUtv32089Qv8Wp0CT+GiWyKxZmRT51Q=; b=X2h6+79B2XrYhkO0
	PAT5ZzCm1ZBmQrbOvonFn6UWQR/0UFlgUXN7NUQoDHY8AOABZL3G4Ve/G0ixJNUg
	/oChAcXCBloPp7cr6nYZdsvpKh9/LjNv4s8AolP+uE6aPfzz1o3Zj9Y3q+CbMB8n
	WYJMvfQjnkyk1+5SbgFFGozNytBQCj58pJdjZtFv9jAyuW3eDpCoSi6G0URuNmUC
	GvH85rhy9+8uUygfRWhbn32A9dxQiPeuQ/JJPdqC77tcMuqayQ+sbhExVZkE8cUm
	m6cVClB+02+uHwjdINzRtEgBwMwO9ZpgTCUmhbVYYKcyihV1dgOo+VSi8BPlttOu
	K4uJwQ==
Received: from mail-qt1-f200.google.com (mail-qt1-f200.google.com [209.85.160.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b3nkkj4bu-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 15:56:57 +0000 (GMT)
Received: by mail-qt1-f200.google.com with SMTP id d75a77b69052e-4ed74e6c468so82320911cf.3
        for <devicetree@vger.kernel.org>; Wed, 17 Dec 2025 07:56:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765987016; x=1766591816; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gZtPShKRE9enhUtv32089Qv8Wp0CT+GiWyKxZmRT51Q=;
        b=dJMvuR9eNrFEI0sZhOgmPQR1QbYVfjvC4k4O81Kz/VWw1f9JYu+JQId15Y+U1sbdDc
         PCIbyee524GRA1GoSujE6FcyIRvWge3t3Gz5cNE6Jwj9XQR4uC9Q0WSAss87nYxTXnJO
         DVItNtvbauviuDxayBN5vGlKIVHZ9uxa6hiec7ru00j7hHnZWVnN0tHMZ1+tMOKMWt4r
         6U/GDw5FxbX/lRbL9pS6mOw6DtGZ5ay8cDFGiMncVu44KGrGUVi60+aMeh4ids7xDIg9
         doTdJ75yOLECv3aFNOivn98rZKNo0X48Fl2zYeb8sepWJ6QVz2pNJDFCdtc+lkroIIDE
         tdHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765987016; x=1766591816;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=gZtPShKRE9enhUtv32089Qv8Wp0CT+GiWyKxZmRT51Q=;
        b=V1XYu3tuRR1u3ZtfNG8WAVk9usDaaigC8AoC3zXdL2Rj4mruFmgSNSCoezB7Gsp3ey
         qK96QNxL28BdOwxKH2Xl+YY+gQdUOfk9RziQ29DzbiODUGwG0xb+9uG6oy9kEoYhh/km
         RBde+FKplGioLrYs2pI6eK/d7HVsLmbAw0fKIMRyAloyjTScgnZ/+/4RP0zReZUOa4L6
         Q5DY34WDZkjVpX8mV+MTLQ6kmy0/oItaW8gdtKJu2er+kTzeVpQ9Vlep4llklrFAgYpD
         lcKOMySDQQy5kMRdyUzwOshGsCbRc6lb4KJf/MkxIgrWtGsz1dZYpx25evZdgzJobTFi
         CfpQ==
X-Forwarded-Encrypted: i=1; AJvYcCVDfik/Prp8dLowiofGuJ1FwY6wvCW0FFygbIRWPA+LuJAT5BPCN7Q5aWM+C1Q6e2pqd8W+ma02OsaK@vger.kernel.org
X-Gm-Message-State: AOJu0YwNDS23C0gBbaMgc9dbMf9hQF/Txal9wXbxVJuGqYOy330XIRo2
	569+MvWFcqlmPdbI+xh9jZ70AinKuG2AtLAw+Buy2au0+o0fIN5gg+XnhzUTBXnjDFI5Vpk1o3P
	67ETvKeu3YtVZcx4rS0zKuyl+QPjoCGZ2Z09uG5NL9majgikCrZpsTKvd5m4pQzTzXihPkAhm
X-Gm-Gg: AY/fxX5nazR4enE//HcbZGxSRV8KQ5czPyG8F03ctDZBs4VtdT2PW2+whZpF8cVKBDi
	Esbj12HgLU6XSfIrlIx6LDwPzYUQe8aptERgOkQf961UpRb94cbxANL2NCsMttIck4vFmSZQf11
	mfGfCJP5WEfIjIX6NcHkiEjXT1WDSKrRurKoeSO8ruoCK+d/L4nhkWz0IRf2USd8awrM27q57X8
	8iYcfBds/sldqCW3rVO1K2AcIlOzwn7srWPEdQVPxULPIcTXaRkma2xXWEB+8DZj2ZynrshHXLf
	thiTkpdFBO3Wxj8M1A+VFp8dRwjafCFFKb16XyCNyKcPOUvp3VKV5Eq6Vp1YUoV3hwG4gfj8gD1
	Lbn/eVL2pJpDmSp9ibMhWtJFj6e9ptF3e
X-Received: by 2002:ac8:470b:0:b0:4f3:51a8:e213 with SMTP id d75a77b69052e-4f351a8ecfemr36111101cf.17.1765987016229;
        Wed, 17 Dec 2025 07:56:56 -0800 (PST)
X-Google-Smtp-Source: AGHT+IGcZrELuHoqeva2ja65lAIW47o9MfozyKI24g9BmSZkSFDfInUoCpe0iMjn8G+mvcEGS4idHA==
X-Received: by 2002:ac8:470b:0:b0:4f3:51a8:e213 with SMTP id d75a77b69052e-4f351a8ecfemr36110791cf.17.1765987015799;
        Wed, 17 Dec 2025 07:56:55 -0800 (PST)
Received: from [127.0.1.1] ([178.197.218.51])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-4310adeeef6sm5439800f8f.32.2025.12.17.07.56.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Dec 2025 07:56:55 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
Date: Wed, 17 Dec 2025 16:56:27 +0100
Subject: [PATCH v3 09/11] dt-bindings: bluetooth: qcom,wcn6855-bt:
 Deprecate old supplies
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251217-dt-bindings-qcom-bluetooth-v3-9-ced8c85f5e21@oss.qualcomm.com>
References: <20251217-dt-bindings-qcom-bluetooth-v3-0-ced8c85f5e21@oss.qualcomm.com>
In-Reply-To: <20251217-dt-bindings-qcom-bluetooth-v3-0-ced8c85f5e21@oss.qualcomm.com>
To: Marcel Holtmann <marcel@holtmann.org>,
        Luiz Augusto von Dentz <luiz.dentz@gmail.com>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Balakrishna Godavarthi <quic_bgodavar@quicinc.com>,
        Rocky Liao <quic_rjliao@quicinc.com>,
        Bartosz Golaszewski <brgl@bgdev.pl>,
        Bartosz Golaszewski <brgl@kernel.org>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-bluetooth@vger.kernel.org, devicetree@vger.kernel.org,
        Bjorn Andersson <andersson@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>,
        Bartosz Golaszewski <brgl@kernel.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1943;
 i=krzysztof.kozlowski@oss.qualcomm.com; h=from:subject:message-id;
 bh=l5WGbsKtHf21iM8+oa+/d0NWfC+n/Ku6l80th50BuO8=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpQtK0gcToTlvYCmZ1COOLHc7T0K2XZjYfeuIHH
 osPXQ8463SJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaULStAAKCRDBN2bmhouD
 110NEACLD3TRVem500KSc7R7OM0GZVnh7/cF7To5SjdfG3xTnJXcIkmjLQ2ActG+A/V4Gbbp/Gc
 o0I8kdXAyv2VhDCHCgGhJGbk5DvI1PfAVB4PWHUmU5E/LEho1Yz7KH9dcPBRj6wwvOaDNvrYNv+
 Z32KY7W0FHhWQbn3h6/nwz/4Kjlbcm1m1bhCZMUH2nelPMHfrAGXlQe8EmT4SPnyZKuK3Um2ipH
 72agpXvIdC8QTHWrOOx8LJ1hG3VQg1gbsOJvh3RSBpyLMhfdnNYaERa/LAB+eaVAbesY/NiZ5mJ
 taJZWZ/oJt/pdJNofhKuaeAfkh1iGJzwjpGQisnOfXKtM+pyK7nGHfwe265cbe4oVfC6rRgiIfG
 TvXRwqtsvKnD2y4sLGdQeOsN24ahwvKvt933NSujZP4r+a65XyCtEhmsU0WflNCVjI2yQg4GWn5
 rUmuE82jUwmMb5V+95esEfKZhi/kJINCim9J0WoDKqqNtEGGlAuj63m7RU1LFUfqxU1HI+7+A7e
 pnAo+3hLCN7VaKm/A6c8DJIDkDZ5uKEXcXuldcGPkMMj5MMLm22qWxwxxFECPk+bXwwUOKvXG56
 yOrJXcZjlZ9YYLBOmlSvCkW10RGHdpLR8nzCaQP7Cgj0elJiujo7MV+Dr94/0Ufb7QT1K0jL/J5
 btwIi0pB27KCfBg==
X-Developer-Key: i=krzysztof.kozlowski@oss.qualcomm.com; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
X-Proofpoint-GUID: Y7VkiMb7kj5BRpA4BEbGJGvlHrVaV4_q
X-Proofpoint-ORIG-GUID: Y7VkiMb7kj5BRpA4BEbGJGvlHrVaV4_q
X-Authority-Analysis: v=2.4 cv=f/RFxeyM c=1 sm=1 tr=0 ts=6942d2c9 cx=c_pps
 a=JbAStetqSzwMeJznSMzCyw==:117 a=hmARNUlj3OVxZ3RlbIsQyw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=VwQbUJbxAAAA:8 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=Yne-JONsqnic5O4-CUAA:9 a=QEXdDO2ut3YA:10 a=uxP6HrT_eTzRwkO_Te1X:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjE3MDEyNiBTYWx0ZWRfX02PZTUBZt5FN
 V+JdyYp9lvKo1b45SCP2E1LjUknQiBCjsv/5XafhoXInU2uNC4X8IzWujWl4X6evKJ0EmjZILgg
 pnrLv031aAmYEaeJo0WVoBMqZx7UfqUr9lKLdwoYS/EaEmdLdVN3nAY4zrDHhZ9dzGUWglsATYF
 ZURBdHT8gsv2xxJmuDy8JJYK9oojMxj63ohzhLD952hpnl9TO37Ac7rUJsc7VpPD0+chb63p9XW
 LI1GVQBlzRhxB+4ORtPkX1WzKbL30wOVdgMnvZ5lHHd54SW7Y5Wp+enGObjc9Sjoytc1XaqCfNy
 kOELT0++3TzQ6T6kUqAlizXQZrqpdZEqV4Ivw1JKODQmqo2paoeJI1NFlM1veDntpPWOuVXp+QN
 EzpYqGSFSDwzSWBgy4Btm+jp9/EaPw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-17_03,2025-12-16_05,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 spamscore=0 phishscore=0 suspectscore=0 lowpriorityscore=0 clxscore=1015
 priorityscore=1501 malwarescore=0 adultscore=0 bulkscore=0 impostorscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512170126

Commit 5f4f954bba12 ("dt-bindings: bluetooth: bring the HW description
closer to reality for wcn6855") changed the binding to new description
with a Power Management Unit (PMU), thus certain power-controller
properties are considered deprecated and are part of that PMUs binding.

Deprecate them to mark clearly that new PMU-based approach is preferred.

Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Reviewed-by: Bjorn Andersson <andersson@kernel.org>
Reviewed-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/net/bluetooth/qcom,wcn6855-bt.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/bluetooth/qcom,wcn6855-bt.yaml b/Documentation/devicetree/bindings/net/bluetooth/qcom,wcn6855-bt.yaml
index a4a887a4dde1..45630067d3c8 100644
--- a/Documentation/devicetree/bindings/net/bluetooth/qcom,wcn6855-bt.yaml
+++ b/Documentation/devicetree/bindings/net/bluetooth/qcom,wcn6855-bt.yaml
@@ -18,11 +18,13 @@ properties:
 
   enable-gpios:
     maxItems: 1
+    deprecated: true
 
   swctrl-gpios:
     maxItems: 1
     description: gpio specifier is used to find status
                  of clock supply to SoC
+    deprecated: true
 
   vddaon-supply:
     description: VDD_AON supply regulator handle
@@ -32,9 +34,11 @@ properties:
 
   vddbtcxmx-supply:
     description: VDD_BT_CXMX supply regulator handle
+    deprecated: true
 
   vddio-supply:
     description: VDD_IO supply regulator handle
+    deprecated: true
 
   vddrfa0p8-supply:
     description: VDD_RFA_0P8 supply regulator handle
@@ -44,6 +48,7 @@ properties:
 
   vddrfa1p7-supply:
     description: VDD_RFA_1P7 supply regulator handle
+    deprecated: true
 
   vddrfa1p8-supply:
     description: VDD_RFA_1P8 supply regulator handle

-- 
2.51.0


