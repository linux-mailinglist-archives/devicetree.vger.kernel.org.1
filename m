Return-Path: <devicetree+bounces-255560-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 423E5D243DE
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 12:43:09 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 8B3183007922
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 11:41:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9E59A37BE60;
	Thu, 15 Jan 2026 11:41:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b="nKo4jwJp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f41.google.com (mail-dl1-f41.google.com [74.125.82.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DFC9537BE6B
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 11:41:02 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768477264; cv=none; b=WQyqs2ZfFogS9nhaMHXXg9JUoUfe7Ry+aOe1yLe7smqPWN6K312TxH6o08a+2hZfmYI+kMHmGChl309qpw0hAfNviMNRBPvVsT9bFv0wBDPwCHK+dhmXjekda/+SjSPwXUp4ABENP/UXxmSoThMMXg60u+H635ATM0TtNY/dpbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768477264; c=relaxed/simple;
	bh=duZt8ClU+VlM+r6OEAYG4uNskSnrTgaQSTmGeRNkhp4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=IkpfOFS+j1BSanMS62KjdUQLWkJPyS4KZ81XwWPpgCgLjm8nvSYpoqjr7AR5vUyiJwExrxyqe45Fzr0R418UaSYASwXhEQ5ppVCtAAU/spNmS2o+GmVfqJSh4jOtCJ3VGGxC5/QYGfFaTokC+2BqpV7gCdLZtpwrlrbzlwXBH3U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr; spf=pass smtp.mailfrom=sartura.hr; dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b=nKo4jwJp; arc=none smtp.client-ip=74.125.82.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sartura.hr
Received: by mail-dl1-f41.google.com with SMTP id a92af1059eb24-1233b953bebso1971528c88.1
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 03:41:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1768477262; x=1769082062; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=cYThfrCqrT00LXV0OTAO8hRxDqFU2JdJDLnv+fTCySs=;
        b=nKo4jwJpMnc4Vk0Ox8Q6P8HgOkyIt7RA3SGsOkDD/t/5UYaonkGKrfEOmFfvso2+y/
         Ddn+Z4sVa4c2JpWnMSgyX9reJAkW/cGFScBU8vOjaivnM037CYI8EBlQzhc+Qtzi86iJ
         UNljlu4EIFyalv9hFGxHJmEO2WbSkxMU0kdKyffPzcUdAplNOWmSp59ancih/1AqtHzC
         OOE1V9SXAU0rOCvTnhNxGRVkZ6fIhOYp+C4Yg9iT0DkyZrvpnwRC5vS3iGCoMygMW7ev
         jq2QTwA3WiPq41HEAZOZk0J5z0vlNzB4V2+oHt9iISFciWMdNkunGhmHovIHc80BP3Ue
         ZaXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768477262; x=1769082062;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=cYThfrCqrT00LXV0OTAO8hRxDqFU2JdJDLnv+fTCySs=;
        b=S7CUFY934deeiRUkMV1MCWtas+mYTw1sHQfpGrUohQFkrPTOFxwtcPSO4tWZ6O/1wv
         q2fLXrrBQ98nhaaKvd64E+jWVG9ypr7n4mJe5OFgedmKlDWsN4CLyaLVu7jbTtCme7wP
         LVjnJ9WP4eRM7xoQdZsFScQxx23bZzGOtir9y0qipITmUsEAdCTQj1ZdxugTMtZBW1Xh
         eW4gOX4/tXyCgKIRcZf/HO7cMfs1L10QqOc7gXjhLMVHvchInizhg6BDJLjuK0uUZUb8
         JygSlv7/OZECx3lzuGDGreXP7S27unQqUIUNfpkL+4xsINFt2FVzl+3lpXiMDtlzcOju
         6Ubw==
X-Forwarded-Encrypted: i=1; AJvYcCXgp6q1/Jk8DNz5PNobBbyodOFLMgAl4qvFOQV0Vyl7YfNzizUF8olCDGJL+c7bcaOLMmaDBaXg38rl@vger.kernel.org
X-Gm-Message-State: AOJu0YzjQEWJ0JGA8VfLw2Jg1CY5/Xo/KRrOIgazCepLsqEVHvQMutaL
	ml9d2JgCeQspIz0/XcgY37neHBSHsRUtjvcHt9WsGIN/AhEr5YQMRygxVUrqjIB4aBQ=
