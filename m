Return-Path: <devicetree+bounces-33202-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 6FA74832879
	for <lists+devicetree@lfdr.de>; Fri, 19 Jan 2024 12:12:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 10D7E1F22FB8
	for <lists+devicetree@lfdr.de>; Fri, 19 Jan 2024 11:12:16 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 680284CDED;
	Fri, 19 Jan 2024 11:11:52 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="p+mWiE6Q"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f42.google.com (mail-wr1-f42.google.com [209.85.221.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ACAB24CB2D
	for <devicetree@vger.kernel.org>; Fri, 19 Jan 2024 11:11:50 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705662712; cv=none; b=A9w1+iNkBu+jBBT5b+cqOHmCO339zu8ywS76UQ96Hlb4qVcMCcpLlPpo5MbbJ9AbqLmxtq83lrl2xCMPjZdWxiBFmrevrLJqIjeq35aE09lmExyGCzbPRFtBksUhTA21szfZi0hWRpjGL2aihvbr+WK6LUBEY5HCystvms4XxeI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705662712; c=relaxed/simple;
	bh=Q1QOlBpvgW2lI3s9WzUF/2MwY4ank0KkttexA0jdNsg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=to+fPt5CH+g72LNvQbREmlbxn4SL6ptizNfS+JQsBgXMvq0/ma38KLPSLq5hWopxbTziz+Z+53PyNMsbMjdushaIEQihRIwpW3XUcc7lzgSQSepQkjdP1I7ZdAoIbgOKgwjNOvgZUj8vhHpCsx056Mm062ifOZUEqvQ0ruJfC/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=p+mWiE6Q; arc=none smtp.client-ip=209.85.221.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f42.google.com with SMTP id ffacd0b85a97d-337b38d6568so575184f8f.1
        for <devicetree@vger.kernel.org>; Fri, 19 Jan 2024 03:11:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1705662709; x=1706267509; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ZrfLoymuWUhsr76oTazWVDUYhWCX3sd9OJ85HADWWNI=;
        b=p+mWiE6Q2Ezb8fir6WhV3WFBpmpDTALVEks1BGz8jqx+Myqu4KD0Eb3HQbddpUc9X6
         l6LkuAv4r1TjMO2tP1xJmTL5gqPSY4LeKRCkAiXpGUUjeeDD4GsWvl5ah97/zHzd+H5q
         pStGCTJ0YihkYmHbch56ik1XyFe09VPASKPTUkIotQk6n0oPryhRlLAUdPmYdarijjoK
         aHQ4mh2u3QXIj/RfawvqR4MgmemzOhE234eWgyGaqgExabU1gh/AH8LGLcJan/Ray/5L
         eDoH4w8LqXCYA2eG9+KWuAOIxIYd84nKqCraiyqkU7jC6tJZYc8z/JehagnVFUe4qvUx
         td2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1705662709; x=1706267509;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ZrfLoymuWUhsr76oTazWVDUYhWCX3sd9OJ85HADWWNI=;
        b=wt1SmTpL7WluTF7g8/eqPs+j26VpygNwS2ThwJUK6X5GdgbLvQEy52Tvcuhlk3jtk3
         yMiuETV+8h/bqvKhkT2xXXolKIz1BXnnW9TOq/e/PDmVRctdRcAD5eXBinBR1tpRYCHf
         hF03tP8sgSQOkNqwqYvZ71Z8tPwMWU0i/3bfwFH4nzYadtfYUUPnL5mfb2ARkAZhNX8P
         FiO7xg6wdNecpIJPePFajnngi+/nbt7Ck72tXYr8QvWdy3azoJZS6012rMOhGfTANsBY
         wcdNF7xlMkBjGpbajfUxOQFZgqYEsY44VyzOyxRqPXq1Z7GAVc/OV9KC7PjnSKWqGC6C
         gF8Q==
X-Gm-Message-State: AOJu0YynJeXGkRMse8bsmz2KvTHPwkk7rXrIMBEGOfezv/sMmmwZ8n+7
	bEu19sdF25NJ8lHoY039yle8aTcu5nRvmyoCbMOX2QjIYZcUyOuGI/1Avnkmulw=
X-Google-Smtp-Source: AGHT+IF8b3Ntvez/7FhtUFVXpwKWJ5oukJOvrp5B/i9t3tP0V/2tMqFw13SH7EBSfEwPVE+l+w369Q==
X-Received: by 2002:adf:e303:0:b0:337:c0b9:f6f5 with SMTP id b3-20020adfe303000000b00337c0b9f6f5mr1301770wrj.102.1705662709072;
        Fri, 19 Jan 2024 03:11:49 -0800 (PST)
Received: from ta2.c.googlers.com.com (88.140.78.34.bc.googleusercontent.com. [34.78.140.88])
        by smtp.gmail.com with ESMTPSA id o10-20020a5d62ca000000b00337d4ce6ab4sm3341868wrv.20.2024.01.19.03.11.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 19 Jan 2024 03:11:48 -0800 (PST)
From: Tudor Ambarus <tudor.ambarus@linaro.org>
To: peter.griffin@linaro.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh+dt@kernel.org,
	krzysztof.kozlowski+dt@linaro.org,
	conor+dt@kernel.org
Cc: andi.shyti@kernel.org,
	alim.akhtar@samsung.com,
	s.nawrocki@samsung.com,
	tomasz.figa@gmail.com,
	cw00.choi@samsung.com,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-i2c@vger.kernel.org,
	andre.draszik@linaro.org,
	semen.protsenko@linaro.org,
	willmcvicker@google.com,
	kernel-team@android.com,
	Tudor Ambarus <tudor.ambarus@linaro.org>,
	Wolfram Sang <wsa@kernel.org>,
	Rob Herring <robh@kernel.org>
Subject: [PATCH v4 2/8] dt-bindings: i2c: exynos5: add google,gs101-hsi2c compatible
Date: Fri, 19 Jan 2024 11:11:26 +0000
Message-ID: <20240119111132.1290455-3-tudor.ambarus@linaro.org>
X-Mailer: git-send-email 2.43.0.429.g432eaa2c6b-goog
In-Reply-To: <20240119111132.1290455-1-tudor.ambarus@linaro.org>
References: <20240119111132.1290455-1-tudor.ambarus@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add google,gs101-hsi2c dedicated compatible for representing
I2C of Google GS101 SoC.

Acked-by: Wolfram Sang <wsa@kernel.org>
Acked-by: Rob Herring <robh@kernel.org>
Reviewed-by: Sam Protsenko <semen.protsenko@linaro.org>
Reviewed-by: Peter Griffin <peter.griffin@linaro.org>
Signed-off-by: Tudor Ambarus <tudor.ambarus@linaro.org>
---
 Documentation/devicetree/bindings/i2c/i2c-exynos5.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/i2c/i2c-exynos5.yaml b/Documentation/devicetree/bindings/i2c/i2c-exynos5.yaml
index df9c57bca2a8..cc8bba5537b9 100644
--- a/Documentation/devicetree/bindings/i2c/i2c-exynos5.yaml
+++ b/Documentation/devicetree/bindings/i2c/i2c-exynos5.yaml
@@ -33,6 +33,7 @@ properties:
           - const: samsung,exynos7-hsi2c
       - items:
           - enum:
+              - google,gs101-hsi2c
               - samsung,exynos850-hsi2c
           - const: samsung,exynosautov9-hsi2c
       - const: samsung,exynos5-hsi2c    # Exynos5250 and Exynos5420
-- 
2.43.0.429.g432eaa2c6b-goog


