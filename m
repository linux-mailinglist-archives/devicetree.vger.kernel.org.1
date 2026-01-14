Return-Path: <devicetree+bounces-254924-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 15A7CD1DC8E
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 11:03:04 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id A0F27303092A
	for <lists+devicetree@lfdr.de>; Wed, 14 Jan 2026 10:01:01 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 42F6538A297;
	Wed, 14 Jan 2026 10:01:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="kDTOtVhq"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pj1-f52.google.com (mail-pj1-f52.google.com [209.85.216.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8B00B38A2A6
	for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 10:00:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.216.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768384861; cv=none; b=Rn0WNE08Avr4S+bR/tB2Qi1JG1p8B0CKQsk6Gl7pP+aBFKAzj5s5yqqPiFsOT14qqrVFn/2t11BiRVCQfQ21KmFYshjlRLQ9Eo0VW925url07PHpO+NkGN8odaTf9qoT4MZ/9EfpA0XNYTNLZqZ0ktXawMJAf7YpTPL9wA7+X9k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768384861; c=relaxed/simple;
	bh=hUYScQaRX0QfzkUatVOP/WusQlNS1mD4mV/UULK5pUw=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=EEVseLID7OTQsz8jzEGS2PtljU0prpDRBH7fLcP5uyrCZG3gNUMqD21UEM7YUfGBC1iMRhQPq6cEYyGeZRVMzNw5nBd7nsEj2hKBob8eex4bNyMIORnOQ17PfbO3WW0al9e3XURN+5I6CwYqzuc8MdAqziNfyc6ay28UNIixBRQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=kDTOtVhq; arc=none smtp.client-ip=209.85.216.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-pj1-f52.google.com with SMTP id 98e67ed59e1d1-350fe1f8ea3so858728a91.2
        for <devicetree@vger.kernel.org>; Wed, 14 Jan 2026 02:00:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1768384859; x=1768989659; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=+G6pf8+5EFoESwai3MJ4dA07jKvv0MdZ3B0YqUEleVY=;
        b=kDTOtVhqA1DfG0wD3Be9OmLKC02GChnOWPMdKUHf6Tps0NQgE+PZTmsd3ahCCk1hAf
         gyzluVx6r2lRHpeyZIy1ejZ2LnfyXFuQ7hojrY9i+y7kLiX3bGA3ZJsRnBrPjq3wtMF8
         uVABtnBHS5PziYAvgM3UPRm+YJGRV3H85QZAEBq72LZRQ8L/eMr1xrV3PqVYazBz3DEE
         RCbRqHlk7v8t2JcxiljuS34XGmyTrkbiePEnXmAJ0qZ0/bfcBxOyB9mXvoYNt4R/Pn61
         nJ90i9g6jwpLnWU1+WuOQB5iUwEaMD+VOu8i/lhz9fML4SiiRi1iZBEgvVdBrXdRmNEo
         RnyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768384859; x=1768989659;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=+G6pf8+5EFoESwai3MJ4dA07jKvv0MdZ3B0YqUEleVY=;
        b=xC/solljsqW/R9ZexHPoLF/LrJBDFp6RsXis54JYLqcCHkLSLtuH0gw/hYc7KTnOXY
         KF+bn6Vz/3Tul4Y+Gqe45sAE5GNIvXmJJ20+5McxvMeZwnp3yD3UkMcrhdTrzME1RXO1
         quHldlYcwG09taf695v6BKGA6jW1k51TJ1+nwanhOlyKr88ysNWCoI9vs9/NXJdVHUTb
         gW2Uw5O7G0ZgLG4fAkYvTQqb4/X2PSeobYVobBhoY67esVY0r5j6r2yZleKlUmqPUZS1
         /FiU1FxnEgc8cIr+UMEBeHHu3cUF3omIdRArjbePzsr0iDxrelvafZGg7IJMPnZlyOOg
         rZSw==
X-Forwarded-Encrypted: i=1; AJvYcCWdOLHzPVR6+QXdcp1H8qUuP4nWwDDi5UznN/B5p3BTSznHI7LsQezrtHMuERzxOdQqsf++AJQNvjv8@vger.kernel.org
X-Gm-Message-State: AOJu0Yxc78bYInpG3YNn3o71JZueU60X2MV3cEoylANpRnU6pZSRf6e6
	ZsaATeuka/kq5QbQliPFjLKgDK7GaIYOC/oZchvs8Rw0W3iYDdreZ9Au
X-Gm-Gg: AY/fxX7+vdElTQmBaWT0nnpJfZbS8XYPbMBcvLekLbBYshcrQMkeMdIKBqB54PIZnqi
	zNGIpGgBaYvTXvWHipYMC1w8E0RQbWXu4u9u0ob6dihjajFQ4O0+yJQGmP3E/Khfgas8cuqN9AC
	52OjsuVEZptgGA/XTrpqp9xsYNtezfVLBpFfql+tT8Kv6QZk2cZPg+tbvFLrqqJtINcS7ySO2Lv
	zFUAhpaOXAnXNowf0+SycZ3Lx4Ou32O7E6w0hwBCL/ZdQOcvYc3GNgc4rm5E5wgIcADK4JR85kb
	3HiS8YbSVgzLlTc09B5qyqQH0xapQYOgfvwetSQOU10uwHDJw3+TTFBC4d+0N0CJSP8VukVyPpo
	A18Gmqzjrl2a7Pu2wzlXnghoRJNbfQgqGnd3W/0fGG7DiUdg1QqHVitu/O2ccjSrxHf7lQu2DVW
	zxVtz2darpCsrhvfMSs4AZlRGkCECIgeFnoPzo
X-Received: by 2002:a17:90b:3512:b0:343:e461:9022 with SMTP id 98e67ed59e1d1-3510b126787mr1701683a91.24.1768384858688;
        Wed, 14 Jan 2026 02:00:58 -0800 (PST)
Received: from test-HP-Desktop-Pro-G3.. ([103.218.174.23])
        by smtp.gmail.com with ESMTPSA id 98e67ed59e1d1-35109c78f20sm1522043a91.13.2026.01.14.02.00.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Jan 2026 02:00:58 -0800 (PST)
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
Subject: [PATCH v12 1/3] dt-bindings: arm: qcom: talos-evk: Add QCS615 Talos EVK SMARC platform
Date: Wed, 14 Jan 2026 15:30:41 +0530
Message-Id: <20260114100043.1310164-2-tessolveupstream@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20260114100043.1310164-1-tessolveupstream@gmail.com>
References: <20260114100043.1310164-1-tessolveupstream@gmail.com>
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
index 4eb0a7a9ee4a..c081746636d1 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -876,6 +876,7 @@ properties:
       - items:
           - enum:
               - qcom,qcs615-ride
+              - qcom,talos-evk
           - const: qcom,qcs615
           - const: qcom,sm6150
 
-- 
2.34.1


