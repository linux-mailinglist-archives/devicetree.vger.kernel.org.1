Return-Path: <devicetree+bounces-6458-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 841507BB727
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 14:02:13 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 399072823C7
	for <lists+devicetree@lfdr.de>; Fri,  6 Oct 2023 12:02:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6A16F1CABE;
	Fri,  6 Oct 2023 12:02:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="REQcHVwy"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 153891C2A2
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 12:02:08 +0000 (UTC)
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 32ACAD6
	for <devicetree@vger.kernel.org>; Fri,  6 Oct 2023 05:02:06 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id ffacd0b85a97d-3248e90f032so1976611f8f.1
        for <devicetree@vger.kernel.org>; Fri, 06 Oct 2023 05:02:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1696593724; x=1697198524; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jSGAkuD+7vWq/4//TzDVC1wtIHtAKa9SU4Jfy5NCE4Y=;
        b=REQcHVwyftW7z/LC3aLxtx6m2wTgFpcwp6Hdo7j9MsAIeripPBWvCE8nMKbF6fmkri
         XLMSkUlgIDUoKbKUXel+xLxR8KicLOAsCcPB4Qo6MdX7uTOOOnXxdooE13iQhdyahTGc
         qwoG0ADdY+ol2kl7pTS9BsJCsZZ4eMGsmcWc9m+grpmrAGzMC2z9fBBSEt95Kc46h4Hq
         ZNTuRTe+qzXMaHGqQpeirs07eAXE5NuyoUAZ/b5Cqf2p/GrxBI3euT19WQ8LV3MlFsx4
         W6qSzCaXhkq5VCnpOO1jQAYtvH/tbuEhqE6PoR7aljzzV4TQHMnY35U3VQzLvDQTIhNS
         4Mkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1696593724; x=1697198524;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=jSGAkuD+7vWq/4//TzDVC1wtIHtAKa9SU4Jfy5NCE4Y=;
        b=r7cnCebbdeX0SDZwhzxLYlY5AI1NAe8jb5Ym9x6BBWo8EiM3qALgjpc46KAyADxyMn
         MkjJMrOaF9ihfl7WOT13Vles0T6gXBdc6fP8MPZU+DVgo71ZqQulAp868krZ7C8lcLPb
         g+zDOTgTBY2/niofyFG5t9PN3UDfIGOoqq6SL9w0XAXdFTGdGVGk1YfcLBma0xbugoSY
         IiMsLdQhwyBfUNFShIxXrY0DXQKK+yq/sxtXE3nKGQFRWRGCwKcQjRhQhFDzoZQ9Wv60
         sNOGiq3w3GQ33tbIdqh/5oe86rPNOAhYeQixNinaVqZDipHsUektuPSB6dqoj+uwxZPO
         jc8Q==
X-Gm-Message-State: AOJu0YztEM/72YSqre6gCMuKQahN8gxdNGkz+SaCMfjB7G88Rb/Gh6xW
	zGi2rI+CZuIuxMwHp/h3E/hRXQ==
X-Google-Smtp-Source: AGHT+IGjV6Lkmbq5zBsMUAqIyVea/+fjQS1ggse+sUgiRX/y6wI9EQg0hfmS9uIS9oEljnGZ9LxN/Q==
X-Received: by 2002:a5d:494f:0:b0:31a:d266:3d62 with SMTP id r15-20020a5d494f000000b0031ad2663d62mr7516272wrs.54.1696593724118;
        Fri, 06 Oct 2023 05:02:04 -0700 (PDT)
Received: from x13s-linux.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id m8-20020a056000180800b00321773bb933sm1491061wrh.77.2023.10.06.05.02.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 06 Oct 2023 05:02:03 -0700 (PDT)
From: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To: agross@kernel.org,
	andersson@kernel.org,
	konrad.dybcio@linaro.org,
	loic.poulain@linaro.org,
	rfoss@kernel.org,
	andi.shyti@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org,
	todor.too@gmail.com,
	mchehab@kernel.org,
	bryan.odonoghue@linaro.org
Cc: linux-arm-msm@vger.kernel.org,
	linux-i2c@vger.kernel.org,
	linux-media@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH 1/5] dt-bindings: i2c: qcom-cci: Document sc8280xp compatible
Date: Fri,  6 Oct 2023 13:01:55 +0100
Message-Id: <20231006120159.3413789-2-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20231006120159.3413789-1-bryan.odonoghue@linaro.org>
References: <20231006120159.3413789-1-bryan.odonoghue@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
	SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
	version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
	lindbergh.monkeyblade.net

Add sc8280xp compatible consistent with recent CAMSS CCI interfaces.

Signed-off-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
---
 Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
index 042d4dc636ee..8a8d0a01017c 100644
--- a/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
+++ b/Documentation/devicetree/bindings/i2c/qcom,i2c-cci.yaml
@@ -25,6 +25,7 @@ properties:
 
       - items:
           - enum:
+              - qcom,sc8280xp-cci
               - qcom,sdm845-cci
               - qcom,sm6350-cci
               - qcom,sm8250-cci
@@ -159,6 +160,7 @@ allOf:
         compatible:
           contains:
             enum:
+              - qcom,sc8280xp-cci
               - qcom,sm8250-cci
               - qcom,sm8450-cci
     then:
-- 
2.40.1


