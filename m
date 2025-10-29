Return-Path: <devicetree+bounces-232537-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [142.0.200.124])
	by mail.lfdr.de (Postfix) with ESMTPS id 48664C18C2B
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 08:47:38 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 82DCE4F63FD
	for <lists+devicetree@lfdr.de>; Wed, 29 Oct 2025 07:46:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4DA23314B87;
	Wed, 29 Oct 2025 07:44:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BSj6HhW8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36F1B31353D
	for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 07:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761723865; cv=none; b=LO74RcmKGdV4eCsHQW5vblICo4YlDxFb4eZJqxfiedFCBdxCwuIgVAj+v2LLi+vVadv4HoI9l6ye+vjGl9kmB9qv891RFY9oT3dfvoplSBI48qOWUzt53SwNeHwXhhlSqvws88RHl1d0aCJ/dDXXsfNpzEi8SV0fyUMqiDgpttU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761723865; c=relaxed/simple;
	bh=pY0T81cY/ChAcS24GMGsbOHLYcZF4AFMPLYAIXZGCkI=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=btd9mH3jHV8tKO1e0ya4te3ky/TCMqgk+kcRadbidXe8AHMrCHqNkMzT84ZNj/0KUtLOA09oxUg8NjK0zFHLD8cEgXnPro+BzXHu3aF7PaEi3UPz0GaNmVewyq52q+ns5Xt1zdYQY+Qb1pW9lSacJi1iCGmlYL9Op/WvFdF2b/M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BSj6HhW8; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-42702037a01so1224631f8f.3
        for <devicetree@vger.kernel.org>; Wed, 29 Oct 2025 00:44:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1761723861; x=1762328661; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=uLoICzRd6+8op0opPDRU9sy/8Q9nUpG50ggkEy9RRTE=;
        b=BSj6HhW8INYMbxccfa1JDSKGDo9B3dRGqdSdGGcbuSfhArUWRuWlEGw+rcHUvFA9la
         8rJr2g1egp4eWyXzF2zPlQKSn+R/3oDX9nBtvpW4AEd3qF6voIQryowaFU00fSt6uoSG
         6wbBbewERXUGewJdJm+AH1ezRhZduqgaf8TarfiDVebgVBPSLrqPDgUD8G15DKcFBxm8
         6hbdcb5x5HCK7H/eQznK9VlZ0gjAxKZ7bUcpoCRs+2fvJVI7XnbVbjzsKu1MqaRpNuKz
         8SnhJKFksdHUpnxwLx8ITByW4HYlGHIJx2NOR4i3tcpoaeTrDbPGcJdVlaMtIJVjV8LV
         +/Ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761723861; x=1762328661;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=uLoICzRd6+8op0opPDRU9sy/8Q9nUpG50ggkEy9RRTE=;
        b=uCf2pVOQS4P7+TBfr32UoDSCZnPW7YCXmfqcoCLASIXDFQkvn+8EjUFTNzLi7UAOnq
         2fWZgZKZv5x3aX5iCXS55tCAlMGU+C+UdiIyGq43u1xAFgQmIgBiCmYqFK/TNZkEexS9
         rRwJG+IuyTUWPSTa2jMjfzV1fgicTKXGH8iQF22vGPOIqSkmaEFzSxWmkeCEJjRjdFZY
         1W3t5jb+CLbyqQWFA/IH46Mw1/GpYirA89/sm6jvwHueyP97vbo9I3mpxWsNlcmuDLUm
         FbPBzFhgq2LX44vhx0JrXJJa/D3dSbuABMgOEaD/nl3s/fYcpBBfUd4+YM3Cqf/6srSu
         m8pA==
X-Forwarded-Encrypted: i=1; AJvYcCX0mgHqJ/jE8YvIH0ArlHvKWHMC1ubGL6KcrESwlDc5FqpJ/m7GJ/dyWPF5ulnr74aQpSxH+kBIfkB5@vger.kernel.org
X-Gm-Message-State: AOJu0YzyFhUVkR8TkHVHwFXuGZLHB3GO4AD7koMsVNoKcuwdetBKKKVA
	vFPXQXRi6nkJfAGbpYA5MRvJnG2+xCN+yRP23TsA0VrZ7a9r+kSm9iBd9W+okJKll8Y=
X-Gm-Gg: ASbGncukc7Ph4tY2PZpME8eHzJUvJvHsg4FLHYShiQGRPhNPCxFnSzqBqy7oO43PDm3
	5aM+GZLs96evTGRQt8RExsskHmK7cY3m2Sr8ShEXDOf4JEBPkTjYE7FZA3l3/Zgk0zlLSl0r2p2
	Ws3hIGxUH0f/1euimTZCf0q22BE3fM7W+DN9IkWmBGtSDOfINFJdylwZZxy/qV+t/Dm4RprIQza
	MUCFw1lJLR2fyU+nML66eg4LkYNSJptpso1pZSB6sMJXEaLW23wrAXkn7lDEHeR6XvwxogQ0vT3
	giWT2UV92d8o2mNRcP7NRA1sD2coDWVgxK8vKPrBBm5Gl+vSYVEu5QNtAz6KLi2nrWkW8JgvBcx
	1TOP/P1TtYRh1sIIfayVLQJ/6vzURHOnjRAtTm927IVcxHt5OoJISHiA+UHFRmF49CTqK/ILOiT
	kPSoT41M7yu9nBESSF
