Return-Path: <devicetree+bounces-5012-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AF6F7B4BD7
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 08:55:49 +0200 (CEST)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sv.mirrors.kernel.org (Postfix) with ESMTP id 1C02C2815F1
	for <lists+devicetree@lfdr.de>; Mon,  2 Oct 2023 06:55:48 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 5B4987FB;
	Mon,  2 Oct 2023 06:55:47 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14C1317C3
	for <devicetree@vger.kernel.org>; Mon,  2 Oct 2023 06:55:46 +0000 (UTC)
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 020AE10B
	for <devicetree@vger.kernel.org>; Sun,  1 Oct 2023 23:55:37 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id 4fb4d7f45d1cf-533df112914so16894510a12.0
        for <devicetree@vger.kernel.org>; Sun, 01 Oct 2023 23:55:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1696229736; x=1696834536; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HwwrmFR4vDTJaNi1kPRW+bxNbMVZUqqlhEa36sL0+x0=;
        b=X7eAzZhA6IOTvzBrJdK6OIgzkkXZzdkfjKScUHnH8Kw0JvGYrKfd/O65H5roRR/sye
         2DVPjg8Cr/8hFecO5Z+34zhhipahj8T67sD+Kj9UlBenWOpB13FtrDRhYoPZrpytRSmM
         898mprrQuLQSzr1RPTrZh0pO9BwXe61sS/H06/nJTGsa5PGUJm/yGuFVuqkSNH8VsUOY
         ai7KQ1eUAebdf9BccwSBMsvgJLWJK99RDeoovv1EZj9x+g+VbkRDzYb3DKW5xTZZq6RA
         YO2DlaoqiKH6L++DHSdM4qllRTJYa9MI8Hjio2iuJXQZWY/bdCheGz2Tx1UaZJO1quJd
         3n/g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696229736; x=1696834536;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HwwrmFR4vDTJaNi1kPRW+bxNbMVZUqqlhEa36sL0+x0=;
        b=mbO/wQstFAEtEh/WypL7TYuj0LWtyita33bbdcRchoYfF1Z3k2+1tvImyH5KmXKExQ
         7tvVfkkIIm1ZPKpBPmteKqm5Zv1FK5rtHCLP1hDfTsMfAl1mDoCLXbXlrJAkN9owgpQF
         1XpyCiV/6RKrbTssNyjLpyUuyOPNiMl0cFGM3u81BKIFw7tn9VnYKi94f/+tdtB4bSXS
         vG7BArFgT2YSjZRmk/NL82x1jBHUxUSQCTsomKNQcxvOXTvJS7POyBgTVG7yi/50Wcu9
         K3XFguLAWi2mnIsP5gXEvbVfWRzzkOiGwPiFWc1gdYqoLGravH2iDS9VhLd7zR/2BVLs
         wA6A==
X-Gm-Message-State: AOJu0YwZiZuXDpPRa0h4avzWGrMQ3S+oAf4jTv3lO6jb9YVxcNcj0wwV
	kI9tGVEuY9eww69APR9ftMxTVw==
X-Google-Smtp-Source: AGHT+IG748rMZzqwrEOaVjCa90z9zqxPEEcFfHIyU60ZyBbXRdg0mBN/e0Wmme6hTjgtOYd6iaq3xw==
X-Received: by 2002:a05:6402:cb1:b0:538:ae5:6138 with SMTP id cn17-20020a0564020cb100b005380ae56138mr4526460edb.34.1696229736335;
        Sun, 01 Oct 2023 23:55:36 -0700 (PDT)
Received: from otso.luca.vpn.lucaweiss.eu (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id m7-20020a056402050700b00537f44827a8sm4095557edv.64.2023.10.01.23.55.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 01 Oct 2023 23:55:35 -0700 (PDT)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Mon, 02 Oct 2023 08:55:30 +0200
Subject: [PATCH v2 1/2] dt-bindings: i2c: qcom-cci: Document SC7280
 compatible
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20231002-sc7280-cci-v2-1-9333fda4612a@fairphone.com>
References: <20231002-sc7280-cci-v2-0-9333fda4612a@fairphone.com>
In-Reply-To: <20231002-sc7280-cci-v2-0-9333fda4612a@fairphone.com>
To: Andy Gross <agross@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konrad.dybcio@linaro.org>, 
 Loic Poulain <loic.poulain@linaro.org>, Robert Foss <rfoss@kernel.org>, 
 Andi Shyti <andi.shyti@kernel.org>, Rob Herring <robh+dt@kernel.org>, 
 Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>, 
 Conor Dooley <conor+dt@kernel.org>, cros-qcom-dts-watchers@chromium.org
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-i2c@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>, 
 Bryan O'Donoghue <bryan.odonoghue@linaro.org>
X-Mailer: b4 0.12.3
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Document the compatible for the CCI block found on SC7280 SoC.

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
index 042d4dc636ee..8386cfe21532 100644
--- a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
+++ b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
@@ -25,6 +25,7 @@ properties:
 
       - items:
           - enum:
+              - qcom,sc7280-cci
               - qcom,sdm845-cci
               - qcom,sm6350-cci
               - qcom,sm8250-cci
@@ -159,6 +160,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,sc7280-cci
               - qcom,sm8250-cci
               - qcom,sm8450-cci
     then:

-- 
2.42.0


