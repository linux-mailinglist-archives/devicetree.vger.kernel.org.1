Return-Path: <devicetree+bounces-189414-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 315AEAE7C6D
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 11:22:32 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CBAC53ACD6D
	for <lists+devicetree@lfdr.de>; Wed, 25 Jun 2025 09:22:06 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5F3CA2BD585;
	Wed, 25 Jun 2025 09:15:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="QF0rBibs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F6152BDC23
	for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 09:15:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750842909; cv=none; b=hRzKVcKcV0X3xaAnS7rXIKAucIZbtoTnWYG3tQwWsOvvlg+Xk4JDPGSb+QtFpL+fhqmPYvy+Eomd2CVrFGQwSBZ/cx0EFuRjQIYRgrKs0ZEhmRzf8k5lVMpElpl413ULAjPDj3g8TT5ZbAAPKP9BiB2GoG7QPAX72F/mTakz0sw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750842909; c=relaxed/simple;
	bh=9GiaZ2p/nxP//ytqx6Na68602XUJeae7knZz2N0Hquo=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=oQv6++HF5GcfefDzqZKQLOKxfkGyuJhan24PMF+IBuJ4Mi1lwt7fHojMs0TIfw2xUOMlilplj/r/cjuq1uDJNLomq1kHmKtGkuHBYwaKvHwN68ME7SmXKS7t1k2gSZQzw9tziMuF2GlHyJjO9gZQK9AnjJ8VnZ9Ia01tX0KWomk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=QF0rBibs; arc=none smtp.client-ip=209.85.218.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f50.google.com with SMTP id a640c23a62f3a-acb5ec407b1so1055850166b.1
        for <devicetree@vger.kernel.org>; Wed, 25 Jun 2025 02:15:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1750842906; x=1751447706; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mAzlUWY2EqvaD05NI5pov78EMSJ4+ZBWhP35Qs35mcY=;
        b=QF0rBibsJUxWvNxlZloxVVGmOhSfA+p5wDTpTowR36aa7k9qmR44ocil47QiutAWsP
         DX81zXZ/iDvj0HW2UCxV0kSQnpdSkKkLycUJ1KxHBdQ5JTGl0KRQ6q/aWwdVN8MXbB44
         F5vD3AIWXEpKbQLRzWT3rFGeL2iAobPrfc4CbS9u0S9h2zWl0uyK/AO0iIxLU/4IH8xG
         17TFNZaJTaN9+biv9+72/z6AvwB6Jy1AnymdXSTBhmZQBeK4+MzKYY2n6NEseECRszHc
         /a60F3PuVVjSkj+bWnJ39wttOV2Z3UJ2Cz9cgFXBmJ9tux7eIIHicQaXzMBiHs4MG6xn
         ltCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1750842906; x=1751447706;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mAzlUWY2EqvaD05NI5pov78EMSJ4+ZBWhP35Qs35mcY=;
        b=cwu2c+ZxBL6+o3/UATedYdFlFEY45clRSy+jBMFiH7HFZKrxz2nRhVbQi5HupcEqy2
         8oKp0j8xn1BUa1+0FutJ4tRfdxlYiHG/+Wv1DG6srSA4OsSzxfqe3IKTL4mXUEUHnkC7
         mkUagq8fNqXxBt7Ne5Xf0q4lGA+AEFlU1/BDUmWdKv4ISdaQbMO5OzmdzYoFXUqXRgwc
         +QgNa83wpxKE0MkTDMGbrzwDD5o+tH8fUCzq352zjz4+ylLAy+fFCAZKoK6CETnTOcGp
         tBEvfDeFAjB5IhacIImeUrEjRABjo3wDtpJl0ZGUZNVgqmC0G5T8qqmprNsEtZYo5Wkn
         M6SA==
