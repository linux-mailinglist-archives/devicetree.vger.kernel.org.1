Return-Path: <devicetree+bounces-109060-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CE95799510A
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 16:06:59 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 6177D28296B
	for <lists+devicetree@lfdr.de>; Tue,  8 Oct 2024 14:06:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 07DD61DFD84;
	Tue,  8 Oct 2024 14:06:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="z0IuMkiE"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E15E1DF97B
	for <devicetree@vger.kernel.org>; Tue,  8 Oct 2024 14:06:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728396385; cv=none; b=Kz2yo+O9MPLn41Il3F2WeL7tuJ6eFLMuiZNHjizx6Dcqabp8ZOKwQ4fyGc+q0wMKSHLR7VxU3GhIP5vg7AavxdSG8AsPwne/bSKthw1auU4GRuQU0yXuL9Fq7oEH+aMk+GPqwg/0JgI4jT7j9JyBML1D5sHIJJgu0slYzjOSbkI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728396385; c=relaxed/simple;
	bh=PpC5o/uIB4phTXYAzVmWIOfHpPyE4vcqVFr/9XJFZyE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Vj9v6hs4JGYY5cgqhpjfSBWGeJ/xPyyNjDovDKdYYPgj3paogGNeFsuGOKCPZkV/cnw9dOWmqgW3R3qJnhv8nGnO//kVXisCEgA9aSSvVlywc+x5M1RdInvr+Qld38si8d+kn6i1s9GrjYvN5J5bDTom0ZqYrvOj0P8EvyyHcJ4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=z0IuMkiE; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-a994ecf79e7so341314166b.0
        for <devicetree@vger.kernel.org>; Tue, 08 Oct 2024 07:06:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728396383; x=1729001183; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ktJ6wdKOCXAImmreMGg6WO7z4W9EqJwBoMihOz6W5jc=;
        b=z0IuMkiEOOIWP81kN+yLbZweBPQOW7nDneSY+mBhEZvTO6jCFJJHNt8jG+4yY58dbz
         sxYmW3+r2lebl/GVAec7PwDvQHnmd8LWmx9QrGflI7AuDqYbn7Fshz6sLBr62xOQq378
         38Z/Ip8oOAoDbWta7KYIMKebZ+ElLemt0QD2ksrcrEOt0Q2kCJFJ6RSLbr0D0Fq8y3K7
         XStr8CMyobS0NSWsrIhNJG2UVJbkrzgk8JUo5VT4q7p0X+ljpFEA8HeLmQlAWUmTMeHa
         xsiiWYZJ2oQd5nwZxBzRtNNT7WRiaw4Udz5maF6Hlfz8cYA10+WAi0VZtbc73b9yOBGp
         lKFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728396383; x=1729001183;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ktJ6wdKOCXAImmreMGg6WO7z4W9EqJwBoMihOz6W5jc=;
        b=X/45gD3x4lRuTcN5Xgyuh2NUW8rPAq+5esTN9gcLNp5/DhMlr0eqTmLpztrUjW0b4y
         R1qWFNyPVwlYTb3ttCg7Wdu20cFzYPoKGls74MMoimK4o6JRfle3qmTS+AE4Y5LykXZX
         BdrEpA4W2q3dXCfoyXAjqIqP5mXMM5TwZYH8gaV4cd/cSdUtBwGyHfoRoUc4a6C9GkAq
         a6IjAvAXD/4wyeHtP+OK2bQ2M6+ldC7Y/3+gcxUR4kWEAwkFNFUE0wPe++C/9pzhIDb6
         L4rbz7KLdIAWL245Le4o0wYh/6/m43Wvx2Kb7cCnN2KjHr8maRM9WCyMmq/ar3yvHuHY
         pOWg==
X-Forwarded-Encrypted: i=1; AJvYcCVxcNMN+O3zx2cTfliwzgz1rgAQLSbD0yiUXsjVnYuPFJWzwQJfkQpa7Qq4cMBfi7qHSHr0Ll4GvETk@vger.kernel.org
X-Gm-Message-State: AOJu0YxThzHRkOXAfYVvvqVM8nvxoLOJ/arQPC5yaFF76W/Q5tTtvkyD
	D/MdTt0izplqeJED5B1+ztLn1xtmmIK57oLXqIUUpxRqVuW7ME+AbmWVy0t3/Mc=
X-Google-Smtp-Source: AGHT+IFR87e/nGt2Y/8NqIzyiZRGGtML+mee42U2sTxd4fg3loou7SnR+V0iuVGlNJ1r1lJjgZmzyA==
X-Received: by 2002:a17:906:fd88:b0:a77:b01b:f949 with SMTP id a640c23a62f3a-a991bd72aaemr1860977166b.35.1728396382700;
        Tue, 08 Oct 2024 07:06:22 -0700 (PDT)
