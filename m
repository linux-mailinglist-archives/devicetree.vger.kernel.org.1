Return-Path: <devicetree+bounces-171012-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 9A701A9CFE9
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 19:48:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 058669E5745
	for <lists+devicetree@lfdr.de>; Fri, 25 Apr 2025 17:47:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A0EAE217F40;
	Fri, 25 Apr 2025 17:47:19 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="OoM6afEu"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 080D1217647
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 17:47:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745603239; cv=none; b=s+esz7mnDNiywWqQ2pOnVi3D6cenDxX/GbPG2jI7g6UGMDiInyFMXAa7tN0XFJ5A9j0P57cUVwS/B/B17Dzo8b2FXNeDIPNm4qCktbNXQQEKci3esAOw9S5uwqsI3V5v9/0Q6MwB+k16Znb50/rkNkkaiw+lQih49tfOpwUspY0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745603239; c=relaxed/simple;
	bh=WRG9dHTLQ2jwnkCiRxmgtVZUE3m+6omsipYnyHhT2vg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=WnJ133dYRjfTDoN4HJ+OXOOJR/0A6EJ+7UOB6uISfEkQqfDDcIyb6jhEm7IIfAjF1LMLxgghpQXsnZr1AEWoqDvAu5I0IUHkOYBpRvA6y73zuu33Zwo3ljp4RjYGhoGdmTIoec7xyvIKOz/i21soTwJ9SQXyNg65nzgpQSfgQ48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=OoM6afEu; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.2/8.18.1.2) with ESMTP id 53PGJwie032093
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 17:47:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	X5Zt92XUDy5ouQWe6YZM2smr3YjZQjLfBRQBMqLOYPk=; b=OoM6afEuRR4Kz4H1
	5KrmI+gLMaBQ5ITBcMnsNIL/ItyRiR2v9+ft1f4LDy85mxiSM7pHiLvpU/IBx6k7
	2xveUSf1+o8aagk8PvHHSCHX+aY5qUrElYn+9JaNW2q8JA8hQrO3XFoYR+C7PSo1
	CegOi/Gid8aoPMTB8xJlvKvCS1kZj4KolqOOBKLjX3GJKbcs2hQb5/+RS+hNVeAs
	uCND8JdPgeRKClU7Mc9PsjZwX8Jr87wfQ2BTX50Xw5lJgXsBhQj5jByb9YShgkDc
	oeZsV5F72LMFwJYqY1ofXsI/9rLLFar9HVyzvqXOJTiHIjzMlH53+7nawNVTb8jY
	EfqPOA==
