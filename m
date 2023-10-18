Return-Path: <devicetree+bounces-9692-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 97B427CE080
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 16:58:05 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id EF925B2100C
	for <lists+devicetree@lfdr.de>; Wed, 18 Oct 2023 14:58:02 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 13E99374F5;
	Wed, 18 Oct 2023 14:57:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="XlGFl4sl"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C673916427
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 14:57:57 +0000 (UTC)
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BBF5D10F
	for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 07:57:55 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-53e08e439c7so11517725a12.0
        for <devicetree@vger.kernel.org>; Wed, 18 Oct 2023 07:57:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1697641074; x=1698245874; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=Ru2R7zuvY45hV9RylJTA2u/cUA8xp2Mn6s4hLcqrWjk=;
        b=XlGFl4slyc37E0A9PVGSExMMi0jnmIava72qbqtsGfGEbxf2iljWLNXVJRE4qH23v1
         tZqXwWHtYNLzhdYz4uNgoDW93Fs38cawcvQODXSmresAURRI2XKnhRQy4qe7zX8dxxvA
         wkc+H5FdfP+d6KIGHK3MOXKGuVjoTELdB0YoCIk+mKz5sPoTkTW8dvE5MIcGjvFgJBYG
         dfwcO/paVbQO5Fq4UJt0Jrj9MpFSCyDkFA0/8lTeG3o4tFPPomgnbTlyE+BwCOc+25V0
         ycPOsJLqxBs4tBTRJrrDJ89l3DmFPxgk9PvW2KNZ/twN1uruI/khSZAZgD88iiNOq4Rj
         FjZA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697641074; x=1698245874;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Ru2R7zuvY45hV9RylJTA2u/cUA8xp2Mn6s4hLcqrWjk=;
        b=tlpKSbAA44ykAn/47qZOA1ODYkG7g+vbZunlB/eDmhovJEEeFsV36ApiIxi1r/Mpc9
         9SHpip4JT4SG1+1cg7TYGRo+d0ye5qigK94rZQjB0vG1gIzkb7npm8MsGUfUT5rVk9vE
         6MvoHCe15MeqN1z+mp73tjTF9ZQCwF+hzgCQEZEZEee5bKKPfnANCUH6buCTlSQQitNk
         Vf6CuTg0ikgmmVKCXxre2qzjDd6DdHNF3eW3mtNTUbbQ5lopTfTcuuRyuSeq0etVWndx
         Y8d9aweO9pDERhs1eMUu9xdkYzKZwO0yfO4B5pd5oFMyS33rJD9tgSrEQYX2M76/m239
         zpXA==
X-Gm-Message-State: AOJu0YxDkAHkQO223iIMb2hGfYdPk0DUFXKmdja4VTleIfP52vDNiIo+
	fmHwYQw5Ea5Z0xu8fEZRTCPBmg==
X-Google-Smtp-Source: AGHT+IF3KKzONpdhTXHuqkIwWMJvt0YLy7is0f4aGGbq4QIrdEF6b1TfFbNUCBYfaeYF9w08njGe7Q==
X-Received: by 2002:a50:a446:0:b0:53e:10a1:21d with SMTP id v6-20020a50a446000000b0053e10a1021dmr4191660edb.35.1697641074233;
        Wed, 18 Oct 2023 07:57:54 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.154])
        by smtp.gmail.com with ESMTPSA id t29-20020a50ab5d000000b0053ed70ebd7csm2983570edc.31.2023.10.18.07.57.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Oct 2023 07:57:53 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Bjorn Andersson <andersson@kernel.org>,
	Andy Gross <agross@kernel.org>,
	Konrad Dybcio <konrad.dybcio@linaro.org>,
	Linus Walleij <linus.walleij@linaro.org>,
	Rob Herring <robh+dt@kernel.org>,
	Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
	linux-arm-msm@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: pinctrl: qcom,sa8775p-tlmm: add missing wakeup-parent
Date: Wed, 18 Oct 2023 16:57:50 +0200
Message-Id: <20231018145750.429385-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add missing wakeup-parent property, already used by DTS to indicate that
pins are wakeup capable:

  sa8775p-ride.dtb: pinctrl@f000000: 'wakeup-parent' does not match any of the regexes: '-state$', 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/pinctrl/qcom,sa8775p-tlmm.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/pinctrl/qcom,sa8775p-tlmm.yaml b/Documentation/devicetree/bindings/pinctrl/qcom,sa8775p-tlmm.yaml
index e119a226a4b1..2173c5255638 100644
--- a/Documentation/devicetree/bindings/pinctrl/qcom,sa8775p-tlmm.yaml
+++ b/Documentation/devicetree/bindings/pinctrl/qcom,sa8775p-tlmm.yaml
@@ -28,6 +28,7 @@ properties:
   gpio-controller: true
   "#gpio-cells": true
   gpio-ranges: true
+  wakeup-parent: true
 
   gpio-reserved-ranges:
     minItems: 1
-- 
2.34.1


