Return-Path: <devicetree+bounces-255562-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sin.lore.kernel.org (sin.lore.kernel.org [104.64.211.4])
	by mail.lfdr.de (Postfix) with ESMTPS id 4079DD2441F
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 12:44:47 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by sin.lore.kernel.org (Postfix) with ESMTP id 515273029AEC
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 11:41:40 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 0B26237E30D;
	Thu, 15 Jan 2026 11:41:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b="CtS//emF"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f51.google.com (mail-dl1-f51.google.com [74.125.82.51])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BA3C37F755
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 11:41:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.51
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768477283; cv=none; b=c3qUtMDcJ0itTbnmgAgxXUgGJslcUSVIzys3VxSxGrglvexgNGgT6qRb+exv2M+DZgFuSyRIo//YqztGocADeCDczdMBkH+4FkltbsZZOIB3bEZrvjYFe4ukESqM4sSaqv9P7cMkNesbplK3aRUl9oUyKJlaoCTNbFgZWmLszRk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768477283; c=relaxed/simple;
	bh=oZkxyNVxYkEwJ2vPpe6uc3+Y+pRPWdMC9g09igJuSnw=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=CobTbeJSUlvObzQpjX4dlhat4MOWeOVTSkBfDBsHIYL7y3xIvVtKqv0kG5LdIwUrU17rhCWrQuZ+zclFppbjxM/cS4MEVG8OBk9HHYer4fwi88FiTd6pWevWvE855mZu8vBoG+cBoYHk9gShtCXGDPlLBuAcjCEb2mEaeJdB+8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr; spf=pass smtp.mailfrom=sartura.hr; dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b=CtS//emF; arc=none smtp.client-ip=74.125.82.51
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sartura.hr
Received: by mail-dl1-f51.google.com with SMTP id a92af1059eb24-121a0bcd376so2135297c88.0
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 03:41:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1768477278; x=1769082078; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=gMliUwDqBaPP5ftrxzLcCvtEBpKI0UiOIsqsdzxW70g=;
        b=CtS//emF+yK1ZnuPnD/oY+JHTsYeSeCJRHslgL13DIGHhrYLJR2WCsrABgc0FDz8tN
         B2v3/aJaX0rqioEPj7o6UvPnblVbJ5BPUMXs2FXhaRbIxfK0vsBzIbFeVHwdxxFaji4E
         8mHJHdwEiS4v814l7OR4XJBze1m8pxWiBGpMmTX0hbE5Ny43XDLAq0XZ01eYty2yYqYg
         SionVUSa0Q6EdmpcsoBEeUJTyDPEqbksBJ6YtE3S4YwwYt7lrHjinWVWjcSd5Dvm+0KH
         MeOibqCGEgq2WYCsaOOHC/5sPhmbpR56RhjmRHy6KRPCGEJnYoaNT8ETSEgIZnm5Y8Qr
         HoPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768477278; x=1769082078;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=gMliUwDqBaPP5ftrxzLcCvtEBpKI0UiOIsqsdzxW70g=;
        b=isFryoOd+Dlm5mGCZjU32eyC/AxUZgowHPKuStpytvMMwRPYY7qfPoZhChvDGpO27M
         KTuhrXFbSD6bYS7UH6coarWvAsxlcc3XX+MNc46uH6VfFJRnVgX9wNFsPeLbvXmR6a3P
         gUt8np49Qy0pgHlqUVGlS46NknsvaTW1Sk2hLkFPAAVAWMiJ+GMNaKtmAjUMd0pDLSRp
         JMud5Px/eUfBFn86NlpxHKrAh19rNGzu3UXv5/NbPGLEHawJBGgOaZVTS/a9cdwzgnTh
         /EjrEuyCawQRn6Zp+pmgu7eZaXJSMx5LRf3yIiccmYoP1vpIv6sXq5vNYnxKljWH5p/t
         S7NQ==
X-Forwarded-Encrypted: i=1; AJvYcCVNe9NY6G+r6Pzi8C2baW/ofjZ2hHl/ARsZf+9W7gSUgvryJR6fgUA03aamjmkzFEEeGTDG9jG6UXKc@vger.kernel.org
X-Gm-Message-State: AOJu0YyaSEKxdyuUm3OXnXJ/G8xZzl0cVJkuAzuJtHvs7Yc3Ol1dAEI/
	BVZABivcf6MeMcNu4rTWLSXtK2TXP47uQIDTLkkcWH8yl62xtsSZJg68AlxRxrplejM=
X-Gm-Gg: AY/fxX746TvMVzjWYk3vXDrEBn8LLs2h7fUvspU+3y7RuZqb/8l2oBDm70hq1m+zUOP
	LdRR3AaS5rlI4l61pWoOmieYL+YzbxYnvbomIMaLk4x2g/HPP3ip8bOcQb6fPyq4mZctsmI3THf
	oaUZ4ycda4uHK57F7vrDBsrgCNIrAjSaFle536vk4upFftqRCkt+A3JhqQ/9oD08eHZuEsaXq21
	Pt6/ASIG82pk/ChUdrBmQDpOYqHfmT9Viwt0bDBmp9z8gpU/q5viCgqday8Gk6/Q1lWDMgKJ9Vn
	oE6a/PAww2d5Kzai+ykqxO3Gnpdl0udHRH6g0SmjBD5vc+3Ci6x8XL+6ihVTU8wNXTS0hx1dYNy
	P6Ixa2zVnarRAIWSahGk335yCVE1AYkva+rf92mgmlK+f3TjNf/ytEUvhUArSK2fPYJ+0kZMreI
	4X7Bcv9q2L6iwdWad7a97v8YuDKB5D/LWt+6OTgPw+z9Pq3zHfLOr17vicB+WD3bho9sVNBC+j2
	EpumpNd
X-Received: by 2002:a05:7022:c90:b0:11b:9386:7ed3 with SMTP id a92af1059eb24-12336aa83bcmr5197544c88.48.1768477278199;
        Thu, 15 Jan 2026 03:41:18 -0800 (PST)
Received: from fedora (dh207-14-52.xnet.hr. [88.207.14.52])
        by smtp.googlemail.com with ESMTPSA id a92af1059eb24-123370a051esm4875347c88.15.2026.01.15.03.41.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jan 2026 03:41:17 -0800 (PST)
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
Subject: [PATCH v5 05/11] dt-bindings: crypto: atmel,at91sam9g46-sha: add microchip,lan9691-sha
Date: Thu, 15 Jan 2026 12:37:30 +0100
Message-ID: <20260115114021.111324-6-robert.marko@sartura.hr>
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

Document Microchip LAN969x SHA compatible.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>
---
Changes in v5:
* Pick Reviewed-by from Claudiu

Changes in v3:
* Pick Acked-by from Conor

 .../devicetree/bindings/crypto/atmel,at91sam9g46-sha.yaml        | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/crypto/atmel,at91sam9g46-sha.yaml b/Documentation/devicetree/bindings/crypto/atmel,at91sam9g46-sha.yaml
index 39e076b275b3..16704ff0dd7f 100644
--- a/Documentation/devicetree/bindings/crypto/atmel,at91sam9g46-sha.yaml
+++ b/Documentation/devicetree/bindings/crypto/atmel,at91sam9g46-sha.yaml
@@ -16,6 +16,7 @@ properties:
       - const: atmel,at91sam9g46-sha
       - items:
           - enum:
+              - microchip,lan9691-sha
               - microchip,sam9x7-sha
               - microchip,sama7d65-sha
           - const: atmel,at91sam9g46-sha
-- 
2.52.0


