Return-Path: <devicetree+bounces-11134-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id EF39C7D4795
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 08:38:15 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id CAE1D28184B
	for <lists+devicetree@lfdr.de>; Tue, 24 Oct 2023 06:38:05 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 26B7663BF;
	Tue, 24 Oct 2023 06:38:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="BEs9AnN4"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AE2AD1FA1;
	Tue, 24 Oct 2023 06:38:03 +0000 (UTC)
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 506B1DD;
	Mon, 23 Oct 2023 23:38:02 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-9bf86b77a2aso590802966b.0;
        Mon, 23 Oct 2023 23:38:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1698129481; x=1698734281; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=iaSNLjd6qp2TTeM4lQ0nSQjwYYZEfvjgfhn3UAjO2Dc=;
        b=BEs9AnN4o2XbuyoMU3O03v+NuOJmgZO41q0ZcbpeYDlh9Xc34nX+/VliRYR58z9S0U
         Gvhb6aIXP974S1cCyXHliRgeoiDFtYhvmeYWOfjASchbpmFOFncgAX53eKifyUR1R/Qy
         KLh/2vsSEXw7nEKIA2nCwnyxWr4ISq+u1/wO0qa1z2552tfULEFeutZyfLc+rx8UHWmN
         o6QFWvUkfv1cimiWwAh3Iav8P/cX68sI04l9DbnsqZ7UqWd/bqozmqR/6V78Wi88KWU1
         ICvHaoOTmm86Ul9vnjYl/dnoXJ6RjnU6BNUSKumM0Puel+LN4TtJIOc5BnlmIwS728NS
         yhuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1698129481; x=1698734281;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=iaSNLjd6qp2TTeM4lQ0nSQjwYYZEfvjgfhn3UAjO2Dc=;
        b=RZ6rdx3u+jMArTHuGmMCDXsD3rE2A0zGqYY3xi/eetg3ywAu8NvqRZiVVSN3RemEIT
         KhaLHXWLkzRCGpS5dpmNSWIvla47PrLwbpzFLOs73Jmmxb35KT+ZufiLBJqc1H5uXo6E
         HHHzsX+6k48ocjEz9SI3OA4oXQsGgLeDMK6Ol0egflX0lcqkSCnpMG+xfSbCsGNBnFyn
         Ny1ACFqCT7AXv2QZmoinCPB2iOPKKkJg076IsUPauHF4HqbQBbtpS0oHw60hDHkyMGK9
         NhhR3WZK47qiVcY0neY/Kq6C5D34JZj5+TDCLExHW7FSXuaDi26g1k5NNYnwy4klBbUH
         KGfw==
X-Gm-Message-State: AOJu0YxiLjswbxXg/CpVfW/VZkYozdOa19WhUfFKGtgkSOE3Z7pFsYrG
	Tr1WqxglVkV1kafcezBMbuE=
X-Google-Smtp-Source: AGHT+IEpENZHP+B22CKmP3ux1lLTzu1tX7FeYo36p0IWv4/vHNIQH7O++92TJ5AnYR4jWsZlrYptxw==
X-Received: by 2002:a17:907:80e:b0:9b2:aa2f:ab69 with SMTP id wv14-20020a170907080e00b009b2aa2fab69mr8810179ejb.30.1698129480122;
        Mon, 23 Oct 2023 23:38:00 -0700 (PDT)
Received: from localhost.localdomain ([2a0d:3344:1b7d:7200::eba])
        by smtp.gmail.com with ESMTPSA id xa17-20020a170907b9d100b009b913aa7cdasm7765920ejc.92.2023.10.23.23.37.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Oct 2023 23:37:59 -0700 (PDT)
From: Luka Panio <lukapanio@gmail.com>
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
Cc: Luka Panio <lukapanio@gmail.com>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v9 1/2] dt-bindings: arm: qcom: Add Xiaomi Pad 6 (xiaomi-pipa)
Date: Tue, 24 Oct 2023 08:37:39 +0200
Message-ID: <20231024063740.4975-1-lukapanio@gmail.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add a compatible for Xiaomi Pad 6.

Acked-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Luka Panio <lukapanio@gmail.com>

---
v2:
Update commit message

v3:
Update commit message

v4:
Update commit message

v5:
Update commit message

v6:
Update commit message
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


