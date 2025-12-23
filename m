Return-Path: <devicetree+bounces-249289-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E903CDA93B
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 21:47:46 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 4C65A3026BEA
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 20:46:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EBA6034EF00;
	Tue, 23 Dec 2025 20:20:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b="ZccbyyzW"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04CE534EEE7
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 20:20:41 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766521244; cv=none; b=VJGeFhYuxuuwk6Jt+CA3OJTmtIqnGhpvLk8Pom88R9MC4DgURU1nHfpGmsSfB6w+MxrEBzqZTa8fyEAadkTnktx3+qDX6g7jDdTiwfz2t/+nZBJ+icdavUv8K+zMZcZNtOa42eD0hlpIIX/7S6Etp3p8v3rI0Ke6WSUIp1He+L0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766521244; c=relaxed/simple;
	bh=FesjP41xiT0Kda2nCLhQhKtJNrqGgysPl3yJ23vj64A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=MjEb9pHkulLe//t/RZiJ+y+v8PDtFaiFHXM5UxcXCdS6OcKuSZLt9GmQDEbh1bkulZE8gz7z/TH0mm34lzSxl807JVSHQtFWWMKOag/uaiMdSA2GOpU5yD2vGoV4dZAFEZgez41DmYl8MueLzx9yg5pqawWRHRxeod4UYss0gy4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr; spf=pass smtp.mailfrom=sartura.hr; dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b=ZccbyyzW; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sartura.hr
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-7b7828bf7bcso6122966b3a.2
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 12:20:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1766521241; x=1767126041; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ClyoGQdLbQ+NSakHU5SbIxGsiXAmeIUAvdUGZfMfHas=;
        b=ZccbyyzW2lxJMbJYlm/wBafWsE2XB2bAypOFFnOukvOGI4F8bnHvNijeGAjtavqUGB
         p0NANjErF7ofDVkrLy/JmBZttd7li18QNaynTXMtfLOpiv0nuWEKeVd6DYSHktO1ISNl
         6HyxFIVBPwLfGivhk+/vTFkVzBO162ZkHkA0Jkp141/OWZ4XiUFeOAFelEoZvX1rskGB
         Wmk7CX8M65WvlFHXo4cHRpqzkjaDkKV3yp4+zvmH9jj17QAzZ6OaiuFPVXcNUQshasmH
         a2wdlKOVQBgvLOgq5SEy9w7xvNTCfKQBAhS5xqnESy2htUeDknWhV2G8qFo/rgWWwYNn
         KE1w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766521241; x=1767126041;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ClyoGQdLbQ+NSakHU5SbIxGsiXAmeIUAvdUGZfMfHas=;
        b=vD0XG9AboYcxrHE3IWyEY7dPV+ElCHdmZEiBxSL/oz+PqdZvSqGwgMquxmG/JMn4dI
         q+Lqj3zqbOCD6ajpXAOEscfSVh/CHeIk0u5aAYgX/DuCdRUuxQaofDCarS//HasRju8Z
         fcyIg3FJlFGMd0nno2tBYTs4tHsZqHH62674aIxbHj8ybLW/g+JKLXGDYXxWyfKAm3Di
         qnyYezOtDJJlW2gagd80SqqsCh/j65ywykwwvxlkgTNBVeqXqP3n89legSYsYbDBy6ty
         fGYk8DEGTlWM1U91TEn06IZEVnuX05Lf9y2qU2N7cKlMeKhjfWgz0uCvcmd0or9x7H1L
         Ui7A==
X-Forwarded-Encrypted: i=1; AJvYcCXAzQnNf6rHCAmmSGiU3Ut1sRJdG4Q3OSrPwgT7mY/UUUlRs7ehr2/ow5pzHtTELcIxfM8bo+hNchZH@vger.kernel.org
X-Gm-Message-State: AOJu0YwcQA2EUTYzdxY+1DiynoLP1rvruKOOinO7ZGy5i2nWncONu/TG
	WpcLB1uwkjxzf0Z5i4Xe7m0vtu7r4EveZatjJglPMzpOTaMIV5TF7lk+99X5KI3EA8g=
X-Gm-Gg: AY/fxX7N0LCOMyZqogaUfuxSXBkcbdJFSnp02VXXSr9HtW0qdHQfQ4gf9tOM69btLpY
	O7wWNG7oeap6LmW/VF0hw7IOwwIZXcaRNAcK0cs/n4b3e7NccSCHThujCwTfdV5531tNbKBgwVF
	lOWrTa5mHy0oWJXv79VUHk9LhqpQzdqNhvag7V4S7PImHUQLKKmXk74hkL8KQN8ExImO7y67xSv
	5BrQFtP6/z5YW9KmqHmGbJhLQKFCzoJANQfAQAAFoUmEd9rs7yyfoCtU1hjep3iKsQ9dc841KXO
	32Il46L9Q+R5sbDo5M4ktywY712lEDsJF3NgBbC0CQilYMn8VFejM88xERv6j6nGX/kNyi+0gyk
	myMdmwdt2g+LoYwN3HDz/Vu8B5nnzzFzcd7A5giXn2gcNN0mOb+zl3jXwqlj7/LQAFlEAIomcI5
	wkiTxJTWRNGJLZEgVWvmNeOcIm6h3mJVtZ2WRoM3HAAYStAqpa1dY5wk6t8qi0EgI9pdzFXd0wI
	JexTBot
X-Google-Smtp-Source: AGHT+IGuoAHYa6yGZT2xpCk4O6bUCM8poDOiYCaAoun2Nvyagb0buXaCaJOvoitd+kEUFeEHxHKv2w==
X-Received: by 2002:a05:6a20:9185:b0:343:af1:9a57 with SMTP id adf61e73a8af0-376aa8e98d6mr14530108637.56.1766521241361;
        Tue, 23 Dec 2025 12:20:41 -0800 (PST)
Received: from fedora (dh207-15-53.xnet.hr. [88.207.15.53])
        by smtp.googlemail.com with ESMTPSA id 41be03b00d2f7-c1e7cbfa619sm12567549a12.36.2025.12.23.12.20.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 12:20:40 -0800 (PST)
From: Robert Marko <robert.marko@sartura.hr>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	nicolas.ferre@microchip.com,
	alexandre.belloni@bootlin.com,
	claudiu.beznea@tuxon.dev,
	herbert@gondor.apana.org.au,
	davem@davemloft.net,
	vkoul@kernel.org,
	andi.shyti@kernel.org,
	lee@kernel.org,
	andrew+netdev@lunn.ch,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	linusw@kernel.org,
	Steen.Hegelund@microchip.com,
	daniel.machon@microchip.com,
	UNGLinuxDriver@microchip.com,
	olivia@selenic.com,
	radu_nicolae.pirea@upb.ro,
	richard.genoud@bootlin.com,
	gregkh@linuxfoundation.org,
	jirislaby@kernel.org,
	broonie@kernel.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	lars.povlsen@microchip.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	dmaengine@vger.kernel.org,
	linux-i2c@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-spi@vger.kernel.org,
	linux-serial@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-clk@vger.kernel.org
Cc: luka.perkov@sartura.hr,
	Robert Marko <robert.marko@sartura.hr>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v3 07/15] dt-bindings: rng: atmel,at91-trng: add microchip,lan9691-trng
Date: Tue, 23 Dec 2025 21:16:18 +0100
Message-ID: <20251223201921.1332786-8-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251223201921.1332786-1-robert.marko@sartura.hr>
References: <20251223201921.1332786-1-robert.marko@sartura.hr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Document Microchip LAN9696X TRNG compatible.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
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


