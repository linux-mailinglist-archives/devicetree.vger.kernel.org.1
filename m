Return-Path: <devicetree+bounces-237167-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id D4729C4D90D
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 13:02:24 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A355E3A9252
	for <lists+devicetree@lfdr.de>; Tue, 11 Nov 2025 11:59:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 49EF53587D4;
	Tue, 11 Nov 2025 11:59:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="MPUp4iMn";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="KEejvVpx"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A36263587AE
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 11:59:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762862360; cv=none; b=C9A2/aLDELKeS2koBhpaUmIPiMcU1Kkdm8dhM3XPHcEH8YhQPF6ppydT/+b1P9m0Kzp6OL1H92C5MKTHkY981LO9L2ViU9ZDUXdmij61iwynLhEUBAYKM6CATaN0+xD9ncMmG66RxrUscFi2y8bbYHHGQjuq11dFeNV+Zsm5GeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762862360; c=relaxed/simple;
	bh=1ccshnWeHcL7yrhEfzUWoVYUaknKpcWbRsjPVmbpKYM=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ZxOMlYD+VsRwESeM/hl7mBIUczSZTMib6QaaUkpt5O7LUpr8kg6k0FfZIjtZaJ7PaIYvCfuMR5WrCF/+Wsp6o6Bx0RI8/auectAggLt0LzRWECbGnO6hxBdHC2+XXquNEt+/kcc8vTPA7MkAjuKSa+zVnX2Oc1fEBHAH+jT0ce8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=MPUp4iMn; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=KEejvVpx; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279873.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5ABBGw6r2301355
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 11:59:17 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	oPpW1Ve0PMp0S1/wQFsf61I53LtheYEm/caWUgRR/08=; b=MPUp4iMnneZ7ci5E
	cKTJGzuXgkIL3asFgTjLqjw5A+kKEdJbxPMidQcC1JWrE8SSak6JsjEtpmEiJu2Z
	tPDlmPXKjXZms4y9dKcDB7J6Hnpx0A2fqZprMfEKHvxORUjYY2po0tSUlvuPjcED
	JNv49CEMtYvXJsXQ4+IwslIrfk7M4H7UPgUYNttT3TAAuISEkuLSOXrvVyTz9P+e
	PO+jlBiGVbwJzw5VW1mx3kVKVxtLKo0HoytwFWcboXEDuJkxM3ka5odENWJI3hEq
	mCyVQqZ8PfnmE5OVBJFKWeB5JZJ8uxx0PfLUNcXqHnzr7oAw14KMcnN5RSaTlAoR
	qd8o1g==
Received: from mail-pj1-f69.google.com (mail-pj1-f69.google.com [209.85.216.69])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4abjxqk40v-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 11:59:17 +0000 (GMT)
Received: by mail-pj1-f69.google.com with SMTP id 98e67ed59e1d1-340d3b1baafso7511937a91.3
        for <devicetree@vger.kernel.org>; Tue, 11 Nov 2025 03:59:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1762862356; x=1763467156; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=oPpW1Ve0PMp0S1/wQFsf61I53LtheYEm/caWUgRR/08=;
        b=KEejvVpxwo7RgqqbjisT617A97XWFnwED+YGvArhpPoK/ShPl2X5+h876+PYFAUvua
         tUBKfs3JIYDcTQuJbcPvU6cwdJW/6njzJ+TTeJ39LEX35OMwehXLusnnkfuQDnpofbEd
         xCb2wH0jfolG3rXULbsXJy4Fsycys8f8zA/tVGamOm0O19uJe1b2oNL7nXgnM+9eETcL
         iLH0RbGuvsQ/eucV0OlP3pPMbs6PVGLu3q6Zie1HKtngzG7M+l9aQzp2mX9FX5ASbH4g
         RBiN3vKOxE86XgFXNXhsOv6pjeViN2EJSUWJwu9KXLTHtsNnYvTmiAWb1ZSblI20KnZW
         /xxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762862356; x=1763467156;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=oPpW1Ve0PMp0S1/wQFsf61I53LtheYEm/caWUgRR/08=;
        b=Fp7B5AqGEQ4cCbFpkhgCv2Glx/te9JLm1EDQ/WX5Y7gjySmd+Ml4+AaZNYh8jY6yv/
         wuzQ0i2cKfPLyqdG+DZstzJoHouP1f4q8yx2f4hR0c0barUAl62Eiyj+m876IHqzqrCl
         3/IH0dm+IbnYiDkNsbI9M8eMeWwKViAiDBNLwfPNodjrf7xEXJUJLVjRiqTcTC97Qg31
         q6OiBmub7COm9YQ45pcOIG819xGIO60AcEDo0XjIvPirOZgjwlI/sYkpr2XyFqt/jBle
         DxMhSc7kUldHRPPwDp61Y7rJAsktA/LTKmRZFhuntr3BHOir7iS6N7QuqYEhith+fyEy
         CU1A==
