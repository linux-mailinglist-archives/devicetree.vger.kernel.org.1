Return-Path: <devicetree+bounces-135286-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id BC6ECA005BE
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 09:26:00 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 9660B162CA1
	for <lists+devicetree@lfdr.de>; Fri,  3 Jan 2025 08:25:58 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AF4A31CCED2;
	Fri,  3 Jan 2025 08:25:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="DR01zJrs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f41.google.com (mail-ej1-f41.google.com [209.85.218.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CE38F1CBE8C
	for <devicetree@vger.kernel.org>; Fri,  3 Jan 2025 08:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.41
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735892756; cv=none; b=CChfjaNJxPimtR0w5o/HfgqmXPdzG4XI61bmcynED8GM33kQDbrplUZvUoSFjvKeCJap1WJHkdsiAy2+EynD409zvhkap4SyvTQfzgCrEZGDe1bxh1Q7DbGA7auNID0cIIqchp2qXn9/tELUUabsBHp7Vjy5+wNQnAYccOfc0Bs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735892756; c=relaxed/simple;
	bh=7YlwamCaibMj95ILlssS/xUUvQn5etKq5v5uqkI4QfI=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=h0SSDcASevNoFkgO7CLLkZ6vfar1TkRNDKd77XSGCmZ8u5iybARTUfHQhKtj+NBQXSIigpS75khYOHMkzePKXKLZj4HzZzVvY9u8zr6Mk4IMFypwuU7jsqM0JYwmFOg+94UkBRFYOtGoeVoRKj3X2V/Fqs4+6e/2kEZJLbqN404=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=DR01zJrs; arc=none smtp.client-ip=209.85.218.41
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f41.google.com with SMTP id a640c23a62f3a-aa6954ec439so148304866b.1
        for <devicetree@vger.kernel.org>; Fri, 03 Jan 2025 00:25:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1735892753; x=1736497553; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=KYNO0guAuD1jSVG7+Mn2jJuelOVJmSNitmxA0BfO1/0=;
        b=DR01zJrsc4p/yjHUx0aVGULOSrYMt0JMbSUnLYHSGwbsdInrPUVRqQWN+R161pRUyA
         cFkNwCnKJORPquWm8ARwFQFZgwXFeUNQwqHfD77eKIeh8NxBWi9hsySQUAsaQD7uUOs4
         oUYsE1Qm8dWmLMBUR+XhKhALOPmxe+BKiKJDSAKrg3bIc52Vh81b+kqcAGU1jiC+sQr9
         8D5kuv7ExFEvJ5Rdok0jrXQx2IpYcybVASJsu/iZO3ZajkX3JZ0erZzs1zDQBrHx2Aow
         bQTXf/wn1JveAg1Xl9VAtjjpn67bEp2mLuJHuwRAYb59yRQzKU7A8CJGOZggPpCCyY04
         GVzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1735892753; x=1736497553;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KYNO0guAuD1jSVG7+Mn2jJuelOVJmSNitmxA0BfO1/0=;
        b=bSsE2ankeQTxmKdSiUN0nYE9xN1OKKdqJ4N7YdbBgpFPfSSLJhfdI7rxCo2gqKUJrR
         qoJtKd+BOZ/R097ZaDqCU1Mf1XhHaozml7TWRdnYiu1oXDhFkXxXCriU72xVX/7jonKc
         FgN9yaXjzM2NHT8rRnxe2hXYGEdOmYb09SiBeepzRKBJM+G1Vc7R2HV1Ujnd9/HUJxn9
         Qxl6p5CYx3FTypzy2jq7nPnwk39+zvQQ0shzVmWbzG6q9AV66wtu9QC/ZD+OUKyjm4Co
         NH4xdihAcNLT4fTL0GCjVwjDLC5XR7H2QcSdpWXeHa2lk/Ke32VWLW6RRo6Z5vPjjlST
         Lbsw==
X-Forwarded-Encrypted: i=1; AJvYcCWrXxcCdUbY1PjXwYLFef8SOR0U9R/1UZVxVHrudEfJLQsvTOfrwHr3V9nIdg/RNdYmziNuVgMWz8lD@vger.kernel.org
X-Gm-Message-State: AOJu0YxPve+k7rtnk2wneDIrilXVkLAoyS0kVQLRxoOyBS/Pog06UNKh
	i/nEkoZ3EiF/ZT9QizXz/+feu/7ToKAlbvjlzG3ZmjJzLiJzGKdicFeQRL9yQgg=
X-Gm-Gg: ASbGncsg7QMmB4VBlrF3bp6sqUJS3ajr/ZJoQaFq9w6FnfheFGq6FxyWlbGV2QWivb6
	9tnDoETzdgjtHm8boutKPL9DojyOJECd3J1pcXLGd4msnAMOpMfYTLZNY41JCnbtpgN7vVn/6O+
	e2JR8lB8uypLtFrnafYqLPTGUzipiJPqZOpkkZkgbW+F18r2zzzyw6t01/OUeTDvCuuv1v/SWAS
	WwSteWr36PnQ8jGtSzzKRVEnfnFKB29Dh284W2odktsJw5b5RW7kCT84B4w6z57OZ0vjcs=
X-Google-Smtp-Source: AGHT+IGWWm2fDcYRYaz/N7szhgJEWFmaFTDYJU8U6ZmPuis5+d3SHG8JFgAZM8+mDcm3BEoTvblddQ==
X-Received: by 2002:a17:907:9692:b0:aa6:91ca:3674 with SMTP id a640c23a62f3a-aac2adb92a6mr1572179466b.4.1735892752966;
        Fri, 03 Jan 2025 00:25:52 -0800 (PST)
Received: from krzk-bin.. ([178.197.223.165])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0f06dc7esm1868462866b.193.2025.01.03.00.25.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Jan 2025 00:25:52 -0800 (PST)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Sam Protsenko <semen.protsenko@linaro.org>,
	devicetree@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org,
	linux-kernel@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
	Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
Subject: [PATCH] dt-bindings: samsung: exynos-usi: Restrict possible samsung,mode values
Date: Fri,  3 Jan 2025 09:25:49 +0100
Message-ID: <20250103082549.19419-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.43.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

"samsung,mode" property defines the desired mode of the serial engine
(e.g. I2C or SPI) and only few values are allowed/used by Linux driver.

Cc: Ivaylo Ivanov <ivo.ivanov.ivanov1@gmail.com>
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml b/Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml
index f80fcbc3128b..5b046932fbc3 100644
--- a/Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml
+++ b/Documentation/devicetree/bindings/soc/samsung/exynos-usi.yaml
@@ -64,6 +64,7 @@ properties:
 
   samsung,mode:
     $ref: /schemas/types.yaml#/definitions/uint32
+    enum: [0, 1, 2, 3]
     description:
       Selects USI function (which serial protocol to use). Refer to
       <include/dt-bindings/soc/samsung,exynos-usi.h> for valid USI mode values.
-- 
2.43.0


