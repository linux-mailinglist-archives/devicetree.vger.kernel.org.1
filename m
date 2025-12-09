Return-Path: <devicetree+bounces-245484-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id DEF38CB163C
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 00:10:05 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 6D2EC3023173
	for <lists+devicetree@lfdr.de>; Tue,  9 Dec 2025 23:10:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBC80304962;
	Tue,  9 Dec 2025 23:09:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b="JCqFIZ2E";
	dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b="T7aAuRpj"
X-Original-To: devicetree@vger.kernel.org
Received: from mx0a-0031df01.pphosted.com (mx0a-0031df01.pphosted.com [205.220.168.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A1192FC879
	for <devicetree@vger.kernel.org>; Tue,  9 Dec 2025 23:09:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=205.220.168.131
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765321795; cv=none; b=dopukro3v0mVE+GcjBbhX2qwHNA/HPpKHqqa3R/NhnKgBLBDcGEr8Pmf24IkmNrczx3zbja2i6w9exq4v1KoEVY9XI8QUZlWQ5wiTygSPoMmKoCuZu2hVrmmAEqqL8tuENZD8YNjos6wbf1uB3jKHlhNw2SCD7f5Pw1ARy1ezeY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765321795; c=relaxed/simple;
	bh=Gc+9GTCwE6Q65glT/UspkMZu20/gwwKg5czwnmi0HQ8=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version:Content-Type; b=Z0gaYvzQUWREOPr6yDoKR5SnvbA0FelCL8xsXsr/63Qfm0f1KdMVxm0AVgVqE5VS0B7Dl29CVhoHYqbdNzmOQsONd/IELHA9RBK0n/O6LH+93vPM6SVvqq0sxk6jihQWuTpMwKzmO/JYX8KdYHSvV7avtGtAUtJFmoXeLQ4sDxA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com; spf=pass smtp.mailfrom=oss.qualcomm.com; dkim=pass (2048-bit key) header.d=qualcomm.com header.i=@qualcomm.com header.b=JCqFIZ2E; dkim=pass (2048-bit key) header.d=oss.qualcomm.com header.i=@oss.qualcomm.com header.b=T7aAuRpj; arc=none smtp.client-ip=205.220.168.131
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=oss.qualcomm.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=oss.qualcomm.com
Received: from pps.filterd (m0279864.ppops.net [127.0.0.1])
	by mx0a-0031df01.pphosted.com (8.18.1.11/8.18.1.11) with ESMTP id 5B9Mn7a1105595
	for <devicetree@vger.kernel.org>; Tue, 9 Dec 2025 23:09:53 GMT
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=qualcomm.com; h=
	cc:content-transfer-encoding:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to; s=qcppdkim1; bh=
	MqQ7CuFg2uQG1J5bdN7Vc0a8C6p4JOXok+RrLgiol44=; b=JCqFIZ2EtMiqy0GK
	MMoVRXkY9AEgJ4kQIS4QDETcsos2MvEiOBwF2kHjpcdmB9oUKzJIvhelSSePGDL0
	bXVLzLIaWaIsNXPr5I9relBW8nCQWupgacan/3LRJE6s6QgOUoUEddKhwxWFCaD1
	EdyeMA2j4tDJX+JH1px0zXYwVFeDSEjZzSguaKXaLp7hr4Wa+gXjTTLnaoEzc5Ct
	0YMvsM4XCcVkTnbw98YNpFBzoNeUF4MuPOxT1W3ESHvALKur9yrrx4UN2TFhi69M
	K5rNkH8O9iRl9SsRdEthiluo3+43uyKEAwE4Q66efLomeBG6ClvFam+a8iNbA76K
	DYp0KQ==
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200])
	by mx0a-0031df01.pphosted.com (PPS) with ESMTPS id 4axesf2y2t-1
	(version=TLSv1.3 cipher=TLS_AES_128_GCM_SHA256 bits=128 verify=NOT)
	for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 23:09:53 +0000 (GMT)
