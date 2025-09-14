Return-Path: <devicetree+bounces-216951-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 794E5B5693A
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 15:19:10 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id F16A2189BDA3
	for <lists+devicetree@lfdr.de>; Sun, 14 Sep 2025 13:19:31 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4CFC42641FB;
	Sun, 14 Sep 2025 13:18:57 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="hVf3Cw++"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 95675261393
	for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 13:18:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757855937; cv=none; b=sCrIE08u12ug8prAzzd55Y5xV3XFSd9Ax/ZWD1eyfEE07Eh3kMDSuteqA0+ImeEhk82ZuR8qhBry7X4R2b9cPhU3ouvl/K66ZgOX9PLHLWEdkp6pU90iU/ophalD7ZqMzMiL9cDYhjnm1hPBwdGLRqRTkA+7rrF7DgqgmerysMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757855937; c=relaxed/simple;
	bh=ilMxvWH2dg61Z6fyXi47Z0rAj/IgKekCXgAzquw3YXo=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=axysFGQV0tSl0VbAEbUrgspbJWLDr6zBOosdPvP63+f/AtZJzb2HlT+Rq+02RY2uLwD1UOuE5w2plBEN2sMCfGY/QWawD5QAnHfSIkydkEZIGBOraYFl6cKiUOywSECzeGDLXAhiriZyBC+ARDhsSolbF2sAj7DLJbVhyX/MzaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=hVf3Cw++; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-45f2b062b86so3034975e9.1
        for <devicetree@vger.kernel.org>; Sun, 14 Sep 2025 06:18:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1757855934; x=1758460734; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=hpcddqPrYhRHRnLKWFJl0UXLOkAIbo7ClNO40SWmR1I=;
        b=hVf3Cw++enjGQUC9WJ50stlt7rX4H35ZsfgQGzaiUVbxhOB32YAQdl4Dnpp1zqnTlp
         sa6KTtBAG0/zLJE4UWOPP0ziV027L105cojgMak1t8JT2gXaBI4PoSyL/uSaGfBCt9LZ
         voGxVCPcQjO75VppmQRCU0FPOYpQJxZtnGKcaUHg/nRQqRM6PfO3PHjOEk5cU4zboo7c
         G+hxISv31JYJxUeDImvElLbSO9SpA1boKwB7a3Mol8ML4izkmwdrZgbJ/6Uqow7ECg66
         nVv1jbKVTM6kDA5B4ZiUIpaPFjb8JUeD6kitjAU80jBEMrIL3xZIE0Jqb47Qt7/j+Md4
         Qh2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1757855934; x=1758460734;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=hpcddqPrYhRHRnLKWFJl0UXLOkAIbo7ClNO40SWmR1I=;
        b=bgX9/Dh+GCH0UJGsLSt/fZxFXYqrI9r7Z08lSe1QxxrkZqOAX1PlcT4tJHxV7TX9Iy
         IvU0y9eEiOM0KNYyog+Lp/SQEjewXokECP/eZBdTs2NO+rVCTXX+sImYVr6lcHZddtyK
         xPuU/Dw4m7qVYPBvxkajT7+XCFCZLXtJdwX6EG5ylBQ4VguKPeOjbnqRjOqd37xSfEKW
         m25+upH9kgyMl9e9JefDPdlR7afe1vwftMaO8SK2wWjIt8C6pmqJKZV3MQ1v8sr9IvLk
         TMCE7W2KVI4xbS/pyKj9Eg5L5e+q/6v9vIkzyuCLSAVxUHochbE9Ty4jeTbkaF7Jc1z3
         Tshg==
X-Forwarded-Encrypted: i=1; AJvYcCVBrvpqg9F1DQDPZRUYTFTIGttheyf9U7P1O3QwLvwQXGAEAC5snC7gXoHq2FxagOQyhg+Y5V0VGoiE@vger.kernel.org
X-Gm-Message-State: AOJu0YwseSTGdA6asDJy7VfdKE4AHcFh6x6fLbxanJQisl8fX6dHM8ii
	0bpfQSzpNeFQj8gNOiqRL00CkRkuJcL2N6rNWVXX2f5zwWL+9kb7B737
