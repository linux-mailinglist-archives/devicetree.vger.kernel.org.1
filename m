Return-Path: <devicetree+bounces-10570-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 17ECC7D1F6B
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 22:18:54 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id C1961281C0C
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 20:18:52 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4C1441F168;
	Sat, 21 Oct 2023 20:18:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="mQWSzaue"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A2C83D517;
	Sat, 21 Oct 2023 20:18:48 +0000 (UTC)
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C4BDC119;
	Sat, 21 Oct 2023 13:18:46 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id a640c23a62f3a-9ba1eb73c27so312105566b.3;
        Sat, 21 Oct 2023 13:18:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697919525; x=1698524325; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=VHdWLz7w2mdz9CQCiFnESBGvhsi5FryatZMrtlA6/oY=;
        b=mQWSzauemjKGv35D+DtlqhGElZfNAzFMM8VGMX03UEQHfVb5W1lyzfq5yLyhlBS5En
         t3J38+aQRNwVxYEX7VLt7i72MuFfOssdccaqgKelmmV/SXPrib+/ImUW1Wv5PrtD+f+x
         VCo2H8rq2TDMv2wtD3sHVSqOJXCfFHRq9tTYAxZq51de6gBbvNu+J52haMxWJuX1OxB7
         ENEuJnpOvEiZFZFUUGDT9Q4BjUwb9fWcKXVHkLBRkHWRFiIwQAxKLfD4bAzHDK7CeAd4
         saolUnv4iHbuzBhpHHw/s2g0qF9kwSkHI6ijkgRhZjdMnbEK68X58wyRHZxjTPvZ82x4
         y+Sw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697919525; x=1698524325;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VHdWLz7w2mdz9CQCiFnESBGvhsi5FryatZMrtlA6/oY=;
        b=qp0rnIffGapQKF0teFDLVgJYEEyJUFtvmdG0AWNWlmKFf8M3/HgRPPwgCejhICfNfy
         FhY+tSpkDYOfl7ImTa3JSTsm1Kbro0rBMZKnW9ljaVA6UqzHkBo+9U+cx+qLYPdvl4qj
         8/eXhmMFWX8fdMzGpkWkvp9kOB2EMFacMUobiBdmODiD/ad07il2vrVBL4lueqVKJXj4
         lehrahE9dA1zyAmG/Q3y3/LEFJg4Ld6K6MpDm2iE9XDC6+RoNRqM8iIbtET76zE15TG5
         xAEPzlGy3EQIHPaNHUuVLeXiAVpUtxejxE6pyWr8mp7WEH45oTSYPbU2CB92i8nQ86pN
         nW0A==
X-Gm-Message-State: AOJu0YzUoerngOqknWWrPXjirne6+jHnNNWLBvy02kNoMGHRt2wh64TE
	Jv0xLGQG6MFKGN9a/bQXGr4pJJefs55XmqrqWGM=
X-Google-Smtp-Source: AGHT+IH+nJIx0h+gsXFxutPdjXsQRfQDI7iKVdkxkDelFP9yJATNMDOs0rkWbxrRp3xTRksajbN9Vg==
X-Received: by 2002:a17:907:968b:b0:9bf:70ea:692e with SMTP id hd11-20020a170907968b00b009bf70ea692emr4490556ejc.60.1697919524832;
        Sat, 21 Oct 2023 13:18:44 -0700 (PDT)
Received: from localhost.localdomain ([145.224.104.33])
        by smtp.gmail.com with ESMTPSA id 10-20020a170906218a00b009c0c511bd62sm4028515eju.197.2023.10.21.13.18.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Oct 2023 13:18:44 -0700 (PDT)
From: luka177 <lukapanio@gmail.com>
To: Andy Gross <agross@kernel.org>,
	Bjorn Andersson <andersson@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Kees Cook <keescook@chromium.org>,
	Tony Luck <tony.luck@intel.com>,
	"Guilherme G . Piccoli" <gpiccoli@igalia.com>,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-hardening@vger.kernel.org
Cc: luka177 <lukapanio@gmail.com>
Subject: [PATCH v3 1/2] dt-bindings: arm: qcom: Add Xiaomi Pad 6 (xiaomi-pipa)
Date: Sat, 21 Oct 2023 22:18:39 +0200
Message-ID: <20231021201840.210415-1-lukapanio@gmail.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a compatible for Xiaomi Pad 6.

From: luka177 <lukapanio@gmail.com>

Signed-off-by: luka177 <lukapanio@gmail.com>

---
Add "From:" in commit message
Nothing else compared to v2 and c1
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index adbfaea32343..1bfae1b237d2 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -965,6 +965,7 @@ properties:
               - sony,pdx203-generic
               - sony,pdx206-generic
               - xiaomi,elish
+              - xiaomi,pipa
           - const: qcom,sm8250
 
       - items:
-- 
2.42.0