Received: from [127.0.1.1] ([82.77.84.93])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a994f50fcd4sm320714266b.171.2024.10.08.07.06.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 08 Oct 2024 07:06:22 -0700 (PDT)
From: Abel Vesa <abel.vesa@linaro.org>
Date: Tue, 08 Oct 2024 17:05:55 +0300
Subject: [PATCH 1/4] dt-bindings: mmc: sdhci-msm: Document the X1E80100
 SDHCI Controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241008-x1e80100-qcp-sdhc-v1-1-dfef4c92ae31@linaro.org>
References: <20241008-x1e80100-qcp-sdhc-v1-0-dfef4c92ae31@linaro.org>
In-Reply-To: <20241008-x1e80100-qcp-sdhc-v1-0-dfef4c92ae31@linaro.org>
To: Ulf Hansson <ulf.hansson@linaro.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: Johan Hovold <johan@kernel.org>, 
 Dmitry Baryshkov <dmitry.baryshkov@linaro.org>, linux-mmc@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-msm@vger.kernel.org, Abel Vesa <abel.vesa@linaro.org>
X-Mailer: b4 0.15-dev-dedf8
X-Developer-Signature: v=1; a=openpgp-sha256; l=814; i=abel.vesa@linaro.org;
 h=from:subject:message-id; bh=PpC5o/uIB4phTXYAzVmWIOfHpPyE4vcqVFr/9XJFZyE=;
 b=owEBbQKS/ZANAwAKARtfRMkAlRVWAcsmYgBnBTxVB3VAMFdEnxtfi3e8ncyROcCOIeiYQhjme
 iVmE4o+KpGJAjMEAAEKAB0WIQRO8+4RTnqPKsqn0bgbX0TJAJUVVgUCZwU8VQAKCRAbX0TJAJUV
 VuNID/4uDm/7pY2jAlc2B0sEzGG7ez/fWAuFuMBDNaP1GlYFn8Qpap6DNjPZ9w94OBvMJmfwmnV
 K2akzjB1Ty8qi+KeJUB5fb3Dr745vH/tnVfx+scpkPQ7BqBml8BgqN5+jxCfO7AhfoUEIJe0d9W
 OBg1OANmZId9TPUQWEZcpoWX0QQkPDx5rLvVXLCb+6ihdZCCNrbqwrnNEnmUrth2dPu63PmkyRe
 C8lr2BmK1qtceRFZPQLAviNB+mxTbBb5L7mfkEabzoj0BHZZAOyHlLDNYveUWJ1VRscztVNjNxq
 XsBwLciyuIeKfDsKgEhzYann3+rGRa0f0ajx8EPtIAWFrLKnmtYQ/cwHUnBDQYSdwU5KSQVPSQD
 5Yr9EAtfA/5iY+q1sF3BNlT7pee2Jcqt44oo36tKLAm8+FS5/q4Rbrc+/yUgEk2HNAG/R9em/6U
 /wREA0XeD1viyg22I7cjjRE2zdgle17lwfhrNN8Un+foLJqZedSC4QZHsjy0JgyaUNaAbJgYyiw
 Yhy2IPmniapk+CV01ICkT36lVcq7gRWREdZoJVRZpVxaoapDFEWof8HqevEAQMGy27/sCCzzx9r
 NLVMwMGE1F1TPolT6yIWUinOmD7ESqF0ATa3IncbZWU+mNYAyT7VYE9ZjM152Rb8NLkn0xPNHMv
 +IlXQWbmY5bYsOg==
X-Developer-Key: i=abel.vesa@linaro.org; a=openpgp;
 fpr=6AFF162D57F4223A8770EF5AF7BF214136F41FAE

Document the SDHCI Controller on the X1E80100 Platform.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 Documentation/devicetree/bindings/mmc/sdhci-msm.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
index 11979b026d211050270d018c03fa73c107e7c10f..8c7e016306f14be20e4a3cff289317ed603633f3 100644
--- a/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
+++ b/Documentation/devicetree/bindings/mmc/sdhci-msm.yaml
@@ -62,6 +62,7 @@ properties:
               - qcom,sm8450-sdhci
               - qcom,sm8550-sdhci
               - qcom,sm8650-sdhci
+              - qcom,x1e80100-sdhci
           - const: qcom,sdhci-msm-v5 # for sdcc version 5.0
 
   reg:

-- 
2.34.1


