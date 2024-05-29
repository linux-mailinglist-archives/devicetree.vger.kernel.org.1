Return-Path: <devicetree+bounces-70522-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id CAD9F8D39AE
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 16:47:27 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 07B881C2384B
	for <lists+devicetree@lfdr.de>; Wed, 29 May 2024 14:47:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 966A117BB3A;
	Wed, 29 May 2024 14:47:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BkGnpRsz"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f181.google.com (mail-lj1-f181.google.com [209.85.208.181])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 99AE015AAD1
	for <devicetree@vger.kernel.org>; Wed, 29 May 2024 14:47:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.181
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716994028; cv=none; b=NmIVOENAp8Lb6/7E7s46yIkSLe9ZlN8YbtEmBH7/Y7lkO84zrzennX2ucvPygnQ+osRsxCWcNaPjj3taRqW1dRsx74iImv/Brp3csXV2TDgIQGrsoKJDrHiXwFu+8mko4nFJ321lNCeK01V4bn/WnHhKXOZD91jLEwpwKSfTM6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716994028; c=relaxed/simple;
	bh=XJAR3RhvR6FBsC5FKjrD7WCfWMohl/ns3r5JO/+tsoQ=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=SJROJOvgS/frakd3wRFrcxr8a6d4bi+8Ff/NgcvbT8jmcbH3UpkhO2Mdr0Gs23E9AAV/w/NRX/MmU9aEUDUJBAukZiRamF2ITxYUbqW+cJkTeXwfk7HtxNznVZhi4S4H/zlduM1SMcjJQQWKLX0xqgiRb++3P4eI6GyLchTu8/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BkGnpRsz; arc=none smtp.client-ip=209.85.208.181
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f181.google.com with SMTP id 38308e7fff4ca-2e3efa18e6aso373101fa.0
        for <devicetree@vger.kernel.org>; Wed, 29 May 2024 07:47:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1716994024; x=1717598824; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=49pWMHhYwMB+iC4CjWOPr/9ggjWLiI5cpTwzEc3Odls=;
        b=BkGnpRsz9WTtlnrPn1r8ce1Rj5YLx57JM+oyFad3mSa0mCkFz1JBvpssU1XiX2mQXj
         uI/To0mhmtKOaXHM4isj4wMneCeS2KI05BSqkLyNKroV/cdWzXuSkAKr28dJGtCXW+zL
         CbmAPrxF3TWd+sPeUNfkhk/V325qixFbYEcjgXrmO4cuVKUdfKOplZ2XgZd3PetqX7QP
         hSCtFgr8wGV+8FEdx6wf4LJt47ia3vGUmkwgy8ghtpAffN6p4opS0EdWVj6z3HrQ2RQb
         r+sI7Lr8iK1ZJR0hw+Iat4eQsvLfNvayImx+FasigqNNr5qZWdmo3hBtvTMGcJ2S3bwk
         bOqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716994024; x=1717598824;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=49pWMHhYwMB+iC4CjWOPr/9ggjWLiI5cpTwzEc3Odls=;
        b=if03XJWx7y2QJ0aUZsut5ArPMH8wSaNuYIUiKPF2dv2JYFj83b9GpwrfSUQTyeyZal
         qxMuBk+HjGIgZbSpsKtPSRomp6J6XAwxHlBx4ZwyQoDPyQ8nEmyJHOhPuHsa4ML+RSzi
         oKI6V8iwPDwCBZb3vJRGaJ7RsSoyuOWVT4NkpX1iyvTout1arrykn6vGzzqR9mgQmomi
         tyYsTBp4zRDydDN8xXSC0CyxeRc/BL5Ckwcv8UuBjKjTl7GtIJeiGkTBd1dnzB17kk8W
         J5t53MD4bncx5nUuQAToNp39g/0ZZcLtwSZXmv4ZSUFOAxZ6CyXUwVqOXAieQn57RnUM
         kFig==
X-Forwarded-Encrypted: i=1; AJvYcCXaBm53MNHV5QdKVO/v5x6pnW/dW9EH2JA+QPDvy0CKNq7z4F+c9OHIDK8XM4I2XxCloduaYAEVeXh57H7YYLMzXyQbC93/XyKvWA==
X-Gm-Message-State: AOJu0YySsgqAA39a7PcfkznruoPyGE6h4HAkFVlFXPeepjjoRG1pNsRp
	FUdJx7iihOP56MbkHE3R7mCmEqsmWcigL5gXa0tl9tV+/KT8fUCeU4OONiz3OwY=
