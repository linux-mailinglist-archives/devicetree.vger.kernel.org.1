Return-Path: <devicetree+bounces-110117-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [IPv6:2604:1380:40f1:3f00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B1349994EA
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 00:07:16 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 58365B22A49
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 22:07:14 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC1BB1E47B9;
	Thu, 10 Oct 2024 22:07:11 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VMqGsMi9"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 511CE1E2858
	for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 22:07:10 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728598031; cv=none; b=WDMnkt77U/bFl6W1L2860YJJ67oqKJz3cAFXTqnghE7p9C8wdx0mvx7Q2WyL/m6oIpkp+lfCRzHKbUc0TCvUIx679HKfYaMezGNdjhQUM5HSVFeL5ZPjV2PPaXm4tIO7HLPgPup04/7nd7h/2BqYTMcfPZ8SMKvzXlR7ptOYiRg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728598031; c=relaxed/simple;
	bh=Ln9MEDQoR11D9qF0BwD+Ji+pzi6/x5n6erpAe8gsqOY=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=eyUJsSy5FNAVAW0Yt+7l7J2+KnzIyATg5L9fY6o0IvZh7k3mvHPLsbgYr3ipzwmpXiWN1CZWzHPwRsU6rQW2Hzv1flhOwmK02N9i0ibvgzmZCw8ZAIvd8Zaje3U7zRlD5sWDYxFqnCySDaAyfA/xVq2V4SQDrV3hSgvx+s76eBQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VMqGsMi9; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a7a843bef98so191360266b.2
        for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 15:07:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728598029; x=1729202829; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=w5HXriOFv/S3jhrJNQ3rb0VdN9/p6/9pLopcuKt5oOk=;
        b=VMqGsMi9+N4CFkzUz5uB1WheRqHz+xwwGhCnIaeMQxz5GiIMmnR/6Jix13a6fsXxnn
         mLil07L/PmxCwOkjse2tY0pk6BX/vwXLJ62mzhO68DQF4KX6nak//lJE7wZ3ox+E217c
         2+0+fgqCb6EirXzikJB05s9CjobN4MNhwlAmg5NXJLtb0pe5w8ygffQYP9fZv84hGDTV
         +NenU8tKhKWHpBRlm6CH0E0U3CW+oBQ+mHVZ2X+IR31hbtROcCK1PiCdJYne0Q8LpJQj
         XQouY9bGrFjJTvQ/cTPyCOJvPp2uI3n7yVbasuKs1nWKH9g/PiRT687CVSYyxJlEOnPX
         6TkA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728598029; x=1729202829;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=w5HXriOFv/S3jhrJNQ3rb0VdN9/p6/9pLopcuKt5oOk=;
        b=JbEKbK04YyZF41Mtfi1wJPYmGZ3KHzVZLrswb8eHRv4ytai7Jqwk/k59SLAiZx6dwQ
         T9e0rYjqDy7mrReL/o3IpWipGzC/1nvRwzVyj/GK7tXtHF8yMlTwnOoKXkKq1pxt99Tg
         01/YznPAiEKVsMNOBW6+3eBRhMN0lB+gOOFIavrPPDZsYAMxU2nCH58i9co80yuoHJ6o
         T0XXLAMhZbi+fTCG75zyFTNhMvBs6rojGpKh4dP8Y2/H9JCgZDOOqOkBZsPpyS2LDYXk
         ipnLX9+fr5dSO4ksWLfFjjhmAD2Au8SFQNbTLD9ZzYmiBLvVrskW2p1z6wC4v7qsHpJj
         x/GQ==
X-Gm-Message-State: AOJu0Yxrr5BSxIuCSVNb209weCcvb7ikqYlFGy5T1WK5LPs//Mt2wSRl
	DQ82EJt6VY6L7ZwCeSAfMn3N1W3+2pld/ql+sg/hPYk1Ab1WqUT6S16nTZecZUk=
X-Google-Smtp-Source: AGHT+IEZy1RHO28/EaYtFFyoChOil57vWlWJTfUAcCTQgT9S9E0UCiwYifQzJhin1E1+TWgoHD08jw==
X-Received: by 2002:a17:907:e2d7:b0:a99:4a87:cc7c with SMTP id a640c23a62f3a-a99b95ea990mr32439666b.58.1728598028753;
        Thu, 10 Oct 2024 15:07:08 -0700 (PDT)
Received: from lino.lan ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a99a7f27e5esm140825466b.80.2024.10.10.15.07.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2024 15:07:08 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 11 Oct 2024 00:07:03 +0200
Subject: [PATCH 5/8] ARM: dts: bcm6846: Add LED controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241011-genexis-xg6846b-base-v1-5-f04d6f6f93ce@linaro.org>
References: <20241011-genexis-xg6846b-base-v1-0-f04d6f6f93ce@linaro.org>
In-Reply-To: <20241011-genexis-xg6846b-base-v1-0-f04d6f6f93ce@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 William Zhang <william.zhang@broadcom.com>, 
 Anand Gore <anand.gore@broadcom.com>, 
 Kursad Oney <kursad.oney@broadcom.com>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.14.0

Add the BCMBCA LED controller to the BCM6846 DTSI.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/dts/broadcom/bcm6846.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/broadcom/bcm6846.dtsi b/arch/arm/boot/dts/broadcom/bcm6846.dtsi
index 2d1c74ce79ac..e4fe5a2f6952 100644
--- a/arch/arm/boot/dts/broadcom/bcm6846.dtsi
+++ b/arch/arm/boot/dts/broadcom/bcm6846.dtsi
@@ -198,6 +198,14 @@ rng@b80 {
 			reg = <0xb80 0x28>;
 		};
 
+		leds: led-controller@800 {
+			#address-cells = <1>;
+			#size-cells = <0>;
+			compatible = "brcm,bcm63138-leds";
+			reg = <0x800 0xdc>;
+			status = "disabled";
+		};
+
 		hsspi: spi@1000 {
 			#address-cells = <1>;
 			#size-cells = <0>;

-- 
2.46.2