Received: from mail-qk1-f199.google.com (mail-qk1-f199.google.com [209.85.222.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 466jh19r71-1
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 17:47:16 +0000 (GMT)
Received: by mail-qk1-f199.google.com with SMTP id af79cd13be357-7c9305d29abso438527885a.1
        for <devicetree@vger.kernel.org>; Fri, 25 Apr 2025 10:47:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1745603236; x=1746208036;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=X5Zt92XUDy5ouQWe6YZM2smr3YjZQjLfBRQBMqLOYPk=;
        b=I9SuyHwlL/tR8apM/O2+9G7GBE7Z2UdVLkaBnAjN1FZM7YqKQTAQz96Hnl4w9LsAMZ
         C/+j/dTJux4ualMCCQmbFBTVS1ZLvtY+ddsHg1OJ/p62TT0I6049vziPfqJVqQrK8Qsc
         rKLWZApCzBLM55f3qEDqx95R3xi0m8nQQ4rPXL5+PdIQhlBqrc/y9FJmCX5QPUt61oiZ
         Rcw44rdiIh+EmgUhwWpjcueKm0ym340ciMgCB/5B5UF0wTfc9hlBaxXWLkUtocVg4J5S
         vfAp7KNkV5aRE5yxvO3Cf0KKhsAqYsv02by+40eo3cv7j5/7ntiWkUAxQAsaUOXfIqmz
         l/KQ==
X-Forwarded-Encrypted: i=1; AJvYcCXCgw9nMlpPHrFnEzV873CeXwpVjL8Xv4DdPQOOsn1ce8pq8r0BrnOp5ssLm4CQeZnbh1f1wPhEFE+H@vger.kernel.org
X-Gm-Message-State: AOJu0YzCrhl2MHdRYBWL4mdjJT1UYAGeF/RFD43lHeMksTkv3PCqeDUL
	ven18Lto0Z6Didf3j4VnaZGNrkAhMtuQcAmObEwrmYyK2byrgN2LA++P50KCUggxSwisuDkXEoH
	Mzvc4WUQOmcO7BtZ9p8T+u9UKdVHLFlMWpAQIKXZWbqVsk/jc5Z13fKn3gVwD
X-Gm-Gg: ASbGncsUB9qdygy9an7iW7Jem1GDYclZ/LdLuIhKqowMHL/ho1aO79S/bO1AGv1MiEm
	lllvo7VkpQCMFz9xqM9GCBBbkz1TA9o6lgfl2dGUpUQZWZD4EN0ToDGEGuNRVMPqEbLXCipiZg5
	i3HjleF2jke7I7Pza54ZPDjBBED859xwOVYX7GO2LzRU3y1U6YZPBcRobkpVqW4s4bZJ1J3PqXk
	lrTKchZlSRZcxbfYOttTdq0DStnHdHSt2JnkS12zhVfQtaWqwaUwUtP9FZa2cTs/vP/b6D4U/6V
	OC2AyGVUam4VLjQ5zsmRRlEoELfAL+KClFUlYA7dT1JjRFw0YA4dqRWqN8j+BaVgXzhSdLamtmt
	d8F/lULYb3WTi0VXlOwWHmf9r
X-Received: by 2002:a05:620a:2b48:b0:7c3:cd78:df43 with SMTP id af79cd13be357-7c9607acbb3mr577616185a.58.1745603236227;
        Fri, 25 Apr 2025 10:47:16 -0700 (PDT)
X-Google-Smtp-Source: AGHT+IFXc63YgasBioIfPyv4s4+i+5SA3kwzq74Oh0ca2GCZsKjTjH6+xDOPmc2+pgsugmJAfdYlyg==
X-Received: by 2002:a05:620a:2b48:b0:7c3:cd78:df43 with SMTP id af79cd13be357-7c9607acbb3mr577610985a.58.1745603235745;
        Fri, 25 Apr 2025 10:47:15 -0700 (PDT)
Received: from umbar.lan (2001-14ba-a0c3-3a00-264b-feff-fe8b-be8a.rev.dnainternet.fi. [2001:14ba:a0c3:3a00:264b:feff:fe8b:be8a])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-54e7cb3bd4asm673193e87.84.2025.04.25.10.47.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Apr 2025 10:47:14 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
Date: Fri, 25 Apr 2025 20:47:04 +0300
Subject: [PATCH v3 04/11] dt-bindings: soc: qcom,rpm: add missing
 clock-controller node
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250425-fix-nexus-4-v3-4-da4e39e86d41@oss.qualcomm.com>
References: <20250425-fix-nexus-4-v3-0-da4e39e86d41@oss.qualcomm.com>
In-Reply-To: <20250425-fix-nexus-4-v3-0-da4e39e86d41@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>, Georgi Djakov <djakov@kernel.org>,
        Lee Jones <lee@kernel.org>, Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Leo Yan <leo.yan@linux.dev>, David Heidelberg <david@ixit.cz>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1206;
 i=dmitry.baryshkov@oss.qualcomm.com; h=from:subject:message-id;
 bh=WRG9dHTLQ2jwnkCiRxmgtVZUE3m+6omsipYnyHhT2vg=;
 b=owGbwMvMwMXYbdNlx6SpcZXxtFoSQwb3qVnBjhOjN1cX+3w9/23Xn69pkQ8NPkfkSe3mub1L+
 X9cRYZUJ6MxCwMjF4OsmCKLT0HL1JhNyWEfdkythxnEygQyhYGLUwAmsmM1+1/BgueLbZkWFJT8
 feC4w3nJitqObYpF1zjVRU2a5Gw6N4b0FOU5Z8pk6zYn7DP6bshlpnVCdJ1RwgttdoEW/R6N+wz
 hX9uO7LWaL3s9uugT2xZLNvOsS6YsEnEqypxqz+L/h/1lfc6w22SLlwCrWixDkyxLWFyh3m/Ztc
 FfZ3ewbHJdwbLhoZStQfa6XXfX9V5Uyq2q9NSXZEt6w8ujpDG/c8516aK9Ki9/9/55LVDPfWyZx
 XwGF0HB305LZ7dODN1keeipGnfl6eSCO9kLZwp/6G6x/Zzb3iC655TRNMHWjhL363qh8/+ps+fl
 8bKvWCjQ82cJ/87pNxafdFha/XJNk+jSZ7da/lxwYXAGAA==
X-Developer-Key: i=dmitry.baryshkov@oss.qualcomm.com; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A
X-Proofpoint-GUID: nlqf6MhH3RBgXQsTEvnyDHPkk0RiU48w
X-Authority-Analysis: v=2.4 cv=OY6YDgTY c=1 sm=1 tr=0 ts=680bcaa4 cx=c_pps a=HLyN3IcIa5EE8TELMZ618Q==:117 a=xqWC_Br6kY4A:10 a=IkcTkHD0fZMA:10 a=XR8D0OoHHMoA:10 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8 a=-Z_mRg2wFor0aBS9cE8A:9 a=QEXdDO2ut3YA:10
 a=bTQJ7kPSJx9SKPbeHEYW:22 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-ORIG-GUID: nlqf6MhH3RBgXQsTEvnyDHPkk0RiU48w
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUwNDI1MDEyNiBTYWx0ZWRfX+9lZGr6GmhcY vrujFggbpvxXt+0fRTPVA4L8g/27ZMTDS/j0xsPEUNyznrEXuQWOoT65/+/pgy+QYzajwv3s8yl BEiABKwcNKzL9iobJDXatF0sB65KzcncZq4mN5cUGjXw3z9Bki5wU43vN/ZMDXzg1FdYWegcgWy
 0dWyOVNKFTjlBbFqJYOH5MpRlxSOhLk6i4335h009Pl9Zm0dawsfWi/B/9/10lRXgLDfFTN3b60 RV4x8+u8uS9spKjH6mkovT1auY3Ct7629Y2PC34A3oZbvjVStJuJpwNrBikHo6vgf5hRQb4UBwe ub2ZjdTWRnGrTah1443GKFgYDR/D3eyzD0eUlPO/jfOFtedmd8Kg3AYEFDntcqzTiKFU6Oiixt4
 NP7OujOCWxs6CI4BZ+1z0g6pISHWSg6PxFk4m7zylA8/AXfi89vMiRTA0neHXtXDdk/8S1gg
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1099,Hydra:6.0.736,FMLib:17.12.80.40
 definitions=2025-04-25_05,2025-04-24_02,2025-02-21_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0 impostorscore=0
 lowpriorityscore=0 suspectscore=0 mlxscore=0 clxscore=1015 malwarescore=0
 mlxlogscore=999 phishscore=0 priorityscore=1501 spamscore=0 adultscore=0
 bulkscore=0 classifier=spam authscore=0 authtc=n/a authcc= route=outbound
 adjust=0 reason=mlx scancount=1 engine=8.19.0-2504070000
 definitions=main-2504250126

On Qualcomm platforms in addition to regulators the RPM also provides
clocks via the child clock-controller node. Describe it properly in the
schema.

Fixes: 872f91b5ea72 ("clk: qcom: Add support for RPM Clocks")
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/soc/qcom/qcom,rpm.yaml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/soc/qcom/qcom,rpm.yaml b/Documentation/devicetree/bindings/soc/qcom/qcom,rpm.yaml
index b00be9e01206d1c61802dee9f9ec777c4b946b7b..10956240df0856a4241d6032d3aff7d447af9ce6 100644
--- a/Documentation/devicetree/bindings/soc/qcom/qcom,rpm.yaml
+++ b/Documentation/devicetree/bindings/soc/qcom/qcom,rpm.yaml
@@ -46,6 +46,14 @@ properties:
     description:
       Three entries specifying the outgoing ipc bit used for signaling the RPM.
 
+  clock-controller:
+    type: object
+    additionalProperties: true
+    properties:
+      compatible:
+        contains:
+          const: qcom,rpmcc
+
 patternProperties:
   "^regulators(-[01])?$":
     type: object

-- 
2.39.5


