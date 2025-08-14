Return-Path: <devicetree+bounces-204784-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C6F5B26CB5
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 18:42:17 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BCE71189EFA0
	for <lists+devicetree@lfdr.de>; Thu, 14 Aug 2025 16:40:32 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id B0F692D6417;
	Thu, 14 Aug 2025 16:40:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="Tv+XEii0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lj1-f172.google.com (mail-lj1-f172.google.com [209.85.208.172])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3A1E220F55
	for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 16:40:08 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.172
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755189610; cv=none; b=BeyjfE0jf9snJI3aSnP1b8gQAmovHRSZpFxc5QRYUZBitP5pnZALXjEXifiMgaDkqcN7eyeByLm/vopF0SlmQEkciCylxRW3/DHJRdVN0NZV0/MrEAdMADWOfI6QiXGb4ZdOx80Sp6PbWrAi8MOxCLSfMOLbNjLbVBl7/+uuXJA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755189610; c=relaxed/simple;
	bh=mE4Vt8Z/kjbtaBWtj1U5/DXc41OFA5Y6bx7Ll5fNXLE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ePsFtoIi+HD+dPzn7MF/pv0XPx1HvotIK0VggOHJJ5KBKm5eHWKJVmNMfgCY+fWnktaZeWVig/S2J7X64JIMzxHh5QV9e51U/ZBzl10FMDZbreH8JsFpyGiS/lZrrv/fa8D9i7FOsNtvaVivr7UUd0RQQCwXp0CGImGFWoAfWuA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=Tv+XEii0; arc=none smtp.client-ip=209.85.208.172
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lj1-f172.google.com with SMTP id 38308e7fff4ca-333f929adb3so9398031fa.3
        for <devicetree@vger.kernel.org>; Thu, 14 Aug 2025 09:40:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1755189607; x=1755794407; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NDLGrc7XefUJ5ohNJj2haJRU4klp5/mn3avrwA7UD50=;
        b=Tv+XEii0nkb2Im08bSdcikJP7WUku/elR2cO3/WZb/mWkmJMgd88yiE4PZnTRXWwBC
         1hxgOTVfhgY/koWhCfoEWGSh3kuMOFXmANznzvikoHCVDhEug/QJpmoJRLLygZGWDaDT
         HRbSI8GbZtmEiJmpLyVwKQ1kuPVWHJVn0JYdaS1i+XtRbEylMraW1BAZOMlhHD8Zuan5
         4ToVg2w9yAQodZiXgWJOAXsaaxo4fBlZqhwSx0eTFquk7eBeD+ogfPSKYkJjdJFpWPYd
         Q9Gb7Y/AjqsRyrqBewsVD9X/YZbHC0+01ToCaD3Txj7LEIlRjKWzR8u2pqyUYWFkNa1d
         XMjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1755189607; x=1755794407;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NDLGrc7XefUJ5ohNJj2haJRU4klp5/mn3avrwA7UD50=;
        b=NAao4Jnxl5adn0czQD8MBZGmrrsDUC85zBbehi6UTZLF2d9Jc8PsEO6AMu0J9Ur2G6
         Sqfz8jOVQRdsDvxHPhqSk9scEueS0GTbYJ15dHptDYj03AtzqpwlF1yWdRy8yIgrxQCM
         2hS2ZCzS4PrE0xsfpuSVb2gAo1MZ9XsYnpMFJINrj1RBDRF6lzwZ+UVtEPBuFU21TEK1
         Uuoxv+rhT9Z8rxwJLSISOUgnjSiEHjsktIGyt2OSMG0jfV1EJnxJRvMmK/CAKGaUYf8D
         vJPpCF1GJBuP0RxbP+Fhbj94p44pXLhByQTer0fI3SWTXDqjVibI7DUpRQsZ/Jt1qhJ7
         eSQQ==
X-Gm-Message-State: AOJu0YzVJzgESAgExr46RXFTd51Yf0K9pANdccPVmVjAyhoWy5tFV1Tz
	5Ip3awZFbq0k7edo1AVwUTZ1I9miBNb6DxYRt1vlMGleFD1Vg+QLfrKFBOsXzyIukQYRmm4quNK
	nC0Nj298=
X-Gm-Gg: ASbGncsOxVbavdJKrPME2EZ0+MOidf/4JoBMok0gaNRy6K0uwxzJRwIrfAPZ68+3Q4X
	w4f2PsxTBxZGbJU8pAJ9kNwhas8E1f9GwIqe7RO5ejoLvN+BHE9/yQODF/8y5hWTX2WpNTMTwIK
	fjEAV3IllMmJ6MVxUfVIYfN66h8B6uXEVY/A7QNkH5veZKl8Hn9m2h63AgGtfblJSVz8u89VY7t
	pauLVh/5kkgCN9EH6rs4/eBuhpMMfZb4EFUD9lU7pHQ+zfQLL8jJM9PXhiN6b3hhIn+LXxQD49r
	ij92HsErWtxMXZdBoS5dEZQrByVHUG4NQJ1gdIV0tAPwQJ7YQl4cU6GcpDSczRc2Kz09/2SDYhA
	bH5cm3iWrXa74WDgGiHlt9JYFh+AMDj7J47UMLw==
X-Google-Smtp-Source: AGHT+IEFL94JmGvZPp5eNi5FK7sGRKYEWI99/gbwaje85vEdJ5qlH9GjZqGIlwMIYqaQ4by2QSIJjA==
X-Received: by 2002:a2e:a442:0:b0:332:1398:5737 with SMTP id 38308e7fff4ca-333fa84dd73mr6683541fa.24.1755189606596;
        Thu, 14 Aug 2025 09:40:06 -0700 (PDT)
Received: from [192.168.1.140] ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 38308e7fff4ca-333f8e1c71fsm3296301fa.48.2025.08.14.09.40.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Aug 2025 09:40:05 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Thu, 14 Aug 2025 18:40:04 +0200
Subject: [PATCH 2/3] dt-bindings: arm: List actiontec devices
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20250814-ixp4xx-mi424wr-dts-v1-2-b7c10f3c4193@linaro.org>
References: <20250814-ixp4xx-mi424wr-dts-v1-0-b7c10f3c4193@linaro.org>
In-Reply-To: <20250814-ixp4xx-mi424wr-dts-v1-0-b7c10f3c4193@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Linus Walleij <linusw@kernel.org>, 
 Imre Kaloz <kaloz@openwrt.org>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.14.2

One two IXP4xx device families from OpenWrts backlog:
Actiontec MI424WR revision A/C and revision D, both
of these are IXP4xx devices.

Revisions E and later use different chipsets.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 Documentation/devicetree/bindings/arm/intel-ixp4xx.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/intel-ixp4xx.yaml b/Documentation/devicetree/bindings/arm/intel-ixp4xx.yaml
index d60792b1d995f909f621b3326e62d19223f6683c..b7b430896596aacb792983d8538b84f389cc5bd1 100644
--- a/Documentation/devicetree/bindings/arm/intel-ixp4xx.yaml
+++ b/Documentation/devicetree/bindings/arm/intel-ixp4xx.yaml
@@ -16,6 +16,8 @@ properties:
     oneOf:
       - items:
           - enum:
+              - actiontec,mi424wr-ac
+              - actiontec,mi424wr-d
               - adieng,coyote
               - arcom,vulcan
               - dlink,dsm-g600-a

-- 
2.50.1


