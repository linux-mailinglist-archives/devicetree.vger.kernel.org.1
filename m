Return-Path: <devicetree+bounces-95825-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 262D895B693
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2024 15:27:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 55B0F1C2316D
	for <lists+devicetree@lfdr.de>; Thu, 22 Aug 2024 13:27:50 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 185D61CBEA1;
	Thu, 22 Aug 2024 13:27:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="ygVBahdR"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com [209.85.221.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 846661CBE96
	for <devicetree@vger.kernel.org>; Thu, 22 Aug 2024 13:27:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724333235; cv=none; b=XDNEYYESD2Hmfz/nTIoQjpbLQe9I7syIT7xUcEadykaPdz90XyPNDtDEDddR/pRVcYEuSHYTFQTO44hWfmyyzF7NONbCIbnlEVn+1zrOBPubE9xBr8Ohk/Oa2b+wqBoDisndbhBGaYBpY+iyIdQWibEpAsiXmiA8uTd2ib/SX6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724333235; c=relaxed/simple;
	bh=mmPcytjB8m6exAvgg/oZ+VjBw5w/3yH5XfcO1PfEurs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=SlJ5GmaXpky4w9iZ/E7GfwdbT8OfeySLIc+sjJx2/ldBUd+YO8y4V2WOqCucryoaAc+cQ0sr7vVDvMiQckDkn5FAAqNgkjIYfiwyQYQjRV371vmzuU3Efmav3wddF2nVipJzwxHp/sWZSb+56+9iAVjyilDj5RSEGJpV8KlJ/ww=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=ygVBahdR; arc=none smtp.client-ip=209.85.221.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f46.google.com with SMTP id ffacd0b85a97d-3718ea278a8so143092f8f.3
        for <devicetree@vger.kernel.org>; Thu, 22 Aug 2024 06:27:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1724333232; x=1724938032; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=heGIarr05MZ0K7mmp6CHQvn8aVfPPIQkNf3ZJw1FViw=;
        b=ygVBahdRZrMMH078Cx/+YPBzs7VsrQ5/y9GrsF76ck7YDWbs4boVqT7Xl55J+qOZG6
         Wza9kBLB5KLt1Y+p21AQP+o+aoW2OwfHJ4/pBsTd7Y2usqfIN6tozFDzaBpdjg4WZSE8
         GwoWIG0oyezZqg19Uk9AQ2lpUdWHXqHzekohjabE5ZTBJyXoP/xH6IIa8Kvm42d4J1wE
         otk1r0ZH9WEf0N6IWxyHjD58wtV4kJx0/SzjCGjnlywd2dnvQ+325A7GCLMwKOZNaFCY
         ku9O5LeKqJ5J1J2RXZribDEBwCAP+ww/xUAiwjHpKa300mZ1dass6NcPLe5OCGQbXqo6
         FudA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724333232; x=1724938032;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=heGIarr05MZ0K7mmp6CHQvn8aVfPPIQkNf3ZJw1FViw=;
        b=D56YPHkjpOuz1VEV0euXgkME2wYyR+GqKyp/6bVYaEwM/u8u0Szx38mPA3yH4cNILB
         1iZYNuEcgaZtyfLrEUJuogEV/Kvy40k5I+mVic7HC2UYnGY0pRLivBo2tLBFna1UFZ1t
         FZTZlT5+ti8eYzskOjK5jcxr4QudQUSFBcuTo+rnUXICz0OCbnBD0X/eyH3smBhFGepR
         edDUxnLEs1ft42x8p5WYOuM8MSKpqaRq663RJ0WFdwt+Bg/hpNotRAGC+K7bIEcp7bLS
         u1UFWpRhz/0Fe3bl5kMYh/Bi3KdWRPPMXqdJFb0nZIFgMDs9TqSbp3W9dJ4YiMzh22/U
         K0sg==
X-Forwarded-Encrypted: i=1; AJvYcCV0LM2SLS+w0fgFSJEauE5wZYV52sJ6wFIC/osrJid2yLID6dnFfhVX8xQ9WAwoX8dyFyHiADBsU6hm@vger.kernel.org
X-Gm-Message-State: AOJu0YzaHTFhZAwKw3M+he7pRapa0N0wkLHymbd7NmUKYfYXOy/hEodr
	DUiRaeZj3cnKITKw7b9f4NRvk2p6dtPZoCaumSuikL9FOkaBgquEvF4aC2fcSqM=
X-Google-Smtp-Source: AGHT+IHnNSVQHM2d9IRfmql1uFIKdsWiicdATDg1EWg6EFTqcFXlV2endQY0D9GvUsxJ5J4dgUJ6zQ==
X-Received: by 2002:a5d:6d89:0:b0:364:8215:7142 with SMTP id ffacd0b85a97d-372fd584d52mr2486942f8f.1.1724333231717;
        Thu, 22 Aug 2024 06:27:11 -0700 (PDT)
Received: from krzk-bin.. ([178.197.222.82])
        by smtp.gmail.com with ESMTPSA id ffacd0b85a97d-3730810fb6bsm1703531f8f.21.2024.08.22.06.27.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 22 Aug 2024 06:27:11 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Brendan Higgins <brendan.higgins@linux.dev>,
	Benjamin Herrenschmidt <benh@kernel.crashing.org>,
	Joel Stanley <joel@jms.id.au>,
	Andi Shyti <andi.shyti@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Andrew Jeffery <andrew@codeconstruct.com.au>,
	Rayn Chen <rayn_chen@aspeedtech.com>,
	linux-i2c@vger.kernel.org,
	openbmc@lists.ozlabs.org,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-aspeed@lists.ozlabs.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: i2c: aspeed: drop redundant multi-master
Date: Thu, 22 Aug 2024 15:27:08 +0200
Message-ID: <20240822132708.51884-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

'multi-master' property is defined by core i2c-controller schema in
dtschema package, so binding which references it and has
unevaluatedProperties:false, does not need to mention it.  It is
completely redundant here.

Suggested-by: Andi Shyti <andi.shyti@kernel.org>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Reference:
https://github.com/devicetree-org/dt-schema/blob/main/dtschema/schemas/i2c/i2c-controller.yaml#L114
---
 Documentation/devicetree/bindings/i2c/aspeed,i2c.yaml | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/Documentation/devicetree/bindings/i2c/aspeed,i2c.yaml b/Documentation/devicetree/bindings/i2c/aspeed,i2c.yaml
index 6df27b47b922..5b9bd2feda3b 100644
--- a/Documentation/devicetree/bindings/i2c/aspeed,i2c.yaml
+++ b/Documentation/devicetree/bindings/i2c/aspeed,i2c.yaml
@@ -44,11 +44,6 @@ properties:
     description: frequency of the bus clock in Hz defaults to 100 kHz when not
       specified
 
-  multi-master:
-    type: boolean
-    description:
-      states that there is another master active on this bus
-
 required:
   - reg
   - compatible
-- 
2.43.0