X-Google-Smtp-Source: AGHT+IF5SnXtXtXt1O5TqHCktvP8TguUoxRFp3Ni6lxYEl+ZuzpUW0el3VzT6go9yPQFrs2YHD+DSQ==
X-Received: by 2002:a2e:8854:0:b0:2e9:5342:628f with SMTP id 38308e7fff4ca-2ea4c87396emr7659471fa.16.1716994023965;
        Wed, 29 May 2024 07:47:03 -0700 (PDT)
Received: from umbar.lan ([192.130.178.91])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-2e98c45df0csm3791951fa.68.2024.05.29.07.47.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 29 May 2024 07:47:03 -0700 (PDT)
From: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Date: Wed, 29 May 2024 17:46:59 +0300
Subject: [PATCH v2 01/14] dt-bindings: clock: qcom,gcc-other: rename to
 qcom,mdm-mdm9607
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20240529-qcom-gdscs-v2-1-69c63d0ae1e7@linaro.org>
References: <20240529-qcom-gdscs-v2-0-69c63d0ae1e7@linaro.org>
In-Reply-To: <20240529-qcom-gdscs-v2-0-69c63d0ae1e7@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>, 
 Michael Turquette <mturquette@baylibre.com>, 
 Stephen Boyd <sboyd@kernel.org>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Taniya Das <quic_tdas@quicinc.com>, 
 Robert Marko <robimarko@gmail.com>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>
Cc: linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
X-Mailer: b4 0.13.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1353;
 i=dmitry.baryshkov@linaro.org; h=from:subject:message-id;
 bh=XJAR3RhvR6FBsC5FKjrD7WCfWMohl/ns3r5JO/+tsoQ=;
 b=owEBbQGS/pANAwAKAYs8ij4CKSjVAcsmYgBmVz/kn/rVhKP/nSfnxh7HbhW6UrixRpuSxntJE
 vrqc8YRV/OJATMEAAEKAB0WIQRMcISVXLJjVvC4lX+LPIo+Aiko1QUCZlc/5AAKCRCLPIo+Aiko
 1cl2B/9JiJiHKmCt/kp2lc1Bs2Aj198PlJeFrJFQRKGYVfiuJGiXG3SRFp5GScaGofluy5AYMuh
 TL2t/QwGkPjENIJ3VgpMmQuxKe94gTcrMS8JmBDdyfadRp1WzfMgjJPyf94SzDqjhYryv7FvvGi
 OK4huUdszexdL/AX+AjsWpz4PRLKoXz8DwdQt/1gj6MNBYTd8BRqFLWsfLENFTERDfGIZc/ugTh
 LaLwcKoGaCzrh/5kwCfkcGdEfLY+WnPamlodKiidwhBLNg9rfZsFvaAc3PIC8aYyR7CDs8kZ894
 ppjyoyPVeqQ6dVQ+ooG6EqMbtUCVty6X9Fwx0G8urberEgb3
X-Developer-Key: i=dmitry.baryshkov@linaro.org; a=openpgp;
 fpr=8F88381DD5C873E4AE487DA5199BF1243632046A

The only platform remaining in qcom,gcc-other.yaml is MDM9607. Drop the
stale mentioning of gcc-msm8953.h include and rename the schema file
accordingly.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 .../bindings/clock/{qcom,gcc-other.yaml => qcom,gcc-mdm9607.yaml}      | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/clock/qcom,gcc-other.yaml b/Documentation/devicetree/bindings/clock/qcom,gcc-mdm9607.yaml
similarity index 87%
rename from Documentation/devicetree/bindings/clock/qcom,gcc-other.yaml
rename to Documentation/devicetree/bindings/clock/qcom,gcc-mdm9607.yaml
index 7d05f0f63cef..1264f3d55761 100644
--- a/Documentation/devicetree/bindings/clock/qcom,gcc-other.yaml
+++ b/Documentation/devicetree/bindings/clock/qcom,gcc-mdm9607.yaml
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: GPL-2.0-only
 %YAML 1.2
 ---
-$id: http://devicetree.org/schemas/clock/qcom,gcc-other.yaml#
+$id: http://devicetree.org/schemas/clock/qcom,gcc-mdm9607.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
 title: Qualcomm Global Clock & Reset Controller
@@ -15,7 +15,6 @@ description: |
   domains.
 
   See also::
-    include/dt-bindings/clock/qcom,gcc-msm8953.h
     include/dt-bindings/clock/qcom,gcc-mdm9607.h
 
 allOf:

-- 
2.39.2