X-Forwarded-Encrypted: i=1; AJvYcCWllO+oGHQWE15g7YnLuE2IS2+1HK10etuaUas9oQVv5st2Ce/Canfd70PQ/uBdou4lqQQ0YrLYDzuw@vger.kernel.org
X-Gm-Message-State: AOJu0YzH40/MAEeUm1YRuOOYtjVZPK3L68SMlMTgG7+g+zBsIyxNsw4J
	dhG5ESnX6MAWJk9qYj/JbWuhOm9sTBoFDjm/jNgfsuDIwwyqmD1jRGBa+5iI81rTKFAZ40C5b/V
	Lx3pMj+dEYSSu5f0phdEG7P8I+TrFBrgKkOyk7LyeSiA/kY+aXrV8MOJqY6wOXnnH
X-Gm-Gg: ASbGncs4GqnesLKB+OuY4YYRfMCfd+qQzszukC3hWaCVo0cI1rjON4keSrrfzYbfLip
	/qjOytBHJjpdeNlJlVXMOx10a6X42ab5+OxzfYac4k5dobOK2Na8KzIGhqPjqEf+IxOQFFk75Gj
	BxkRjuRm38cWXLNkFlpDgoFygPhi/ZYtxOCAZDlPOQvBg6WAxkFs9ZSpaWqqrFW9WZsuhPEEmUD
	5ibdiQEqZj0L9MTM2FCvjn9kUV8Bpxo+4+RRvgRUKidR2vVYDlH1S2U/AM3xnEB5C7zi+rRfXOE
	ZY94XVyt1S0S9HmFGHklzkL9xxh+AliFG8P/d6QmqqWMzbaGpttz+JL/cAlWZ9yL9iVx9Qrf5BQ
	H1IXBwWtPTrM7aijiu16161UCtBRXgXo=
X-Received: by 2002:a05:6a20:a109:b0:2df:8271:f08d with SMTP id adf61e73a8af0-353a11b0de1mr16056455637.2.1762862356429;
        Tue, 11 Nov 2025 03:59:16 -0800 (PST)
X-Google-Smtp-Source: AGHT+IELzwwan0MKKafefmWABWYqSGEcCE5nqRTM1jX7qZAnghLB9hDQQ5qX455Hzo7ILMkz63NIRw==
X-Received: by 2002:a05:6a20:a109:b0:2df:8271:f08d with SMTP id adf61e73a8af0-353a11b0de1mr16056434637.2.1762862355949;
        Tue, 11 Nov 2025 03:59:15 -0800 (PST)
Received: from hu-afaisal-hyd.qualcomm.com ([202.46.22.19])
        by smtp.gmail.com with ESMTPSA id 41be03b00d2f7-ba90307193fsm15420333a12.38.2025.11.11.03.59.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Nov 2025 03:59:15 -0800 (PST)
