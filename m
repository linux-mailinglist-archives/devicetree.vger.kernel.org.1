Return-Path: <devicetree+bounces-234214-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id C7EFFC2A3F8
	for <lists+devicetree@lfdr.de>; Mon, 03 Nov 2025 08:09:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 6FDB04EDA66
	for <lists+devicetree@lfdr.de>; Mon,  3 Nov 2025 07:07:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E270729ACCD;
	Mon,  3 Nov 2025 07:06:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="orCV1CB1";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="JC2ZtFJV"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49F9B29AB11
	for <devicetree@vger.kernel.org>; Mon,  3 Nov 2025 07:06:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762153609; cv=none; b=qgUejFlFP7+Qat7PQjoP7/aO0lJVDSwEdLh+2aed3Hh66qD0e5yP6LJQvxPGUubfnZx15SgG2wzOY5GN+AndruapjqK4jhwrek6oBSNy1GczWIFbdXzsjQVJhrKtEmIPH38+iCh0qxvKBqaO3FKY3SuZJ2z+EqfyAV+Nu+xLTmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762153609; c=relaxed/simple;
	bh=5feK2N/IK2O6e9qopvnZcd3fQLzy4a95KobwSy+NIHw=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=UZTVSfB2Q9alfjO2owSeWV6hAsVoqs/+Ltl/+pqBcjsjOJ6bFgfrhnkQ4SOOdzGBBHrswk/ZdLKFGK2JOBRoSZKU6Z6toF5wtCAMdbnM7PVcl7QMzCVhmR+VMGQ/NOreRkgmH49R0roeRbPM6ybZJRsBOHk7Rcp5goZAypoCETM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=orCV1CB1; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=JC2ZtFJV; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279871.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5A33DicF1957368
	for <devicetree@vger.kernel.org>; Mon, 3 Nov 2025 07:06:47 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	AMiAzcEtWsm2GpmS8Mvt7u1so77xL7gySGMapgJ2dos=; b=orCV1CB1h45GUHdk
	uH6RhMtC5KQ0W8DOWfy6OEkEi+JS6r3yLtj9NMyn5Cp5F5BK5n2q2wweSQvCGs7j
	DBmCYMpBlsj2pj5DJW1QK8w+KgmchGqroESQSYFfPNDuDaN94cndWnbBMAGL0q13
	Ac5auVxMQlHcAgDn0rIJf8Uo+LdIZcxfjKmMwLY67e+vEitNHHz39/aQPs7D9/Oy
	ME3C0rYcCPTkJJKgFIR90qiSOwmonJ4m2ed9dsykAMiYez5aNU9MxsGWPDtRzNzc
	tTSzdfkCI0NtfOvYmjfNDeRoWPkK+OAvuyUWNXw/2Co4yYRtAvDraK2lAF2SfmeE
	K3HMTg==
Received: from mail-pj1-f70.google.com (mail-pj1-f70.google.com [209.85.216.70])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4a6ma8rg5g-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 03 Nov 2025 07:06:47 +0000 (GMT)
Received: by mail-pj1-f70.google.com with SMTP id 98e67ed59e1d1-33bbbb41a84so9198098a91.1
        for <devicetree@vger.kernel.org>; Sun, 02 Nov 2025 23:06:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762153606; x=1762758406; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=AMiAzcEtWsm2GpmS8Mvt7u1so77xL7gySGMapgJ2dos=;
        b=JC2ZtFJVbRzwVSPzBPNj4BmOdcWpP9ybDhVRjJDOYUMZKpgZSh646xMvj/0PqWfzTB
         9zeOKUR8Zxp3zQzxanXSFCl2BPS80uNDuEcduIYrDFYu3AhcbB//8wd7xLxFcpEyptCZ
         d0NNCHgv+4IK+XDxoGNX7aXH2+sGa8vC720DeUbjtryGRMZOaoIihmZRKlG4XO/l5ByQ
         uxj3bp+uYX9WQqjgvGDd+D6dStk9PznGOB+o+obiQXdU1xNnl052ZqDjcTmjUiGacjIz
         qF6xhv+a6YyqEHKv85IivFgs0Y8TAArQaxtEBbYLrUFTic45rCxWZ8avFdFwJCvb92yc
         vpRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762153606; x=1762758406;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=AMiAzcEtWsm2GpmS8Mvt7u1so77xL7gySGMapgJ2dos=;
        b=A9uUpigSlr+8t0RXiWWmKsLC/eh1/DC93DaHDpVTgDm2U4xfOsCXA4QrYq5vFLRQih
         rWUcT0smy8AXS1td5ub2d1k/EOLMn/cATem+VHlx4UttnGb8Q11pifI1mC1A/t4bfTON
         2mZbGRZbh29N/Oqn1br7sNQVz265L/8HzJo/HgwLSzwA+IrWiCGVTpfiooVHBS9ZAMvB
         mZNBZ0DdVsJiYfcw8u08kFHby8nKI5f4zqYkbD9NkzwIUUFBCG5SW66BMZitdIXUrCEP
         y3UFitB+GjAJVUlZgVtjDBlMdXCuoiGTNsuDpl7BJsQsQL2ucKTjrCcdfIzGyr5jMNz1
         RUjw==
