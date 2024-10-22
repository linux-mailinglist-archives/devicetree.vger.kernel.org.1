Return-Path: <devicetree+bounces-114032-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [147.75.199.223])
	by mail.lfdr.de (Postfix) with ESMTPS id 566A19A9A1A
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 08:42:22 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 6E99C1C23BC4
	for <lists+devicetree@lfdr.de>; Tue, 22 Oct 2024 06:42:21 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9C6A147C96;
	Tue, 22 Oct 2024 06:42:07 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="apoviP08"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com [209.85.221.44])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5D0AF146D76
	for <devicetree@vger.kernel.org>; Tue, 22 Oct 2024 06:42:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.44
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729579327; cv=none; b=j0QInKWYOYr3X3j4v3G7jJGsLjkr9vucCfFkuktEn6letin52TiFF8ILadWwkSfJcVSeRJ5QSbItyEIowZriAh7gob+fgDyEkbxL/2khJgET6mAMfkdmbT0S9VU2zeM5HLU37XYzrHnt+aISLR/GW9lZOEGdBCHYjEK8phtA42M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729579327; c=relaxed/simple;
	bh=1thCTcH23spAhn2EXYxroeApX1m8h0dJWW4QKu3j478=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=QEq0U6HAjS/pWspvjZfsroehPbrpUgqEz1h3Ly2bIMWIlYGx84CawspzbqnhLaEb0l+X/TlAVDsWxxXWSrW/sa40eWYHKFbnTSiq4atQpyIjLBe5vDXeclWsr16VtjRzHakVK2uUCmXXh7eq8pRNn5YwWkefI9DNfNqECxv20j0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=apoviP08; arc=none smtp.client-ip=209.85.221.44
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f44.google.com with SMTP id ffacd0b85a97d-37d5231f71cso456105f8f.2
        for <devicetree@vger.kernel.org>; Mon, 21 Oct 2024 23:42:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729579323; x=1730184123; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=duciRezIS4gg7ESTgVskBEGp7JBiK6GVm+jK3y4v+lo=;
        b=apoviP08plzx+ful4dCHoV0hIwJShFFQdNJyCh57xRoYhdEZLQejQQihFOUlnK68a4
         Mo6tqadsPYLg5pNi9ES8dTa5flf434uElZYRLrcSGr19z+m8SsXwynBHprfngJYVy9Re
         vYxLawiP2CKzhDHehjCxxgdV6mbUf0uFZ7armdxTh0uXy1+jRWZhDsQNEK7LQ50BbOIs
         1PnvEsWGLEbIS4lB3eO/4d71d0hQVqazQHq9lhXR8O2xuAC5cIGBK5OkQVkGr5zKH8iT
         F+oPmDUC5uh2UpDBGqdZef8JyvXhd5TTJIFw7J4+pEoZccvnkj5EymqR8MrzhBslgVfP
         Z0eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729579323; x=1730184123;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=duciRezIS4gg7ESTgVskBEGp7JBiK6GVm+jK3y4v+lo=;
        b=r1BVxsuPo7lLuW6ghLJGZfmr9LXZwLpqSMK23g84XmBNU+tbTnth5nEZPDSxglWbxU
         GHz0YulgdOKtiIr+V1Sq+jWBscHmjzKImT0gdw7380QGwdLk5D0GBVhoJ31CaDgt8f06
         HoNzdpbrXEi7l/5SQvDDBZWbaGRwE4GgNI8M/GVKcHngRh56RxaUy77z4QzOI+EVc83V
         2qSgsiK+YvvAvN6LM5S1tz++TQTYuTa5vd/SCQ690GX/Rdj3qd63o4IXqGqpz9kL5jMg
         Pt4vjsk9ErFQalSI4mkQuISznOiYEB0cMww433uO7DyfB5qEsr+f8oZmwIRSaCydgz3z
         l3rA==
X-Forwarded-Encrypted: i=1; AJvYcCUED3FM7qNbrSkO/m3StN7NpSo14cR8g+NVk57t0xKf8V+4dv1BA7j/RKd7dHsI+xpy8YQ3gFBiKVgI@vger.kernel.org
X-Gm-Message-State: AOJu0YyKei4CfBsuFLZiJtsgHmahbKc82um5FFO94hjk8c2m8HJn2xs3
	yShRwdbN1MwVXM2yqpf3QGjE9O6/aQuceZ1ntO6C1PUIsdXuKHqU4iOx2NXdvDs=
