Return-Path: <devicetree+bounces-207315-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id EB00CB2F26C
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 10:39:41 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 3E4931CE065B
	for <lists+devicetree@lfdr.de>; Thu, 21 Aug 2025 08:33:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 83AD42EB5C1;
	Thu, 21 Aug 2025 08:31:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="eNT/xUdj"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A7ECF2C3256
	for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 08:31:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755765078; cv=none; b=W1WaCldjGRBK3gCqwECa6ZC6b4IRbjDeviVFYIByRPYGCEnPA64pPWQlj7q3aGMFkBKgB3YAVJORCL8Qa2fhqa/8jT6FnFzmt6QZ7Og2Er3A27gEyJGrvYSFifqnFw0zF7xPA2SCQ03WOFT/6V2ShWqdG3cx8TYxPp3O8lzQE20=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755765078; c=relaxed/simple;
	bh=DUl7jGgKxzyvQ+23Qw3Y1zXF0UNGWi5P39FS6KTVraQ=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=e8LqPMlVoH46pHOQJyd7qCx55OCsnoahp0A52J3w5WNeoMQPVyW2CtBNAZZbr0z5jcyA4UlfoVWDf9GwSNa7nj+uXBtl7HbmG2w+mcq/lL+wBe9GOP0iFa+bOhSc5g0FAXAe5cwa9CG0rEiLzl8s8NF2LZ8M0hGU7WUrurEex9k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=eNT/xUdj; arc=none smtp.client-ip=209.85.208.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f48.google.com with SMTP id 4fb4d7f45d1cf-6188b5e3de6so133774a12.0
        for <devicetree@vger.kernel.org>; Thu, 21 Aug 2025 01:31:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755765075; x=1756369875; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=72zWfvgWDgRSpp6oB3qhY57BxhHcK9M4jOdFz5rohrY=;
        b=eNT/xUdjyOfSumdgitPSUMzqHJPyXJBOEYNrYIRfckQhb6OrrGtHPuwlluOvPmeJoD
         OtjcUg5rkpZr6WXOsvrLCt5zcwGlBwVZtqPA9clMym4sQQwFXawSwe/7XpLIaKaw7EXi
         znEz7FqyWq9j2HovpSGjCP4vzNfqx3QW7De5ufT4bPz0z2cr+0vAqQ2xCi+A05MX7eB7
         Xkr7tHhdL/CbMvlvwgrDykwJBltHon7O8d+RsGAwqzCrh8VOUhiDOBtyENST4YKqHtKg
         Bpcs44HCa6KAO8NvhBsr5Pv1P9fBRfUeKpqXrrhaXrdxelzjplyhHZlCtJlrJctQiy1U
         hAHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755765075; x=1756369875;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=72zWfvgWDgRSpp6oB3qhY57BxhHcK9M4jOdFz5rohrY=;
        b=gOC34bQZY/vg5UmSkuE5H18gup6ThVyn/lqM0r6bHSAPazRmVNY0HRbxg05W9nKhwU
         2ueblg1i8IeNtE73v7+q46xAr2lb9ysDG0u5u+ST/JsCLw6W8LejUvERge4PuKiEDc3G
         Fla8MoblU86IEkzug3NJEzW+XekBep5EXqWnt5mDBQv21kLAU6SC/fEfVj3976YmPp4u
         /pz1JJ+rKjoVB9nx+Bk31wg4yXA9mKTj/U86z42tE8oHJcdgzk7BIGmIo90GopHgNph0
         vLDzFZpa4DJ89G/5ex4S+xottUpABnMvYJmnr8JTdOq32XPN7WzP8OPVZbUeDSqPM1Gw
         iG0w==
X-Forwarded-Encrypted: i=1; AJvYcCXhqKHOQVkDi0K9ts11riusteQbHAO8AmK8juoihSGMHzLDYSDcNJy3mi7ROt37101kpsGdjUNJytmH@vger.kernel.org
X-Gm-Message-State: AOJu0YzdEEr68vgqLb1lCoegsqqergM7W6zYBRjLdNY99/d2Xww6aAb5
	k6VSLEtq+5E3n6xykXXzCf+4/aEwAun4Nti2nV5HmXTyqQ+O0GroQUI8rjHIfxCElIg=
