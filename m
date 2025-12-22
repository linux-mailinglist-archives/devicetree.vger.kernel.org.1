Return-Path: <devicetree+bounces-248652-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 057AECD4C3D
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 07:06:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id AEE7B303D684
	for <lists+devicetree@lfdr.de>; Mon, 22 Dec 2025 06:03:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 8FB48327211;
	Mon, 22 Dec 2025 06:03:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="S0msa+hX";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="KPZPZ3zR"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0b-0031df01.pphosted.com (mx0b-0031df01.pphosted.com [205.220.180.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A2AF17C69
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 06:03:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.180.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766383426; cv=none; b=DZHpuQfmlwLhU/gi/RzweHOdmA5EhIv5HIUBj+8C+gyO3Yzx8OoIHWCdK36WgTpcgqOQpmh+vKxUuENRSz94sOwi8+vlnumrxUXQx0jQLuyUffinxllMn/7g8VZaJQDsDfPZ5kMhYkDThmtGlZr01NkfRTj083AFdSGgQLa90Pg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766383426; c=relaxed/simple;
	bh=msK0TuEP/JpApn2dMeevzdu9ZwAt5ednACbVKZ/f5kQ=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=aObT21TH02UTuvnslYJw2fA5zGvZMo6n+aut7GEAFQr/E6x2cEs2yFIwisH8EKDX5NVf8To3opCx4ImeY6bsgK2TJyK8nGHgn1nqITg1LI/iPZKEhacQ6q/qXYqRxHeHtL/SujOBA7dY5D7VZWmfZ7fixaa5N7VnW+apJo/5Mc4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=S0msa+hX; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=KPZPZ3zR; arc=none smtp.client-ip=205.220.180.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279870.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5BLN1O8B4131987
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 06:03:42 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	8oYBWLRKtgR5GUmRZy2q3lvFAkDKmsEyHlu3oxM4gzo=; b=S0msa+hX5UtsWxOX
	PzpkQ1G9nP1d7wVrN8wtMFDPkWq+aMlbLXpev3e36b5i49mAA3uTtUi91hxyVabr
	k3slFs5HYvOUi9X87V6zaW3xShE3hn4xg3TKla+nH+R2FLd2Fr+sN7ek752tyedy
	sDiODlrEQlyUVOHXOUcPy3GtMQf2YH0gKahUeeajC38KRBcUgScT0BagK2fOC5Hu
	ItkDX3caYMLNU1+75P1SjKg4VyJ781gUj8aJeuhhsCVetp+7CvSpWXFoI/OuSwPF
	IrI/yd6YLWba7V0ow5E8t5PsAeIhALG/KU/hmZtkakxu/DEwcQRWEbNuxfM0fohP
	wFy3rA==
Received: from mail-pf1-f199.google.com (mail-pf1-f199.google.com [209.85.210.199])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4b5mvfkutp-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Mon, 22 Dec 2025 06:03:42 +0000 (GMT)
Received: by mail-pf1-f199.google.com with SMTP id d2e1a72fcca58-7b4933bc4aeso3653916b3a.2
        for <devicetree@vger.kernel.org>; Sun, 21 Dec 2025 22:03:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1766383421; x=1766988221; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8oYBWLRKtgR5GUmRZy2q3lvFAkDKmsEyHlu3oxM4gzo=;
        b=KPZPZ3zRdeWGzRv0W7avDSVyKHkjLxKY0xh2LRqaspussSnnSL8iOhvEM0haFOzv6F
         Y6bYQ25dCUXjVjiV+dMPQXv601z9IYojPYyIx8+jAxLzepqwyGdvyT3C64eE0mzJ/voS
         +H495GgXtH+UN/44SavZ9LQAsa4pUOsU2ZoEoYDwNM03IcGDhBRKb/mTRTHsS48fFKxv
         MDoJw+ZtqlYujFndPbXpRnHS10IVtHSaOxpgYONnL/M38tUDZaA+mq3otAp97JzGL403
         uiBrbP/6r6ghK9bT7VJPb2N7Dk8vVOqieDFfIdTkOG2YJgW3znXGn6YEKVSQk78Tm98u
         vedw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766383421; x=1766988221;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=8oYBWLRKtgR5GUmRZy2q3lvFAkDKmsEyHlu3oxM4gzo=;
        b=vK4qPBOTAnU9StiehHKEcJDvV0aaRMVQZ1Mcs5ayTrAPxALuSoU6ufMZ0PGCRXhQ3k
         hbUoqhJbsEejUy1bHo3Wh+vazQ+njEMSKwQJIv4dxQaOlIjgFMxq+lK9D//MEVeF0Vfw
         +uAOtySRr9Ku0r5hhsxWfIhDzqbbRUrOAX4+uSP5XwC21VqspNBnUxZwCUZz7PxfLAiM
         UUUXDm7ys/nqTGJ6JN+7JvevUiMgpkThRlIvz18aGFAMDbkk2HlncSdO0ZRHVRpKRdwu
         9c77dUQicdH10cWFtTThha/LgTT3DSc/DQuugpXjlp2w0FmqdTRAbWz9r514x7NBgfTz
         PKRQ==
X-Forwarded-Encrypted: i=1; AJvYcCVo/zDRomaeS2rbVaVNyGdNM7iM3fN1JR9Q+rcXM3gYE8/0zHd48262OQMCXMVG4ioCJt/pNYAwtHsx@vger.kernel.org
X-Gm-Message-State: AOJu0YwIS6yyJep9ELircfvACH0WVgAybUF0PQDen04s+3ZDgzsuqde1
	IJmSSzQxQfHSXqwp863uhcU9AYJmI3jfwoMVzj54AQbvysj8FDsfL8xEstDD92g72u81/fWp9RH
	zwOEOQqnZveV+n7aIni7XHzZohIissdYYG+OkmpwHFqDqwsRHx8UgethAEUdUTw8P
X-Gm-Gg: AY/fxX6eX5zwmYMqM6KRVo7z9BxpI5je1jZq7d44pqinkQ2CreY9s1t2A2yHVnzsPyp
	SBhZ/ODcAqDrFWd2nsHZokQA35FOfdHqkDoVDqoOdT0otV865XDZTXPfPFriJOmo3q5psAbomp3
	D2RlOPdcZFbp33xKsCi0yNOljreyQr16ipgnG4SG2fJOy2Qvzey+bBIUZQO6kTptYJVr1R0iJ5i
	uu4xriKxS7SSsOxP8BV24uSFoL35CxD0aocTt61i6qhXnaXhGbpyTe+YSBC2W3sPWkFmY2lnZ9p
	+wO3PPNFStPVK7Qmg8fC5Ve1M1mXbDec6BXbFEqrBEz4QMyt67rfc5ub9rgFW3+rXfYZ8OaSn73
	Ps0jXFAlYir1k5V3JEC9Xyk0GFJp1vDK4HCe2Jom8rb4jfkn4+EF+RtmTTEGkvxBqykYvYdJHEQ
	U=
X-Received: by 2002:a05:6a21:6d9a:b0:35d:2172:5ffb with SMTP id adf61e73a8af0-376a94b9f40mr10230675637.47.1766383421508;
        Sun, 21 Dec 2025 22:03:41 -0800 (PST)
X-Google-Smtp-Source: AGHT+IEKJYBoyMNtBT5Dte36/oKrc3vZ2zhaYD9wtz28QE77DUg421v+i/Yk7bQVy13uqXEQzDpUlA==
X-Received: by 2002:a05:6a21:6d9a:b0:35d:2172:5ffb with SMTP id adf61e73a8af0-376a94b9f40mr10230659637.47.1766383421001;
        Sun, 21 Dec 2025 22:03:41 -0800 (PST)
Received: from yijiyang-gv.qualcomm.com (tpe-colo-wan-fw-bordernet.qualcomm.com. [103.229.16.4])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34e769c347asm5846668a91.0.2025.12.21.22.03.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 21 Dec 2025 22:03:40 -0800 (PST)
From: YijieYang <yijie.yang@oss.qualcomm.com>
To: andersson@kernel.org, konradybcio@kernel.org, robh@kernel.org,
        krzk+dt@kernel.org, conor+dt@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH 2/4] dt-bindings: arm: qcom: Document PURWA-IOT-EVK board
Date: Mon, 22 Dec 2025 14:03:27 +0800
Message-Id: <20251222060335.3485729-2-yijie.yang@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251222-purwa-v1-0-14ab9316e5ff@oss.qualcomm.com>
References: <20251222-purwa-v1-0-14ab9316e5ff@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Authority-Analysis: v=2.4 cv=H8rWAuYi c=1 sm=1 tr=0 ts=6948df3e cx=c_pps
 a=WW5sKcV1LcKqjgzy2JUPuA==:117 a=nuhDOHQX5FNHPW3J6Bj6AA==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=EUspDBNiAAAA:8 a=x-iFITsqBy0uP5guFPEA:9
 a=3ZKOabzyN94A:10 a=QEXdDO2ut3YA:10 a=OpyuDcXvxspvyRM73sMx:22
X-Proofpoint-ORIG-GUID: e3Mhy3TarLGd-AzjtpUZKvTVUPWKUG2Q
X-Proofpoint-GUID: e3Mhy3TarLGd-AzjtpUZKvTVUPWKUG2Q
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjIyMDA1MiBTYWx0ZWRfX1yzxpy9QPJdr
 UeS5dqh7tibxKoo2dayAzl2kLjsxFV4wQUUPGEhk8/F5lMGQps3Iw5lUR4Le1hZAXXMUaXOWcYD
 texgMCyUnAPuCSIqHuljW7xd7bZmneRnHjp8u8QATl9LWuPA4C0DFaLp89F7FE2XJB+gyyMtsMp
 5OCOZAUJ6wBOXK+GbSChERBnKR//Ww6MbpC8D14mQhZcfH/NCqFa9NIFOceHO8BfNC+ntddHQjn
 4TnrjAUyZMT+4a11D01ymuBLy6pzZqDSW2KcITL8UJbsEDjiW+YanLEEK9xYklZNrPOQ0SevH4R
 fMK77wjYnwuxwGkvrFPq1v5CA90zE+6nzWu58IR+sNpzjFy8aVIVluXEL8T/UW8zALBxuq8qm/E
 zmNeZ+svvRVBOD4blObDdVdr57VgHJkdTy0gtKsXVp6pMg1an9XqSUbPRzDvkmVojKJzibow1Zs
 C96PLPS1zsPAf0v90gw==
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-21_05,2025-12-19_02,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 priorityscore=1501 impostorscore=0 bulkscore=0 spamscore=0 adultscore=0
 clxscore=1011 phishscore=0 lowpriorityscore=0 suspectscore=0 malwarescore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2512120000 definitions=main-2512220052

From: Yijie Yang <yijie.yang@oss.qualcomm.com>

Document the device tree bindings for the PURWA-IOT-EVK board, which
uses the Qualcomm X1P42100 SoC. Split the common parts of the SoM and
carrier boards for HAMOA and PURWA into separate files for better
modularity.

Introduce the IQ-X-IOT series here, as both HAMOA and PURWA belong to
Qualcomm’s IQ-X family. For more details on IQ-X series, see:
https://www.qualcomm.com/internet-of-things/products/iq-x-series

Signed-off-by: Yijie Yang <yijie.yang@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index d84bd3bca201..5797bbfac9a2 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -1089,6 +1089,12 @@ properties:
           - const: qcom,hamoa-iot-som
           - const: qcom,x1e80100
 
+      - items:
+          - enum:
+              - qcom,purwa-iot-evk
+          - const: qcom,purwa-iot-som
+          - const: qcom,x1p42100
+
       - items:
           - enum:
               - asus,zenbook-a14-ux3407qa-lcd
-- 
2.34.1


