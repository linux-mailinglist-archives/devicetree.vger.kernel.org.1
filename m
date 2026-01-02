Return-Path: <devicetree+bounces-251049-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5BA71CEE44C
	for <lists+devicetree@lfdr.de>; Fri, 02 Jan 2026 12:08:18 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 67161300CBA1
	for <lists+devicetree@lfdr.de>; Fri,  2 Jan 2026 11:08:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7F4A32E228D;
	Fri,  2 Jan 2026 11:08:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="QfL7XXbT";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="FTjZ4Wgm"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC67E2D5A19
	for <devicetree@vger.kernel.org>; Fri,  2 Jan 2026 11:07:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767352081; cv=none; b=npgJpyHL19jJLVyZyR6pgUPkALlekG72tzSq/ou7GfXazfNtFW+XXW+m/2AXCIgMchHadShua6589PHWEZH1AVVA0Z+B5GpU4PhCXqW9djL79yzgpfZNrqctzrczoIKvdYfIhfF7K53CqPElfWwEgRlJSyIzyovLmWDHLtaXCcE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767352081; c=relaxed/simple;
	bh=riqKGRbefiTVAjrJlS7BPlVWnOJwjzGAnwvmXHlvXG4=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ZO1QRuDgIWPbStskiYPDe0oKf1Am46G/tCyWwPrLQGt4ezqRqFZg0C4P06L6ChLHY2TFg6uvG3gyD+BymzC+qn4o2CguGGEeCv/Yu/1MaJGEZaNg1eqBFj9M4zNOstyqbrebr6efmLzEmzXBHnejNQsfQcp+yZNbVHveMEjn+eI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=QfL7XXbT; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=FTjZ4Wgm; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279867.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 6029W12K504639
	for <devicetree@vger.kernel.org>; Fri, 2 Jan 2026 11:07:59 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	VG3mEiJmLvo7Ao7RM3Ld5aCHT5FgQHOT6bBZg41mTgQ=; b=QfL7XXbTCUFvS21Y
	ZZjbMNubkROVvXNb3Ppx5X0I5crXceZYJBBPb5zAiTk1/7J4YvgDgbebzg5to16I
	M9sjpmupUZ7aCAd9te1Itcuihry3sEtupblmdEXAApfL0ogSdRBWdr1Puuu4R6DM
	+pUJrwQ9qTnaieJGiioDxTxO1hvZOz7lCaqhdg07+mAcbwSE+4nGQJjKb5JL1lBj
	vqsskTWp2FewkoeVuHdirIHSm8Uidm68dnLrSJwvJqSC0GH1vlKreJgDOnoCbyPu
	8JwfuQ6Ia1rIyZbjUpNlYdYBVjni5593zsb5x17ZQK0+ads8w6GIxSM/761dwtlR
	s3fxPA==
Received: from mail-dl1-f72.google.com (mail-dl1-f72.google.com [74.125.82.72])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4be8bk8hxm-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Fri, 02 Jan 2026 11:07:59 +0000 (GMT)
Received: by mail-dl1-f72.google.com with SMTP id a92af1059eb24-11ddcc9f85eso22337175c88.0
        for <devicetree@vger.kernel.org>; Fri, 02 Jan 2026 03:07:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1767352078; x=1767956878; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VG3mEiJmLvo7Ao7RM3Ld5aCHT5FgQHOT6bBZg41mTgQ=;
        b=FTjZ4WgmpfIzPy5jArk4RtDVDMQ+1XWElJUnNSJ6rbxieRbg5N6u0mwgswSf7vFmoP
         I93s9G8fEmSTPT3SDXeyre3rAJA8ZYp4V2gdb8wS0uc03W4uHXJuxVFn7VRsyeG+Zq/Y
         UFREqGZv+biIiXoOnYxyompV/xPLBFksq7F8YClE583WYQouPXvGJ86gK8j2FGJgX2DE
         siApnd1JVQaPkynJtOdtQGkZzdgqqQuY+CLWTWjF1cgn5KIY5DFQPUrZuk4tyKKDaKUA
         i1gDxGm6raKMo1fijHaXxx2hgvIpoTArTjXwvM6GucEqPvz9pMoDAtHsNBQkW4i8ZwGI
         9l/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767352078; x=1767956878;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=VG3mEiJmLvo7Ao7RM3Ld5aCHT5FgQHOT6bBZg41mTgQ=;
        b=lqgZMHTX2zEfwtiyGEN0PjNqb0Z0dGsX6drj6KTPGZpECGHD3VPs9t38B1Xww1b1LC
         o3/9rOrfb9PY1EPbewkcmtAwctwnSlRkX8QoTQ/RKcmdZuLq5Pfc/pb6jQSSNA755w0+
         VKd9oiYpk3BQJXT/7T+OVcBwk9cY8rLnHDVrD2vdQlG+GBM/4tWlqiE6GJ8oPW8XmU25
         Mi7f16WVmx3x0/lHj4r4hGggz+lq9gYdgaN1xLRHW4mRAsNkvH1FN9XIkQD20G92rKiH
         StSj7QvG/uDti9VrhQPXgmisrmypE3BmRSwq4x/4mRpe7kcrpKKx66OGfUnKNFWz994N
         7ZHA==
