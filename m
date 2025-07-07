Return-Path: <devicetree+bounces-193609-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 81F03AFB04E
	for <lists+devicetree@lfdr.de>; Mon,  7 Jul 2025 11:52:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id DE5C04A1A55
	for <lists+devicetree@lfdr.de>; Mon,  7 Jul 2025 09:52:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EE232295536;
	Mon,  7 Jul 2025 09:50:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VjL1RmTW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f51.google.com (mail-wr1-f51.google.com [209.85.221.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 314E9294A12
	for <devicetree@vger.kernel.org>; Mon,  7 Jul 2025 09:50:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751881831; cv=none; b=GAGs8lV2Dn6RP1SIBMfwpKZ7oJaqZ/i4yXcWU4/+2wpUMcq80K6tFcgH3g+nPWp0XlrO1Tc3qx/H0sZGtOyFqRZ6qErqpT24ECYz52vOQIYr3M+yiNkHgPT2484IGYKqzb5Q1oy3wQuggvO/7e1otu7U66BOiLeZbg9L2LTEEbQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751881831; c=relaxed/simple;
	bh=h2ZIZDOmSWkPXzkMjkMSgjmXpqxnrsGTZEplK/nvG0E=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=FqkfjApCSW6DARelxC0X/hhSpPzTiU1O0z2EahQpRH/zb5ScH5qi0mtuFgqOuH1IDt0dEGe74VopYRl3CXJTdT1OoMdILY8VXnUOjaAAkiwHE6zmKL0zWAg1piSPtBEtBjCltrePPEoor+GuMHy95px/pxGlcsQTV6C/YC4FIsI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VjL1RmTW; arc=none smtp.client-ip=209.85.221.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f51.google.com with SMTP id ffacd0b85a97d-3a528e301b0so146532f8f.1
        for <devicetree@vger.kernel.org>; Mon, 07 Jul 2025 02:50:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1751881828; x=1752486628; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tpSUYxl6ubYjUBFlM9XBHuV0jlV8ad5Q8dYgbXUNW2M=;
        b=VjL1RmTW3a2lMrtwygZ98kHGV/IDSry15T7ft2tgf9Ql277O7arZEFQO5ZuPExhEJc
         HwC1lH3V0iWKQdnPlJqmBYrOId94BFIJHeeVZFk/tQ8L/bJ9bsXSM2awdhEoJLkTegPO
         OJ2DF+FxNvB7nkKD6G3DZlKRmmKhA0SqZ9RkcSDi6MLoYp1s6miDY2IUtqhH3dGu9zRZ
         +KgJvse0ay+f9cUtw0+BGRxVBzsa9jKwatf8LlduIGOOf9Kqd5nAGgfNfC7NjqZSrbIx
         EMGntZR1l3w3pVhi8pl3fcQVHqymONFXCQnfaDPOtwpp8TRC4tEbYoHMZnWtwc7e+//4
         flQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1751881828; x=1752486628;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=tpSUYxl6ubYjUBFlM9XBHuV0jlV8ad5Q8dYgbXUNW2M=;
        b=NB8igxGwKGEpgfXBiXjH+wGjOofkziHY5oSasUxezjo6R1USDeeS2RX48HgFkuSF1K
         y9GnSFwfb8C7U1BJz+nmpAtKda4EYO6fztgo6ezR73+3DCMUf9YA3qHm0Y1q/uMVeyqF
         +Zuf+iJjdmgzbd9qez3ldW4q2mZNQu7SOEks+aF2bhnbn3BSawOMcsWLTHWP8nIPOqdx
         XbQDzVFDzUgiRsB+rbwLL5a5LGtpqEqFzxcQOIA+ebSqFhg5oOI6EjziLVFWgP67EJb/
         HHPFzCtTtjb65zyPRVpB+w6BRGXdIf1u2ioV9H+cDnfONO3a+QEDzyTOXb0XaZjeaEAE
         7uGw==
X-Forwarded-Encrypted: i=1; AJvYcCVNW8f1G8T4TBh+sFzZgRvqQzdKcgEPjwjvtPw1ylmM9OkZXmjmdhu+rh5Oa6wIWeIGyrLVH/JGogyC@vger.kernel.org
X-Gm-Message-State: AOJu0YwSbIA2kFh9zrNP+uShfdZGNKUp7bnoXTnJ+cwASSrZ9XqNdqTn
	FvrdgJIAGLXTuIr27HQwJJ5J19U9/3PAfsJSZ58hSQfb+mr0E0BqKctMLcB+9z60L20=
X-Gm-Gg: ASbGncvBNUeCT/7ldrvOWzXdaOZq1UBBAx+i+UWQ37kcZXAN9SVZb3CJJrTzqWO797E
	3p0Zv00bJO4RgQ44N4U2386+djMrkBs0eVUe3ky8FMQQMvV5B8Wa3bcqHbmeg/L8S2YTERFSv8K
	Qr+VM1qMzDnmGBSIrPUyr1OomP2VdTiBqOVU9KNIFj10cOr+6C7H/Q4bBmnYt1lDw487BJ2typR
	G+rn7kicYu+exF4+Htx4dJeIEdRx3UFCKbqAiZYkT7CjZvVvYKDVAmnCo7PdazHtmQrT5/4b8CV
	gPdD4viJ9P/aRNMRZPTXCUkkLmMewzxwSt3tc7WUfeW7/2ZRJtOY8evmklvK/31/XhLuVm7OlY4
	=
X-Google-Smtp-Source: AGHT+IH5jviufluOUPPKRbE63CdCx0wEwQCTvNiUZOgM5EUP3cSI+Al/GBvGateFWAHyzWBf4aW//Q==
X-Received: by 2002:a05:6000:401f:b0:3a5:324a:89b5 with SMTP id ffacd0b85a97d-3b4964ff530mr3048366f8f.8.1751881828398;
        Mon, 07 Jul 2025 02:50:28 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.89])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3b49cb46c61sm5670871f8f.63.2025.07.07.02.50.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Jul 2025 02:50:27 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 3/3] docs: dt: writing-bindings: Consistently use single-whitespace
