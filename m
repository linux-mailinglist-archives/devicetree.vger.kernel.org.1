Return-Path: <devicetree+bounces-4497-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 567C27B2D60
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 10:01:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id F3AB3282B34
	for <lists+devicetree@lfdr.de>; Fri, 29 Sep 2023 08:01:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 585E7C2D9;
	Fri, 29 Sep 2023 08:01:14 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50FDFC2C6
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 08:01:12 +0000 (UTC)
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A0D3F1A5
	for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 01:01:09 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-9b2a3fd5764so872814166b.3
        for <devicetree@vger.kernel.org>; Fri, 29 Sep 2023 01:01:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1695974468; x=1696579268; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=C28erFu3B139djkq6tJ1VDiSF++V0llFIYietOujFec=;
        b=A3lCJKacXyFUp2c26x5eIDSX79vujXTFwMcaypqQykSnK992oLkScWJmdl+j46TAju
         Hw69GVba9lgttLfRMfEo0MoJMpOkWDm76JQ7KV7/afU2babRNCubNZOFgQW4Ubh3CsnY
         SEl8Zsx8QQ99hTlx+DpnZlYWzDmIwnLO8MHd+MQK8DqIB6EJSOKgM3V9JnbeDbr0F5PX
         VoRWZhFtjhvZXH09P2UrskXZqr8Zo9q+xfwLj8uZlLlCY6B5TWJcKoAYONCyLJJUzCYe
         R829Qb/W3ims6P3FR0TFjvj6i+mLGf5EVqcQ6DtVFYl55BL5w9frEiCYhwnkn7LANEZr
         I4qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1695974468; x=1696579268;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=C28erFu3B139djkq6tJ1VDiSF++V0llFIYietOujFec=;
        b=aywDGHxmdE4ezCyo7HZgf7UEWj3jE2pbkEWaPgTFo+0cfgBRwMQ7AFxWahIXUaXeEm
         3vC9wgCC+QbCv5eVrh7zZqvsKbNlLJ3mm3gMztK09qNaRhehNyjqsaMk+BbkxY/VEzdM
         Vft1MaeSDfq5cboR461dmJGe8JLCQ53t5X7KAHBXHBZUojxneNDu9bnI7Hvm7DfR2OpV
         RolK/aPIyFSG8hHGa9b6R85t4vk75ebUT3Zppg42WuZOeIGNzgbKEUK6usVhTm4UnSCC
         mjyNtswEgnvsMVX3Wk9Cmyt0r4TaUawGA6N2Oq+ncwdTsPDKvhKSHgCiO6d6RMkuIYGx
         BIGg==
X-Gm-Message-State: AOJu0YzF9qMzbiXTykpug5qHJ8K6CoxTE6/ospAAbJEDI7T1vq8rbuCt
	wr8QNKvC0xvQnNN16eQu0SmCjQ==
X-Google-Smtp-Source: AGHT+IGcPNVNSQxWUc41wvX5rNkwu0RZEcFdSMwOgz/orbiDS7oqer0CThTY8123JuaQk0L8alLyig==
X-Received: by 2002:a17:906:2012:b0:9ae:6632:a8c0 with SMTP id 18-20020a170906201200b009ae6632a8c0mr3275480ejo.10.1695974468233;
        Fri, 29 Sep 2023 01:01:08 -0700 (PDT)
Received: from otso.luca.vpn.lucaweiss.eu (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id j6-20020aa7ca46000000b0052889d090bfsm10825040edt.79.2023.09.29.01.01.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 29 Sep 2023 01:01:07 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 29 Sep 2023 10:01:05 +0200
Subject: [PATCH 1/3] dt-bindings: i2c: qcom-cci: Document SC7280 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230929-sc7280-cci-v1-1-16c7d386f062@fairphone.com>
References: <20230929-sc7280-cci-v1-0-16c7d386f062@fairphone.com>
In-Reply-To: <20230929-sc7280-cci-v1-0-16c7d386f062@fairphone.com>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Loic Poulain <loic.poulain@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Document the compatible for the CCI block found on SC7280 SoC.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
index 042d4dc636ee..158588236749 100644
--- a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
+++ b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
@@ -25,6 +25,7 @@ properties:
 
       - items:
           - enum:
+              - qcom,sc7280-cci
               - qcom,sdm845-cci
               - qcom,sm6350-cci
               - qcom,sm8250-cci

-- 
2.42.0