X-Gm-Gg: AY/fxX7Ymbd/JZ9Ouypft0/c78EOOKoR9ap73QE1sqkAwFUm94CU4/gxsLM+1oSaFMY
	gWyeqhzG1qWq73yndc2wEH1aU0sy2dJ73zzOJQiQ9FbxWjZtQHb2b6GHiqKcSRICprnBRsbGgsN
	3Yx+8dYqlo+M8XDvKiDEPk/+4cbckHEA+VhmMsubx9vHTYQ2Z3FdsSr59quJtRON43XzKWxgIpR
	XVcfH+0v6zJO1dic8/oloaL8zzwUVKn3TYRdk0S1Kqki3QuDF1R+7VDf2Y8ATlcad3eSGu8SfWq
	Qo6ilg5JhXflONngOezaLXFIDizpyY0ikPeIIzQ1GdSl3FLwW8/dpxgEH8ofmMK6StE49NTtetr
	7Ww8fPXTr8gHEF9J8JhM1lSylCucSrPaMXxgyMUjwu+hFyCj6ginwAd5d9bduGiFH7eRAc8xK5q
	/v1TGOJTCH1v8fih6CVhbDawuZEQq+pPTGDGeclBREroxUJU3RZaR0mXd9SAA+QzFTuE3LjW5/3
	DKilUx8
X-Received: by 2002:a05:7022:1101:b0:11e:353:57b0 with SMTP id a92af1059eb24-12336aabde5mr4547440c88.50.1768477262077;
        Thu, 15 Jan 2026 03:41:02 -0800 (PST)
Received: from fedora (dh207-14-52.xnet.hr. [88.207.14.52])
        by smtp.googlemail.com with ESMTPSA id a92af1059eb24-123370a051esm4875347c88.15.2026.01.15.03.40.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jan 2026 03:41:01 -0800 (PST)
From: Robert Marko <robert.marko@sartura.hr>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	nicolas.ferre@microchip.com,
	alexandre.belloni@bootlin.com,
	claudiu.beznea@tuxon.dev,
	herbert@gondor.apana.org.au,
	davem@davemloft.net,
	lee@kernel.org,
	andrew+netdev@lunn.ch,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	Steen.Hegelund@microchip.com,
	daniel.machon@microchip.com,
	UNGLinuxDriver@microchip.com,
	linusw@kernel.org,
	olivia@selenic.com,
	richard.genoud@bootlin.com,
	radu_nicolae.pirea@upb.ro,
	gregkh@linuxfoundation.org,
	richardcochran@gmail.com,
	horatiu.vultur@microchip.com,
	Ryan.Wanner@microchip.com,
	tudor.ambarus@linaro.org,
	kavyasree.kotagiri@microchip.com,
	lars.povlsen@microchip.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-spi@vger.kernel.org,
	linux-serial@vger.kernel.org
Cc: luka.perkov@sartura.hr,
	Robert Marko <robert.marko@sartura.hr>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v5 03/11] dt-bindings: rng: atmel,at91-trng: add microchip,lan9691-trng
Date: Thu, 15 Jan 2026 12:37:28 +0100
Message-ID: <20260115114021.111324-4-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260115114021.111324-1-robert.marko@sartura.hr>
References: <20260115114021.111324-1-robert.marko@sartura.hr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document Microchip LAN969X TRNG compatible.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>
---
Changes in v5:
* Pick Reviewed-by from Claudiu

Changes in v3:
* Pick Acked-by from Conor

 Documentation/devicetree/bindings/rng/atmel,at91-trng.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/rng/atmel,at91-trng.yaml b/Documentation/devicetree/bindings/rng/atmel,at91-trng.yaml
index f78614100ea8..3628251b8c51 100644
--- a/Documentation/devicetree/bindings/rng/atmel,at91-trng.yaml
+++ b/Documentation/devicetree/bindings/rng/atmel,at91-trng.yaml
@@ -19,6 +19,7 @@ properties:
           - microchip,sam9x60-trng
       - items:
           - enum:
+              - microchip,lan9691-trng
               - microchip,sama7g5-trng
           - const: atmel,at91sam9g45-trng
       - items:
-- 
2.52.0


