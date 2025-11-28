Return-Path: <devicetree+bounces-243006-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 1F381C92616
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 16:01:16 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id 192E54E5347
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 15:00:56 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7A5A032E755;
	Fri, 28 Nov 2025 15:00:46 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="cHcuRq2j"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A277332C950
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 15:00:44 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764342046; cv=none; b=hgrDoQVmQ6s7mC55sRIOatDl12STlM99l+TZKxJNOSXKcvOqSpH/VeS2hjnQdWNn0n0o76YdK9KRanoS68vC6fRq8dw6ESU8Zy3J2tHk1D+KagwG4oJwE+7Q4wunFCSOLoZ8yACvj8eMIRgfTcoq8JKChke6XNrg7ou3uH9da8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764342046; c=relaxed/simple;
	bh=s2B9NGkEnUaejgEZuS8NbMN+acHyrFZnwnWMuimegO8=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=oeQ/+Y8102U4oUCxfe1WNcfH0bv2xIvbNt18OFqgbg0jq83bPUAieq+sMDhDTXK6QAPsHd/hdKiJG20/9w62eNxx3zuu55WiSDptgv+hzUNtlsu+e+zX+aCqqH6YU9vrvxXjNPFze5bm9+9H5cqfjaX/Y5iS0b1mooirX5F5rXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=cHcuRq2j; arc=none smtp.client-ip=209.85.128.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f52.google.com with SMTP id 5b1f17b1804b1-477770019e4so15673015e9.3
        for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 07:00:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764342043; x=1764946843; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=apczRWkrHKfV9oaltwvcd28nddE2zoSisgUmol/eatA=;
        b=cHcuRq2jiefIZEjJL8Q08MXofYtu+q70WuJilQG6+Tt1pt9bggFdlQzeA4ZMO4G1qk
         Hp7Kl2Enc2HbjNrXBZgrj77+JqzazKKfvqiZvvob4xrTJkh/PZ3x/tE/4UIlHYUR1a+e
         t7sx1g7Kih2WmY3zmdnBgqnSoXvQEWJd/gMAwxzmU7vuwuUEJICp+SGCEL6ymmRmdkaH
         GQTHw9UF/sIliTNHv6PD3ASSg2FBFpgAmdR3pebngOzTT9yS+GsFH3U2ZYdEVOFrlVVI
         ZMfLeX5+YaM4LpZbJD6cMh+v2eG0i+b8DsOr91lUk1TFcVhhgfUOONjkSgdtfXuCvQN0
         NAzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764342043; x=1764946843;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-gg:x-gm-message-state:from
         :to:cc:subject:date:message-id:reply-to;
        bh=apczRWkrHKfV9oaltwvcd28nddE2zoSisgUmol/eatA=;
        b=Xvq85IP1ri6m8bM5HcOopCw9GqMoryWTTSRkc1kQ8qmeoyZopRUGw9ja/S4Dy3a1qD
         TloyOIqseT38mKVnyoZkevKNCXxU3G4CKOA4M5kybQekvb7kUj0kp48uO5H6P1tlQBEZ
         GkLpVU5i1yUIi6JdmqRPVzzPZtw32q3/rxAau+Cqe2i+ScmbN8uu5C7fsOIaNJKVKRK/
         ecXqNPIEW3ookPN8zWYxLsx1PuJnnALGixXXDUm+3cyOKaHXGeN25GLTw1WN0hqiytfV
         fx/0gFVRyF0jx5tJBalp0Gtbt+HEPFYeCVWB492wB1JdeKz0ZCzEXQ4eSJBpHKm2QqU6
         /j/g==
X-Forwarded-Encrypted: i=1; AJvYcCXc3UwXQVNdMBhnqeES+mJbIEqrKpuv3V4G4M21o17a2HFcCc9b1G6obNjpQXugrbG3oYa9Gdbycei0@vger.kernel.org
X-Gm-Message-State: AOJu0YzU0uzOJgeb9tDcbX758Q5YPGyOZdctSw4IAw+K0UQyfV6dkIXR
	zPftLh6CIia7mjYGKU9827+j2WcWqSR1Enj2imuxeQt5/N9BAAJjZ/e7
