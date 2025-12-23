Return-Path: <devicetree+bounces-249285-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sea.lore.kernel.org (sea.lore.kernel.org [172.234.253.10])
	by mail.lfdr.de (Postfix) with ESMTPS id 9767FCDA7D3
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 21:23:41 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sea.lore.kernel.org (Postfix) with ESMTP id 6D83230B696E
	for <lists+devicetree@lfdr.de>; Tue, 23 Dec 2025 20:20:15 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 887EA34D920;
	Tue, 23 Dec 2025 20:20:09 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b="UajBDKTY"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-pf1-f171.google.com (mail-pf1-f171.google.com [209.85.210.171])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9109C34D4CC
	for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 20:20:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.210.171
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766521209; cv=none; b=Hix87WHMTRT+fkZg3JWo5KW17n5i21sazGkovuXwRi36OFkQDUs2z8Ic2Bq+1VB5RawoUhdHs2AEx4KF+KQIm8R/4YlZP6icI0lkSoLiTd7efrc6s0JU7rQ48uMFp5b588T6lkayNFJpoNVaZhOTEfoP4pilffGwChsPKEof0U8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766521209; c=relaxed/simple;
	bh=lnkhvIt3TrOEyzf6TQ1BG1hfakQAvNrAup7QLQoickg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=cl4E2iGokw+aRB+pKcKwibew+z2vxJT+JHXbjxaAmmDCjihIgPJozPgn/9al6z87W6PU8kKFDp60+LaD08H0i7hyel2zH6HRGbU0sSs+I4pouxy8YL5gNPaI4x0tXIVMKa40NQYj80xdgwlrcTqnjchxjuhzHfajB3vgFt6Cyo4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr; spf=pass smtp.mailfrom=sartura.hr; dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b=UajBDKTY; arc=none smtp.client-ip=209.85.210.171
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sartura.hr
Received: by mail-pf1-f171.google.com with SMTP id d2e1a72fcca58-7b9387df58cso8586526b3a.3
        for <devicetree@vger.kernel.org>; Tue, 23 Dec 2025 12:20:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1766521206; x=1767126006; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=akmDQhsi4smXKOu+AQ0134jZY6Y2uyR0jebUNjrF2nI=;
        b=UajBDKTYlKcruvSkRnlFr8tjHgo7vqKYdeF6g6i2LgrtBlAxi/x6/j2FzFA7aa8IFJ
         zCbk+kIU9UJjaY8OIT95qG20Y9itoXB0IHgRnrBEMTEvoYeZOBFiUZ+FDnpmRXib51JM
         VlieXBhkKajYtWxLUzmgiSHsdXHz3zT/Iqy7FF7c8goVaCwQ7p9fsGuBegWYWqK+Jb8n
         9jJK6EEPqAU5wS6uLrfhFlUXf2YYvHGfb6tTbrFyqsIqLuSPy6BdmhvfuxR/0v/GvHPn
         PnUCBlucC/3gAqVgR3ks06eKS/hQ6am0E1QuYjf8Chz+G9uMrPAlcGrBGz7oOlpk1iTI
         ZzLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1766521206; x=1767126006;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=akmDQhsi4smXKOu+AQ0134jZY6Y2uyR0jebUNjrF2nI=;
        b=asSzPh4xfVDGOMnOI7JHaaUiNydeF9tPK1lc293BzHj0s2cZA6I+DYEL5S5YroS/j4
         RY0gjNHAX2ts/2JtWkLq+BOVIyVD0QTaIQIUZ0OxiKfQhI1nTTjvCHAjdV1mMjEfsG0I
         AHDqMU7wVtbwOV0zgk07IgfyO3AJ5tEMDBXAqc3LCMqO2gBgM3S/rxKzBdjIsiDuF8iA
         qoDoPkemRAbTuGfEtRtwhknXairxEkhiGhjjVA9y5BPFsMVezKaJLvCbmaID6K6B4g1i
         DZ3QgAsZetfNCFfY4/VfzqRqnj0n0qt4NgBA0CyFgecQFlKGbtNFwy1ee1zFJKXeU+V5
         FA3g==
X-Forwarded-Encrypted: i=1; AJvYcCVTz2Md6jSENCilULK/706iB1gstXTs0gFJzvnsZL52f2kHY6jS6f0Dqv2Y4sIOX84jzeJzObZ2EvrJ@vger.kernel.org
X-Gm-Message-State: AOJu0Yzfix3WYyUpC4XuC2sIMAvR0eEfX68hTv0hHdh4IYtjfRxWeQDk
	m+3oppw+JBUZ+FbpG1r8L+/5tMj3TsO+IKAAsExOywSVv1pzcvYUrHwggc10b9vye9k=
X-Gm-Gg: AY/fxX4p+iH7O9qCIzuhyoI1Ye77ddiIp4i2gDxLgDOfXicD8BuncI2A++N+3EXe351
	Fkg5TRnla9T1Z7IG0fkOevtCFtv/kAir4DHSTs+WZdc//6Pru8bkEF1zDZcJUgfOY6DkOUqKgWa
	DnzTx7RbRpDtfeLXaMaWbC/Ir1q+lTY9KLmWOfdpbUIxdyydJrjfODM6evUKhrP0ocXgn6v+Hsq
	qOfer+w0crXElsV1S91rqrPCYpqwrNbyfi8j5RsniLldEbHq6mJzsnJ9f0jvz4zulja97e6vkru
	KllIrLEZTBd7uz24E5rjs3eD1qy520EPkM/satRHUDU9J/3MPJD+GDfHENtmaDhKVeIHUb41EMW
	h/BJmFQmEq3a0dbqEqnkUwzWdDt6nysLODbDlhN1eEBGvdGIMyiYcIajlfeHCqEJQQZgbm26o0m
	ynKsFfLZHLs2jkxUewzoMzfDW3dBVKcbDIgaNFFvBXRp2JHgB7tJ9CN9KI56atn6WeDY8a72ld9
	7Rs068p
X-Google-Smtp-Source: AGHT+IEAtWdhcWPCbENBvZFgr3c7IxJWeT0r5R2X+lgPN+f3cgKBnmk37uhjXoH7niVY6cpG/hJphA==
X-Received: by 2002:a05:6a20:9146:b0:34e:959d:e144 with SMTP id adf61e73a8af0-376aabf97b6mr15698314637.54.1766521205797;
        Tue, 23 Dec 2025 12:20:05 -0800 (PST)
Received: from fedora (dh207-15-53.xnet.hr. [88.207.15.53])
        by smtp.googlemail.com with ESMTPSA id 41be03b00d2f7-c1e7cbfa619sm12567549a12.36.2025.12.23.12.19.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Dec 2025 12:20:05 -0800 (PST)
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
Subject: [PATCH v3 03/15] dt-bindings: mfd: atmel,sama5d2-flexcom: add microchip,lan9691-flexcom
Date: Tue, 23 Dec 2025 21:16:14 +0100
Message-ID: <20251223201921.1332786-4-robert.marko@sartura.hr>
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


