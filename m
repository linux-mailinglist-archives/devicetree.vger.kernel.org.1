Return-Path: <devicetree+bounces-72596-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 245598FC5B3
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 10:14:58 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id CC8A01F2255E
	for <lists+devicetree@lfdr.de>; Wed,  5 Jun 2024 08:14:57 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CB09B195FCF;
	Wed,  5 Jun 2024 08:10:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VT8YSouR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D6C09190065
	for <devicetree@vger.kernel.org>; Wed,  5 Jun 2024 08:10:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717575028; cv=none; b=BLBHZm4BSKqJMh6jvVxgKxHvvt2iu4oUQCURCLNkbCQyQES8M+fh22/AXljHPMT+W0N/1WHUedwU+akUXAulB4OE3TI4OVar548FMExPjgvKJShDaL1bM1KJbvwwuRil+QbOLlia+9Q9hkfQ94iUuIkUwBYfqw6luskcGrLJFSg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717575028; c=relaxed/simple;
	bh=nsR6l/0/B6xYQQFHlCZ2yhKiqAZOkBEEg5wvKHodqjs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=j2v/ojs/EFUbyrEccS1siSEhKQWIDFvurIHs8V2dIBg76wEDhKRP/d6GIXgOv9x8EuE0R5XCI0dqiHgcH1RHoyfrshOFc0mTxPCApa1lPftzc7bcANQQtKlXTbiEMGz/TwuTuWBosFgPzbnfpXDV63XdZpJU9z1Crq/sNGmH/0g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VT8YSouR; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-4210aa012e5so19200355e9.0
        for <devicetree@vger.kernel.org>; Wed, 05 Jun 2024 01:10:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1717575025; x=1718179825; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Tktvwkodnfoo7jHza+oqKcz/NOSezkzfoVMTLKM1blE=;
        b=VT8YSouRUjIEFpSAB4ZnZcL2qy/5EEoo8VfnnVe+Io/n1Q1x0A1kHCM4RBs/5JVUVy
         aqO3FBWUUHIn2Y4NP37Lyy7hZGIzUKCRfE0LREtUfCUw3f0b3x0hwOxDOoOzzBnFG45j
         05eTEep9Hn8Divcr54CsC+ggMGNTKGHjdb7MWqrNY9Au3E1sItWdRutNtM9wzp6sB+/+
         g5NGeZZREWrhE2BkzeBZQTfpq5G1YjlM6dt90V2bCoSi66T1KKIeJ/Hcix9o3a6ln/sE
         CwdvluMfS7TC14zLJ0IXQO7oc7E/P9xejf/ScXjpyKQxo0b0Xa+lc3sxnzwPnxYJJtBm
         DYgw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1717575025; x=1718179825;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Tktvwkodnfoo7jHza+oqKcz/NOSezkzfoVMTLKM1blE=;
        b=hnY0FmFl3IgXnollltufbYSjoioKZZ09nIs1xwIsIv/9IoXaxmzrJLMiXFzpZVbavX
         4pc15O/I7oVND29caDkF5z9GM3njPs9gvq89dMThlzS6k4yuZLl/4GWOyovj1ErGZ+1y
         th+ptWRVFw3HC//GrsaRYqRWZf1t5zva0CrCdWtUSH88o9Wu3UIFjCZICMUBPLKMhQwV
         6vqWug8nFKU+psAs0iK2Lv8p5XQ7WNbwlAXiCpVyXscMF99LelbjZ3nH8JajhjT3unTl
         FfdlULuEFZ66erWtyW61Cvj8PLL06gT/efyP6GB8tJ0iUYHBawUSqqoeTdDcUuwKSHA4
         UWsg==
X-Forwarded-Encrypted: i=1; AJvYcCXYqSwspECqjFTD1Jxb9ZbktVRfO1okO/NA5R6nDD+dOV3x/JwB/kcf9mk6hF3dwSAVBnbgLv4ufaU3K+WIllBGeCRvJinYEeee6w==
X-Gm-Message-State: AOJu0YxdxwsYkfC5LajFBYGnY9DfxGKhV4SQSz0+V6Z07P+YxXhY4p4a
	yaWQ8mPAk9Q7bbXGqfJXvEwWqMR+cz+4ntGQ1Y/aAhQJzV9jEdXIPHMg6DvpfFU=
X-Google-Smtp-Source: AGHT+IFmTFR25RmX9aKQEVbpuL5IS21Fn7ULIHZumM3f9lZ7DYSF3RS8uqCv8ZEEdz2J0MIXJoog9Q==
X-Received: by 2002:a05:600c:4f49:b0:421:7ad:daab with SMTP id 5b1f17b1804b1-421562c2768mr15066875e9.7.1717575025234;
        Wed, 05 Jun 2024 01:10:25 -0700 (PDT)