X-Forwarded-Encrypted: i=1; AJvYcCWTwHa1vyHnIN2HjSlQZ6iUAa7AKaCSjdztKva01Xq+wknnuS6TYXrk+WYGwQLCiIERTGV0DlB/XrXc@vger.kernel.org
X-Gm-Message-State: AOJu0YyhaLf5x1R17cmoxurtWS198IPSJHUyI5qJ4RoHCDQVe4Nj1tAS
	4lZ13/bpdXHlRW+VQ/OJSnCGU1mYJ2k6fWuUifjfMNqxyoiOgyeNCYNwRBoF/czxVDTBEfSb09f
	wRh+GXfiJf1R02OuhWz9XEZG9iv5byGK2s7949Sb/UZYJHp6l7J8jgQZu+/FL+a/Z
X-Gm-Gg: ASbGncu2YVhy/pHLRT7DZx133EvPqOyDVNHJKn/dP2i/f6Ejl5okeMVXEIuRHJtxmW+
	DIWnNvc0tnZPaqyBqr+5Ba3nqhKvMiNSiEPSLSY3f5ShT30ra83i1iYpUvfVYyI+sILXuTkTXkA
	NU6VVMxuY0HDx9E1Nbg4enIFX2eRsqVawgHMsPytPalo9Z5vhmDiBxdycP9MkbUAAcd7vobxaAc
	TQaaXbNybDs0wDg8kGOCFDRGcBLXQTT5rDNdzWGXbLQUv1ZxQbFK3G2KWidll22L7pRUlIYL62y
	g53e/zkP37CwPOIORC5Hsb5iAmJjCd9okMM2/2nuhlJGXTJABY2V2Gf+nNYSANf934TV+Xwin3L
	Flm/lvi5lWLFGtuhJ/LEdjTYFknCPx74LFzP7Gy+s6OanOOjRE1SJyn08RN0rxQ==
X-Received: by 2002:a17:90b:51d1:b0:340:2a38:d45f with SMTP id 98e67ed59e1d1-34082fd9dcbmr15875290a91.16.1762153606392;
        Sun, 02 Nov 2025 23:06:46 -0800 (PST)
X-Google-Smtp-Source: AGHT+IHc4H2LRGClZtWN81SzIchmgkncf9wzDlUy0SH6VKxxQ3RTVsKby5uuHb57K49kE/2mymOotA==
X-Received: by 2002:a17:90b:51d1:b0:340:2a38:d45f with SMTP id 98e67ed59e1d1-34082fd9dcbmr15875253a91.16.1762153605909;
        Sun, 02 Nov 2025 23:06:45 -0800 (PST)
Received: from jiegan-gv.ap.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-3407ef49da8sm5808704a91.1.2025.11.02.23.06.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 02 Nov 2025 23:06:45 -0800 (PST)
From: Jie Gan <jie.gan@oss.qualcomm.com>
Date: Mon, 03 Nov 2025 15:06:21 +0800
Subject: [PATCH v4 1/2] dt-bindings: arm: add CTCU device for monaco
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251103-enable-ctcu-for-monaco-v4-1-92ff83201584@oss.qualcomm.com>
References: <20251103-enable-ctcu-for-monaco-v4-0-92ff83201584@oss.qualcomm.com>
In-Reply-To: <20251103-enable-ctcu-for-monaco-v4-0-92ff83201584@oss.qualcomm.com>
To: Suzuki K Poulose <suzuki.poulose@arm.com>,
        Mike Leach <mike.leach@linaro.org>,
        James Clark <james.clark@linaro.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Tingwei Zhang <tingwei.zhang@oss.qualcomm.com>,
        Yuanfang Zhang <yuanfang.zhang@oss.qualcomm.com>,
        Mao Jinlong <jinlong.mao@oss.qualcomm.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, coresight@lists.linaro.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, Jie Gan <jie.gan@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzk@kernel.org>
