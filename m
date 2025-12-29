Return-Path: <devicetree+bounces-250263-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 7D57FCE7F25
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 19:54:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id D2A72307D5EB
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 18:47:07 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id C38D0336EEE;
	Mon, 29 Dec 2025 18:40:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b="EtboB3HH"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B1DD63358C4
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 18:40:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767033620; cv=none; b=vCw2GSLUTnxgtyi6gfVywzWJotivuJplC4KM+jinum2EIMl38wiswV4ZxBwOEVSSnoIFbXgVglVSGuweCd5b9XENUxoDhdORkzx8mH8CK+ushcNy1CFkSZxKMNU8qkOeFA1MeILL8IUHfxUA6wzwVxHtgVrGBDKSuCrGF8orfXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767033620; c=relaxed/simple;
	bh=lnkhvIt3TrOEyzf6TQ1BG1hfakQAvNrAup7QLQoickg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=Uswif9QgOZw4JySNXYdpH508pE1JSW1N8i24u+Wv6ndPwSej/XgvImkw7rMkQ9PKW8u17SyCN8Y8TICq8hsTvE5Ed+OUnwh8Ktz+ScQi500N+2QjT9x1sRbVMP0jLgixg3jJACYOuEq3qXG09ZSHs/7BgZyyRZa2Yyp0kYvgkaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr; spf=pass smtp.mailfrom=sartura.hr; dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b=EtboB3HH; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sartura.hr
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-477bf34f5f5so68341915e9.0
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 10:40:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1767033617; x=1767638417; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=akmDQhsi4smXKOu+AQ0134jZY6Y2uyR0jebUNjrF2nI=;
        b=EtboB3HHe08w0XqyvQc3lIhAD3Wrb3A+jSxyRDBnGZHNNGsDYTpopftjz07wgCqGTg
         wVeB0SBg0sYtcFqQU94CuwWFrINZ8JOPcHYxaQ6Eqrk7RF9dttwfVjkFrtKvAte42QKe
         r+FYs+x/gVWoMwshb1deUAAslnK41Cwlqc6VYn9NzC9sJc0HbsKoDjg1tHFyEjsIuV1E
         ATaaF/DfSISmFUI6qUXqycxRqvEHQLBI94pKcPYVDNRLhHS4veRqPGH7ev44aJH8hGtb
         2pYEvIocOndgsPPLrTFgpsyOh5/kaYmScXGx3p7T8JaO6Sc3tDW4z8sPJigQKU51gN30
         qWHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767033617; x=1767638417;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=akmDQhsi4smXKOu+AQ0134jZY6Y2uyR0jebUNjrF2nI=;
        b=FDmUK2Uw26nYC2nxkLMYL5xMEUEdBmUplpdm95fHhtjC6IicK1gcDXKHoMlEKb6UQG
         rmI5Ups7LQ4bU0sIK2HopCEPWr/SbmyRg+4AUmWXUTKozKaJF6+8D8hNfJy5Ga1u7L4R
         kr2tY3eIKMQ88Z17QePFnIbWAh0tjvwsAn/q7UtxRuBBbtTYnZII8/iicyQSX3EU9lA4
         nXkZRrf3Vk6FcyZ7NNviEAYSbEyeRQkSEc5N2XAur5PmeNeHLp3vgEtsaHzx0yCdtJk6
         hEVZjVdR7+Vmx7ui1g8ydWJK06AnNU4N8U081Qzt5lyxJbGGFcxvKrHxFqjfr0s/QSpk
         C0ZA==
X-Forwarded-Encrypted: i=1; AJvYcCVkNHalKt44HjPOlu6kv9RHpgd+De20gRc/PalhuP5FSskq7w3V/SVKV35qvjZDw3qfwbgHUGyZWQPW@vger.kernel.org
X-Gm-Message-State: AOJu0YymUKJg5zmDcxH4OVNBRe2gLQD3T8rvPadVsMvmTLXaVcxAa5I2
	X6QX7AAOyLYelC+CGh4iqk5b3A+qKl3yo3ZtaL3lKt/FWObTcHtk6Wn6SsvYj4FdDbI=