X-Google-Smtp-Source: AGHT+IELjStkZnV8uJMVd3FU3vRg2EcfcYQAty8fNGG65QLhbFCLjs2ESgMWCjfcqZNp+pmAgmQ4KA==
X-Received: by 2002:a05:6000:1445:b0:37e:d965:46b7 with SMTP id ffacd0b85a97d-37ed96547fdmr2222045f8f.10.1729579322571;
        Mon, 21 Oct 2024 23:42:02 -0700 (PDT)
Received: from krzk-bin.. ([178.197.211.167])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-37ee0a5b98asm5914655f8f.61.2024.10.21.23.42.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Oct 2024 23:42:02 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
	Liam Girdwood <lgirdwood@gmail.com>,
	Mark Brown <broonie@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-sound@vger.kernel.org,
	linux-arm-msm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Melody Olvera <quic_molvera@quicinc.com>,
	Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>
Subject: [PATCH] ASoC: dt-bindings: qcom: Add SM8750 LPASS macro codecs
Date: Tue, 22 Oct 2024 08:41:55 +0200
Message-ID: <20241022064155.22800-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document compatibles for Qualcomm SM8750 SoC macro digital codecs (RX,
TX, VA and WSA), compatible with previous generation (SM8550 and
SM8650).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Cc: Melody Olvera <quic_molvera@quicinc.com>
Cc: Satya Durga Srinivasu Prabhala <quic_satyap@quicinc.com>
Cc: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 Documentation/devicetree/bindings/sound/qcom,lpass-rx-macro.yaml | 1 +
 Documentation/devicetree/bindings/sound/qcom,lpass-tx-macro.yaml | 1 +
 Documentation/devicetree/bindings/sound/qcom,lpass-va-macro.yaml | 1 +
 .../devicetree/bindings/sound/qcom,lpass-wsa-macro.yaml          | 1 +
 4 files changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/qcom,lpass-rx-macro.yaml b/Documentation/devicetree/bindings/sound/qcom,lpass-rx-macro.yaml
index b8540b30741e..92f95eb74b19 100644
--- a/Documentation/devicetree/bindings/sound/qcom,lpass-rx-macro.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,lpass-rx-macro.yaml
@@ -21,6 +21,7 @@ properties:
       - items:
           - enum:
               - qcom,sm8650-lpass-rx-macro
+              - qcom,sm8750-lpass-rx-macro
               - qcom,x1e80100-lpass-rx-macro
           - const: qcom,sm8550-lpass-rx-macro
 
diff --git a/Documentation/devicetree/bindings/sound/qcom,lpass-tx-macro.yaml b/Documentation/devicetree/bindings/sound/qcom,lpass-tx-macro.yaml
index 3e2ae16c6aba..914798a89878 100644
--- a/Documentation/devicetree/bindings/sound/qcom,lpass-tx-macro.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,lpass-tx-macro.yaml
@@ -22,6 +22,7 @@ properties:
       - items:
           - enum:
               - qcom,sm8650-lpass-tx-macro
+              - qcom,sm8750-lpass-tx-macro
               - qcom,x1e80100-lpass-tx-macro
           - const: qcom,sm8550-lpass-tx-macro
 
diff --git a/Documentation/devicetree/bindings/sound/qcom,lpass-va-macro.yaml b/Documentation/devicetree/bindings/sound/qcom,lpass-va-macro.yaml
index 6b483fa3c428..f41deaa6f4df 100644
--- a/Documentation/devicetree/bindings/sound/qcom,lpass-va-macro.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,lpass-va-macro.yaml
@@ -21,6 +21,7 @@ properties:
       - items:
           - enum:
               - qcom,sm8650-lpass-va-macro
+              - qcom,sm8750-lpass-va-macro
               - qcom,x1e80100-lpass-va-macro
           - const: qcom,sm8550-lpass-va-macro
 
diff --git a/Documentation/devicetree/bindings/sound/qcom,lpass-wsa-macro.yaml b/Documentation/devicetree/bindings/sound/qcom,lpass-wsa-macro.yaml
index 6f5644a89feb..9082e363c709 100644
--- a/Documentation/devicetree/bindings/sound/qcom,lpass-wsa-macro.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,lpass-wsa-macro.yaml
@@ -21,6 +21,7 @@ properties:
       - items:
           - enum:
               - qcom,sm8650-lpass-wsa-macro
+              - qcom,sm8750-lpass-wsa-macro
               - qcom,x1e80100-lpass-wsa-macro
           - const: qcom,sm8550-lpass-wsa-macro
 
-- 
2.43.0


