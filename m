Return-Path: <devicetree+bounces-231371-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from dfw.mirrors.kernel.org (dfw.mirrors.kernel.org [IPv6:2605:f480:58:1:0:1994:3:14])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BBCBC0CAB9
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 10:33:55 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by dfw.mirrors.kernel.org (Postfix) with ESMTPS id A9E994F0291
	for <lists+devicetree@lfdr.de>; Mon, 27 Oct 2025 09:33:12 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 9A7752F60A2;
	Mon, 27 Oct 2025 09:32:32 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b="PSY4SJVP"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ed1-f45.google.com (mail-ed1-f45.google.com [209.85.208.45])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 77A832F3C12
	for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 09:32:30 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.208.45
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761557552; cv=none; b=RrLr5hieTvR0kVLXx8PtMS5HdyNCboBGKmpH/7ECSep/vtCBsFub1dUdXylPhKmdo2Zh/IeTF3mwb24ZfJfvE/ZI1bxt/b3bv4YUWumEjBZSV0bhdatku30y7MHpcM3Oy6BbuuoLrI2cWH/lGskrkb7dPLWmt9MVBykv2C0RP1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761557552; c=relaxed/simple;
	bh=mndTbYHhwTUyT5y96dJ86Gw5EG9MAfWXvMDRx3WMfqg=;
	h=From:To:Cc:Subject:Date:Message-ID:In-Reply-To:References:
	 MIME-Version; b=GJwSiw/oSxbN3rQbfudCXtBwIsqRcOeqsm1GJbmKrsk1swHHvGu+UNoI/+sdWZIy6GSjqQ8frPiwy96rwvlNBMJbn0vzEzbmaIMmGZkic8nGGVTe8IEUQ0WK0s/DOr2sHL5mIxc8EzbHEwJo7bp8tGKPltRZzPyCCY0hQPoI80I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com; spf=pass smtp.mailfrom=gmail.com; dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com header.b=PSY4SJVP; arc=none smtp.client-ip=209.85.208.45
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=gmail.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=gmail.com
Received: by mail-ed1-f45.google.com with SMTP id 4fb4d7f45d1cf-63c21467e5bso297102a12.0
        for <devicetree@vger.kernel.org>; Mon, 27 Oct 2025 02:32:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1761557549; x=1762162349; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=56PhuafYXsirG+UhANSH3mXfKoGfLYzu3y07BccvFzE=;
        b=PSY4SJVPhL7/UT5MW9EY289/sXfgQdtvrotRYBaBC41uj2qV6IGwTpGl7nwQEBjFw3
         /WuptZ809T5OCvMMiBdr8g6u9UXr0S/AKEHVn/sH5enYsnKOZyzBHBf7fWZPcWr+5JlQ
         P/SMLwtmLo+qTzlf2XnY3nJ5ccX4pdGogd6cBsVVZ2ucOg32NlWsgysyc244/Wolo1R3
         1xo5sLPKo8BAFo2kKmqYFWEcqewQxlkMsESFbkAUUbB7VhMBfcgXKlZoTQv+dZmfDJK9
         kF4S0v6uP+pTpgkdyxKku9ikpC0kr6dqyWcPgGFU3uboVh6Nwhzkubi6a88SR1wv/Y3t
         V4ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1761557549; x=1762162349;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=56PhuafYXsirG+UhANSH3mXfKoGfLYzu3y07BccvFzE=;
        b=RTT54bpn0IHIB4R40QONyWUK3M4TsC/cS81GXj/YSlxoj3sKm2CN+gMS8473rGSBAC
         vrJQJZwRrp75e3n0eAQkOIHEb/VYL/Xj5CQH3KQhS6ZphbuS1DlEAnmPdOU8f4CPryGL
         ddLdx1i0XkO7E7REEqS+hbUbebjnj1z179JjoIoHoX15j3q2wQmzC0RBoskw9CPDPRFH
         UNehKSzkq/VrwPF1SH5i9MSeOP4TD6AsH5QmPSQzn6obPgmzwI6Rv3wHmSGeKZh9Ia0C
         idXk4NsI1GzKSZUmig+Tx8qz6Z2UGhayLYCHPnPY4h67q4I9kpb9me0LN98aSVo6x9sJ
         dDmA==
X-Forwarded-Encrypted: i=1; AJvYcCW1pOgtSXP9WW1nno+MN85MEcEPzSHKEMZ+ZbXpirU2KY74WTWeHYvIeo80wqqz1l3bt+ysWyQ6p32u@vger.kernel.org
X-Gm-Message-State: AOJu0YyeoFTfqqqWlbne3co3gcNlcICUo6EL7pl3i/QCSQk/+kV9yDeD
	9dlmW/9utJrk/d3gezK9Ec9x0qHc0ZRpw+OIIIM3+vbVxJWUiHF/ly6G
