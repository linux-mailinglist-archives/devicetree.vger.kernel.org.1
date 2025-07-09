Return-Path: <devicetree+bounces-194444-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 589FFAFE3E9
	for <lists+devicetree@lfdr.de>; Wed,  9 Jul 2025 11:19:30 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id C1F8618985AD
	for <lists+devicetree@lfdr.de>; Wed,  9 Jul 2025 09:19:29 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 64287283FD3;
	Wed,  9 Jul 2025 09:18:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="5kOdlUBY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f53.google.com (mail-ej1-f53.google.com [209.85.218.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52BF5284B2E
	for <devicetree@vger.kernel.org>; Wed,  9 Jul 2025 09:18:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752052726; cv=none; b=rKWH3Boktaz+XLkzNKC0Q4W6JK73jY+2K8f77DCTB+ZIrNuOuWWfSVt5OwPZT8Uzrp4FQJnvurxmICBzfh/ZmqDnN4gJBFfrzoomFR3hFuswZcEXMFEgDW37SdpQUhKjv2l3TUD740iPBt9OygG7cO0IuMInZt4/xKFWsVsTzW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752052726; c=relaxed/simple;
	bh=N1DuyPNcj5JKCc1IHvUuzahkrwJboCfhgqDrPUo+Zic=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=S8MdwVK42+JW1tDmB5JYkOgW6ligrZyR46OG4wEE85QR8CfeihN6EoijXXi+CSL5dJ4dwIGBCuy+fbZ0Dg/betpYEt70nYUGWGBhrymjys7+ZBuFl9TtLv9yZ2G7G1hXHA+9maC1Yth5cTF9vp5BfGG78Tf/GgJB3N/MAo3jnFg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=5kOdlUBY; arc=none smtp.client-ip=209.85.218.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f53.google.com with SMTP id a640c23a62f3a-ae3cd8fdd77so1116015166b.1
        for <devicetree@vger.kernel.org>; Wed, 09 Jul 2025 02:18:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1752052722; x=1752657522; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+YzGffSdl0SelALHaNtnKuFhO/J9qLrb0FjuAIV2ya4=;
        b=5kOdlUBYcOsuIB/hCmWJxrif+7v7Ne3pKpNmfpcSf8/diAlBwk5iIcjTJIe9QS47wc
         sMTlH9H72c6pQ+j5POhsHs6z49htzyqoR88BJkwKdOeGBIXLE8lJJNumJ3c3DGys50uu
         u7ofD0Udk+Az8BE4+OsiAZ34qDjldOwSU04iC+crYiw+QfumE/OE/N2V2nEPV1l4UtKa
         Ar+z7fxHkyAt+95b/EDfiOOsAYXyQg0WavGqIX1U90JEGNxzbuSRPqNodlSE4K3mw4jB
         cxmqF/zPaxesgLzjUSZSfJ8APMU0QapEWyT6U3HxlyiHla+ih8WWnN0xStTX0G4zm7No
         rpaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752052722; x=1752657522;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=+YzGffSdl0SelALHaNtnKuFhO/J9qLrb0FjuAIV2ya4=;
        b=bHK9RwaFUlDwWZ0i/2CxsZ18hUfF2YnFqG79mdtViwjfraaZXOjC7wTAe1hhD6rbjS
         dDin7vxH3KgjzQvy8vLC0Y4lexVIRdIwy1ossOJcIlEhM6+UqY+YnQOqPPwKUg80YqIf
         3vCbBmSxnCyo6KbJF3iBWPrZ1IaapUjzzRcNW/MRiz5QHkQBC2adEV/lwqER7YF0IY8l
         JOFId+gU0bAKNft4QnE1UkdOZzq7ll1XG4a6xYZmPXWS29SovUcwz9A7JCapLDTURRx8
         8xCxpgofuBOlQhnLIZvIMAC9vJFXUue/Ukt20T/0kgnYKFu+M/3m4IpDIvZGn40o9rq5
         7owQ==
X-Forwarded-Encrypted: i=1; AJvYcCUph0IIUOIzPerrsXL4wA+0Sr0rk3G9tZCZjMOrXyIM1S+gxKoCJFAKX5bZnkq0TsxJ6Cegidk8Geak@vger.kernel.org
X-Gm-Message-State: AOJu0Yxi6qlQYuF84vhLdM0d5Hr8Mqvf2m5Nmj+8K2cQfPUXlNzKvynd
	6WSDQnkskSBbYJxFJscFLyBAEvvInCY7E87CeLEe7SSjdBiMONMAHDuLxbS9R5Oky7U=
X-Gm-Gg: ASbGncvPgJ3FU8v8hif4rB7j2w5/MkAC6UHBDMEMroxqRnAUeB0sqTjp6/YeRCY4ao6
	bshUG4+bhmAjfYIjBES+dDJFW0jZ+yStyy2U7gGtVkQPUioFT43RQtaH28HIP9n1PKZsN+5odie
	Z4SRve0O5m82kwuqRreKGdRP85XIPj04t5rOys1xMqfivBKVZbxfG6+gF7sog/VU8Ceos4YN8Qn
	HEG9seSTyvvgKGQptuAJl0bFUFMXe8UlfVbWK4ARCMzSz6fc+p7g/kLtuTJRgS91Qw4uFvYVnYU
	LlDDC1qKVcwhC9Wffu88iLYzlFgzhYWeeCZqK6AzPrUmaXC3q3M2iNSHsLZmn13wI0l7zyepJqk
	FX9NWjJagiDstr1x0cmAGvY7H1Ph+uu5I
X-Google-Smtp-Source: AGHT+IHxUaM+C2R6jkXjJD6rCqMOZdTnVavMM1pgYMFVzDnu9HtXv6fIbTrykY0qZGIVD/WAolgKPw==
X-Received: by 2002:a17:907:3f17:b0:ae0:bb16:1cb3 with SMTP id a640c23a62f3a-ae6cfc3e135mr185121566b.51.1752052722372;
        Wed, 09 Jul 2025 02:18:42 -0700 (PDT)
Received: from otso.local (144-178-202-139.static.ef-service.nl. [144.178.202.139])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae3f6b5e737sm1060116866b.142.2025.07.09.02.18.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Jul 2025 02:18:42 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 09 Jul 2025 11:18:15 +0200
Subject: [PATCH v2 1/4] dt-bindings: usb: qcom,snps-dwc3: Add Milos
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250709-sm7635-eusb-phy-v2-1-4790eeee7ae0@fairphone.com>
References: <20250709-sm7635-eusb-phy-v2-0-4790eeee7ae0@fairphone.com>
In-Reply-To: <20250709-sm7635-eusb-phy-v2-0-4790eeee7ae0@fairphone.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Wesley Cheng <quic_wcheng@quicinc.com>, 
 Vinod Koul <vkoul@kernel.org>, Kishon Vijay Abraham I <kishon@kernel.org>, 
 Abel Vesa <abel.vesa@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-phy@lists.infradead.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1752052719; l=1258;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=N1DuyPNcj5JKCc1IHvUuzahkrwJboCfhgqDrPUo+Zic=;
 b=rb96OCei+nJnNOyzP4b1MNdnFGw98NO2wwz7mhvHHcJLFGHhCzGptxQ88EaQxQvSSui0OygF3
 0BbqX2XwpQhAMBbPnBeOAM30ehgBH0np3JfuopEX/Zk0s7vD8pLqeUn
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Document the Milos dwc3 compatible.

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
2.50.0


