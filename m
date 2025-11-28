Return-Path: <devicetree+bounces-243004-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ams.mirrors.kernel.org (ams.mirrors.kernel.org [213.196.21.55])
	by mail.lfdr.de (Postfix) with ESMTPS id 007F2C9260D
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 16:00:43 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ams.mirrors.kernel.org (Postfix) with ESMTPS id 9F6AD34AE8B
	for <lists+devicetree@lfdr.de>; Fri, 28 Nov 2025 15:00:43 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 6E6C932ABEC;
	Fri, 28 Nov 2025 15:00:40 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="Pd1LQTZs"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com [209.85.128.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9E8512C236B
	for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 15:00:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.54
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764342040; cv=none; b=tN6yNDOZ3vWdYqgMQCE4qiByTdTndOWGdOcrbi7nFh4cJ60NwmtXh3/fgUMOWLYaS1R00BzKMGt5dT5hKQSVq61NQjkprpIYs89fh5/Z0J7snUdR4WG/jIRTMxmyH+eI+vbUkjyUBgO/7qtbOdnVuHfqdhI4ePnWgcfWcgIA8XA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764342040; c=relaxed/simple;
	bh=TciEAbtsvGcFZl9jW4Er9twv3yB42WbQ0zm1R7TgeSs=;
	h=From:To:Cc:Subject:Date:Message-ID:MIME-Version; b=r+7ZumrMhQIq7S4rU0FVS962YC5CVOAVlavNTaSwHGbofkP6DZb0tIpvKoNWRsr4a1qlzUlMGXTwcDdu+bC4ehYKRj3IY0AHIlZxOXc78vQL76pRoLo6IdRBmLHIE1vkT64I/kO3PriJgwXGrIN+v9+TlTXsCS/UKNwq3U4aSeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=Pd1LQTZs; arc=none smtp.client-ip=209.85.128.54
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-wm1-f54.google.com with SMTP id 5b1f17b1804b1-47118259fd8so17233665e9.3
        for <devicetree@vger.kernel.org>; Fri, 28 Nov 2025 07:00:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1764342037; x=1764946837; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=3grBSr7H93iE0zqeBum2PxxsOd5GXTmyNW+XcIPut+Q=;
        b=Pd1LQTZsqchYPFD4dRZYLTr6b7xbV7uqOrVUSNg/8jSWeV07NoZzM4lcDdS+rHcxWZ
         qFqNc4mP9XsxE2oUJ+9UpcDaukAhuGb/yP34mbL1DClbnD82Y8pKS6UhzosF9FhsY7dR
         7VsqIHWa4O1JwvluSaAwgqk2edMVT+LiENh2hZKrBKkvSn4DIGUFD1LG2Q4IpqIQRWtD
         a/VTlMSu3mL1OZF7xyjRGsV0u24jciLg5ASewVpmOG2kF6Xxk4J7ql2Bo4JO+R/SE1xR
         cNvx3mgSwYfbChohwQGFvfSU/l6dQ4QBaIbLXTOfGbUcIhy9/R/W8jxeNIOg+EyvsDKH
         51dQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1764342037; x=1764946837;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3grBSr7H93iE0zqeBum2PxxsOd5GXTmyNW+XcIPut+Q=;
        b=d02CqaHTA8xtKrhPcvTlIKAxoYfOf40bL4GxDsoRkniHlgFEUoWFGHZXtGAlyt+J36
         q9C6q8R/yZ2q9T+Fi7Zar/53brP9Z62M8cHp4N5Q+oO7CKKbXwwgGgZ0sbs3DtZdfgKL
         E/UlZxq4HKnbPI8Weaax8ePGHp2PAz3cD6QtWgBLXfHZF++7hW22t33hth5w4SBfujU8
         gHr8bxzmD6hWpD5iz6Gmkn0Qt5miUcP5pNKQyrEEX61U71fBkIXtNZ1e0QJPIjr9GRyM
         vWOqFqIa5D23ui2yfaZT/rUVlfRSHtETY/7kBytlky/guPawH6fhs0w1CU2l1G/w2rYC
         w/rA==
X-Forwarded-Encrypted: i=1; AJvYcCVwBVgtMgSNa9Jp5sjqM6tzSy774XN8XCCDMgxR4vJXy/DKGBA0mFNCzGgavBRddmQTxFrX3u+PO76v@vger.kernel.org
X-Gm-Message-State: AOJu0YwWFVW6VOUcLApsn9wKJvJF+snyMMTRvMBZ8f11z4na78XhfOSQ
	+8i0AJjqMUcYxYztolOYlWptcPcGIx5M9hux30gOyA+bjnZqvh8rOwKQ
X-Gm-Gg: ASbGncv0RjbAa15BLqgX4cIyoyoeYvn0NKnhpPdmyi05XBihiEBQyLwI93tg/+MwrQN
	nqYYLdgxUdhqbh43K2yYO1J4qIbg0Q8c7MgvPCBD2qLaXVvrp44aQVfj4y43Ai5B1OS8AreD10T
	q9cu9UXceHvK8U16y9Q9MMcoU5vE7U7DRMVjedyMzjId/df7yIQIb+hAD2TpY8HXvZrQjWPYmb7
	D6Va/rkuGWWZQNo0hMcfU13bV87fXAo8PGpKCo0egOI8JMVip75R9v9C0IR3XcqXsItnyOHXiDx
	r0eRMuFCuRrLC3jZtmyXfIRsuPIapEG0Lt7ljQIIq0VSgxoMpZlkySRddH1cC0vNYIc6gWieZiU
	xuJ3yKM/bD9bLEbWdoWf8qIRkJx4SslZlaVzTa7J0C+i8iZJezxDNvXMi1inrK/PwrCuSx2OEuI
	1pb1zyUnxmahvNDb1SeqCA8UdoexU=
X-Google-Smtp-Source: AGHT+IH4P6a2V/tjh2KXwjJUvz5Qdlq1GmBHoCSVv5o2GzhLFLANE09Z8jLPuflofJUEZAkCRfafag==
X-Received: by 2002:a05:600c:1c19:b0:477:7bca:8b3c with SMTP id 5b1f17b1804b1-47904b10379mr201004035e9.19.1764342036665;
        Fri, 28 Nov 2025 07:00:36 -0800 (PST)
Received: from vitor-nb (bl19-170-125.dsl.telepac.pt. [2.80.170.125])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-47905303963sm93117975e9.7.2025.11.28.07.00.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 28 Nov 2025 07:00:36 -0800 (PST)
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
Subject: [PATCH v1 0/2] arm64: dts: imx95-toradex-smarc: Fix ethphy1 interrupt and GPIO labels
Date: Fri, 28 Nov 2025 15:00:26 +0000
Message-ID: <20251128150030.35931-1-ivitro@gmail.com>
X-Mailer: git-send-email 2.51.0
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Vitor Soares <vitor.soares@toradex.com>

This series fixes the ethphy1 interrupt configuration and corrects GPIO
expander line names for the i.MX95 Toradex SMARC.

The first patch changes the interrupt trigger type from level-triggered
to edge-triggered to match the PCA9745 GPIO expander hardware
capabilities.

The second patch fixes the SMARC_SDIO_WP gpio-line-name position to
line 15.

Vitor Soares (2):
  arm64: dts: freescale: imx95-toradex-smarc: use edge trigger for
    ethphy1 interrupt
  arm64: dts: freescale: imx95-toradex-smarc: fix SMARC_SDIO_WP label
    position

 arch/arm64/boot/dts/freescale/imx95-toradex-smarc.dtsi | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

-- 
2.51.0


