Return-Path: <devicetree+bounces-255561-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from tor.lore.kernel.org (tor.lore.kernel.org [172.105.105.114])
	by mail.lfdr.de (Postfix) with ESMTPS id 3F10BD243FD
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 12:43:50 +0100 (CET)
Received: from smtp.subspace.kernel.org (conduit.subspace.kernel.org [100.90.174.1])
	by tor.lore.kernel.org (Postfix) with ESMTP id 47EA8306098A
	for <lists+devicetree@lfdr.de>; Thu, 15 Jan 2026 11:41:22 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B005D37C0FD;
	Thu, 15 Jan 2026 11:41:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b="O5lnGvCp"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-dl1-f45.google.com (mail-dl1-f45.google.com [74.125.82.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09EC237A486
	for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 11:41:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=74.125.82.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768477272; cv=none; b=II9yFi5JmjhJqMwjUq/G2puRmBbQQSEZiU4PmvYdOZpRHtZ4neUulcS/zvWhO7o/sdfLIis8nrUiXvbXgwiwlknjeP4gS2uQPeDm0HbOwXE33q+XCU3KPtu7PWNYOcePwrH2wAAWrE4Z1JjnNkBAvkgmxUGfo6Nry7k1CJ4iv0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768477272; c=relaxed/simple;
	bh=ooKaWydLYAU6ZinUS3YSKV/BPM0KTw6HZzaYhJx/zZg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=XRykarMIXa/VseMWVESPnQEEWRJ0mIC8qBh1IcWRQq+Ij3oWLTj7/P7W1TaeRNgps4uQpfG3s2320zvvxyhKyjKIK1EmIoDY7pfb8gemh0HcgTVnVDKDllxKPv2I2B3ujQK4QY2bwaLauDYevbwgn874ffeb2cf4NOTIQHae/wo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr; spf=pass smtp.mailfrom=sartura.hr; dkim=pass (2048-bit key) header.d=sartura.hr header.i=@sartura.hr header.b=O5lnGvCp; arc=none smtp.client-ip=74.125.82.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=reject dis=none) header.from=sartura.hr
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=sartura.hr
Received: by mail-dl1-f45.google.com with SMTP id a92af1059eb24-12332910300so2054031c88.0
        for <devicetree@vger.kernel.org>; Thu, 15 Jan 2026 03:41:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura.hr; s=sartura; t=1768477270; x=1769082070; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=jyqWPUPdksTIWYuKZmgo4nd2lHSjHXcu6SXb4jlQ4Xc=;
        b=O5lnGvCp5bru6pC2QaWeoBDVHfK15uwu/E3xAeyAUrr9SjEKNdMJFD808ELIWWp8/P
         cT1hffs6A20FXgIcfPjrhRBE/hnQ4mT7Cdn5difSKDrwyd2hfnL+VBgve9xW0YEZo/mK
         BWpmhZEsY0pVJb3Ze+8VNhQ3fjwCJFeMmyElICoDzR9t7Tm46dWQKLCA3fYhx4CQVHT2
         qxTosX+FWOY8D4BqXIDxbpEGADEzw9xh+L8NnwM67RGSd7pTqsiUedvqnRJm6445hNaA
         pK/cG0ss6J5hDKrm1Ag3z2x/qoAeHC3xbnYbZ8jcUMwAMJUqeCEBR1fGzp9vT/vOqmX6
         FI5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1768477270; x=1769082070;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=jyqWPUPdksTIWYuKZmgo4nd2lHSjHXcu6SXb4jlQ4Xc=;
        b=ePA3BlxNh48WFjs8j1rdjOoImkl2BFBSgizwWl9XkTlCNm/JgL5rnFYYP4VXMeSYcq
         kgzUp+ZPs6XmUJ1mkCBilYFYZT++rJN7k/whZIjK8awf9p0sHAphpdhuYclGrHGah5rW
         A5BCOoytRr8hBlusOVbeBkb7r6sAEG62lRSx3ht6bpFBnWyGeiCR2qbo48bCeub3BHj8
         0phQ1nXmOjoYPdyW97bguWOYGvo1pKutOfFMGn3qEwe7AJ5SdQAWUHlCdl8BqAH8tdC7
         GqsE8T7t6sdxOWnW12NZlRXmzcS4rNTt7vT3CO2IDvtaRwzF498+wFBUT0jJWGwI/J3N
         2GHQ==
X-Forwarded-Encrypted: i=1; AJvYcCXph8RU+Ul+9DcgnaHVixWvYANt0NhihxrNCEHx7tb2t7Xc5pb8JSLMdbSAXnke5LCPs9AsZ3dPruRO@vger.kernel.org
X-Gm-Message-State: AOJu0YyuotkuNYFJqGXLABoUG9GXXY6X+j+s7sjhhuPNFzLbi10po3dh
	vFNCW+pQ9FLW15zs9xP3dylTHI63Is9zdP+AmoR+NJ0CkciXbSIYzLUo9IxGPAe/XJE=
X-Gm-Gg: AY/fxX5MMy+wIliEGvbB/fyu8mdg9hf4aG626n4YITy7DHQXFQFYlEPZ+aOgqrqTk6y
	EdxmUPjGk0Mj+YHYaL0w5JfpnIG9HbgbFvn9lVHLzaa+AA1BduIHelZhZTYIQRPgVs6nDfT0vgp
	5R1L1fIEDfzEOvwqOg8MFD3mH8tv424dCxCqISc4GT3uXKXRGBJ1cNLddIc1Xmo69yzHK+1oWEg
	qH9fE9zZtntHH9YLGB0Y6NEKrqequSykeuBukEYrOVj8ckF7dWOEN9B2RCQF8n4CZNjH428CJG6
	faSBrjYSqHwRMtbwI2pkn8UxnRmORI6Fnu10jMHJCGazmhriyPKb3kgbSjSxSUwCMlnHS03a5aJ
	uUQsiPWQTJak4BenmYkXGz3+PxJzyyqQBOxtorttQ5qHMjutxUBPcgBEF6MLrDzxr2CBmLbW/Tr
	Z7YdGDjS3iQm0071C1BmpFc5vosHk/LzEN6Kl+uVUCskMZ7MU1rW37G3A+UEfDBMNrbtFSSmft+
	U+ZUF6c
X-Received: by 2002:a05:701a:ca0e:b0:123:2c98:f6af with SMTP id a92af1059eb24-12336a45a0bmr7461678c88.14.1768477270097;
        Thu, 15 Jan 2026 03:41:10 -0800 (PST)
Received: from fedora (dh207-14-52.xnet.hr. [88.207.14.52])
        by smtp.googlemail.com with ESMTPSA id a92af1059eb24-123370a051esm4875347c88.15.2026.01.15.03.41.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Jan 2026 03:41:09 -0800 (PST)
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
Subject: [PATCH v5 04/11] dt-bindings: crypto: atmel,at91sam9g46-aes: add microchip,lan9691-aes
Date: Thu, 15 Jan 2026 12:37:29 +0100
Message-ID: <20260115114021.111324-5-robert.marko@sartura.hr>
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

Document Microchip LAN969x AES compatible.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
Acked-by: Conor Dooley <conor.dooley@microchip.com>
Reviewed-by: Claudiu Beznea <claudiu.beznea@tuxon.dev>
---
Changes in v5:
* Pick Reviewed-by from Claudiu

Changes in v3:
* Pick Acked-by from Conor

 .../devicetree/bindings/crypto/atmel,at91sam9g46-aes.yaml        | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/crypto/atmel,at91sam9g46-aes.yaml b/Documentation/devicetree/bindings/crypto/atmel,at91sam9g46-aes.yaml
index 19010f90198a..f3b6af6baf15 100644
--- a/Documentation/devicetree/bindings/crypto/atmel,at91sam9g46-aes.yaml
+++ b/Documentation/devicetree/bindings/crypto/atmel,at91sam9g46-aes.yaml
@@ -16,6 +16,7 @@ properties:
       - const: atmel,at91sam9g46-aes
       - items:
           - enum:
+              - microchip,lan9691-aes
               - microchip,sam9x7-aes
               - microchip,sama7d65-aes
           - const: atmel,at91sam9g46-aes
-- 
2.52.0


