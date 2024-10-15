Return-Path: <devicetree+bounces-111609-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from ny.mirrors.kernel.org (ny.mirrors.kernel.org [IPv6:2604:1380:45d1:ec00::1])
	by mail.lfdr.de (Postfix) with ESMTPS id E63E699F711
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 21:19:37 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by ny.mirrors.kernel.org (Postfix) with ESMTPS id 23E941C238D2
	for <lists+devicetree@lfdr.de>; Tue, 15 Oct 2024 19:19:37 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id A9DB41FF02F;
	Tue, 15 Oct 2024 19:17:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b="oqyNBxUJ"
X-Original-To: devicetree@vger.kernel.org
Received: from mail-ej1-f48.google.com (mail-ej1-f48.google.com [209.85.218.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 940221FC7C3
	for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 19:17:20 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=209.85.218.48
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729019842; cv=none; b=IQ7cntjoiNqynM8f5qv/vBRlquceCsH6Kt8QFuY4/Oh2/QYRyXgBapioxxCryXUYOfv75HwNUiWxHZIJRD8e1uPleYrF82KKjuATZOXeZCkXjRW5RHOaoFGKkxp+QX69nIEa5efjbNQX0UUDJKXpQ9cnGb5AoCb7sjzqsAAM0tM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729019842; c=relaxed/simple;
	bh=lb40xLu/VXrpPNedn2QOJM+HYtvP+0chbzXXKOqoOlE=;
	h=From:Date:Subject:MIME-Version:Content-Type:Message-Id:References:
	 In-Reply-To:To:Cc; b=Rn3buzFh4jwJHCN6errOxC0uoXyyT8ACVVRRZaily8mQGfig5ZKQk/59YbPkZUifhYrKcCYLjb10mnggpV6r4KWbp6OROVZJGNm+P45WAlhyyCf3t29c3A+Mkp+K27RKkTpMrJY2JIn7O6Nz3ODGL9m7on3L1uHCvbZPrxCb5Vw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com; spf=pass smtp.mailfrom=baylibre.com; dkim=pass (2048-bit key) header.d=baylibre-com.20230601.gappssmtp.com header.i=@baylibre-com.20230601.gappssmtp.com header.b=oqyNBxUJ; arc=none smtp.client-ip=209.85.218.48
Authentication-Results: smtp.subspace.kernel.org; dmarc=none (p=none dis=none) header.from=baylibre.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=baylibre.com
Received: by mail-ej1-f48.google.com with SMTP id a640c23a62f3a-a86e9db75b9so835225466b.1
        for <devicetree@vger.kernel.org>; Tue, 15 Oct 2024 12:17:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20230601.gappssmtp.com; s=20230601; t=1729019839; x=1729624639; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=p570CyCpET4jQOMvqTRvBlj0hjjJLO72psUJRNLRpe8=;
        b=oqyNBxUJiVwQVjhd2+Ch3d+xtbIXFW/osPtkqkGtccsOjMtB3yJA0MzSknL9xwKVMf
         CCRhA6Y0hUIB9JxVKZtbmeTQBgG21/p6tzhB58S9jyNOhgxnguBVjdOtfq49DrL1Hgy6
         pClpuZuFV/COeU8vsjBcJRHUV2gTAVzib7A4v/xvpFIiLtYoN3BGo6rE7OM1sM4DPjbs
         kONz9mJ9kzeBbC3ogBERG0hw2VZCt48kpWKLK7WXLVQi6gmHOZgsS5fYz5dkgwl8Xfpy
         bqEjWiSfU9IaI4ND03tsh97hTb1WZVTxILXx6sJAsxXQ3B+m0/I9DdKaPMnQpDk/7owg
         gv2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1729019839; x=1729624639;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=p570CyCpET4jQOMvqTRvBlj0hjjJLO72psUJRNLRpe8=;
        b=tGnWqgHBu3EY6wkdl6OWNE32R9zQjbdyT3xopx6Xj7na9IQ/ExrVKlzhX6o7Hpqslt
         El73onR+WqsjMnKabqcNt1lRrAJc/qgg+jSG8FtVXIFgeZ1qmgxyzqhWkCXAgOiEWpaP
         8EhNVTxFI9DPpOpwXrp1yOvu+6glkTdT75mPJNg3KZ+iQ4uZWHXZvH3ccNqsTbZTltI3
         5oN4qgGOxXTAJycuuepQVq1i72Bgst9e6BcTiJDUqFHgeMpserx+sV40tagE0fhwxB5H
         Y0eJ2DazrcuoxyaRxbw4Rn2j3JPmJMRSz22QJlr+uk2JDzIJpkOXzANRnUeUDM52s4yk
         jd3A==
X-Forwarded-Encrypted: i=1; AJvYcCVgU8q4ZQ0JQSkeXyHOgWoF1Axh0Mjtna/NtH+2hytBSexeFe2wi7VROPqVwTbZGnu9m+04h5FYGolz@vger.kernel.org
X-Gm-Message-State: AOJu0YwmuMYp3GF9Wt4EsSMQ967ex9Q/AXrppwe/4hCj5DWz5fTWViIh
	rTru1O/2E5GdvoIp2CXxI+1w2B/VxupMF2pD0CNGdpfgEmsxvfYZtRsldfZj6/M=
X-Google-Smtp-Source: AGHT+IFeN2E97a+E3jhI8sBljZvv6XC7mfzgwimmU3ry+3H1MazUngu2M9qkKbFXzssYTp7lbfxmBA==
X-Received: by 2002:a17:907:9709:b0:a9a:4d1:460 with SMTP id a640c23a62f3a-a9a04d10662mr844482266b.63.1729019839017;
        Tue, 15 Oct 2024 12:17:19 -0700 (PDT)
Received: from localhost ([2001:4090:a244:83ae:2517:2666:43c9:d0d3])
        by smtp.gmail.com with ESMTPSA id a640c23a62f3a-a9a29816bf8sm100951666b.101.2024.10.15.12.17.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 15 Oct 2024 12:17:18 -0700 (PDT)
From: Markus Schneider-Pargmann <msp@baylibre.com>
Date: Tue, 15 Oct 2024 21:16:02 +0200
Subject: [PATCH v4 8/9] arm64: dts: ti: k3-am62a-mcu: Mark mcu_mcan0/1 as
 wakeup-source
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20241015-topic-mcan-wakeup-source-v6-12-v4-8-fdac1d1e7aa6@baylibre.com>
References: <20241015-topic-mcan-wakeup-source-v6-12-v4-0-fdac1d1e7aa6@baylibre.com>
In-Reply-To: <20241015-topic-mcan-wakeup-source-v6-12-v4-0-fdac1d1e7aa6@baylibre.com>
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
X-Developer-Signature: v=1; a=openpgp-sha256; l=1028; i=msp@baylibre.com;
 h=from:subject:message-id; bh=lb40xLu/VXrpPNedn2QOJM+HYtvP+0chbzXXKOqoOlE=;
 b=owGbwMvMwCGm0rPl0RXRdfaMp9WSGNL59q94MX33ke3S9c4mE9jWHv1mP//Od4Gayds38yydZ
 v7npB6zXEcpC4MYB4OsmCLL3Q8L39XJXV8Qse6RI8wcViaQIQxcnAIwEZ6/jAzn9mxmt1lycNe9
 2dWNL/cnhb/10NRZMPF0+CKGhFVXS82/MfyVreBkqimdrOu19NX5C99vFH+21DlW5Wcf7ew0qWJ
 RjDYzAA==
X-Developer-Key: i=msp@baylibre.com; a=openpgp;
 fpr=BADD88DB889FDC3E8A3D5FE612FA6A01E0A45B41

mcu_mcan0 and mcu_mcan1 can be wakeup sources for the SoC. Mark them
accordingly in the devicetree.

Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
---
 arch/arm64/boot/dts/ti/k3-am62a-mcu.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am62a-mcu.dtsi b/arch/arm64/boot/dts/ti/k3-am62a-mcu.dtsi
index 0469c766b769e46068f23e0073f951aa094c456f..06361cfd7a8ee6f2acf2d15e8106087dd0f38008 100644
--- a/arch/arm64/boot/dts/ti/k3-am62a-mcu.dtsi
+++ b/arch/arm64/boot/dts/ti/k3-am62a-mcu.dtsi
@@ -161,6 +161,7 @@ mcu_mcan0: can@4e08000 {
 		clocks = <&k3_clks 188 6>, <&k3_clks 188 1>;
 		clock-names = "hclk", "cclk";
 		bosch,mram-cfg = <0x0 128 64 64 64 64 32 32>;
+		wakeup-source;
 		status = "disabled";
 	};
 
@@ -173,6 +174,7 @@ mcu_mcan1: can@4e18000 {
 		clocks = <&k3_clks 189 6>, <&k3_clks 189 1>;
 		clock-names = "hclk", "cclk";
 		bosch,mram-cfg = <0x0 128 64 64 64 64 32 32>;
+		wakeup-source;
 		status = "disabled";
 	};
 };

-- 
2.45.2


