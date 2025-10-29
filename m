Return-Path: <devicetree+bounces-232541-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id DEDD3C18C65
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 08:49:48 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id BA63A4F0E79
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 07:47:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 88FA331986C;
	Wed, 29 Oct 2025 07:44:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="i3Rj+kGJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 78C7D30FC05
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 07:44:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761723871; cv=none; b=lIUbXfsC8DpTOx3QyN0jEtxDWfBScJJf+Q+xm0lk+KogOB8FP+QAGO+BZo8bHPG3ZLROvVDK0OPD1zFVQKQSTkxW1QR9FLTj2UTQzNXkA+2L6s5ypViJGSouYRU3opPa3e2J8yvWN3HXsKZUWfeaz8JQCAOwPmBlfu7x1cXVkB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761723871; c=relaxed/simple;
	bh=IYVuBBwaeQ1PBLKcrd5NHt65uFxyMucqOKrr61RZ2Wg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=bFzPZvOaxF6vF+0I2AwKWJ1e/eE1bQAHiRTLRtC0UAM24NHbMe5qMvM50vIQ/NXj2IZl/1UfXij7GDLqWSEsxiaWJhuKhdMVbJXSURnK4Q9RzvVv4DacWjrVHHZNm9dtzgLiXAKDIukNFTqgCFVcwjcrWEStuJiHIJExLqFPc2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=i3Rj+kGJ; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-4270900c887so790021f8f.1
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 00:44:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761723868; x=1762328668; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=56Jo10Sia7JFeNP22R7+UWXRhqXjXhFECcRuC4d49m4=;
        b=i3Rj+kGJXpTtZqwWmQdnqj2joE+I/V/4T7+TMwqynTKmAZ9gizkkT3N0p4p1qzAgcC
         cojK2Zlmi0EU5DCcZBCdsXqHp3YJje3BKSxNBpoX1JJgimefxQf5+V6vmnYMIO4DSL8x
         T9QoC1PY9z9Xd18tCnLPuaS+TnImfaytVtmFDw9QNsXBrHbmJXTUla2DspY/+c+AnzWV
         EYBtv473pJadSVZOHLAwcoV2pdkZjXP4ct0NXKhoDclWTQvEwijVVqYE6rIwDgD/Y8p2
         TYo0OoAhkTr0mchNFEMsT6iIiBHzX/hJCQaXrX/K9m1Y3u2CHmToJBN7c5UWtTDp3OCp
         7QGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761723868; x=1762328668;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=56Jo10Sia7JFeNP22R7+UWXRhqXjXhFECcRuC4d49m4=;
        b=PbklTP1FzeycVD3xZELTaxsQUTXzZ9L2vi+KxNEoxZW+ov1SwV2zEi+azqYses7Ix/
         IoM+OtmHWk+DhsEIILhECXoa6fXaAJ9UrW1xznLo0ZWeEWUZFdaYB9BapCIF0y9zJups
         0rbZpUINr3lNQCopZTieTPFWGjr/yGH4hUHj5ZKdEoyilITji1iVk0/broxAGwBA/EyU
         JuB9QPXXGAbnt+zp9IetGd7uol0z6/j3j79r1tNgAnwvRk8rDh2A8BA166nDs6KF8NGl
         jI0Kbyz/0jrd19+Gg3i4L/Y+OH7w1Zulf6MwXVLot5MrX4DSelfhBrDfiJK0GJJHmRNp
         B9Og==
X-Forwarded-Encrypted: i=1; AJvYcCVfA+WckhrAhAJ559ryZGDpieMIKZ5VnYqJhTPgRv65wJ5wPXPV/aHWS86mK43PajW9vKhoNJflg9pB@vger.kernel.org
X-Gm-Message-State: AOJu0Yy2a1Hi1HVKcKxbr7kCjQk9bXbH/G3R01YglCBp+lz2Iql6/7m5
	xTnST6GUo3VRWBFolgbqpUub8rNaWZjWwklnXzXV8+Y3ixQxqtT1n0AtMgqfEELhxEI=
X-Gm-Gg: ASbGncs6pCkdxHVRvPqysfGfbf4A2nMnjDKmeh6uUEXggGKJioZNKw5fwRUWehXvyxc
	WnIqt1mRiX69RgH/lUeqxex6BICZ9pEg1n++rxNe+xH7mdzb218Xtor15i1snFeu7x8Z99nXBfY
	gCrbGOlCp861zboXqN7UmiAMLFXehHCHxeDL9A5jcC19P9n/TPG55yF81ZkXZ9GnOEPDcQFNYkT
	8J49mSzi/Sf9U1sdkElgPRpY1S1EImRmKspJrKBsZ0Ig1YXvbNWlVB2KrVI4nK3qKaO0/OannMO
	48vmgGtF7zJF6E79M7nhsY3mYxhdrHBq1jEawSFgbez2bKoiz/GOJtZCAiG0DuiP30/WmXCV8Cf
	gxEFOhf4QFbnwsV5206Bu7drbsjydIx94ThL1oHm7lTbKasZoGuHu1kcvTn3tc8ax6SW1OHTdv8
	Wyog2UKH35fqSgRoB/
