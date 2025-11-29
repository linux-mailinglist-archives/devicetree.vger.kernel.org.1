Return-Path: <devicetree+bounces-243120-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C3BAC93F75
	for <lists+devicetree@lfdr.de>; Sat, 29 Nov 2025 15:24:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id B13AD347A3D
	for <lists+devicetree@lfdr.de>; Sat, 29 Nov 2025 14:23:51 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AD9A230FC2D;
	Sat, 29 Nov 2025 14:23:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kExB0oqT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pl1-f175.google.com (mail-pl1-f175.google.com [209.85.214.175])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 321F430FC0C
	for <devicetree@vger.kernel.org>; Sat, 29 Nov 2025 14:23:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.214.175
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764426194; cv=none; b=Zjcwn9LIG4wTELszJwEuHzWBMmHxkx4UskDF28DqGQWLtHyehp1ed1qLQgyyMxql9doixABnrBQzQc9xoDAyrfChd98poIk7tpaUEYXZlVLdcOAl1UV1PLKF7Jq9yx1nlykL//RInZOBQ2fhNgM07dsU3UClHObzt4OpTSXUevk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764426194; c=relaxed/simple;
	bh=zfksRdzqKJhRlSNkDPTjQcTPNmX+bLOPlYzuDXVDI+A=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=l0B7WCt87IL92TzclLdGe2GPIwYOP9U/ZxLb44+04sAsHnIdLyTqF6dxn4tOu4m9znsYUTJhzknyZW34/UCp62vlHIKKQlBvxsnS1EeliA2pSUqwqfzikwFaB3LgpGxRS2AcewUHOBVOKEG1oe8jlcEThC82tXmZvySsOkbuwtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kExB0oqT; arc=none smtp.client-ip=209.85.214.175
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pl1-f175.google.com with SMTP id d9443c01a7336-2981f9ce15cso31242685ad.1
        for <devicetree@vger.kernel.org>; Sat, 29 Nov 2025 06:23:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764426192; x=1765030992; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mKekkA7djcC5xOnYLDnvST4x7vzTTfMx0HGr2gLWVgw=;
        b=kExB0oqTVWgoe/XdzLqh2S/plz8WbLJakGtGqhuGDP2Zmbuasgo+IggQNeRmXm7nc2
         kwree03/SKYboefNRuUiKlPJnVrhcy+59ZDUANnxTYdfwvocqtfNi7T6/O9mpCCaunr7
         ekMvG9Jd0dluXf1IVFZMwKYiW74lOZyKFwLWpclprEwR3DMCv+mg/eetClDRwRyRFEy6
         3C3/42TxFTcZb0UeooQuIZQSlB6VqhAUh2qA+5IfZkdrCllWrCi4X9y7Wnsu7f7z9c53
         Xb6ICJAKPEPRs956L48A39BVFqfC4yLi/6e9pf+P2k4ixLrDXGvycJF7ISJMTDQZ1TWM
         xIqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764426192; x=1765030992;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=mKekkA7djcC5xOnYLDnvST4x7vzTTfMx0HGr2gLWVgw=;
        b=i1N3NVy1H+7ozAOELy3FJywTryJ3vRyEYrf9LWcnIyRSR/JTHPS5pPn/r1DkPdjS4W
         bPWL9ii7MfC85V3VkMFSOTnrXMNei6UIhgch3TOyHgacnR0YVqV2oZmZzGOXrWEgLIuv
         rw8u0F8tx8D9CvMY2Z0c02JNj62d7MHUbU1EwBBpj0Q+ni7/2PmMpygs9MylRz9bOeqb
         tgEsot+C/1+mg070A+vRTZ30i8OKP7cESZlQ7H1dW5BadApnNhjo2n7IVP8Js5Io43cb
         e6XtWi29Fqjbv5xfoGt7Yhl/+hN5P/Bt7HgMo6UYP1kuq+jsH05K29ecqpC9DXfHBK/w
         x9+A==
X-Forwarded-Encrypted: i=1; AJvYcCXNtIHdFhXjX5y0BbRV9zK4fd5/xdxSa21PkAsSe/vRuwG45ALH0gVPCIztdndmxk3uYmhslOmBRFNw@vger.kernel.org
X-Gm-Message-State: AOJu0YyZBteQftB3xATEPlyz1o8H6hZIYooqrK5BFSEtlZhnKNVJBi7B
	4VlF0nx3Ivk9OM0ABAP9wy7GHPP7fmrG1G7jP2KakpxtaMLsopQrnOgT
X-Gm-Gg: ASbGncuxRoPygysytX+jrU1xG3+6zpHebZKUfnXYWf/vPXz+Bjk36up/xzWiTugWcQU
	fIrXcVT66rkQFMo8Q9xdNX3WSU2Tw7exi4NLGoWxCmQA2FvWCOOdhLo/4xdow4m0coRC5O46+6L
	9Y+QVHr88lViHyhLSkd97Gd1EVxqFtuD4dOu+I4iYjyJPA8Ua+wWCT7pII8hv6ywSN9/weaSS8k
	1cMLo9lhE1tk4NKyHS4nsEjC3bHtTmkqnmsPnwp9ZGnmSO9wF6h8OQFOpdBosjg0khgKFe5mTS8
	kdDQXG+Whb5A4dxgZgncRy7h/ESiieJNi8k5Bou1dJz2DT7RiPdNiqQYP6ZTGP3GXj3UoZ5gEUG
	o86QdINEsn3D6DxJ3FNVY9EoGhMy43Zb6XFbbu/keSikFnRi+zP96GVXcV9fJLCWizR5ywbRYpJ
	8T3GG30U7/spqleHweObi5+weBNu7yuB1gaZuM
X-Google-Smtp-Source: AGHT+IGh7E5EJHj6xGewoslVxz0116ycLRiCwfgmew5nGhAiREVFuPgwsqWeaeHmfv6KFIDb6pASOA==
X-Received: by 2002:a17:903:947:b0:28e:a70f:e879 with SMTP id d9443c01a7336-29b6be8cb2dmr349011585ad.1.1764426192418;
        Sat, 29 Nov 2025 06:23:12 -0800 (PST)
Received: from test-HP-Desktop-Pro-G3.. ([103.218.174.23])
        by smtp.gmail.com with ESMTPSA id d9443c01a7336-29bceb27532sm75641435ad.57.2025.11.29.06.23.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 29 Nov 2025 06:23:11 -0800 (PST)
From: Sudarshan Shetty <tessolveupstream@gmail.com>
To: andersson@kernel.org,
	konradybcio@kernel.org
Cc: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	Sudarshan Shetty <tessolveupstream@gmail.com>,
	Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v8 1/2] dt-bindings: arm: qcom: talos-evk: Add QCS615 Talos EVK SMARC platform
Date: Sat, 29 Nov 2025 19:52:41 +0530
Message-Id: <20251129142242.3661349-2-tessolveupstream@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20251129142242.3661349-1-tessolveupstream@gmail.com>
References: <20251129142242.3661349-1-tessolveupstream@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add binding support for the Qualcomm Technologies, Inc. Talos EVK
SMARC platform based on the QCS615 SoC.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Sudarshan Shetty <tessolveupstream@gmail.com>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 0a3222d6f368..a323be3d2ba2 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -862,6 +862,7 @@ properties:
       - items:
           - enum:
               - qcom,qcs615-ride
+              - qcom,talos-evk
           - const: qcom,qcs615
           - const: qcom,sm6150
 
-- 
2.34.1


