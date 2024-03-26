Return-Path: <devicetree+bounces-53554-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id B2F0688CB37
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 18:46:45 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 533091F67335
	for <lists+devicetree@lfdr.de>; Tue, 26 Mar 2024 17:46:45 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C70FA200CB;
	Tue, 26 Mar 2024 17:46:39 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="k3ImuXZA"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f46.google.com (mail-ed1-f46.google.com [209.85.208.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CBEC41B59A
	for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 17:46:37 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711475199; cv=none; b=BM/aDkFjuWlxe4/xso8H8QfT99BRFZm7O2zx6eIkIC64PjjohXltfFyyWkt2o1RQcYJc/pEotx3FVNn8LKC1i70tKZwdBOTRU5IWXa970BwanwP2RV6o4yoJBGEiC89dYwegCdeqPUpBq0rjtb0LaXMzvbTb9WAWHtWyurO+nY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711475199; c=relaxed/simple;
	bh=+Jb3+P97t3/SYjNzJeD0Doe3JTD7QKu5XiF0KJGtqvE=;
	h=From:To:Cc:Subject:Date:Message-Id:MIME-Version; b=iqmj8hoqOTwoCGQbeTOsjS81M7BFxbC9tKp8fJsEcYSjTfCRILwILrByJwCe2h19S6tNbXmZAzwjaO3PorUrZGM8iZO3x6Rz9XzcIwV6IQv92dvDrxwIKpB2OhEq2BuQVvKnTpdsYAfjHvNsq4DvKTQ+bisKzOYE2jsIY2OH8Qc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=k3ImuXZA; arc=none smtp.client-ip=209.85.208.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f46.google.com with SMTP id 4fb4d7f45d1cf-568c714a9c7so6832703a12.2
        for <devicetree@vger.kernel.org>; Tue, 26 Mar 2024 10:46:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1711475196; x=1712079996; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xEazo7CkUjqyyWnsaq027rdmCtFwk9evR4G6KKq+jfU=;
        b=k3ImuXZABKLxMtlS5jhB/uwjnfN5VK7JEQJIHp8a+aGIZiqswNhk27zUh/JBoLl8r6
         t1CVwhLwCM2zkkwXnapZ8vUBwgpadJsQyIYDvqOn3UntxjuMclnRJqZAgGehgPE1LHjf
         kaqO7EOnymZ1D8ZXbvGQ+xiElSi9mMRofMyH94CgEGJ7KwIWZTtB5aiVawgh2BmJBgH0
         97j7OGhqFUH+JN1Jyj5eeEJy2ZvCoOe7pazOh2KKPNbaPPKuSk9/7DWzGLSIJmKOxLzg
         55bQ7kbtNuJJhXUNMiSXugDxEMidn2Je99iHq5pDjhrjr4ZzWgsksWWFqjumKreug/XF
         njdg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1711475196; x=1712079996;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xEazo7CkUjqyyWnsaq027rdmCtFwk9evR4G6KKq+jfU=;
        b=B0GASXjSPN4NtFebmQC+G8a0LvN2+gutXTnpjWH4yW7oNy3offV/WoZABw6CdopoND
         6oiXnoR3eFAS1ewU9Id7xXllVie1ND6SBpYE23cSsCgJbJTHKTasdqVt9NkHRRTxXlaZ
         wRe6B/rft+rz9UIAFfQC7R7+toVoWg7VQcAXNl1CQXlwvaFBskO9JUe5qo/YwpZ35hIk
         ueCekwW4Q0yL0Z0qIVIwktkDTBB+1mRxBwbB2JJLHdV1bUkPOipSld8DQ7vNkYJr2BRN
         m9hyQpXjCWN1gyUagysfkK9ZAuuR3dIOazzt3FfcIR31P9qZ+2eVHGZYKiIcwm4TTRw4
         EFhA==
X-Forwarded-Encrypted: i=1; AJvYcCXoqAQ7W5kjhAxk2QTUbxrLdszhz/wTj1x9j9oxA/LcYjpNb3qvvstq21uKaDMN5ln8nrsXHXFkAmz51414FXWAYBXfekXuFq2MBg==
X-Gm-Message-State: AOJu0Yx6jgKQbi6eqC2CJLW6OhrOaJttlH7oTCiWAeHvABIVtIGclvBv
	vdPIHbAyuUZVYBL8j9YaZG/VJ28M75IViD7lwjiag7XAbb8Ongh6zZGJmWkOoDo=
X-Google-Smtp-Source: AGHT+IEDXr/rGD/GEqrQHL/G3YeNWczFxMCfJdYUN/McfMgn2peLnTcs3anULp1X3DvgNu3GWK0kxw==
X-Received: by 2002:a17:906:c9ce:b0:a46:be85:4410 with SMTP id hk14-20020a170906c9ce00b00a46be854410mr243447ejb.74.1711475196041;
        Tue, 26 Mar 2024 10:46:36 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.44])
        by smtp.gmail.com with ESMTPSA id l19-20020a17090612d300b00a46cffe6d06sm4451438ejb.42.2024.03.26.10.46.34
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 26 Mar 2024 10:46:35 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Avri Altman <avri.altman@wdc.com>,
	Bart Van Assche <bvanassche@acm.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andy Gross <agross@kernel.org>,
	linux-arm-msm@vger.kernel.org,
	linux-scsi@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 1/3] dt-bindings: ufs: qcom: document SC8180X UFS
Date: Tue, 26 Mar 2024 18:46:30 +0100
Message-Id: <20240326174632.209745-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document already upstreamed and used Qualcomm SC8180x UFS host
controller to fix dtbs_check warnings like:

  sc8180x-primus.dtb: ufshc@1d84000: compatible:0: 'qcom,sc8180x-ufshc' is not one of ['qcom,msm8994-ufshc', ... ]
  sc8180x-primus.dtb: ufshc@1d84000: Unevaluated properties are not allowed ('compatible' was unexpected)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Rob, considering limbo status of this binding, maybe you can take it
directly? Would be the fastest.
---
 Documentation/devicetree/bindings/ufs/qcom,ufs.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
index 10c146424baa..1ab3d16917ac 100644
--- a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
+++ b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
@@ -28,6 +28,7 @@ properties:
           - qcom,msm8998-ufshc
           - qcom,sa8775p-ufshc
           - qcom,sc7280-ufshc
+          - qcom,sc8180x-ufshc
           - qcom,sc8280xp-ufshc
           - qcom,sdm845-ufshc
           - qcom,sm6115-ufshc
@@ -120,6 +121,7 @@ allOf:
               - qcom,msm8998-ufshc
               - qcom,sa8775p-ufshc
               - qcom,sc7280-ufshc
+              - qcom,sc8180x-ufshc
               - qcom,sc8280xp-ufshc
               - qcom,sm8250-ufshc
               - qcom,sm8350-ufshc
-- 
2.34.1


