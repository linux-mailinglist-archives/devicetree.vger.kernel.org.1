Return-Path: <devicetree+bounces-75660-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id 3A886908486
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2024 09:22:12 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id D71321F26BAD
	for <lists+devicetree@lfdr.de>; Fri, 14 Jun 2024 07:22:11 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id DAB9E187548;
	Fri, 14 Jun 2024 07:20:15 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b="TB/KjOpZ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-wm1-f47.google.com (mail-wm1-f47.google.com [209.85.128.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F0F18186E45
	for <devicetree@vger.kernel.org>; Fri, 14 Jun 2024 07:20:13 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.128.47
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718349615; cv=none; b=Yksh6d0wev8BQo9KF6S0GOvk9ZVFO6eEAsB+B7B3ISz0EOPagnpAfUF1XiZfjyTNVCFYYj91n5Ko2Ry8CeW6Q416+KDne10Sk2SQfLI2hoW/+nBrAWnbUJ6DAl6nV+jRfu2VaLeMMTCiRXyEbneEV1+LG1oTSR4tJrgeWJkGTQw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718349615; c=relaxed/simple;
	bh=/VzQHPWFQ6z0YVKxyGZOEjwis7QAZSkuy7aN28HmdSc=;
	h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
	 MIME-Version; b=qCPbDGV2xmCqbngBJ94XRVxlHXnbEfw8xN4rNlytq6KAjixw5EnzoMmK7uuFyjbDGr7BWFDSgd5Zvewz0rncMxwcdA1cvxPIbtaejoMyJSIQA1qoTnqgiSMoKiwTHjH71mGOxZ1cwTdUe+5nlUUY/BsfSkf4VUps4BCFB933+K0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev; spf=pass smtp.mailfrom=tuxon.dev; dkim=pass (2048-bit key) header.d=tuxon.dev header.i=@tuxon.dev header.b=TB/KjOpZ; arc=none smtp.client-ip=209.85.128.47
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=tuxon.dev
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=tuxon.dev
Received: by mail-wm1-f47.google.com with SMTP id 5b1f17b1804b1-42189d3c7efso20811005e9.2
        for <devicetree@vger.kernel.org>; Fri, 14 Jun 2024 00:20:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=tuxon.dev; s=google; t=1718349612; x=1718954412; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Z3KEj0xEDN1Ax2G/RC5gQRFWvCzGHgOqwoRcyc6hKKA=;
        b=TB/KjOpZ9pMLLyo1ysl+oLWhF3QlW6E6HpsQZvnEVvrLWWzzhIJhLjgWG8EbT71EyW
         vLiFY3Ka0htxadYWru4xvNrs5QkC1nbv7NVpjdfCIWZdU7kYKmHwnreOebYA5U24zEIE
         2LZm+S8yKX8FgDnzW1lrTWCIXD9nzbbHrQ9D993LBYTMrQYO9n3fCkTLVc0ZN78Mb6yP
         o1h/tZbphCYPpyHBg6YTumV0Y/8mu+R/d0u6SDS4U/giHraT8URSCOpMfGJ7KW+fOb+r
         /H6QSCcO6IquY74HxM2MnYTjOWPm+pOeq5w36JSRyQVdCcc5Y39r1jZdI2qI2QXoKOBs
         hSqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1718349612; x=1718954412;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z3KEj0xEDN1Ax2G/RC5gQRFWvCzGHgOqwoRcyc6hKKA=;
        b=HDkXJdQM63Rr4zvxke8QMJiAnNb2chvEKKfTErN9QFJjnIxOeeBeZ7xFHZFGNEGgdy
         Izvb3FUsyQ2v0j226TMyEZ/BzoQ/QC9m7IGNaiHcYJQcgYvzjtPRFiN+9EybGpV0Uv8X
         OIu8J2xHfh22rq84cFI87ru9E7p//aHmTjagpTvSIR4CWtZLzlhHl+TF02sz5GPSjyE7
         /HcrLpu8XxFfSFPg4R46xU1jBJiFCTSbB6aNbxGEXsD6b6J7fnMbS2/AVyHBJIjVUw4Q
         v36BFViVusQ5GN+sbp27Z9YbcGs/jMMyuu9HoiK4kC+7hU+uwjXxdTfhspN6z60Dl93W
         P0Sg==
X-Forwarded-Encrypted: i=1; AJvYcCW9CcaZVXg1K+whoT5THuKThpk8f+9cvBomRdl0XXtxtIe8OHKUZ76xuPcWads0wAkKos1GUs08J1Rxv1aLJ0TRwm9pK52pHKnF2Q==
X-Gm-Message-State: AOJu0YxwEQuHRN3N0kD4MYbbmspPW3/wnb0C7lwk2LJTrJtT9jsmPGL8
	Itfuo3vXYaZjxRAoE6OFJYpGTwINqAu9dH/PT+N2sprtoA2H97sadxdBHONOCfc=
X-Google-Smtp-Source: AGHT+IERYkDmu/GQZcsA7JnGF3XH8j0KFhCh57EyDaAQ7G6QLfCcYTHe4SjtRlsH0Gxh6NSndlHjKA==
X-Received: by 2002:a05:600c:a44:b0:421:7f07:92cf with SMTP id 5b1f17b1804b1-4230484c563mr21714755e9.36.1718349612467;
        Fri, 14 Jun 2024 00:20:12 -0700 (PDT)
Received: from claudiu-X670E-Pro-RS.. ([82.78.167.189])
        by smtp.gmail.com with ESMTPSA id 5b1f17b1804b1-42286eef9eesm87272555e9.9.2024.06.14.00.20.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 14 Jun 2024 00:20:11 -0700 (PDT)
From: Claudiu <claudiu.beznea@tuxon.dev>
X-Google-Original-From: Claudiu <claudiu.beznea.uj@bp.renesas.com>
To: geert+renesas@glider.be,
	mturquette@baylibre.com,
	sboyd@kernel.org,
	robh@kernel.org,
	krzk+dt@kernel.org,
	conor+dt@kernel.org,
	lee@kernel.org,
	alexandre.belloni@bootlin.com,
	magnus.damm@gmail.com
Cc: linux-renesas-soc@vger.kernel.org,
	linux-clk@vger.kernel.org,
	devicetree@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	linux-rtc@vger.kernel.org,
	linux-arm-kernel@lists.infradead.org,
	claudiu.beznea@tuxon.dev,
	Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
Subject: [PATCH 10/12] arm64: dts: renesas: rzg3s-smarc-som: Enable RTC
Date: Fri, 14 Jun 2024 10:19:30 +0300
Message-Id: <20240614071932.1014067-11-claudiu.beznea.uj@bp.renesas.com>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20240614071932.1014067-1-claudiu.beznea.uj@bp.renesas.com>
References: <20240614071932.1014067-1-claudiu.beznea.uj@bp.renesas.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>

Enable RTC.

Signed-off-by: Claudiu Beznea <claudiu.beznea.uj@bp.renesas.com>
---
 arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi b/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
index 517ce275916a..82a80fd8e7ec 100644
--- a/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
+++ b/arch/arm64/boot/dts/renesas/rzg3s-smarc-som.dtsi
@@ -341,6 +341,10 @@ mux {
 	};
 };
 
+&rtc {
+	status = "okay";
+};
+
 &vbattb_xtal {
 	clock-frequency = <32768>;
 };
-- 
2.39.2