Received: from [127.0.1.1] ([110.93.11.116])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-421581490e5sm11025585e9.34.2024.06.05.01.10.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jun 2024 01:10:24 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Date: Wed, 05 Jun 2024 10:09:43 +0200
Subject: [PATCH v2 16/16] dt-bindings: clock: qcom,sm8450-gpucc: reference
 qcom,gcc.yaml
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240605-dt-bindings-qcom-gcc-v2-16-f947b24f1283@linaro.org>
References: <20240605-dt-bindings-qcom-gcc-v2-0-f947b24f1283@linaro.org>
In-Reply-To: <20240605-dt-bindings-qcom-gcc-v2-0-f947b24f1283@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>, 
 Konrad Dybcio <konrad.dybcio@somainline.org>, 
 Jonathan Marek <jonathan@marek.ca>, 
 Del Regno <angelogioacchino.delregno@somainline.org>, 
 Loic Poulain <loic.poulain@linaro.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, 
 Neil Armstrong <neil.armstrong@linaro.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1324;
 i=krzysztof.kozlowski@linaro.org; h=from:subject:message-id;
 bh=nsR6l/0/B6xYQQFHlCZ2yhKiqAZOkBEEg5wvKHodqjs=;
 b=kA0DAAoBwTdm5oaLg9cByyZiAGZgHVbIX0Hyn2i7cxLhVk0/SZ6M/pZylFTZHj5WQlu3Df8Ud
 IkCMwQAAQoAHRYhBN3SYig9ERsjO264qME3ZuaGi4PXBQJmYB1WAAoJEME3ZuaGi4PXs5gP/RZz
 zkZUFrdG4RC+jmqRby437SF1Yt6bs+iXLE77wQKCx2ta8PqH7KGFOSmhTt/ioFKi9HAzcYYX+cS
 Dc3ulj6cWn/t7nyw78iAxn3HHLOsSJtfKGNMssliMeobQDl1HV1+2NNkJsYcvWtHRcTclTGrpwU
 CCJ/Omlj8S1AwZO6WrygAAtnEyur1+sFza1mSLs3Ze6b1+9o9bNpwS388VLSjET6oRYXvfT9KZm
 b0Ca25afA81PaCIw+cxSxhFHbuKj1nivhN8NpjOkTIH8fPvUNbeOpCKOxAB86/dHRpzT02KuTVG
 XUoI9mV3LQSRC7fwT+HCivUGT7c3RJfNvFh7lyxH9T6VS3ciVURJym+qcJ5w2GnCzF70GL2Z6Fk
 fFVqDwVEUJEmuC/hE1A2bFBmIbNL0ft7exCp+gcDvQ2fiqZJm/A7+JD5h9/vXCXFwpQWlDlLg7x
 vKyCijcdh3NcJghoQ3LYesiBnD4tlA0pRdJJSJC99IcuRiFgo6YUTp8Re/HdgEyARABpyBbk7iT
 3bW+WJS8YWpjoOwntmTJdvhTb+/TALYOaQnk6cy5LCvouGb9DGv4duZmbolWeQT3vCoOQF1c6vQ
 f2Ojn1O8Ru34xaplkruD3dExJJsrwFncGDT5iUlCRorqefehvRbSOIhXntVYgqjyal+OGxz3p5p
 ZoW7O
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp;
 fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B

Just like most of Qualcomm clock controllers, we can reference common
qcom,gcc.yaml schema to unify the common parts of the binding.

Reviewed-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Reviewed-by: Rob Herring (Arm) <robh@kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/clock/qcom,sm8450-gpucc.yaml | 20 ++++----------------
 1 file changed, 4 insertions(+), 16 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/qcom,sm8450-gpucc.yaml b/Documentation/devicetree/bindings/clock/qcom,sm8450-gpucc.yaml
index 36974309cf69..3c2cac14e6c3 100644
--- a/Documentation/devicetree/bindings/clock/qcom,sm8450-gpucc.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,sm8450-gpucc.yaml
@@ -34,27 +34,15 @@ properties:
       - description: GPLL0 main branch source
       - description: GPLL0 div branch source
 
-  '#clock-cells':
-    const: 1
-
-  '#reset-cells':
-    const: 1
-
-  '#power-domain-cells':
-    const: 1
-
-  reg:
-    maxItems: 1
-
 required:
   - compatible
-  - reg
   - clocks
-  - '#clock-cells'
-  - '#reset-cells'
   - '#power-domain-cells'
 
-additionalProperties: false
+allOf:
+  - $ref: qcom,gcc.yaml#
+
+unevaluatedProperties: false
 
 examples:
   - |

-- 
2.43.0


