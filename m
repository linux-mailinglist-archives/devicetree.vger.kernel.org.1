Return-Path: <devicetree+bounces-86135-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 886149329A9
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 16:49:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id B8B831C209A7
	for <lists+devicetree@lfdr.de>; Tue, 16 Jul 2024 14:49:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A493D19D08A;
	Tue, 16 Jul 2024 14:48:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="efPuzL5W"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E3C8C20EB
	for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 14:48:48 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721141330; cv=none; b=sVBdf5hMCt67FSKQjylRaAfSO6mAKcKVNgJgOgA1Ph3hnWK4MSPxAzzzIIRJ/Mq7fY/kNyRVB4BkwCgSixextcFolTHLIik3/rOciC9JauamWhN0k1BPDre9Eh8A7E/I8FSB7xb/3Gj4xJQV05XZCsyj60YJQWidIyycbQS00eU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721141330; c=relaxed/simple;
	bh=bWuhf1ICw3I2jwagK6LuZPJ5kgY086Z9ZS82Q9meJUA=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=toW+yOUjsQF8xb1O7++QlAj8pwaMjd8PlodKSTao7D3vPPOIo/H8SK0/YE14rhidHP2S2bN3IeVghcNjrtGlrIDLEtmeifA8YWJpvDYI4TxH6fUouQUHnJgR/wXSPf30FoC7tXSCsW48zV3RThdB90zyCOHFrFnxQvhi+DUSdrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=efPuzL5W; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-4266b1f1b21so38613095e9.1
        for <devicetree@vger.kernel.org>; Tue, 16 Jul 2024 07:48:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1721141327; x=1721746127; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=8i31+WVNl/nD6EKdwlewPxCt2fUhKOj0/YKykgGnpWo=;
        b=efPuzL5WHy+Hxe6k+fUFNWh/4Wgi7wHojEOFTVsLLGfZmRkX1reodISk5M3z6AqKgE
         6zTfrXirEoYK1NvJ+v9QmlVNUGkvn9m0lpNKAikKRguIEZZ4Zq0YLPC23tNZniUlUU40
         sC1bgszmQXmrUzb4osTXbfOhYPDI2ruA2RQfRvZ6OkIK4G9+qGfhvVUUrSnk1seIBzpu
         pPItp+VjXt5GoUjXWbtzlrJFRSd1XcVCWbsgwaBi1bWchxuNuKFzICTVSNFTv3ym+h78
         5iBLYpRdqVjHThTwIOzNKf1mhSS4OKkgeuhmjBNWD2auGw8EWaFaIj8y9oXxswbgCVLf
         JkVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1721141327; x=1721746127;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=8i31+WVNl/nD6EKdwlewPxCt2fUhKOj0/YKykgGnpWo=;
        b=X5tA2mcYvjY/EP9/uupFhENrDU0Q7sR8OjNJDCyxMf3yKDEvjr6Mo89KPb2TpJGXf8
         /8oxi9NOLiU8il6ltgjm3jEy91H+Ab1iS9rXhuRLwwp5k/J5ckls3pOe9tOsATR1znTD
         PunNz4sDiK3tMZcs+1k8vOduHgiPy6uLurymaF4YqcX+35CaQmXvmK/zaxb68UDU5zF+
         RObkqoFdFWUxmwMI3+rWwj+nnrOCFEqnVZJW311jfu2LMH6lUYHiCyc3Hu6U654KVFvw
         ktV/PCCEtri7NOqA7lu3hFVGGhBdTugKKRPj9kDHI64gxKcKsTXJcaF1KbQXnpJuVw2q
         EsMA==
X-Gm-Message-State: AOJu0Yzi9/qj/Aw4phUYD9l6w3+VszBOCmjsMKM0c495LGQzn99NmJ6U
	oqEbb8UCjgAaVk/sMsKF2uN1K+mDBFydVwgl64C141NfJX/vbNurEEIwdw+W39EDzT4JMBxlKA2
	N
X-Google-Smtp-Source: AGHT+IFSyftMP3yVlnEcZDbvmlEYg59teKQ9FJhUnZ0QnL7q3XwsBMSuMJCTplBqZIJLQQ2kqfK6+Q==
X-Received: by 2002:a05:600c:4e52:b0:426:597c:7d58 with SMTP id 5b1f17b1804b1-427ba72af91mr18038825e9.39.1721141326863;
        Tue, 16 Jul 2024 07:48:46 -0700 (PDT)
Received: from rayyan-pc.broadband ([2a0a:ef40:ee7:2401:197d:e048:a80f:bc44])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-427a5ef44b4sm131907145e9.42.2024.07.16.07.48.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 16 Jul 2024 07:48:46 -0700 (PDT)
From: Rayyan Ansari <rayyan.ansari@linaro.org>
To: devicetree@vger.kernel.org
Cc: Rayyan Ansari <rayyan.ansari@linaro.org>,
	Georgi Djakov <djakov@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Odelu Kukatla <quic_okukatla@quicinc.com>,
	linux-arm-msm@vger.kernel.org,
	linux-pm@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: interconnect: qcom,rpmh: correct sm8150 camnoc
Date: Tue, 16 Jul 2024 15:47:38 +0100
Message-ID: <20240716144738.109823-1-rayyan.ansari@linaro.org>
X-Mailer: git-send-email 2.45.2
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

The sm8150 camnoc interconnect was mistakenly documented as
"qcom,sm8150-camnoc-noc", for which there is no reference to in
drivers or device tree.

Correct this to "qcom,sm8150-camnoc-virt".

Signed-off-by: Rayyan Ansari <rayyan.ansari@linaro.org>
---
 Documentation/devicetree/bindings/interconnect/qcom,rpmh.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/interconnect/qcom,rpmh.yaml b/Documentation/devicetree/bindings/interconnect/qcom,rpmh.yaml
index 9318b845ec35..0cb4f7154844 100644
--- a/Documentation/devicetree/bindings/interconnect/qcom,rpmh.yaml
+++ b/Documentation/devicetree/bindings/interconnect/qcom,rpmh.yaml
@@ -71,7 +71,7 @@ properties:
       - qcom,sdx65-system-noc
       - qcom,sm8150-aggre1-noc
       - qcom,sm8150-aggre2-noc
-      - qcom,sm8150-camnoc-noc
+      - qcom,sm8150-camnoc-virt
       - qcom,sm8150-compute-noc
       - qcom,sm8150-config-noc
       - qcom,sm8150-dc-noc
-- 
2.45.2