X-Gm-Gg: ASbGnctSEYXY9nnpytVxIj3wXNCfcghn3tKCGMGJO3qh5tn7fV203FsFE+goUZq+4Wx
	Ec0QqkymQMvFQONvGxmwWj27uzR9Vik9lFo/92xFG+Sv0Iv0CjyoO/jtQ3NQsnHLlzJw7/kkoG4
	PjwV/uj9qiu7ut5x58veIZZVt84RVNogSQHx3t4PZ48Fnz6pBgKnJv3iPv0zpg4BIMRZCxsts4q
	LHmuQB0IKU/fKGIH2hhRXNxnEyHIJF6piyhhCWPSm3TL9oACMzuKRERKFc0p5ZHhCHLQ4pRW7y8
	u7n2NNlsHDe3NG2RLuKedghtouBA/qgqi864B1J1l99IqzwKQSf/1ept7c3+HxuXj4ekkWu8Rfw
	TG58TkIUaLmzGsvKI0KOslTmp35SQ4b7i2bO2UBMKRBvjLJyNwfblSEbbWApac9rAGFoifFIF6+
	C8q8swRO7Jog2YuIzw3sVSCP+xUUE=
X-Google-Smtp-Source: AGHT+IGZ5phRRYX+v7P/fz+XER6nFyz0G4tY9Gcl8oDgTYqo9/i0jpjq8twM7C3UskdUr1BNUjh8fA==
X-Received: by 2002:a05:600c:1c24:b0:477:aed0:f40a with SMTP id 5b1f17b1804b1-47904b1af90mr189698325e9.19.1764342041970;
        Fri, 28 Nov 2025 07:00:41 -0800 (PST)
Received: from vitor-nb (bl19-170-125.dsl.telepac.pt. [2.80.170.125])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47905303963sm93117975e9.7.2025.11.28.07.00.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Nov 2025 07:00:41 -0800 (PST)
From: Vitor Soares <ivitro@gmail.com>
To: Rob Herring <robh@kernel.org>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Conor Dooley <conor+dt@kernel.org>,
	Shawn Guo <shawnguo@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Fabio Estevam <festevam@gmail.com>
Cc: Vitor Soares <vitor.soares@toradex.com>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org,
	ivitro@gmail.com
Subject: [PATCH v1 2/2] arm64: dts: freescale: imx95-toradex-smarc: fix SMARC_SDIO_WP label position
Date: Fri, 28 Nov 2025 15:00:28 +0000
Message-ID: <20251128150030.35931-3-ivitro@gmail.com>
X-Mailer: git-send-email 2.51.0
In-Reply-To: <20251128150030.35931-1-ivitro@gmail.com>
References: <20251128150030.35931-1-ivitro@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Vitor Soares <vitor.soares@toradex.com>

Fix the SMARC_SDIO_WP gpio-line-name position. It should be on line 15
of som_gpio_expander_1, not line 17.

Fixes: 90bbe88e0ea6 ("arm64: dts: freescale: add Toradex SMARC iMX95")
Signed-off-by: Vitor Soares <vitor.soares@toradex.com>
---
 arch/arm64/boot/dts/freescale/imx95-toradex-smarc.dtsi | 2 --
 1 file changed, 2 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx95-toradex-smarc.dtsi b/arch/arm64/boot/dts/freescale/imx95-toradex-smarc.dtsi
index 2cbd5606cb19..115a16e44a99 100644
--- a/arch/arm64/boot/dts/freescale/imx95-toradex-smarc.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx95-toradex-smarc.dtsi
@@ -406,8 +406,6 @@ som_gpio_expander_1: gpio@21 {
 			"",
 			"",
 			"",
-			"",
-			"",
 			"SMARC_SDIO_WP";
 	};
 
-- 
2.51.0


