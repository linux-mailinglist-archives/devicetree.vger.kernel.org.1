Return-Path: <devicetree+bounces-10575-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [IPv6:2604:1380:45e3:2400::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F198D7D1F8D
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 22:34:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id A29B22817BD
	for <lists+devicetree@lfdr.de>; Sat, 21 Oct 2023 20:34:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A7FA22030E;
	Sat, 21 Oct 2023 20:34:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hKCqf8LU"
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61BB8D517;
	Sat, 21 Oct 2023 20:34:11 +0000 (UTC)
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 83EEBD6;
	Sat, 21 Oct 2023 13:34:09 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-9c603e235d1so296040266b.3;
        Sat, 21 Oct 2023 13:34:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1697920448; x=1698525248; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=4Tmj+Q+dO8iYyZQ2rWjEl3KiKAAEvOCc0F8gmRd/LTk=;
        b=hKCqf8LUh5htUnKwKlm4+2yDG4YDsJbW75onGu6uj0BiDgmquVf7PvH8rORLl8ENWO
         72h7CWXW0g8DWdfTcRNk7yCeBw+ph8UyxGy38qGLD0xGPzsxT8lGNqOJBbHFzoqsTQ1v
         hbL3n2JE9aWh1JNglS4Byb9dGiH/Xbvb+veXUeM00ODmLQkB69uCb0kox3LKMrlyv9v2
         VSL0xKf8+rl7pQldciH1m1woDdil8po9PUuzaYg7r0H0HAEdzj4elxFmmv744tT9ePM6
         KOdLpVaYxJnQhaNueNTqiaxqwvoJ3tHiKA27oqelVpogMWEoOp1oTYBFnXETlnGkMENw
         AlWA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1697920448; x=1698525248;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=4Tmj+Q+dO8iYyZQ2rWjEl3KiKAAEvOCc0F8gmRd/LTk=;
        b=YZRk9unvys0b4EEVmp1q70CKE0525oX0IEqB8rcFiVf8eOfx2bYPZnorfS1czi/4TE
         NsjJ2HqwxgJdIlm8HJushivoDE5zVlOZAAt9eR2WeAZgsXk0IL1zgpUShF9QrEpH2QIp
         akucAH+2380t29nVlPHd01Voy1KERcfN+O8NUjRlIyWpgW4PFbW+WOcZ00jjKdsax7ba
         hw1AUkyl4XAqs1LVfM1N8HDbURaRfWm6WZjqS7wPqOTiU2QionUQOCQElCI1IB5puNT4
         qNkbn2Fm1TkNyl2SL85LTvfiPnompNJzoEdtqfcGEnN8qyKVsLsraZw6FeUt35TtGHXc
         pKEA==
X-Gm-Message-State: AOJu0YylXKQy5DWjU/eNsnjm17Azf91zYkPpf1UpAnRzIdfKwO5bSs5p
	ioSvXMPnuC1axF9BK7oYYyI=
X-Google-Smtp-Source: AGHT+IEjNJkoNjeazjRD49G3ATl6rQ4VPkS5PLB9hkxJo288Gkap4PRpVs505D4/aB/cYAyKiyIdLw==
X-Received: by 2002:a17:907:d8b:b0:9bf:7ae7:fd6c with SMTP id go11-20020a1709070d8b00b009bf7ae7fd6cmr3681709ejc.10.1697920447766;
        Sat, 21 Oct 2023 13:34:07 -0700 (PDT)
Received: from localhost.localdomain ([145.224.104.33])
        by smtp.gmail.com with ESMTPSA id w21-20020a170907271500b009ad81554c1bsm4040198ejk.55.2023.10.21.13.34.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 21 Oct 2023 13:34:07 -0700 (PDT)
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
Cc: Luka Panio <lukapanio@gmail.com>
Subject: [PATCH v5 1/2] From: Luka Panio <lukapanio@gmail.com>
Date: Sat, 21 Oct 2023 22:34:02 +0200
Message-ID: <20231021203403.215023-1-lukapanio@gmail.com>
X-Mailer: git-send-email 2.42.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

dt-bindings: arm: qcom: Add Xiaomi Pad 6 (xiaomi-pipa)

Add a compatible for Xiaomi Pad 6.

Signed-off-by: Luka Panio <lukapanio@gmail.com>

---
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