X-Gm-Gg: ASbGncvAK2hAu/OOwx2UCqApV+sscDhcIR0Ui9Hq7BsA8X0ZQG8XFsFOIFJTTYmpn2o
	1QDGdmSBTB994oRDcG7arJC3yBb9Ti6FD2fd+ABojCmFQIvlryY7Pxf+IElyY2BT9H2WYCU3n/j
	2VX1sp5DYPzeSbLLlfcua3rPxPjvAi4rJIk6F7LUEfkDtU+3hG8yVo2o+3OB5aeCR1ZLnirhrYi
	0hB/xzFsDDMGD/Jje8aqgx98NQ9OyBkRkVzGq0iT0vQnlECXR7s+XC4dgHXqfXbsbkn05pu9Ode
	NWVwIdpi2gIKHkOjJ+qfOkIEtSbJ1pj94RYAld4xfSpQxkUenjc82a03RU3ihJZI4S9ciowCDck
	o28rBCl+uNGFc30wNt7/ETp2LDlSfqd1xPB7qd+iGzuglRrQgVYmIE+3d5ojtjL+X72AQeMYgIg
	==
X-Google-Smtp-Source: AGHT+IGAQ9494spxVybXeZcysph17sK0XNJ3EcpSw8C5tvKdn4tAgtOfyRpsT2ldfbY8hA09fnwBpg==
X-Received: by 2002:a05:600c:1c0b:b0:45c:4470:271c with SMTP id 5b1f17b1804b1-45f212f9888mr83535235e9.18.1757855933631;
        Sun, 14 Sep 2025 06:18:53 -0700 (PDT)
Received: from ivaylo-T580.. (91-139-201-119.stz.ddns.bulsat.com. [91.139.201.119])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45e037d62besm133359875e9.21.2025.09.14.06.18.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 14 Sep 2025 06:18:53 -0700 (PDT)
From: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
To: Krzysztof Kozlowski <krzk@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Ulf Hansson <ulf.hansson@linaro.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Conor Dooley <conor+dt@kernel.org>,
	Jaehoon Chung <jh80.chung@samsung.com>
Cc: linux-samsung-soc@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-mmc@vger.kernel.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1] dt-bindings: mmc: samsung,exynos-dw-mshc: add specific compatible for exynos8890
Date: Sun, 14 Sep 2025 16:18:48 +0300
Message-ID: <20250914131848.2622817-1-ivo.ivanov.ivanov1@gmail.com>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add samsung,exynos8890-dw-mshc-smu specific compatible to the bindings
documentation. Since Samsung, as usual, likes reusing devices from older
designs, use the samsung,exynos7-dw-mshc-smu compatible.

Signed-off-by: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
---
 .../devicetree/bindings/mmc/samsung,exynos-dw-mshc.yaml          | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mmc/samsung,exynos-dw-mshc.yaml b/Documentation/devicetree/bindings/mmc/samsung,exynos-dw-mshc.yaml
index e8bd49d46..27c4060f2 100644
--- a/Documentation/devicetree/bindings/mmc/samsung,exynos-dw-mshc.yaml
+++ b/Documentation/devicetree/bindings/mmc/samsung,exynos-dw-mshc.yaml
@@ -31,6 +31,7 @@ properties:
               - samsung,exynos5433-dw-mshc-smu
               - samsung,exynos7885-dw-mshc-smu
               - samsung,exynos850-dw-mshc-smu
+              - samsung,exynos8890-dw-mshc-smu
               - samsung,exynos8895-dw-mshc-smu
           - const: samsung,exynos7-dw-mshc-smu
 
-- 
2.43.0


