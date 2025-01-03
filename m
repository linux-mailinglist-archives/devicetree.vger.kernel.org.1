Return-Path: <devicetree+bounces-135321-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 82A26A00850
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 12:12:21 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id B89807A1C28
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 11:12:13 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id E8E8F1F9F68;
	Fri,  3 Jan 2025 11:12:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b="EuvVQut6"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7CD761F943A
	for <devicetree@vger.kernel.org>; Fri,  3 Jan 2025 11:12:05 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735902728; cv=none; b=nHE7DjVGmPEL3eRuetLTww1ENenTUhy52L+3IkUcltJaZMrHT9oK1K8f0+ESJnWQwca44zi3dfxH6OE+f39AIe0I1cmELiGBrG0Xmx4tilgRq9UtNFd57CLzSjVnBuqwyK+ag2sqtEcAcuaQdVLvgaunnvMix+eI6Zqmp+OGyNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735902728; c=relaxed/simple;
	bh=k/+Dav64Dj1AsO7AF4e4/71hUuQR84tXM9wYoKmRizs=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=uJHAkThi0+8WQ8UGSVb8wiwhp7XchF1tDN74r5kCzp8nrBoEmvwgibLJsHnfqq4M7iRK0gSV1ZZquWf2E7N6k2KybD5NZnNW8UiEwIEFWXz0hrYFpxiiRXW3f25+YX44wyoMmzBaYfwgKd0mepwRgVAxbjX5+MQhRTanPMD/ems=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com; spf=pass smtp.mailfrom=fairphone.com; dkim=pass (2048-bit key) header.d=fairphone.com header.i=@fairphone.com header.b=EuvVQut6; arc=none smtp.client-ip=209.85.218.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=fairphone.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=fairphone.com
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-aa689a37dd4so1906328966b.3
        for <devicetree@vger.kernel.org>; Fri, 03 Jan 2025 03:12:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair; t=1735902723; x=1736507523; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7GFCGdANYwwTIqvFtakmQcQllvWKcLMcYfzvoNYCAks=;
        b=EuvVQut6OEwRSXzGBNQhIXLG3M1ppZ6s1hVyQTk58JE3023kiXQw1VEXUEKZBM+rDQ
         Wdwo2Wf5LGFXKmuxzo8RAqCBLarxFq+orjrQbPmjJMvlYDNeSg1fWTys2Q35M5gWuBgB
         FppIKw29pH6aXIszwt8QjEvA1zEc1cHfM1dc1OXGIYRm5lrkCqP11KeeVXCwQN1LAp8M
         m8HmMdF8Eym9cnxjlzZvLdyu6B6JMIOFoFsY1J1cjaJS9u7KECgqz6/VM2owcU1D7sB3
         NY+CcCgKKpSHwADMwBNLuMo9Iq4wUjbP83LzRKo0wtXtQD1W4o/cFiZK7Z5EwkzyRVqz
         dq1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735902723; x=1736507523;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=7GFCGdANYwwTIqvFtakmQcQllvWKcLMcYfzvoNYCAks=;
        b=bBX49EFX1c7H5t4DwQ/4wlgZxVI1YZliybi+SPuWmdVtXQB8tfq9CgyDIy7/vqhtcN
         yhH3xVErk92lOTil8g2UlFZsWdjODHINj7haKbgfxAk/6cuQCWVs0j/QOf4Mi7lxjmxG
         RTpigq1pxRzj58IdjyzBxuNjNockC6vNVrF4Yxm3mekBH6dhbnBEn1SQ8tp5x2xg0aY/
         EgW1btkZZDG5WpBvutxt6nGug+o1fT0lII5I90fXwl7DcUdK01qHbejPFBNuSnw7H5/W
         ztcpsnw6nKw9UKBINjw54eg3Var7+c++mpV4ST0ZZvdAUX5lR3/hFKpC09BLRfVrbkDX
         bk9Q==