From: Khalid Faisal Ansari <khalid.ansari@oss.qualcomm.com>
Date: Tue, 11 Nov 2025 17:28:56 +0530
Subject: [PATCH v2 2/2] arm64: dts: qcom: hamoa-iot-evk: Enable TPM (ST33)
 on SPI11
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251111-arm64-dts-qcom-hamoa-iot-evk-enable-st33-tpm-on-spi11-v2-2-101a801974b6@oss.qualcomm.com>
References: <20251111-arm64-dts-qcom-hamoa-iot-evk-enable-st33-tpm-on-spi11-v2-0-101a801974b6@oss.qualcomm.com>
In-Reply-To: <20251111-arm64-dts-qcom-hamoa-iot-evk-enable-st33-tpm-on-spi11-v2-0-101a801974b6@oss.qualcomm.com>
To: Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konradybcio@kernel.org>, Rob Herring <robh@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc: linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Khalid Faisal Ansari <khalid.ansari@oss.qualcomm.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1762862346; l=745;
 i=khalid.ansari@oss.qualcomm.com; s=20251105; h=from:subject:message-id;
 bh=1ccshnWeHcL7yrhEfzUWoVYUaknKpcWbRsjPVmbpKYM=;
 b=suDVvdfm169KfWv+hJeWYdgeMdZJ/j/YL2lraBBC154ZEcUMxMDbDY8gA0qcS/VkvXQYq8gsF
 4TtdrZAi1c6CcllYRnI3PvZCG+wJLgAuq9D7rKndV75zkz1OBp+Jfi0
X-Developer-Key: i=khalid.ansari@oss.qualcomm.com; a=ed25519;
 pk=eBXrIUgTWV0cgG+GsNeZPPgvj1Tm6g9L2sfcoxMGrKo=
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMTExMDA5NSBTYWx0ZWRfXz217zq6AvBaP
 WvCbnxilUxPZlY7lB8oogAFT1hVAVBfsofqeOKIN/Quwme0q69F50TLx3z09ifNUMhiORmbu8Ap
 hJFnKjuhZ4VV4jIfj9r2sMMXZ0wh1+jD8jJu2iXIo2rf/PzvbUCQwBivcp70rHVrq3FhkyCJTV1
 +8lUxjt6A+pzzNesORshfrxQDkC0lPCWvEdpJTrZwmd9kfLl689MIXv6vd7x3zZuVIQ9JQbA6UX
 kut4kYjGsXPqQZomfPf4FhQAS5NhqJwtzsUMGvWBttij4I+xr9rCIIl0Pr9GM/e42MB1TDKuDmd
 ntfKSqwGD+5w6szn6+6mo3TbrxlieW05Q2+KmVJBrGISW2Ka+YLdxYlr5TMB6+uqHrMG+D00wdl
 gYs6WbZ692eUfELqamnG7ulCpyYJog==
X-Authority-Analysis: v=2.4 cv=CsKys34D c=1 sm=1 tr=0 ts=69132515 cx=c_pps
 a=vVfyC5vLCtgYJKYeQD43oA==:117 a=fChuTYTh2wq5r3m49p7fHw==:17
 a=IkcTkHD0fZMA:10 a=6UeiqGixMTsA:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=PNAbdjlqmVCGte-Ijy4A:9
 a=QEXdDO2ut3YA:10 a=rl5im9kqc5Lf4LNbBjHf:22
X-Proofpoint-ORIG-GUID: LClBOuGNrvBjHAjwAB2XjGfILzetdiQ2
X-Proofpoint-GUID: LClBOuGNrvBjHAjwAB2XjGfILzetdiQ2
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-11-11_02,2025-11-11_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 suspectscore=0 impostorscore=0 bulkscore=0 clxscore=1015 phishscore=0
 adultscore=0 malwarescore=0 priorityscore=1501 lowpriorityscore=0 spamscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2511110095

Enable ST33HTPM TPM over SPI11 on the Hamoa IoT EVK by adding the
required SPI and TPM nodes.

Signed-off-by: Khalid Faisal Ansari <khalid.ansari@oss.qualcomm.com>
---
 arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
index 08465f761e88..aecaebebcef5 100644
--- a/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
+++ b/arch/arm64/boot/dts/qcom/hamoa-iot-evk.dts
@@ -921,7 +921,7 @@ &spi11 {
 	status = "okay";
 
 	tpm@0 {
-		compatible = "st,st33htpm-spi";
+		compatible = "st,st33htpm-spi", "tcg,tpm_tis-spi";
 		reg = <0>;
 		spi-max-frequency = <20000000>;
 	};

-- 
2.34.1


