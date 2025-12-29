Return-Path: <devicetree+bounces-250265-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 5D245CE7F2E
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 19:54:17 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 7878030365A9
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 18:47:24 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DC234338905;
	Mon, 29 Dec 2025 18:40:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b="rAN65fHm"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E1D8F3358BD
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 18:40:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767033624; cv=none; b=EH3kl/8O7NszxiPIzYniPs7ZCvOH9aMrhjf3bLMTwQ4trnK6deDIMIr+hrVdXP7zY1GtzSYadhxlC7mo68KaZ4fjZWGty4gO9hl1pxmEw+Z21kn2PW/+DjuwPqVyNcRDRwClmFCdLpyON2xBcIzmp1KVldKXSyvoVHcQYKQV9sU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767033624; c=relaxed/simple;
	bh=HaP35Mv3tJhzA+ZM5JG9j+YNJFp/ZeK++35o7px2hP4=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=uxDLW0YqjN6ok0ayCqrB8bCIrYmDjyX0FJ4IzMznhRuTh7aHlFm5COsgHtsR4nbaB/+FZ5c4EkRA9JwmsQmahSnTTBhaElKtKamsIteU3Nkb7atMcz3KrFCbA124hCLypJOB15grluajL8cupWuSt4NNKCsPedeHwLgN87J6C5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr; spf=pass smtp.mailfrom=sartura.hr; dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b=rAN65fHm; arc=none smtp.client-ip=209.85.128.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sartura.hr
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-477563e28a3so57266935e9.1
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 10:40:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1767033621; x=1767638421; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=PTgt2hO049DGrJM4Ny2YlS3thIKNeyR96EH9617zL0Q=;
        b=rAN65fHmKfnf747fiu0xJKX4ZKtSEl85xWTiGHh2yK9PtFAx5rmx7at2Nv7gLO78W7
         OV4InTTTyHBGYPT8exXPdlhA73vU6K8k8ehNW80AtuAZWhI1VAHB2A7XIaQS3VOebVD2
         eCKbab9bNCQbsVlYjDiH24VxJtGk0lSD/m1iujnc9X/vX1z/w9yiMNpiMYIk3+hGuAe5
         mnxWz9YKwF1WWCodx3w4jMIzYRIE6ONts/UGsLU/+TlbLQ83X6Q0V6T5aQaK1rXQ71ca
         AaChK8GuJubAbAwuq9xpkAeyY2reuKT9cDw01CTLf0Zdt3g7cZNoTPXe+4pbanqELASx
         ba3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767033621; x=1767638421;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=PTgt2hO049DGrJM4Ny2YlS3thIKNeyR96EH9617zL0Q=;
        b=XfHg1LBxPVFClCjaDQlUmvbziqQluytZHeJaBCFa0uvrFStwyqo8Elu4UkykO2xKHo
         CB9GkpKPaAd2BXEwqasKhsqIRHuGnw9+VLwWXpcDbCATZvPh1q11LKCBQpMUHEESEy3a
         rnLnfLUu6rchv+dGGziN/ZBH4IT2TLN4usds4tvGGxnRkQJXJWsBwMMhgIlAf+trEqih
         LgWKTHNN7a635/TEXPAVmMwqQjmX/e79KvLb3s7JKIdswBwS0Nf6xoPIYpJv73sgPuBz
         BJfZYhlYRTvbEpBoed419RyF++ToAsHonpK/npQtbeMG36LpZLqUTgyDunsmDw10d7Ez
         cy9g==
X-Forwarded-Encrypted: i=1; AJvYcCWfppra66aBJUGHZD7i0X4HjpUQczNcG6BdfYhM3Q4Gi4SIhsmae8kttb3qT6QW4zE6F5p9/Mw/rF58@vger.kernel.org
X-Gm-Message-State: AOJu0Ywh7I8TMykTHqy/zJ3Zg+8bXwqhsX8WELCFRiuOvmYu+E5Qg3YK
	2B/qM705vhHThKFx6VMaM2J+bnQPrCb1B0cTuitn3WyC2SeqSc4zeQ36so3rQl/6j34=
X-Gm-Gg: AY/fxX627vxw+ntwnj5BRDSnp22lDzW9pgnpGoqRpppz/TYGESX/NaPi77SWXJy+g8c
	7dYpZSCVAHFHc+8VZLvMnyFuwSS4ACUQOMK6vZD2XRQPpzLaGsEB8KL6Eg17AAnKW3oMRH11oSx
	Dm06Y/96vuE9Ma6gsSXeWM2cGduslExm0lMUVkTW7AGUB7GK+ANn9iQkjga94aVtVRlY+OOhmw8
	RaBWPwxOE5FylWGWahwoHD4ilVsBYtZ3vD3OJ8ZYaRZFXq28rmRfEd7/k9FuQfR7Qqc9KXX74Y7
	oRZLp43jNefp2TATJP2MM74ncQaVVI9Fv3Rnlpa/CIVMP9KF/L+tfbTXTgTm71MFtmDRExxej1S
	lfglB+2meKrmU7qT3AX8X3igwfu7y1qrItDTO/D50rEBvCP0q6n72FMM8r5ysEoS3hDyvxc53r2
	P00awUqZJ3UlT/rhtKHgKFOGUnGNfQXf7WKAWaXk1pxLhLuoqKDhxvFWGgQ5kSuETtSK1DSA6Bm
	D0Ikt9pFztw8P16H9fUkjuWgUJj
X-Google-Smtp-Source: AGHT+IHraG/JyQO9QwP0oXSI7eMgGvD7CgkRfD8/mVOlJdqCEGZOX7/g3w8MfUOgGbFTAvRzzainqw==
X-Received: by 2002:a05:600c:c493:b0:45d:5c71:769d with SMTP id 5b1f17b1804b1-47d18ba7befmr332757985e9.8.1767033620871;
        Mon, 29 Dec 2025 10:40:20 -0800 (PST)
Received: from fedora (cpezg-94-253-146-116-cbl.xnet.hr. [94.253.146.116])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-47be27b28a7sm604907455e9.12.2025.12.29.10.40.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Dec 2025 10:40:20 -0800 (PST)
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
Subject: [PATCH v4 04/15] dt-bindings: spi: at91: add microchip,lan9691-spi
Date: Mon, 29 Dec 2025 19:37:45 +0100
Message-ID: <20251229184004.571837-5-robert.marko@sartura.hr>
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

Document Microchip LAN969x SPI compatible.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
---
Changes in v3:
* Pick Acked-by from Conor

 Documentation/devicetree/bindings/spi/atmel,at91rm9200-spi.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/spi/atmel,at91rm9200-spi.yaml b/Documentation/devicetree/bindings/spi/atmel,at91rm9200-spi.yaml
index 11885d0cc209..a8539b68a2f3 100644
--- a/Documentation/devicetree/bindings/spi/atmel,at91rm9200-spi.yaml
+++ b/Documentation/devicetree/bindings/spi/atmel,at91rm9200-spi.yaml
@@ -19,6 +19,7 @@ properties:
       - const: atmel,at91rm9200-spi
       - items:
           - enum:
+              - microchip,lan9691-spi
               - microchip,sam9x60-spi
               - microchip,sam9x7-spi
               - microchip,sama7d65-spi
-- 
2.52.0


