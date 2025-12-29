Return-Path: <devicetree+bounces-250267-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [IPv6:2600:3c04:e001:36c::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id E48CCCE7D5D
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 19:41:25 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 9DD0330146CE
	for <lists+devicetree@lfdr.de>; Mon, 29 Dec 2025 18:41:18 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9426733A001;
	Mon, 29 Dec 2025 18:40:29 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b="LxExKaDF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B01F23396F8
	for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 18:40:26 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.42
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767033629; cv=none; b=CpNGbWMv7SyMYWz1hCa3NrM6tklg2NoaNjbma6e4ha6zpYe1/zpD0YfdDXe9xHJK4iTNdYWSpcSS08YZHb5+PE+Vf7Um8/c9xYsT4eakDPM8+/DflYMULlAjMczNKhLfCNjr8coFwy23bJ8v81Tvjz89v0hE1McvvyjQyXayh90=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767033629; c=relaxed/simple;
	bh=FesjP41xiT0Kda2nCLhQhKtJNrqGgysPl3yJ23vj64A=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=VJlthnzxZjlGdI/jJkOuG27JbqAuYRrlqhRO8ZISCnl3yQEDU6zOaRZA+OBT0FcXb8DaH3nD4OnIrFkhg7muxSD0IM/pLVme3lE88J4wNbdUxhXuUCSiXKhsGVAo1V/86wzbSiIwkJCGZOCvMByOXGsIoCh5rlHAgDtRoGiZObg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr; spf=pass smtp.mailfrom=sartura.hr; dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b=LxExKaDF; arc=none smtp.client-ip=209.85.128.42
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sartura.hr
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-4779aa4f928so93000385e9.1
        for <devicetree@vger.kernel.org>; Mon, 29 Dec 2025 10:40:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1767033625; x=1767638425; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ClyoGQdLbQ+NSakHU5SbIxGsiXAmeIUAvdUGZfMfHas=;
        b=LxExKaDFv6uraKbr+yups4L5dBCWndQ+BVeBeBthUnl/mH1kB4Ls9qNN/M3IYMPAeB
         7kliaa7Cr3EJ8W5qDWd9PWb+ZEaXk+HiIoJyIECYHKmRu34OFvZx/eQumReZG/4jfPVs
         ciQ8mZnqyCEXea8WhUxwJAkOL6ARc1YKP3d+MpkUSl8kuAd7McX033YEB5aETP95086G
         Smo1X2VH+HzwgbCOwr0Wqkyd2ETC2NVtxkCG7MV+59lO6D5d4cIjBoaYzPcHP1mfv2rL
         QRf6Wt9KFjJRrMVVPHbUmfwIZMAmyrBtexsip9mnS0FU/TNf8Mzcx4Zc67iLbTlJLTqE
         oS9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1767033625; x=1767638425;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=ClyoGQdLbQ+NSakHU5SbIxGsiXAmeIUAvdUGZfMfHas=;
        b=N5ih68sMtlS+qseJs0cxcdHY6E3QjfGRSiIwvDNTH7BDj17avKBCv8bzvyu9NMSkd0
         AnK5q9530vAFqfnCf1SNqHetdSJoImFm1Utm81k4rN0RN6B+LIgNx3UcurQ9mQ1PqR8n
         4wQDWw9DoFMsnMHRub8qmlwb+APBXaQV71U38Zn5iO8nbVzDUulX5wkLyEYHAm9GgBgg
         EKIYZmJnSZ0X+rHaof6PAHVKt+zz5NEgHzzpLX/vHj1llhyh8J6Umd1WP/qgjRCfXkCq
         IHXAGwxH5ndh2ofPg3NSdj6jKlKpu9dgbQoVw+movSQPEchW33eEZfmXQd3VValPsKm+
         2H6A==
X-Forwarded-Encrypted: i=1; AJvYcCXYHqb8N/Q40EXgz7FeMIf3WoalosLmu1ngmFqfk3zK7Z1DhfillDvSvidig96Pn1Yyv0AilCqOaoi3@vger.kernel.org
X-Gm-Message-State: AOJu0Yxs0spNZ50g04iIQF1IP5SZZ/1Kan8IssFq2NGIRSuMTibiieVv
	CdAcHxZJdK4Tm/JMa3M8yNTQsDSbBW/zLbwfrk2xcY0BTVnB/xKYOmkZuCsdEaQmq9M=
X-Gm-Gg: AY/fxX4WOZGhE5sS0pGfTx87O9dUPp/TCZn+O2zoUmmylXCi7i4dFusxXeMbhWmTMo5
	DjFLNvlmurgle8RN2FRA57RxwuOVFpukyGuF+vzWsQDKXJwKRX4Khc9aDK61/00a/fx2pBzaz/C
	1uus9WYOf0aEmxBx/UYxtMEUAg4PsKGnw+LuoDxmFrYZDXM+mMZYlT1N/52FlupuV2IysqWzrtH
	zs+kPEuY1/OF8xSwDf0qtr0w8fBtiCFSyNAb26Ao93X9FgLuPFWiz595PWYiF3k8VYpaDs3o21d
	W8+DA+6mlcqXpu+SOji0nh6FZ6k97nWG3PEXbf5ziIZ9aK5rnMi5o8Q+DVoPjPxp7tn/1acRtoi
	DTNCbuLNAz7gJB7nw39o5dolecOkTVsBWxEIuzP4Lz1hL3lDR/U7+jT2MHjmQrTNCz/VhElO/ja
	BZ2mwr2q6b4M9XHvf90lIhSpqiY8vOpZQE7GbQhakfnZ2FMvx3vWecKJ5wDgF0NRh4V2WzgczQ+
	mDMlYhTk+pCvp+GYjq32LauCP+xJ5Qwo2s7KaY=
X-Google-Smtp-Source: AGHT+IE/qB6NEHP1QqGV5PfcwRRofx95tVM5do9NhE19foMR/57boxHx8KStBk+G0GxCGRT1W9RoKA==
X-Received: by 2002:a05:600c:444b:b0:477:9814:6882 with SMTP id 5b1f17b1804b1-47d1953b77fmr317021115e9.5.1767033624761;
        Mon, 29 Dec 2025 10:40:24 -0800 (PST)
Received: from fedora (cpezg-94-253-146-116-cbl.xnet.hr. [94.253.146.116])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-47be27b28a7sm604907455e9.12.2025.12.29.10.40.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Dec 2025 10:40:24 -0800 (PST)
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
Subject: [PATCH v4 06/15] dt-bindings: rng: atmel,at91-trng: add microchip,lan9691-trng
Date: Mon, 29 Dec 2025 19:37:47 +0100
Message-ID: <20251229184004.571837-7-robert.marko@sartura.hr>
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