X-Forwarded-Encrypted: i=1; AJvYcCX1IHD4rxWpJex1TWlXyehAOk9XpaHBxLWVcjLgfTZ+K2OHASGlNcxopSSzbhXodCyYFL0eMUpBstCN@vger.kernel.org
X-Gm-Message-State: AOJu0YzdxGaPfWSwhItViZzBh+8p+X6kVoIpz8+phaadqQ2pXHj2xbAA
	xb+n+glWVP5Xvbt9xJYPxJOYRcYu14GOCw56D9UXFfltCmNQK9sLy2hersx5XvVong4qjBhjXCZ
	htP3JQx8iCyuMVQQmq5Ak/D7eottV8sg3SjltWfbyvnH/d1B819IEHAZhzuPEAuiq
X-Gm-Gg: AY/fxX7TnR2mhAg5ZqmQraCM03zA6pDuxKb1qg84fyVUZqfPn9N/VuxWnU5nvQBRMyk
	J0AWPmsXJT/dR254lYAaXW1/7KuVE5funsCYFMZzm+t4OgnJRdjngG4BRaZNBlPdRvowfymnE03
	E1OJMIlnjc1Cw5nd3DNgdzDqjQ6ktKCyzvPfhhwn1Nu+H3JnHTnzkaewEhwOwxLMtNmszzSh/y1
	rGK85QO76nqCWARAskscMJuLN1w14ODrI9fneC3ujNoHtg4xCX8iaw4ML4W/Oj16smVxEw/GKtB
	s1NQGkkfxkm6e447i+nyXw6bPajhHawO+fApZmmMVG7KebWeDY5pXivcmY3eooE9Qm1/jHHF3EH
	32m1H68dubPRNYTAmZIYURzHzz8k/VLZvwHXjw8MKwp/agtJ4xr/0UbWh9c4BwMY8HtQOh46uTQ
	==
X-Received: by 2002:a05:7022:eacd:b0:11a:4ffb:984f with SMTP id a92af1059eb24-12171a85250mr38947313c88.11.1767352077949;
        Fri, 02 Jan 2026 03:07:57 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFE0Pdw2VtxZaFIWLmgXYBSA0tkMDVEYv8SQTzqwlDyDLdfznoI1jfJ5TmQSpB9yn12bij86A==
X-Received: by 2002:a05:7022:eacd:b0:11a:4ffb:984f with SMTP id a92af1059eb24-12171a85250mr38947288c88.11.1767352077329;
        Fri, 02 Jan 2026 03:07:57 -0800 (PST)
Received: from hu-ggarmidi-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-1217253c058sm157431107c88.11.2026.01.02.03.07.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Jan 2026 03:07:57 -0800 (PST)
From: Gopikrishna Garmidi <gopikrishna.garmidi@oss.qualcomm.com>
Date: Fri, 02 Jan 2026 03:07:54 -0800
Subject: [PATCH 1/2] dt-bindings: pinctrl: Add Mahua TLMM support
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20260102-pinctrl-qcom-mahua-tlmm-v1-1-0edd71af08b2@oss.qualcomm.com>
References: <20260102-pinctrl-qcom-mahua-tlmm-v1-0-0edd71af08b2@oss.qualcomm.com>
In-Reply-To: <20260102-pinctrl-qcom-mahua-tlmm-v1-0-0edd71af08b2@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>, Linus Walleij <linusw@kernel.org>,
        Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Rajendra Nayak <rajendra.nayak@oss.qualcomm.com>,
        Pankaj Patil <pankaj.patil@oss.qualcomm.com>,
        Sibi Sankar <sibi.sankar@oss.qualcomm.com>
