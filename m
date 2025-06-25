Return-Path: <devicetree+bounces-189410-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E43B9AE7C5E
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 11:21:18 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 3A0E04A4851
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 09:21:19 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6B3572DECB1;
	Wed, 25 Jun 2025 09:14:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="1GjBIvz3"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9DDBB29E0FF
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 09:14:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750842884; cv=none; b=NPwK8bn5ldeTS8u8JJagHAnoY8wBpp+8lvUUFM4vNNrWrFCjcm9WsHTB5kK+NYa7x9QjwFtqadoBsgxFgiUlTvNRT5F45zO0HTTtZ/VLwH6p69dpdEf+8zgOvX+10AmCxYgGmqcXAeUoQvYrs2lkGUjzy1eUkVMG3Ixg73PqXWw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750842884; c=relaxed/simple;
	bh=HKY7AzgHHOMUKSqDSyXSmqFr6rS8cg0ALPFDJvvYf80=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=eWcWE8WTd0968nSOZ/ZAgpwixEVm4BWAocAMfeyy2bm+HudLwM30w6Q6ZVjAl/wj6X+qJjnYBfgf1Gc43/mYFrmvSneJMTlf/5uLs+gFeyNtn56ysd6eCvKV/6Q+8zWue2wkRVc6LEvWmvbDHKtnv3W3/RyVJ/rp8GUfazXvKAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=1GjBIvz3; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-ade5a0442dfso242830166b.1
        for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 02:14:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1750842881; x=1751447681; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=eaodSZscksOv8tm14xnsYu3NQ9jnag2C5XRSXbuw1WQ=;
        b=1GjBIvz36b1r+IthEhw8y67JdzzAB9NTRvfVnbimVWoJelvUV7/9GcBb1tIGAbsxvB
         TnqrQYRZOfNGqpwmiSRSOnJefcmVH/YPy1Nk748GZY8s1U8Q5ESdFR5VT1Gyt7MenqjO
         knhfiP1W/PogDdJG9MQn+Uo1kK/MtkXX+oaXbFu0HoEab+PSQqDN4JpruzTEMfBPHgDK
         CJ7+ZFOKl1gc5m4RNFUfEHG7LEaK9CRq46Ew666CpwPakB+fQ6s1tVP1bjXnDwBPA86/
         2rtmVAt3dLpskSGFrAFi7BlLBpPmVzldClCsYiIwDvk1eLSx2qCGQy3BwSLYOgcBBJsd
         CzeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750842881; x=1751447681;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=eaodSZscksOv8tm14xnsYu3NQ9jnag2C5XRSXbuw1WQ=;
        b=PGTGQCF3cyz+bol/B3Bt/Ha68i40pBNZ+XvDPKKp/fqyawOvD0+yQpbZvddEmmMPaL
         6UuNrrFcUU4+u5Pzplgp34yIlPIvevJjXjlX/fYMJn5Y1ZB29UL6/YtNWI0+K5YTa22u
         LrvkJYWEmQjeBiWHbl9gAOuI7tqj+ARu2ckPXKq/1xCuvKlNNlMfsJ99JcGASGhe33fu
         mg2K4JCuo5gXsjfFG+lZq4a0S1ICTyrV8F37ek8Ybms1GgOGCGQWiWSSs5BZ804oCDZh
         KHS1QsGg4TKnfwAPjQVxtS2yh8/LlxGc843wbT7Cj0QltUvLEf65/VzhXTxeIkpAv2Sz
         WvYQ==
X-Forwarded-Encrypted: i=1; AJvYcCVUIGgPDpBUjM0KJQ768p8cytivti2LJ6KwgGITmVIfjklcdTuIA1ejUg2F0nKSYqrqUIqPwYzu4G2p@vger.kernel.org
X-Gm-Message-State: AOJu0YzCJPijZBGXAM8VpEDD2qyKs6V9PJsnD6U5AmLWa1RwTHvVavOT
	2Yb7vIpNPf1eDnzU2OmgpGKEnGNuqrTSU1e0ajCTbnby9O+ZGqkR7YTwX2A/NecU40I=
X-Gm-Gg: ASbGncsODqDNPV8xiMFEREEsPITPBWUD4loiQjwlZv8YPf1RmJ1tFuhOmBqxg76k+RJ
	B/At2rZhUCELpH35CceRYduoqpOObNSMHUByX2D66jEOgZergm09YWb/DbgJZbcbIQaUcGbtrPM
	hBY0qk5aWBj7t+CIr/vwEJS8RUqBDVL5QtmS7mX3OjRe/oWms1O9ZSciaOb0lQcg1orp9FJCTbD
	OGqx5uiyhVOhWK5gm5Zpnkafrni8WHHbk+4esutV2ze29EeArANzekH+VYmDLcyMbYmZ1glknTg
	R9sxHT59VrTSblHzu7NQRlD40X3ZHvOHmm2QKqU4woCfA0nmnGP+Qs8fWj0JaRzG4SFgXYVZRb+
	xDu0wqntY36KhyKJtL1R1rpWKw5TPfzPW
X-Google-Smtp-Source: AGHT+IFunGF+TjIwhPwj7Rlya0zRP0lHBHlNUL1mjavzGDv/ErrwypExO8gGDjyrAhjbat4NdQqScg==
X-Received: by 2002:a17:907:94cf:b0:ad8:9257:5735 with SMTP id a640c23a62f3a-ae0befdd107mr232454866b.3.1750842880971;
        Wed, 25 Jun 2025 02:14:40 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae054083c95sm1021480166b.91.2025.06.25.02.14.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jun 2025 02:14:40 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 25 Jun 2025 11:14:30 +0200
Subject: [PATCH 2/4] dt-bindings: phy: qcom,snps-eusb2: document the SM7635
 Synopsys eUSB2 PHY
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250625-sm7635-eusb-phy-v1-2-94d76e0667c1@fairphone.com>
References: <20250625-sm7635-eusb-phy-v1-0-94d76e0667c1@fairphone.com>
In-Reply-To: <20250625-sm7635-eusb-phy-v1-0-94d76e0667c1@fairphone.com>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750842877; l=978;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=HKY7AzgHHOMUKSqDSyXSmqFr6rS8cg0ALPFDJvvYf80=;
 b=pP28XPa6bi+AGmir1JGO84WkB42ZjM3elJtM0fuLH4V4x+sBvSLyjs+iDvGCt1Ejj0fMGiu/F
 6MUAWaZpQkqAycz3ZyI0H9Xi+Fgd3En7swav7XUkjWFIENM9Kb6pWsQ
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Document the Synopsys eUSB2 PHY on the SM7635 Platform by using the
SM8550 as fallback.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
index 142b3c8839d62d91377061ade3a7c400eb970609..478d6e315a4f19d624af28710eed676bbaa144e7 100644
--- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-phy.yaml
@@ -19,6 +19,7 @@ properties:
           - enum:
               - qcom,sar2130p-snps-eusb2-phy
               - qcom,sdx75-snps-eusb2-phy
+              - qcom,sm7635-snps-eusb2-phy
               - qcom,sm8650-snps-eusb2-phy
               - qcom,x1e80100-snps-eusb2-phy
           - const: qcom,sm8550-snps-eusb2-phy

-- 
2.50.0


