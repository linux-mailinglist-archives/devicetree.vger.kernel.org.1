Return-Path: <devicetree+bounces-117385-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [147.75.80.249])
	by mail.lfdr.de (Postfix) with ESMTPS id 387AF9B60ED
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 12:03:28 +0100 (CET)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id BA56E1F225DE
	for <lists+devicetree@lfdr.de>; Wed, 30 Oct 2024 11:03:27 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 7D7961E8851;
	Wed, 30 Oct 2024 11:01:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="FJW+i4xV"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com [209.85.128.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9B271E8850
	for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 11:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.50
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730286116; cv=none; b=SBoBxookCWcpt+y0jBdn2ybZ16gi4j73oq17T+em7kbtBWLGhdBhRvlkLbXrfU5h+ctP17JOEqC7KTbHoKjd7XeFMaj0DGGx8lDxI5ng7J5KRGX8HVogm1mBjl7IzQQqoKUMvUxnEMF6mUNqP2L9miCqptBy5dpNelszjDMX4SI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730286116; c=relaxed/simple;
	bh=kyir3JEG5+6DbB/0JMXlelJP87co/+s1ZGU+FQQMA3k=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=EILp+kZkYLIZNSqtRV8+3vd/Iw6zU4Gnu/pWtK8T3HHA0DAnyNmIjC/GRcIv4A1tGHbqjqepGlFGudfhAfFJoZ8NNcJbs15ME4xPGs4nuRP/hOK1jpp2pSfJdd1PLsyhlK7ZVsEUULr6W0r2YVdLNUOO/1qUW43IJa/J9QeE7ak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=FJW+i4xV; arc=none smtp.client-ip=209.85.128.50
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-43161e7bb25so60239615e9.2
        for <devicetree@vger.kernel.org>; Wed, 30 Oct 2024 04:01:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1730286112; x=1730890912; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=T6d1zYErtt6QdLWN37Xr5fe5oN1ubht0jqLtcLPDyds=;
        b=FJW+i4xVJ5AEyqERaxA4g2xz4ZwpE5YXwkWNT2ge7pb+azrBBKMkzdIpkvF5gO9A/M
         +YZblq9RuCZSKyVJXaGcWs1WjD9LKngZhAyF2w9D4tQUZsxiNVTfl7bdY6wKF8w7tmlw
         iluXT88GwxqtllRE0goMuMuck4iQIdZyJtUqz1jDi40iXEvIU8ZjCoNc7mj7TEro38ct
         VrmASCxUTOuj03wx1YTxIkZAV4+6xmApAim0eWGdlv7pEyJ+lzLj9cwvDWOltlQN/ouk
         pnLhC5YI9bv9lQ3P4/KwjMTyY8kYNGWXT1f2s32P58irGhl8H67AZrpcefQC9qyR536A
         rf2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730286112; x=1730890912;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=T6d1zYErtt6QdLWN37Xr5fe5oN1ubht0jqLtcLPDyds=;
        b=n3x3yiAKCMrsITc+fJeRhRnfc0+0fUxAuGDYORpBbg38JLZr5wwrfd7i/g47nx7G8C
         czTu3uuV5bqTtmhAuCp+LkwqdKBHei/KzVaDvEz8zXkM2LjAHV+fsyGYZqJ/tY3uSDh7
         aNzH8wtqxwJkpndvBoq91+galHM7Og8ChW8B2qNzgdXaGhV0TIngYt+3shqiMKeTVlKc
         8MgXFnkXWm3mnPe/EeXC/ASOE+p1B16iU9eJ3RN7aKLzZmK8YQIpnUXnRgwp4Ivlvmn2
         WzLAoz3FvRJt7cvoHyme/uPOjvArfUwNJvzrR/TfTg87kvPocUc9dUEAE4+Am3LpZQ3z
         hqyA==
X-Forwarded-Encrypted: i=1; AJvYcCWRBkOi3Q6vDUnKYYZI90Kd3pgPIEgHecbWOKvp/ewnv/B8w3G5HepI77c8QmgMt6UF1BvXb0O4OPJp@vger.kernel.org
X-Gm-Message-State: AOJu0Yy1mIJKQan1vw0XbraHLQFQ8tvI+gv99mjPrdFUDdanMwnFNS38
	WUk/+tx8c7xXX20etfBn92n82z05WEzhSqqZGlRgKygty5uQ4l6D1gRNIIueplg=
X-Google-Smtp-Source: AGHT+IHGe0bvz9X7exQp8lHGjNHl0u1fiwa/DD0OtcpsRQbPlicMRE8mwu6Ni/h1QGYotgNsQMhw7w==
X-Received: by 2002:a05:600c:1c9d:b0:431:5187:28dd with SMTP id 5b1f17b1804b1-431bb9d1675mr22685875e9.28.1730286112159;
        Wed, 30 Oct 2024 04:01:52 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.190])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-431bd99edebsm17956935e9.45.2024.10.30.04.01.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Oct 2024 04:01:51 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	alexandre.belloni@bootlin.com,
	magnus.damm@gmail.com,
	p.zabel@pengutronix.de
Cc: linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rtc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v5 09/10] arm64: dts: renesas: rzg3s-smarc-som: Enable RTC
Date: Wed, 30 Oct 2024 13:01:19 +0200
Message-Id: <20241030110120.332802-10-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20241030110120.332802-1-claudiu.beznea.uj@bp.renesas.com>
References: <20241030110120.332802-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Enable RTC.

Reviewed-by: Geert Uytterhoeven <geert+renesas@glider.be>
Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v5:
- none

Changes in v4:
- collected tags

Changes in v3:
- none

Changes in v2:
- none

 arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi b/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
index 30bb4f5a7dfd..2ed01d391554 100644
--- a/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
+++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
@@ -345,6 +345,10 @@ mux {
 	};
 };
 
+&rtc {
+	status = "okay";
+};
+
 &vbattb {
 	assigned-clocks = <&vbattb VBATTB_MUX>;
 	assigned-clock-parents = <&vbattb VBATTB_XC>;
-- 
2.39.2