X-Gm-Gg: ASbGncv1u5nR36DsQ3VszLc6rKLoxOXh7yAtpwZyYLzlwdnX/2wEMX7jNL+1gTmB9OU
	qKTKf8T7wajOpDqsShpd7j1y9kyhW1RfZ2+TyHclysMPPyIiOFtBeMY3lEasSI7m6zsxB8WIMZy
	myIX7fCrKtnRfAUkTuxl/2fl2Qz1E3PQeLqhx9rjJlJwZ0if+0It4RDnFTbWFKHTYSlerZqh5qh
	siNrz21wMDtqUXMuxhEZnBLCEsAWoCvHs9fAqsCDvh4deryY2nzZkT6SVIXBickJIky30VyTIGJ
	cwelxwrxOTHR0+lEbVt55cxxnnEn/0aip/6dTKYyXyb2SSoLCaM+ikdvQk6SjTj3cBG57ufxITe
	uinN0qKz5VfpdN54hA3mNsLhHnTJLTb4Yi7/VlrRN9TCiKlDENZAiS628oK44xJ4m58cz3xbjeq
	xb1n3Fb5Ytslbnhphg0lWNS4oMX3rij3zFgSCgf0R8cFhLgQk1jXYUfambLaNajFg1nDxkWV+1c
	MYOqkqdgml+ReU6
X-Google-Smtp-Source: AGHT+IEFwNpP3dTtFNugaADyHzm9NL9na2nqJocl90kjFXsdtQrxoTlQehatWBhcXvoqHgFBklRLfQ==
X-Received: by 2002:a05:6402:2807:b0:63c:a17c:8efe with SMTP id 4fb4d7f45d1cf-63ca17c9097mr22821321a12.12.1761557548713;
        Mon, 27 Oct 2025 02:32:28 -0700 (PDT)
Received: from toolbox.int.toradex.com (248.201.173.83.static.wline.lns.sme.cust.swisscom.ch. [83.173.201.248])
        by smtp.gmail.com with ESMTPSA id 4fb4d7f45d1cf-63e7ef6be28sm5681014a12.2.2025.10.27.02.32.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 27 Oct 2025 02:32:28 -0700 (PDT)
From: max.oss.09@gmail.com
To: Max Krummenacher <max.krummenacher@toradex.com>,
	Stefan Eichenberger <stefan.eichenberger@toradex.com>
Cc: Conor Dooley <conor+dt@kernel.org>,
	Fabio Estevam <festevam@gmail.com>,
	Krzysztof Kozlowski <krzk+dt@kernel.org>,
	Pengutronix Kernel Team <kernel@pengutronix.de>,
	Rob Herring <robh@kernel.org>,
	Sascha Hauer <s.hauer@pengutronix.de>,
	Shawn Guo <shawnguo@kernel.org>,
	devicetree@vger.kernel.org,
	imx@lists.linux.dev,
	linux-arm-kernel@lists.infradead.org,
	linux-kernel@vger.kernel.org
Subject: [PATCH v1 5/5] arm64: dts: imx8-apalis: use startup-delay-us for wifi regulator
Date: Mon, 27 Oct 2025 10:30:11 +0100
Message-ID: <20251027093133.2344267-6-max.oss.09@gmail.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20251027093133.2344267-1-max.oss.09@gmail.com>
References: <20251027093133.2344267-1-max.oss.09@gmail.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

From: Stefan Eichenberger <stefan.eichenberger@toradex.com>

We used regulator-settling-time-us for the wifi regulator which is
wrong for regulator-fixed. We have to use startup-delay-us instead.

Signed-off-by: Stefan Eichenberger <stefan.eichenberger@toradex.com>
Signed-off-by: Max Krummenacher <max.krummenacher@toradex.com>

---

 arch/arm64/boot/dts/freescale/imx8-apalis-v1.1.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8-apalis-v1.1.dtsi b/arch/arm64/boot/dts/freescale/imx8-apalis-v1.1.dtsi
index 4234289d4012..f2646db74a5f 100644
--- a/arch/arm64/boot/dts/freescale/imx8-apalis-v1.1.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8-apalis-v1.1.dtsi
@@ -78,7 +78,7 @@ reg_module_wifi: regulator-module-wifi {
 		enable-active-high;
 		regulator-always-on;
 		regulator-name = "Wi-Fi_POWER_DOWN"; /* Wi-Fi module PDn */
-		regulator-settling-time-us = <100>;
+		startup-delay-us = <100>;
 	};
 
 	reg_pcie_switch: regulator-pcie-switch {
-- 
2.42.0


