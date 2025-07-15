Return-Path: <devicetree+bounces-196386-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 43811B05361
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 09:35:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id DC4F17B935B
	for <lists+devicetree@lfdr.de>; Tue, 15 Jul 2025 07:30:39 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id BE3C5276050;
	Tue, 15 Jul 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="BGYnPXzJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B2DB3274B23
	for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 07:29:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752564593; cv=none; b=aKYJqvPnakUsJxVl6T356ql8Sjxi3SAY2QQdjbOOZrKDp1vyepRaH7v78QK6Vnf7kgfWbgr4Kvj4/9YSrrFAWxCfejMlUEjifNxcrc1sKgdYndf/aJZFQj08YgejuFRnz2s+Xm6PLuBvKh6CXMp+pox3s+qiinc0CZm075pilP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752564593; c=relaxed/simple;
	bh=sF0BBqSfmmjGnkvMWcmZuM22C376Bznvzv1cD7u8WVI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ezHh1JOMwWqK47MaXtTzpH/7/z07DryTc3TcUNTM9TKxOqhPr1Zl4NaTGx5Zb/xwsfN/K5EmQPKLSQaqJm4mNVQCD7gEtxuzszag3yVCaHlTnXM7XyGSbOKEzu2oVfG0RRWene0VkHUuuW0Q/BCfDu3GOtbR0DcAezA2N+vqv3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=BGYnPXzJ; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-3a6cd1a6fecso4913090f8f.3
        for <devicetree@vger.kernel.org>; Tue, 15 Jul 2025 00:29:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1752564589; x=1753169389; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=gMdbbj4BEowCYzs/Z3M6B78NShV/42oHTUmjX6X1bd0=;
        b=BGYnPXzJqVh5O2j8Zp2czkrFZebhECxO+QZiatbUk+MX57bX1qXDVHy8/WVgiuxWyv
         qCyT8pT1M/SjIT9gZNXhwuhM9P2pctwTphybsKo2HXlWs56iwAyDUcHKR3PWNLokktzg
         IB/um+6zfynUQ7GTywEaCXDCyOcHCOp8VZhJy3V+b3qqAn755s93eOtrbc01ZvMMTrle
         kVjU3IXQeJrgKbb8HPWPDUilk3n4FL1as2/xnmYAuBzIWoyWv7ITERARInI2SMBTBQgs
         Z/6QqjkclDGxrFWMQhrb05Op8HRRBBUIPaEY1VDZF9A6I3u7TSEjcy5pYQAtNLkTLb8Y
         S45A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752564589; x=1753169389;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=gMdbbj4BEowCYzs/Z3M6B78NShV/42oHTUmjX6X1bd0=;
        b=AVcblu4HWV2sb0kWNqxxZG9/SuYWvZE7aXskVkHILQw3aVT8o5UKqU0HZ3Rll9iYAg
         dIUNZ6L1gEzGv9krVcQ6qZdXylfaoqSpGF/kI87zkttefnNt08xuirxXuRVf4h2VooBX
         qqcbPape4siyroqc5JdvCIQryMGK1nbgNPAqMt3Y6UKccq+nIlXPB4qMJBypwlT/y4L8
         9H7fX+4j2iIS3Snw0dp5RciZoBe/J7TsD/w2hnDPTTNU6dCXmpoBOaia+QTz/dYobzTo
         QvrZt8rId20irUhEjepQNb9z4vfYWhSUqFYv+fZzVt0RE/qeJkbcu+nCVu+B+AgP1ccb
         sfEg==
X-Forwarded-Encrypted: i=1; AJvYcCXvWu3DB5Ja2rbggH+9jD6AsgPMfdFHwvuQB8uPaLhi+pm31FG4a2aKml+kXToU9onpEam3XF+1/i4/@vger.kernel.org
X-Gm-Message-State: AOJu0Yyvdxlrm5H5l/AeYwCuqd4kPKn6+WjT+YAbdVNDLwhFR5+cD1UT
	8xkU3WB86F+Yrwc4aZtCC3+OkNNfmDZbtP+qaAQow3t1vJQum2HN7lCOchCICFh8Vuw=