Received: by mail-pg1-f200.google.com with SMTP id 41be03b00d2f7-be8c77ecc63so8577372a12.2
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 15:09:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=oss.qualcomm.com; s=google; t=1765321793; x=1765926593; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=MqQ7CuFg2uQG1J5bdN7Vc0a8C6p4JOXok+RrLgiol44=;
        b=T7aAuRpjfC4mv+gE+PG0qo+Kqa11c/k1DOJe8HNQxG121vnSsZ3K0AGgwuKsqHDZGN
         KC2NK3aqnyEJ0FJbq/iEf7gNcZhNwQF8/KJMop7Lz9y7fROLQLYwu2tplB1R4xcWcfw5
         b/Feuz1Ag6KMC3WrHJabnzn0DNhkFh4HkBxsivsltjJqIlnL76gLBhly63nRSTdy+XPF
         c0l9oE/VPwhbtQ9mexLq2fM+OFCRmXVVTAorP+BzhVIwlZkA/7ZllHH3U3V0XY2QiFov
         xmH20wM5dw8rXPGjyHckCU8QYhzpkpiRZmQdZSH8cqU/C3azKMgtClHSd2NFOcZbB1lq
         q88Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765321793; x=1765926593;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=MqQ7CuFg2uQG1J5bdN7Vc0a8C6p4JOXok+RrLgiol44=;
        b=eqRS27Jvy4NpAoeif/o7J4j2MEZZKCoYLZ9MrA3SbpFDmm79EeSbl04zjSHZdKqjxw
         Qcu90IdKdWf9EzXF8KQnFDOclGvQ73iZ+/trKWRJvh5Z8mFzzotnwl0sjDqovpbRYPCy
         ptX1oZNpedSh8zoavhVpd5n1S+3PIAQK7LAQw+AXQSor7AG0jVk5UnhVdBG+evQL1Evh
         ASEgFPTF50N8qQk/KHSSn3mIgICf2+s7fXoXsJ9L2Bl/R0FX3QJdhQKJ3OzMTyVgyQa3
         2+t3UKVund1NPOcr+MdII70MF1OmB6HsM4AFwC1xkE0ceyvQj5PWLWiRZb6I6IlgyIYL
         oaLA==
X-Forwarded-Encrypted: i=1; AJvYcCUgpQF16f9P5H319Cdadt59eybLiC9gR3Pg/vSZyGC8p5cuoR7K/Ad+sYieMSH/D3NjJCO1iLi/p1WD@vger.kernel.org
X-Gm-Message-State: AOJu0YyI6Dt55AgZMfk+QCUPlZ2Qb5KZLO4xbJKttG4NuCUAxxzcE26I
	sqOTG7kecMlRG9eB7yzjaACPetgZT9aYsoPID3JFlWra2lHaK3UOvysvw8vRwuyuFm37rRLRo00
	4M4Fe1kSiLp8Hi6+hO4c13p1yzmx0KbuQHprEBaOOIrSQJtHRVVa0k1PmE1wSmqrd
X-Gm-Gg: ASbGnctoczjmYpJ4THNgFHjbtVK9VOUlvGCSm9+vxpXfrL+XBS+aaBNwh26na1IAekV
	jys+TSH7NCXrr71YEGt7Z4CkXHnr4BMD63NCnO1oaFpF7NT8YZ52bdD+NEyhISkQDODZczl60la
	w+bQSMt5TTEMAUs1LDtUJmaYw0JFgLaOIJulxt+C2owH7m0ABXtHFj/YDVDOwbaozuM0McPyQL/
	cpPng9duNhFFcV3Ee26ygXxspuK3y3JOyLpz2BCWWMD3xOGJwCK4JpXOsZenVOFMmMXrO7He4QM
	Vra8J0UQs7XwzaOOgVoY1HzxZn50KI+thpuspZFn8hBIz9cDesp8LuzIXHe+8HtO6qFuhd22Lz3
	qit2H9o1MGa5cEaHyszRXJq7oY8Z+0m4rxgTWN2QJMSJyw9ogLMTUUELrBHo77Q==
X-Received: by 2002:a05:7022:6b91:b0:11b:adb3:ff9f with SMTP id a92af1059eb24-11f2969f9c6mr293981c88.36.1765321792849;
        Tue, 09 Dec 2025 15:09:52 -0800 (PST)
X-Google-Smtp-Source: AGHT+IFCC8NeSyIA7e5vPQvysCLDkecln9w4ZgsA3OxaJEwsQ/wSssMZPk3ra1j0O64cNCZVhT0arA==
X-Received: by 2002:a05:7022:6b91:b0:11b:adb3:ff9f with SMTP id a92af1059eb24-11f2969f9c6mr293962c88.36.1765321792333;
        Tue, 09 Dec 2025 15:09:52 -0800 (PST)
