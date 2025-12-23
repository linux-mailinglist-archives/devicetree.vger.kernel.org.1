Return-Path: <devicetree+bounces-249297-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 16C45CDA914
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 21:46:51 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 5DE3E3029F68
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 20:46:42 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E28FB3590BB;
	Tue, 23 Dec 2025 20:21:45 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b="tqNu0iNX"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f196.google.com (mail-pf1-f196.google.com [209.85.210.196])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 786D4358D33
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 20:21:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.196
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766521305; cv=none; b=Zb2wtmMjXyTfRm6AS/bLtaBtuDueMltwIQ4kkNWZW+/4hyhzSp8UDfLlM0WorwKVqivJ05pt7GxMHulYj7AQaGa4qZgRe+9zV12zQxwCylhx31R/uGtQF2o0rnfLhmLVsFyA+NLwAJnF+yjd8tTmJEZUbhz13clyzqqlEjbAbzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766521305; c=relaxed/simple;
	bh=XoF0Eovrxm1txLTrLfP7MB7ayo4/Y25gdep/95xkk5Y=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=nAAiS45vbRo73yY3k9Tn5uGVlQPUl/GEDY5bBWbtvOvUsFh1mMSv3YdVVErGa7pwu4Dx80hFAntKncY+tqoQjMTg6flmjC/YTC73dL+8IbbADgG9SA99zPiqUFGyKTLOL+yvzshTgBvm8OVfPqVWCUE1Oj2KeZr/Go2aeF0LfK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr; spf=pass smtp.mailfrom=sartura.hr; dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b=tqNu0iNX; arc=none smtp.client-ip=209.85.210.196
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sartura.hr
Received: by mail-pf1-f196.google.com with SMTP id d2e1a72fcca58-7b8bbf16b71so5324713b3a.2
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 12:21:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1766521304; x=1767126104; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=qfMU7MT4/V4GUajmsYnn75DFErJTnupop06HbanZvHw=;
        b=tqNu0iNX/T8f4ZQ0j/Yobjqpzb43xMAQ24m5BfCOWvdzq3IHmLjeqTBOAgIiE7d5S2
         N5fBPe5y3gl9uLYGhAi4647HW/5fN5LATqcvMhv8qLSObvDo519o4bPtPTd0HcrOtJNL
         +yrIM8SMF0AMAun4zHRZJCoFTQvESD1JZ71NTG7XBB+JBmw6GT/ko8ZiqfMcvI7AT3/T
         fYOEil8UzahtCc/HfhugBjuEHq4Pcujmr1Visr30t0FPiD0JQG5z8cnjJpuD0T4CGuh4
         AzOo/BgdB+0KcAyjo3REQrPASQFRboUdXtpZEUsvwTEelTK2a6yQ1+FXxnZACDRLKtDD
         LFgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766521304; x=1767126104;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=qfMU7MT4/V4GUajmsYnn75DFErJTnupop06HbanZvHw=;
        b=KrzVDw9AEY/jdH60GYgV2Dq8A/sHY4QeV2nako+hRIhGbOfXN9A09irCoxSxwcw9lk
         GLP16nytGYM7TT8fBuMtrCZA5wiUb5Oge3NkEbuc8yXaqYqNbe955UB7UJnMXPOLsn/A
         6l/vbY5H4nXnmRLZbPrYfJKvjgLrfiOj6z1POpZX1R3yga5RZDAvPUJB+qd12LmUF+um
         1XwbxBNFvLb4Xy9QPBDPmtreRvDPSMqBqQWvuG6a5Gs39XbDyAnDw5HB3se0LzAfvQ5B
         8yMAsCMcSRdCSDrUkw0zYEW7i3zj28naqb/nhNci+h5WGHuapsCTSgvD32heRNiWUrks
         BTmg==
X-Forwarded-Encrypted: i=1; AJvYcCUB0n4qtDcEgfowWJdC+8goApWEtasWtZ+prsPbJ5oyeAg42Ero8XIU0eiU8W8DVt5esgG8jmmORyTt@vger.kernel.org
X-Gm-Message-State: AOJu0YwJXzsWo/+oNfgHlxhttU7kZd971BTKm8h0O3Fr7ZNCfldpo9lk
	ydT72jLD5QKupTjOXhHWXK+TXNWTeJyRa10jz3qHWFDUIioAqAnLIdqDu/svBigyl08=
X-Gm-Gg: AY/fxX7s9ykFL2Ec1O1J5TwQsZ3SYvTILrMXHgTjbJVyDbQq3NFIhEv8zhHX3/NGbQx
	vPa1tXZezvtzulW4eM2RlT2VbZBhefLgcH8Idtrbw16rqsDk0IS3RFBz2eUC10wgyq3I1UtNijX
	mhvLJCapX1qwTSl5z7pjx7sBiirIzXmIhIomAJy9VRFxebUroxA4gyE4ef9z1x+K6ew8ki2vUn5
	FhaKkMVHOcyfyflh6C+epg1f+X78Kown9ILRhynENhkplhO+i2IlbPXTO6DcpXABbeReF+3dVq7
	v38f6R5LrE1qICyeipO8qARSmoxLMcMW1txId4GAUilysUzo9VzSyKiqRLWnAvtBHsHDf3o8Usd
	StKTg4R5R3TuRtYskkjYOl3w9ijev1LWDlbPjcDyUjGi6EKjdTsphpNT4k2WSEOpKu0qqAHHSzO
	ag2utjY2zeqz6Z8onatXTUx5NsokCEciq/N9FD62QQDOUmisGlj2ll2bJcTfeMCtwEA81Nu1L6y
	zQ6gxcK
X-Google-Smtp-Source: AGHT+IFrLV1OA+vGIt1Qeh3SInjG9m4lWsVJ7UMsa9ff7itN29HXneV9Wlv0pR5HcnrOBgJnEjlG2A==
X-Received: by 2002:a05:6a20:9392:b0:364:14f3:22a7 with SMTP id adf61e73a8af0-376a9de5935mr12020799637.42.1766521304022;
        Tue, 23 Dec 2025 12:21:44 -0800 (PST)
Received: from fedora (dh207-15-53.xnet.hr. [88.207.15.53])
        by smtp.googlemail.com with ESMTPSA id 41be03b00d2f7-c1e7cbfa619sm12567549a12.36.2025.12.23.12.21.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 12:21:43 -0800 (PST)
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
	Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH v3 14/15] dt-bindings: arm: AT91: document EV23X71A board
Date: Tue, 23 Dec 2025 21:16:25 +0100
Message-ID: <20251223201921.1332786-15-robert.marko@sartura.hr>
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

Microchip EV23X71A board is an LAN9696 based evaluation board.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
---
 Documentation/devicetree/bindings/arm/atmel-at91.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/atmel-at91.yaml b/Documentation/devicetree/bindings/arm/atmel-at91.yaml
index 3a34b7a2e8d4..b0065e2f3713 100644
--- a/Documentation/devicetree/bindings/arm/atmel-at91.yaml
+++ b/Documentation/devicetree/bindings/arm/atmel-at91.yaml
@@ -241,6 +241,12 @@ properties:
           - const: microchip,lan9668
           - const: microchip,lan966
 
+      - description: Microchip LAN9696 EV23X71A Evaluation Board
+        items:
+          - const: microchip,ev23x71a
+          - const: microchip,lan9696
+          - const: microchip,lan9691
+
       - description: Kontron KSwitch D10 MMT series
         items:
           - enum:
-- 
2.52.0


