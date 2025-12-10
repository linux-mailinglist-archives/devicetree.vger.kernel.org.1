Return-Path: <devicetree+bounces-245510-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id C5E08CB1A3E
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 02:45:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 00B7A3124965
	for <lists+devicetree@lfdr.de>; Wed, 10 Dec 2025 01:44:03 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5695B22B5AC;
	Wed, 10 Dec 2025 01:44:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="hKS6oCp8"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E63D22A7E6
	for <devicetree@vger.kernel.org>; Wed, 10 Dec 2025 01:44:00 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765331042; cv=none; b=hMog9xtCP4XiCfpS7OIHAow7NgLqqijmTZs5SzvH+437glKt+gCJpJ2P2dRflSPrZ4KLsmGVRjizeGzrCtJcJzbPPcEPQEIG+McgynVDH7qM20gUwd0cLAwHIO0tlZJKysdUOWIYhrkZSYpJZIfKhRJHBVUMaIIWePPhRUNOF9s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765331042; c=relaxed/simple;
	bh=Oj83634LuR0Sk6h6LV1CwwmH8/xA1oyqe0fNzBAzWv0=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=GhtV2vbx9yPdmEbpKW8aR1uMcca9j6oANzwzhcZqy+o5Lln43zzsI4i9K2y7wbntJbTU2xXWF55olFhGHIjc/FQsiuDgJWUy8vs+O/lGcT7PJR2ZACcUDDPnYJE6mVh+njGUiVLzus2oiUQhriY7DRn+oBODI+PvFlaaMi8lF9s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=hKS6oCp8; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=quarantine dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-47774d3536dso3717625e9.0
        for <devicetree@vger.kernel.org>; Tue, 09 Dec 2025 17:43:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1765331038; x=1765935838; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=umLdQ4Z0Oa1qrbBohYzZ1X9EBV4iKWUTwztaRyY6xyM=;
        b=hKS6oCp8m1f9thEctqo4PCFwr4b3BrEWMEXs0p/fhB4bGOQDmlNs9sTlQ1kx5zz9Bn
         VJV/1/UTftbaziYT/CEAJQcAnWPffAHfeFgomvOYOVrmf/G+uAbRmhbJRl6Pg2A4wR1/
         tGltNQtpBosKvd0TaRvGDp8lkrSMSj9W1lk/AprGgG3OL22EAj7SS8OVPPWX1i6AaI2B
         N5yZtKUMq9bcFmP1vJ43yQLAFXnZg6ZeAXc2OSanNQ01Ub2FK5a1yuhBliwPuJ7A7nTQ
         p6LritUo0UCZhkD17DCubEnPST4Em1834/cAKpvQFqYrcptuCPAAph476NjNLN8jR/8t
         ZJGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765331038; x=1765935838;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-gg:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=umLdQ4Z0Oa1qrbBohYzZ1X9EBV4iKWUTwztaRyY6xyM=;
        b=c4FnO5oB2BvQlY2A4WjxB0p6O4AJ92RuZPdVH9gCZqbPhjkezJdzPbiM8uaLUPuy6z
         +3xvRqk7VQJ1XdG28ejFi5xT+HHGnqVg1JeZj7NL/nbytaHvfIO28x9Ax69MXqJhYZrG
         /bfDizXfyX3B/g4p0TCZa7Z3dj4OhdH+16q1gAK7GVViNqh5UbL0WI07fqWfwVg6jabQ
         dub8BtBh9TEjc/IR+vvH/67eBmMnFTP8cjP588iwOz3I841etDbaWvnY4UH9/SDD/lLB
         ZCBV8ie+T7DyhtRUwA1ink5MHGZcTjG3nqmHGAhp1VVMfFLqJzjckNHV0NxGM/HleIp/
         VSvQ==
X-Forwarded-Encrypted: i=1; AJvYcCXNvpLJvRyMeafA7HcI87G2QyERrJKRTW0Ptvoejw9BpdMmd1zWas7pB2VPnHbb8SyUYvNSClTPC/XI@vger.kernel.org
X-Gm-Message-State: AOJu0YycPFo8kWAK4zrobtyiU/+RBloWURKdRAY8trjs6++iSk3lC9Sk
	e2HA7sAoHOjdrpnamUO4+L38hoiLyZ0TPBh79JGuf4/LAqcvmx2IY/aqbqMhVOzrg7o=
