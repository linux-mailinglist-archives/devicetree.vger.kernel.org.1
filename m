Return-Path: <devicetree+bounces-195796-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 2026EB03108
	for <lists+devicetree@lfdr.de>; Sun, 13 Jul 2025 14:47:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 96C987ADAB1
	for <lists+devicetree@lfdr.de>; Sun, 13 Jul 2025 12:45:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 720C327876A;
	Sun, 13 Jul 2025 12:46:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="y44pprNR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 93BFD22B586
	for <devicetree@vger.kernel.org>; Sun, 13 Jul 2025 12:46:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752410812; cv=none; b=axz45JyXFptpsFAuxZsKSERyV+eml6vbRngeOQ7AguX1GfqMB06p8Nv60bpZxefyQD/RlEW555tMICv6QSXEbg63zY/U/MozJqt8DxvrXebNi3PHIhp9/QRctZLhkRvvLnqVv4vvbz/zXM9w+ybtEVW3FpcHe92DxZG0fSG4gPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752410812; c=relaxed/simple;
	bh=BlRvIRPzQQPUtCo+mAvAI8qOIImTdfvDN7bB+4kLIBU=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=hfl2wVQH3qtBORdgvVT9vkP4BqkwkIpgC21UsSEz4o1h8dOspsd/H1ztyIphi20HVSSzMesmExMwJww283YRcJzJJkhDNE/IgTQ7AXOE2WF0NjaHRxYxaFZV1hJe0Gx5bA5gG5+u8fzYAQbS1eozm6bpMT6mKT4aRJ7RhjZZBEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=y44pprNR; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-456053b5b8cso651045e9.3
        for <devicetree@vger.kernel.org>; Sun, 13 Jul 2025 05:46:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1752410809; x=1753015609; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XoZqNCvU/s4oHuYCydia6erGgc5X35yK1qc86vp7sCA=;
        b=y44pprNRPmtCZ6UkBpPZgIISN6bXIXiG5GdDO4RDjHK4Mu55Tj38zHP9qQocdNLL9Y
         o0xB4shAZOh80VbzCO60y6nxWEFSjhgtdVf3Ui0MEq2aDvJVMB6nwfYGqNvMTEuGvALO
         fo35OHpQfZrmFIF0iF4OEpBB0Jh7clp63KqW4MaocWHExgUDBorX17FP5slA2SYG7itd
         wdU5AFJ6FZKGRDjV0PRfzm7k0bw7tofRghreCoOG1AEBNfwY/KF2LkwHaeIcABTTZPVs
         jTlVM7YCMeHMrT8boiXn7LkDijyQfb7zO0qLS3KA+pZN5tqkIyM+Rsn6MFZNuuT65kiy
         JOTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1752410809; x=1753015609;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XoZqNCvU/s4oHuYCydia6erGgc5X35yK1qc86vp7sCA=;
        b=uUrC/rNbGUbzS/sZxYL180v/Tit0WIfv42H/3pqjqa09AGA+RfQUOLGJE/CXKdXBgd
         cTZtrKnnVha4xVKmpMgVixFFYMQDJvPAAxHRS+AxvoH+dzKWFFIr7YdDxuNbSOAZI7TO
         NwFaGPD8KkJqBiPUu+gAPmjaFiNfY1tPwI7LZgWvnt29dP+UhqE4gEZVmUc2HulQEW8R
         uM5hiv0pWfCX2T1JhvJbB7BYAuch4vdfErSpQwmYm/KDV2jT+ig9lN6hyLW4hVBZMuB4
         0ImHoyL1GrcOdJGf86MoaUBMiUJ5g4yqZsdiKV6s200a1xQPojsJCGiMzKYRt7JD8zPB
         fntg==
X-Gm-Message-State: AOJu0YzWXuzS63c2MNlHj6e+YUW9vm+ih/96Cj5uLSxefYFJlPwSGkco
	wcr2nU4aKWgtXdHT96/gSmXfWGbYz7jtZRdPgkl0xZ9BlLfdh9RxyAew55+qbRHUHbM=
X-Gm-Gg: ASbGncu47kr+sm/kidyw2Ypt3UyplbHEk6/CkYV1AvMXgSo/SPK4bNULsbMM4RKdBEY
	8fMYNxbO++NIMygO93JKUJ/Vw01lMO2lMBXmT7MjPcB0E/8wR2RyXQKROSirHcEjyItGKYQ5OMI
	BqWWYlHHKnV6Ig3AjUWi/xv8Yo19VlQTPT7OFghToGJXse2j3K4gZECXgM0b5FcJSIecsg+gSF1
	oaXHBDx8AUKVKFtzHivynmoxuWkTdTrX7hMX9jcchoFa07p64f9NWz3THj8KmB8DSDwWTibs0fe
	9DoRi/OAqQSQcH5UK6NKO/RKXOpTzTaGeWnmfnooPGuVpJtl7LkiSJZmEb7/xsEswci15fb+HeE
	lIt66xBcgpEj7q7qLSJHgEfNiphluJ/vbw4KP