X-Mailer: b4 0.14.0
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762153595; l=1171;
 i=jie.gan@oss.qualcomm.com; s=20250909; h=from:subject:message-id;
 bh=5feK2N/IK2O6e9qopvnZcd3fQLzy4a95KobwSy+NIHw=;
 b=wSQTSdvWIFwS8IjlZpSNpP8OrFOJfB2BlcLGf7sNcivE6BG019LCbSQNR8PfHS+18qv+MV0kn
 UpnqjY4VYTJA0HvQJC9yx5JbVBIC5JEBHABC5QH9WqixYL3WueWT8OQ
X-Developer-Key: i=jie.gan@oss.qualcomm.com; a=ed25519;
 pk=3LxxUZRPCNkvPDlWOvXfJNqNO4SfGdy3eghMb8puHuk=
X-Proofpoint-GUID: NevmNNuJMbRLsl7oEcJOJV0IMiIkj2uP
X-Authority-Analysis: v=2.4 cv=UJDQ3Sfy c=1 sm=1 tr=0 ts=69085487 cx=c_pps
 a=0uOsjrqzRL749jD1oC5vDA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=7CQSdrXTAAAA:8 a=VwQbUJbxAAAA:8
 a=EUspDBNiAAAA:8 a=ekrabmmykuFM9VwHVzQA:9 a=QEXdDO2ut3YA:10
 a=mQ_c8vxmzFEMiUWkPHU9:22 a=cvBusfyB2V15izCimMoJ:22 a=a-qgeE7W1pNrGK8U0ZQC:22
X-Proofpoint-ORIG-GUID: NevmNNuJMbRLsl7oEcJOJV0IMiIkj2uP
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTAzMDA2NCBTYWx0ZWRfXzhGW1r8tUW27
 ebfFFLbmhcjUtg6WlCEPR+S11zzvdygiv9tNVS3TtTEMiT66wUviZGekoRSXUNTZNjo0lir3bGi
 Jsizalej6eV7bbsNFFJJdbCifWRZCjvjzBhmdg0m9TE4kRl45pm8AqZuBRJNJS8LbQN3S/lsEQY
 itlJQJ+J1PuAzpbWOesVU2w0CFfBfK1/1WG4WMKCSrZ+O6I7StNTlUBvgVHHibWVsuc28crlswi
 FspT5UFcs9WuGxDKE7h2DFQAnLRcs6bK9wHNxc5r9ugM/Sbxn3SLINhp5dZ6hrMKgl+1kSV4QQF
 ttsKO44heCLELXV7ZxzYupMFL1OCR+FgibOBFEwEfRoh1jpaSO8D/7NCFFdwGnhm7HWiCmAlaec
 6uYGOY9V+QNGwUu4Reb3OmDm7RFnxQ==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-02_02,2025-10-29_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 lowpriorityscore=0 clxscore=1015 suspectscore=0
 spamscore=0 bulkscore=0 impostorscore=0 malwarescore=0 adultscore=0
 phishscore=0 classifier=typeunknown authscore=0 authtc= authcc=
 route=outbound adjust=0 reason=mlx scancount=1 engine=8.22.0-2510240001
 definitions=main-2511030064

The CTCU device for monaco shares the same configurations as SA8775p. Add
a fallback to enable the CTCU for monaco to utilize the compitable of the
SA8775p.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Acked-by: Suzuki K Poulose <suzuki.poulose@arm.com>
Reviewed-by: Bjorn Andersson <andersson@kernel.org>
Signed-off-by: Jie Gan <jie.gan@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml | 9 +++++++--
 1 file changed, 7 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml b/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
index c969c16c21ef..460f38ddbd73 100644
--- a/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom,coresight-ctcu.yaml
@@ -26,8 +26,13 @@ description: |
 
 properties:
   compatible:
-    enum:
-      - qcom,sa8775p-ctcu
+    oneOf:
+      - items:
+          - enum:
+              - qcom,qcs8300-ctcu
+          - const: qcom,sa8775p-ctcu
+      - enum:
+          - qcom,sa8775p-ctcu
 
   reg:
     maxItems: 1

-- 
2.34.1


