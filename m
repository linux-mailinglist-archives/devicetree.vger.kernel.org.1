Return-Path: <devicetree+bounces-111813-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id F379A9A0193
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 08:41:36 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 23F7D1C233D7
	for <lists+devicetree@lfdr.de>; Wed, 16 Oct 2024 06:41:36 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 1BFA719AA5D;
	Wed, 16 Oct 2024 06:41:17 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b="VOLbOS/b"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-lf1-f54.google.com (mail-lf1-f54.google.com [209.85.167.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D04D19939D
	for <devicetree@vger.kernel.org>; Wed, 16 Oct 2024 06:41:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.167.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729060877; cv=none; b=e5pdkHbmOWCU2vEEBlfTJUSSPSTqs9xxrCWEvTkXYmDcPGGRFmPnnNywBwbZPDijc78Sw/3DAuKcKhNTYNjaADQipDhNzgneByGhx7KDLqfnjryjLCkHwjU3oCNHdHdYXk/sktud/FmBsPC39KBvV7QW/KehKl9JOUqy3GMNK+0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729060877; c=relaxed/simple;
	bh=pXwGRcpovsojOLQLtJxbNr3UDoSW0OCWZwruD8BDxk8=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=VJflqWMUOt4m3EXEP7sAbp5S+qQdUzmzRdmpmuDEuK/kxltTFZIXNocMleOJJP4WJy1NkuOVYqtPOJ14tWuz/HpOlnYaIb9OFL5OjmzfvLPLubgHr7U97CPvxj3u9fq2lSgIzYUiFERzQU0HG9C9MqNibwNzMvurG/aLEfWuHCk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org; spf=pass smtp.mailfrom=linaro.org; dkim=pass (2048-bit key) header.d=linaro.org header.i=@linaro.org header.b=VOLbOS/b; arc=none smtp.client-ip=209.85.167.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=linaro.org
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=linaro.org
Received: by mail-lf1-f54.google.com with SMTP id 2adb3069b0e04-539fb49c64aso4048873e87.0
        for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 23:41:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1729060872; x=1729665672; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=cOsfHDlJmo8umkafLupKpMxdPsfuN4znjWiW3hFd5FU=;
        b=VOLbOS/bQnuDoIaQsNpCKmamx9xG5mXP7fZYyMYycXscI1UgeErNfXuE5VrO8gWAbj
         i/7oX1EsQsoOQ6kbhfOKcNHZr4qpMWXeKmVvXGvFyx4Dz1aYaysoMrLo6Xmhmo7TpRQF
         JT5lhnQUaxs87sjqMtBwHVV44KmMOlHVvNtLIcyMBnCcZjekE5BcLlJ4imAXcJRfWsFb
         wjIIWuOBVdr5c0DMQxYh10Zqp0RS6ExEFg1Jy+bxLDO4fiHyH35hjkmjwl4x4Zz5oAQe
         6Ot5M7cmsSXM+R2lnuAsKwf6dSQz1XhA+r8W6abEwI9gI3iWWiays2jI/rb11Tt8uZKV
         pmfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729060872; x=1729665672;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=cOsfHDlJmo8umkafLupKpMxdPsfuN4znjWiW3hFd5FU=;
        b=qKSjrD1DzZU1LyjgI8M/RThfapZIuqQnEL511InNnrFXBB8CS1PuVyybx+9n3K/qZy
         tS9RtQaxgJJ4fkVnPJRe8fg3oJgqA3l7IDbsj4w7g2LYXaNA30z3KGKpO0dLj/YrL8Ic
         JmOKMnANBL8qY9kAuQkQ81CvMuuzPu3pEUQe7AAAL3Y9aS2hmOsbkEcbF6ZdgahhGODa
         DwwcUHH5qHeSRFofPfouVObdWeMZFxYxnIaBu8bxXOjuxaNRgOw5nhl7i60iZb1mqUBL
         9gowHEmpV8kqoSXHTBC7tqlEPfin0GvW/6dvmJQE64oPIjh1e3kdouNAptyzqiaW/e/M
         V2jA==
X-Gm-Message-State: AOJu0YztAkKChgLTsi0RqIU7jiRKHcShe4+CqjQ+Q5LXdrHrtbjO3WS9
	WeIHJ4iM6QnYxJCeJM/djl04qGJ3a1OPw4HsijnqqX2W1HIV+6VT656KX73XWSmYgV8yPhWrDNg
	j
X-Google-Smtp-Source: AGHT+IGsu+xuIJsXMdj21xMoaGfRZyH1qFEMLBfm8K8kYzHhW1Te4G6gCJofTlsEog/uQSxavkmsOg==
X-Received: by 2002:a05:6512:3d23:b0:52c:cd77:fe03 with SMTP id 2adb3069b0e04-539e54e713cmr9372122e87.14.1729060872483;
        Tue, 15 Oct 2024 23:41:12 -0700 (PDT)
Received: from lino.lan ([85.235.12.238])
        by smtp.gmail.com with ESMTPSA id 2adb3069b0e04-539ffff3a50sm357455e87.144.2024.10.15.23.41.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Oct 2024 23:41:11 -0700 (PDT)
From: Linus Walleij <linus.walleij@linaro.org>
Date: Wed, 16 Oct 2024 08:41:05 +0200
Subject: [PATCH v2 5/9] ARM: dts: bcm6846: Add LED controller
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241016-genexis-xg6846b-base-v2-5-6a7cc2ee57eb@linaro.org>
References: <20241016-genexis-xg6846b-base-v2-0-6a7cc2ee57eb@linaro.org>
In-Reply-To: <20241016-genexis-xg6846b-base-v2-0-6a7cc2ee57eb@linaro.org>
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

Add the BCMBCA LED controller to the BCM6846 DTSI.

Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 arch/arm/boot/dts/broadcom/bcm6846.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm/boot/dts/broadcom/bcm6846.dtsi b/arch/arm/boot/dts/broadcom/bcm6846.dtsi
index 53ae3c7c583b..371c16af27f3 100644
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