X-Forwarded-Encrypted: i=1; AJvYcCULP3aZ6MV6dWqucsGmr6aMfspk6cRTqt1N9AMLqH5/dSNZLs3PT5Az/QLOnbpp+6sIfSLRLPvBYhuE@vger.kernel.org
X-Gm-Message-State: AOJu0YyviuKelfWcGJkwlLcCdwCTszUQ3KWm4IJjV3xHuuEqTKPnYnLn
	MPoSoBYv91Yb7r/AKp756GZByTBCdxlCYrDC3jSxaPft5n1tlP25FEwibqJpQVX7aTG4javCJsS
	Z
X-Gm-Gg: ASbGnctvn6UNVaLBIf0ZB6cEV1wHGYg1veWq1jDpmw3RookikukK0sTglidBmH4r4uQ
	2OMDIRCRby5H6ma8cfs8btm0fiJuTCRoxGlHGxo1kQAqz2+FxOhwHxJz18n1SRAvc9UigtC3ubI
	ERPPgAsRU8RT0XnKMXTtOx/NtPlGcM0lVFpFPl/T4qqokm3wGWPDJVDtE1ey93yJVwVgx6mVBA2
	xlBBKNX3BdmqgSigt+CcpIkwoK1pfoi+d5sI06//FybcedxJXfgf4/bt+EPhsBp53aBNSpBiUCG
	zbNyfBJYFyRi7wEqqe4uLWXOFQ==
X-Google-Smtp-Source: AGHT+IGxXhlOWbNK7IyXotx6Xt07xXCLWDYVJCz7UEJajTpXBFKX/Nmbz6mqm9dh5HVCwWU2AoE16w==
X-Received: by 2002:a17:907:c10:b0:aa6:74a9:ce6e with SMTP id a640c23a62f3a-aac2ad7fa23mr4318970566b.16.1735902723018;
        Fri, 03 Jan 2025 03:12:03 -0800 (PST)
Received: from [192.168.178.188] (31-151-138-250.dynamic.upc.nl. [31.151.138.250])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0f066130sm1894101366b.183.2025.01.03.03.12.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jan 2025 03:12:02 -0800 (PST)
From: Luca Weiss <luca.weiss@fairphone.com>
Date: Fri, 03 Jan 2025 12:11:59 +0100
Subject: [PATCH 3/5] dt-bindings: eeprom: at24: Add compatible for Puya
 P24C256C
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250103-fp5-cam-eeprom-v1-3-88dee1b36f8e@fairphone.com>
References: <20250103-fp5-cam-eeprom-v1-0-88dee1b36f8e@fairphone.com>
In-Reply-To: <20250103-fp5-cam-eeprom-v1-0-88dee1b36f8e@fairphone.com>
To: Bartosz Golaszewski <brgl@bgdev.pl>, Rob Herring <robh@kernel.org>, 
 Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Bjorn Andersson <andersson@kernel.org>, 
 Konrad Dybcio <konradybcio@kernel.org>
Cc: ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org, 
 linux-i2c@vger.kernel.org, devicetree@vger.kernel.org, 
 linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org, 
 Luca Weiss <luca.weiss@fairphone.com>
X-Mailer: b4 0.14.2

Add the compatible for an 256Kb EEPROM from Puya.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
 Documentation/devicetree/bindings/eeprom/at24.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/eeprom/at24.yaml b/Documentation/devicetree/bindings/eeprom/at24.yaml
index a2970c7c8f27600ad0d495a7e14875a3be611c03..c9e4afbdc44809c21fe4c073f1a2494e899dfe0f 100644
--- a/Documentation/devicetree/bindings/eeprom/at24.yaml
+++ b/Documentation/devicetree/bindings/eeprom/at24.yaml
@@ -138,6 +138,10 @@ properties:
               - renesas,r1ex24128
               - samsung,s524ad0xd1
           - const: atmel,24c128
+      - items:
+          - enum:
+              - puya,p24c256c
+          - const: atmel,24c256
       - items:
           - const: microchip,24aa025e48
       - items:

-- 
2.47.1