X-Forwarded-Encrypted: i=1; AJvYcCX3Yow4jNXVdI35ozs3feVbMy25bExv+thr5hZMQDsoPT9xWR/T77wLOQ5KLe5AtNrf3OQxzF9thG/d@vger.kernel.org
X-Gm-Message-State: AOJu0YzWFcm1RZImRtOsP42Cq/ssMAvd04bEp5xf9z0x5ND3h7+5JPZK
	XFe0JhxG9dzoSZi+mFgwhLhpS7BvCtqNOos1ZvK1GcUTSCx1vjzCtwb8p4VeoJhtnck=
X-Gm-Gg: ASbGnctog8hbVUgWFfzekqFSv+iu0CJBLwuMrZjjSGZ3/H0ExRbBrTrlk044cVyHMvq
	n55Ls9EE/kUZAITnfBiMLd6ncA1HKjA0MlrOpSij2i2WBFZyYk0JPJ5RcR5oyZPA/3D2G2wgtEs
	+B72uaOLsBcBEYb3CQyUM9Vy81floKM8SNljKxGkBaBQd5gJIlWZ4R1WMg2GKZ7GqZxffbTAalX
	FfXJ771dP/BzlUF9O5xXdVkL36DCNc7Q2ASxD9Qyt7dNBksIjH3ItdxVmt2TWN0V8eyclsDNGE/
	PG8UrzpKwlXuEVP9S4WWJXh3sUnbDZ5ULafoBHl7mH6QzrbrLvfTsDbv1WfmOPE0VhBxJeWhQ2b
	mYEhcMXD2IWqEYLVq9VJQnC6AmMeW+Nak
X-Google-Smtp-Source: AGHT+IHfcb1R/5G1p1D1Z8iqejyo/Aq/XvPrfI1iFMiH4aK59J/B9AcF8vW1nRksr4D+XAcktFDzpA==
X-Received: by 2002:a17:907:d29:b0:ad2:3fa9:7511 with SMTP id a640c23a62f3a-ae0beaba4aemr215314466b.41.1750842905839;
        Wed, 25 Jun 2025 02:15:05 -0700 (PDT)
Received: from otso.local (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-ae053ee4c2bsm1008972266b.71.2025.06.25.02.15.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 Jun 2025 02:15:05 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 25 Jun 2025 11:14:56 +0200
Subject: [PATCH 1/4] dt-bindings: phy: qcom,snps-eusb2-repeater: Document
 qcom,tune-res-fsdif
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250625-sm7635-eusb-repeater-v1-1-19d85541eb4c@fairphone.com>
References: <20250625-sm7635-eusb-repeater-v1-0-19d85541eb4c@fairphone.com>
In-Reply-To: <20250625-sm7635-eusb-repeater-v1-0-19d85541eb4c@fairphone.com>
To: Vinod Koul <vkoul@kernel.org>, 
 Kishon Vijay Abraham I <kishon@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Abel Vesa <abel.vesa@linaro.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1750842904; l=988;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=9GiaZ2p/nxP//ytqx6Na68602XUJeae7knZz2N0Hquo=;
 b=sZOd6X/TTKsIXlQi1c49HslZ89NGfRuZaXpOsS2usgmdvQDgC8Ef8q5d5SXdJbjhaG1+NGSM4
 E6Ygjl8H9IFCR/3SZaedBtkip9bwaE0PYLi08jVFwrmWLgDWEbiKmun
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Document the FS Differential TX Output Resistance Tuning value found on
the eUSB2 repeater on Qualcomm PMICs.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
index 27f064a71c9fb8cb60e8333fb285f0510a4af94f..6bfd11657e2992735998063b3ca390e04a03930d 100644
--- a/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,snps-eusb2-repeater.yaml
@@ -52,6 +52,12 @@ properties:
     minimum: 0
     maximum: 7
 
+  qcom,tune-res-fsdif:
+    $ref: /schemas/types.yaml#/definitions/uint8
+    description: FS Differential TX Output Resistance Tuning
+    minimum: 0
+    maximum: 7
+
 required:
   - compatible
   - reg

-- 
2.50.0


