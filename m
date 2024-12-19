Return-Path: <devicetree+bounces-132853-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id 4D0739F854C
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 21:05:20 +0100 (CET)
Received: from smtp.subspace.kernel.org (relay.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-ECDSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 910A8163967
	for <lists+devicetree@lfdr.de>; Thu, 19 Dec 2024 20:05:17 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id CF283200119;
	Thu, 19 Dec 2024 19:59:14 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="SnLw+Tf2"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f52.google.com (mail-ej1-f52.google.com [209.85.218.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E56031FF602
	for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 19:59:12 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.52
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734638354; cv=none; b=lEcC7x3X5TUwMdzww8wppaa2Gx0BCBI5SEtR3TbXEwEupbexTAsFvLNoWECjJ4Hh0bDGyY0vIYwNNW2JJUqeOHhxNMqQMJM0TKs6BiqZljp51cRzw/QjPf5YgDQ8S5/mvqKObfgkpU0gVhnOvyakzYu39yxttw3Q26dXoXO6fU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734638354; c=relaxed/simple;
	bh=QvPC9XT2nTzuBVKU8Y0OkYtXeaFjH0JRpNZRrR05gzg=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=F5V3DCxp5EnxKbBCA1fCKC6pDCxPlo/xaYnzPQwOGwnIkFINAbFtcjWVJFLhVIUZt1K76X3T1+OJOpv/spWseNNGPyKSBsqB/2XqiewPtAuK+l2xR8O+k+xrslR5GkMh8tkBfi78V5nsiCG6555LBMsOBP4D2xlx5yL9VDza4xQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=SnLw+Tf2; arc=none smtp.client-ip=209.85.218.52
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f52.google.com with SMTP id a640c23a62f3a-aabbb507998so223045566b.2
        for <devicetree@vger.kernel.org>; Thu, 19 Dec 2024 11:59:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1734638351; x=1735243151; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=9z+OFIo6oYvRs30dPwtO+gLECAhFDSFhyF+Jm1Y9wnQ=;
        b=SnLw+Tf2rZViKlc+V7t1D8e3z3fpd1uD5s+SJUFoXd0UkHTZTNaoeIl/79r/YbVXep
         aIPDHNvrTkifvkVIVMTvKSKjd5jFvigE9sqPq441WgLbFPJjfJuisotqxVqjxKBSHA+a
         dUBnNpadWjhUEz/yhs+tNl7bkNmohauxrYMJla5JawiRNEgS3Ee+loZPREnPWD5lNmaW
         TGe6EaEnm7loaINWiu/j0vl0Na2OmvC7wxpnT6GU6CHNSUoFYFMRXOPa0rOVDbFWMeqP
         SqKulM/EUmeUxZHk8WLcE26QrI94V43tje7BfPu4AMHhaOX3HT6vx4qoWPI+3anQrThm
         H6Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1734638351; x=1735243151;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9z+OFIo6oYvRs30dPwtO+gLECAhFDSFhyF+Jm1Y9wnQ=;
        b=YIjnueRtVM3jYb06+yLaZlsKAg0kWkqtzBGWP+W1zTCqQEp5BQVhgZ54/EoJVZITzs
         YmTOJ0JlksjHGqiFzwgDR6xApGrwK/ReiXKeQ/Fxxlml7S7J64LnZ+DWYW9ebsH3p/IG
         3ZC4/ucMSGysEg1UqvOEOMNE1LcrikoqTiwuJhZuW5paSu38VYKmaBITJykDiaQcaFkV
         ArI26bbcIpD3B7Y7DnuOJRCtDAPXU8FDLX2CQonL86hYlqkMGoPOAlduXsk1RpE/WQUR
         Ud5B3Xjl4GgTIWCdotkg4AMOyHOO1gQY9xGSJSl8SXmEGhSB1ZHFaVkzFmOsZiIFR8Lr
         XQvw==
X-Forwarded-Encrypted: i=1; AJvYcCV88YdqOJCcwEHRQgwWZUXg7c44izHwSgGVSjTJHf8MsPt3RxTWHNP6dHbgf4YfaIlhFxhqvIAT+CQM@vger.kernel.org
X-Gm-Message-State: AOJu0YypD9YHt21hOeyd7UUA80KiibGm3I+VpXrLvRo+s+HukPY5Jaaq
	7KRYUBUYzNNIZvye63OzThn5KAgZGOsQv2YtQ/pJXON5NREeTrKcrd1h1sHoCKY=
X-Gm-Gg: ASbGnctCVtH1jC3YS7xAYV4nWIye4PqmnCLNCyfarg5R7YR22c6m4HaWRo1noeufy+L
	xKPZaDA9jQ42YxP0DmU/aq7JY+Vx/XDv5AdUX0TVHwSWjcnch/jtnY63AhaqajUpNfkiprEL4SI
	Kq+Iz7nLkJ4WYvu5jC6QQTdO9NVXuk+MCS+ktBZpOKEgflT5gWN2BahXEmwrnE/lVl5I+PQ5P/j
	m8tu4Sto7ZFrinDT3RyUnOh374cjr6LwJF8PFLeKzOb4YI7ig==
X-Google-Smtp-Source: AGHT+IF4QehdfOuEvDMqzB9MY4lPolUTGRMgbZDTTZ30MZlE7/TjNW2+5MWxblm0XOXTHJASMqJcPw==
X-Received: by 2002:a17:907:6d17:b0:aa6:8211:ff85 with SMTP id a640c23a62f3a-aac2d479750mr6446266b.35.1734638350970;
        Thu, 19 Dec 2024 11:59:10 -0800 (PST)
Received: from localhost ([2001:4090:a244:82f5:6854:cb:184:5d19])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-aac0e894781sm97668366b.44.2024.12.19.11.59.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Dec 2024 11:59:10 -0800 (PST)
From: Markus Schneider-Pargmann <msp@baylibre.com>
Date: Thu, 19 Dec 2024 20:57:57 +0100
Subject: [PATCH v6 6/7] arm64: dts: ti: k3-am62a-mcu: Mark mcu_mcan0/1 as
 wakeup-source
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241219-topic-mcan-wakeup-source-v6-12-v6-6-1356c7f7cfda@baylibre.com>
References: <20241219-topic-mcan-wakeup-source-v6-12-v6-0-1356c7f7cfda@baylibre.com>
In-Reply-To: <20241219-topic-mcan-wakeup-source-v6-12-v6-0-1356c7f7cfda@baylibre.com>
To: Chandrasekar Ramakrishnan <rcsekar@samsung.com>, 
 Marc Kleine-Budde <mkl@pengutronix.de>, 
 Vincent Mailhol <mailhol.vincent@wanadoo.fr>, 
 "David S. Miller" <davem@davemloft.net>, Eric Dumazet <edumazet@google.com>, 
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>, 
 Rob Herring <robh@kernel.org>, Krzysztof Kozlowski <krzk+dt@kernel.org>, 
 Conor Dooley <conor+dt@kernel.org>, Nishanth Menon <nm@ti.com>, 
 Vignesh Raghavendra <vigneshr@ti.com>, Tero Kristo <kristo@kernel.org>
Cc: linux-can@vger.kernel.org, netdev@vger.kernel.org, 
 devicetree@vger.kernel.org, linux-kernel@vger.kernel.org, 
 linux-arm-kernel@lists.infradead.org, 
 Matthias Schiffer <matthias.schiffer@ew.tq-group.com>, 
 Vishal Mahaveer <vishalm@ti.com>, Kevin Hilman <khilman@baylibre.com>, 
 Dhruva Gole <d-gole@ti.com>, Simon Horman <horms@kernel.org>, 
 Vincent MAILHOL <mailhol.vincent@wanadoo.fr>, 
 Markus Schneider-Pargmann <msp@baylibre.com>
X-Mailer: b4 0.14.2
X-Developer-Signature: v=1; a=openpgp-sha256; l=1076; i=msp@baylibre.com;
 h=from:subject:message-id; bh=QvPC9XT2nTzuBVKU8Y0OkYtXeaFjH0JRpNZRrR05gzg=;
 b=owGbwMvMwCGm0rPl0RXRdfaMp9WSGNJTqn6Hqj1OYj4hs2fjkpBZl9sNVrwPbMm60vH0xXVTv
 onsrKedO0pZGMQ4GGTFFFnuflj4rk7u+oKIdY8cYeawMoEMYeDiFICJFB5k+B/sFhC+ul/0kEPe
 742zNtvt/yYQbtX24KrUqrP8c+1bpTYzMrQeOJiUdmw+t6m6tPe1CfzCWh8FzRY9ySycxqF5sCf
 0Ci8A
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41

mcu_mcan0 and mcu_mcan1 can be wakeup sources for the SoC. Mark them
accordingly in the devicetree.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 arch/arm64/boot/dts/ti/k3-am62a-mcu.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62a-mcu.dtsi b/arch/arm64/boot/dts/ti/k3-am62a-mcu.dtsi
index 0469c766b769e46068f23e0073f951aa094c456f..7f88f284ea5daeba189976d03dbd048626104b77 100644
--- a/arch/arm64/boot/dts/ti/k3-am62a-mcu.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62a-mcu.dtsi
@@ -161,6 +161,7 @@ mcu_mcan0: can@4e08000 {
 		clocks = <&k3_clks 188 6>, <&k3_clks 188 1>;
 		clock-names = "hclk", "cclk";
 		bosch,mram-cfg = <0x0 128 64 64 64 64 32 32>;
+		wakeup-source = "suspend", "poweroff";
 		status = "disabled";
 	};
 
@@ -173,6 +174,7 @@ mcu_mcan1: can@4e18000 {
 		clocks = <&k3_clks 189 6>, <&k3_clks 189 1>;
 		clock-names = "hclk", "cclk";
 		bosch,mram-cfg = <0x0 128 64 64 64 64 32 32>;
+		wakeup-source = "suspend", "poweroff";
 		status = "disabled";
 	};
 };

-- 
2.45.2