X-Gm-Gg: AY/fxX7pEakFsgvoRl8PQgwcfQ8eONRixxVHyEx3dvitV7llDEf7XKDHWvU3ywZa+Yu
	ZVVF1yg6qSr18TX0v87v8MxNZpjkrHFfV4PxtnX0hyR51GUk2/pvWpK6nEvsBerTOPL01U/kMFG
	Aq5yo3kD9mMopBXaFkMupDIA26LY7wOj9R8W+BcaS+P50qf8OELXZP7DmFCbhjFwaboNCEbsCNV
	wXkFJ8ER3OZEiG1vGgsZi44/IClBlgplJkQ486K9xhHDlCOz3iGOZzHmt3MzSfuMdr9ivueD78C
	IIKQagtPxZd5s/I7ayKuLfdLiMA+xaQyiC6LEwEb/NIb7bUXYGn1TOMkiyeFCgdHFFl77bVh+oW
	fsHbampOxMAi8ncCY/iBldf6ff1JbsD7rN2qt1yucUTgIIQfXbmgw6+rlYYGq2j86jK7iEZEn5J
	DeM1X7mOvEpYnoH0eodcjmKK3NSXxO5Wy0yBUaEDyGd3UprAkdPriTuJflruYTRzEmFfZ4+uHdj
	LUPkOyyfEwXcFHDLegAhxW1im1hHhqZf0MfW0g=
X-Google-Smtp-Source: AGHT+IGjzQS21rGuoSBITpTDpuhXFeVyR+ePrw+9us1bVyog91e0BDAjrgenQhgGZwBix2fL5K0wjw==
X-Received: by 2002:a05:600c:1d0a:b0:477:79c7:8994 with SMTP id 5b1f17b1804b1-47d1959f72amr367970555e9.30.1767033617043;
        Mon, 29 Dec 2025 10:40:17 -0800 (PST)
Received: from fedora (cpezg-94-253-146-116-cbl.xnet.hr. [94.253.146.116])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-47be27b28a7sm604907455e9.12.2025.12.29.10.40.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Dec 2025 10:40:16 -0800 (PST)
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
	linux-usb@vger.kernel.org
Cc: luka.perkov@sartura.hr,
	Robert Marko <robert.marko@sartura.hr>,
	Conor Dooley <conor.dooley@microchip.com>
Subject: [PATCH v4 02/15] dt-bindings: mfd: atmel,sama5d2-flexcom: add microchip,lan9691-flexcom
Date: Mon, 29 Dec 2025 19:37:43 +0100
Message-ID: <20251229184004.571837-3-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251229184004.571837-1-robert.marko@sartura.hr>
References: <20251229184004.571837-1-robert.marko@sartura.hr>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add binding documentation for Microchip LAN969x.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
Changes in v3:
* Pick Acked-by from Conor

 Documentation/devicetree/bindings/mfd/atmel,sama5d2-flexcom.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/mfd/atmel,sama5d2-flexcom.yaml b/Documentation/devicetree/bindings/mfd/atmel,sama5d2-flexcom.yaml
index c7d6cf96796c..5e5dec2f6564 100644
--- a/Documentation/devicetree/bindings/mfd/atmel,sama5d2-flexcom.yaml
+++ b/Documentation/devicetree/bindings/mfd/atmel,sama5d2-flexcom.yaml
@@ -20,6 +20,7 @@ properties:
       - const: atmel,sama5d2-flexcom
       - items:
           - enum:
+              - microchip,lan9691-flexcom
               - microchip,sam9x7-flexcom
               - microchip,sama7d65-flexcom
               - microchip,sama7g5-flexcom
-- 
2.52.0