X-Gm-Gg: ASbGncuzDAe+zHyPJe2YK2ZLp8Waa9EwooAeZbFHYA76vSmCbWdEzdoN0g9IwWFbz6g
	haFwT2YRX4MFvcHkjPPVlaWOBboZtrrI0IttJ6uOBtWmwWegKc6j1whnJEeTAw6nrphe73T9tty
	c/tYwzJJ1jMLErRopucThrhdlSEDdEDpDJhgDW3AsA/FTVsYfkFEK8ipfItnGKrPBc8f438N9Bz
	GKyoD7R8CXAh5Gwh97gLz7Z6SCPkTbvnjPvAmPHJ8eQgJKGFxL+ZxKrTzyRvp7lVu4iK/jyVob4
	w946IVlvE2LafubfeqAG9anCPmkJKb9oYiEOaamx0P+irmmSYjz/fiQDxT+Fjz5dZWwgyrQUahG
	zRmrtZJOgzOg1xcDc+BFQ8Ogi8LhOvLpx8xcN88L17Qh5HkC6d6/MpkTlWWRpvZilkQwMUmIxhd
	9PqKXQl1yAifFTL5XX0z328AwIE+gVo+gRf/jDoYjl1NcSiP293dUJ39qfLLfe
X-Google-Smtp-Source: AGHT+IFxIH9jfV/RWAbce1/H/pLcaMN1DtMzvU66F5/t/lzbYkrchMrfDWq7ziyApOqmo0GYQ7+Rqg==
X-Received: by 2002:a7b:c4c1:0:b0:477:9890:4528 with SMTP id 5b1f17b1804b1-47a7f90f296mr22741845e9.2.1765331038494;
        Tue, 09 Dec 2025 17:43:58 -0800 (PST)
Received: from [10.200.8.8] (p99249-ipoefx.ipoe.ocn.ne.jp. [153.246.134.248])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-34a7000c984sm705234a91.6.2025.12.09.17.43.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Dec 2025 17:43:57 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Wed, 10 Dec 2025 10:43:28 +0900
Subject: [PATCH v4 4/9] dt-bindings: arm: qcom: Add Milos and The Fairphone
 (Gen. 6)
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251210-sm7635-fp6-initial-v4-4-b05fddd8b45c@fairphone.com>
References: <20251210-sm7635-fp6-initial-v4-0-b05fddd8b45c@fairphone.com>
In-Reply-To: <20251210-sm7635-fp6-initial-v4-0-b05fddd8b45c@fairphone.com>
To: "Rafael J. Wysocki" <rafael@kernel.org>, 
 Viresh Kumar <viresh.kumar@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Manivannan Sadhasivam <mani@kernel.org>, 
 Herbert Xu <herbert@gondor.apana.org.au>, 
 "David S. Miller" <davem@davemloft.net>, Vinod Koul <vkoul@kernel.org>, 
 Thomas Gleixner <tglx@linutronix.de>, 
 Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-pm@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 linux-crypto@vger.kernel.org, Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.3
X-Developer-Signature: v=1; a=ed25519-sha256; t=1765331010; l=824;
 i=luca.weiss@fairphone.com; s=20250611; h=from:subject:message-id;
 bh=Oj83634LuR0Sk6h6LV1CwwmH8/xA1oyqe0fNzBAzWv0=;
 b=EOx8pyQClbvxV0JmxPZtxhQaHpK3rsiOVVqGjOi/NNcSkhi4NB2293BkQWHtDObYSmVC6Frya
 Yl7gJHRuUU6DjCXJCKCgPEBBMffksNyiPLo6G0Z5+OwcMXj2haqKv0Y
X-Developer-Key: i=luca.weiss@fairphone.com; a=ed25519;
 pk=O1aw+AAust5lEmgrNJ1Bs7PTY0fEsJm+mdkjExA69q8=

Document the Milos-based The Fairphone (Gen. 6) smartphone.

Acked-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index d84bd3bca201..43d45fe95ed3 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -61,6 +61,11 @@ properties:
               - qcom,apq8084-sbc
           - const: qcom,apq8084
 
+      - items:
+          - enum:
+              - fairphone,fp6
+          - const: qcom,milos
+
       - items:
           - enum:
               - microsoft,dempsey

-- 
2.52.0