X-Google-Smtp-Source: AGHT+IHjedGJxFD7dLMl/rvsV3pkJFC7qhdSb+Sc4hQrT3n7oSY5Ppgz4lO64B98FeOT6QXtl65wew==
X-Received: by 2002:a05:6000:4211:b0:429:8d46:fc5e with SMTP id ffacd0b85a97d-429aef890bcmr739869f8f.4.1761723867597;
        Wed, 29 Oct 2025 00:44:27 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429952d5c9dsm25861146f8f.26.2025.10.29.00.44.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 00:44:26 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Wed, 29 Oct 2025 08:44:01 +0100
Subject: [PATCH v2 11/11] dt-bindings: bluetooth: qcom,wcn7850-bt:
 Deprecate old supplies
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251029-dt-bindings-qcom-bluetooth-v2-11-dd8709501ea1@linaro.org>
References: <20251029-dt-bindings-qcom-bluetooth-v2-0-dd8709501ea1@linaro.org>
In-Reply-To: <20251029-dt-bindings-qcom-bluetooth-v2-0-dd8709501ea1@linaro.org>
To: Marcel Holtmann <marcel@holtmann.org>, 
 Luiz Augusto von Dentz <luiz.dentz@gmail.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 Balakrishna Godavarthi <quic_bgodavar@quicinc.com>, 
 Rocky Liao <quic_rjliao@quicinc.com>, Bartosz Golaszewski <brgl@bgdev.pl>
Cc: linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-bluetooth@vger.kernel.org, devicetree@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=openpgp-sha256; l=1724;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=IYVuBBwaeQ1PBLKcrd5NHt65uFxyMucqOKrr61RZ2Wg=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpAcXJHi6PDpi9tcb/UVaQyeVu+F4p55yHQBxpa
 CHP1idfosuJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaQHFyQAKCRDBN2bmhouD
 120fEACIQVZ32STXzRID4r+U1N+GviJ1fbhH3ZTYCf47w4G7D8J/IusF9rmaoqVN+JI4KvTiPSK
 erfG8OpgD1sXUwMe9RWRduwosqbAE499+yIGSZCnjTd66UoyDKi5St5Ww8BkclpGRVIyfRWm4Yp
 f+lRQQDQA7+50gkK8UH2sMsgiBDz6qDYakSmi8Swb+1lOAMoR/fYprYy5XWzLM2TX4uKZPemUdx
 Waldkm2wBIS2OB5XcNyYOyYpUM7lGqUWwpjjUwAHIQBAE2kJhHaw+CnH77XGxE2GJLoa99KJm0j
 fEyHbSWospV4yFiirEyDcUxq7hFL4pwDxAjI7DuihC0JfVML0SRPDePrbRal/EXhIFBeOHPyS0v
 K+gNk8ZH+HOhdr7F21azJrDY/6JQathhFiWnxBuigg9euNDVnvax3KsL+Lt2TtHuv5n6KssX4AX
 UFJ4Ms56rjda4GXAXAyVAH8zwvXtb7hIpkH76Du1q7bHJgVUQg3ylsfNgdx2E9YqPh0OmAWfsg/
 NwD+g2K/ZMFGQf3pMO5Odt8nudMn+xIRYRNJGQTMe0wC8TiB1sksT4AHMOZdOWWSi8J9+N1C3bw
 Dt1dej5woZ6nGPabHmxLdViwkim/QdUu/TbjdkVf8IyUhyzRuYeCbLxF4oWcWstWCvML+3AiivF
 TJTKoQZh7rreepQ==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Commit bd3f305886ad ("dt-bindings: bluetooth: qualcomm: describe the
inputs from PMU for wcn7850") changed the binding to new description
with a Power Management Unit (PMU), thus certain power-controller
properties are considered deprecated and are part of that PMUs binding.

Deprecate them to mark clearly that new PMU-based approach is preferred.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/net/bluetooth/qcom,wcn7850-bt.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/bluetooth/qcom,wcn7850-bt.yaml b/Documentation/devicetree/bindings/net/bluetooth/qcom,wcn7850-bt.yaml
index bd628e48b4e1..8108ef83e99b 100644
--- a/Documentation/devicetree/bindings/net/bluetooth/qcom,wcn7850-bt.yaml
+++ b/Documentation/devicetree/bindings/net/bluetooth/qcom,wcn7850-bt.yaml
@@ -18,20 +18,24 @@ properties:
 
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
 
   vdddig-supply:
     description: VDD_DIG supply regulator handle
+    deprecated: true
 
   vddio-supply:
     description: VDD_IO supply regulator handle
+    deprecated: true
 
   vddrfa0p8-supply:
     description: VDD_RFA_0P8 supply regulator handle
@@ -44,6 +48,7 @@ properties:
 
   vddrfa1p9-supply:
     description: VDD_RFA_1P9 supply regulator handle
+    deprecated: true
 
   vddrfacmn-supply:
     description: VDD_RFA_CMN supply regulator handle

-- 
2.48.1


