Return-Path: <devicetree+bounces-110114-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 40F2D9994E5
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2024 00:07:11 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 37B3B1C22F32
	for <lists+devicetree@lfdr.de>; Thu, 10 Oct 2024 22:07:10 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id D403A1E47B9;
	Thu, 10 Oct 2024 22:07:06 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BKz4Lst0"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com [209.85.208.49])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2433418DF6B
	for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 22:07:04 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.49
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728598026; cv=none; b=qfyyM3lJTBMMOW3+BsfaqGNbH9KRDqIekpAkBfxFwXcPsGYh+BySwldmQUV5o1uIf2GUSDghO1x0vRudzpqxZHTpgP0d+Xqy9z6RmPY82Q+ZkU5AZ3pvMXEREgAljktbTucF3MjfM09ih3X2qBGav64NLecEpSRkgBuXFfQiSrs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728598026; c=relaxed/simple;
	bh=Fp3s2B9Ke0PwCMYzhqqqilMUc8skEHfVgnxn/bnpI5Q=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=AcUIF0QAd1BHXDC6VaKYpSs42FQyJo00Op4K+fUrtV0xfcm8DEXR+PvhpCIHLIXO+at5SS+h7MILrFfWTElBaN9uSqqXcY5kAvM2yVCTYQ36kNaOcZ3CCWukTre4GKaJJLpAtPU5a61TM6zM+lH4+U/POz6oLjv9o9Un4ZriW2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BKz4Lst0; arc=none smtp.client-ip=209.85.208.49
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-ed1-f49.google.com with SMTP id 4fb4d7f45d1cf-5c9362c26d8so2041009a12.1
        for <devicetree@vger.kernel.org>; Thu, 10 Oct 2024 15:07:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1728598023; x=1729202823; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=N2IIwOb0WS5MjzwX7Ar4Tf0ByMMbQC+8VyK5ncs/WZ4=;
        b=BKz4Lst0BOoI/Gp5sV2aSaE5mAFDL52WyOFU+SjjWkHCl97Vozhedzxr3JwYGkfy1V
         r3z5nM1MBC74WAnCQsMKBVBdLICdmYkZEIxhk/wy0PZRlAEotTOzXjeb+iIv48n0TOCH
         OOAf64xpCspSSNFhV08ej2PzK/9DMvEBrAl/1E5zRJ6tHsLtcMDymxuKWqjq/iYrh2ev
         4gGfpE4+JQUa16tDw5jPYd6mii12V++1mwqFKwM9EVsyuxy97aFTEyjpX0Y4/19KEIc7
         uGUA9QxaUuMxvAja8i6KqCkdUzMOOkpdQ+YIE8CDle1jj5JZPuQAuVbR6R1oecQdjEWG
         OyeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1728598023; x=1729202823;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=N2IIwOb0WS5MjzwX7Ar4Tf0ByMMbQC+8VyK5ncs/WZ4=;
        b=XAVyRJIp140wZ73RMBEhir8HyoDyBR1gGgGFauXfPOLoE4rzQcsl0mbQVSuOON//Vc
         e4Cuhz4xkWsrC1GIg6jVQwSR4dEAbOX3GsCGzOfHmZUY+wClUCFYd5XkiwjA+cO1mu5S
         Y4dpJqxJL3Cu4Ll4LSBMiyP1DgAwOWstfN/wTR58jssjaveG1foceFHzeb0pZwFKLik1
         FZQN/Xezf3gxPcN/rDk5/XT1Tn988CrIcMhlJ5+A8emj7mFIUxe21uFgr21ZV71rC1gI
         V42HU/GNJ15KQ4lwoFOSCG0B7MBdZn/Xy6ybHnAXsxyDcJ9hSfY5jsR3BW4HAC0i4JYY
         mjCw==
X-Gm-Message-State: AOJu0Ywa9XvtfV47lBdkeQW3z4BYThL3UHeydGUFR0yfB1P6eXsz7znO
	Gz8az8x+2Op61bFCB/PYk/sY8IvEwjkNZLfXFuP6EF1/BvIyS5IlzXF9za3Nefg=
X-Google-Smtp-Source: AGHT+IEpNWxeKtOI9iQhFVaTHbzzCOlJtnxPwtZo72x67e9I6QGhqkEsP9jOHnCCQUXkDjF30Tq/uQ==
X-Received: by 2002:a17:906:7307:b0:a99:4112:5e6e with SMTP id a640c23a62f3a-a99a0eb7dd7mr459978166b.3.1728598023514;
        Thu, 10 Oct 2024 15:07:03 -0700 (PDT)
Received: from lino.lan ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a99a7f27e5esm140825466b.80.2024.10.10.15.07.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Oct 2024 15:07:03 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Fri, 11 Oct 2024 00:07:00 +0200
Subject: [PATCH 2/8] ARM: dts: bcm6846: Enable watchdog
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241011-genexis-xg6846b-base-v1-2-f04d6f6f93ce@linaro.org>
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

The BCM6846 has a BCM7038-compatible watchdog timer, just
add it to the device tree.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/dts/broadcom/bcm6846.dtsi | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/arm/boot/dts/broadcom/bcm6846.dtsi b/arch/arm/boot/dts/broadcom/bcm6846.dtsi
index c2a8deef150a..f4f1f3a06eac 100644
--- a/arch/arm/boot/dts/broadcom/bcm6846.dtsi
+++ b/arch/arm/boot/dts/broadcom/bcm6846.dtsi
@@ -99,6 +99,11 @@ bus@ff800000 {
 		#size-cells = <1>;
 		ranges = <0 0xff800000 0x800000>;
 
+		watchdog@480 {
+			compatible = "brcm,bcm6345-wdt";
+			reg = <0x480 0x10>;
+		};
+
 		uart0: serial@640 {
 			compatible = "brcm,bcm6345-uart";
 			reg = <0x640 0x1b>;

-- 
2.46.2


