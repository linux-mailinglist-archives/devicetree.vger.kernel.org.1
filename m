Return-Path: <devicetree+bounces-94756-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from sv.mirrors.kernel.org (sv.mirrors.kernel.org [139.178.88.99])
	by mail.lfdr.de (Postfix) with ESMTPS id 70A4F956870
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2024 12:26:35 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by sv.mirrors.kernel.org (Postfix) with ESMTPS id 2F137284CDF
	for <lists+devicetree@lfdr.de>; Mon, 19 Aug 2024 10:26:34 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 4B75216BE12;
	Mon, 19 Aug 2024 10:24:25 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="oMt3pAEk"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f46.google.com (mail-wm1-f46.google.com [209.85.128.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 938D416B73E
	for <devicetree@vger.kernel.org>; Mon, 19 Aug 2024 10:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.46
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724063065; cv=none; b=e1fPR07Md5wbkoSmHj7wXmG8SlTmKwNGTBD0ZDxeZ6qUqWUOMJBwhFK7CkYpWYxDmuyeQhI2luu07rV7jjQ4oUne63UXx95YTDkoR2b7SIeprxcXr6XyWaFP9lV9r4ArzS8dhCeSwmuggpVKqjdGREd1sdn/FXh7h8JDok2GWJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724063065; c=relaxed/simple;
	bh=6dxetGM5vmL5SbPPHVy2B1Gw76+hss5JlYQEJT4DiXE=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=I/Ud5yjDzBdkTMXz5wMwvnvfHOr6ydJ8nS+Fr1I+JtCv0gQX8AtVLzAGNKDdYSGYuz3pbje7DPvvVycrYSBzpVlkSSUIVC24OFTDq37jbrl9s8DDupRZFFpvie8vJGqlm65eKtWIprOIBYSmRu2Zeq3VI562410QlT1LMe9aElg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=oMt3pAEk; arc=none smtp.client-ip=209.85.128.46
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f46.google.com with SMTP id 5b1f17b1804b1-4281d812d3eso45465045e9.3
        for <devicetree@vger.kernel.org>; Mon, 19 Aug 2024 03:24:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1724063062; x=1724667862; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JevMdo+s9e0DzWfmlUF9Qlit9bWNc3VwroIkxBEWZ5g=;
        b=oMt3pAEkO1PKJl/m/ffCYBRYvE+O/JWqMJY39ZoKiDwG9X6VaHGE1/xm70pJN3oMbY
         ogKCMLBU3iCC9480Rdnfan8+J5Ol3YUq0CNhODzXSdY1DrP1+HU0k6emtERHv+Jdh9sE
         HQIETEy0qE2W7tEzW2F3QDQIlgCVr+JsTOw8rgAJRNrft7EjvaaHQ6Jc2Nd0jwwH4LMN
         l+vlSzz5bmwMHuoqzsdtX5eBONrmN93+VpbBZ0Kj6pJVdOq3S1GbWiZJsNX1nSA6xYBY
         ZtXq+U4W0STCAMa+gqw5ZrzanCVDcGTCVHubUa+scHfmlUQrvBHMxlRzZ2sJjmE0NUmV
         aJ5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1724063062; x=1724667862;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=JevMdo+s9e0DzWfmlUF9Qlit9bWNc3VwroIkxBEWZ5g=;
        b=bzLGySAhP8OWkGtBE4GhAW4TsiTyhUMBGzBEtPJcUs5SuYDlKZZFxyhhiczdj9nK+J
         uH1PX2jmSYBaDG74SghChiKg7g/mdQUsOFPyarkHMANYAzhSFAQhRRywVs6QsdW7IFHu
         H6tVc5WncOilyDgatw1n6jWN7mUvjPmmdypXZP+uHMHG5X9whqGJgb8y2WXvVf13aUOD
         ix3RTi6u6qA0vK1TGUDThMPBln41cDrn2CVyC7DXb8LnE2YV+v9ba90VkOGFSpk8nqTZ
         bFtqee4nz3aD5EZDg+1CcL7HY7Tf+Sz2TuTgriZZ78IQBsp4xrelROmbU6rdal0U47sf
         kh6Q==
X-Forwarded-Encrypted: i=1; AJvYcCU8cbXpKrcc8tU0pD5ZtT+DzNuIogvH2yyRPtQIgvWRNF25Du7qUzLSnModXntaSH/7hDT4qs869MxOBpZZJR0YXabyl0hY56AJMw==
X-Gm-Message-State: AOJu0YxhUD0/b0iR5oI+IqdicvWk86JytdLwyOFCOV2i9NmE/ASWDGsT
	2j0vviPCAUgKVg44wYFEMhlAeQXw8xoFOjVkxq1SjTviTaRDrY3Zcp0z9wXttw0=
X-Google-Smtp-Source: AGHT+IGXnLf7FHx5qPdROajd++4kF5shWlQUQohQYF/CYz5DK/SEqIOHou6LsZE9CQVQ8Ow9GizCSw==
X-Received: by 2002:a05:600c:1d94:b0:428:15b0:c8dd with SMTP id 5b1f17b1804b1-429ed7b78cemr104132875e9.20.1724063061815;
        Mon, 19 Aug 2024 03:24:21 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.177])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-429ed650402sm106690275e9.11.2024.08.19.03.24.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Aug 2024 03:24:21 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: chris.brandt@renesas.com,
	andi.shyti@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	geert+renesas@glider.be,
	magnus.damm@gmail.com,
	p.zabel@pengutronix.de,
	wsa+renesas@sang-engineering.com
Cc: linux-renesas-soc@vger.kernel.org,
	linux-i2c@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH v4 10/11] arm64: dts: renesas: rzg3s-smarc: Enable i2c0 node
Date: Mon, 19 Aug 2024 13:23:47 +0300
Message-Id: <20240819102348.1592171-11-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240819102348.1592171-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240819102348.1592171-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Enable i2c0 node.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---

Changes in v4:
- none

Changes in v3:
- none

Changes in v2:
- none

 arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi b/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
index deb2ad37bb2e..7945d44e6ee1 100644
--- a/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
+++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc.dtsi
@@ -11,6 +11,7 @@
 
 / {
 	aliases {
+		i2c0 = &i2c0;
 		serial0 = &scif0;
 		mmc1 = &sdhi1;
 	};
@@ -66,6 +67,12 @@ vccq_sdhi1: regulator-vccq-sdhi1 {
 	};
 };
 
+&i2c0 {
+	status = "okay";
+
+	clock-frequency = <1000000>;
+};
+
 &pinctrl {
 	key-1-gpio-hog {
 		gpio-hog;
-- 
2.39.2