X-Gm-Gg: ASbGnctb1Y4MS0LdzlaZIGjY7NPb+/AOXcWrdm24Ac7OSgkwYEkxciV2A4CAW5EWbWN
	XSh+I2hITczGduVUws4UT+k6zYpw814F8jqgXB5jSeVxb8xtkQ33/EBYyxRMQ9gKK6Rtt5JEFIQ
	k08k1cj/wNqMRsqaBqlAEwVcWJK1VyiM/mgF6bR/p2sZGXBhClbe2zxeLjBKzwJ8tmvvQQ3fyYm
	oNwJ2EltBuw9mrBKd7gtRrsS2k2UUUCmDRJQmfRPpFYY4m1f66jBCR++u8QZw983prnJbAXgtYH
	FgJNqMOz9y4SDts4yW34F97725zupmZRQI2v6lkVtNRpRq0pFsgDsrc48KdIl0Id7d4wA+YEtgs
	Fn0+yco3Ewr3tRf7MFFdyD8PhMuAr9t5GjVNXIR2NpJLtTj7Kzq1hAfvc
X-Google-Smtp-Source: AGHT+IH7xZihVzIA5RnWD6NyU0bUqw560Kv27vVv2rhTAzSisPpc8YG7ahtot4M4YwZjZtNx8Gr9kQ==
X-Received: by 2002:a05:6000:985:b0:3a5:2949:6c38 with SMTP id ffacd0b85a97d-3b60a1bad1emr1118577f8f.52.1752564588929;
        Tue, 15 Jul 2025 00:29:48 -0700 (PDT)
Received: from otso.local (212095005088.public.telering.at. [212.95.5.88])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-455f8fc5a01sm106703395e9.32.2025.07.15.00.29.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Jul 2025 00:29:48 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Tue, 15 Jul 2025 09:29:34 +0200
Subject: [PATCH v3 1/4] dt-bindings: usb: qcom,snps-dwc3: Add Milos
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250715-sm7635-eusb-phy-v3-1-6c3224085eb6@fairphone.com>
References: <20250715-sm7635-eusb-phy-v3-0-6c3224085eb6@fairphone.com>
In-Reply-To: <20250715-sm7635-eusb-phy-v3-0-6c3224085eb6@fairphone.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Abel Vesa <abel.vesa@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, Luca Weiss <luca.weiss@fairphone.com>, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752564584; l=1322;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=sF0BBqSfmmjGnkvMWcmZuM22C376Bznvzv1cD7u8WVI=;
 b=kWHGuSS6cgAT+8EY14LUc3Wr8wswBjOovjk3j3OcaOlQzDYtixwgSAbOWluwm+7/DADGH77OD
 /ATYlXH1wgcD7S06O+brsLKzuyArP0bc9RfmMxcb0S24PBta83t8Lqx
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Document the Milos dwc3 compatible.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
index 8dac5eba61b45bc2ea78b23ff38678f909e21317..dfd084ed90242f0e77cb2cde16023c3421c5dfab 100644
--- a/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
+++ b/Documentation/devicetree/bindings/usb/qcom,snps-dwc3.yaml
@@ -32,6 +32,7 @@ properties:
           - qcom,ipq8064-dwc3
           - qcom,ipq8074-dwc3
           - qcom,ipq9574-dwc3
+          - qcom,milos-dwc3
           - qcom,msm8953-dwc3
           - qcom,msm8994-dwc3
           - qcom,msm8996-dwc3
@@ -338,6 +339,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,milos-dwc3
               - qcom,qcm2290-dwc3
               - qcom,qcs615-dwc3
               - qcom,sar2130p-dwc3
@@ -453,6 +455,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,milos-dwc3
               - qcom,x1e80100-dwc3
     then:
       properties:

-- 
2.50.1