X-Google-Smtp-Source: AGHT+IHAdIehjkYMlljSMzvvs/ySAlhEufMHsbD8ELSnM58asHwMaFX0gPfWp0eh8n5jJOi4cfz2JQ==
X-Received: by 2002:a05:6000:24c6:b0:3a4:f744:e019 with SMTP id ffacd0b85a97d-3b5f19000a5mr2744926f8f.16.1752410808920;
        Sun, 13 Jul 2025 05:46:48 -0700 (PDT)
Received: from [127.0.1.1] ([178.197.222.89])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b5e8e14d07sm9828835f8f.66.2025.07.13.05.46.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 13 Jul 2025 05:46:47 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Sun, 13 Jul 2025 14:46:37 +0200
Subject: [PATCH v2 2/4] docs: dt: writing-bindings: Document compatible and
 filename naming
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250713-dt-bindings-docs-v2-2-672c898054ae@linaro.org>
References: <20250713-dt-bindings-docs-v2-0-672c898054ae@linaro.org>
In-Reply-To: <20250713-dt-bindings-docs-v2-0-672c898054ae@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>
Cc: devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=2195;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=BlRvIRPzQQPUtCo+mAvAI8qOIImTdfvDN7bB+4kLIBU=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoc6qxdV1Jq3JU6x7/ASYUlf69jDirm6DevtMGD
 LzbGveV35WJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaHOqsQAKCRDBN2bmhouD
 1w9LEACZor9MqYK3td8tiLCfJTxAZB+9nEXg0jBC/cKOwIsjA1fwzePixOo+eRo80wZnl/aQNVR
 yo2wFYpRGXCBTqOCC/etQ4GEr4VFg7M1KP/llGv1t0SW02rX+gHfpZQwJ5zU+uHqVG6y0/HM6fE
 om49GcCgRIXNzkPFlAmpSjA4yM5i/RCe9tjyldiCd+0/h/gb42tPEYWKUVhm92Bd0a9VVeQd/Ys
 EY1rn8lereCB1IVT73FqCcygkM/ZoNg1vdBFyFflS3rZkCM5R05LOKxZ3N5EQ/aWJoGbF4kZap3
 JxiU8BJtyK8/QvxeC0CMHuSPn267r2sr1spsJO7EceoGpc2Df8x6SJFaEKAwNvvWunC+PXSqa4u
 zheDrc1ctKYp5WBUDKKJj0EYg+h0LDS/shhqojPihtRDkQB/PVoXCRNsupfRU4XvsyCjkr6xy18
 sIDNMINqZcUzIKr0rukacY6Yr8M8GheJacSxB9CXr3MJNQqVRyrM4iGA0sCWOHlVHSxPckc0AdH
 isGiFfIEJ9bL1lN82vPZLBVHwbWea0vbBF2uAN9PtzwtopTBAmLyE8aKd7TxE35H/U21jqga6yy
 b2QyReCgx8AdbF+/ozF4OC/oOUxotABaV2u2LaGq6AUgaa3buIHwgcJ6NU9dLMCQK5r3R5cfrkz
 NpSeJpm3rbqP4yA==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Document established Devicetree bindings maintainers review practices:

1. Compatibles should not use bus suffixes to encode the type of
   interface, because the parent bus node defines that interface, e.g.
   "vendor,device" instead of "vendor,device-i2c" + "vendor,device-spi".

2. If the compatible represents the device as a whole, it should not
   contain the type of device in the name.

3. Filenames should match compatible.  The best if match is 100%, but if
   binding has multiple compatibles, then one of the fallbacks should be
   used.  Alternatively a genericish name is allowed if it follows
   "vendor,device" style.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes in v2:
1. New patch
---
 Documentation/devicetree/bindings/writing-bindings.rst | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/writing-bindings.rst b/Documentation/devicetree/bindings/writing-bindings.rst
index a2d2afd099c0bd922cf12dcf49f5dffe6da748f1..e63de88385b5bc5859d8d9fca82bcf30380f3e73 100644
--- a/Documentation/devicetree/bindings/writing-bindings.rst
+++ b/Documentation/devicetree/bindings/writing-bindings.rst
@@ -52,6 +52,10 @@ Properties
      fallback if appropriate. SoC-specific compatibles are also preferred for
      the fallbacks.
 
+   - DON'T use bus suffixes to encode the type of interface device is using.
+     The parent bus node already implies that interface.  DON'T add the type of
+     device, if the device cannot be anything else.
+
 - DO use a vendor prefix on device-specific property names. Consider if
   properties could be common among devices of the same class. Check other
   existing bindings for similar devices.
@@ -101,6 +105,10 @@ Typical cases and caveats
 - "syscon" is not a generic property. Use vendor and type, e.g.
   "vendor,power-manager-syscon".
 
+- Bindings files should be named like compatible: vendor,device.yaml. In case
+  of multiple compatibles in the binding, use one of the fallbacks or a more
+  generic name, yet still matching compatible style.
+
 Board/SoC .dts Files
 ====================
 

-- 
2.43.0


