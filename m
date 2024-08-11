Return-Path: <devicetree+bounces-92710-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3791C94E1C7
	for <lists+devicetree@lfdr.de>; Sun, 11 Aug 2024 17:17:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id AB45F1F210C2
	for <lists+devicetree@lfdr.de>; Sun, 11 Aug 2024 15:17:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EDE2914A4DC;
	Sun, 11 Aug 2024 15:17:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="cn0u8nF2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F37C14885E
	for <devicetree@vger.kernel.org>; Sun, 11 Aug 2024 15:17:43 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723389465; cv=none; b=GdNTgOH+KYKRlYFahKxt5LT8QENfDsf2hOfQAmJbYKRGXhFlWnOZ6gTmVchDPhOReeXiQCAIoN1plbNx9lUN0W+S9spHaTJhwNRti8SpexSMaeDTT2P+wVtC2QHrFCFxkNy/4WFSRdtlRyNssk1AGt8e+QtnNN1DaPnCIVK3pBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723389465; c=relaxed/simple;
	bh=hwPVKIVNZucKk3ZL8dP72AoDLjFo65gMygfi6XUsnZg=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=mliHVF21N1HDuR/q7CBu+0pPxQbjILMzjCSpux6x2vXkEt/spZrZ6CwGqdxIRXgrviQZKw+IfcbZcpLBZBEIbwC+mTuEB+g90QJA81vecSjIpacbF0wdjhSczASGgF4mL+1oHXNNHR+iXxIB6/rxVrPYNSsGf9dvT7+6E6nI9vA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=cn0u8nF2; arc=none smtp.client-ip=209.85.208.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f52.google.com with SMTP id 4fb4d7f45d1cf-5a156556fb4so4153609a12.3
        for <devicetree@vger.kernel.org>; Sun, 11 Aug 2024 08:17:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1723389462; x=1723994262; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=nOrrFPO2+Eu1RsdiiDnsQDZT+Eoua4cGMzFbuz7CsgI=;
        b=cn0u8nF2/2gjkOdcS86nBOr3ItfYkB/OFuhfrasmu4/1gygfCPC469Zm1pnLE/0M7h
         nP/Z5tTVCHeMKhlcq+V6gmFW9konu7NUWO882ifVBlBsqr4zTGyD1cRKcaJRVCT4DE0C
         6m8iw+Ot6NVH+dZvRoAGhh19d38n0rpznqM/HvvjzUDxpRAYdcWrx/EiRz/wE8L05FKF
         NgigCRvAE3eCjHIMCA5JJTUV6dWbHwOkgidq5mkXCcTRRB1m3lOO80b3T2SGMTX1UN6a
         jdVmbZKqYrRKobN/8h1URxXOOw3HYiECZmlsj1l4YEJbbpH+L+fUlTAxX9A38qNkaTm9
         fMyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1723389462; x=1723994262;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nOrrFPO2+Eu1RsdiiDnsQDZT+Eoua4cGMzFbuz7CsgI=;
        b=fhR6pJWs5jhIF1crVpmJITbMH+GUqJwcxUhPBwFd6kHzk0q3TXFwy9k4+R84qZOkDz
         K4GEyINC4VwTexR1dWnXvcz660P2Y6vJ2yRuNKW4LZ7VEWxWtfqpg3hqI8MIKZJvnP+c
         lM+vB2fUfl5NM4l2ouvL1v+x7x7Rn3eH/JMxYcgYtizxPQZuxiDkroiDqfvvX24coa6y
         DVBq+LYUKbSyOBZTA2urD0NXe2swNbDAo//7mfD9fCgHuE5SHQCnhN0O4WegGFsIPtHt
         1h9EjoEciUpNjIJwgjaaAEgAkvMQkIbNle+WW4V+srhNzooqE4tbeIR2tS6NXsHL+A3z
         Uw4w==
X-Forwarded-Encrypted: i=1; AJvYcCXsVaWiXGiaL+bTmOCVLCwXDBQrwPtZgZTnyiYgxCoUO4xMC7wm39mJmHESsQH7U2P4aaiN8Xr+0d2tjj7Y+RZt7kXXL5eNgqM4+w==
X-Gm-Message-State: AOJu0Yw6/npfoau5qI+RtCkEa0PRUz8+GI7/DBPzBKW/0YIv9QbwNojv
	p1f3I6U64FnilOP1i0ujN+RGmt57+oy8V9emc7/vL+aiD0Wvm/kXWB21XCj4I+A=
X-Google-Smtp-Source: AGHT+IFMkuh2pshcMEllN4JDzZBehDboH1YV/ev7+K4CsgIw5JNm3uxhpSKfKT45jnx67W0QXEExTw==
X-Received: by 2002:a17:907:6d11:b0:a7d:3672:a594 with SMTP id a640c23a62f3a-a80aa67acbamr477098766b.61.1723389462194;
        Sun, 11 Aug 2024 08:17:42 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.137])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a80bb0904f5sm157030666b.18.2024.08.11.08.17.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 11 Aug 2024 08:17:41 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Maxime Coquelin <mcoquelin.stm32@gmail.com>,
	Alexandre Torgue <alexandre.torgue@foss.st.com>,
	Fabrice Gasnier <fabrice.gasnier@foss.st.com>,
	devicetree@vger.kernel.org,
	linux-stm32@st-md-mailman.stormreply.com,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: nvmem: st,stm32-romem: add missing "unevaluatedProperties" on child nodes
Date: Sun, 11 Aug 2024 17:17:37 +0200
Message-ID: <20240811151737.106194-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

All nodes need an explicit additionalProperties or unevaluatedProperties
unless a $ref has one that's false.  Fixing this for STM32
Factory-programmed data binding needs referencing fixed layout schema
for children.  Add reference to the NVMEM deprecated cells for the
schema to be complete.

This fixes dt_binding_check warning:

  st,stm32-romem.yaml: ^.*@[0-9a-f]+$: Missing additionalProperties/unevaluatedProperties constraint

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/nvmem/st,stm32-romem.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/nvmem/st,stm32-romem.yaml b/Documentation/devicetree/bindings/nvmem/st,stm32-romem.yaml
index 92bfe25f0571..3b2aa605a551 100644
--- a/Documentation/devicetree/bindings/nvmem/st,stm32-romem.yaml
+++ b/Documentation/devicetree/bindings/nvmem/st,stm32-romem.yaml
@@ -17,6 +17,7 @@ maintainers:
 
 allOf:
   - $ref: nvmem.yaml#
+  - $ref: nvmem-deprecated-cells.yaml#
 
 properties:
   compatible:
@@ -32,6 +33,8 @@ properties:
 patternProperties:
   "^.*@[0-9a-f]+$":
     type: object
+    $ref: layouts/fixed-cell.yaml
+    unevaluatedProperties: false
 
     properties:
       st,non-secure-otp:
-- 
2.43.0


