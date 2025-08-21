Return-Path: <devicetree+bounces-207316-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 1E944B2F27F
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 10:41:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 10392607AF2
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 08:33:44 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B83AB2EB87F;
	Thu, 21 Aug 2025 08:32:01 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="s+ztkYLX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9EC65277CA4
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 08:31:59 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755765121; cv=none; b=RdaFX3NBPfXmCZrnqXINJCSJ/fQ7fSQXExLoUI2aj1JTzRpIxrNQR/8NqDSlkteZHP6EHw9XCGTOkDe+Ek6M4QREwpwoistxtdIyahA3ItcgmI7Q5NZIVuq5QyGsFtEtk2vqPw08Y2fgjXcaaHyoOURhMEEgWjrFapqvlK4YQAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755765121; c=relaxed/simple;
	bh=o6wtN3783MnhTkItU8+Bf3YpWdPfZYyFxZjqmDsrBMk=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=CKtjJobpEgOE+f70a08vLP3rwml5tj4I5z6JxZGUylExWX5AWJNses3AymFXO6uJIhyaHqMAtMjRmVPq1VaJYu5RaoC7QD11wouHK7XILHXxp5hYLxyssoSz/ABq2kEcD7ip8e1B2feCjEjdeEBBjVWEzt5hRoG9Y0D+FeIVeKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=s+ztkYLX; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-afcb7322aa0so7849966b.0
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 01:31:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755765118; x=1756369918; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=T72UFcH6AjzcUCkgHZUc2QAiLeOpR0se8y/86dUUmFw=;
        b=s+ztkYLX7rWS1IAvosc3Ypql6bqLQYnMOnJoQrGNNKZVIC6/g8DQhSWS4NkLHc6jKT
         RJALzxzy3apiN6VrlTJOedOkQiqNujd2eMI5WIYMrBDQ9VNKTnK3L/G+AxksOHJE4+fl
         yKYRg7lM1hnyefHiCwETye6j4SZ9ay7uP5ZpyRP3GNKv+zZMHvx38OzdQsHtKFOdWUA8
         Zmd9yHoIxuBzQQjhLeXLsCIgzjPW9bA1wqLCfgeInyaInoFB4jFp3WnAVKAiM3WcBkrN
         xOzoLES1ePpHne60p0kB0Y6r/6md4IZ9WBG7GlFn45kxLwL5pdoVN/epUUwz1JBeNUDT
         nzsg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755765118; x=1756369918;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=T72UFcH6AjzcUCkgHZUc2QAiLeOpR0se8y/86dUUmFw=;
        b=HNWTu0CVP+lIR4BlIqOr1eSbCgEPupecMKfeE4o0RQ6l1b1bTiA258NG6vEfrJzUDX
         tMVW/LAGmUU7IoOl6S1jJ8yiw1OjmS0eBVrPvHnBlIQ+VlLvqGUNMJSlz96K3ft+Gc6r
         P9ph8+KFl+EYMTVYgLSpKtTecqXqpSAlqXjHNdpHr3Kgyv1qQgJD7wzRJxjcqjFyfp7e
         c/9O3/8Mc96v5oiZT6yhSlTegE/3g6rN0Q0twFrybC7U0gh9UEZT9AKA57TQgqTToERK
         AsphwvAFSrL2PMyws8yvsYPykX6nHJ+lLLwykIchWm+dDWNLCaFHE7lV0kfYTeDyAYfo
         1oSw==
X-Forwarded-Encrypted: i=1; AJvYcCUOoKCRNRWq1WzNB0qhHYNje61VC9xMdHkI5qFMZOKVCyjjG2FTiKpEEls4iZOF8afwy0kfQgsMB/Gj@vger.kernel.org
X-Gm-Message-State: AOJu0Yxl5XWUU5j1HV4UsxMYU4d8qIji1Si6HOd4FeH1ohy8I3odEXbC
	P+yBXo3GOwAMESLruX3tYOa2C+cZ9EzxrGmH/iGjpzDZhXxrZSQvcBK+1QrtxZ+XCNY=