X-Google-Smtp-Source: AGHT+IHJ8OyXNXU5WYZsgm92RcYA0HDqcNviK7vtEMfCzdF2ELG82lZGAWMCSxgvENQxff5bDUo60w==
X-Received: by 2002:a05:600c:310f:b0:476:92a4:7dab with SMTP id 5b1f17b1804b1-4771e1ea171mr9824465e9.6.1761723861457;
        Wed, 29 Oct 2025 00:44:21 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-429952d5c9dsm25861146f8f.26.2025.10.29.00.44.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 Oct 2025 00:44:20 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Wed, 29 Oct 2025 08:43:57 +0100
Subject: [PATCH v2 07/11] dt-bindings: bluetooth: qcom,wcn6750-bt:
 Deprecate old supplies
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251029-dt-bindings-qcom-bluetooth-v2-7-dd8709501ea1@linaro.org>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1676;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=pY0T81cY/ChAcS24GMGsbOHLYcZF4AFMPLYAIXZGCkI=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBpAcXFeXM89iSHEA6sSVYxJYG65m3eVtxgMa0Tk
 E64VFrHaB+JAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaQHFxQAKCRDBN2bmhouD
 1x/VD/4yhLx2g9qWjYthtjDOWsvbBp/FsDwphIDzP49bahD893LSah0F709qDfCZsdY2z7OKPZt
 IM89DEIejsZb41xyP/mvqog8a5IYovCi3CkBSyzLONbMloZ5RfFu33zXcx8Sy7lGDSQmawjhw0H
 iDuxkNiwGmziRpwuB7UM2kCK26Qsg/C/GKuYVkVXrPxpaBkC83odqmdc7ws+vXnL3RVXrVsZS8v
 zCB8b2LockxmQ2tHFxaK4g7R2KDw8Xi15fpeScEZVC4eVkLbsUofONi8XiYTHwzMq9tGwgq3Twp
 /ygR5OpzIyZS8sJZGa2Ay4+h9QYE8evEZ8vbJJeu2xNcF+oUKYUOCk8Cn3yL2PNp4sYlCdM0b/Q
 48N/PWe1cMkhP4/aEECgF02kZKzuVlrOwySByLsaiLtEG/a2nRrzu17RrYoMg/M+hFIfZhIZm1V
 pHU1iZCzNHaPwt6FP9Ra3ZNuGoLyPUizOLx/n1xAqylNP/AgD+PbqbsAq76Eag8yKxPc4emqlCq
 0Yefy3j6DCGFYvp3fwLD9jgxSC0mmSfkrb0+DtjHQL3PW84NhUsVwlMH2nNLDBwFTY1sFMwvHVU
 jHdoZZQSAtH3+LTEyYDXciir+WgAD3oqBTMUw8Wb0QE0W27xUd3ia/dbb2I52eLt/sK6oyVnR/T
 HzM+cbO5RVW7zxg==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Commit cca4fe34979a ("dt-bindings: bluetooth: Utilize PMU abstraction
for WCN6750") changed the binding to new description with a Power
Management Unit (PMU), thus certain power-controller properties are
considered deprecated and are part of that PMUs binding.

Deprecate them to mark clearly that new PMU-based approach is preferred.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/net/bluetooth/qcom,wcn6750-bt.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/bluetooth/qcom,wcn6750-bt.yaml b/Documentation/devicetree/bindings/net/bluetooth/qcom,wcn6750-bt.yaml
index f11d12c205fa..8606a45ac9b9 100644
--- a/Documentation/devicetree/bindings/net/bluetooth/qcom,wcn6750-bt.yaml
+++ b/Documentation/devicetree/bindings/net/bluetooth/qcom,wcn6750-bt.yaml
@@ -17,26 +17,31 @@ properties:
 
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
 
   vddasd-supply:
     description: VDD_ASD supply regulator handle
+    deprecated: true
 
   vddbtcmx-supply:
     description: VDD_BT_CMX supply regulator handle
 
   vddbtcxmx-supply:
     description: VDD_BT_CXMX supply regulator handle
+    deprecated: true
 
   vddio-supply:
     description: VDD_IO supply regulator handle
+    deprecated: true
 
   vddrfa0p8-supply:
     description: VDD_RFA_0P8 supply regulator handle

-- 
2.48.1