X-Gm-Gg: ASbGncv9ZTKoYZ4zBZMoSVHMjrfVmC+Kjz6Rm9voCrrcJZUkxtJfEMVzmNQ3zBBiktB
	GaM8AGSQ9K0omKSd5Ie6F8qhhY/g5OznN4Bvd4QQHI7tux/IlcvsvP506jdyYEFvkOenNbJelyq
	U4jOjAbXC9B/qLW3oH5hxaQVyPl21T3Zyaan6aM2rwb9WzbvTLAz4fgLx7z/szOcjEz9kN6p4HP
	jHEvGLmQQ4uNHWlgePEUgatxCQRgj/N/rNMH1oPS/UcC5GwKES6QYAvciC7YHAu2KMDNsml1Mmi
	E4YaBA2ufurB48JzwIptTchb0iYPgsG8F21ZDqTb8ccnWCDP8HXEgbBbYtVKx9ELE6oXtnXaZ0N
	cqmUjRGBG7MBLVZx4VU2Fk8SJGKmyRrsE8g==
X-Google-Smtp-Source: AGHT+IGS1r7c4z7Oj/JUMu3dGW4i1hneTD9SnjBJwWU0SVodFJd+one9+/U91e8Rz9GkkwYravVyAg==
X-Received: by 2002:a05:6402:2355:b0:615:c741:ec18 with SMTP id 4fb4d7f45d1cf-61bf86da6cbmr798735a12.2.1755765074962;
        Thu, 21 Aug 2025 01:31:14 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-61a75777beesm4778255a12.26.2025.08.21.01.31.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 21 Aug 2025 01:31:14 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <ukleinek@kernel.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Frank Li <Frank.Li@nxp.com>,
	linux-pwm@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: pwm: nxp,lpc1850-sct-pwm: Minor whitespace cleanup in example
Date: Thu, 21 Aug 2025 10:31:11 +0200
Message-ID: <20250821083110.46420-2-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=890; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=DUl7jGgKxzyvQ+23Qw3Y1zXF0UNGWi5P39FS6KTVraQ=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBoptlOFryJKNO+2kvcAg4ltdJEZLjHc8UC79sco
 55uOB1vkFiJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaKbZTgAKCRDBN2bmhouD
 15mTD/9lQW9AoV5VPmQuFpjbAjj1ZNaOh9StbPoiFY0W3YmrjRfc1z4yKCrJHkCXdheHXccDb4h
 V2vPOw5A0T608t7cZVLTmcaiz/w5xvAAAONUQ1Qjr9rkDtw0stO+F/wv81FoHvNRhChfJ0Ovz8G
 JWa24jjZgMlYiBaI7vVwpz4dAmvdV6W+c2y3fA38n0YK5IdbVOU6j7swjZqZsceQU2taXlQzwqP
 JTBOR16hRDUMM3eocd3ARiuP/Zjbst6E3uDvK9XqeEWmjIIYTR6hYKgCerwMz7jlA/YHogrY6hk
 g1whpoBALsZ0mZH5cAGL0It2GWTUldaVwNiEySivHdyDl+6FdoRya8WtJepcngsOmcy6uJe3ZCr
 LzOTubAeR5E547f/e50+Ohko26+/c321Nwjiv93oYfbld/HLu+oDidwaNH76Ly/ClOcLb/SfGXK
 AXJ4z9HVkNQuPQwuZR+TKME11yODWzlUqkf8wVpgsxIHc7/5CmL5vHj592GLwJPqu/vUkj5YkkP
 T1+dD2FKREeYPSvIbV74JstG+soEt9SrCp2xsflYbyNgD9Cz/ISPZ24OZB0+CnwGncw+DCP56tj
 qNrn3XDrBUW/40we5HG/lXHlLIP3fbtt/kNRdnPpG2ioRuonhsYw8x7R8aje7OOcw6i2BGNdifz UI6prLSZLBxnbQw==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

The DTS code coding style expects exactly one space around '='
character.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/pwm/nxp,lpc1850-sct-pwm.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/pwm/nxp,lpc1850-sct-pwm.yaml b/Documentation/devicetree/bindings/pwm/nxp,lpc1850-sct-pwm.yaml
index ffda0123878e..920e0413d431 100644
--- a/Documentation/devicetree/bindings/pwm/nxp,lpc1850-sct-pwm.yaml
+++ b/Documentation/devicetree/bindings/pwm/nxp,lpc1850-sct-pwm.yaml
@@ -48,7 +48,7 @@ examples:
     pwm@40000000 {
         compatible = "nxp,lpc1850-sct-pwm";
         reg = <0x40000000 0x1000>;
-        clocks =<&ccu1 CLK_CPU_SCT>;
+        clocks = <&ccu1 CLK_CPU_SCT>;
         clock-names = "pwm";
         #pwm-cells = <3>;
     };
-- 
2.48.1