Received: from hu-wcheng-lv.qualcomm.com (Global_NAT1.qualcomm.com. [129.46.96.20])
        by smtp.gmail.com with ESMTPSA id a92af1059eb24-11f283d4811sm3338933c88.11.2025.12.09.15.09.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 15:09:51 -0800 (PST)
From: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
To: krzk+dt@kernel.org, abel.vesa@linaro.org, conor+dt@kernel.org,
        dmitry.baryshkov@oss.qualcomm.com, vkoul@kernel.org, robh@kernel.org
Cc: linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Wesley Cheng <wesley.cheng@oss.qualcomm.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v8 4/9] dt-bindings: phy: qcom,snps-eusb2-repeater: Add SMB2370 compatible
Date: Tue,  9 Dec 2025 15:09:40 -0800
Message-Id: <20251209-linux-next-12825-v8-4-42133596bda0@oss.qualcomm.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251209-linux-next-12825-v8-0-42133596bda0@oss.qualcomm.com>
References: <20251209-linux-next-12825-v8-0-42133596bda0@oss.qualcomm.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Proofpoint-ORIG-GUID: XmX2TxlpOoBo8BpGCN__QwjpDwVYv2ZX
X-Proofpoint-Spam-Details-Enc: AW1haW4tMjUxMjA5MDE4MSBTYWx0ZWRfX3sk4SLBj4bH7
 QhuaCR645lmrh81oTcFDji7OUY9r//p5o0nD6VWLwlBI+hk9I9HrlT7KSX7GSdiuu66cnYRjzho
 hgTi16rwRiAAEmqfiY/0oBBlvT8aa9xEx+GMDWsYFANgkkMUTuChwC128bcXF6861OrV7JbsPU8
 dIIg02+EIFXgw/CLk2aPxHKfnXzUUVj19B9hg1gmgWtr/lO2Zp3SjZI5yHjS1o7lj22aB1BAOiQ
 XYApLrgGhKfODk/dqZroPH/sk6Dsm71viZ+anTxjw/PG9szua28S6xw+pIIWgWg2l+NdgJWUOWT
 UFvbHZgRxN4wlrvcwAv6Z7vRjH4MGjZVzLmoCaWYirqejaPzso9SxOc+TwVdr6U2dGPfLvKmfqv
 u+nnlLMe1f9rEzaVGWet4bc7M2QbdQ==
X-Authority-Analysis: v=2.4 cv=fMc0HJae c=1 sm=1 tr=0 ts=6938ac41 cx=c_pps
 a=oF/VQ+ItUULfLr/lQ2/icg==:117 a=ouPCqIW2jiPt+lZRy3xVPw==:17
 a=IkcTkHD0fZMA:10 a=wP3pNCr1ah4A:10 a=s4-Qcg_JpJYA:10
 a=VkNPw1HP01LnGYTKEx00:22 a=KKAkSRfTAAAA:8 a=EUspDBNiAAAA:8
 a=9ZGL9VZrYHwIVTkvpzsA:9 a=QEXdDO2ut3YA:10 a=3WC7DwWrALyhR5TkjVHa:22
 a=cvBusfyB2V15izCimMoJ:22
X-Proofpoint-GUID: XmX2TxlpOoBo8BpGCN__QwjpDwVYv2ZX
X-Proofpoint-Virus-Version: vendor=baseguard
 engine=ICAP:2.0.293,Aquarius:18.0.1121,Hydra:6.1.9,FMLib:17.12.100.49
 definitions=2025-12-09_05,2025-12-09_03,2025-10-01_01
X-Proofpoint-Spam-Details: rule=outbound_notspam policy=outbound score=0
 impostorscore=0 clxscore=1015 suspectscore=0 adultscore=0 priorityscore=1501
 lowpriorityscore=0 bulkscore=0 malwarescore=0 spamscore=0 phishscore=0
 classifier=typeunknown authscore=0 authtc= authcc= route=outbound adjust=0
 reason=mlx scancount=1 engine=8.22.0-2510240001 definitions=main-2512090181

Add the compatible string for identifying a SMB2370 USB repeater device.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Wesley Cheng <wesley.cheng@oss.qualcomm.com>
---
 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
index 5bf0d6c9c025..0f015a4c2342 100644
--- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
@@ -24,6 +24,7 @@ properties:
           - qcom,pm8550b-eusb2-repeater
           - qcom,pmiv0104-eusb2-repeater
           - qcom,smb2360-eusb2-repeater
+          - qcom,smb2370-eusb2-repeater
 
   reg:
     maxItems: 1

-- 
2.34.1

