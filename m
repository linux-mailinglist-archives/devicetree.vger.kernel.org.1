Return-Path: <devicetree+bounces-210939-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 60B02B3D2C9
	for <lists+devicetree@lfdr.de>; Sun, 31 Aug 2025 14:22:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 0206F1797B1
	for <lists+devicetree@lfdr.de>; Sun, 31 Aug 2025 12:22:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id EC90F258EFF;
	Sun, 31 Aug 2025 12:22:31 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="BwKxziMl"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wr1-f52.google.com (mail-wr1-f52.google.com [209.85.221.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2767B257828
	for <devicetree@vger.kernel.org>; Sun, 31 Aug 2025 12:22:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.221.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756642951; cv=none; b=O16aEpBnUZnMdo1HZbIkomHZtiTorf2CpxzHyLrBGeaVLFJQWzWVQ/7xByg36p/ojaxGPa7mbcKVvpx5qn3c+7ebR5lJQyBLelGeZwOQfZRrFmw4MnjJlpx8f5c67AhpVxNhPLdslJajVkOnWEHe7j+9QRkptaSyJLX4RX6yA/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756642951; c=relaxed/simple;
	bh=zYRCQi+0wejFXM/43WXjQP9aWgNnIJKlUNtum34adHA=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=JDlWhj9VGTuS4tIupYzb7GTYQFlTAq9g64Rc+6m2cDPNKKOnUU/6OjaO1qlb5Fy10ymiUrkP93zK+gadkTDyp1MpwBd5fX+mc6H9KQf2OzMzNC31PsI45i3HlIn7WR9Pj8dMU5NWlg7GFRCLw8waUBoprtFZjoT3OWWAdoR+ePw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=BwKxziMl; arc=none smtp.client-ip=209.85.221.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-wr1-f52.google.com with SMTP id ffacd0b85a97d-3cd299b1833so436477f8f.3
        for <devicetree@vger.kernel.org>; Sun, 31 Aug 2025 05:22:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1756642948; x=1757247748; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=XlZf3qovc7XadcWpXTOZUbLWBNy6tyoy94Ss5nrbIig=;
        b=BwKxziMl6kNtOdHny7q6UIBmJgLV+0zu51UYrmLTJ3Y2Yf9SSjnnmci9DGpK0t7/UD
         MISwNmYY3r+UTPqUz4yCl74vCvdIElqyWcjAc9Yutok++8gxaenmFpSLoqCGHlc6LfY6
         VJQ9VxJeCSeDYyGbDhhQo6Z77cRSeLkESDhB77cyWpvQ3EZsthvcagnADqq5XcFUlUBW
         mudbRFaxTCulMlqRGHoEI6L2BYH7WlKXtv1gixlZQczUtX0b2DNicVQWHxKIbpGm8R89
         cP92i6CH7elLR9zhxehL0LaOgTq6B8mbBKwqeLJYAQFV5go5uu5SqCaFIcEv+XOh4WQ3
         /OQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1756642948; x=1757247748;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=XlZf3qovc7XadcWpXTOZUbLWBNy6tyoy94Ss5nrbIig=;
        b=rDxHy4rtjHmcNP9EzfbD5fDcr0hR0I2OpQgBy14e9nhVczyrsrlD3lJiIjaBhINq89
         MT+kYDlM/sjP8nVpMJZKtMOemw80dgawZDqiDuHq1PFI4MR3RJtfqAYG0U7mZTDl0wA5
         r+7EgOdekcPGpsF/KaS7+floqpCZu/ZKHF/i7GrN0as1vFg1I3HCneaj/bZovOA/Neup
         bK7eiFnGQ/stfKK2PVDT0gxZOryPtbOZB5MgKVcylcnDX/layUjnsiW2etbmMzSgPuGz
         Ru8wevDzGlSrFQpb3FC2JNkmRTp9K2rkCXAh1dpEB3y0W4itQjMOpWVk6eJihwka5fAK
         jKEg==
X-Forwarded-Encrypted: i=1; AJvYcCW2IoZHLtLFoTbKivEmypWFhGsv2QThvvRYVXFTaRx4s8mPQx5cpmvgaEIIFrWlxX4FvW0sSMz1OCZl@vger.kernel.org
X-Gm-Message-State: AOJu0YwTi6bUN2/9AuWF7aVsif1994cNI6gIiKZOXnQyTvCN9euut5XW
	2kcxJO86224GpW3rRkoiGMiWuvL/9ay7HnAefdoOvZQtaaKAGbN3F9TPqTelK5ovbsk=
X-Gm-Gg: ASbGncsIacJjrkGQICkqqlJZC71H6EbA155lbDjCyNxOTnysinXVLtJ6P/WLnw58qMk
	7qi8K7iB8ykDPLQptkQbEEMvZ4CCc/TK4Bl3f0jahAfRHmbmAnnMhwwScGfRyzin4goVHINombr
	jULhkIPrSSHmNC/f8yqYWApY2RIiHheKtNKDjeZ7HM8lTXoiyHmOe6zUoOJwLhM/K0L5d7c+L6A
	Fb8OERIhHc4Qr3oXsFpvNnQSta4hY+HHP9c8NaDe9Gg8gGchl4r4JYHk4WZl8kOK4oYae2xoeri
	Px5KGbb2ocTjtV8grLGHsAq5uMtYmAmUbnwnr2PZHmlGv/TiJ6E/5mqjoH+q+PfsPvXbgWqLvrs
	Y5AkHJA23EPIf69jgijbILERunsWKsHR96EdT/GD+pMEd
X-Google-Smtp-Source: AGHT+IFnFYjlAZftIcXFAXoUbNXxsZRoP0QGkBeFfD6J1UbS/LZNxNdYQv7RKd53VW6gkvcHWeZOPA==
X-Received: by 2002:a05:600c:4e0f:b0:458:b6b9:6df5 with SMTP id 5b1f17b1804b1-45b81eb0a80mr29694345e9.1.1756642948423;
        Sun, 31 Aug 2025 05:22:28 -0700 (PDT)
Received: from kuoka.. ([178.197.219.123])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-45b6f0c6b99sm194866225e9.4.2025.08.31.05.22.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Aug 2025 05:22:27 -0700 (PDT)
From: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Alim Akhtar <alim.akhtar@samsung.com>,
	Alan Stern <stern@rowland.harvard.edu>,
	linux-usb@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	linux-samsung-soc@vger.kernel.org
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 2/2] dt-bindings: usb: s3c2410-usb: Drop entirely S3C2410
Date: Sun, 31 Aug 2025 14:22:24 +0200
Message-ID: <20250831122222.50332-4-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.48.1
In-Reply-To: <20250831122222.50332-3-krzysztof.kozlowski@linaro.org>
References: <20250831122222.50332-3-krzysztof.kozlowski@linaro.org>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
X-Developer-Signature: v=1; a=openpgp-sha256; l=1505; i=krzysztof.kozlowski@linaro.org;
 h=from:subject; bh=zYRCQi+0wejFXM/43WXjQP9aWgNnIJKlUNtum34adHA=;
 b=owEBbQKS/ZANAwAKAcE3ZuaGi4PXAcsmYgBotD5/mW0FdtzwHuJEB4jcnGQja4NpqHdMXn3m9
 yr02e1dX5iJAjMEAAEKAB0WIQTd0mIoPREbIztuuKjBN2bmhouD1wUCaLQ+fwAKCRDBN2bmhouD
 11FXD/9XsBkrYV+LeU8wPHs+IkpJtomIWP8qNp9O5Fuo8nvKiNG+p1IZgJXhKnfr7WVNTGb8825
 DkoR99gRgG97/ze6tYvEnIMOF+GuMk35ywxX0maLWdsoVbNK4QAM0hVLsI0FUDZSPHabkrVupA4
 Nb4VFWumhNpbq196L6xerhRrSR+VRgM7H6dH6Q86Le1VE6YQxtd8yrfBh5glKK0sgI7XT7m92x+
 elu7YdlGWs08O/sKb5hB05fmWdEwOu1Ll8oIcbCVmhHZARL46oHXXtuIhJftYHBtXnyXQXQxcgF
 FQDmQCPqeAA9O6ET1I1T/nOySfqXOOFG10cZ6LnaKpFvDkiRNYmvv4GP8cfdeFoeyWPnl0quT4R
 wuvG1uyUviTUHQMIZJJiwGKvXr4h7tIVj5IndB69owM9m9skryq9szWpz9G9gba2FUYkNCCZk+b
 443uSbn5LIYHIyAAC8GGPK/NUu8S6D02qL1+Y2MW5ZMtdBGYMGIguGZ7zC9zJdiqsqtOQwL6vla
 2O0Rh5PROZLIGmoFKl1M5br3SFOYN5M+o1z1ys6HbGlXx3kaJX/MI4eRXDadtJVXhDZhwQNOSgS
 6TOb32kG2bVZ8U4OVxlNBxBY8n4dNLfKDvkvB1iXXdP2l4lUEVmg42TSvg98KRVZFbh/swPe6Ap Hawqd3N/hMNEfkg==
X-Developer-Key: i=krzysztof.kozlowski@linaro.org; a=openpgp; fpr=9BD07E0E0C51F8D59677B7541B93437D3B41629B
Content-Transfer-Encoding: 8bit

Samsung S3C24xx family of SoCs was removed the Linux kernel in the
commit 61b7f8920b17 ("ARM: s3c: remove all s3c24xx support"), in January
2023.  There are no in-kernel users of remaining S3C24xx compatibles.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes in v2:
1. None
---
 .../devicetree/bindings/usb/s3c2410-usb.txt   | 22 -------------------
 1 file changed, 22 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/usb/s3c2410-usb.txt

diff --git a/Documentation/devicetree/bindings/usb/s3c2410-usb.txt b/Documentation/devicetree/bindings/usb/s3c2410-usb.txt
deleted file mode 100644
index 26c85afd0b53..000000000000
--- a/Documentation/devicetree/bindings/usb/s3c2410-usb.txt
+++ /dev/null
@@ -1,22 +0,0 @@
-Samsung S3C2410 and compatible SoC USB controller
-
-OHCI
-
-Required properties:
- - compatible: should be "samsung,s3c2410-ohci" for USB host controller
- - reg: address and length of the controller memory mapped region
- - interrupts: interrupt number for the USB OHCI controller
- - clocks: Should reference the bus and host clocks
- - clock-names: Should contain two strings
-		"usb-bus-host" for the USB bus clock
-		"usb-host" for the USB host clock
-
-Example:
-
-usb0: ohci@49000000 {
-	compatible = "samsung,s3c2410-ohci";
-	reg = <0x49000000 0x100>;
-	interrupts = <0 0 26 3>;
-	clocks = <&clocks UCLK>, <&clocks HCLK_USBH>;
-	clock-names = "usb-bus-host", "usb-host";
-};
-- 
2.48.1