Date: Mon,  7 Jul 2025 11:50:22 +0200
Message-ID: <20250707095019.66792-6-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20250707095019.66792-4-krzysztof.kozlowski@linaro.org>
References: <20250707095019.66792-4-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1096; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=h2ZIZDOmSWkPXzkMjkMSgjmXpqxnrsGTZEplK/nvG0E=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoa5hd937sY/GoGLu3zRiQDUklTJYJrMS/Ds3NW
 IVzB6HZgPyJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaGuYXQAKCRDBN2bmhouD
 141dD/9tIslxgesPvVa8Wqzot6e6vai312Jlxmi7jxJEHnDR5O/7mz/Chsvh0sG50AKInGZ9/Id
 0x1hjCpC2F9HVVJCw519l0SbS/I8isBUIGND8EjGZt4jUc9Wiz2VzxbgLsmQ2etidAKqJpKkNOk
 0Oa/oja0cEi9w2Tw3rcIr8fZfghKKbJousOkZe97ALdfn5lU3tqnPbJVFFUj2P8E9/lO3+2BIIR
 FNbe111rmm74p0Rdyu13cx28ghRNLT8o2bNbhy/tjbKeBn9fmPrp9rGqYkeZH82GmKYAk0Q6W0u
 4ZSNVnqt9VwZo0MJLukP0tg5cmhSZuwgtOJduorMXi/UARMHN+HXUWHwWIhOTUvqop+gXzvtxjL
 Zk0HIwPV40SxQXTOpfkpkPW5i3fVY+fKYsXfJ8bCVmBai8OM2hKEF2gzlrbTN9f5AkYJW8PzxSE
 +O3Y6VNir5OV0fHXle8+38hrtWg2X7Im8qWnm/YLoJwT3gjOrEucJUJQB9V96nrC9ZEpc4siCG4
 TYL3Ts5A6VfS7iwG76fJGO/bOGsVWQobk8CPEU2Sz1BjglLJPar/zY9l14MDcjYDAX661qXBGrf
 lN+WDpJDbl6gpfXRhpf4SvMPdaXMmzDcsajeb3kU6YcqNPZXovg7p8T2RggFhkA+jf25HbEUe+3 ZHlS5iegKtwJE5A==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

Document uses only single whitespace after full stop, so fix
inconsistency.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes in v2:
1. New patch
---
 Documentation/devicetree/bindings/writing-bindings.rst | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/writing-bindings.rst b/Documentation/devicetree/bindings/writing-bindings.rst
index 962e38a1751a..a2d2afd099c0 100644
--- a/Documentation/devicetree/bindings/writing-bindings.rst
+++ b/Documentation/devicetree/bindings/writing-bindings.rst
@@ -81,7 +81,7 @@ Typical cases and caveats
 - Phandle entries, like clocks/dmas/interrupts/resets, should always be
   explicitly ordered. Include the {clock,dma,interrupt,reset}-names if there is
   more than one phandle. When used, both of these fields need the same
-  constraints (e.g.  list of items).
+  constraints (e.g. list of items).
 
 - For names used in {clock,dma,interrupt,reset}-names, do not add any suffix,
   e.g.: "tx" instead of "txirq" (for interrupt).
-- 
2.43.0


