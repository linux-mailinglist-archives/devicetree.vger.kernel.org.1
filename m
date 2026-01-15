Return-Path: <devicetree+bounces-255558-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 402F2D243BA
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 12:41:37 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 182E530082FF
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 11:40:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 817B237BE68;
	Thu, 15 Jan 2026 11:40:49 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b="UVcP/v20"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f53.google.com (mail-dl1-f53.google.com [74.125.82.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C26D137A486
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 11:40:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.53
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768477249; cv=none; b=CSZpfnpw6F2x4cc+dD3PSzYG2IF94rYdadtXPUfP8DldDv9yBEfKhaQwEQQMrh7QZCTsuPPTt5QmgGkg5LF9vq2mqlioY8F6MwU64TtuyO925ZDlC+TXbsSraMvlrd0cgS/fjXgz2HYb7WeSu2oRb6jVuET2tv3eIZcOTrzA56s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768477249; c=relaxed/simple;
	bh=WWvO7fvS51VGIasNJgUp3QyEPuObUZpxHbR7pn28FTk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=oxOLZlczyBmYiXrGqGTZdfyabAuIFywC1InoIHbtpV0n0/P3D6Qp7wkkCTMN8dR381wnRgRbZmfEcb/+Jxij+gDhUQJmnjBoYJEqhmjf2q0e6BbhU8obXzcInUCNeLGfd2KVYxp6XaM+9ZDRaqCrBC5UH6Bsep37EZu4hlb8acU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr; spf=pass smtp.mailfrom=sartura.hr; dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b=UVcP/v20; arc=none smtp.client-ip=74.125.82.53
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sartura.hr
Received: by mail-dl1-f53.google.com with SMTP id a92af1059eb24-123320591a4so789740c88.1
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 03:40:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1768477246; x=1769082046; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=tEJGOG9KziC5WmpmFadtMIPKcgD9jyuKUB8JZhjDo5k=;
        b=UVcP/v20an1Ri/KQX0pwKtk8IAvtwsby0xjBw61cKlNrVlC3TDhaqpNaluYDS/2jIM
         BWRr1w+09ZCctBa2GQGQxakTSqfDNXYv3gb9kcXbnYzK/j3ghIrArgDxhs6vWGUp8+oz
         8LISVjzM+5XaCtbqkAGVoGpwEvW6JpAY2v1pvUMP1+rMTXo3eg4HGJn1CxRU2zsaJeGx
         hvT4IEdvfB/SCQiQLmtXEG5pFMpWDJRIQvvpl4zxcqkYCpHN4rAu2SCJ/cI6615bsSsL
         suoU/9ddLvKABiycIMuTvbtzXnKVugaz1cHH7XQ61XUJVkJFz4lhWMBiVYPlKlSIoXT0
         2QVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768477246; x=1769082046;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=tEJGOG9KziC5WmpmFadtMIPKcgD9jyuKUB8JZhjDo5k=;
        b=YjV+9a9+g2Rrl+dsMmDnmuFrwU8sPHMLQxguRWDi5DxyP+ETXTx4w1TweahkJJltSk
         V9ewA9NvlGWuIPxVzF8iPtJZriByGTjRzrYCZWH+QPU7nybZXIkhXfYMgyiuT4fWDewQ
         d3d0XyAQkNy9wOKDAm3KXv66U029H8mxnuYkpE+ltQiadSQrp56pZxPciXfDQV9lWGmO
         hlFtXQCoe3bmP6LS3NAANsi8Qty0HS789G9lObRh2NdZel9Dwr7WYQbp14En9UatAYEW
         lFpiCLWlu+8lMWIo6OjgDOg+ywvK3BT5oVz1wiNzOUZwYlN/3qVAUCdh6qXULgKs0D9P
         5YIw==
X-Forwarded-Encrypted: i=1; AJvYcCUuxKWSraaX1EtZC0cfAMkWKOo08/kTgieNwIV4CrKkMif9Os++VmDKe0rRpIu/SBkU9ryDHmUPcwd/@vger.kernel.org
X-Gm-Message-State: AOJu0YzzdVtt6/0w62RpEeej1b/W1157Ktpsn6bF/hA5k82zdRLGomqJ
	QFThE+hHC+q5lwjmPEr7fND8Dptk/Yuyu07QRPDPtByBDiX+LEhl49UT5m4Uou7NchU=
X-Gm-Gg: AY/fxX4cb9QhLRLZ8Ux2km1xRO/PLP+PbjgYY8vvJKyrF7wvpoz3pInFHVMKCO1cezZ
	M/pWon7va7Y4x/XS2p1wiQgWGxqYvZfSXTnlorgD7GTxy61P8GFuiE7053A0wH5XR/bP9z5Pt4o
	Ik1H4lfkcza766vDGIyO68EN5WrLKFMWtdGXbLuy2j3zDT5jnvPQBSNOEDrmE9MtOr6Ynt0ENHi
	Bq9wyp0aSE7E3OuZY40gNt6swGKyrOlqi1iY1GAvCi63atlCaHsOzeei0SRZbNfwAZOTeX8r31X
	L/quoPZrZSEvB9Z/xyLOsaQzS61FkJjtZfUlT0D6rENlnMLCNV4AAvEdqCtNy4jer47DHa8CF1R
	0X8TuEuIVt4rbxYDpKs7Vwy0Mlaco6YHXQkRvkr+XPRWoNsgZNp0AxjAjcRMsbZN3eV1YwNxJOT
	dMOPli3Z7AdeVT6tyw89EVdM0q0X02H0U/tkja9bNkKbwyko98cHRqvPFUwvN+qEAued8G42Pnv
	9wfjzrf
X-Received: by 2002:a05:7022:4392:b0:122:2f4:b251 with SMTP id a92af1059eb24-123376fccd9mr8604410c88.21.1768477245907;
        Thu, 15 Jan 2026 03:40:45 -0800 (PST)
Received: from fedora (dh207-14-52.xnet.hr. [88.207.14.52])
        by smtp.googlemail.com with ESMTPSA id a92af1059eb24-123370a051esm4875347c88.15.2026.01.15.03.40.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jan 2026 03:40:45 -0800 (PST)
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
Subject: [PATCH v5 01/11] dt-bindings: mfd: atmel,sama5d2-flexcom: add microchip,lan9691-flexcom
Date: Thu, 15 Jan 2026 12:37:26 +0100
Message-ID: <20260115114021.111324-2-robert.marko@sartura.hr>
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

Add binding documentation for Microchip LAN969x.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>
---
Changes in v5:
* Pick Reviewed-by from Claudiu

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