Cc: Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Gopikrishna Garmidi <gopikrishna.garmidi@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1767352076; l=1189;
 i=gopikrishna.garmidi@oss.qualcomm.com; s=20260102;
 h=from:subject:message-id; bh=riqKGRbefiTVAjrJlS7BPlVWnOJwjzGAnwvmXHlvXG4=;
 b=/VsEc1NHu+L8sGg5+EC1uxJvPYir91PD4EA0h5PqucUzpTm3aX2Q1fqUoPR4l2oOjmtXFX62y
 yIzV2rjgTIxACL9HHGIQIcwvtK0fFOGLXiMlvkbl4Cy3B8JrZY8GcRG
X-Developer-Key: i=gopikrishna.garmidi@oss.qualcomm.com; a=ed25519;
 pk=TkSjNEhrfsj90i3wkABTZtAjLNr2cfYsujaTvyOIDsE=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjYwMTAyMDA5NyBTYWx0ZWRfX1NiK0PQjj9x2
 KpRmZnaVgiDAoW49W+2p4T8FGGBgh1pF/V3wnJCaDoYgK9oUfp75UDr5i8CGRlOYeJ4b+ACjJqK
 +pHohYywE/xYC392Fxy89wRAH8gh+YMim+sPAQ0PbPSj7NbV3ND4t5gw7tBazHh58BihkbpEBsf
 4n8E82OPFDCLRkuz7BaD18B6DQ/9k9ztfFCvSaI1ra+N4k0ct6503K5hUH480d1s5NFghnfilTx
 FwdMzQzv4/F/AfoM7BCiInohnFbODE8Xuwex3IsbNavl0w9dsxnuWzGND2BNM6T87aPhHam+78s
 b0OLDOQYfUVmBzC1V/b68Bycir/R2i5wZIbfOrpWoSpQh/UAkjeDt1dAXB34DEMaidJqkcGIWRs
 4oHRolcAzaQUoQsn3I8CSoIOsH59TGxeJTBBfACZidUqdyKq5ols2RrBQIJi/I+GL8QLjxHB0Xs
 SwOssMfwpsF+zdQcJpw==
X-Proofpoint-ORIG-GUID: oEd_7gKwhu1UOlKfQoZv7pj-sXp74prp
X-Authority-Analysis: v=2.4 cv=d5/4CBjE c=1 sm=1 tr=0 ts=6957a70f cx=c_pps
 a=bS7HVuBVfinNPG3f6cIo3Q==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=vUbySO9Y5rIA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=LEL-hUu-ZyvN7oc1A8YA:9
 a=QEXdDO2ut3YA:10 a=vBUdepa8ALXHeOFLBtFW:22
X-Proofpoint-GUID: oEd_7gKwhu1UOlKfQoZv7pj-sXp74prp
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2026-01-02_01,2025-12-31_01,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 phishscore=0 malwarescore=0 lowpriorityscore=0 clxscore=1015 adultscore=0
 bulkscore=0 spamscore=0 priorityscore=1501 impostorscore=0 suspectscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2601020097

Update the compatible property to accept both "qcom,glymur-tlmm" and
"qcom,mahua-tlmm" using enum to allow proper device tree validation
for both SoCs.

Signed-off-by: Gopikrishna Garmidi <gopikrishna.garmidi@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/pinctrl/qcom,glymur-tlmm.yaml | 6 ++++--
 1 file changed, 4 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,glymur-tlmm.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,glymur-tlmm.yaml
index d2b0cfeffb50..2836a1a10579 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,glymur-tlmm.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,glymur-tlmm.yaml
@@ -10,14 +10,16 @@ maintainers:
   - Bjorn Andersson <bjorn.andersson@oss.qualcomm.com>
 
 description:
-  Top Level Mode Multiplexer pin controller in Qualcomm Glymur SoC.
+  Top Level Mode Multiplexer pin controller in Qualcomm Glymur and Mahua SoC.
 
 allOf:
   - $ref: /schemas/pinctrl/qcom,tlmm-common.yaml#
 
 properties:
   compatible:
-    const: qcom,glymur-tlmm
+    enum:
+      - qcom,glymur-tlmm
+      - qcom,mahua-tlmm
 
   reg:
     maxItems: 1

-- 
2.34.1


