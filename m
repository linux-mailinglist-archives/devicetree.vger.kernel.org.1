Return-Path: <devicetree+bounces-113280-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sy.mirrors.kernel.org (sy.mirrors.kernel.org [147.75.48.161])
	by mail.lfdr.de (Postfix) with ESMTPS id 224559A50C2
	for <lists+devicetree@lfdr.de>; Sat, 19 Oct 2024 22:39:51 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sy.mirrors.kernel.org (Postfix) with ESMTPS id 65700B22464
	for <lists+devicetree@lfdr.de>; Sat, 19 Oct 2024 20:39:46 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id AFF151917E7;
	Sat, 19 Oct 2024 20:39:42 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="CdbSJ7uJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com [209.85.167.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 92B271922DB
	for <devicetree@vger.kernel.org>; Sat, 19 Oct 2024 20:39:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729370382; cv=none; b=RfKLzjAXsw7G/EZvhzSosZ5ywcBCJdg8qDNp05fGQ7heimoUUCy5TxY9blPO/F2mJKtXetDYISXY567AvwQ5G2/8/+uk4hdJf/nnEY0HFSkB7Heb50wWdr2+7NWIbMPKnhWRjDycxt3wCeUfeCO/QkpFjUIJs/My8DlrOmFfzYc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729370382; c=relaxed/simple;
	bh=/xnscvTEGtPlmUwodqJdMVeOQ1BPzbaLDl3BslWRi88=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=ZInf6xigM8SRRdBmE3hx4RhIHvb2kvTtUlUWA01Ne9wf+VZ36FC2DwftCEHMDSNM/zo0pNTVYaoHMwJ9rXTVUIKND0lmYUbhaYb+Akv+SzXm6+AvliarFFiUc/mPz5Mne6BL+wULJjJZwmm1uihRskne3PY1iPCVV2ooC4HPGh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=CdbSJ7uJ; arc=none smtp.client-ip=209.85.167.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f52.google.com with SMTP id 2adb3069b0e04-539fbbadf83so4109081e87.0
        for <devicetree@vger.kernel.org>; Sat, 19 Oct 2024 13:39:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729370379; x=1729975179; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=OhWQnF8BCkwCGLa8qrcOGNDmv8gEfnDZzrj7T2kyZh0=;
        b=CdbSJ7uJp3EfV3MYxBAylZPxHX+y44wd+5C6mluQrdvQ5xVIJNRwsA1XvM0Rh6udR7
         gH/KjvQXGURmb0qHzbUH+ohz+L2r/WiOy0zKJfHGQ7mXgn0YqlDxp5PcisWWwnwegWOx
         9eRzh9DXicQ4+Lcqi8mmsjTbFGu3EY9JfCQg+UdKeT8PybK5LIU1M4Bgx1rR52vcxZdh
         DIqk+47afltWnoFSgcKFd6xE4WOtNBkMr21B5Z1EICEeUCbQpBFXR/itr/YLwcPNJ8Qc
         vtn/++D1wdkzzrFXZbtjdoaYcKRacmiccQgRQ/0mI0pOpUDv2zdYdsJcOe0OubCUwuJz
         hHdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729370379; x=1729975179;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=OhWQnF8BCkwCGLa8qrcOGNDmv8gEfnDZzrj7T2kyZh0=;
        b=bZg0hk7rBx8ViZ6ctkHXj2u/Cgs4X7Xa/twXb755Pit8k9XaUkdOh17gOOTkjWcWVZ
         Nl696xcmXHpwv4NaAxYrpvwRnVQ14+JA9OvrZL/b0IgDCajGfzMvFR06NQF2fggX4l22
         OK3Fa1jPAdtNLTugoaB9gVaPGKJLJywL1jh1GtVJVzRDOFxEr1CiUulHK9EJ1DCUTkCk
         CI3GdWvT94EI1l8KGi6eC19Ihq44p31x1Wskiaryg+g3XOiS4OyqnXFOSzwqlNImUhBS
         iZZJXKITusZfYkcB8QwtWBnQ73nM9N5iawxKbniJvDfqmPFvDU3Hiv6RLOUxAxqhD3LQ
         EN/g==
X-Gm-Message-State: AOJu0Yz32kW2NsMC4r07A6lxV7vE9tRjQsHIZ8eonPLMz9Y5DGfBWSzj
	Gn3dRtfUgw4HFsVwwOFaY1OKB1y7VIKCw4FbOTeHdii/BC4x5pIcrnnLoldUJfA=
X-Google-Smtp-Source: AGHT+IFJTlkKUsd8fSIH7OhL9HlvFmA7N2n8O6YZN6HfOEwdfUBIDpZAU2T/ltVuYeCJclGfgNlF4A==
X-Received: by 2002:a05:6512:3b12:b0:539:f807:ad93 with SMTP id 2adb3069b0e04-53a154e76acmr3573673e87.38.1729370378539;
        Sat, 19 Oct 2024 13:39:38 -0700 (PDT)
Received: from lino.lan ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-53a224202d5sm37564e87.136.2024.10.19.13.39.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 19 Oct 2024 13:39:36 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Sat, 19 Oct 2024 22:39:33 +0200
Subject: [PATCH v3 4/9] ARM: dts: bcm6846: Add MDIO control block
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241019-genexis-xg6846b-base-v3-4-8375a0e1f89f@linaro.org>
References: <20241019-genexis-xg6846b-base-v3-0-8375a0e1f89f@linaro.org>
In-Reply-To: <20241019-genexis-xg6846b-base-v3-0-8375a0e1f89f@linaro.org>
To: Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, 
 William Zhang <william.zhang@broadcom.com>, 
 Anand Gore <anand.gore@broadcom.com>, 
 Kursad Oney <kursad.oney@broadcom.com>, 
 Florian Fainelli <florian.fainelli@broadcom.com>, 
 =?utf-8?q?Rafa=C5=82_Mi=C5=82ecki?= <rafal@milecki.pl>, 
 Benjamin Larsson <benjamin.larsson@genexis.eu>, 
 Broadcom internal kernel review list <bcm-kernel-feedback-list@broadcom.com>
Cc: devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org, 
 Linus Walleij <linus.walleij@linaro.org>
X-Mailer: b4 0.14.0

This adds the MDIO block found in the BCM6846. Use the new
"brcm,bcm6846-mdio" compatible (merged to the networking tree)
for this block.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/dts/broadcom/bcm6846.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm/boot/dts/broadcom/bcm6846.dtsi b/arch/arm/boot/dts/broadcom/bcm6846.dtsi
index dc0c87c79569..d6f5fe740ca5 100644
--- a/arch/arm/boot/dts/broadcom/bcm6846.dtsi
+++ b/arch/arm/boot/dts/broadcom/bcm6846.dtsi
@@ -223,5 +223,14 @@ nandcs: nand@0 {
 				reg = <0>;
 			};
 		};
+
+		mdio: mdio@2060 {
+			compatible = "brcm,bcm6846-mdio";
+			reg = <0x02060 0x10>, <0x5a068 0x4>;
+			reg-names = "mdio", "mdio_indir_rw";
+			#address-cells = <1>;
+			#size-cells = <0>;
+			status = "disabled";
+		};
 	};
 };

-- 
2.46.2


