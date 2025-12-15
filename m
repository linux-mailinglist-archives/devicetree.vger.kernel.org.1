Return-Path: <devicetree+bounces-246712-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [IPv6:2600:3c15:e001:75::12fc:5321])
	by mail.lfdr.de (Postfix) with ESMTPS id 9F8D9CBF431
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 18:40:52 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id E359C3017B5C
	for <lists+devicetree@lfdr.de>; Mon, 15 Dec 2025 17:40:49 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6CA4A337B8B;
	Mon, 15 Dec 2025 16:39:28 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b="Ak7lyKPT"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f45.google.com (mail-wm1-f45.google.com [209.85.128.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 452133376B0
	for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 16:39:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765816766; cv=none; b=O/jxqzfwJOPBZ4cmz3KP/T103NoH/gYpd6zsmXxD41YDvHpLBdqG6umluO+DCVdw6VnKIn8FYxxjoPLIIpa8qAo2pmBVTvAn62wCz9hpAr6cPGjMqvS/HWtw/ROQEgaBaHq4MpA3FQnGo/5n9OSjPA9hI1hOj5T6FZLXrsy/F/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765816766; c=relaxed/simple;
	bh=MatarePl5a5XyouzXF+9ZryyErb8D312+5WkUP2SbUk=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=NRINOBemVQJLAGouwqO9cAXIqmras+/NmMNNEPOMFJ6eaMphWpAALAncLfK3ehrJLRk4mSs/FCcVsUL3HmmPddglhP/SOS5PZz6ugSJ8R9me9PMaCq0i+vdEDWJ7NWcJRFDnS5WhH45k5evoX6IoEnrsy01keiojyWe8MDDA7hs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr; spf=pass smtp.mailfrom=sartura.hr; dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b=Ak7lyKPT; arc=none smtp.client-ip=209.85.128.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sartura.hr
Received: by mail-wm1-f45.google.com with SMTP id 5b1f17b1804b1-47a8195e515so30240555e9.0
        for <devicetree@vger.kernel.org>; Mon, 15 Dec 2025 08:39:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1765816750; x=1766421550; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=h8YcHY5v5BL8p7Cq7PHlLyAS2e/CqidtOgzAnVomKxs=;
        b=Ak7lyKPTdvJT/5Yv+iN/8LSGRVf5YK/mE3nJ40Yv8v5WMEygg6FZqSllz4L9oiC6g6
         cVzdeYT+IXU2lNR1S9VuWsHsONOsbxwjqKUQUGF/bXURX2ZECo9CEKUcMdm4FbZocUdm
         2i0wVhkFw8JWyji/ASYx2hz40xV5ycXhF77Uo11OdNHF5/+f9r/2mQtbTpjB3TSfXh6L
         YYQkoLq5+xTuie5xaF48zIMd1GQKQg+73FbhoRQhJifJZ1gSqMtPxYHCa6AzJ9AD1/ab
         oD2K8HRM/EnxuEWq/plNpjMA2kCTVieijCNKzQpUH7KbXIx93gk1euQD6vOPM5SzUX1o
         gsZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1765816750; x=1766421550;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=h8YcHY5v5BL8p7Cq7PHlLyAS2e/CqidtOgzAnVomKxs=;
        b=uKRKHdmrVMmZNrSBhC430JOVvsiaCACRq7COAdMVG2l6h0c0CsBiiuyz025CWH0B8x
         H5Rs6vULXGyrqk2Z/Pr4C28JRp7PdbYQLUcDoG58arxYXwVsdr8zL9wS10lYs9aCfo9W
         xeVJSqy8NuMgmnBC6kJuWZVtizpOWpE6+H1HTSDha4vTopTvYzQPPHxcJ3vnHWjK6/Gh
         AUga3+qUFPG0YU956bBua/siGAyTm94ck3zo4UAlGm4g5hwJKhXWms5f1FFzG6Gf3y+Q
         eFNU6B/B2tM0miqlHLdyHyIL6RcUWhRWcq+X42wXyzrMC9XTJ9+gXEz49cMxUoHboH4/
         hvDg==
X-Forwarded-Encrypted: i=1; AJvYcCVBjOKWiXxdqH4GSae02sy8crOZTgmimpv91/Ci5+ZnxeXSEzTV9IPB9oZp5G++/y9CXK1bJ6IvhSRl@vger.kernel.org
X-Gm-Message-State: AOJu0Yzm1kb8WX59iN9IVHNuy3/pIwhZexW2gOJ3VKeVYkXqJIZcKO9z
	WBi5nbauA2PjySbiSe+RmqPGHfZxtWR8YHiZPr12F5KyFdP2XSP/NY6RJXZhM/xDAIA=
X-Gm-Gg: AY/fxX4hFi6dLKclmJslkroDTEQyDNNhlqL6evpAs2bRFLehCyRPz8ZcmXlrz/WveoG
	+Ve/+x3GegjgTDde0er9EoVHMHjjmVTaGrKTTGCOqsQBcx9Pu2tzsoLV9WqfvdripCroA889Jbv
	DNY4oUBJ2TNieQiL7PYUqVGLWum4BHYzH/2N/pzk8Oq4ONwvHODRQzWuwOoPzh3UcTfBnUZd+kj
	W4qv9VVtyRNZq7BL1tyPNJZnt7m7JmxfdTnWIus8ldSbr9+S2OSHWliVqoHUXCx+CNyeZKRva+b
	VPbvfdcDdJcBa5iIFYgpP3UHw4SaPEKIuk9oDUEFBkZHJGtUC8b1D0cF8FpQyqLzw7QGvgilCJD
	XPpBmuT0EJykQnSvvAyaWbZHVxhjMQFk0WNlMz6IOF1Mv7cCuOraj4hEoRuBL9la4hBvCN7zRlr
	DIF2ZAZQoqqf02GGCzOZzztWbki6B1d1gG4YRmuhURo36G
X-Google-Smtp-Source: AGHT+IH7LP1zL48BN4L4uNrnTgDczVYK0VmpeljjcZUIjxNDtnXInUvDJihsME7YWq6t8mes39E9Hg==
X-Received: by 2002:a05:600c:4f86:b0:46e:4586:57e4 with SMTP id 5b1f17b1804b1-47a8f9057fdmr118557835e9.24.1765816749513;
        Mon, 15 Dec 2025 08:39:09 -0800 (PST)
Received: from fedora (cpezg-94-253-146-254-cbl.xnet.hr. [94.253.146.254])
        by smtp.googlemail.com with ESMTPSA id 5b1f17b1804b1-47a8f74b44csm192209725e9.3.2025.12.15.08.39.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 15 Dec 2025 08:39:09 -0800 (PST)
From: Robert Marko <robert.marko@sartura.hr>
To: robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	nicolas.ferre@microchip.com,
	alexandre.belloni@bootlin.com,
	claudiu.beznea@tuxon.dev,
	Steen.Hegelund@microchip.com,
	daniel.machon@microchip.com,
	UNGLinuxDriver@microchip.com,
	herbert@gondor.apana.org.au,
	davem@davemloft.net,
	vkoul@kernel.org,
	linux@roeck-us.net,
	andi.shyti@kernel.org,
	lee@kernel.org,
	andrew+netdev@lunn.ch,
	edumazet@google.com,
	kuba@kernel.org,
	pabeni@redhat.com,
	linusw@kernel.org,
	olivia@selenic.com,
	radu_nicolae.pirea@upb.ro,
	richard.genoud@bootlin.com,
	gregkh@linuxfoundation.org,
	jirislaby@kernel.org,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	richardcochran@gmail.com,
	wsa+renesas@sang-engineering.com,
	romain.sioen@microchip.com,
	Ryan.Wanner@microchip.com,
	lars.povlsen@microchip.com,
	tudor.ambarus@linaro.org,
	charan.pedumuru@microchip.com,
	kavyasree.kotagiri@microchip.com,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	linux-crypto@vger.kernel.org,
	dmaengine@vger.kernel.org,
	linux-hwmon@vger.kernel.org,
	linux-i2c@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-gpio@vger.kernel.org,
	linux-spi@vger.kernel.org,
	linux-serial@vger.kernel.org,
	linux-usb@vger.kernel.org,
	linux-clk@vger.kernel.org,
	mwalle@kernel.org
Cc: luka.perkov@sartura.hr,
	Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH v2 18/19] dt-bindings: arm: microchip: document EV23X71A board
Date: Mon, 15 Dec 2025 17:35:35 +0100
Message-ID: <20251215163820.1584926-18-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20251215163820.1584926-1-robert.marko@sartura.hr>
References: <20251215163820.1584926-1-robert.marko@sartura.hr>
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
 Documentation/devicetree/bindings/arm/microchip.yaml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/microchip.yaml b/Documentation/devicetree/bindings/arm/microchip.yaml
index 910ecc11d5d7..b20441edaac7 100644
--- a/Documentation/devicetree/bindings/arm/microchip.yaml
+++ b/Documentation/devicetree/bindings/arm/microchip.yaml
@@ -239,6 +239,14 @@ properties:
           - const: microchip,lan9668
           - const: microchip,lan966
 
+      - description: The LAN969x EVB (EV23X71A) is a 24x 1G + 4x 10G
+          Ethernet development system board.
+      - items:
+          - enum:
+              - microchip,ev23x71a
+              - microchip,lan9696
+          - const: microchip,lan9691
+
       - description: The Sparx5 pcb125 board is a modular board,
           which has both spi-nor and eMMC storage. The modular design
           allows for connection of different network ports.
-- 
2.52.0