X-Gm-Gg: ASbGncu6Cf/OOoGoh6Zp675PFjDub2x6KCfWxL59Z9xHcNl2FMROuIK7cGRqDu2S4vD
	qsXtWOlSG0I1b37PYYT88V44psJDhbgp+Kl0qychDzXeWWy+Tp2D9mIHhAoJW6Fxo49qrd8+HfY
	4A4UvuYYpeMfGE8jAywxvK3rdTlkoaiwkLR9qHZezd5vLKp+lwM8qBzPeUDfGiPXdGh39yScy2H
	0RgT46Cl8xytbPDFP+gsBqgil9VIipnZsmVpfDQx3lZCbT+AnyNnDA65qg52EI4ZLLAHiePEhCW
	eFENvmUk0rg6j0bt9w6RfLVOccbKQ8JnA3LQSF4Nb7+2zqLY6tp/YnlYIaULEMW/TpZjyG7HCvE
	U7Tj1OStcn/v6vZo3Tam79sw37YiEjRUSjw==
X-Google-Smtp-Source: AGHT+IEmYCB7RoXV5cO6L40St+lRMNzSQSwZc09J9Wq+5CcfC6nThev98ei1pp0ECHLQKecQGw45HQ==
X-Received: by 2002:a17:907:2d9f:b0:af8:fb0a:45d4 with SMTP id a640c23a62f3a-afe07a20215mr76866066b.5.1755765114658;
        Thu, 21 Aug 2025 01:31:54 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-afded35547esm341911366b.50.2025.08.21.01.31.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 01:31:54 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Michael Hennerich <michael.hennerich@analog.com>,
	Kim Seer Paller <kimseer.paller@analog.com>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Jonathan Cameron <jic23@kernel.org>,
	David Lechner <dlechner@baylibre.com>,
	=?UTF-8?q?Nuno=20S=C3=A1?= <nuno.sa@analog.com>,
	Andy Shevchenko <andy@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	linux-iio@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: iio: adi,ltc2664: Minor whitespace cleanup in example
Date: Thu, 21 Aug 2025 10:31:51 +0200
Message-ID: <20250821083150.46554-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=831; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=o6wtN3783MnhTkItU8+Bf3YpWdPfZYyFxZjqmDsrBMk=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoptl2dxU42hCXeG4lO8ny/fQClzik9KbgZZ8H9
 s00I/xTaxeJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaKbZdgAKCRDBN2bmhouD
 17AQD/9+lWAFaa/J1oRYmRcHyrNtykXAnAF63nJwJijngp+Hh+IlrctA0x26TBH7oWarxZFvN9E
 El2wORkEIhLkESFL+VoEVRRiHMjNehb2mjsbNUzs/wTGHd6iaY06OSSGjWOkByG0R4VmxVDngG1
 kcbxhjjcCtcyFmcxtopvwAKKYi6uXPLjspAFcKdOwtV7UJn2q8u3tr+LMrsoQlkL6DGdvMyGK2d
 c8AYYH2fDGDaPySi3GDkX1hwEfBaPXGzjrPKGnqmuzaH/8W7dlLw+kJ5j8ZKiMa+87cRFG/oFPU
 srzBjpMNVMFmYxeYqmGIkcwlLcMobAYRA3jAXEYCBICCmBQ7WS15yr+sLXoB7aTljGOl52aq97l
 o315K5aww3EufdswS7ppqpFCQjqpbT+uWo+XhBBsRRyy9aY2HiHb1/cY3t+tNWutUxDAfhTsCqd
 /nlgtBaP55lRokisyLf3D6GLR+KvugC4knuMh+ZPFlexxDwxzqEEOwmq+yYCWiUKOBXk6T1Up3k
 DbXRiONLDHtgS/WRzW/GAvtN6i0QPB9qPZj/AOQ3beKRmwK2MdYNpX9Mlyr0yvw/vcGfP82jSpx
 p3IWuIm31c2XGI6RIiIVE3CLvvy9qE4ZWb76sRg/HraVWtS3JN/oeGmtaOLMM3ej2VbuOqpd++X fM/oa2Jdefzs+3w==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

The DTS code coding style expects exactly one space around '='
character.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/iio/dac/adi,ltc2664.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/iio/dac/adi,ltc2664.yaml b/Documentation/devicetree/bindings/iio/dac/adi,ltc2664.yaml
index 1aece3392b77..4688eccfeb89 100644
--- a/Documentation/devicetree/bindings/iio/dac/adi,ltc2664.yaml
+++ b/Documentation/devicetree/bindings/iio/dac/adi,ltc2664.yaml
@@ -174,7 +174,7 @@ examples:
 
             channel@1 {
                 reg = <1>;
-                output-range-microvolt= <0 10000000>;
+                output-range-microvolt = <0 10000000>;
             };
         };
     };
-- 
2.48.1


